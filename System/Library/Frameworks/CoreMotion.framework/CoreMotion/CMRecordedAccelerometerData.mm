@interface CMRecordedAccelerometerData
- ($1AB5FA073B851C12C2339EC22442E995)acceleration;
- (CMRecordedAccelerometerData)initWithCoder:(id)coder;
- (CMRecordedAccelerometerData)initWithData:(CMAccel100 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetWithData:(CMAccel100 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier;
@end

@implementation CMRecordedAccelerometerData

- (CMRecordedAccelerometerData)initWithData:(CMAccel100 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier
{
  v14.receiver = self;
  v14.super_class = CMRecordedAccelerometerData;
  v10 = [(CMRecordedAccelerometerData *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_resetWithData_timestamp_walltime_identifier_(v10, v11, data, timestamp, identifier, walltime);
  }

  return v12;
}

- (CMRecordedAccelerometerData)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = CMRecordedAccelerometerData;
  v5 = [(CMRecordedAccelerometerData *)&v16 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"timestamp");
    v5->_timestampValue = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"startDate");
    v5->_startDateValue = v8;
    objc_msgSend_decodeFloatForKey_(coder, v9, @"accel_x");
    v5->_accelerationValue.x = v10;
    objc_msgSend_decodeFloatForKey_(coder, v11, @"accel_y");
    v5->_accelerationValue.y = v12;
    objc_msgSend_decodeFloatForKey_(coder, v13, @"accel_z");
    v5->_accelerationValue.z = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"timestamp", self->_timestampValue);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"startDate", selfCopy->_startDateValue);
  selfCopy = (selfCopy + 32);
  v6 = *&selfCopy->super.super.super.isa;
  *&v6 = *&selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"accel_x", v6);
  v8 = *&selfCopy->super.super._internalLogItem;
  *&v8 = v8;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"accel_y", v8);
  v11 = *&selfCopy->super._internal;
  *&v11 = v11;

  objc_msgSend_encodeFloat_forKey_(coder, v10, @"accel_z", v11);
}

- (void)resetWithData:(CMAccel100 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier
{
  *&self->_accelerationValue.x = vcvtq_f64_f32(*&data->var0);
  self->_accelerationValue.z = data->var2;
  v6 = *(&data->var2 + 1);
  self->_startDateValue = walltime - (timestamp - v6) / 1000000.0;
  self->_timestampValue = v6 / 1000000.0;
  self->_identifier = identifier;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMRecordedAccelerometerData;
  [(CMAccelerometerData *)&v2 dealloc];
}

- ($1AB5FA073B851C12C2339EC22442E995)acceleration
{
  x = self->_accelerationValue.x;
  y = self->_accelerationValue.y;
  z = self->_accelerationValue.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end