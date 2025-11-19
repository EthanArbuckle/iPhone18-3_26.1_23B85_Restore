@interface WorkspaceObserver
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation WorkspaceObserver

- (void)startObserving
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 addObserver:self];
}

- (void)stopObserving
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];
}

- (void)applicationsWillInstall:(id)a3
{
  v5 = a3;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsWillInstall:v5];
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v5 = a3;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsDidInstall:v5];
  }
}

- (void)applicationsWillUninstall:(id)a3
{
  v5 = a3;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsWillUninstall:v5];
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v5 = a3;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsDidUninstall:v5];
  }
}

@end