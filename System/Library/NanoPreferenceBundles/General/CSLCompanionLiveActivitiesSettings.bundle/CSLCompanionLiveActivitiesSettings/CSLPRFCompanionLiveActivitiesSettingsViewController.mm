@interface CSLPRFCompanionLiveActivitiesSettingsViewController
- (CSLPRFCompanionLiveActivitiesSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CSLPRFCompanionLiveActivitiesSettingsViewController

- (CSLPRFCompanionLiveActivitiesSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1672C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_B370(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_B5E4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_B91C(a3);
}

@end