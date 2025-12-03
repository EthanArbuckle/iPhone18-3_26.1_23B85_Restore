@interface ElectrocardiogramUpdateViewController
- (NSString)title;
- (_TtC5Heart37ElectrocardiogramUpdateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didCompleteOnboarding;
- (void)didDismissOnboarding;
- (void)viewDidLoad;
@end

@implementation ElectrocardiogramUpdateViewController

- (void)viewDidLoad
{
  selfCopy = self;
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

- (_TtC5Heart37ElectrocardiogramUpdateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_29D939D68();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29D91DDC4(v5, v7, bundle);
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
  selfCopy = self;

  tabBarController = [(ElectrocardiogramUpdateViewController *)selfCopy tabBarController];
  v4 = selfCopy;
  if (tabBarController)
  {
    v5 = sub_29D91D560();
    if (v5)
    {
      v6 = v5;
      sub_29D74E500(v5, 0);

      tabBarController = v6;
    }

    v4 = selfCopy;
  }
}

@end