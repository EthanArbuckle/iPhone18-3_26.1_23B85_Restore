@interface SleepApneaOnboardingEducationViewController
- (void)didTapDone:(id)a3;
- (void)hxui_cancelButtonTapped;
@end

@implementation SleepApneaOnboardingEducationViewController

- (void)hxui_cancelButtonTapped
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate))
  {
    v4 = self;
    v3 = swift_unknownObjectRetain();
    sub_29E6D192C(v3);

    sub_29E751758();
  }

  else
  {
  }
}

- (void)didTapDone:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v4 = self;
  sub_29E754C38();
  sub_29E751758();
  [(SleepApneaOnboardingEducationViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  sub_29E5FECBC(v5);
}

@end