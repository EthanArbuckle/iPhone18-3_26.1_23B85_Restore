@interface CompassMotionManager
- (CMDeviceMotion)deviceMotion;
- (CompassMotionManager)init;
- (id)testMotion;
- (void)generateTestDeviceMotionArray;
- (void)setConfiguredForTesting:(BOOL)a3;
@end

@implementation CompassMotionManager

- (CompassMotionManager)init
{
  v6.receiver = self;
  v6.super_class = CompassMotionManager;
  v2 = [(CompassMotionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CMMotionManager);
    CMManager = v2->_CMManager;
    v2->_CMManager = v3;
  }

  return v2;
}

- (void)setConfiguredForTesting:(BOOL)a3
{
  if (self->_configuredForTesting == a3)
  {
    if (!self->_configuredForTesting)
    {
      return;
    }
  }

  else
  {
    self->_configuredForTesting = a3;
    if (!a3)
    {
      return;
    }
  }

  if (!self->_testMotionArray)
  {
    [(CompassMotionManager *)self generateTestDeviceMotionArray];
  }

  self->_testMotionIndex = 0;
  self->_testFullRotations = 0;
}

- (void)generateTestDeviceMotionArray
{
  v3 = 360;
  v8 = [[NSMutableArray alloc] initWithCapacity:360];
  v4 = 0.0;
  do
  {
    v5 = objc_alloc_init(CompassTestDeviceMotion);
    [(CompassTestDeviceMotion *)v5 setHeading:v4];
    [v8 addObject:v5];

    v4 = v4 + 1.0;
    --v3;
  }

  while (v3);
  v6 = [v8 copy];
  testMotionArray = self->_testMotionArray;
  self->_testMotionArray = v6;
}

- (id)testMotion
{
  testMotionIndex = self->_testMotionIndex;
  if (testMotionIndex >= [(NSArray *)self->_testMotionArray count]- 1)
  {
    v4 = 0;
    v5 = self->_testFullRotations + 1;
    self->_testMotionIndex = 0;
    self->_testFullRotations = v5;
  }

  else
  {
    v4 = self->_testMotionIndex;
  }

  v6 = [(NSArray *)self->_testMotionArray objectAtIndex:v4];
  testFullRotations = self->_testFullRotations;
  ++self->_testMotionIndex;
  if (testFullRotations)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CompassFinishedRotationTestNotification" object:self];
  }

  return v6;
}

- (CMDeviceMotion)deviceMotion
{
  if ([(CompassMotionManager *)self configuredForTesting])
  {
    [(CompassMotionManager *)self testMotion];
  }

  else
  {
    [(CMMotionManager *)self->_CMManager deviceMotion];
  }
  v3 = ;

  return v3;
}

@end