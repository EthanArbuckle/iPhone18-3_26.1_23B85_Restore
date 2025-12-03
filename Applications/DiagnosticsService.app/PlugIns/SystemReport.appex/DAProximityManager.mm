@interface DAProximityManager
+ (id)sharedInstance;
- (BOOL)startProximitySensorUpdatesWithHandler:(id)handler;
- (BOOL)stopProximitySensorUpdates;
- (DAProximityManager)init;
- (void)dealloc;
- (void)deviceStart;
- (void)deviceStop;
- (void)registerProximityChangedCallback;
- (void)unregisterProximityChangedCallback;
@end

@implementation DAProximityManager

+ (id)sharedInstance
{
  if (qword_1000D1FF8 != -1)
  {
    dispatch_once(&qword_1000D1FF8, &stru_100090B30);
  }

  v3 = qword_1000D1FF0;

  return v3;
}

- (DAProximityManager)init
{
  v13.receiver = self;
  v13.super_class = DAProximityManager;
  v2 = [(DAProximityManager *)&v13 init];
  if (v2)
  {
    v2->_deviceRef = MTDeviceCreateDefault();
    v2->_updating = 0;
    if (MTDeviceGetSensorRegionOfType())
    {
      sensorRegion = v2->_sensorRegion;
      v2->_sensorRegion = &__NSDictionary0__struct;
    }

    else
    {
      v14[0] = @"sensorType";
      sensorRegion = [NSNumber numberWithUnsignedChar:0];
      v15[0] = sensorRegion;
      v14[1] = @"startRow";
      v4 = [NSNumber numberWithUnsignedChar:0];
      v15[1] = v4;
      v14[2] = @"rows";
      v5 = [NSNumber numberWithUnsignedChar:0];
      v15[2] = v5;
      v14[3] = @"rowSkip";
      v6 = [NSNumber numberWithUnsignedChar:0];
      v15[3] = v6;
      v14[4] = @"startCol";
      v7 = [NSNumber numberWithUnsignedChar:0];
      v15[4] = v7;
      v14[5] = @"cols";
      v8 = [NSNumber numberWithUnsignedChar:0];
      v15[5] = v8;
      v14[6] = @"hardwareColoffset";
      v9 = [NSNumber numberWithUnsignedChar:0];
      v15[6] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:7];
      v11 = v2->_sensorRegion;
      v2->_sensorRegion = v10;
    }
  }

  return v2;
}

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    CFRelease(deviceRef);
  }

  v4.receiver = self;
  v4.super_class = DAProximityManager;
  [(DAProximityManager *)&v4 dealloc];
}

- (BOOL)startProximitySensorUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  updating = [(DAProximityManager *)self updating];
  if ((updating & 1) == 0)
  {
    [(DAProximityManager *)self deviceStart];
    [(DAProximityManager *)self registerProximityChangedCallback];
    [(DAProximityManager *)self setHandler:handlerCopy];
    [(DAProximityManager *)self setUpdating:1];
  }

  return updating ^ 1;
}

- (BOOL)stopProximitySensorUpdates
{
  updating = [(DAProximityManager *)self updating];
  if (updating)
  {
    [(DAProximityManager *)self deviceStop];
    [(DAProximityManager *)self unregisterProximityChangedCallback];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self];

    [(DAProximityManager *)self setUpdating:0];
    [(DAProximityManager *)self setHandler:0];
  }

  return updating;
}

- (void)deviceStart
{
  [(DAProximityManager *)self deviceRef];
  MTDeviceStart();

  [(DAProximityManager *)self deviceSetDataStream:1];
}

- (void)deviceStop
{
  [(DAProximityManager *)self deviceRef];
  MTDeviceStop();

  [(DAProximityManager *)self deviceSetDataStream:2];
}

- (void)registerProximityChangedCallback
{
  deviceRef = [(DAProximityManager *)self deviceRef];

  _MTRegisterOpticalProximityChangedCallback(deviceRef, sub_10002C070, 0);
}

- (void)unregisterProximityChangedCallback
{
  deviceRef = [(DAProximityManager *)self deviceRef];

  _MTUnregisterOpticalProximityChangedCallback(deviceRef, sub_10002C070);
}

@end