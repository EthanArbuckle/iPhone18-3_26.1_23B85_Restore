@interface ElectrocardiogramUpdateViewController
- (NSString)title;
- (_TtC5Heart37ElectrocardiogramUpdateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didCompleteOnboarding;
- (void)didDismissOnboarding;
- (void)viewDidLoad;
@end

@implementation ElectrocardiogramUpdateViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29D91C954();
}

- (NSString)title
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  return v2;
}

- (_TtC5Heart37ElectrocardiogramUpdateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_29D939D68();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D91DDC4(v5, v7, a4);
}

- (void)didDismissOnboarding
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager) = 0;
  MEMORY[0x2A1C71028]();
}

- (void)didCompleteOnboarding
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager) = 0;
  v7 = self;

  v3 = [(ElectrocardiogramUpdateViewController *)v7 tabBarController];
  v4 = v7;
  if (v3)
  {
    v5 = sub_29D91D560();
    if (v5)
    {
      v6 = v5;
      sub_29D74E500(v5, 0);

      v3 = v6;
    }

    v4 = v7;
  }
}

@end