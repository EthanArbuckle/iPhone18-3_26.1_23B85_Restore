@interface TTRIAccountsListsViewController_collectionView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithCollectionViewLayout:(id)a3;
- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)autoCategorizeListAction:(id)a3;
- (void)beginSearchAction:(id)a3;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)didDismissSearchController:(id)a3;
- (void)didTapDone:(id)a3;
- (void)didTapEdit:(id)a3;
- (void)didTapNewGroup:(id)a3;
- (void)didTapNewList:(id)a3;
- (void)didTapSearch:(id)a3;
- (void)presentSearchController:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation TTRIAccountsListsViewController_collectionView

- (void)viewDidLoad
{
  v2 = self;
  sub_100010D80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100018C7C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10001D7FC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100558930(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIAccountsListsViewController_collectionView *)&v5 viewDidDisappear:v3];
  *(*&v4[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) = 1;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_100558AE0(a3, v10);

  sub_1000079B4(v10, &qword_10076AE40);
  return v8 & 1;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1005591A4(a3, a4);
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10055952C(v4);
}

- (void)didTapNewList:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_100453F4C();
}

- (void)didTapNewGroup:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1004542D4();
}

- (void)didTapEdit:(id)a3
{
  v3 = self;
  sub_1005591A4(1, 1);
}

- (void)didTapSearch:(id)a3
{
  v3 = self;
  sub_100560C24();
}

- (void)didTapDone:(id)a3
{
  v3 = self;
  sub_1005591A4(0, 1);
}

- (void)autoCategorizeListAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100560EF0();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (void)beginSearchAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (v6)
  {
    v7 = [v6 searchBar];
    [v7 becomeFirstResponder];

    sub_1000079B4(v8, &qword_10076AE40);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100562418(v10);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100567F10();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_1005683E4(v7);

  return v10;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005659B0(v4);
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100565CF4(v4);
}

- (void)presentSearchController:(id)a3
{
  v5 = self;
  v3 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v3)
  {
    v4 = v3;
    [v3 isToolbarHidden];
    [v4 setToolbarHidden:1 animated:1];
    static REMFeatureFlags.isSolariumEnabled.getter();
  }
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100565EDC();
}

- (void)didDismissSearchController:(id)a3
{
  _s9Reminders20TTRISearchControllerCMa_0();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController);
  if (v6)
  {
    v7 = a3;
    v9 = self;
    v8 = v6;
    sub_1005063DC();
  }

  else
  {
    __break(1u);
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = self;
  sub_100565A58(1);
}

@end