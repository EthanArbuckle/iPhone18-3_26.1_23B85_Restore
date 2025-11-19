@interface RPExtensionContext
+ (id)_extensionAuxiliaryVendorProtocol;
- (RPExtensionContextDelegate)delegate;
- (void)setEndpoint:(id)a3 completionHandler:(id)a4;
@end

@implementation RPExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Requested vendor protocol", v4, 2u);
  }

  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D9ACA0];

  return v2;
}

- (void)setEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Set endpoint", v9, 2u);
  }

  v8 = [(RPExtensionContext *)self delegate];
  [v8 extensionContext:self setEndpoint:v6];

  v7[2](v7);
}

- (RPExtensionContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end