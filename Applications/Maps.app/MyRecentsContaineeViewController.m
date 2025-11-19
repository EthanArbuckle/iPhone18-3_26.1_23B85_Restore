@interface MyRecentsContaineeViewController
+ (NSString)PPTMyRecentsViewControllerDidAppearNotification;
- (ShareDelegate)shareDelegate;
- (_TtC4Maps32MyRecentsContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps32MyRecentsContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps40MyRecentsContaineeViewControllerDelegate_)actionDelegate;
- (id)initIncludingRecentSearches:(BOOL)a3;
- (void)didResignCurrent;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation MyRecentsContaineeViewController

- (_TtP4Maps40MyRecentsContaineeViewControllerDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ShareDelegate)shareDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)initIncludingRecentSearches:(BOOL)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  type metadata accessor for MyRecentsViewModel(0);
  swift_allocObject();
  *(self + OBJC_IVAR____TtC4Maps32MyRecentsContaineeViewController_viewModel) = sub_100537434(a3);
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(MapsHostingContaineeViewController *)&v8 initWithNibName:0 bundle:0];
  sub_1000D692C();

  return v6;
}

- (_TtC4Maps32MyRecentsContaineeViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewDidAppear:v3];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  [v5 postNotificationIfNeededWithName:v6 object:v4 userInfo:{0, v7.receiver, v7.super_class}];
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v4 = self;
  sub_1000D7CE8(a3);
}

- (void)didResignCurrent
{
  v2 = self;
  sub_1000D7E5C();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewDidLoad];
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setPresentedModally:1];

    v5 = [v2 cardPresentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setTakesAvailableHeight:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC4Maps32MyRecentsContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)PPTMyRecentsViewControllerDidAppearNotification
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end