@interface TTRIGroupMembershipViewController
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TTRIGroupMembershipViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(TTRIGroupMembershipViewController *)&v7 viewDidLoad];
  tableView = [v2 tableView];
  if (tableView)
  {
    v4 = tableView;
    UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

    tableView2 = [v2 tableView];
    if (tableView2)
    {
      v6 = tableView2;
      [tableView2 setEditing:1 animated:0];

      sub_10008E9D8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIGroupMembershipViewController *)&v5 viewDidAppear:appearCopy];
  [v4 becomeFirstResponder];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10009176C(section);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = (self + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    selfCopy = self;
    sub_1000915B4(v5);
    v8 = sub_1002AB7D4(v5, v6);

    v5 = v8[2];
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10008F524(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10008ED80(v8);
  if (*(v8 + 16) == 1)
  {
    sub_1004BF89C(v8);
  }

  else
  {
    sub_1004BF3A0(v8);
  }

  sub_1000916A4(v8, type metadata accessor for TTRIGroupMembershipViewModel.List);
  (*(v10 + 8))(v12, v9);
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10008ED80(v7);

  (*(v9 + 8))(v11, v8);
  LODWORD(selfCopy) = v7[16];
  sub_1000916A4(v7, type metadata accessor for TTRIGroupMembershipViewModel.List);
  if (selfCopy)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_100091968(section);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8._countAndFlagsBits = 0x65766F6D6552;
  v9._object = 0x8000000100670070;
  v8._object = 0xE600000000000000;
  v9._countAndFlagsBits = 0xD00000000000002CLL;
  TTRLocalizedString(_:comment:)(v8, v9);
  (*(v5 + 8))(v7, v4);
  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100091BF8();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100091F6C(v13, v11);

  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10008FF78(v14, v11, v16);

  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v14, v7);
  v20.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19(v16, v7);

  return v20.super.isa;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    headerViewCopy = headerView;
    textLabel = [v7 textLabel];
    if (textLabel)
    {
      v9 = textLabel;
      sub_100091F20();
      TTRIFontCustomizable.replaceFontWithRounded()();
    }
  }
}

- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end