@interface HMUserListRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (HMUserManagementRemoteHost)delegate;
- (void)userManagementDidFinishWithError:(id)error;
- (void)userManagementDidLoad;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation HMUserListRemoteViewController

- (HMUserManagementRemoteHost)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userManagementDidFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(HMUserListRemoteViewController *)self delegate];
  [delegate userManagementDidFinishWithError:errorCopy];
}

- (void)userManagementDidLoad
{
  delegate = [(HMUserListRemoteViewController *)self delegate];
  [delegate userManagementDidLoad];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HMUserListRemoteViewController;
  [(HMUserListRemoteViewController *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(HMUserListRemoteViewController *)self view];
  [view setBackgroundColor:clearColor];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:79 userInfo:0];
  delegate = [(HMUserListRemoteViewController *)self delegate];
  [delegate userManagementDidFinishWithError:v5];
}

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"HSUserListNavigationViewController" fromServiceWithBundleIdentifier:@"com.apple.Home.HomeUIService" connectionHandler:handlerCopy];

  return v4;
}

@end