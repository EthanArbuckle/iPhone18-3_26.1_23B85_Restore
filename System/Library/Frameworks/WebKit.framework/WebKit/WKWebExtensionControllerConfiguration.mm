@interface WKWebExtensionControllerConfiguration
+ (id)defaultConfiguration;
+ (void)initialize;
- (Ref<WebKit::WebExtensionControllerConfiguration,)_protectedWebExtensionControllerConfiguration;
- (void)_objc_initiateDealloc;
- (void)dealloc;
@end

@implementation WKWebExtensionControllerConfiguration

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x1EEE667A8](self);
  }
}

+ (id)defaultConfiguration
{
  v2 = API::Object::newObject(0x40uLL, 115);
  v3 = WebKit::WebExtensionControllerConfiguration::WebExtensionControllerConfiguration(v2, 1);
  v4 = WebKit::WebExtensionController::wrapper(v3);
  if (v2)
  {
    CFRelease(v2[1]);
  }

  return v4;
}

- (Ref<WebKit::WebExtensionControllerConfiguration,)_protectedWebExtensionControllerConfiguration
{
  v3 = v2;
  p_webExtensionControllerConfiguration = &self->_webExtensionControllerConfiguration;
  v5 = CFRetain(*&self->_webExtensionControllerConfiguration.m_storage.data[8]);
  *v3 = p_webExtensionControllerConfiguration;
  return v5;
}

- (void)_objc_initiateDealloc
{
  if (WTF::isMainRunLoop(self))
  {

    MEMORY[0x1EEE667E0](self);
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E58D8];

    dispatch_async_f(v3, self, v4);
  }
}

- (void)dealloc
{
  (**self->_webExtensionControllerConfiguration.m_storage.data)();
  v3.receiver = self;
  v3.super_class = WKWebExtensionControllerConfiguration;
  [(WKWebExtensionControllerConfiguration *)&v3 dealloc];
}

@end