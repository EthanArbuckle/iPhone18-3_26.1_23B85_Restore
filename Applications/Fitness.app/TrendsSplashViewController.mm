@interface TrendsSplashViewController
- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)buttonTappedWithSender:(id)a3;
- (void)setListViewController:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TrendsSplashViewController

- (void)setListViewController:(id)a3
{
  v4 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_listViewController];
  *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_listViewController] = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1001C0B80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1001C112C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrendsSplashViewController();
  v4 = v5.receiver;
  [(TrendsSplashViewController *)&v5 viewDidDisappear:v3];
  sub_1001C1B98();
}

- (void)buttonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C1D48();
}

- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end