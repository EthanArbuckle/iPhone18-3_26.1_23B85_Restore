@interface _GCMotionEventImpl
- (NSString)debugDescription;
- (_GCMotionEventImpl)initWithMotionEvent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _GCMotionEventImpl

- (_GCMotionEventImpl)initWithMotionEvent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _GCMotionEventImpl;
  v5 = [(_GCMotionEventImpl *)&v17 init];
  if (v5)
  {
    v5->_timestamp = [v4 timestamp];
    v5->_hasGyro = [v4 hasGyro];
    [v4 gyroPitch];
    v5->_gyroPitch = v6;
    [v4 gyroYaw];
    v5->_gyroYaw = v7;
    [v4 gyroRoll];
    v5->_gyroRoll = v8;
    v5->_hasAccelerometer = [v4 hasAccelerometer];
    [v4 accelerometerX];
    v5->_accelerometerX = v9;
    [v4 accelerometerY];
    v5->_accelerometerY = v10;
    [v4 accelerometerZ];
    v5->_accelerometerZ = v11;
    v5->_hasAttitude = [v4 hasAttitude];
    [v4 attitudeW];
    v5->_attitudeW = v12;
    [v4 attitudeX];
    v5->_attitudeX = v13;
    [v4 attitudeY];
    v5->_attitudeY = v14;
    [v4 attitudeZ];
    v5->_attitudeZ = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v5 = [(_GCMotionEventImpl *)self timestamp];
  v6 = [(_GCMotionEventImpl *)self hasGyro];
  [(_GCMotionEventImpl *)self gyroPitch];
  v28 = v7;
  [(_GCMotionEventImpl *)self gyroYaw];
  v9 = v8;
  [(_GCMotionEventImpl *)self gyroRoll];
  v11 = v10;
  v12 = [(_GCMotionEventImpl *)self hasAccelerometer];
  [(_GCMotionEventImpl *)self accelerometerX];
  v14 = v13;
  [(_GCMotionEventImpl *)self accelerometerY];
  v16 = v15;
  [(_GCMotionEventImpl *)self accelerometerZ];
  v18 = v17;
  v19 = [(_GCMotionEventImpl *)self hasAttitude];
  [(_GCMotionEventImpl *)self attitudeW];
  v21 = v20;
  [(_GCMotionEventImpl *)self attitudeX];
  v23 = v22;
  [(_GCMotionEventImpl *)self attitudeY];
  v25 = v24;
  [(_GCMotionEventImpl *)self attitudeZ];
  return [v3 stringWithFormat:@"<%@ %p> {\n\t.timestamp: %#llx\n\t.hasGyro: %d\n\t.gyroPitch: %f\n\t.gyroYaw: %f\n\t.gyroRoll: %f\n\t.hasAccelerometer: %d\n\t.accelerometerX: %f\n\t.accelerometerY: %f\n\t.accelerometerZ: %f\n\t.hasAttitude: %d\n\t.attitudeW: %f\n\t.attitudeX: %f\n\t.attitudeY: %f\n\t.attitudeZ: %f\n}", v4, self, v5, v6, v28, v9, v11, v12, v14, v16, v18, v19, v21, v23, v25, v26];
}

@end