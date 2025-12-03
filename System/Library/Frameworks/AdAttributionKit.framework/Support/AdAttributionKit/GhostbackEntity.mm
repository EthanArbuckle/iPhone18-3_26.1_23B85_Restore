@interface GhostbackEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon15GhostbackEntity)init;
- (_TtC20AttributionKitDaemon15GhostbackEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtC20AttributionKitDaemon15GhostbackEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation GhostbackEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon15GhostbackEntity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for GhostbackEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:connectionCopy];

  return v8;
}

- (_TtC20AttributionKitDaemon15GhostbackEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GhostbackEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtC20AttributionKitDaemon15GhostbackEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GhostbackEntity();
  return [(GhostbackEntity *)&v3 init];
}

@end