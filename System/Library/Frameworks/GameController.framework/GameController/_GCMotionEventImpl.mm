@interface _GCMotionEventImpl
- (NSString)debugDescription;
- (_GCMotionEventImpl)initWithMotionEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _GCMotionEventImpl

- (_GCMotionEventImpl)initWithMotionEvent:(id)event
{
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = _GCMotionEventImpl;
  v5 = [(_GCMotionEventImpl *)&v17 init];
  if (v5)
  {
    v5->_timestamp = [eventCopy timestamp];
    v5->_hasGyro = [eventCopy hasGyro];
    [eventCopy gyroPitch];
    v5->_gyroPitch = v6;
    [eventCopy gyroYaw];
    v5->_gyroYaw = v7;
    [eventCopy gyroRoll];
    v5->_gyroRoll = v8;
    v5->_hasAccelerometer = [eventCopy hasAccelerometer];
    [eventCopy accelerometerX];
    v5->_accelerometerX = v9;
    [eventCopy accelerometerY];
    v5->_accelerometerY = v10;
    [eventCopy accelerometerZ];
    v5->_accelerometerZ = v11;
    v5->_hasAttitude = [eventCopy hasAttitude];
    [eventCopy attitudeW];
    v5->_attitudeW = v12;
    [eventCopy attitudeX];
    v5->_attitudeX = v13;
    [eventCopy attitudeY];
    v5->_attitudeY = v14;
    [eventCopy attitudeZ];
    v5->_attitudeZ = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setTimestamp:self->_timestamp];
  [v4 setHasGyro:self->_hasGyro];
  [v4 setGyroPitch:self->_gyroPitch];
  [v4 setGyroYaw:self->_gyroYaw];
  [v4 setGyroRoll:self->_gyroRoll];
  [v4 setHasAccelerometer:self->_hasAccelerometer];
  [v4 setAccelerometerX:self->_accelerometerX];
  [v4 setAccelerometerY:self->_accelerometerY];
  [v4 setAccelerometerZ:self->_accelerometerZ];
  [v4 setHasAttitude:self->_hasAttitude];
  [v4 setAttitudeW:self->_attitudeW];
  [v4 setAttitudeX:self->_attitudeX];
  [v4 setAttitudeY:self->_attitudeY];
  [v4 setAttitudeZ:self->_attitudeZ];
  return v4;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  timestamp = [(_GCMotionEventImpl *)self timestamp];
  hasGyro = [(_GCMotionEventImpl *)self hasGyro];
  [(_GCMotionEventImpl *)self gyroPitch];
  v28 = v7;
  [(_GCMotionEventImpl *)self gyroYaw];
  v9 = v8;
  [(_GCMotionEventImpl *)self gyroRoll];
  v11 = v10;
  hasAccelerometer = [(_GCMotionEventImpl *)self hasAccelerometer];
  [(_GCMotionEventImpl *)self accelerometerX];
  v14 = v13;
  [(_GCMotionEventImpl *)self accelerometerY];
  v16 = v15;
  [(_GCMotionEventImpl *)self accelerometerZ];
  v18 = v17;
  hasAttitude = [(_GCMotionEventImpl *)self hasAttitude];
  [(_GCMotionEventImpl *)self attitudeW];
  v21 = v20;
  [(_GCMotionEventImpl *)self attitudeX];
  v23 = v22;
  [(_GCMotionEventImpl *)self attitudeY];
  v25 = v24;
  [(_GCMotionEventImpl *)self attitudeZ];
  return [v3 stringWithFormat:@"<%@ %p> {\n\t.timestamp: %#llx\n\t.hasGyro: %d\n\t.gyroPitch: %f\n\t.gyroYaw: %f\n\t.gyroRoll: %f\n\t.hasAccelerometer: %d\n\t.accelerometerX: %f\n\t.accelerometerY: %f\n\t.accelerometerZ: %f\n\t.hasAttitude: %d\n\t.attitudeW: %f\n\t.attitudeX: %f\n\t.attitudeY: %f\n\t.attitudeZ: %f\n}", v4, self, timestamp, hasGyro, v28, v9, v11, hasAccelerometer, v14, v16, v18, hasAttitude, v21, v23, v25, v26];
}

@end