@interface MarketplaceUpdateEntity.Entity
+ (id)databaseTable;
- (_TtCV28ManagedAppDistributionDaemon23MarketplaceUpdateEntity6Entity)init;
- (_TtCV28ManagedAppDistributionDaemon23MarketplaceUpdateEntity6Entity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (_TtCV28ManagedAppDistributionDaemon23MarketplaceUpdateEntity6Entity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
@end

@implementation MarketplaceUpdateEntity.Entity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtCV28ManagedAppDistributionDaemon23MarketplaceUpdateEntity6Entity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MarketplaceUpdateEntity.Entity();
  return [(ASUSQLiteEntity *)&v7 initWithPersistentID:a3 onConnection:a4];
}

- (_TtCV28ManagedAppDistributionDaemon23MarketplaceUpdateEntity6Entity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for MarketplaceUpdateEntity.Entity();
  v8 = [(ASUSQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:v6];

  return v8;
}

- (_TtCV28ManagedAppDistributionDaemon23MarketplaceUpdateEntity6Entity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MarketplaceUpdateEntity.Entity();
  return [(MarketplaceUpdateEntity.Entity *)&v3 init];
}

@end