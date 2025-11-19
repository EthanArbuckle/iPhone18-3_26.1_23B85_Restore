@interface MediaServiceConfigurationMediator
- (MediaServiceConfigurationMediator)initWithServiceDelegate:(id)a3;
- (MediaServiceUpdatedServiceInterfaceDelegate)delegate;
- (void)serviceSettingDidUpdate:(id)a3 homeUserID:(id)a4;
- (void)userDidRemoveService:(id)a3 homeUserID:(id)a4;
- (void)userDidUpdateDefaultService:(id)a3 homeUserID:(id)a4;
@end

@implementation MediaServiceConfigurationMediator

- (MediaServiceConfigurationMediator)initWithServiceDelegate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MediaServiceConfigurationMediator;
  v5 = [(MediaServiceConfigurationMediator *)&v9 init];
  if (v5)
  {
    v6 = _MSLogingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[MediaServiceConfigurationMediator initWithServiceDelegate:]";
      _os_log_impl(&dword_23986C000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v5->_delegate, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)serviceSettingDidUpdate:(id)a3 homeUserID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MediaServiceConfigurationMediator *)self delegate];

  if (v7)
  {
    v8 = [(MediaServiceConfigurationMediator *)self delegate];
    [v8 serviceSettingDidUpdate:v9 homeUserID:v6];
  }
}

- (void)userDidRemoveService:(id)a3 homeUserID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MediaServiceConfigurationMediator *)self delegate];

  if (v7)
  {
    v8 = [(MediaServiceConfigurationMediator *)self delegate];
    [v8 userDidRemoveService:v9 homeUserID:v6];
  }
}

- (void)userDidUpdateDefaultService:(id)a3 homeUserID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MediaServiceConfigurationMediator *)self delegate];

  if (v7)
  {
    v8 = [(MediaServiceConfigurationMediator *)self delegate];
    [v8 userDidUpdateDefaultService:v9 homeUserID:v6];
  }
}

- (MediaServiceUpdatedServiceInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end