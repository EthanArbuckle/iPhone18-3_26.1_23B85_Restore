@interface RPExtensionContext
+ (id)_extensionAuxiliaryVendorProtocol;
- (RPExtensionContextDelegate)delegate;
- (void)setEndpoint:(id)endpoint completionHandler:(id)handler;
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

- (void)setEndpoint:(id)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Set endpoint", v9, 2u);
  }

  delegate = [(RPExtensionContext *)self delegate];
  [delegate extensionContext:self setEndpoint:endpointCopy];

  handlerCopy[2](handlerCopy);
}

- (RPExtensionContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end