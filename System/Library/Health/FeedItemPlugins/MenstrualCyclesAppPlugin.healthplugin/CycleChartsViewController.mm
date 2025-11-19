@interface CycleChartsViewController
- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)presentEditView;
- (void)viewDidLoad;
@end

@implementation CycleChartsViewController

- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_29E277C68();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29E277E28();
}

- (void)presentEditView
{
  v2 = self;
  sub_29E2781F0();
}

- (_TtC24MenstrualCyclesAppPlugin25CycleChartsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end