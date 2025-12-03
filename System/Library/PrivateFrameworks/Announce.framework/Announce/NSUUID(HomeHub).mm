@interface NSUUID(HomeHub)
- (uint64_t)an_isLocalDevice;
@end

@implementation NSUUID(HomeHub)

- (uint64_t)an_isLocalDevice
{
  uUIDString = [self UUIDString];
  v2 = [uUIDString isEqualToString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

@end