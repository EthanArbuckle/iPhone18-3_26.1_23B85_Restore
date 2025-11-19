@interface CMDeviceMotionInternal
- (BOOL)isEqual:(id)a3;
- (CMDeviceMotionInternal)initWithDeviceMotion:(id *)a3 internal:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setDeviceMotion:(id *)a3 internal:(id)a4;
@end

@implementation CMDeviceMotionInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMDeviceMotionInternal;
  [(CMDeviceMotionInternal *)&v3 dealloc];
}

- (void)setDeviceMotion:(id *)a3 internal:(id)a4
{
  var2 = a4.var1.var2;
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v7 = a4.var0;
  objc_msgSend_setQuaternion_(self->fAttitude, a2, a3, a3->var0.var0, a3->var0.var1, a3->var0.var2, a3->var0.var3);
  self->fGravity.x = sub_19B420740(&a3->var0.var0);
  self->fGravity.y = v10;
  self->fGravity.z = v11;
  *&self->fRotationRate.y = vcvtq_f64_f32(*&a3->var2.var1);
  v12 = vcvtq_f64_f32(*&a3->var1.var2);
  *&self->fUserAcceleration.x = vcvtq_f64_f32(*&a3->var1.var0);
  *&self->fUserAcceleration.z = v12;
  var4 = a3->var4;
  self->fMagneticFieldCalibrationLevel = var4;
  if (var4)
  {
    *&self->fMagneticField.x = vcvtq_f64_f32(*&a3->var3.var0);
    self->fMagneticField.z = a3->var3.var2;
  }

  else
  {
    bzero(&self->fMagneticField, 0x18uLL);
  }

  self->fDoingYawCorrection = a3->var5;
  self->fDoingBiasEstimation = a3->var6;
  self->fIsInitialized = a3->var7;
  var8 = a3->var8;
  self->fFusedWithVision = a3->var9;
  self->fUsingVisionCorrections = a3->var10;
  self->fHeading = var8;
  self->fHeadingAccuracy = v7;
  self->fMagnetometerBiasEstimateVariance.x = var0;
  self->fMagnetometerBiasEstimateVariance.y = var1;
  self->fMagnetometerBiasEstimateVariance.z = var2;
  self->fSensorLocation = a3->var11;
}

- (CMDeviceMotionInternal)initWithDeviceMotion:(id *)a3 internal:(id)a4
{
  var2 = a4.var1.var2;
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v7 = a4.var0;
  v21.receiver = self;
  v21.super_class = CMDeviceMotionInternal;
  v9 = [(CMDeviceMotionInternal *)&v21 init];
  if (v9)
  {
    v10 = [CMAttitude alloc];
    v9->fAttitude = objc_msgSend_initWithQuaternion_(v10, v11, v12, a3->var0.var0, a3->var0.var1, a3->var0.var2, a3->var0.var3);
    v13 = *&a3->var2.var1;
    v19[2] = *&a3->var1.var0;
    v19[3] = v13;
    v19[4] = *&a3->var3.var2;
    v20 = *&a3->var9;
    v14 = *&a3->var0.var2;
    v19[0] = *&a3->var0.var0;
    v19[1] = v14;
    *&v14 = var0;
    *&v15 = var1;
    *&v16 = var2;
    objc_msgSend_setDeviceMotion_internal_(v9, v17, v19, COERCE_DOUBLE(__PAIR64__(DWORD1(v19[0]), LODWORD(v7))), *&v14, v15, v16);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (v10)
  {
    v13 = *&self->fGravity.x;
    *(v10 + 24) = self->fGravity.z;
    *(v10 + 8) = v13;
    v14 = *&self->fUserAcceleration.x;
    *(v10 + 48) = self->fUserAcceleration.z;
    *(v10 + 32) = v14;
    v15 = *&self->fRotationRate.x;
    *(v10 + 72) = self->fRotationRate.z;
    *(v10 + 56) = v15;
    *(v10 + 80) = objc_msgSend_copyWithZone_(self->fAttitude, v11, a3);
    v16 = *&self->fMagneticField.x;
    *(v12 + 104) = self->fMagneticField.z;
    *(v12 + 88) = v16;
    *(v12 + 112) = self->fMagneticFieldCalibrationLevel;
    *(v12 + 116) = self->fDoingYawCorrection;
    *(v12 + 117) = self->fDoingBiasEstimation;
    *(v12 + 120) = self->fHeading;
    *(v12 + 124) = self->fHeadingAccuracy;
    *(v12 + 128) = self->fFusedWithVision;
    *(v12 + 129) = self->fUsingVisionCorrections;
    *(v12 + 136) = self->fSensorLocation;
    v17 = *&self->fMagnetometerBiasEstimateVariance.x;
    *(v12 + 152) = self->fMagnetometerBiasEstimateVariance.z;
    *(v12 + 144) = v17;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(isEqual) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    isEqual = objc_msgSend_isEqual_(self->fAttitude, v5, *(a3 + 10));
    if (!isEqual)
    {
      return isEqual;
    }

    if (self->fUserAcceleration.x != *(a3 + 4) || self->fUserAcceleration.y != *(a3 + 5) || self->fUserAcceleration.z != *(a3 + 6) || self->fRotationRate.x != *(a3 + 7) || self->fRotationRate.y != *(a3 + 8) || self->fRotationRate.z != *(a3 + 9) || self->fMagneticField.x != *(a3 + 11) || self->fMagneticField.y != *(a3 + 12) || self->fMagneticField.z != *(a3 + 13) || self->fMagneticFieldCalibrationLevel != *(a3 + 28) || self->fHeading != *(a3 + 30) || self->fHeadingAccuracy != *(a3 + 31) || self->fSensorLocation != *(a3 + 17) || self->fMagnetometerBiasEstimateVariance.x != *(a3 + 36) || self->fMagnetometerBiasEstimateVariance.y != *(a3 + 37))
    {
LABEL_20:
      LOBYTE(isEqual) = 0;
      return isEqual;
    }

    LOBYTE(isEqual) = self->fMagnetometerBiasEstimateVariance.z == *(a3 + 38);
  }

  return isEqual;
}

@end