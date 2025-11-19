@interface GCDevicePhysicalInputViewDescription(Client)
- (uint64_t)makeParameters;
@end

@implementation GCDevicePhysicalInputViewDescription(Client)

- (uint64_t)makeParameters
{
  [objc_opt_class() parametersClass];

  return objc_opt_new();
}

@end