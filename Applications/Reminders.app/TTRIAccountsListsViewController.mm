@interface TTRIAccountsListsViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC9Reminders31TTRIAccountsListsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)autoCategorizeListAction:(id)action;
- (void)beginSearchAction:(id)action;
- (void)didDismissSearchController:(id)controller;
- (void)didTapDone:(id)done;
- (void)didTapEdit:(id)edit;
- (void)didTapNewGroup:(id)group;
- (void)didTapNewList:(id)list;
- (void)didTapSearch:(id)search;
- (void)loadView;
- (void)presentSearchController:(id)controller;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation TTRIAccountsListsViewController

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for TTRIAccountsListsTreeView(0));
  selfCopy = self;
  v4 = sub_1002EF320(2, 0.0, 0.0, 0.0, 0.0);
  [(TTRIAccountsListsViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000AEC7C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B1CC8(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B2030(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000B22B0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIAccountsListsViewController *)&v5 viewDidDisappear:disappearCopy];
  *(*&v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) = 1;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1000B24D8();
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

  v8 = sub_1000B2634(action, v10);

  sub_1000079B4(v10, &qword_10076AE40);
  return v8 & 1;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  selfCopy = self;
  sub_1000B2CF8(editingCopy, animated);
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1000B33D8(commandCopy);
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
  sub_1000B2CF8(1, 1);
}

- (void)didTapSearch:(id)search
{
  selfCopy = self;
  sub_1000B7BE4();
}

- (void)didTapDone:(id)done
{
  selfCopy = self;
  sub_1000B2CF8(0, 1);
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

  sub_1000B7EB0();

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

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
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

- (_TtC9Reminders31TTRIAccountsListsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000C1DFC(controllerCopy);
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000C2140(controllerCopy);
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
  sub_1000C2328();
}

- (void)didDismissSearchController:(id)controller
{
  type metadata accessor for TTRISearchController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
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
  sub_1000C1EA4(1);
}

@end