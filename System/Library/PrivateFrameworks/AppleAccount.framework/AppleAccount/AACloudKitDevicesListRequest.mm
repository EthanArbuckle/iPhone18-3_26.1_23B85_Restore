@interface AACloudKitDevicesListRequest
- (id)urlString;
@end

@implementation AACloudKitDevicesListRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 cloudKitDevicesListURL];

  return v3;
}

@end