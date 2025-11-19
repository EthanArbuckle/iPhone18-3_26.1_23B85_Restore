@interface HMUserListRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (HMUserManagementRemoteHost)delegate;
- (void)userManagementDidFinishWithError:(id)a3;
- (void)userManagementDidLoad;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation HMUserListRemoteViewController

- (HMUserManagementRemoteHost)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userManagementDidFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMUserListRemoteViewController *)self delegate];
  [v5 userManagementDidFinishWithError:v4];
}

- (void)userManagementDidLoad
{
  v2 = [(HMUserListRemoteViewController *)self delegate];
  [v2 userManagementDidLoad];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HMUserListRemoteViewController;
  [(HMUserListRemoteViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(HMUserListRemoteViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:79 userInfo:0];
  v4 = [(HMUserListRemoteViewController *)self delegate];
  [v4 userManagementDidFinishWithError:v5];
}

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"HSUserListNavigationViewController" fromServiceWithBundleIdentifier:@"com.apple.Home.HomeUIService" connectionHandler:v3];

  return v4;
}

@end