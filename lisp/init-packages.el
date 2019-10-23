(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
			 ))

(package-initialize)

(setq packages-used '(ac-math
		      ack
		      afternoon-theme
		      auto-complete
		      auto-complete-auctex
		      batch-mode
		      ein
		      elpy
		      ess
		      exec-path-from-shell
		      f
		      js2-mode
		      magit
		      neotree
		      org
		      org-journal
		      smex
		      terraform-mode
		      twittering-mode
		      ))

(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing.  Install it? " package))
	   (progn
	     (package-refresh-contents)
	     (package-install package)))))
 packages-used)

(provide 'init-packages)
