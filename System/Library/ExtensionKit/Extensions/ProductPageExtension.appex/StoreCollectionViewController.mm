@interface StoreCollectionViewController
- (UICollectionView)collectionView;
- (_TtC20ProductPageExtension29StoreCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC20ProductPageExtension29StoreCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)applicationDidBecomeActive:(id)active;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)loadView;
- (void)setCollectionView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation StoreCollectionViewController

- (UICollectionView)collectionView
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StoreCollectionViewController();
  collectionView = [(StoreCollectionViewController *)&v4 collectionView];

  return collectionView;
}

- (void)setCollectionView:(id)view
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for StoreCollectionViewController();
  v4 = v9.receiver;
  viewCopy = view;
  [(StoreCollectionViewController *)&v9 setCollectionView:viewCopy];
  view = [v4 view];
  if (view)
  {
    v7 = view;
    type metadata accessor for InsetCollectionViewControllerContentView();
    if (swift_dynamicCastClass())
    {
      collectionView = [v4 collectionView];

      swift_unknownObjectWeakAssign();
      return;
    }
  }

  __break(1u);
}

- (void)loadView
{
  selfCopy = self;
  sub_1000747FC();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100074BFC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100075EA0(appear, &selRef_viewWillAppear_, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:));
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000750EC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000753A0(disappear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_1000757B4();
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_100075C0C(&selRef_as_viewDidBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.didBecomeFullyVisible(_:));
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_100075C0C(&selRef_as_viewWillBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.willBecomePartiallyVisible(_:));
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_100075C0C(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didBecomePartiallyVisible(_:));
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100075EA0(disappear, &selRef_viewDidDisappear_, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:));
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoreCollectionViewController();
  v2 = v7.receiver;
  viewWillLayoutSubviews = [(StoreCollectionViewController *)&v7 viewWillLayoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x160))(viewWillLayoutSubviews);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  view = [v4 view];

  if (view)
  {
    (*((swift_isaMask & *v2) + 0x178))();
    [view setFrame:?];

    v2 = view;
LABEL_4:

    return;
  }

  __break(1u);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(StoreCollectionViewController *)selfCopy traitCollection];
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

- (void)appEnteredWhileAppeared
{
  selfCopy = self;
  sub_1000744CC();
}

- (void)appExitedWhileAppeared
{
  selfCopy = self;
  sub_1000744D8();
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StoreCollectionViewController();
  v2 = v4.receiver;
  viewSafeAreaInsetsDidChange = [(StoreCollectionViewController *)&v4 viewSafeAreaInsetsDidChange];
  (*((swift_isaMask & *v2) + 0x128))(viewSafeAreaInsetsDidChange);
}

- (void)applicationDidBecomeActive:(id)active
{
  selfCopy = self;
  collectionView = [(StoreCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    [(UICollectionView *)collectionView selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  (*(v7 + 8))(v9, v6);
}

- (_TtC20ProductPageExtension29StoreCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension29StoreCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end