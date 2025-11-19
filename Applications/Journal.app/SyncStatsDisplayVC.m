@interface SyncStatsDisplayVC
- (_TtC7Journal18SyncStatsDisplayVC)initWithCoder:(id)a3;
- (_TtC7Journal18SyncStatsDisplayVC)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal18SyncStatsDisplayVC)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SyncStatsDisplayVC

- (void)viewDidLoad
{
  v2 = self;
  sub_1004403F0();
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
  v12 = sub_10044474C();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100440678(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (_TtC7Journal18SyncStatsDisplayVC)initWithStyle:(int64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SyncStatsDisplayVC();
  return [(SyncStatsDisplayVC *)&v5 initWithStyle:a3];
}

- (_TtC7Journal18SyncStatsDisplayVC)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SyncStatsDisplayVC();
  v9 = [(SyncStatsDisplayVC *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7Journal18SyncStatsDisplayVC)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SyncStatsDisplayVC();
  v4 = a3;
  v5 = [(SyncStatsDisplayVC *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end