@interface LearnMoreViewController
- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doneAndDismiss;
@end

@implementation LearnMoreViewController

- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)doneAndDismiss
{
  v4 = self;
  v2 = [(LearnMoreViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end