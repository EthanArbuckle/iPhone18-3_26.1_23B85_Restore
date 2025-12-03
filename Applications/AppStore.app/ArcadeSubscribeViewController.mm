@interface ArcadeSubscribeViewController
- (_TtC8AppStore29ArcadeSubscribeViewController)initWithCoder:(id)coder;
- (_TtC8AppStore29ArcadeSubscribeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)dealloc;
- (void)dismissPressed:(id)pressed;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeSubscribeViewController

- (_TtC8AppStore29ArcadeSubscribeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton) = 0;
  *&self->lifecycleObserver[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(ArcadeSubscribeViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  ArcadeSubscribeViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  ArcadeSubscribeViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ArcadeSubscribeViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  ArcadeSubscribeViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(ArcadeSubscribeViewController *)&v11 viewDidDisappear:disappearCopy];
  sub_10002A400((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver), *&selfCopy->lifecycleObserver[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 16]);
  (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v6);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  (*(v7 + 8))(v9, v6);
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()();
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  ArcadeSubscribeViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  changeCopy = change;
  [(ArcadeSubscribeViewController *)&v8 traitCollectionDidChange:changeCopy];
  view = [v4 view];
  if (view)
  {
    v7 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(ArcadeSubscribeViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissPressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1005F802C();

  sub_10002B894(v6, &unk_1009711D0);
}

- (_TtC8AppStore29ArcadeSubscribeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end