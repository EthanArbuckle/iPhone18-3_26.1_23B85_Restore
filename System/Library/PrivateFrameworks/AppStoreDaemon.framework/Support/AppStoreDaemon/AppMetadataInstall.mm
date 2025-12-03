@interface AppMetadataInstall
- (AppMetadataInstall)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AppMetadataInstall

- (AppMetadataInstall)init
{
  v3.receiver = self;
  v3.super_class = AppMetadataInstall;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AppMetadataInstall;
  return [(SQLiteMemoryEntity *)&v4 copyWithZone:zone];
}

@end