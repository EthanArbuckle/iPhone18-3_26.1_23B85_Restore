@interface ArcadeSubscribeViewController
- (_TtC18ASMessagesProvider29ArcadeSubscribeViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider29ArcadeSubscribeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)dealloc;
- (void)dismissPressed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeSubscribeViewController

- (_TtC18ASMessagesProvider29ArcadeSubscribeViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton) = 0;
  *&self->lifecycleObserver[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delayedDismissalReappearanceItem) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(ArcadeSubscribeViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  ArcadeSubscribeViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  ArcadeSubscribeViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ArcadeSubscribeViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  ArcadeSubscribeViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v10 = self;
  [(ArcadeSubscribeViewController *)&v11 viewDidDisappear:v3];
  sub_B170((&v10->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver), *&v10->lifecycleObserver[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 16]);
  (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v6);
  sub_7587C0();

  (*(v7 + 8))(v9, v6);
}

- (void)as_viewDidBecomeFullyVisible
{
  v2 = self;
  ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()();
}

- (void)as_viewWillBecomePartiallyVisible
{
  v2 = self;
  ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  ArcadeSubscribeViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(ArcadeSubscribeViewController *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(ArcadeSubscribeViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissPressed:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_328B70();

  sub_10A2C(v6, &unk_93FBD0);
}

- (_TtC18ASMessagesProvider29ArcadeSubscribeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end