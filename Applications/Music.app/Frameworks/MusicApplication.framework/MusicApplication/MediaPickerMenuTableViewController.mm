@interface MediaPickerMenuTableViewController
- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MediaPickerMenuTableViewController

- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_408E04(v5, v7, bundle);
}

- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_409618();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  v14 = sub_409C08(viewCopy);

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_40AF40();

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for LibraryMenuViewController.Cell();
  v11 = swift_dynamicCastClass();
  cellCopy = cell;
  pathCopy = path;
  if (v11)
  {
    [v11 _setDrawsSeparatorAtTopOfSection:0];
  }

  (*(v8 + 8))(v10, v7);
}

- (_TtC16MusicApplication34MediaPickerMenuTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end