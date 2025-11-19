@interface ManagedObjectBrowser
- (_TtC7Journal20ManagedObjectBrowser)initWithCoder:(id)a3;
- (_TtC7Journal20ManagedObjectBrowser)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal20ManagedObjectBrowser)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ManagedObjectBrowser

- (_TtC7Journal20ManagedObjectBrowser)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1004A7BD8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1004A7E44(a3);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1004AA3D4(a4);
  v9 = v8;

  return v9;
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
  sub_1004AA904();

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal20ManagedObjectBrowser)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal20ManagedObjectBrowser)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end