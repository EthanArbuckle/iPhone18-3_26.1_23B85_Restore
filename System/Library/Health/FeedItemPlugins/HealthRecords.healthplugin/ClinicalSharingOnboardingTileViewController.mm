@interface ClinicalSharingOnboardingTileViewController
- (_TtC13HealthRecords43ClinicalSharingOnboardingTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didAddAccount:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingOnboardingTileViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29D4FB148();
}

- (void)didAddAccount:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29D4FB99C();
}

- (_TtC13HealthRecords43ClinicalSharingOnboardingTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D4FBC04(v5, v7, a4);
}

@end