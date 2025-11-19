@interface GEOAPHistoricalUploadDebugController
- (_TtC4Maps36GEOAPHistoricalUploadDebugController)initWithCoder:(id)a3;
- (_TtC4Maps36GEOAPHistoricalUploadDebugController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Maps36GEOAPHistoricalUploadDebugController)initWithStyle:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation GEOAPHistoricalUploadDebugController

- (_TtC4Maps36GEOAPHistoricalUploadDebugController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC4Maps36GEOAPHistoricalUploadDebugController_dataModel;
  type metadata accessor for GEOAPHistoricalUploadDataModel(0);
  v5 = swift_allocObject();
  *(v5 + 3) = 0;
  type metadata accessor for GEOAPHistoricalModelItem();
  sub_1005699E8();
  sub_10056DA5C(&unk_101927710, type metadata accessor for GEOAPHistoricalModelItem);
  NSDiffableDataSourceSnapshot.init()();
  *(v5 + OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_dataSource) = 0;
  *(v5 + 2) = _swiftEmptyDictionarySingleton;
  *(&self->super.super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps36GEOAPHistoricalUploadDebugController)initWithStyle:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC4Maps36GEOAPHistoricalUploadDebugController_dataModel;
  type metadata accessor for GEOAPHistoricalUploadDataModel(0);
  v6 = swift_allocObject();
  *(v6 + 3) = 0;
  type metadata accessor for GEOAPHistoricalModelItem();
  sub_1005699E8();
  sub_10056DA5C(&unk_101927710, type metadata accessor for GEOAPHistoricalModelItem);
  NSDiffableDataSourceSnapshot.init()();
  *(v6 + OBJC_IVAR____TtC4Maps30GEOAPHistoricalUploadDataModel_dataSource) = 0;
  *(v6 + 2) = _swiftEmptyDictionarySingleton;
  *(&self->super.super.super.super.isa + v5) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GEOAPHistoricalUploadDebugController();
  return [(GEOAPHistoricalUploadDebugController *)&v8 initWithStyle:a3];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10056C548();
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
  sub_10056DAA0();

  (*(v7 + 8))(v9, v6);
}

- (_TtC4Maps36GEOAPHistoricalUploadDebugController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end