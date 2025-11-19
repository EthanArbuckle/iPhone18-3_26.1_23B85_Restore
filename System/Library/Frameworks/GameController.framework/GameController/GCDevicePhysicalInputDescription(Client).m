@interface GCDevicePhysicalInputDescription(Client)
- (uint64_t)makeFacadeParameters;
@end

@implementation GCDevicePhysicalInputDescription(Client)

- (uint64_t)makeFacadeParameters
{
  [objc_opt_class() facadeParametersClass];

  return objc_opt_new();
}

@end