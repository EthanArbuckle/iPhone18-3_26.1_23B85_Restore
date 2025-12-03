@interface AACloudKitStartMigrationRequest
- (id)urlString;
@end

@implementation AACloudKitStartMigrationRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  cloudKitStartMigrationURL = [v2 cloudKitStartMigrationURL];

  return cloudKitStartMigrationURL;
}

@end