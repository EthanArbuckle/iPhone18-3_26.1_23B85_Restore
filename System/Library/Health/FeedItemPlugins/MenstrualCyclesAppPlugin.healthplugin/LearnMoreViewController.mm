@interface LearnMoreViewController
- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneAndDismiss;
@end

@implementation LearnMoreViewController

- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)doneAndDismiss
{
  selfCopy = self;
  presentingViewController = [(LearnMoreViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC24MenstrualCyclesAppPlugin23LearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end