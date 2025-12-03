@interface AKTapToSignInViewController
- (void)_provideDelegateWithAuthResults:(id)results error:(id)error;
@end

@implementation AKTapToSignInViewController

- (void)_provideDelegateWithAuthResults:(id)results error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v6 = 0;
  objc_storeStrong(&v6, error);
  delegate = [(AKBaseSignInViewController *)selfCopy delegate];
  [(AKSignInViewControllerDelegate *)delegate tapToSignInViewController:selfCopy didAuthenticateWithResults:location[0] error:v6];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end