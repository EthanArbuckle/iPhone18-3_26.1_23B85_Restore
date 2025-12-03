@interface MCDItemDetailViewController
- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (_TtC5Music27MCDItemDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCDItemDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002834E4();
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  selfCopy = self;
  v8(section, ObjectType, v6);
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v6 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  selfCopy = self;
  v8(section, ObjectType, v6);
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100285980(viewCopy, section);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView))
  {
    return 0;
  }

  v4 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  return (*(v4 + 24))(ObjectType, v4);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView))
  {
    return 0;
  }

  v6 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v9 = *(v6 + 16);
  selfCopy = self;
  v11 = v9(section, ObjectType, v6);

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

  v15 = *&selfCopy->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  (*(v15 + 64))(v14, v9, ObjectType, v15);

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *&self->dataSource[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 48);
  viewCopy = view;
  selfCopy = self;
  v12(v9, ObjectType, v10);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [viewCopy deselectRowAtIndexPath:isa animated:1];

  (*(v7 + 8))(v9, v6);
}

- (_TtC5Music27MCDItemDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end