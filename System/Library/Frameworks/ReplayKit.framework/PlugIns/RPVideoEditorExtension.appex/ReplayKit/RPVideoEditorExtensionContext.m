@interface RPVideoEditorExtensionContext
- (id)extensionObjectProxy;
- (void)doAction:(id)a3;
@end

@implementation RPVideoEditorExtensionContext

- (void)doAction:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPVideoEditorExtensionContext:doAction", v6, 2u);
  }

  v5 = [(RPVideoEditorExtensionContext *)self videoEditorExtensionViewController];
  [v5 doAction:v4];
}

- (id)extensionObjectProxy
{
  v2 = [(RPVideoEditorExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&stru_100018840];

  return v3;
}

@end