@interface WorkspaceObserver
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation WorkspaceObserver

- (void)startObserving
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];
}

- (void)stopObserving
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];
}

- (void)applicationsWillInstall:(id)install
{
  installCopy = install;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsWillInstall:installCopy];
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsDidInstall:installCopy];
  }
}

- (void)applicationsWillUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsWillUninstall:uninstallCopy];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsDidUninstall:uninstallCopy];
  }
}

@end