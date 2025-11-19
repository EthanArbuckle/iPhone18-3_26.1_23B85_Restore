@interface MediaPickerMenuTableViewController
- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation MediaPickerMenuTableViewController

- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_408E04(v5, v7, a4);
}

- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_bindings) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_409618();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = sub_409C08(v11);

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_40AF40();

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for LibraryMenuViewController.Cell();
  v11 = swift_dynamicCastClass();
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    [v11 _setDrawsSeparatorAtTopOfSection:0];
  }

  (*(v8 + 8))(v10, v7);
}

- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end