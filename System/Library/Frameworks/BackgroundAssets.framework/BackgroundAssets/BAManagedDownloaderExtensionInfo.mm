@interface BAManagedDownloaderExtensionInfo
- (BAManagedDownloaderExtensionInfo)initWithCoder:(id)a3;
- (BAManagedDownloaderExtensionInfo)initWithManifestDataSource:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAManagedDownloaderExtensionInfo

- (BAManagedDownloaderExtensionInfo)initWithManifestDataSource:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BAManagedDownloaderExtensionInfo;
  result = [(BAAppExtensionInfo *)&v5 initPrivately];
  if (result)
  {
    result->_manifestDataSource = a3;
  }

  return result;
}

- (BAManagedDownloaderExtensionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BAManagedDownloaderExtensionInfo;
  v5 = [(BAAppExtensionInfo *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_manifestDataSource = [v4 decodeIntegerForKey:@"manifestDataSource"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BAManagedDownloaderExtensionInfo;
  v4 = a3;
  [(BAAppExtensionInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_manifestDataSource forKey:{@"manifestDataSource", v5.receiver, v5.super_class}];
}

@end