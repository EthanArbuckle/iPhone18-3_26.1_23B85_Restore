@interface TTRIAccountsListsViewController_collectionView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithCollectionViewLayout:(id)layout;
- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)autoCategorizeListAction:(id)action;
- (void)beginSearchAction:(id)action;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)didDismissSearchController:(id)controller;
- (void)didTapDone:(id)done;
- (void)didTapEdit:(id)edit;
- (void)didTapNewGroup:(id)group;
- (void)didTapNewList:(id)list;
- (void)didTapSearch:(id)search;
- (void)presentSearchController:(id)controller;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation TTRIAccountsListsViewController_collectionView

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100010D80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100018C7C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10001D7FC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100558930(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIAccountsListsViewController_collectionView *)&v5 viewDidDisappear:disappearCopy];
  *(*&v4[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) = 1;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100558AE0(action, v10);

  sub_1000079B4(v10, &qword_10076AE40);
  return v8 & 1;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1005591A4(editing, animated);
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10055952C(commandCopy);
}

- (void)didTapNewList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_100453F4C();
}

- (void)didTapNewGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  sub_1004542D4();
}

- (void)didTapEdit:(id)edit
{
  selfCopy = self;
  sub_1005591A4(1, 1);
}

- (void)didTapSearch:(id)search
{
  selfCopy = self;
  sub_100560C24();
}

- (void)didTapDone:(id)done
{
  selfCopy = self;
  sub_1005591A4(0, 1);
}

- (void)autoCategorizeListAction:(id)action
{
  if (action)
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

  sub_100560EF0();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (void)beginSearchAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (v6)
  {
    searchBar = [v6 searchBar];
    [searchBar becomeFirstResponder];

    sub_1000079B4(v8, &qword_10076AE40);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders46TTRIAccountsListsViewController_collectionView)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100562418(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100567F10();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_1005683E4(v7);

  return v10;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1005659B0(controllerCopy);
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100565CF4(controllerCopy);
}

- (void)presentSearchController:(id)controller
{
  selfCopy = self;
  v3 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v3)
  {
    v4 = v3;
    [v3 isToolbarHidden];
    [v4 setToolbarHidden:1 animated:1];
    static REMFeatureFlags.isSolariumEnabled.getter();
  }
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100565EDC();
}

- (void)didDismissSearchController:(id)controller
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
    controllerCopy = controller;
    selfCopy = self;
    v8 = v6;
    sub_1005063DC();
  }

  else
  {
    __break(1u);
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  selfCopy = self;
  sub_100565A58(1);
}

@end