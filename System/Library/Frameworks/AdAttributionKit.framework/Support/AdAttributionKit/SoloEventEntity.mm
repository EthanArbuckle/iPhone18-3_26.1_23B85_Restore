@interface SoloEventEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon15SoloEventEntity)init;
- (_TtC20AttributionKitDaemon15SoloEventEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtC20AttributionKitDaemon15SoloEventEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation SoloEventEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon15SoloEventEntity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for SoloEventEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:connectionCopy];

  return v8;
}

- (_TtC20AttributionKitDaemon15SoloEventEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SoloEventEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtC20AttributionKitDaemon15SoloEventEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SoloEventEntity();
  return [(SoloEventEntity *)&v3 init];
}

@end