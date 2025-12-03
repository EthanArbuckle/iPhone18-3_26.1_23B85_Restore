@interface CSLPRFCompanionLiveActivitiesSettingsViewController
- (CSLPRFCompanionLiveActivitiesSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CSLPRFCompanionLiveActivitiesSettingsViewController

- (CSLPRFCompanionLiveActivitiesSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1672C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_B370(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_B5E4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_B91C(appear);
}

@end