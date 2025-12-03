@interface ArcadeWelcomeViewController
- (_TtC20ProductPageExtension27ArcadeWelcomeViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension27ArcadeWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeWelcomeViewController

- (_TtC20ProductPageExtension27ArcadeWelcomeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_overlayViewController) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1000ACF08();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000AD118();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000AD388(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000AD5E8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000AD914(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(ArcadeWelcomeViewController *)&v11 viewDidDisappear:disappearCopy];
  sub_10000CF78((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver), *&selfCopy->artworkLoader[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver]);
  (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v6);
  sub_10075F2BC();

  (*(v7 + 8))(v9, v6);
}

- (_TtC20ProductPageExtension27ArcadeWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end