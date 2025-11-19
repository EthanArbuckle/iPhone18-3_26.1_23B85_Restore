@interface TTRIAccountsListsViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC9Reminders31TTRIAccountsListsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)autoCategorizeListAction:(id)a3;
- (void)beginSearchAction:(id)a3;
- (void)didDismissSearchController:(id)a3;
- (void)didTapDone:(id)a3;
- (void)didTapEdit:(id)a3;
- (void)didTapNewGroup:(id)a3;
- (void)didTapNewList:(id)a3;
- (void)didTapSearch:(id)a3;
- (void)loadView;
- (void)presentSearchController:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation TTRIAccountsListsViewController

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for TTRIAccountsListsTreeView(0));
  v5 = self;
  v4 = sub_1002EF320(2, 0.0, 0.0, 0.0, 0.0);
  [(TTRIAccountsListsViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000AEC7C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B1CC8(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B2030(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000B22B0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIAccountsListsViewController *)&v5 viewDidDisappear:v3];
  *(*&v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) = 1;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1000B24D8();
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

  v8 = sub_1000B2634(a3, v10);

  sub_1000079B4(v10, &qword_10076AE40);
  return v8 & 1;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1000B2CF8(v5, a4);
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B33D8(v4);
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
  sub_1000B2CF8(1, 1);
}

- (void)didTapSearch:(id)a3
{
  v3 = self;
  sub_1000B7BE4();
}

- (void)didTapDone:(id)a3
{
  v3 = self;
  sub_1000B2CF8(0, 1);
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

  sub_1000B7EB0();

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

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
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

- (_TtC9Reminders31TTRIAccountsListsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C1DFC(v4);
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C2140(v4);
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
  sub_1000C2328();
}

- (void)didDismissSearchController:(id)a3
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
  sub_1000C1EA4(1);
}

@end