@interface RecentCallsViewController
+ (NSString)defaultPNGName;
- (_TtC11MobilePhone25RecentCallsViewController)init;
- (_TtC11MobilePhone25RecentCallsViewController)initWithCoder:(id)coder;
- (_TtC11MobilePhone25RecentCallsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11MobilePhone25RecentCallsViewController)initWithRecentsController:(id)controller;
- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RecentCallsViewController

- (_TtC11MobilePhone25RecentCallsViewController)initWithRecentsController:(id)controller
{
  controllerCopy = controller;
  v4 = specialized RecentCallsViewController.init(recentsController:)(controllerCopy);

  return v4;
}

- (_TtC11MobilePhone25RecentCallsViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11MobilePhone25RecentCallsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count
{
  selfCopy = self;
  RecentCallsViewController.updateTabBarItemBadge(count:)(count);
}

- (void)viewDidLoad
{
  selfCopy = self;
  RecentCallsViewController.viewDidLoad()();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(RecentCallsViewController *)&v5 viewWillDisappear:disappearCopy];
  [*(*&v4[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController] + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController) markRecentCallsAsRead];
}

- (_TtC11MobilePhone25RecentCallsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)defaultPNGName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end