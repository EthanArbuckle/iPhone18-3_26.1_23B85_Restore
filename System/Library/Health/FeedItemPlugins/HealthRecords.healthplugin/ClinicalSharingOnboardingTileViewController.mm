@interface ClinicalSharingOnboardingTileViewController
- (_TtC13HealthRecords43ClinicalSharingOnboardingTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didAddAccount:(id)account;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingOnboardingTileViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D4FB148();
}

- (void)didAddAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  sub_29D4FB99C();
}

- (_TtC13HealthRecords43ClinicalSharingOnboardingTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29D4FBC04(v5, v7, bundle);
}

@end