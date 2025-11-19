@interface SFPasswordPickerRemoteViewController
+ (id)passwordServiceViewControllerName;
- (void)fillPassword:(id)a3;
- (void)fillText:(id)a3;
- (void)fillUsername:(id)a3;
- (void)fillVerificationCode:(id)a3;
- (void)selectedCredential:(id)a3;
@end

@implementation SFPasswordPickerRemoteViewController

+ (id)passwordServiceViewControllerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)selectedCredential:(id)a3
{
  v5 = a3;
  v4 = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 remoteViewController:self selectedCredential:v5];
  }
}

- (void)fillUsername:(id)a3
{
  v5 = a3;
  v4 = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 remoteViewController:self fillUsername:v5];
  }
}

- (void)fillPassword:(id)a3
{
  v5 = a3;
  v4 = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 remoteViewController:self fillPassword:v5];
  }
}

- (void)fillVerificationCode:(id)a3
{
  v5 = a3;
  v4 = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 remoteViewController:self fillVerificationCode:v5];
  }
}

- (void)fillText:(id)a3
{
  v5 = a3;
  v4 = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 remoteViewController:self fillText:v5];
  }
}

@end