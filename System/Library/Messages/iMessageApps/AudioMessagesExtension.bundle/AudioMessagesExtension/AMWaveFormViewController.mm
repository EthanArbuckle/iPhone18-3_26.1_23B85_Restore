@interface AMWaveFormViewController
- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithCoder:(id)coder;
- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AMWaveFormViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for AMWaveFormViewController();
  [(AMVMWaveformViewController *)&v2 viewDidLoad];
}

- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_42978();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration) = 0;
    bundleCopy = bundle;
    v7 = sub_42968();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AMWaveFormViewController();
  v9 = [(AMWaveFormViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC22AudioMessagesExtension24AMWaveFormViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AMWaveFormViewController();
  coderCopy = coder;
  v5 = [(AMWaveFormViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end