@interface BuddyDataUsageController
- (BOOL)controllerNeedsToRun;
- (void)continueTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyDataUsageController

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyDataUsageController;
  [(BuddyDataUsageController *)&v5 viewDidLoad];
  v2 = v7;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"continueTapped:"];
}

- (void)continueTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyWelcomeController *)v5 delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:v5];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyDataUsageController *)self capabilities];
  v3 = [(BYCapabilities *)v2 mgHasGreenTea];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyDataUsageController *)self runState];
    v6 = 1;
    v4 = [(BYRunState *)v7 hasCompletedInitialRun]^ 1;
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

@end