@interface BuddyIntentAndChildSetupFlowItem
- (AISShieldViewControllerDelegate)shieldViewControllerDelegate;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setShieldViewControllerDelegate:(id)a3;
@end

@implementation BuddyIntentAndChildSetupFlowItem

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc_init(sub_1001E44C0());
  [v6 setForceOfferAgeRangePicker:1];
  [v6 setSkipConnectToFamily:1];
  [v6 setSkipSetupWithGuardian:0];
  [v6 setShouldNotDismiss:1];
  [v6 setSetupSelfFlow:0];
  [v6 setSetupLaterFlow:0];
  v3 = [objc_alloc(sub_1001E45D4()) initWithShieldFlowContext:v6];
  [(BuddyIntentAndChildSetupFlowItem *)v8 setShieldViewController:v3];

  v4 = [(BuddyIntentAndChildSetupFlowItem *)v8 shieldViewControllerDelegate];
  v5 = [(BuddyIntentAndChildSetupFlowItem *)v8 shieldViewController];
  [(AISShieldViewController *)v5 setDelegate:v4];

  (*(location[0] + 2))(location[0], 1);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setShieldViewControllerDelegate:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v6->_shieldViewControllerDelegate, location[0]);
  v3 = location[0];
  v4 = [(BuddyIntentAndChildSetupFlowItem *)v6 shieldViewController];
  [(AISShieldViewController *)v4 setDelegate:v3];

  objc_storeStrong(location, 0);
}

- (AISShieldViewControllerDelegate)shieldViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shieldViewControllerDelegate);

  return WeakRetained;
}

@end