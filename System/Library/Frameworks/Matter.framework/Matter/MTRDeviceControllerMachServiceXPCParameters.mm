@interface MTRDeviceControllerMachServiceXPCParameters
- (MTRDeviceControllerMachServiceXPCParameters)initWithUniqueIdentifier:(id)identifier;
@end

@implementation MTRDeviceControllerMachServiceXPCParameters

- (MTRDeviceControllerMachServiceXPCParameters)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = MTRDeviceControllerMachServiceXPCParameters;
  _initInternal = [(MTRDeviceControllerAbstractParameters *)&v10 _initInternal];
  v7 = _initInternal;
  if (_initInternal)
  {
    objc_storeStrong(_initInternal + 2, identifier);
    v8 = v7;
  }

  return v7;
}

@end