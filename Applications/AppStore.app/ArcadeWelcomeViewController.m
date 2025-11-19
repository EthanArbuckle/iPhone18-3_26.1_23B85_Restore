@interface ArcadeWelcomeViewController
- (_TtC8AppStore27ArcadeWelcomeViewController)initWithCoder:(id)a3;
- (_TtC8AppStore27ArcadeWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeWelcomeViewController

- (_TtC8AppStore27ArcadeWelcomeViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100545C70();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100545E80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1005460F0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100546350(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10054667C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v10 = self;
  [(ArcadeWelcomeViewController *)&v11 viewDidDisappear:v3];
  sub_10002A400((&v10->super.super.super.isa + OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver), *&v10->artworkLoader[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver]);
  (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v6);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStore27ArcadeWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end