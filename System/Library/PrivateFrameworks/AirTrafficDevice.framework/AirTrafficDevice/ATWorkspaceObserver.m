@interface ATWorkspaceObserver
- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4;
- (void)applicationInstallsDidCancel:(id)a3;
- (void)applicationInstallsDidChange:(id)a3;
- (void)applicationInstallsDidPrioritize:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation ATWorkspaceObserver

- (void)applicationInstallsDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Installs changed [Applications: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsDidChange:v4];
}

- (void)applicationsDidInstall:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Installs completed [Applications: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationsDidInstall:v4];
}

- (void)applicationInstallsDidCancel:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Installs canceled [Applications: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsDidCancel:v4];
}

- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 count];
    v10 = [v7 count];
    delegate = self->_delegate;
    v12[0] = 67109634;
    v12[1] = v9;
    v13 = 1024;
    v14 = v10;
    v15 = 2114;
    v16 = delegate;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Prioritization notification arrived [Ordered: %d] [Paused: %d] [Delegate: %{public}@]", v12, 0x18u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsArePrioritized:v6 arePaused:v7];
}

- (void)applicationInstallsDidPrioritize:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    delegate = self->_delegate;
    v8[0] = 67109378;
    v8[1] = v6;
    v9 = 2114;
    v10 = delegate;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- Prioritization Changed [Ordered: %d] [Delegate: %{public}@]", v8, 0x12u);
  }

  [(LSApplicationWorkspaceObserverProtocol *)self->_delegate applicationInstallsDidPrioritize:v4];
}

- (void)stopObserving
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- stop observing", v5, 2u);
  }

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 removeObserver:self];
}

- (void)startObserving
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATWorkspaceObserver -- start observing", v5, 2u);
  }

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 addObserver:self];
}

@end