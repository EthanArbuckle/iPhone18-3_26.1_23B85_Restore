@interface AAUIRemoteUIController
- (AAUIRemoteUIController)init;
- (AAUIRemoteUIController)initWithIdentifier:(id)a3 account:(id)a4;
- (id)description;
- (id)loader:(id)a3 connection:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6;
- (id)loader:(id)a3 willLoadRequest:(id)a4 redirectResponse:(id)a5;
- (void)_loader:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)addAccountUserInfoWithAccount:(id)a3;
- (void)loader:(id)a3 didFinishLoadWithError:(id)a4;
- (void)loader:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)loader:(id)a3 willLoadRequest:(id)a4 redirectResponse:(id)a5 completionHandler:(id)a6;
- (void)registerAppleAccountAvatarPickerView;
- (void)registerSIWASharingTipView;
@end

@implementation AAUIRemoteUIController

- (AAUIRemoteUIController)init
{
  +[RemoteUICustomComponentFactory registerRemoteUISwiftViews];

  return [(AAUIRemoteUIController *)self initWithIdentifier:0];
}

- (AAUIRemoteUIController)initWithIdentifier:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AAUIRemoteUIController;
  v8 = [(AAUIRemoteUIController *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v12 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:v6];
    [v11 set_appleIDContext:v12];

    [(AAUIRemoteUIController *)v8 setSessionConfiguration:v11];
    [(AAUIRemoteUIController *)v8 registerAppleAccountAvatarPickerView];
    if (v7)
    {
      [(AAUIRemoteUIController *)v8 addAccountUserInfoWithAccount:v7];
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

- (void)addAccountUserInfoWithAccount:(id)a3
{
  v3.receiver = self;
  v3.super_class = AAUIRemoteUIController;
  [(RemoteUIController *)&v3 addAccountUserInfoWithAccount:a3];
}

- (id)loader:(id)a3 connection:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIRemoteUIController *)self setRedirectResponse:v13];
  }

  v16.receiver = self;
  v16.super_class = AAUIRemoteUIController;
  v14 = [(AAUIRemoteUIController *)&v16 loader:v10 connection:v11 willSendRequest:v12 redirectResponse:v13];

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

- (void)loader:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 protectionSpace];
  v12 = [v11 authenticationMethod];
  v13 = [v12 isEqualToString:*MEMORY[0x1E696A968]];

  if ((v13 & 1) == 0 || (v14 = MEMORY[0x1E698B830], [v9 protectionSpace], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "host"), v16 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "isSetupServiceHost:", v16), v16, v15, (v14 & 1) == 0))
  {
    [(AAUIRemoteUIController *)self _loader:v8 didReceiveChallenge:v9 completionHandler:v10];
    goto LABEL_7;
  }

  v17 = [v9 protectionSpace];
  v18 = [v17 serverTrust];

  if (!v18)
  {
    v20 = _AAUILogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AAUIRemoteUIController loader:v20 didReceiveChallenge:? completionHandler:?];
    }

    goto LABEL_12;
  }

  if (([MEMORY[0x1E698B830] isValidCertificateTrust:v18] & 1) == 0)
  {
    v20 = _AAUILogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AAUIRemoteUIController loader:v20 didReceiveChallenge:? completionHandler:?];
    }

LABEL_12:

    v10[2](v10, 2, 0);
    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696AF30] credentialForTrust:v18];
  (v10)[2](v10, 0, v19);

LABEL_7:
}

- (void)_loader:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v11.receiver = self;
    v11.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v11 loader:v8 didReceiveChallenge:v9 completionHandler:v10];
  }

  else
  {
    v10[2](v10, 1, 0);
  }
}

- (void)loader:(id)a3 willLoadRequest:(id)a4 redirectResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_storeStrong(&self->_currentRequest, a4);
  v13 = a6;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v14.receiver = self;
    v14.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v14 loader:v10 willLoadRequest:v11 redirectResponse:v12 completionHandler:v13];
  }

  else
  {
    v13[2](v13, v11, 0);
  }
}

- (id)loader:(id)a3 willLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&self->_currentRequest, a4);
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v14.receiver = self;
    v14.super_class = AAUIRemoteUIController;
    v11 = [(AAUIRemoteUIController *)&v14 loader:v8 willLoadRequest:v9 redirectResponse:v10];
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v12;
}

- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v9.receiver = self;
    v9.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v9 loader:v6 didReceiveHTTPResponse:v7];
  }

  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

- (void)loader:(id)a3 didFinishLoadWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([-[AAUIRemoteUIController superclass](self "superclass")])
  {
    v9.receiver = self;
    v9.super_class = AAUIRemoteUIController;
    [(AAUIRemoteUIController *)&v9 loader:v6 didFinishLoadWithError:v7];
  }

  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

@end