@interface SFExternalPasswordCredentialRemoteViewController
+ (id)passwordServiceViewControllerName;
- (void)presentExternalPasswordCredentialRemoteViewController;
@end

@implementation SFExternalPasswordCredentialRemoteViewController

- (void)presentExternalPasswordCredentialRemoteViewController
{
  v3 = [(SFPasswordRemoteViewController *)self delegate];
  [v3 presentExternalPasswordCredentialRemoteViewController:self];
}

+ (id)passwordServiceViewControllerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end