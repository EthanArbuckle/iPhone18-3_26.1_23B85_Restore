@interface CDDCloudKitRegistrationMessage
- (CDDCloudKitRegistrationMessage)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDDCloudKitRegistrationMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CDDCloudKitRegistrationMessage;
  [(CDDCloudKitMessage *)&v3 dealloc];
}

- (CDDCloudKitRegistrationMessage)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CDDCloudKitRegistrationMessage;
  v4 = [(CDDCloudKitMessage *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_bundleIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v4->_storeFileHandle = [coder decodeObjectOfClass:objc_opt_class() forKey:@"fileHandle"];
    v4->_storePath = [coder decodeObjectOfClass:objc_opt_class() forKey:@"storePath"];
    v4->_storeFileProtectionClass = [coder decodeObjectOfClass:objc_opt_class() forKey:@"storeFileProtectionClass"];
    v4->_storeType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"storeType"];
    v4->_storeConfigurationName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"storeConfigurationName"];
    v4->_containerIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CDDCloudKitRegistrationMessage;
  [(CDDCloudKitMessage *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  if (([(NSFileHandle *)self->_storeFileHandle fileDescriptor]& 0x80000000) == 0)
  {
    [coder encodeObject:self->_storeFileHandle forKey:@"fileHandle"];
  }

  [coder encodeObject:self->_storePath forKey:@"storePath"];
  [coder encodeObject:self->_storeFileProtectionClass forKey:@"storeFileProtectionClass"];
  [coder encodeObject:self->_storeType forKey:@"storeType"];
  [coder encodeObject:self->_storeConfigurationName forKey:@"storeConfigurationName"];
  [coder encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
}

@end