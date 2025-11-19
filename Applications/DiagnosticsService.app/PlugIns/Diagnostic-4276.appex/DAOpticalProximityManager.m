@interface DAOpticalProximityManager
+ (id)sharedInstance;
- (BOOL)startProximitySensorUpdatesWithHandler:(id)a3;
- (BOOL)stopProximitySensorUpdates;
- (DAOpticalProximityManager)init;
- (id)sensorData;
- (void)dealloc;
- (void)deviceStart;
- (void)deviceStop;
- (void)registerProximityChangedCallback;
- (void)unregisterProximityChangedCallback;
@end

@implementation DAOpticalProximityManager

+ (id)sharedInstance
{
  if (qword_100011A78 != -1)
  {
    sub_100006170();
  }

  v3 = qword_100011A70;

  return v3;
}

- (DAOpticalProximityManager)init
{
  v4.receiver = self;
  v4.super_class = DAOpticalProximityManager;
  v2 = [(DAOpticalProximityManager *)&v4 init];
  if (v2)
  {
    v2->_deviceRef = MTDeviceCreateDefault();
    v2->_updating = 0;
  }

  return v2;
}

- (void)dealloc
{
  if ([(DAOpticalProximityManager *)self deviceRef])
  {
    CFRelease([(DAOpticalProximityManager *)self deviceRef]);
  }

  v3.receiver = self;
  v3.super_class = DAOpticalProximityManager;
  [(DAOpticalProximityManager *)&v3 dealloc];
}

- (id)sensorData
{
  if ([(DAOpticalProximityManager *)self deviceRef]&& (deviceRef = self->_deviceRef, !MTDeviceGetSensorRegionOfType()))
  {
    v13[0] = @"sensorType";
    v5 = [NSNumber numberWithUnsignedChar:0];
    v14[0] = v5;
    v13[1] = @"startRow";
    v6 = [NSNumber numberWithUnsignedChar:0];
    v14[1] = v6;
    v13[2] = @"rows";
    v7 = [NSNumber numberWithUnsignedChar:0];
    v14[2] = v7;
    v13[3] = @"rowSkip";
    v8 = [NSNumber numberWithUnsignedChar:0];
    v14[3] = v8;
    v13[4] = @"startCol";
    v9 = [NSNumber numberWithUnsignedChar:0];
    v14[4] = v9;
    v13[5] = @"cols";
    v10 = [NSNumber numberWithUnsignedChar:0];
    v14[5] = v10;
    v13[6] = @"hardwareColoffset";
    v11 = [NSNumber numberWithUnsignedChar:0];
    v14[6] = v11;
    v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)startProximitySensorUpdatesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(DAOpticalProximityManager *)self isUpdating];
  if ((v5 & 1) == 0)
  {
    [(DAOpticalProximityManager *)self deviceStart];
    [(DAOpticalProximityManager *)self registerProximityChangedCallback];
    [(DAOpticalProximityManager *)self setUpdating:1];
    [(DAOpticalProximityManager *)self setHandler:v4];
  }

  return v5 ^ 1;
}

- (BOOL)stopProximitySensorUpdates
{
  v3 = [(DAOpticalProximityManager *)self isUpdating];
  if (v3)
  {
    [(DAOpticalProximityManager *)self deviceStop];
    [(DAOpticalProximityManager *)self unregisterProximityChangedCallback];
    [(DAOpticalProximityManager *)self setUpdating:0];
    [(DAOpticalProximityManager *)self setHandler:0];
  }

  return v3;
}

- (void)deviceStart
{
  [(DAOpticalProximityManager *)self deviceRef];
  MTDeviceStart();

  [(DAOpticalProximityManager *)self deviceSetDataStream:1];
}

- (void)deviceStop
{
  [(DAOpticalProximityManager *)self deviceRef];
  MTDeviceStop();

  [(DAOpticalProximityManager *)self deviceSetDataStream:2];
}

- (void)registerProximityChangedCallback
{
  v2 = [(DAOpticalProximityManager *)self deviceRef];

  _MTRegisterOpticalProximityChangedCallback(v2, MTProximityChangedCallbackFunc, 0);
}

- (void)unregisterProximityChangedCallback
{
  v2 = [(DAOpticalProximityManager *)self deviceRef];

  _MTUnregisterOpticalProximityChangedCallback(v2, MTProximityChangedCallbackFunc);
}

@end