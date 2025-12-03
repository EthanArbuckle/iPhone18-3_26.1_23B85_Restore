@interface CMDeviceMotionLite
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
- ($1AB5FA073B851C12C2339EC22442E995)rawAcceleration;
- ($1AB5FA073B851C12C2339EC22442E995)rawMagneticField;
- ($1AB5FA073B851C12C2339EC22442E995)rawRotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration;
- (CMDeviceMotionLite)initWithCoder:(id)coder;
- (CMDeviceMotionLite)initWithDeviceMotionLite:(id *)lite andDeviceID:(id)d;
- (float)tilt;
- (float)tip;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMDeviceMotionLite

- (CMDeviceMotionLite)initWithDeviceMotionLite:(id *)lite andDeviceID:(id)d
{
  v20.receiver = self;
  v20.super_class = CMDeviceMotionLite;
  v6 = [(CMDeviceMotionLite *)&v20 init];
  if (v6)
  {
    v7 = [CMAttitude alloc];
    *(v6 + 3) = objc_msgSend_initWithQuaternion_(v7, v8, v9, lite->var0.var0, lite->var0.var1, lite->var0.var2, lite->var0.var3);
    *(v6 + 6) = sub_19B420740(&lite->var0.var0);
    *(v6 + 7) = v10;
    *(v6 + 8) = v11;
    v12 = *&lite->var1.var2;
    *(v6 + 72) = vcvtq_f64_f32(*&lite->var1.var0);
    *(v6 + 88) = vcvtq_f64_f32(v12);
    v13 = *&lite->var3.var0;
    *(v6 + 104) = vcvtq_f64_f32(*&lite->var2.var1);
    *(v6 + 120) = vcvtq_f64_f32(v13);
    v14 = *&lite->var4.var1;
    *(v6 + 136) = vcvtq_f64_f32(*&lite->var3.var2);
    *(v6 + 152) = vcvtq_f64_f32(v14);
    *(v6 + 5) = lite->var5;
    v6[8] = lite->var6;
    *(v6 + 4) = objc_msgSend_copy(d, v15, v16);
    *(v6 + 3) = LODWORD(lite->var7);
    *(v6 + 4) = LODWORD(lite->var8);
    var2 = lite->var9.var2;
    *(v6 + 168) = vcvtq_f64_f32(*&lite->var9.var0);
    *(v6 + 23) = var2;
  }

  if (qword_1ED71D778 != -1)
  {
    dispatch_once(&qword_1ED71D778, &unk_1F0E2A480);
  }

  if (byte_1ED71D770)
  {
    v18 = byte_1ED71D771 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    mach_absolute_time();
    kdebug_trace();
  }

  return v6;
}

- (CMDeviceMotionLite)initWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    v97 = 0;
    v96 = 0;
    v105 = 0;
    v106 = 0;
    objc_msgSend_decodeDoubleForKey_(coder, v5, @"kCMDeviceMotionLiteCodingKeyQuaternionW");
    v80 = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCMDeviceMotionLiteCodingKeyQuaternionX");
    v79 = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCMDeviceMotionLiteCodingKeyQuaternionY");
    v78 = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMDeviceMotionLiteCodingKeyQuaternionZ");
    v77 = v12;
    objc_msgSend_decodeFloatForKey_(coder, v13, @"kCMDeviceMotionLiteCodingKeyUserAccelerationX");
    v76 = v14;
    objc_msgSend_decodeFloatForKey_(coder, v15, @"kCMDeviceMotionLiteCodingKeyUserAccelerationY");
    v75 = v16;
    objc_msgSend_decodeFloatForKey_(coder, v17, @"kCMDeviceMotionLiteCodingKeyUserAccelerationZ");
    v74 = v18;
    objc_msgSend_decodeFloatForKey_(coder, v19, @"kCMDeviceMotionLiteCodingKeyRotationRateX");
    v73 = v20;
    objc_msgSend_decodeFloatForKey_(coder, v21, @"kCMDeviceMotionLiteCodingKeyRotationRateY");
    v72 = v22;
    objc_msgSend_decodeFloatForKey_(coder, v23, @"kCMDeviceMotionLiteCodingKeyRotationRateZ");
    v71 = v24;
    objc_msgSend_decodeFloatForKey_(coder, v25, @"kCMDeviceMotionLiteCodingKeyRawAccelerationX");
    v70 = v26;
    objc_msgSend_decodeFloatForKey_(coder, v27, @"kCMDeviceMotionLiteCodingKeyRawAccelerationY");
    v69 = v28;
    objc_msgSend_decodeFloatForKey_(coder, v29, @"kCMDeviceMotionLiteCodingKeyRawAccelerationZ");
    v68 = v30;
    objc_msgSend_decodeFloatForKey_(coder, v31, @"kCMDeviceMotionLiteCodingKeyRawRotationRateX");
    v33 = v32;
    objc_msgSend_decodeFloatForKey_(coder, v34, @"kCMDeviceMotionLiteCodingKeyRawRotationRateY");
    v36 = v35;
    objc_msgSend_decodeFloatForKey_(coder, v37, @"kCMDeviceMotionLiteCodingKeyRawRotationRateZ");
    v39 = v38;
    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v41, v40, @"kCMDeviceMotionLiteCodingKeyMachTimestamp");
    v45 = objc_msgSend_unsignedLongLongValue(v42, v43, v44);
    v47 = objc_msgSend_decodeBoolForKey_(coder, v46, @"kCMDeviceMotionLiteCodingKeyUsingCompass");
    objc_msgSend_decodeFloatForKey_(coder, v48, @"kCMDeviceMotionLiteCodingKeyGyroTemperature");
    v50 = v49;
    objc_msgSend_decodeFloatForKey_(coder, v51, @"kCMDeviceMotionLiteCodingKeyCompassTemperature");
    v53 = v52;
    objc_msgSend_decodeFloatForKey_(coder, v54, @"kCMDeviceMotionLiteCodingKeyRawMagneticFieldX");
    v56 = v55;
    objc_msgSend_decodeFloatForKey_(coder, v57, @"kCMDeviceMotionLiteCodingKeyRawMagneticFieldY");
    v59 = v58;
    objc_msgSend_decodeFloatForKey_(coder, v60, @"kCMDeviceMotionLiteCodingKeyRawMagneticFieldZ");
    v62 = v61;
    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v64, v63, @"kCMDeviceMotionLiteCodingKeyPhysicalDeviceUniqueID");
    v81[0] = v80;
    v81[1] = v79;
    v81[2] = v78;
    v81[3] = v77;
    v82 = v76;
    v83 = v75;
    v84 = v74;
    v85 = v73;
    v86 = v72;
    v87 = v71;
    v88 = v70;
    v89 = v69;
    v90 = v68;
    v91 = v33;
    v92 = v36;
    v93 = v39;
    v94 = v45;
    v95 = v47;
    v98 = v50;
    v99 = v53;
    v100 = v56;
    v101 = v59;
    v102 = v62;
    v104 = 0;
    v103 = 0;
    return objc_msgSend_initWithDeviceMotionLite_andDeviceID_(self, v66, v81, v65);
  }

  else
  {

    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder) & 1) == 0)
  {
    v60 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v61, a2, self, @"CMDeviceMotionLite.mm", 162, @"Invalid parameter not satisfying: %@", @"[encoder allowsKeyedCoding]");
  }

  objc_msgSend_quaternion(self->_attitude, v6, v7);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMDeviceMotionLiteCodingKeyQuaternionX");
  objc_msgSend_quaternion(self->_attitude, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"kCMDeviceMotionLiteCodingKeyQuaternionY", v12);
  objc_msgSend_quaternion(self->_attitude, v13, v14);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCMDeviceMotionLiteCodingKeyQuaternionZ", v16);
  objc_msgSend_quaternion(self->_attitude, v17, v18);
  objc_msgSend_encodeDouble_forKey_(coder, v19, @"kCMDeviceMotionLiteCodingKeyQuaternionW", v20);
  x = self->_userAcceleration.x;
  *&x = x;
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"kCMDeviceMotionLiteCodingKeyUserAccelerationX", x);
  y = self->_userAcceleration.y;
  *&y = y;
  objc_msgSend_encodeFloat_forKey_(coder, v24, @"kCMDeviceMotionLiteCodingKeyUserAccelerationY", y);
  z = self->_userAcceleration.z;
  *&z = z;
  objc_msgSend_encodeFloat_forKey_(coder, v26, @"kCMDeviceMotionLiteCodingKeyUserAccelerationZ", z);
  v27 = self->_rotationRate.x;
  *&v27 = v27;
  objc_msgSend_encodeFloat_forKey_(coder, v28, @"kCMDeviceMotionLiteCodingKeyRotationRateX", v27);
  v29 = self->_rotationRate.y;
  *&v29 = v29;
  objc_msgSend_encodeFloat_forKey_(coder, v30, @"kCMDeviceMotionLiteCodingKeyRotationRateY", v29);
  v31 = self->_rotationRate.z;
  *&v31 = v31;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"kCMDeviceMotionLiteCodingKeyRotationRateZ", v31);
  v33 = self->_rawAcceleration.x;
  *&v33 = v33;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"kCMDeviceMotionLiteCodingKeyRawAccelerationX", v33);
  v35 = self->_rawAcceleration.y;
  *&v35 = v35;
  objc_msgSend_encodeFloat_forKey_(coder, v36, @"kCMDeviceMotionLiteCodingKeyRawAccelerationY", v35);
  v37 = self->_rawAcceleration.z;
  *&v37 = v37;
  objc_msgSend_encodeFloat_forKey_(coder, v38, @"kCMDeviceMotionLiteCodingKeyRawAccelerationZ", v37);
  v39 = self->_rawRotationRate.x;
  *&v39 = v39;
  objc_msgSend_encodeFloat_forKey_(coder, v40, @"kCMDeviceMotionLiteCodingKeyRawRotationRateX", v39);
  v41 = self->_rawRotationRate.y;
  *&v41 = v41;
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"kCMDeviceMotionLiteCodingKeyRawRotationRateY", v41);
  v43 = self->_rawRotationRate.z;
  *&v43 = v43;
  objc_msgSend_encodeFloat_forKey_(coder, v44, @"kCMDeviceMotionLiteCodingKeyRawRotationRateZ", v43);
  v46 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v45, self->_machTimestamp);
  objc_msgSend_encodeObject_forKey_(coder, v47, v46, @"kCMDeviceMotionLiteCodingKeyMachTimestamp");
  objc_msgSend_encodeBool_forKey_(coder, v48, self->_usingCompass, @"kCMDeviceMotionLiteCodingKeyUsingCompass");
  objc_msgSend_encodeObject_forKey_(coder, v49, self->_physicalDeviceUniqueID, @"kCMDeviceMotionLiteCodingKeyPhysicalDeviceUniqueID");
  *&v50 = self->_gyroTemperature;
  objc_msgSend_encodeFloat_forKey_(coder, v51, @"kCMDeviceMotionLiteCodingKeyGyroTemperature", v50);
  *&v52 = self->_compassTemperature;
  objc_msgSend_encodeFloat_forKey_(coder, v53, @"kCMDeviceMotionLiteCodingKeyCompassTemperature", v52);
  v54 = self->_rawMagneticField.x;
  *&v54 = v54;
  objc_msgSend_encodeFloat_forKey_(coder, v55, @"kCMDeviceMotionLiteCodingKeyRawMagneticFieldX", v54);
  v56 = self->_rawMagneticField.y;
  *&v56 = v56;
  objc_msgSend_encodeFloat_forKey_(coder, v57, @"kCMDeviceMotionLiteCodingKeyRawMagneticFieldY", v56);
  v59 = self->_rawMagneticField.z;
  *&v59 = v59;

  objc_msgSend_encodeFloat_forKey_(coder, v58, @"kCMDeviceMotionLiteCodingKeyRawMagneticFieldZ", v59);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMDeviceMotionLite;
  [(CMDeviceMotionLite *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v11 = objc_msgSend_init(v7, v8, v9);
  if (v11)
  {
    *(v11 + 24) = objc_msgSend_copyWithZone_(self->_attitude, v10, zone);
    z = self->_gravity.z;
    *(v11 + 48) = *&self->_gravity.x;
    *(v11 + 64) = z;
    v13 = *&self->_userAcceleration.x;
    *(v11 + 88) = self->_userAcceleration.z;
    *(v11 + 72) = v13;
    v14 = *&self->_rotationRate.x;
    *(v11 + 112) = self->_rotationRate.z;
    *(v11 + 96) = v14;
    v15 = *&self->_rawAcceleration.x;
    *(v11 + 136) = self->_rawAcceleration.z;
    *(v11 + 120) = v15;
    v16 = *&self->_rawRotationRate.x;
    *(v11 + 160) = self->_rawRotationRate.z;
    *(v11 + 144) = v16;
    *(v11 + 40) = self->_machTimestamp;
    *(v11 + 8) = self->_usingCompass;
    *(v11 + 32) = objc_msgSend_copyWithZone_(self->_physicalDeviceUniqueID, v17, zone);
    *(v11 + 12) = self->_gyroTemperature;
    *(v11 + 16) = self->_compassTemperature;
    v18 = *&self->_rawMagneticField.x;
    *(v11 + 184) = self->_rawMagneticField.z;
    *(v11 + 168) = v18;
  }

  return v11;
}

- (id)description
{
  usingCompass = self->_usingCompass;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  v10 = self->_userAcceleration.x;
  v11 = self->_userAcceleration.y;
  v12 = self->_userAcceleration.z;
  objc_msgSend_tip(self, v13, v14);
  v16 = v15;
  objc_msgSend_tilt(self, v17, v18);
  v22 = v21;
  if (usingCompass)
  {
    objc_msgSend_quaternion(self->_attitude, v19, v20);
    v45 = v23;
    objc_msgSend_quaternion(self->_attitude, v24, v25);
    v47 = x;
    v43 = v26;
    objc_msgSend_quaternion(self->_attitude, v27, v28);
    v46 = y;
    v30 = v29;
    objc_msgSend_quaternion(self->_attitude, v31, v32);
    v44 = z;
    v34 = v33;
    v42 = *&self->_rotationRate.x;
    v35 = v10;
    v36 = self->_rotationRate.z;
    v37 = sub_19B41E070(self->_machTimestamp);
    return objc_msgSend_stringWithFormat_(v4, v38, @"%@,Gravity,%f,%f,%f,UserAcceleration,%f,%f,%f,Tip,%f,Tilt,%f,Attitude,%f,%f,%f,%f,RotationRate,%f,%f,%f,MachTimestamp,%f,UsingCompass,%d,PhysicalDeviceUniqueID,%@", v6, *&v47, *&v46, *&v44, *&v35, *&v11, *&v12, *&v16, *&v22, v45, v43, v30, v34, v42, *&v36, *&v37, self->_usingCompass, self->_physicalDeviceUniqueID);
  }

  else
  {
    v40 = sub_19B41E070(self->_machTimestamp);
    return objc_msgSend_stringWithFormat_(v4, v41, @"%@,Gravity,%f,%f,%f,UserAcceleration,%f,%f,%f,Tip,%f,Tilt,%f,MachTimestamp,%f,UsingCompass,%d,PhysicalDeviceUniqueID,%@", v6, *&x, *&y, *&z, *&v10, *&v11, *&v12, *&v16, *&v22, *&v40, self->_usingCompass, self->_physicalDeviceUniqueID);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_usingCompass)
  {
    compassTemperature = self->_compassTemperature;
    v45 = *&self->_rawMagneticField.x;
    z = self->_rawMagneticField.z;
    v6 = sub_19B41E070(self->_machTimestamp);
    return objc_msgSend_stringWithFormat_(v3, v7, @"Magnesium,%f,%f,%f,%f,MachTimestamp,%f,PhysicalDeviceUniqueID,%@", *&compassTemperature, v45, *&z, *&v6, self->_physicalDeviceUniqueID);
  }

  else
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v13 = objc_msgSend_attitude(self, v11, v12);
    objc_msgSend_quaternion(v13, v14, v15);
    v17 = v16;
    v20 = objc_msgSend_attitude(self, v18, v19);
    objc_msgSend_quaternion(v20, v21, v22);
    v24 = v23;
    v27 = objc_msgSend_attitude(self, v25, v26);
    objc_msgSend_quaternion(v27, v28, v29);
    v31 = v30;
    v34 = objc_msgSend_attitude(self, v32, v33);
    objc_msgSend_quaternion(v34, v35, v36);
    v38 = v37;
    v44 = *&self->_rotationRate.z;
    v46 = *&self->_rotationRate.x;
    v43 = *&self->_rawAcceleration.y;
    v42 = *&self->_rawRotationRate.x;
    v39 = self->_rawRotationRate.z;
    v40 = sub_19B41E070(self->_machTimestamp);
    return objc_msgSend_stringWithFormat_(v3, v41, @"%@,Quaternion,%f,%f,%f,%f,RotationRate,%f,%f,%f, RawAcceleration,%f,%f,%f,RawRotationRate,%f,%f,%f,MachTimestamp,%f,UsingCompass,%d PhysicalDeviceUniqueID,%@", v10, v17, v24, v31, v38, v46, v44, v43, v42, *&v39, *&v40, self->_usingCompass, self->_physicalDeviceUniqueID);
  }
}

- (float)tip
{
  z = self->_gravity.z;
  v3 = -self->_gravity.y;
  if (fabs(z) <= 0.1)
  {
    return asin(v3);
  }

  else
  {
    return atan2(v3, -z);
  }
}

- (float)tilt
{
  z = self->_gravity.z;
  x = self->_gravity.x;
  if (fabs(z) <= 0.1)
  {
    return asin(x);
  }

  else
  {
    return atan2(x, -z);
  }
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

- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration
{
  x = self->_userAcceleration.x;
  y = self->_userAcceleration.y;
  z = self->_userAcceleration.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
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

- ($1AB5FA073B851C12C2339EC22442E995)rawAcceleration
{
  x = self->_rawAcceleration.x;
  y = self->_rawAcceleration.y;
  z = self->_rawAcceleration.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)rawRotationRate
{
  x = self->_rawRotationRate.x;
  y = self->_rawRotationRate.y;
  z = self->_rawRotationRate.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)rawMagneticField
{
  x = self->_rawMagneticField.x;
  y = self->_rawMagneticField.y;
  z = self->_rawMagneticField.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end