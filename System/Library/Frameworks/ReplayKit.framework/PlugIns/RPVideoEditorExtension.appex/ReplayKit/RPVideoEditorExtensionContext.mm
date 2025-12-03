@interface RPVideoEditorExtensionContext
- (id)extensionObjectProxy;
- (void)doAction:(id)action;
@end

@implementation RPVideoEditorExtensionContext

- (void)doAction:(id)action
{
  actionCopy = action;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPVideoEditorExtensionContext:doAction", v6, 2u);
  }

  videoEditorExtensionViewController = [(RPVideoEditorExtensionContext *)self videoEditorExtensionViewController];
  [videoEditorExtensionViewController doAction:actionCopy];
}

- (id)extensionObjectProxy
{
  _auxiliaryConnection = [(RPVideoEditorExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&stru_100018840];

  return v3;
}

@end