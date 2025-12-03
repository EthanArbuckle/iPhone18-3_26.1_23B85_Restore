@interface SFExternalPasswordCredentialRemoteViewController
+ (id)passwordServiceViewControllerName;
- (void)presentExternalPasswordCredentialRemoteViewController;
@end

@implementation SFExternalPasswordCredentialRemoteViewController

- (void)presentExternalPasswordCredentialRemoteViewController
{
  delegate = [(SFPasswordRemoteViewController *)self delegate];
  [delegate presentExternalPasswordCredentialRemoteViewController:self];
}

+ (id)passwordServiceViewControllerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end