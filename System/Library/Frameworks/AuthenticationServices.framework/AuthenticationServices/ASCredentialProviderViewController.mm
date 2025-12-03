@interface ASCredentialProviderViewController
- (ASCredentialProviderExtensionContext)extensionContext;
- (void)prepareInterfaceToProvideCredentialForRequest:(id)credentialRequest;
- (void)provideCredentialWithoutUserInteractionForIdentity:(ASPasswordCredentialIdentity *)credentialIdentity;
- (void)provideCredentialWithoutUserInteractionForRequest:(id)credentialRequest;
@end

@implementation ASCredentialProviderViewController

- (ASCredentialProviderExtensionContext)extensionContext
{
  v4.receiver = self;
  v4.super_class = ASCredentialProviderViewController;
  extensionContext = [(ASCredentialProviderViewController *)&v4 extensionContext];

  return extensionContext;
}

- (void)provideCredentialWithoutUserInteractionForIdentity:(ASPasswordCredentialIdentity *)credentialIdentity
{
  v4 = [ASPasswordCredentialRequest requestWithCredentialIdentity:credentialIdentity];
  [(ASCredentialProviderViewController *)self provideCredentialWithoutUserInteractionForRequest:v4];
}

- (void)provideCredentialWithoutUserInteractionForRequest:(id)credentialRequest
{
  v7 = credentialRequest;
  credentialIdentity = [v7 credentialIdentity];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    credentialIdentity2 = [v7 credentialIdentity];
    [(ASCredentialProviderViewController *)self provideCredentialWithoutUserInteractionForIdentity:credentialIdentity2];
  }
}

- (void)prepareInterfaceToProvideCredentialForRequest:(id)credentialRequest
{
  v7 = credentialRequest;
  credentialIdentity = [v7 credentialIdentity];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    credentialIdentity2 = [v7 credentialIdentity];
    [(ASCredentialProviderViewController *)self prepareInterfaceToProvideCredentialForIdentity:credentialIdentity2];
  }
}

@end