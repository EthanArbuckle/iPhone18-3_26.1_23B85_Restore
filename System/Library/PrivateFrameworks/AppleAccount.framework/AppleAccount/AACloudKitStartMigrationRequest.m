@interface AACloudKitStartMigrationRequest
- (id)urlString;
@end

@implementation AACloudKitStartMigrationRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 cloudKitStartMigrationURL];

  return v3;
}

@end