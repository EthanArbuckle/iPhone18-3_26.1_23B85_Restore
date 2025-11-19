@interface CMGyroData
- (CMGyroData)initWithCoder:(id)a3;
- (CMGyroData)initWithRotationRate:(id)a3 andTimestamp:(double)a4;
- (CMRotationRate)rotationRate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMGyroData

- (CMGyroData)initWithRotationRate:(id)a3 andTimestamp:(double)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v15.receiver = self;
  v15.super_class = CMGyroData;
  v7 = [(CMLogItem *)&v15 initWithTimestamp:a4];
  if (v7)
  {
    v8 = [CMGyroDataInternal alloc];
    *&v9 = var0;
    *&v10 = var1;
    *&v11 = var2;
    v7->_internal = objc_msgSend_initWithRotationRate_(v8, v12, v13, v9, v10, v11);
  }

  return v7;
}

- (CMGyroData)initWithCoder:(id)a3
{
  v21.receiver = self;
  v21.super_class = CMGyroData;
  v4 = [(CMLogItem *)&v21 initWithCoder:?];
  if (v4)
  {
    v5 = [CMGyroDataInternal alloc];
    v4->_internal = v5;
    objc_msgSend_decodeDoubleForKey_(a3, v6, @"kCMRotationRateCodingKeyX");
    v8 = v7;
    objc_msgSend_decodeDoubleForKey_(a3, v9, @"kCMRotationRateCodingKeyY");
    v11 = v10;
    objc_msgSend_decodeDoubleForKey_(a3, v12, @"kCMRotationRateCodingKeyZ");
    HIDWORD(v13) = 1066524486;
    v14 = v8 / 0.0174532924;
    v15 = v11 / 0.0174532924;
    *&v15 = v11 / 0.0174532924;
    v17 = v16 / 0.0174532924;
    *&v13 = v17;
    *&v17 = v14;
    objc_msgSend_setRotationRate_(v5, v18, v19, v17, v15, v13);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CMGyroData;
  [(CMLogItem *)&v11 encodeWithCoder:?];
  internal = self->_internal;
  v6 = (internal[3] * 0.017453);
  v7 = (internal[4] * 0.017453);
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMRotationRateCodingKeyX", (internal[2] * 0.017453));
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMRotationRateCodingKeyY", v6);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kCMRotationRateCodingKeyZ", v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMGyroData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CMGyroData;
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
  v10.super_class = CMGyroData;
  [(CMLogItem *)&v10 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v7, @"x %f y %f z %f @ %f", *&v4, *&v5, *&v6, v8);
}

- (CMRotationRate)rotationRate
{
  internal = self->_internal;
  v3 = (internal[2] * 0.017453);
  v4 = (internal[3] * 0.017453);
  v5 = (internal[4] * 0.017453);
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

@end