@interface DDMInstallHistoryEntryEntity.Entity
+ (id)databaseTable;
- (_TtCV28ManagedAppDistributionDaemon28DDMInstallHistoryEntryEntity6Entity)init;
- (_TtCV28ManagedAppDistributionDaemon28DDMInstallHistoryEntryEntity6Entity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtCV28ManagedAppDistributionDaemon28DDMInstallHistoryEntryEntity6Entity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation DDMInstallHistoryEntryEntity.Entity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtCV28ManagedAppDistributionDaemon28DDMInstallHistoryEntryEntity6Entity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  return [(ASUSQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtCV28ManagedAppDistributionDaemon28DDMInstallHistoryEntryEntity6Entity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  v8 = [(ASUSQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:connectionCopy];

  return v8;
}

- (_TtCV28ManagedAppDistributionDaemon28DDMInstallHistoryEntryEntity6Entity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  return [(DDMInstallHistoryEntryEntity.Entity *)&v3 init];
}

@end