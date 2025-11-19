@interface CMAccelerometerData
- (CMAcceleration)acceleration;
- (CMAccelerometerData)initWithAcceleration:(id)a3 andTimestamp:(double)a4;
- (CMAccelerometerData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMAccelerometerData

- (CMAccelerometerData)initWithAcceleration:(id)a3 andTimestamp:(double)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v15.receiver = self;
  v15.super_class = CMAccelerometerData;
  v7 = [(CMLogItem *)&v15 initWithTimestamp:a4];
  if (v7)
  {
    v8 = [CMAccelerometerDataInternal alloc];
    *&v9 = var0;
    *&v10 = var1;
    *&v11 = var2;
    v7->_internal = objc_msgSend_initWithAcceleration_(v8, v12, v13, v9, v10, v11);
  }

  return v7;
}

- (CMAccelerometerData)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = CMAccelerometerData;
  v4 = [(CMLogItem *)&v19 initWithCoder:?];
  if (v4)
  {
    v5 = [CMAccelerometerDataInternal alloc];
    v4->_internal = v5;
    objc_msgSend_decodeDoubleForKey_(a3, v6, @"kCMAccelerationCodingKeyX");
    v8 = v7;
    objc_msgSend_decodeDoubleForKey_(a3, v9, @"kCMAccelerationCodingKeyY");
    v11 = v10;
    objc_msgSend_decodeDoubleForKey_(a3, v12, @"kCMAccelerationCodingKeyZ");
    *&v14 = v13;
    *&v13 = v8;
    *&v15 = v11;
    objc_msgSend_setAcceleration_(v5, v16, v17, v13, v15, v14);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CMAccelerometerData;
  [(CMLogItem *)&v11 encodeWithCoder:?];
  internal = self->_internal;
  v6 = internal[3];
  v7 = internal[4];
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMAccelerationCodingKeyX", internal[2]);
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMAccelerationCodingKeyY", v6);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kCMAccelerationCodingKeyZ", v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAccelerometerData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CMAccelerometerData;
  v6 = [(CMLogItem *)&v8 copyWithZone:?];
  if (v6)
  {
    v6[2] = objc_msgSend_copyWithZone_(self->_internal, v5, a3);
  }

  return v6;
}

- (id)description
{
  internal = self->_internal;
  v3 = MEMORY[0x1E696AEC0];
  v4 = internal[2];
  v5 = internal[3];
  v6 = internal[4];
  v10.receiver = self;
  v10.super_class = CMAccelerometerData;
  [(CMLogItem *)&v10 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v7, @"x %f y %f z %f @ %f", *&v4, *&v5, *&v6, v8);
}

- (CMAcceleration)acceleration
{
  internal = self->_internal;
  v3 = internal[2];
  v4 = internal[3];
  v5 = internal[4];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

@end