@interface MTRDeviceControllerMachServiceXPCParameters
- (MTRDeviceControllerMachServiceXPCParameters)initWithUniqueIdentifier:(id)a3;
@end

@implementation MTRDeviceControllerMachServiceXPCParameters

- (MTRDeviceControllerMachServiceXPCParameters)initWithUniqueIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MTRDeviceControllerMachServiceXPCParameters;
  v6 = [(MTRDeviceControllerAbstractParameters *)&v10 _initInternal];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
    v8 = v7;
  }

  return v7;
}

@end