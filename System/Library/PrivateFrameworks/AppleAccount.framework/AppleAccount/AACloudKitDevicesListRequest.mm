@interface AACloudKitDevicesListRequest
- (id)urlString;
@end

@implementation AACloudKitDevicesListRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  cloudKitDevicesListURL = [v2 cloudKitDevicesListURL];

  return cloudKitDevicesListURL;
}

@end