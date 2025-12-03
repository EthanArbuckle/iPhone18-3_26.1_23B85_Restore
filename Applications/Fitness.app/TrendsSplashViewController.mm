@interface TrendsSplashViewController
- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)buttonTappedWithSender:(id)sender;
- (void)setListViewController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TrendsSplashViewController

- (void)setListViewController:(id)controller
{
  v4 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_listViewController];
  *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_listViewController] = controller;
  controllerCopy = controller;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001C0B80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001C112C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrendsSplashViewController();
  v4 = v5.receiver;
  [(TrendsSplashViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_1001C1B98();
}

- (void)buttonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1001C1D48();
}

- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp26TrendsSplashViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end