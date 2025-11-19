@interface DDMDeclarationStatusEntity.Entity
+ (id)databaseTable;
- (_TtCV28ManagedAppDistributionDaemon26DDMDeclarationStatusEntity6Entity)init;
- (_TtCV28ManagedAppDistributionDaemon26DDMDeclarationStatusEntity6Entity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (_TtCV28ManagedAppDistributionDaemon26DDMDeclarationStatusEntity6Entity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
@end

@implementation DDMDeclarationStatusEntity.Entity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtCV28ManagedAppDistributionDaemon26DDMDeclarationStatusEntity6Entity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DDMDeclarationStatusEntity.Entity();
  return [(ASUSQLiteEntity *)&v7 initWithPersistentID:a3 onConnection:a4];
}

- (_TtCV28ManagedAppDistributionDaemon26DDMDeclarationStatusEntity6Entity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DDMDeclarationStatusEntity.Entity();
  v8 = [(ASUSQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:v6];

  return v8;
}

- (_TtCV28ManagedAppDistributionDaemon26DDMDeclarationStatusEntity6Entity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DDMDeclarationStatusEntity.Entity();
  return [(DDMDeclarationStatusEntity.Entity *)&v3 init];
}

@end