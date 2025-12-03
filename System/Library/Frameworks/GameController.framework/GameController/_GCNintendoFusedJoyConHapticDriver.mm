@interface _GCNintendoFusedJoyConHapticDriver
- (_GCNintendoFusedJoyConHapticDriver)initWithDevice:(id)device;
- (id)getDriver:(unint64_t)driver;
- (void)enableHaptics;
- (void)enqueueTransient:(id)transient hapticMotor:(unint64_t)motor;
- (void)setHapticMotor:(unint64_t)motor frequency:(float)frequency amplitude:(float)amplitude;
@end

@implementation _GCNintendoFusedJoyConHapticDriver

- (_GCNintendoFusedJoyConHapticDriver)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = _GCNintendoFusedJoyConHapticDriver;
  v5 = [(_GCNintendoFusedJoyConHapticDriver *)&v15 init];
  if (v5)
  {
    leftDevice = [deviceCopy leftDevice];
    driverConnection = [leftDevice driverConnection];
    remoteProxy = [driverConnection remoteProxy];
    leftDriver = v5->_leftDriver;
    v5->_leftDriver = remoteProxy;

    rightDevice = [deviceCopy rightDevice];
    driverConnection2 = [rightDevice driverConnection];
    remoteProxy2 = [driverConnection2 remoteProxy];
    rightDriver = v5->_rightDriver;
    v5->_rightDriver = remoteProxy2;
  }

  return v5;
}

- (id)getDriver:(unint64_t)driver
{
  v3 = 16;
  if (!driver)
  {
    v3 = 8;
  }

  return *(&self->super.isa + v3);
}

- (void)enableHaptics
{
  [(_GCDriverClientInterface *)self->_leftDriver enableHaptics];
  rightDriver = self->_rightDriver;

  [(_GCDriverClientInterface *)rightDriver enableHaptics];
}

- (void)enqueueTransient:(id)transient hapticMotor:(unint64_t)motor
{
  transientCopy = transient;
  v7 = [(_GCNintendoFusedJoyConHapticDriver *)self getDriver:motor];
  [v7 enqueueTransient:transientCopy hapticMotor:motor];
}

- (void)setHapticMotor:(unint64_t)motor frequency:(float)frequency amplitude:(float)amplitude
{
  v10 = [(_GCNintendoFusedJoyConHapticDriver *)self getDriver:?];
  *&v8 = frequency;
  *&v9 = amplitude;
  [v10 setHapticMotor:motor frequency:v8 amplitude:v9];
}

@end