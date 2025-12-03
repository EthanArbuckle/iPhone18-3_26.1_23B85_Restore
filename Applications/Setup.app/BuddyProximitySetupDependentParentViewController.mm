@interface BuddyProximitySetupDependentParentViewController
- (void)viewDidLoad;
@end

@implementation BuddyProximitySetupDependentParentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyProximitySetupDependentParentViewController;
  [(BuddyProximitySetupDependentParentViewController *)&v3 viewDidLoad];
  navigationItem = [(BuddyProximitySetupDependentParentViewController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

@end