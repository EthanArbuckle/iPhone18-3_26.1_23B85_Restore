@interface ATWorkspaceObserver
- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused;
- (void)applicationInstallsDidCancel:(id)cancel;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidPrioritize:(id)prioritize;
- (void)applicationsDidInstall:(id)install;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation ATWorkspaceObserver

- (void)applicationInstallsDidChange:(id)change
{
  v11 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [changeCopy count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Installs changed [Applications: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsDidChange:changeCopy];
}

- (void)applicationsDidInstall:(id)install
{
  v11 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [installCopy count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Installs completed [Applications: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsDidInstall:installCopy];
}

- (void)applicationInstallsDidCancel:(id)cancel
{
  v11 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [cancelCopy count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Installs canceled [Applications: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsDidCancel:cancelCopy];
}

- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused
{
  v17 = *MEMORY[0x277D85DE8];
  prioritizedCopy = prioritized;
  pausedCopy = paused;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [prioritizedCopy count];
    v10 = [pausedCopy count];
    delegate = self->_delegate;
    v12[0] = 67109634;
    v12[1] = v9;
    v13 = 1024;
    v14 = v10;
    v15 = 2114;
    v16 = delegate;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Prioritization notification arrived [Ordered: %d] [Paused: %d] [Delegate: %{public}@]", v12, 0x18u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsArePrioritized:prioritizedCopy arePaused:pausedCopy];
}

- (void)applicationInstallsDidPrioritize:(id)prioritize
{
  v11 = *MEMORY[0x277D85DE8];
  prioritizeCopy = prioritize;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [prioritizeCopy count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Prioritization Changed [Ordered: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsDidPrioritize:prioritizeCopy];
}

- (void)stopObserving
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- stop observing", v5, 2u);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];
}

- (void)startObserving
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- start observing", v5, 2u);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];
}

@end