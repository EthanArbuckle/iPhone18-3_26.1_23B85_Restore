@interface MTRDeviceControllerAbstractParameters
- (id)_initInternal;
@end

@implementation MTRDeviceControllerAbstractParameters

- (id)_initInternal
{
  v6.receiver = self;
  v6.super_class = MTRDeviceControllerAbstractParameters;
  v2 = [(MTRDeviceControllerAbstractParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_startSuspended = 0;
    v4 = v2;
  }

  return v3;
}

@end