@interface CMRecordedAccelerometerData
- ($1AB5FA073B851C12C2339EC22442E995)acceleration;
- (CMRecordedAccelerometerData)initWithCoder:(id)a3;
- (CMRecordedAccelerometerData)initWithData:(CMAccel100 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resetWithData:(CMAccel100 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6;
@end

@implementation CMRecordedAccelerometerData

- (CMRecordedAccelerometerData)initWithData:(CMAccel100 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6
{
  v14.receiver = self;
  v14.super_class = CMRecordedAccelerometerData;
  v10 = [(CMRecordedAccelerometerData *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_resetWithData_timestamp_walltime_identifier_(v10, v11, a3, a4, a6, a5);
  }

  return v12;
}

- (CMRecordedAccelerometerData)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = CMRecordedAccelerometerData;
  v5 = [(CMRecordedAccelerometerData *)&v16 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"timestamp");
    v5->_timestampValue = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"startDate");
    v5->_startDateValue = v8;
    objc_msgSend_decodeFloatForKey_(a3, v9, @"accel_x");
    v5->_accelerationValue.x = v10;
    objc_msgSend_decodeFloatForKey_(a3, v11, @"accel_y");
    v5->_accelerationValue.y = v12;
    objc_msgSend_decodeFloatForKey_(a3, v13, @"accel_z");
    v5->_accelerationValue.z = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"timestamp", self->_timestampValue);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"startDate", v4->_startDateValue);
  v4 = (v4 + 32);
  v6 = *&v4->super.super.super.isa;
  *&v6 = *&v4->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"accel_x", v6);
  v8 = *&v4->super.super._internalLogItem;
  *&v8 = v8;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"accel_y", v8);
  v11 = *&v4->super._internal;
  *&v11 = v11;

  objc_msgSend_encodeFloat_forKey_(a3, v10, @"accel_z", v11);
}

- (void)resetWithData:(CMAccel100 *)a3 timestamp:(unint64_t)a4 walltime:(double)a5 identifier:(unint64_t)a6
{
  *&self->_accelerationValue.x = vcvtq_f64_f32(*&a3->var0);
  self->_accelerationValue.z = a3->var2;
  v6 = *(&a3->var2 + 1);
  self->_startDateValue = a5 - (a4 - v6) / 1000000.0;
  self->_timestampValue = v6 / 1000000.0;
  self->_identifier = a6;
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