@interface PostbackEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon14PostbackEntity)init;
- (_TtC20AttributionKitDaemon14PostbackEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (_TtC20AttributionKitDaemon14PostbackEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
@end

@implementation PostbackEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon14PostbackEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for PostbackEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:v6];

  return v8;
}

- (_TtC20AttributionKitDaemon14PostbackEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PostbackEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:a3 onConnection:a4];
}

- (_TtC20AttributionKitDaemon14PostbackEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PostbackEntity();
  return [(PostbackEntity *)&v3 init];
}

@end