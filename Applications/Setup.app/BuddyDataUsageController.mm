@interface BuddyDataUsageController
- (BOOL)controllerNeedsToRun;
- (void)continueTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation BuddyDataUsageController

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyDataUsageController;
  [(BuddyDataUsageController *)&v5 viewDidLoad];
  v2 = selfCopy;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"continueTapped:"];
}

- (void)continueTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  capabilities = [(BuddyDataUsageController *)self capabilities];
  mgHasGreenTea = [(BYCapabilities *)capabilities mgHasGreenTea];
  v6 = 0;
  v4 = 0;
  if (mgHasGreenTea)
  {
    runState = [(BuddyDataUsageController *)self runState];
    v6 = 1;
    v4 = [(BYRunState *)runState hasCompletedInitialRun]^ 1;
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

@end