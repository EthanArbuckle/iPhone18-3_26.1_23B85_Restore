@interface CMRecordedGyroData
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- (CMRecordedGyroData)initWithCoder:(id)a3;
- (CMRecordedGyroData)initWithData:(CMGyro50 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resetWithData:(CMGyro50 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6;
@end

@implementation CMRecordedGyroData

- (CMRecordedGyroData)initWithData:(CMGyro50 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6
{
  v14.receiver = self;
  v14.super_class = CMRecordedGyroData;
  v10 = [(CMRecordedGyroData *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_resetWithData_timestamp_walltime_identifier_(v10, v11, a3, a4, a6, a5);
  }

  return v12;
}

- (CMRecordedGyroData)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = CMRecordedGyroData;
  v5 = [(CMRecordedGyroData *)&v18 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"timestamp");
    v5->_timestampValue = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"startDate");
    v5->_startDateValue = v8;
    objc_msgSend_decodeFloatForKey_(a3, v9, @"rotation_x");
    v5->_rotationRate.x = v10;
    objc_msgSend_decodeFloatForKey_(a3, v11, @"rotation_y");
    v5->_rotationRate.y = v12;
    objc_msgSend_decodeFloatForKey_(a3, v13, @"rotation_z");
    v5->_rotationRate.z = v14;
    objc_msgSend_decodeFloatForKey_(a3, v15, @"temperature");
    v5->_temperatureValue = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"timestamp", self->_timestampValue);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"startDate", self->_startDateValue);
  x = self->_rotationRate.x;
  *&x = x;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"rotation_x", x);
  y = self->_rotationRate.y;
  *&y = y;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"rotation_y", y);
  z = self->_rotationRate.z;
  *&z = z;
  objc_msgSend_encodeFloat_forKey_(a3, v11, @"rotation_z", z);
  *&v13 = self->_temperatureValue;

  objc_msgSend_encodeFloat_forKey_(a3, v12, @"temperature", v13);
}

- (void)resetWithData:(CMGyro50 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6
{
  *&self->_rotationRate.x = vcvtq_f64_f32(*&a3->var0);
  var3 = a3->var3;
  self->_rotationRate.z = a3->var2;
  self->_temperatureValue = var3;
  var4 = a3->var4;
  self->_startDateValue = a5 - (a4 - var4) / 1000000.0;
  self->_timestampValue = var4 / 1000000.0;
  self->_identifier = a6;
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