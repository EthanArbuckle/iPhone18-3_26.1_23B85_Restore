@interface AKDeviceListStoreMigrator
- (AKDeviceListStoreMigrator)init;
- (AKDeviceListStoreMigrator)initWithExecutor:(id)a3;
- (id)storeName;
- (void)migrateSchemaFromVersion:(unint64_t)a3;
@end

@implementation AKDeviceListStoreMigrator

- (id)storeName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)migrateSchemaFromVersion:(unint64_t)a3
{
  v4 = self;
  sub_100248158(a3);
}

- (AKDeviceListStoreMigrator)initWithExecutor:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DeviceListStoreMigrator();
  return [(AKStoreMigrator *)&v5 initWithExecutor:a3];
}

- (AKDeviceListStoreMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceListStoreMigrator();
  return [(AKDeviceListStoreMigrator *)&v3 init];
}

@end