@interface _AuthorizationRemoteViewControllerHost
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
+ (void)_requestViewController:(id)controller connectionHandler:(id)handler;
+ (void)requestViewControllerWithConnectionHandler:(id)handler;
- (LACUIAuthenticatorUIDelegate)delegate;
- (void)authenticatorServiceDidFinishWithError:(id)error reply:(id)reply;
- (void)authenticatorServiceDidObtainAuthenticationWithReply:(id)reply;
- (void)dealloc;
- (void)startWithConfiguration:(id)configuration reply:(id)reply;
- (void)stopWithReply:(id)reply;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _AuthorizationRemoteViewControllerHost

+ (void)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = LA_LOG_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238BCD000, v6, OS_LOG_TYPE_DEFAULT, "RemoteUI call started", buf, 2u);
  }

  v7 = __85___AuthorizationRemoteViewControllerHost_requestViewControllerWithConnectionHandler___block_invoke();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85___AuthorizationRemoteViewControllerHost_requestViewControllerWithConnectionHandler___block_invoke_2;
  v10[3] = &unk_278A659F8;
  v11 = date;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = date;
  [self _requestViewController:v7 connectionHandler:v10];
}

+ (void)_requestViewController:(id)controller connectionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  serviceViewControllerClassName = [controllerCopy serviceViewControllerClassName];
  serviceBundleIdentifier = [controllerCopy serviceBundleIdentifier];

  v9 = [self requestViewController:serviceViewControllerClassName fromServiceWithBundleIdentifier:serviceBundleIdentifier connectionHandler:handlerCopy];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken != -1)
  {
    +[_AuthorizationRemoteViewControllerHost exportedInterface];
  }

  v3 = exportedInterface_interface;

  return v3;
}

+ (id)serviceViewControllerInterface
{
  if (serviceViewControllerInterface_onceToken != -1)
  {
    +[_AuthorizationRemoteViewControllerHost serviceViewControllerInterface];
  }

  v3 = serviceViewControllerInterface_interface;

  return v3;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = _AuthorizationRemoteViewControllerHost;
  errorCopy = error;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:errorCopy];
  v5 = [(_AuthorizationRemoteViewControllerHost *)self delegate:v6.receiver];
  [v5 sheetDidFinishWithError:errorCopy];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LA_LOG_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238BCD000, v3, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = _AuthorizationRemoteViewControllerHost;
  [(_AuthorizationRemoteViewControllerHost *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)authenticatorServiceDidFinishWithError:(id)error reply:(id)reply
{
  replyCopy = reply;
  errorCopy = error;
  delegate = [(_AuthorizationRemoteViewControllerHost *)self delegate];
  [delegate sheetDidFinishWithError:errorCopy];

  replyCopy[2]();
}

- (void)authenticatorServiceDidObtainAuthenticationWithReply:(id)reply
{
  replyCopy = reply;
  delegate = [(_AuthorizationRemoteViewControllerHost *)self delegate];
  [delegate didProvideAuthorizationRequirementWithReply:replyCopy];
}

- (void)startWithConfiguration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71___AuthorizationRemoteViewControllerHost_startWithConfiguration_reply___block_invoke;
  v10[3] = &unk_278A65660;
  v11 = replyCopy;
  v7 = replyCopy;
  configurationCopy = configuration;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v10];
  [v9 startWithConfiguration:configurationCopy reply:v7];
}

- (void)stopWithReply:(id)reply
{
  replyCopy = reply;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56___AuthorizationRemoteViewControllerHost_stopWithReply___block_invoke;
  v7[3] = &unk_278A65660;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 stopWithReply:v5];
}

- (LACUIAuthenticatorUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end