@interface FMLabelViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (_TtC6FindMy21FMLabelViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)completeEditingTableViewCellTextActionWithSender:(id)sender;
- (void)performCancelActionWithSender:(id)sender;
- (void)saveLabelWithSender:(id)sender;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleEditingActionWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMLabelViewController

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  result = 0.0;
  if (!section)
  {
    return *&self->mediator[OBJC_IVAR____TtC6FindMy21FMLabelViewController_style];
  }

  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10028878C(section);

  return v8;
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
  v12 = sub_1002859C0(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (style == 1)
  {
    selfCopy = self;
    sub_100286CF8(v10);
  }

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1002873C4(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (IndexPath.section.getter() == 2 && (v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels)) != 0)
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100287A84(viewCopy, section);

  return v8;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100288928(v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003D27D0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003D2C64(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_1003D3158(disappearCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003D3484(change);
}

- (void)toggleEditingActionWithSender:(id)sender
{
  v4 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView);
  selfCopy = self;
  isEditing = [v5 isEditing];
  sub_1003D4EA4(isEditing);
  [*(&self->super.super.super.isa + v4) setEditing:isEditing ^ 1 animated:1];
}

- (void)completeEditingTableViewCellTextActionWithSender:(id)sender
{
  v3 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText);
  if (v4)
  {
    selfCopy = self;
    v7 = v4;
    sub_1003D506C(v7);

    v8 = *(&self->super.super.super.isa + v3);
    *(&self->super.super.super.isa + v3) = 0;
  }
}

- (void)saveLabelWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1003D9058();
}

- (void)performCancelActionWithSender:(id)sender
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
  selfCopy = self;

  [(FMLabelViewController *)selfCopy dismissViewControllerAnimated:1 completion:v5];

  _Block_release(v5);
}

- (_TtC6FindMy21FMLabelViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end