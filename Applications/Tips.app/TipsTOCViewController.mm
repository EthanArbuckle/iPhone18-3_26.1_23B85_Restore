@interface TipsTOCViewController
- (_TtC4Tips21TipsTOCViewController)initWithAppController:(id)controller;
- (_TtC4Tips21TipsTOCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)applicationWillEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TipsTOCViewController

- (_TtC4Tips21TipsTOCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TipsTOCViewController();
  return [(TPSViewController *)&v5 initWithNibName:0 bundle:0];
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:UIApplicationWillEnterForegroundNotification object:0];
  [defaultCenter removeObserver:selfCopy name:UIApplicationDidEnterBackgroundNotification object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for TipsTOCViewController();
  [(TPSViewController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000581B8(appear);
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_1000578F4();
}

- (void)applicationWillEnterBackground
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
  {
    selfCopy = self;

    Task.cancel()();
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) = 0;
}

- (_TtC4Tips21TipsTOCViewController)initWithAppController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end