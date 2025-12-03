@interface DashboardViewController
- (_TtC11Diagnostics23DashboardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)cancelTappedWithSender:(id)sender;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DashboardViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DashboardViewController();
  v2 = v5.receiver;
  [(BaseTableViewController *)&v5 viewDidLoad];
  sub_10007F6C0();
  v3 = sub_10015147C();
  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount];
  *&v2[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = v3;
  sub_10007E5FC(v4);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DashboardViewController();
  v4 = v5.receiver;
  [(DashboardViewController *)&v5 viewDidAppear:appearCopy];
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  swift_endAccess();
  v4[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 1;
  sub_100150C44();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000809C4(appear);
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_100081B38(section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  v6 = sub_100080C98(section);

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  sub_100080AD4(section);
  if (v6)
  {

    v7 = sub_100080C98(section);
    [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v9 = v8;
  }

  else
  {

    return 2.22507386e-308;
  }

  return v9;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  type metadata accessor for DashboardSectionHeaderView();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = objc_opt_self();
    v12[4] = sub_100081B30;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100031FA8;
    v12[3] = &unk_1001C2058;
    v10 = _Block_copy(v12);
    headerViewCopy = headerView;

    [v9 animateWithDuration:0x10000 delay:v10 options:0 animations:0.375 completion:0.0];
    _Block_release(v10);
  }
}

- (void)cancelTappedWithSender:(id)sender
{
  senderCopy = sender;
  sub_100088E48(0, sender);
}

- (_TtC11Diagnostics23DashboardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000814C8(v5, v7, bundle);
}

@end