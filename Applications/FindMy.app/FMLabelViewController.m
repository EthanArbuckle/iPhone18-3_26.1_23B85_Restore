@interface FMLabelViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (_TtC6FindMy21FMLabelViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)completeEditingTableViewCellTextActionWithSender:(id)a3;
- (void)performCancelActionWithSender:(id)a3;
- (void)saveLabelWithSender:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleEditingActionWithSender:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMLabelViewController

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  result = 0.0;
  if (!a4)
  {
    return *&self->mediator[OBJC_IVAR____TtC6FindMy21FMLabelViewController_style];
  }

  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10028878C(a4);

  return v8;
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
  v12 = sub_1002859C0(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = IndexPath.section.getter();
  (*(v5 + 8))(v7, v4);
  return v8 == 2;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4 == 1)
  {
    v11 = self;
    sub_100286CF8(v10);
  }

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1002873C4(v10);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  if (IndexPath.section.getter() == 2 && (v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels)) != 0)
  {

    v11 = IndexPath.row.getter();

    (*(v6 + 8))(v8, v5);
    v12 = *(v10 + 16);

    if (v11 < v12)
    {
      return 1;
    }
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100287A84(v6, a4);

  return v8;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100288928(v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003D27D0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003D2C64(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1003D3158(v3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003D3484(a3);
}

- (void)toggleEditingActionWithSender:(id)a3
{
  v4 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView);
  v7 = self;
  v6 = [v5 isEditing];
  sub_1003D4EA4(v6);
  [*(&self->super.super.super.isa + v4) setEditing:v6 ^ 1 animated:1];
}

- (void)completeEditingTableViewCellTextActionWithSender:(id)a3
{
  v3 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText);
  if (v4)
  {
    v6 = self;
    v7 = v4;
    sub_1003D506C(v7);

    v8 = *(&self->super.super.super.isa + v3);
    *(&self->super.super.super.isa + v3) = 0;
  }
}

- (void)saveLabelWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003D9058();
}

- (void)performCancelActionWithSender:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v7[4] = sub_100097224;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100004AE4;
  v7[3] = &unk_10063BB10;
  v5 = _Block_copy(v7);
  v6 = self;

  [(FMLabelViewController *)v6 dismissViewControllerAnimated:1 completion:v5];

  _Block_release(v5);
}

- (_TtC6FindMy21FMLabelViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end