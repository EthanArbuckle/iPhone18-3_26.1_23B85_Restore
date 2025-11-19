@interface CMDisplayGravity
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
- (BOOL)isEqual:(id)a3;
- (CMDisplayGravity)initWithCoder:(id)a3;
- (CMDisplayGravity)initWithDisplayGravity:(id *)a3 timestamp:(double)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMDisplayGravity

- (CMDisplayGravity)initWithDisplayGravity:(id *)a3 timestamp:(double)a4
{
  v12.receiver = self;
  v12.super_class = CMDisplayGravity;
  v6 = [(CMDisplayGravity *)&v12 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 24) = vcvtq_f64_f32(*&a3->var1.var0);
    *(v6 + 5) = a3->var1.var2;
    v8 = [CMAttitude alloc];
    v7->_attitude = objc_msgSend_initWithQuaternion_(v8, v9, v10, a3->var0.var0, a3->var0.var1, a3->var0.var2, a3->var0.var3);
    v7->_timestamp = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMDisplayGravity;
  [(CMDisplayGravity *)&v3 dealloc];
}

- (CMDisplayGravity)initWithCoder:(id)a3
{
  v5 = objc_msgSend_init(self, a2, a3);
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"gravityX");
    *(v5 + 24) = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"gravityY");
    *(v5 + 32) = v8;
    objc_msgSend_decodeDoubleForKey_(a3, v9, @"gravityZ");
    *(v5 + 40) = v10;
    v11 = objc_opt_class();
    *(v5 + 8) = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"attitude");
    objc_msgSend_decodeDoubleForKey_(a3, v13, @"timestamp");
    *(v5 + 16) = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"gravityX", self->_gravity.x);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"gravityY", self->_gravity.y);
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"gravityZ", self->_gravity.z);
  objc_msgSend_encodeObject_forKey_(a3, v7, self->_attitude, @"attitude");
  timestamp = self->_timestamp;

  objc_msgSend_encodeDouble_forKey_(a3, v8, @"timestamp", timestamp);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  timestamp = self->_timestamp;
  objc_msgSend_timestamp(a3, v5, v6);
  return timestamp == v8;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  objc_msgSend_quaternion(self->_attitude, a2, v2);
  v6 = v5;
  objc_msgSend_quaternion(self->_attitude, v7, v8);
  v10 = v9;
  objc_msgSend_quaternion(self->_attitude, v11, v12);
  v14 = v13;
  objc_msgSend_quaternion(self->_attitude, v15, v16);
  z = self->_gravity.z;
  return objc_msgSend_stringWithFormat_(v4, v18, @"QuaternionX %f QuaternionY %f QuaternionZ %f QuaternionW %f GravityX %f GravityY %f GravityZ %f @ %f", v6, v10, v14, v19, *&self->_gravity.x, *&self->_gravity.y, *&z, *&self->_timestamp);
}

- ($1AB5FA073B851C12C2339EC22442E995)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end