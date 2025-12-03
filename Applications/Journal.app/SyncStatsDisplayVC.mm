@interface SyncStatsDisplayVC
- (_TtC7Journal18SyncStatsDisplayVC)initWithCoder:(id)coder;
- (_TtC7Journal18SyncStatsDisplayVC)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal18SyncStatsDisplayVC)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SyncStatsDisplayVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004403F0();
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
  v12 = sub_10044474C();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100440678(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (_TtC7Journal18SyncStatsDisplayVC)initWithStyle:(int64_t)style
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SyncStatsDisplayVC();
  return [(SyncStatsDisplayVC *)&v5 initWithStyle:style];
}

- (_TtC7Journal18SyncStatsDisplayVC)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SyncStatsDisplayVC();
  v9 = [(SyncStatsDisplayVC *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal18SyncStatsDisplayVC)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SyncStatsDisplayVC();
  coderCopy = coder;
  v5 = [(SyncStatsDisplayVC *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end