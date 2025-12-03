@interface ManagedObjectBrowser
- (_TtC7Journal20ManagedObjectBrowser)initWithCoder:(id)coder;
- (_TtC7Journal20ManagedObjectBrowser)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal20ManagedObjectBrowser)initWithStyle:(int64_t)style;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ManagedObjectBrowser

- (_TtC7Journal20ManagedObjectBrowser)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004A7BD8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004A7E44(appear);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1004AA3D4(section);
  v9 = v8;

  return v9;
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
  sub_1004AA904();

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal20ManagedObjectBrowser)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal20ManagedObjectBrowser)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end