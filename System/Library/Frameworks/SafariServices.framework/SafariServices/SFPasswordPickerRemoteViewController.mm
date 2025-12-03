@interface SFPasswordPickerRemoteViewController
+ (id)passwordServiceViewControllerName;
- (void)fillPassword:(id)password;
- (void)fillText:(id)text;
- (void)fillUsername:(id)username;
- (void)fillVerificationCode:(id)code;
- (void)selectedCredential:(id)credential;
@end

@implementation SFPasswordPickerRemoteViewController

+ (id)passwordServiceViewControllerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)selectedCredential:(id)credential
{
  credentialCopy = credential;
  delegate = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewController:self selectedCredential:credentialCopy];
  }
}

- (void)fillUsername:(id)username
{
  usernameCopy = username;
  delegate = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewController:self fillUsername:usernameCopy];
  }
}

- (void)fillPassword:(id)password
{
  passwordCopy = password;
  delegate = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewController:self fillPassword:passwordCopy];
  }
}

- (void)fillVerificationCode:(id)code
{
  codeCopy = code;
  delegate = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewController:self fillVerificationCode:codeCopy];
  }
}

- (void)fillText:(id)text
{
  textCopy = text;
  delegate = [(SFPasswordRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewController:self fillText:textCopy];
  }
}

@end