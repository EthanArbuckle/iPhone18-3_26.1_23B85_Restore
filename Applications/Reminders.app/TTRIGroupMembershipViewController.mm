@interface TTRIGroupMembershipViewController
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TTRIGroupMembershipViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(TTRIGroupMembershipViewController *)&v7 viewDidLoad];
  v3 = [v2 tableView];
  if (v3)
  {
    v4 = v3;
    UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

    v5 = [v2 tableView];
    if (v5)
    {
      v6 = v5;
      [v5 setEditing:1 animated:0];

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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIGroupMembershipViewController *)&v5 viewDidAppear:v3];
  [v4 becomeFirstResponder];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10009176C(a4);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = self;
    sub_1000915B4(v5);
    v8 = sub_1002AB7D4(v5, v6);

    v5 = v8[2];
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_10008F524(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  sub_10008ED80(v7);

  (*(v9 + 8))(v11, v8);
  LODWORD(v12) = v7[16];
  sub_1000916A4(v7, type metadata accessor for TTRIGroupMembershipViewModel.List);
  if (v12)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100091968(a4);
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

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
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

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100091BF8();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  sub_100091F6C(v13, v11);

  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
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
  v17 = a3;
  v18 = self;
  sub_10008FF78(v14, v11, v16);

  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v14, v7);
  v20.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19(v16, v7);

  return v20.super.isa;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v10 = a4;
    v8 = [v7 textLabel];
    if (v8)
    {
      v9 = v8;
      sub_100091F20();
      TTRIFontCustomizable.replaceFontWithRounded()();
    }
  }
}

- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders33TTRIGroupMembershipViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end