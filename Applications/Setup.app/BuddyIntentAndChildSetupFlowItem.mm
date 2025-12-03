@interface BuddyIntentAndChildSetupFlowItem
- (AISShieldViewControllerDelegate)shieldViewControllerDelegate;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setShieldViewControllerDelegate:(id)delegate;
@end

@implementation BuddyIntentAndChildSetupFlowItem

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v6 = objc_alloc_init(sub_1001E44C0());
  [v6 setForceOfferAgeRangePicker:1];
  [v6 setSkipConnectToFamily:1];
  [v6 setSkipSetupWithGuardian:0];
  [v6 setShouldNotDismiss:1];
  [v6 setSetupSelfFlow:0];
  [v6 setSetupLaterFlow:0];
  v3 = [objc_alloc(sub_1001E45D4()) initWithShieldFlowContext:v6];
  [(BuddyIntentAndChildSetupFlowItem *)selfCopy setShieldViewController:v3];

  shieldViewControllerDelegate = [(BuddyIntentAndChildSetupFlowItem *)selfCopy shieldViewControllerDelegate];
  shieldViewController = [(BuddyIntentAndChildSetupFlowItem *)selfCopy shieldViewController];
  [(AISShieldViewController *)shieldViewController setDelegate:shieldViewControllerDelegate];

  (*(location[0] + 2))(location[0], 1);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setShieldViewControllerDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_shieldViewControllerDelegate, location[0]);
  v3 = location[0];
  shieldViewController = [(BuddyIntentAndChildSetupFlowItem *)selfCopy shieldViewController];
  [(AISShieldViewController *)shieldViewController setDelegate:v3];

  objc_storeStrong(location, 0);
}

- (AISShieldViewControllerDelegate)shieldViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shieldViewControllerDelegate);

  return WeakRetained;
}

@end