@interface NSURL
- (BOOL)isDevicePickerURL;
@end

@implementation NSURL

- (BOOL)isDevicePickerURL
{
  selfCopy = self;
  v3 = NSURL.isDevicePickerURL.getter();

  return v3 & 1;
}

@end