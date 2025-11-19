@interface CMPose
- ($1AB5FA073B851C12C2339EC22442E995)translation;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPose:(id)a3;
- (CMPose)initWithCoder:(id)a3;
- (CMPose)initWithPose:(id *)a3 timestamp:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMPose

- (CMPose)initWithPose:(id *)a3 timestamp:(double)a4
{
  v13.receiver = self;
  v13.super_class = CMPose;
  v5 = [(CMLogItem *)&v13 initWithTimestamp:a4];
  if (v5)
  {
    v6 = [CMPoseInternal alloc];
    v7 = *&a3->var1.var2;
    v11[2] = *&a3->var1.var0;
    v11[3] = v7;
    v11[4] = *&a3->var3;
    var5 = a3->var5;
    v8 = *&a3->var0.var2;
    v11[0] = *&a3->var0.var0;
    v11[1] = v8;
    v5->_internal = objc_msgSend_initWithPose_(v6, v9, v11);
  }

  return v5;
}

- (CMPose)initWithCoder:(id)a3
{
  v39.receiver = self;
  v39.super_class = CMPose;
  v5 = [(CMLogItem *)&v39 initWithCoder:?];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"kCMPoseCodingKeyQuaternionW");
    v37 = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"kCMPoseCodingKeyQuaternionX");
    v36 = v8;
    objc_msgSend_decodeDoubleForKey_(a3, v9, @"kCMPoseCodingKeyQuaternionY");
    v11 = v10;
    objc_msgSend_decodeDoubleForKey_(a3, v12, @"kCMPoseCodingKeyQuaternionZ");
    v14 = v13;
    objc_msgSend_decodeDoubleForKey_(a3, v15, @"kCMPoseCodingKeyTranslationX");
    v17 = v16;
    objc_msgSend_decodeDoubleForKey_(a3, v18, @"kCMPoseCodingKeyTranslationY");
    v20 = v19;
    objc_msgSend_decodeDoubleForKey_(a3, v21, @"kCMPoseCodingKeyTranslationZ");
    v23 = v22;
    objc_msgSend_decodeDoubleForKey_(a3, v24, @"kCMPoseCodingKeyConsumedAuxTimestamp");
    v26 = v25;
    objc_msgSend_decodeDoubleForKey_(a3, v27, @"kCMPoseCodingKeyReceivedAuxTimestamp");
    v29 = v28;
    objc_msgSend_decodeDoubleForKey_(a3, v30, @"kCMPoseCodingKeyMachAbsTimestamp");
    v32 = v31;
    v33 = [CMPoseInternal alloc];
    v38[0] = v37;
    v38[1] = v36;
    v38[2] = v11;
    v38[3] = v14;
    v38[4] = v17;
    v38[5] = v20;
    v38[6] = v23;
    v38[7] = v26;
    v38[8] = v29;
    v38[9] = v32;
    v38[10] = 0;
    v5->_internal = objc_msgSend_initWithPose_(v33, v34, v38);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = CMPose;
  [(CMLogItem *)&v25 encodeWithCoder:?];
  internal = self->_internal;
  objc_msgSend_quaternion(internal[1], v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_encodeDouble_forKey_(a3, v14, @"kCMPoseCodingKeyQuaternionX");
  objc_msgSend_encodeDouble_forKey_(a3, v15, @"kCMPoseCodingKeyQuaternionY", v9);
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"kCMPoseCodingKeyQuaternionZ", v11);
  objc_msgSend_encodeDouble_forKey_(a3, v17, @"kCMPoseCodingKeyQuaternionW", v13);
  objc_msgSend_encodeDouble_forKey_(a3, v18, @"kCMPoseCodingKeyTranslationX", *(internal + 2));
  objc_msgSend_encodeDouble_forKey_(a3, v19, @"kCMPoseCodingKeyTranslationY", *(internal + 3));
  objc_msgSend_encodeDouble_forKey_(a3, v20, @"kCMPoseCodingKeyTranslationZ", *(internal + 4));
  objc_msgSend_encodeDouble_forKey_(a3, v21, @"kCMPoseCodingKeyConsumedAuxTimestamp", *(internal + 5));
  objc_msgSend_encodeDouble_forKey_(a3, v22, @"kCMPoseCodingKeyReceivedAuxTimestamp", *(internal + 6));
  objc_msgSend_encodeDouble_forKey_(a3, v23, @"kCMPoseCodingKeyMachAbsTimestamp", *(internal + 7));
  objc_msgSend_encodeDouble_forKey_(a3, v24, @"kCMPoseCodingKeyPresentationTimestamp", *(internal + 8));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPose;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CMPose;
  v6 = [(CMLogItem *)&v8 copyWithZone:?];
  if (v6)
  {
    v6[2] = objc_msgSend_copyWithZone_(self->_internal, v5, a3);
  }

  return v6;
}

- (BOOL)isEqualToPose:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_msgSend_timestamp(self, a2, a3);
  v6 = v5;
  objc_msgSend_timestamp(a3, v7, v8);
  if (v6 != v10)
  {
    return 0;
  }

  internal = self->_internal;
  v12 = *(a3 + 2);

  return objc_msgSend_isEqual_(internal, v9, v12);
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

  return MEMORY[0x1EEE66B58](self, sel_isEqualToPose_, a3);
}

- (id)description
{
  internal = self->_internal;
  v5 = MEMORY[0x1E696AEC0];
  objc_msgSend_quaternion(internal[1], a2, v2);
  v7 = v6;
  objc_msgSend_quaternion(internal[1], v8, v9);
  v11 = v10;
  objc_msgSend_quaternion(internal[1], v12, v13);
  v15 = v14;
  objc_msgSend_quaternion(internal[1], v16, v17);
  v19 = v18;
  v27 = *(internal + 1);
  v20 = *(internal + 3);
  v25 = v20;
  v26 = *(internal + 2);
  v21 = internal[8];
  v28.receiver = self;
  v28.super_class = CMPose;
  [(CMLogItem *)&v28 timestamp];
  return objc_msgSend_stringWithFormat_(v5, v22, @"CMPose,q.x,%f,q.y,%f,q.z,%f,q.w,%f,translation.x,%f,translation.y,%f,translation.z,%f,consumedAuxTimestamp,%f,receivedAuxTimestamp,%f,machAbsTimestamp,%f,presentationTimestamp,%f,timestamp,%f", v7, v11, v15, v19, v27, v26, v25, v21, v23);
}

- ($1AB5FA073B851C12C2339EC22442E995)translation
{
  internal = self->_internal;
  v3 = internal[2];
  v4 = internal[3];
  v5 = internal[4];
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

@end