@interface MTRXPCDeviceControllerParameters
- (MTRXPCDeviceControllerParameters)initWithXPCConnectionBlock:(id)a3 uniqueIdentifier:(id)a4;
@end

@implementation MTRXPCDeviceControllerParameters

- (MTRXPCDeviceControllerParameters)initWithXPCConnectionBlock:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MTRXPCDeviceControllerParameters;
  v8 = [(MTRDeviceControllerAbstractParameters *)&v14 _initInternal];
  if (v8)
  {
    v9 = [v6 copy];
    xpcConnectionBlock = v8->_xpcConnectionBlock;
    v8->_xpcConnectionBlock = v9;

    v11 = [v7 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v11;
  }

  return v8;
}

@end