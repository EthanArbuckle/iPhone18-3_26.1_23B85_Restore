@interface RecentCallsViewController
+ (NSString)defaultPNGName;
- (_TtC11MobilePhone25RecentCallsViewController)init;
- (_TtC11MobilePhone25RecentCallsViewController)initWithCoder:(id)a3;
- (_TtC11MobilePhone25RecentCallsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11MobilePhone25RecentCallsViewController)initWithRecentsController:(id)a3;
- (void)recentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RecentCallsViewController

- (_TtC11MobilePhone25RecentCallsViewController)initWithRecentsController:(id)a3
{
  v3 = a3;
  v4 = specialized RecentCallsViewController.init(recentsController:)(v3);

  return v4;
}

- (_TtC11MobilePhone25RecentCallsViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11MobilePhone25RecentCallsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)recentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4
{
  v5 = self;
  RecentCallsViewController.updateTabBarItemBadge(count:)(a4);
}

- (void)viewDidLoad
{
  v2 = self;
  RecentCallsViewController.viewDidLoad()();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(RecentCallsViewController *)&v5 viewWillDisappear:v3];
  [*(*&v4[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController] + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController) markRecentCallsAsRead];
}

- (_TtC11MobilePhone25RecentCallsViewController)initWithNibName:(id)a3 bundle:(id)a4
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