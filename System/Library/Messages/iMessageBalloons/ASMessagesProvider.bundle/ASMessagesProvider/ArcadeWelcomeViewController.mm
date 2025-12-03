@interface ArcadeWelcomeViewController
- (_TtC18ASMessagesProvider27ArcadeWelcomeViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider27ArcadeWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeWelcomeViewController

- (_TtC18ASMessagesProvider27ArcadeWelcomeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_overlayViewController) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_33AEFC();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_33B10C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_33B37C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_33B5DC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_33B908(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(ArcadeWelcomeViewController *)&v11 viewDidDisappear:disappearCopy];
  sub_B170((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver), *&selfCopy->artworkLoader[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver]);
  (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v6);
  sub_7587C0();

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProvider27ArcadeWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end