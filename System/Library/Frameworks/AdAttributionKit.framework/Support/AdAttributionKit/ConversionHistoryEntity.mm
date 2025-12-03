@interface ConversionHistoryEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon23ConversionHistoryEntity)init;
- (_TtC20AttributionKitDaemon23ConversionHistoryEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtC20AttributionKitDaemon23ConversionHistoryEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation ConversionHistoryEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon23ConversionHistoryEntity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for ConversionHistoryEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:connectionCopy];

  return v8;
}

- (_TtC20AttributionKitDaemon23ConversionHistoryEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ConversionHistoryEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtC20AttributionKitDaemon23ConversionHistoryEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConversionHistoryEntity();
  return [(ConversionHistoryEntity *)&v3 init];
}

@end