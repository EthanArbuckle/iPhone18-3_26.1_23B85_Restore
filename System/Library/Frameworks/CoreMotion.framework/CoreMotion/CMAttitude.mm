@interface CMAttitude
- (BOOL)isEqual:(id)equal;
- (CMAttitude)initWithCoder:(id)coder;
- (CMAttitude)initWithQuaternion:(id)quaternion;
- (CMQuaternion)quaternion;
- (CMRotationMatrix)rotationMatrix;
- (double)pitch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)multiplyByInverseOfAttitude:(CMAttitude *)attitude;
@end

@implementation CMAttitude

- (CMQuaternion)quaternion
{
  internal = self->_internal;
  v3 = internal[3];
  v4 = internal[4];
  v6 = internal[1];
  v5 = internal[2];
  result.w = v6;
  result.z = v4;
  result.y = v3;
  result.x = v5;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAttitude;
  [(CMAttitude *)&v3 dealloc];
}

- (CMAttitude)initWithQuaternion:(id)quaternion
{
  var3 = quaternion.var3;
  var2 = quaternion.var2;
  var1 = quaternion.var1;
  var0 = quaternion.var0;
  v12.receiver = self;
  v12.super_class = CMAttitude;
  v7 = [(CMAttitude *)&v12 init];
  if (v7)
  {
    v8 = [CMAttitudeInternal alloc];
    v7->_internal = objc_msgSend_initWithQuaternion_(v8, v9, v10, var0, var1, var2, var3);
  }

  return v7;
}

- (CMAttitude)initWithCoder:(id)coder
{
  objc_msgSend_decodeDoubleForKey_(coder, a2, @"kCMAttitudeCodingKeyQX");
  objc_msgSend_decodeDoubleForKey_(coder, v5, @"kCMAttitudeCodingKeyQY");
  objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMAttitudeCodingKeyQZ");
  objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCMAttitudeCodingKeyQW");

  return objc_msgSend_initWithQuaternion_(self, v8, v9);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  v5 = internal[3];
  v6 = internal[4];
  v7 = internal[1];
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"kCMAttitudeCodingKeyQX", internal[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMAttitudeCodingKeyQY", v5);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMAttitudeCodingKeyQZ", v6);

  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCMAttitudeCodingKeyQW", v7);
}

- (id)copyWithZone:(_NSZone *)zone
{
  internal = self->_internal;
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = internal[1];
  v11 = internal[2];
  v12 = internal[3];
  v13 = internal[4];

  return objc_msgSend_initWithQuaternion_(v7, v8, v9, v10, v11, v12, v13);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  internal = self->_internal;
  v7 = *(equal + 1);

  return objc_msgSend_isEqual_(internal, v5, v7);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_pitch(self, v6, v7);
  v9 = v8 * 57.2957795;
  objc_msgSend_roll(self, v10, v11);
  v13 = v12 * 57.2957795;
  objc_msgSend_yaw(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v3, v17, @"%@ Pitch: %f, Roll: %f, Yaw: %f\n", v5, *&v9, *&v13, v16 * 57.2957795);
}

- (double)pitch
{
  internal = self->_internal;
  v3 = internal[1] * (internal[2] + internal[2]) + internal[3] * (internal[4] + internal[4]);
  v4 = -1.0;
  v5 = v3 <= -1.0;
  v6 = v3 < 1.0 || v3 <= -1.0;
  if (v3 >= 1.0)
  {
    v5 = 1;
  }

  if (!v6)
  {
    v4 = 1.0;
  }

  if (v5)
  {
    return asin(v4);
  }

  else
  {
    return asin(v3);
  }
}

- (CMRotationMatrix)rotationMatrix
{
  v10 = *MEMORY[0x1E69E9840];
  sub_19B688A88(v8, self->_internal + 8);
  v5 = vcvtq_f64_f32(v8[1]);
  *&retstr->m11 = vcvtq_f64_f32(v8[0]);
  *&retstr->m13 = v5;
  v6 = vcvtq_f64_f32(v8[3]);
  *&retstr->m22 = vcvtq_f64_f32(v8[2]);
  *&retstr->m31 = v6;
  retstr->m33 = v9;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)multiplyByInverseOfAttitude:(CMAttitude *)attitude
{
  internal = self->_internal;
  v4 = attitude->_internal;
  v5 = v4[2].f64[0];
  v6 = v4[1];
  v10 = v4->f64[1];
  v11 = vnegq_f64(v6);
  v12 = -v5;
  internal[1] = sub_19B688BCC(&v10, internal + 1);
  *(internal + 2) = v7;
  *(internal + 3) = v8;
  *(internal + 4) = v9;
}

@end