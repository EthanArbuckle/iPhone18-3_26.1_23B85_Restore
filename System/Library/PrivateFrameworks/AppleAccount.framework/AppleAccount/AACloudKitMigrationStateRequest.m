@interface AACloudKitMigrationStateRequest
- (id)urlString;
@end

@implementation AACloudKitMigrationStateRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 cloudKitMigrationStateURL];

  return v3;
}

@end