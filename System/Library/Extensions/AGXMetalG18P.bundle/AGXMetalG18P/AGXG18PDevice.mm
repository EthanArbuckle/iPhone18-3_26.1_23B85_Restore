@interface AGXG18PDevice
- (AGXG18PDevice)initWithAcceleratorPort:(unsigned int)port;
- (id)familyName;
@end

@implementation AGXG18PDevice

- (id)familyName
{
  v2 = *(self->super._impl + 1760);
  if (v2 == 28)
  {
    return @"A19 Pro";
  }

  if (v2 != 29)
  {
    abort();
  }

  return @"A19";
}

- (AGXG18PDevice)initWithAcceleratorPort:(unsigned int)port
{
  v5.receiver = self;
  v5.super_class = AGXG18PDevice;
  result = [(AGXG18PFamilyDevice *)&v5 initWithAcceleratorPort:*&port simultaneousInstances:3328];
  if (result)
  {
    v4 = result;
    [(AGXG18PFamilyDevice *)result setupCompiler:65574];
    return v4;
  }

  return result;
}

@end