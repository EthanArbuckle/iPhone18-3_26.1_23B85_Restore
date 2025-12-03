@interface CycleChartsViewController
- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)presentEditView;
- (void)viewDidLoad;
@end

@implementation CycleChartsViewController

- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithCoder:(id)coder
{
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v4 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v4 = MEMORY[0x29EDCA1A0];
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_subscriptions) = v4;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_29E277C68();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E277E28();
}

- (void)presentEditView
{
  selfCopy = self;
  sub_29E2781F0();
}

- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end