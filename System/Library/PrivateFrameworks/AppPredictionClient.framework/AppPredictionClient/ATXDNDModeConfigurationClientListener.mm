@interface ATXDNDModeConfigurationClientListener
- (ATXDNDModeConfigurationClientListener)initWithDelegate:(id)delegate;
- (ATXDNDModeConfigurationClientListenerDelegate)delegate;
- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update;
@end

@implementation ATXDNDModeConfigurationClientListener

- (ATXDNDModeConfigurationClientListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ATXDNDModeConfigurationClientListener;
  v5 = [(ATXDNDModeConfigurationClientListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXDNDModeConfigurationClientListener *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update
{
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXDNDModeConfigurationClientListener: mode configuration did change", v7, 2u);
  }

  delegate = [(ATXDNDModeConfigurationClientListener *)self delegate];
  [delegate configuredModesDidChange];
}

- (ATXDNDModeConfigurationClientListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end