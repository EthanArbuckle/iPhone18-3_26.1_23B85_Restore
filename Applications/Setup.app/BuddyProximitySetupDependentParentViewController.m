@interface BuddyProximitySetupDependentParentViewController
- (void)viewDidLoad;
@end

@implementation BuddyProximitySetupDependentParentViewController

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyProximitySetupDependentParentViewController;
  [(BuddyProximitySetupDependentParentViewController *)&v3 viewDidLoad];
  v2 = [(BuddyProximitySetupDependentParentViewController *)v5 navigationItem];
  [v2 setHidesBackButton:1];
}

@end