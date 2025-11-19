@interface MTLTargetDeviceArchitecture
- (MTLTargetDeviceArchitecture)init;
@end

@implementation MTLTargetDeviceArchitecture

- (MTLTargetDeviceArchitecture)init
{
  v3.receiver = self;
  v3.super_class = MTLTargetDeviceArchitecture;
  result = [(MTLTargetDeviceArchitecture *)&v3 init];
  if (result)
  {
    result->_version = 0;
  }

  return result;
}

@end