@interface CMDeviceMotion
- ($E2C29196C7A5C696474C6955C5A9CE06)magnetometerBiasEstimateVariance;
- (BOOL)isEqual:(id)equal;
- (CMAcceleration)gravity;
- (CMAcceleration)userAcceleration;
- (CMCalibratedMagneticField)magneticField;
- (CMDeviceMotion)initWithCoder:(id)coder;
- (CMDeviceMotion)initWithDeviceMotion:(id *)motion internal:(id)internal timestamp:(double)timestamp;
- (CMRotationRate)rotationRate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMDeviceMotion

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMDeviceMotion;
  [(CMLogItem *)&v3 dealloc];
}

- (CMAcceleration)gravity
{
  internal = self->_internal;
  v3 = internal[1];
  v4 = internal[2];
  v5 = internal[3];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CMDeviceMotion)initWithDeviceMotion:(id *)motion internal:(id)internal timestamp:(double)timestamp
{
  var2 = internal.var1.var2;
  var1 = internal.var1.var1;
  var0 = internal.var1.var0;
  v8 = internal.var0;
  v20.receiver = self;
  v20.super_class = CMDeviceMotion;
  v10 = [(CMLogItem *)&v20 initWithTimestamp:timestamp];
  if (v10)
  {
    v11 = [CMDeviceMotionInternal alloc];
    v12 = *&motion->var2.var1;
    v18[2] = *&motion->var1.var0;
    v18[3] = v12;
    v18[4] = *&motion->var3.var2;
    v19 = *&motion->var9;
    v13 = *&motion->var0.var2;
    v18[0] = *&motion->var0.var0;
    v18[1] = v13;
    *&v13 = var0;
    *&v14 = var1;
    *&v15 = var2;
    v10->_internal = objc_msgSend_initWithDeviceMotion_internal_(v11, v16, v18, COERCE_DOUBLE(__PAIR64__(DWORD1(v18[0]), LODWORD(v8))), *&v13, v14, v15);
  }

  return v10;
}

- (CMDeviceMotion)initWithCoder:(id)coder
{
  v101.receiver = self;
  v101.super_class = CMDeviceMotion;
  v4 = [(CMLogItem *)&v101 initWithCoder:?];
  if (v4)
  {
    v5 = objc_alloc_init(CMDeviceMotionInternal);
    v4->_internal = v5;
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMDeviceMotionCodingKeyQuaternionX");
    v82 = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCMDeviceMotionCodingKeyQuaternionY");
    v10 = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMDeviceMotionCodingKeyQuaternionZ");
    v13 = v12;
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCMDeviceMotionCodingKeyQuaternionW");
    v16 = v15;
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"kCMDeviceMotionCodingKeyUserAccelerationX");
    *&v18 = v18;
    v81 = LODWORD(v18);
    objc_msgSend_decodeDoubleForKey_(coder, v19, @"kCMDeviceMotionCodingKeyUserAccelerationY");
    *&v20 = v20;
    v80 = LODWORD(v20);
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"kCMDeviceMotionCodingKeyUserAccelerationZ");
    *&v22 = v22;
    v79 = LODWORD(v22);
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"kCMDeviceMotionCodingKeyRotationRateX");
    *&v24 = v24;
    v78 = LODWORD(v24);
    objc_msgSend_decodeDoubleForKey_(coder, v25, @"kCMDeviceMotionCodingKeyRotationRateY");
    *&v26 = v26;
    v77 = LODWORD(v26);
    objc_msgSend_decodeDoubleForKey_(coder, v27, @"kCMDeviceMotionCodingKeyRotationRateZ");
    *&v28 = v28;
    v76 = LODWORD(v28);
    objc_msgSend_decodeDoubleForKey_(coder, v29, @"kCMDeviceMotionCodingKeyMagneticFieldX");
    *&v30 = v30;
    v75 = LODWORD(v30);
    objc_msgSend_decodeDoubleForKey_(coder, v31, @"kCMDeviceMotionCodingKeyMagneticFieldY");
    *&v32 = v32;
    v74 = LODWORD(v32);
    objc_msgSend_decodeDoubleForKey_(coder, v33, @"kCMDeviceMotionCodingKeyMagneticFieldZ");
    *&v34 = v34;
    v73 = LODWORD(v34);
    v36 = objc_msgSend_decodeIntegerForKey_(coder, v35, @"kCMDeviceMotionCodingKeyMagneticFieldCalibrationLevel");
    v38 = objc_msgSend_decodeBoolForKey_(coder, v37, @"kCMDeviceMotionCodingKeyDoingYawCorrection");
    v40 = objc_msgSend_decodeBoolForKey_(coder, v39, @"kCMDeviceMotionCodingKeyDoingBiasEstimation");
    v42 = objc_msgSend_decodeBoolForKey_(coder, v41, @"kCMDeviceMotionCodingKeyIsInitialized");
    objc_msgSend_decodeDoubleForKey_(coder, v43, @"kCMDeviceMotionCodingKeyHeading");
    *&v44 = v44;
    v72 = LODWORD(v44);
    v46 = objc_msgSend_decodeBoolForKey_(coder, v45, @"kCMDeviceMotionCodingKeyFusedWithVision");
    v48 = objc_msgSend_decodeBoolForKey_(coder, v47, @"kCMDeviceMotionCodingKeyUsingVisionCorrections");
    v50 = objc_msgSend_decodeIntegerForKey_(coder, v49, @"kCMDeviceMotionCodingKeySensorLocation");
    objc_msgSend_decodeDoubleForKey_(coder, v51, @"kCMDeviceMotionCodingKeyHeadingAccuracy");
    v53 = v52;
    objc_msgSend_decodeDoubleForKey_(coder, v54, @"kCMDeviceMotionCodingKeyMagnetometerBiasEstimateVarianceX");
    v56 = v55;
    objc_msgSend_decodeDoubleForKey_(coder, v57, @"kCMDeviceMotionCodingKeyMagnetometerBiasEstimateVarianceY");
    v59 = v58;
    objc_msgSend_decodeDoubleForKey_(coder, v60, @"kCMDeviceMotionCodingKeyMagnetometerBiasEstimateVarianceZ");
    v62 = v61;
    v63 = [CMAttitude alloc];
    v5->fAttitude = objc_msgSend_initWithQuaternion_(v63, v64, v65, v16, v82, v10, v13);
    *v83 = v16;
    *&v83[1] = v82;
    *&v83[2] = v10;
    *&v83[3] = v13;
    v84 = v81;
    v85 = v80;
    v86 = v79;
    v87 = v78;
    v88 = v77;
    v89 = v76;
    v90 = v75;
    v91 = v74;
    v92 = v73;
    v93 = v36;
    v94 = v38;
    v95 = v40;
    v96 = v42;
    v97 = v72;
    v98 = v46;
    v99 = v48;
    v100 = v50;
    *&v66 = v53;
    *&v67 = v56;
    *&v68 = v59;
    *&v69 = v62;
    objc_msgSend_setDeviceMotion_internal_(v5, v70, v83, v66, v67, v68, v69);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v39.receiver = self;
  v39.super_class = CMDeviceMotion;
  [(CMLogItem *)&v39 encodeWithCoder:?];
  internal = self->_internal;
  objc_msgSend_quaternion(*(internal + 10), v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"kCMDeviceMotionCodingKeyQuaternionX");
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCMDeviceMotionCodingKeyQuaternionY", v9);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"kCMDeviceMotionCodingKeyQuaternionZ", v11);
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCMDeviceMotionCodingKeyQuaternionW", v13);
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"kCMDeviceMotionCodingKeyUserAccelerationX", *(internal + 4));
  objc_msgSend_encodeDouble_forKey_(coder, v19, @"kCMDeviceMotionCodingKeyUserAccelerationY", *(internal + 5));
  objc_msgSend_encodeDouble_forKey_(coder, v20, @"kCMDeviceMotionCodingKeyUserAccelerationZ", *(internal + 6));
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"kCMDeviceMotionCodingKeyRotationRateX", *(internal + 7));
  objc_msgSend_encodeDouble_forKey_(coder, v22, @"kCMDeviceMotionCodingKeyRotationRateY", *(internal + 8));
  objc_msgSend_encodeDouble_forKey_(coder, v23, @"kCMDeviceMotionCodingKeyRotationRateZ", *(internal + 9));
  objc_msgSend_encodeDouble_forKey_(coder, v24, @"kCMDeviceMotionCodingKeyMagneticFieldX", *(internal + 11));
  objc_msgSend_encodeDouble_forKey_(coder, v25, @"kCMDeviceMotionCodingKeyMagneticFieldY", *(internal + 12));
  objc_msgSend_encodeDouble_forKey_(coder, v26, @"kCMDeviceMotionCodingKeyMagneticFieldZ", *(internal + 13));
  objc_msgSend_encodeInteger_forKey_(coder, v27, internal[28], @"kCMDeviceMotionCodingKeyMagneticFieldCalibrationLevel");
  objc_msgSend_encodeBool_forKey_(coder, v28, *(internal + 116), @"kCMDeviceMotionCodingKeyDoingYawCorrection");
  objc_msgSend_encodeBool_forKey_(coder, v29, *(internal + 117), @"kCMDeviceMotionCodingKeyDoingBiasEstimation");
  objc_msgSend_encodeBool_forKey_(coder, v30, *(internal + 118), @"kCMDeviceMotionCodingKeyIsInitialized");
  objc_msgSend_encodeDouble_forKey_(coder, v31, @"kCMDeviceMotionCodingKeyHeading", *(internal + 30));
  objc_msgSend_encodeBool_forKey_(coder, v32, *(internal + 128), @"kCMDeviceMotionCodingKeyFusedWithVision");
  objc_msgSend_encodeBool_forKey_(coder, v33, *(internal + 129), @"kCMDeviceMotionCodingKeyUsingVisionCorrections");
  objc_msgSend_encodeDouble_forKey_(coder, v34, @"kCMDeviceMotionCodingKeyHeadingAccuracy", *(internal + 31));
  objc_msgSend_encodeInteger_forKey_(coder, v35, *(internal + 17), @"kCMDeviceMotionCodingKeySensorLocation");
  objc_msgSend_encodeDouble_forKey_(coder, v36, @"kCMDeviceMotionCodingKeyMagnetometerBiasEstimateVarianceX", *(internal + 36));
  objc_msgSend_encodeDouble_forKey_(coder, v37, @"kCMDeviceMotionCodingKeyMagnetometerBiasEstimateVarianceY", *(internal + 37));
  objc_msgSend_encodeDouble_forKey_(coder, v38, @"kCMDeviceMotionCodingKeyMagnetometerBiasEstimateVarianceZ", *(internal + 38));
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CMDeviceMotion;
  v6 = [(CMLogItem *)&v8 copyWithZone:?];
  if (v6)
  {
    v6[2] = objc_msgSend_copyWithZone_(self->_internal, v5, zone);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_msgSend_timestamp(self, v5, v6);
  v8 = v7;
  objc_msgSend_timestamp(equal, v9, v10);
  if (v8 != v12)
  {
    return 0;
  }

  internal = self->_internal;
  v14 = *(equal + 2);

  return objc_msgSend_isEqual_(internal, v11, v14);
}

- (id)description
{
  internal = self->_internal;
  v5 = MEMORY[0x1E696AEC0];
  objc_msgSend_quaternion(internal[10], a2, v2);
  v40 = v6;
  objc_msgSend_quaternion(internal[10], v7, v8);
  v39 = v9;
  objc_msgSend_quaternion(internal[10], v10, v11);
  v13 = v12;
  objc_msgSend_quaternion(internal[10], v14, v15);
  v17 = v16;
  v37 = *(internal + 3);
  v38 = *(internal + 2);
  v18 = internal[8];
  v19 = internal[9];
  objc_msgSend_magneticField(self, v20, v21);
  v22 = v45;
  objc_msgSend_magneticField(self, v23, v24);
  v25 = v44;
  objc_msgSend_magneticField(self, v26, v27);
  v28 = v43;
  objc_msgSend_magneticField(self, v29, v30);
  v31 = *(internal + 30);
  v32 = internal[17];
  v41.receiver = self;
  v41.super_class = CMDeviceMotion;
  v33 = v42;
  [(CMLogItem *)&v41 timestamp];
  return objc_msgSend_stringWithFormat_(v5, v34, @"QuaternionX %f QuaternionY %f QuaternionZ %f QuaternionW %f UserAccelX %f UserAccelY %f UserAccelZ %f RotationRateX %f RotationRateY %f RotationRateZ %f MagneticFieldX %f MagneticFieldY %f MagneticFieldZ %f MagneticFieldAccuracy %d Heading %f SensorLocation %d @ %f", v40, v39, v13, v17, v38, v37, v18, v19, v22, v25, v28, v33, *&v31, v32, v35);
}

- (CMRotationRate)rotationRate
{
  internal = self->_internal;
  v3 = internal[7];
  v4 = internal[8];
  v5 = internal[9];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CMAcceleration)userAcceleration
{
  internal = self->_internal;
  v3 = internal[4];
  v4 = internal[5];
  v5 = internal[6];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CMCalibratedMagneticField)magneticField
{
  z = self->field.z;
  *&retstr->field.x = *(*&z + 88);
  retstr->field.z = *(*&z + 104);
  v4 = *(*&z + 112) - 1;
  if (v4 > 5)
  {
    v5 = CMMagneticFieldCalibrationAccuracyUncalibrated;
  }

  else
  {
    v5 = dword_19B7B9408[v4];
  }

  retstr->accuracy = v5;
  return self;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)magnetometerBiasEstimateVariance
{
  internal = self->_internal;
  v3 = internal[36];
  v4 = internal[37];
  v5 = internal[38];
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

@end