@interface MTRXPCDeviceControllerParameters
- (MTRXPCDeviceControllerParameters)initWithXPCConnectionBlock:(id)block uniqueIdentifier:(id)identifier;
@end

@implementation MTRXPCDeviceControllerParameters

- (MTRXPCDeviceControllerParameters)initWithXPCConnectionBlock:(id)block uniqueIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = MTRXPCDeviceControllerParameters;
  _initInternal = [(MTRDeviceControllerAbstractParameters *)&v14 _initInternal];
  if (_initInternal)
  {
    v9 = [blockCopy copy];
    xpcConnectionBlock = _initInternal->_xpcConnectionBlock;
    _initInternal->_xpcConnectionBlock = v9;

    v11 = [identifierCopy copy];
    uniqueIdentifier = _initInternal->_uniqueIdentifier;
    _initInternal->_uniqueIdentifier = v11;
  }

  return _initInternal;
}

@end