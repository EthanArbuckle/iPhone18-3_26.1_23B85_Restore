@interface CDDCloudKitServerConfiguration
- (CDDCloudKitServerConfiguration)init;
- (CDDCloudKitServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDDCloudKitServerConfiguration

- (CDDCloudKitServerConfiguration)init
{
  v4.receiver = self;
  v4.super_class = CDDCloudKitServerConfiguration;
  v2 = [(CDDCloudKitServerConfiguration *)&v4 init];
  if (v2)
  {
    v2->_storeDirectoryPath = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory 1uLL];
    v2->_machServiceName = +[NSCloudKitMirroringDelegate cloudKitMachServiceName];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CDDCloudKitServerConfiguration;
  [(CDDCloudKitServerConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CDDCloudKitServerConfiguration allocWithZone:zone];
  if (!v4)
  {
    return 0;
  }

  v7.receiver = v4;
  v7.super_class = CDDCloudKitServerConfiguration;
  v5 = [(CDDCloudKitServerConfiguration *)&v7 init];
  if (v5)
  {
    v5->_storeDirectoryPath = self->_storeDirectoryPath;
    v5->_machServiceName = self->_machServiceName;
  }

  return v5;
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = CDDCloudKitServerConfiguration;
  v3 = [MEMORY[0x1E696AD60] stringWithString:{-[CDDCloudKitServerConfiguration description](&v5, sel_description)}];
  [v3 appendFormat:@"\nstoreDirectoryPath: %@", self->_storeDirectoryPath];
  [v3 appendFormat:@"\nmachServiceName: %@", self->_machServiceName];
  return v3;
}

- (CDDCloudKitServerConfiguration)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CDDCloudKitServerConfiguration;
  v4 = [(CDDCloudKitServerConfiguration *)&v6 init];
  if (v4)
  {
    v4->_storeDirectoryPath = [coder decodeObjectOfClass:objc_opt_class() forKey:@"storeDirectoryPath"];
    v4->_machServiceName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"machServiceName"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_storeDirectoryPath forKey:@"storeDirectoryPath"];
  machServiceName = self->_machServiceName;

  [coder encodeObject:machServiceName forKey:@"machServiceName"];
}

@end