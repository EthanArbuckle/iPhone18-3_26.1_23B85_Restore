@interface DDMUpdateEntity.Entity
+ (id)databaseTable;
- (_TtCV28ManagedAppDistributionDaemon15DDMUpdateEntity6Entity)init;
- (_TtCV28ManagedAppDistributionDaemon15DDMUpdateEntity6Entity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtCV28ManagedAppDistributionDaemon15DDMUpdateEntity6Entity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation DDMUpdateEntity.Entity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtCV28ManagedAppDistributionDaemon15DDMUpdateEntity6Entity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DDMUpdateEntity.Entity();
  return [(ASUSQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtCV28ManagedAppDistributionDaemon15DDMUpdateEntity6Entity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DDMUpdateEntity.Entity();
  v8 = [(ASUSQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:connectionCopy];

  return v8;
}

- (_TtCV28ManagedAppDistributionDaemon15DDMUpdateEntity6Entity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DDMUpdateEntity.Entity();
  return [(DDMUpdateEntity.Entity *)&v3 init];
}

@end