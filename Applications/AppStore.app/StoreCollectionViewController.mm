@interface StoreCollectionViewController
- (UICollectionView)collectionView;
- (_TtC8AppStore29StoreCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC8AppStore29StoreCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)applicationDidBecomeActive:(id)a3;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)loadView;
- (void)setCollectionView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation StoreCollectionViewController

- (UICollectionView)collectionView
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StoreCollectionViewController();
  v2 = [(StoreCollectionViewController *)&v4 collectionView];

  return v2;
}

- (void)setCollectionView:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for StoreCollectionViewController();
  v4 = v9.receiver;
  v5 = a3;
  [(StoreCollectionViewController *)&v9 setCollectionView:v5];
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for InsetCollectionViewControllerContentView();
    if (swift_dynamicCastClass())
    {
      v8 = [v4 collectionView];

      swift_unknownObjectWeakAssign();
      return;
    }
  }

  __break(1u);
}

- (void)loadView
{
  v2 = self;
  sub_100063518();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100063934();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100064D34(a3, &selRef_viewWillAppear_, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:));
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100063E24(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000641B0(a3);
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_100064648();
}

- (void)as_viewDidBecomeFullyVisible
{
  v2 = self;
  sub_100064AA0(&selRef_as_viewDidBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.didBecomeFullyVisible(_:));
}

- (void)as_viewWillBecomePartiallyVisible
{
  v2 = self;
  sub_100064AA0(&selRef_as_viewWillBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.willBecomePartiallyVisible(_:));
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_100064AA0(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didBecomePartiallyVisible(_:));
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100064D34(a3, &selRef_viewDidDisappear_, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:));
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoreCollectionViewController();
  v2 = v7.receiver;
  v3 = [(StoreCollectionViewController *)&v7 viewWillLayoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x160))(v3);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v4 view];

  if (v6)
  {
    (*((swift_isaMask & *v2) + 0x178))();
    [v6 setFrame:?];

    v2 = v6;
LABEL_4:

    return;
  }

  __break(1u);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(StoreCollectionViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_1000620F4();
}

- (void)appExitedWhileAppeared
{
  v2 = self;
  sub_100065124();
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StoreCollectionViewController();
  v2 = v4.receiver;
  v3 = [(StoreCollectionViewController *)&v4 viewSafeAreaInsetsDidChange];
  (*((swift_isaMask & *v2) + 0x128))(v3);
}

- (void)applicationDidBecomeActive:(id)a3
{
  v5 = self;
  v3 = [(StoreCollectionViewController *)v5 collectionView];
  if (v3)
  {
    v4 = v3;
    [(UICollectionView *)v3 selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStore29StoreCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore29StoreCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end