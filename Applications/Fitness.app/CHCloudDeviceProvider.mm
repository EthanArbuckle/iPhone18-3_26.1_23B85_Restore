@interface CHCloudDeviceProvider
- (BOOL)oldDevicesExist;
- (CHCloudDeviceProvider)init;
@end

@implementation CHCloudDeviceProvider

- (BOOL)oldDevicesExist
{
  selfCopy = self;
  v3 = sub_10032C6E0();

  v4 = *(v3 + 16);

  return v4 != 0;
}

- (CHCloudDeviceProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end