@interface ASCredentialRequestCABLEAuthenticatingViewController
- (ASCredentialRequestCABLEAuthenticatingViewController)initWithPresentationContext:(id)a3;
- (ASCredentialRequestCABLEAuthenticatingViewController)initWithServiceName:(id)a3 serviceType:(unint64_t)a4 isRegistrationRequest:(BOOL)a5;
@end

@implementation ASCredentialRequestCABLEAuthenticatingViewController

- (ASCredentialRequestCABLEAuthenticatingViewController)initWithPresentationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceName];
  v6 = [v4 serviceType];
  v7 = [v4 isRegistrationRequest];

  v8 = [(ASCredentialRequestCABLEAuthenticatingViewController *)self initWithServiceName:v5 serviceType:v6 isRegistrationRequest:v7];
  return v8;
}

- (ASCredentialRequestCABLEAuthenticatingViewController)initWithServiceName:(id)a3 serviceType:(unint64_t)a4 isRegistrationRequest:(BOOL)a5
{
  v7 = a3;
  if (a4 == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    goto LABEL_6;
  }

  if (!a4)
  {
    v8 = MEMORY[0x1E696AEC0];
LABEL_6:
    v10 = _WBSLocalizedString();
    v9 = [v8 localizedStringWithFormat:v10, v7];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v11 = [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:v9 subtitle:0];
  v14.receiver = self;
  v14.super_class = ASCredentialRequestCABLEAuthenticatingViewController;
  v12 = [(ASCredentialRequestBasicPaneViewController *)&v14 initWithConfiguration:v11];

  return v12;
}

@end