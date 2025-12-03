@interface CMRecordedGyroData
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- (CMRecordedGyroData)initWithCoder:(id)coder;
- (CMRecordedGyroData)initWithData:(CMGyro50 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetWithData:(CMGyro50 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier;
@end

@implementation CMRecordedGyroData

- (CMRecordedGyroData)initWithData:(CMGyro50 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier
{
  v14.receiver = self;
  v14.super_class = CMRecordedGyroData;
  v10 = [(CMRecordedGyroData *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_resetWithData_timestamp_walltime_identifier_(v10, v11, data, timestamp, identifier, walltime);
  }

  return v12;
}

- (CMRecordedGyroData)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = CMRecordedGyroData;
  v5 = [(CMRecordedGyroData *)&v18 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"timestamp");
    v5->_timestampValue = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"startDate");
    v5->_startDateValue = v8;
    objc_msgSend_decodeFloatForKey_(coder, v9, @"rotation_x");
    v5->_rotationRate.x = v10;
    objc_msgSend_decodeFloatForKey_(coder, v11, @"rotation_y");
    v5->_rotationRate.y = v12;
    objc_msgSend_decodeFloatForKey_(coder, v13, @"rotation_z");
    v5->_rotationRate.z = v14;
    objc_msgSend_decodeFloatForKey_(coder, v15, @"temperature");
    v5->_temperatureValue = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"timestamp", self->_timestampValue);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"startDate", self->_startDateValue);
  x = self->_rotationRate.x;
  *&x = x;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"rotation_x", x);
  y = self->_rotationRate.y;
  *&y = y;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"rotation_y", y);
  z = self->_rotationRate.z;
  *&z = z;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"rotation_z", z);
  *&v13 = self->_temperatureValue;

  objc_msgSend_encodeFloat_forKey_(coder, v12, @"temperature", v13);
}

- (void)resetWithData:(CMGyro50 *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier
{
  *&self->_rotationRate.x = vcvtq_f64_f32(*&data->var0);
  var3 = data->var3;
  self->_rotationRate.z = data->var2;
  self->_temperatureValue = var3;
  var4 = data->var4;
  self->_startDateValue = walltime - (timestamp - var4) / 1000000.0;
  self->_timestampValue = var4 / 1000000.0;
  self->_identifier = identifier;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMRecordedGyroData;
  [(CMGyroData *)&v2 dealloc];
}

- ($1AB5FA073B851C12C2339EC22442E995)rotationRate
{
  x = self->_rotationRate.x;
  y = self->_rotationRate.y;
  z = self->_rotationRate.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end