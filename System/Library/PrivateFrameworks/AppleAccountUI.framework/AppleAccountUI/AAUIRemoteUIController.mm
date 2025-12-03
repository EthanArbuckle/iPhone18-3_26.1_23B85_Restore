@interface AAUIRemoteUIController
- (AAUIRemoteUIController)init;
- (AAUIRemoteUIController)initWithIdentifier:(id)identifier account:(id)account;
- (id)description;
- (id)loader:(id)loader connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (id)loader:(id)loader willLoadRequest:(id)request redirectResponse:(id)response;
- (void)_loader:(id)_loader didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)addAccountUserInfoWithAccount:(id)account;
- (void)loader:(id)loader didFinishLoadWithError:(id)error;
- (void)loader:(id)loader didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)loader:(id)loader didReceiveHTTPResponse:(id)response;
- (void)loader:(id)loader willLoadRequest:(id)request redirectResponse:(id)response completionHandler:(id)handler;
- (void)registerAppleAccountAvatarPickerView;
- (void)registerSIWASharingTipView;
@end

@implementation AAUIRemoteUIController

- (AAUIRemoteUIController)init
{
  +[RemoteUICustomComponentFactory registerRemoteUISwiftViews];

  return [(AAUIRemoteUIController *)self initWithIdentifier:0];
}

- (AAUIRemoteUIController)initWithIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = AAUIRemoteUIController;
  v8 = [(AAUIRemoteUIController *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v12 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:identifierCopy];
    [defaultSessionConfiguration set_appleIDContext:v12];

    [(AAUIRemoteUIController *)v8 setSessionConfiguration:defaultSessionConfiguration];
    [(AAUIRemoteUIController *)v8 registerAppleAccountAvatarPickerView];
    if (accountCopy)
    {
      [(AAUIRemoteUIController *)v8 addAccountUserInfoWithAccount:accountCopy];
    }

    +[RemoteUICustomComponentFactory registerRemoteUISwiftViews];
  }

  return v8;
}

- (void)registerAppleAccountAvatarPickerView
{
  v2.receiver = self;
  v2.super_class = AAUIRemoteUIController;
  [(RemoteUIController *)&v2 registerAppleAccountAvatarPickerView];
}

- (void)registerSIWASharingTipView
{
  v2.receiver = self;
  v2.super_class = AAUIRemoteUIController;
  [(RemoteUIController *)&v2 registerSIWASharingTipView];
}

- (void)addAccountUserInfoWithAccount:(id)account
{
  v3.receiver = self;
  v3.super_class = AAUIRemoteUIController;
  [(RemoteUIController *)&v3 addAccountUserInfoWithAccount:account];
}

- (id)loader:(id)loader connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  loaderCopy = loader;
  connectionCopy = connection;
  requestCopy = request;
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIRemoteUIController *)self setRedirectResponse:responseCopy];
  }

  v16.receiver = self;
  v16.super_class = AAUIRemoteUIController;
  v14 = [(AAUIRemoteUIController *)&v16 loader:loaderCopy connection:connectionCopy willSendRequest:requestCopy redirectResponse:responseCopy];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p { identifier: %@ }>", v5, self, self->_identifier];

  return v6;
}

- (void)loader:(id)loader didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  loaderCopy = loader;
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v13 = [authenticationMethod isEqualToString:*MEMORY[0x1E696A968]];

  if ((v13 & 1) == 0 || (v14 = MEMORY[0x1E698B830], [challengeCopy protectionSpace], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "host"), v16 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "isSetupServiceHost:", v16), v16, v15, (v14 & 1) == 0))
  {
    [(AAUIRemoteUIController *)self _loader:loaderCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
    goto LABEL_7;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  if (!serverTrust)
  {
    v20 = _AAUILogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AAUIRemoteUIController loader:v20 didReceiveChallenge:? completionHandler:?];
    }

    goto LABEL_12;
  }

  if (([MEMORY[0x1E698B830] isValidCertificateTrust:serverTrust] & 1) == 0)
  {
    v20 = _AAUILogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AAUIRemoteUIController loader:v20 didReceiveChallenge:? completionHandler:?];
    }

LABEL_12:

    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696AF30] credentialForTrust:serverTrust];
  (handlerCopy)[2](handlerCopy, 0, v19);

LABEL_7:
}

- (void)_loader:(id)_loader didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  _loaderCopy = _loader;
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v11.receiver = self;
    v11.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v11 loader:_loaderCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)loader:(id)loader willLoadRequest:(id)request redirectResponse:(id)response completionHandler:(id)handler
{
  loaderCopy = loader;
  requestCopy = request;
  responseCopy = response;
  objc_storeStrong(&self->_currentRequest, request);
  handlerCopy = handler;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v14.receiver = self;
    v14.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v14 loader:loaderCopy willLoadRequest:requestCopy redirectResponse:responseCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, requestCopy, 0);
  }
}

- (id)loader:(id)loader willLoadRequest:(id)request redirectResponse:(id)response
{
  loaderCopy = loader;
  requestCopy = request;
  responseCopy = response;
  objc_storeStrong(&self->_currentRequest, request);
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v14.receiver = self;
    v14.super_class = AAUIRemoteUIController;
    v11 = [(AAUIRemoteUIController *)&v14 loader:loaderCopy willLoadRequest:requestCopy redirectResponse:responseCopy];
  }

  else
  {
    v11 = requestCopy;
  }

  v12 = v11;

  return v12;
}

- (void)loader:(id)loader didReceiveHTTPResponse:(id)response
{
  loaderCopy = loader;
  responseCopy = response;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v9.receiver = self;
    v9.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v9 loader:loaderCopy didReceiveHTTPResponse:responseCopy];
  }

  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

- (void)loader:(id)loader didFinishLoadWithError:(id)error
{
  loaderCopy = loader;
  errorCopy = error;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v9.receiver = self;
    v9.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v9 loader:loaderCopy didFinishLoadWithError:errorCopy];
  }

  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

@end