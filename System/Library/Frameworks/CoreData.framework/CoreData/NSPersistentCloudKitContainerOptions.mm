@interface NSPersistentCloudKitContainerOptions
- (NSPersistentCloudKitContainerOptions)initWithContainer:(id)a3;
- (NSPersistentCloudKitContainerOptions)initWithContainerIdentifier:(NSString *)containerIdentifier;
- (void)dealloc;
- (void)setActivityVouchers:(id)a3;
@end

@implementation NSPersistentCloudKitContainerOptions

- (void)dealloc
{
  self->_apsConnectionMachServiceName = 0;

  self->_testContainerOverride = 0;
  self->_ckAssetThresholdBytes = 0;

  self->_containerOptions = 0;
  self->_operationMemoryThresholdBytes = 0;

  self->_activityVouchers = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerOptions;
  [(NSPersistentCloudKitContainerOptions *)&v3 dealloc];
}

- (NSPersistentCloudKitContainerOptions)initWithContainerIdentifier:(NSString *)containerIdentifier
{
  v7.receiver = self;
  v7.super_class = NSPersistentCloudKitContainerOptions;
  v4 = [(NSPersistentCloudKitContainerOptions *)&v7 init];
  if (v4)
  {
    v5 = [(NSString *)containerIdentifier copy];
    v4->_useDeviceToDeviceEncryption = 0;
    v4->_containerIdentifier = v5;
    v4->_apsConnectionMachServiceName = 0;
    v4->_databaseScope = 2;
    v4->_activityVouchers = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v4;
}

- (NSPersistentCloudKitContainerOptions)initWithContainer:(id)a3
{
  v4 = -[NSPersistentCloudKitContainerOptions initWithContainerIdentifier:](self, "initWithContainerIdentifier:", [a3 containerIdentifier]);
  if (v4)
  {
    v4->_testContainerOverride = a3;
  }

  return v4;
}

- (void)setActivityVouchers:(id)a3
{
  activityVouchers = self->_activityVouchers;
  if (activityVouchers != a3)
  {

    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    self->_activityVouchers = v6;
  }
}

@end