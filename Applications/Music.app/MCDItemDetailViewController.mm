@interface MCDItemDetailViewController
- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4;
- (_TtC5Music27MCDItemDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MCDItemDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1002834E4();
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  v9 = self;
  v8(a4, ObjectType, v6);
  if (v10)
  {

    v11 = UITableViewAutomaticDimension;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  v9 = self;
  v8(a4, ObjectType, v6);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100285980(v6, a4);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView))
  {
    return 0;
  }

  v4 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  return (*(v4 + 24))(ObjectType, v4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView))
  {
    return 0;
  }

  v6 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v9 = *(v6 + 16);
  v10 = self;
  v11 = v9(a4, ObjectType, v6);

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v10 dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

  v15 = *&v11->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  (*(v15 + 64))(v14, v9, ObjectType, v15);

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  LOBYTE(v9) = (*(v9 + 56))(v8, ObjectType, v9);
  (*(v6 + 8))(v8, v5);
  return v9 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 48);
  v13 = a3;
  v14 = self;
  v12(v9, ObjectType, v10);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v13 deselectRowAtIndexPath:isa animated:1];

  (*(v7 + 8))(v9, v6);
}

- (_TtC5Music27MCDItemDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end