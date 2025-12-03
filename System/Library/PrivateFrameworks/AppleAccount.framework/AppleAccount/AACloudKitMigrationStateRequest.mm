@interface AACloudKitMigrationStateRequest
- (id)urlString;
@end

@implementation AACloudKitMigrationStateRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  cloudKitMigrationStateURL = [v2 cloudKitMigrationStateURL];

  return cloudKitMigrationStateURL;
}

@end