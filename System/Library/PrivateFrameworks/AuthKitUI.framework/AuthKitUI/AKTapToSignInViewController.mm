@interface AKTapToSignInViewController
- (void)_provideDelegateWithAuthResults:(id)a3 error:(id)a4;
@end

@implementation AKTapToSignInViewController

- (void)_provideDelegateWithAuthResults:(id)a3 error:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKBaseSignInViewController *)v8 delegate];
  [(AKSignInViewControllerDelegate *)v5 tapToSignInViewController:v8 didAuthenticateWithResults:location[0] error:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end