@interface HKDeviceKeyValueStorageGroup
- (HKDeviceKeyValueStorageGroup)initWithCoder:(id)coder;
- (HKDeviceKeyValueStorageGroup)initWithDeviceContext:(id)context storageEntries:(id)entries;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDeviceKeyValueStorageGroup

- (HKDeviceKeyValueStorageGroup)initWithDeviceContext:(id)context storageEntries:(id)entries
{
  contextCopy = context;
  entriesCopy = entries;
  v14.receiver = self;
  v14.super_class = HKDeviceKeyValueStorageGroup;
  v9 = [(HKDeviceKeyValueStorageGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceContext, context);
    v11 = [entriesCopy copy];
    storageEntries = v10->_storageEntries;
    v10->_storageEntries = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKDeviceKeyValueStorageGroup allocWithZone:zone];
  deviceContext = self->_deviceContext;
  storageEntries = self->_storageEntries;

  return [(HKDeviceKeyValueStorageGroup *)v4 initWithDeviceContext:deviceContext storageEntries:storageEntries];
}

- (void)encodeWithCoder:(id)coder
{
  deviceContext = self->_deviceContext;
  coderCopy = coder;
  [coderCopy encodeObject:deviceContext forKey:@"DeviceContext"];
  [coderCopy encodeObject:self->_storageEntries forKey:@"StorageEntries"];
}

- (HKDeviceKeyValueStorageGroup)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceContext"];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 initWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"StorageEntries"];

  selfCopy = 0;
  if (v5 && v9)
  {
    self = [(HKDeviceKeyValueStorageGroup *)self initWithDeviceContext:v5 storageEntries:v9];
    selfCopy = self;
  }

  v11 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end