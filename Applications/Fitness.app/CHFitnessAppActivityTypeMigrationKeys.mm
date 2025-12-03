@interface CHFitnessAppActivityTypeMigrationKeys
+ (NSArray)migrationKeys;
+ (void)setMigrationKeys:(id)keys;
- (CHFitnessAppActivityTypeMigrationKeys)init;
@end

@implementation CHFitnessAppActivityTypeMigrationKeys

+ (NSArray)migrationKeys
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (void)setMigrationKeys:(id)keys
{
  off_1008E1158 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (CHFitnessAppActivityTypeMigrationKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FitnessAppActivityTypeMigrationKeys();
  return [(CHFitnessAppActivityTypeMigrationKeys *)&v3 init];
}

@end