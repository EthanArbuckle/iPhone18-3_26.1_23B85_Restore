@interface AMWaveFormViewController
- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithCoder:(id)a3;
- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation AMWaveFormViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for AMWaveFormViewController();
  [(AMVMWaveformViewController *)&v2 viewDidLoad];
}

- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_42978();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration) = 0;
    v6 = a4;
    v7 = sub_42968();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AMWaveFormViewController();
  v9 = [(AMWaveFormViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AMWaveFormViewController();
  v4 = a3;
  v5 = [(AMWaveFormViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end