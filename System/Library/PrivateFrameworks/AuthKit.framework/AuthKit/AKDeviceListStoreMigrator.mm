@interface AKDeviceListStoreMigrator
- (AKDeviceListStoreMigrator)init;
- (AKDeviceListStoreMigrator)initWithExecutor:(id)executor;
- (id)storeName;
- (void)migrateSchemaFromVersion:(unint64_t)version;
@end

@implementation AKDeviceListStoreMigrator

- (id)storeName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)migrateSchemaFromVersion:(unint64_t)version
{
  selfCopy = self;
  sub_100248158(version);
}

- (AKDeviceListStoreMigrator)initWithExecutor:(id)executor
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DeviceListStoreMigrator();
  return [(AKStoreMigrator *)&v5 initWithExecutor:executor];
}

- (AKDeviceListStoreMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceListStoreMigrator();
  return [(AKDeviceListStoreMigrator *)&v3 init];
}

@end