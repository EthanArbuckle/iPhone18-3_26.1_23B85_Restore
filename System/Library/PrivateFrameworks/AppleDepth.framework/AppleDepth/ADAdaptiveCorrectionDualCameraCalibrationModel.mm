@interface ADAdaptiveCorrectionDualCameraCalibrationModel
- (CGPoint)opticalCenterAux;
- (CGPoint)opticalCenterRef;
- (__n128)setRefToAuxExtrinsic:(__n128)extrinsic;
- (int64_t)computeStereoRectificationHomographiesMappingRectTeleToTele:(id *)tele rectTeleToWide:(id *)wide teleToRectTele:(id *)rectTele;
@end

@implementation ADAdaptiveCorrectionDualCameraCalibrationModel

- (__n128)setRefToAuxExtrinsic:(__n128)extrinsic
{
  result[3] = a2;
  result[4] = extrinsic;
  result[5] = a4;
  result[6] = a5;
  return result;
}

- (CGPoint)opticalCenterAux
{
  x = self->_opticalCenterAux.x;
  y = self->_opticalCenterAux.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)opticalCenterRef
{
  x = self->_opticalCenterRef.x;
  y = self->_opticalCenterRef.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int64_t)computeStereoRectificationHomographiesMappingRectTeleToTele:(id *)tele rectTeleToWide:(id *)wide teleToRectTele:(id *)rectTele
{
  if (tele && wide && rectTele)
  {
    x = self->_opticalCenterRef.x;
    *buf = vcvtq_f64_f32(*&self->_focalLengthPixRef);
    v20 = x;
    v21 = vextq_s8(*&self->_opticalCenterRef.y, *&self->_opticalCenterRef.y, 8uLL);
    y = self->_opticalCenterAux.y;
    v6 = *&self[1].super.isa;
    opticalCenterRef = self[1]._opticalCenterRef;
    v8 = vcvtq_f64_f32(vzip1_s32(*v6.i8, *&opticalCenterRef.x));
    v9 = vcvtq_f64_f32(vzip2_s32(*v6.i8, *&opticalCenterRef.x));
    *v6.i8 = vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(opticalCenterRef, opticalCenterRef, 8uLL));
    opticalCenterAux = self[1]._opticalCenterAux;
    v11 = *&self[2].super.isa;
    v23 = v8;
    v24 = vcvtq_f64_f32(vzip1_s32(*&opticalCenterAux.x, *v11.i8));
    v25 = v9;
    v26 = vcvtq_f64_f32(vzip2_s32(*&opticalCenterAux.x, *v11.i8));
    v12 = vextq_s8(v11, v11, 8uLL);
    v27 = vcvtq_f64_f32(*v6.i8);
    v28 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(opticalCenterAux, opticalCenterAux, 8uLL), *v12.f32));
    v13 = AdaptiveCorrection_computeStereoRectificationHomographies(buf, tele, wide, rectTele, v27, v28.f64[0], v12);
    result = [ADUtils ADReturnFromOSStatus:v14, v13];
    if (result)
    {
      v16 = result;
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      result = v16;
      if (v17)
      {
        *v18 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed compute Stereo Rectification Homographies", v18, 2u);
        return v16;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Null argument for computeStereoRectificationHomographiesMappingRectTeleToTele", buf, 2u);
    }

    return -22953;
  }

  return result;
}

@end