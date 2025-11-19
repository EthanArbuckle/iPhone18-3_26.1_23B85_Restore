@interface TipsTOCViewController
- (_TtC4Tips21TipsTOCViewController)initWithAppController:(id)a3;
- (_TtC4Tips21TipsTOCViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)applicationWillEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TipsTOCViewController

- (_TtC4Tips21TipsTOCViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:UIApplicationWillEnterForegroundNotification object:0];
  [v5 removeObserver:v4 name:UIApplicationDidEnterBackgroundNotification object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for TipsTOCViewController();
  [(TPSViewController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000581B8(a3);
}

- (void)applicationWillEnterForeground
{
  v2 = self;
  sub_1000578F4();
}

- (void)applicationWillEnterBackground
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
  {
    v2 = self;

    Task.cancel()();
  }

  else
  {
    v3 = self;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) = 0;
}

- (_TtC4Tips21TipsTOCViewController)initWithAppController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end