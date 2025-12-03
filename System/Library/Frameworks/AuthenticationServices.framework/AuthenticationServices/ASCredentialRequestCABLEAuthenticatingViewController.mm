@interface ASCredentialRequestCABLEAuthenticatingViewController
- (ASCredentialRequestCABLEAuthenticatingViewController)initWithPresentationContext:(id)context;
- (ASCredentialRequestCABLEAuthenticatingViewController)initWithServiceName:(id)name serviceType:(unint64_t)type isRegistrationRequest:(BOOL)request;
@end

@implementation ASCredentialRequestCABLEAuthenticatingViewController

- (ASCredentialRequestCABLEAuthenticatingViewController)initWithPresentationContext:(id)context
{
  contextCopy = context;
  serviceName = [contextCopy serviceName];
  serviceType = [contextCopy serviceType];
  isRegistrationRequest = [contextCopy isRegistrationRequest];

  v8 = [(ASCredentialRequestCABLEAuthenticatingViewController *)self initWithServiceName:serviceName serviceType:serviceType isRegistrationRequest:isRegistrationRequest];
  return v8;
}

- (ASCredentialRequestCABLEAuthenticatingViewController)initWithServiceName:(id)name serviceType:(unint64_t)type isRegistrationRequest:(BOOL)request
{
  nameCopy = name;
  if (type == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    goto LABEL_6;
  }

  if (!type)
  {
    v8 = MEMORY[0x1E696AEC0];
LABEL_6:
    v10 = _WBSLocalizedString();
    nameCopy = [v8 localizedStringWithFormat:v10, nameCopy];

    goto LABEL_7;
  }

  nameCopy = 0;
LABEL_7:
  v11 = [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:nameCopy subtitle:0];
  v14.receiver = self;
  v14.super_class = ASCredentialRequestCABLEAuthenticatingViewController;
  v12 = [(ASCredentialRequestBasicPaneViewController *)&v14 initWithConfiguration:v11];

  return v12;
}

@end