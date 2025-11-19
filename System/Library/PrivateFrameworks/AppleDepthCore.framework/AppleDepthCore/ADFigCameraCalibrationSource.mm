@interface ADFigCameraCalibrationSource
+ (CGRect)calcSensorCrop:(CGRect)a3 onImageWithDimensions:(CGSize)a4 metadataDictionary:(id)a5 negativeCropHandling:(int64_t)a6;
+ (__n128)getTransformFromStream:(void *)a3 toStream:(void *)a4 usingExtrinsicsDictionary:(void *)a5;
+ (double)figExtrinsicsToTransform:(void *)a3;
+ (double)getMidExposureTimestampFromMetadataDictionary:(id)a3;
+ (double)getMidExposureTimestampFromMetadataDictionary:(id)a3 timestamp:(double)a4;
+ (float)getAngularVelocityFromMetadataDictionary:(id)a3 deviceClock:(double)a4;
+ (void)getFrameTransformsFromMetadataDictionary:(id)a3 sensorCropRect:(CGRect *)a4 rawSensorSize:(CGSize *)a5 postReadCropRect:(CGRect *)a6;
- (BOOL)pointFromMetadataField:(id)a3 key:(id)a4 point:(CGPoint *)a5;
- (BOOL)rectFromMetadataField:(id)a3 key:(id)a4 rect:(CGRect *)a5;
- (BOOL)updateForFrame:(__CVBuffer *)a3;
- (BOOL)updateForFrameWithDimensions:(CGSize)a3 metadataDictionary:(id)a4;
- (uint64_t)initWithPixelSize:(double)a3 gdcModel:(double)a4 cameraToPlatformTransform:(double)a5;
@end

@implementation ADFigCameraCalibrationSource

- (BOOL)updateForFrame:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (CMCaptureLibraryCore() && getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc())
  {
    v8 = getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc();
    if (!v8)
    {
      dlerror();
      v13 = abort_report_np();

      _Unwind_Resume(v13);
    }

    v9 = *v8;
  }

  else
  {
    v9 = @"MetadataDictionary";
  }

  v10 = PixelBufferUtils::copyAttachment(a3, v9, 0, v7);
  v11 = [(ADFigCameraCalibrationSource *)self updateForFrameWithDimensions:v10 metadataDictionary:Width, Height];

  return v11;
}

- (BOOL)updateForFrameWithDimensions:(CGSize)a3 metadataDictionary:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc())
  {
    v8 = getkFigCaptureStreamMetadata_RawSensorWidth();
  }

  else
  {
    v8 = @"RawSensorWidth";
  }

  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 integerValue];

  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc())
  {
    v11 = getkFigCaptureStreamMetadata_RawSensorHeight();
  }

  else
  {
    v11 = @"RawSensorHeight";
  }

  v12 = [v7 objectForKeyedSubscript:v11];
  v13 = v10;
  v14 = [v12 integerValue];

  [(ADMutableCameraCalibration *)self->_camera setReferenceDimensions:v10, v14];
  *&v15 = self->_rawSensorPixelSize;
  [(ADMutableCameraCalibration *)self->_camera setPixelSize:v15];
  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc())
  {
    v16 = getkFigCaptureStreamMetadata_SensorCropRect();
  }

  else
  {
    v16 = @"SensorCropRect";
  }

  v17 = [v7 objectForKeyedSubscript:v16];

  if (v17)
  {
    v18 = *(MEMORY[0x277CBF398] + 16);
    v50 = *MEMORY[0x277CBF398];
    v51 = v18;
    if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc())
    {
      v19 = getkFigCaptureStreamMetadata_SensorCropRect();
    }

    else
    {
      v19 = @"SensorCropRect";
    }

    if (![(ADFigCameraCalibrationSource *)self rectFromMetadataField:v7 key:v19 rect:&v50])
    {
      goto LABEL_51;
    }

    [(ADMutableCameraCalibration *)self->_camera setReferenceDimensions:v51];
    if (![(ADMutableCameraCalibration *)self->_camera scale:v13, v14])
    {
      goto LABEL_51;
    }
  }

  else
  {
    [(ADMutableCameraCalibration *)self->_camera setReferenceDimensions:v13, v14];
  }

  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc())
  {
    v20 = getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc();
    if (!v20)
    {
      goto LABEL_64;
    }

    v21 = *v20;
  }

  else
  {
    v21 = @"PinholeCameraFocalLength";
  }

  v22 = [v7 objectForKeyedSubscript:v21];
  [v22 floatValue];
  v24 = v23;

  if (v24 != 0.0)
  {
    goto LABEL_35;
  }

  if (!CMCaptureLibraryCore() || !getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc())
  {
    v26 = @"PracticalFocalLength";
LABEL_33:
    v27 = [v7 objectForKeyedSubscript:v26];
    [v27 floatValue];
    v24 = v28;

    if (v24 < 1000.0)
    {
      v24 = v24 * 1000.0;
    }

LABEL_35:
    [(ADCameraCalibration *)self->_camera pixelSize];
    v30 = v29;
    if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc())
    {
      v31 = getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc();
      if (!v31)
      {
        goto LABEL_65;
      }

      v32 = *v31;
    }

    else
    {
      v32 = @"DistortionOpticalCenter";
    }

    if ([(ADFigCameraCalibrationSource *)self pointFromMetadataField:v7 key:v32 point:&v49])
    {
LABEL_47:
      *&v35 = v24 / 1000.0 / v30;
      LODWORD(v36) = 0;
      HIDWORD(v36) = v35;
      __asm { FMOV            V3.2S, #1.0 }

      [(ADMutableCameraCalibration *)self->_camera setIntrinsicMatrix:COERCE_DOUBLE(v35), v36, COERCE_DOUBLE(vcvt_f32_f64(v49))];
      [(ADDynamicPolynomialsLensDistortionModel *)self->_distortion setDynamicFactor:0.0];
      if (!CMCaptureLibraryCore() || !getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc())
      {
        v43 = @"DynamicDistortionFactor";
        goto LABEL_53;
      }

      v42 = getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc();
      if (v42)
      {
        v43 = *v42;
LABEL_53:
        v45 = [v7 objectForKeyedSubscript:v43];
        v46 = v45;
        if (v45)
        {
          [v45 floatValue];
          [(ADDynamicPolynomialsLensDistortionModel *)self->_distortion setDynamicFactor:?];
        }

        [(ADPolynomialsLensDistortionModel *)self->_distortion setDistortionCenter:*&v49];
        if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc())
        {
          v47 = getkFigCaptureStreamMetadata_TotalSensorCropRect();
        }

        else
        {
          v47 = @"TotalSensorCropRect";
        }

        if ([(ADFigCameraCalibrationSource *)self rectFromMetadataField:v7 key:v47 rect:&v50])
        {
          [(ADMutableCameraCalibration *)self->_camera crop:v50, v51];
          v44 = [(ADMutableCameraCalibration *)self->_camera scale:width, height];
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_63;
      }

      goto LABEL_65;
    }

    if (!CMCaptureLibraryCore() || !getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc())
    {
      v34 = @"OpticalCenter";
LABEL_46:
      if (![(ADFigCameraCalibrationSource *)self pointFromMetadataField:v7 key:v34 point:&v49])
      {
LABEL_51:
        v44 = 0;
LABEL_63:

        return v44;
      }

      goto LABEL_47;
    }

    v33 = getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc();
    if (v33)
    {
      v34 = *v33;
      goto LABEL_46;
    }

LABEL_65:
    dlerror();
    result = abort_report_np();
    goto LABEL_66;
  }

  v25 = getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc();
  if (v25)
  {
    v26 = *v25;
    goto LABEL_33;
  }

LABEL_64:
  dlerror();
  result = abort_report_np();
LABEL_66:
  __break(1u);
  return result;
}

- (BOOL)rectFromMetadataField:(id)a3 key:(id)a4 rect:(CGRect *)a5
{
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:v7];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_CannotFindDict.isa, v7);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v8, a5))
  {
    NSLog(&cfstr_InvalidDiction.isa, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)pointFromMetadataField:(id)a3 key:(id)a4 point:(CGPoint *)a5
{
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:v7];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_CannotFindDict.isa, v7);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!CGPointMakeWithDictionaryRepresentation(v8, a5))
  {
    NSLog(&cfstr_InvalidDiction.isa, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (uint64_t)initWithPixelSize:(double)a3 gdcModel:(double)a4 cameraToPlatformTransform:(double)a5
{
  v10 = a8;
  v36.receiver = a1;
  v36.super_class = ADFigCameraCalibrationSource;
  v11 = [(ADFigCameraCalibrationSource *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_22;
  }

  v11->_rawSensorPixelSize = a2;
  if (CMCaptureLibraryCore() && getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc())
  {
    v13 = getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc();
    if (!v13)
    {
      goto LABEL_31;
    }

    v14 = *v13;
  }

  else
  {
    v14 = @"BasePolynomial";
  }

  v15 = [v10 objectForKeyedSubscript:v14];
  v16 = v15;
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = MEMORY[0x277D86220];
      v20 = "GDC dictionary doesn't contain BasePolynomial key";
LABEL_17:
      _os_log_impl(&dword_240463000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    }

LABEL_29:

    v27 = 0;
    goto LABEL_30;
  }

  if ([v15 length] != 64)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = MEMORY[0x277D86220];
      v20 = "GDC dictionary BasePolynomial key is of wrong size";
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  if (!CMCaptureLibraryCore() || !getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc())
  {
    v18 = @"DynamicPolynomial";
LABEL_19:
    v21 = [v10 objectForKeyedSubscript:v18];
    v22 = v21;
    if (v21)
    {
      if ([v21 length] == 64)
      {
        v23 = -[ADDynamicPolynomialsLensDistortionModel initWithDistortionCenter:dynFactor:polynomialsBase:polynomialsDynamic:]([ADDynamicPolynomialsLensDistortionModel alloc], "initWithDistortionCenter:dynFactor:polynomialsBase:polynomialsDynamic:", [v16 bytes], objc_msgSend(v22, "bytes"), 0.0, 0.0, 0.0);
        distortion = v12->_distortion;
        v12->_distortion = v23;

        v25 = objc_alloc_init(ADMutableCameraCalibration);
        camera = v12->_camera;
        v12->_camera = v25;

        [(ADMutableCameraCalibration *)v12->_camera setCameraToPlatformTransform:a3, a4, a5, a6];
        [(ADMutableCameraCalibration *)v12->_camera setDistortionModel:v12->_distortion];

LABEL_22:
        v27 = v12;
LABEL_30:

        return v27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v28 = MEMORY[0x277D86220];
      v29 = "GDC dictionary DynamicPolynomial key is of wrong size";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        goto LABEL_29;
      }

      *buf = 0;
      v28 = MEMORY[0x277D86220];
      v29 = "GDC dictionary doesn't contain DynamicPolynomial key";
    }

    _os_log_impl(&dword_240463000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
    goto LABEL_28;
  }

  v17 = getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc();
  if (v17)
  {
    v18 = *v17;
    goto LABEL_19;
  }

LABEL_31:
  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

+ (CGRect)calcSensorCrop:(CGRect)a3 onImageWithDimensions:(CGSize)a4 metadataDictionary:(id)a5 negativeCropHandling:(int64_t)a6
{
  width = a4.width;
  height = a4.height;
  v30 = a3.size.width;
  v31 = a3.size.height;
  x = a3.origin.x;
  y = a3.origin.y;
  v69 = *MEMORY[0x277D85DE8];
  v7 = a5;
  [ADFigCameraCalibrationSource getFrameTransformsFromMetadataDictionary:v7 sensorCropRect:&v39 rawSensorSize:&v38 postReadCropRect:&v36];
  v8.f64[0] = x;
  v8.f64[1] = y;
  v26 = v36;
  v27 = v39;
  v9 = vdivq_f64(v38, v40);
  v10.f64[0] = width;
  v10.f64[1] = height;
  v25 = v37;
  v11 = vdivq_f64(v10, v37);
  v12 = vmulq_f64(vsubq_f64(vmulq_f64(vsubq_f64(v8, v39), v9), v36), v11);
  v13.f64[0] = v30;
  v13.f64[1] = v31;
  v14 = vmulq_f64(vmulq_f64(v13, v9), v11);
  v34 = v14.f64[0];
  v15 = v12.f64[1];
  v35 = v12.f64[0];
  v16 = v14.f64[1];
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(vaddq_f64(v12, v14), v10), vcltzq_f64(v12)))) & 1) != 0 && a6)
  {
    if (a6 == 2)
    {
      v17 = height / (v31 / v30);
      if (width < v17)
      {
        v17 = width;
      }

      v16 = v31 / v30 * v17;
      v34 = v17;
      v35 = (width - v17) * 0.5;
      v15 = (height - v16) * 0.5;
    }

    else
    {
      if (a6 != 1)
      {
        __assert_rtn("+[ADFigCameraCalibrationSource calcSensorCrop:onImageWithDimensions:metadataDictionary:negativeCropHandling:]", "ADFigCameraCalibrationSource.mm", 528, "false");
      }

      v15 = *(MEMORY[0x277CBF398] + 8);
      v16 = *(MEMORY[0x277CBF398] + 24);
      v34 = *(MEMORY[0x277CBF398] + 16);
      v35 = *MEMORY[0x277CBF398];
    }
  }

  v23 = v38;
  v24 = v40;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v22 = vdivq_f64(v24, v23);
    *buf = 134221312;
    v42 = x;
    v43 = 2048;
    v44 = y;
    v45 = 2048;
    v46 = v30;
    v47 = 2048;
    v48 = v31;
    v49 = 2048;
    v50 = width;
    v51 = 2048;
    v52 = height;
    v53 = 2048;
    v54 = v27.f64[0] + (v26.f64[0] + v25.f64[0] / width * 0.0) * v22.f64[0];
    v55 = 2048;
    v56 = v27.f64[1] + vmuld_lane_f64(v26.f64[1] + v25.f64[1] / height * 0.0, v22, 1);
    v57 = 2048;
    v58 = width * (v25.f64[0] / width) * v22.f64[0];
    v59 = 2048;
    v60 = vmuld_lane_f64(height * (v25.f64[1] / height), v22, 1);
    v61 = 2048;
    v62 = v27.f64[0] + (v26.f64[0] + v35 * (v25.f64[0] / width)) * v22.f64[0];
    v63 = 2048;
    v64 = v27.f64[1] + vmuld_lane_f64(v26.f64[1] + v15 * (v25.f64[1] / height), v22, 1);
    v65 = 2048;
    v66 = v34 * (v25.f64[0] / width) * v22.f64[0];
    v67 = 2048;
    v68 = vmuld_lane_f64(v16 * (v25.f64[1] / height), v22, 1);
    _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[ADFigCameraCalibrationSource] Translate a crop of (%.2f, %.2f, %.2f, %.2f) on image with dimensions (%.2f, %.2f): Total crop made originally: (%.2f, %.2f, %.2f, %.2f), Final crop to use: (%.2f, %.2f, %.2f, %.2f)", buf, 0x8Eu);
  }

  v19 = v34;
  v18 = v35;
  v20 = v15;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

+ (float)getAngularVelocityFromMetadataDictionary:(id)a3 deviceClock:(double)a4
{
  v7 = a3;
  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc())
  {
    v8 = getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc();
    if (!v8)
    {
      dlerror();
      abort_report_np();
      __break(1u);
      return result;
    }

    v9 = *v8;
  }

  else
  {
    v9 = @"ISPMotionData";
  }

  v10 = [v7 objectForKeyedSubscript:v9];
  v11 = [v10 bytes];
  v14 = NAN;
  if (v10 && v11)
  {
    v15 = *(v11 + 4);
    if (v15 < 1)
    {
      goto LABEL_19;
    }

    v16 = 0;
    v17 = (v11 + 16);
    v18 = 1;
    v19 = 0.0;
    v59 = vdupq_n_s64(0x3E10000000000000uLL);
    v20 = vdupq_n_s64(0x4066800000000000uLL);
    v63 = v20;
    v20.i64[0] = 0x4066800000000000;
    v62 = v20;
    v20.i64[0] = 0x400921FB54442D18;
    v58 = v20;
    v21 = vdupq_n_s64(0x400921FB54442D18uLL);
    v22 = vnegq_f64(0);
    v56 = v22;
    v57 = v21;
    v23 = 0.0;
    v24 = 0.0;
    do
    {
      v25 = v4;
      v60 = v21;
      v61 = v22;
      v26 = *v17;
      v27 = *(v17 + 6);
      v28.i64[0] = v27;
      v28.i64[1] = SHIDWORD(v27);
      _Q1 = vmulq_f64(vcvtq_f64_s64(v28), v59);
      v30 = *(v17 - 1);
      _D3 = _Q1.f64[1];
      v32 = vmuld_lane_f64(_Q1.f64[0], _Q1, 1);
      v33 = *(v17 + 2);
      v28.i64[0] = v33;
      v28.i64[1] = SHIDWORD(v33);
      _Q5 = vmulq_f64(vcvtq_f64_s64(v28), v59);
      _D6 = _Q5.f64[1];
      __asm { FMLA            D7, D3, V1.D[1] }

      v41.f64[0] = vmuld_lane_f64(_Q5.f64[1], _Q1, 1);
      *_Q18.i64 = -(v41.f64[0] - _Q5.f64[0] * _Q1.f64[0]) - (v41.f64[0] - _Q5.f64[0] * _Q1.f64[0]);
      *(&_Q7 + 1) = v32 + _Q5.f64[0] * _Q5.f64[1] + v32 + _Q5.f64[0] * _Q5.f64[1];
      *&v42 = -(v32 - _Q5.f64[0] * _Q5.f64[1]) - (v32 - _Q5.f64[0] * _Q5.f64[1]);
      __asm
      {
        FMLA            D2, D6, V5.D[1]
        FMLA            D2, D3, V1.D[1]
      }

      v12.f64[0] = vmuld_lane_f64(_Q5.f64[0], _Q1, 1);
      v12.f64[0] = v12.f64[0] + _Q5.f64[1] * _Q1.f64[0] + v12.f64[0] + _Q5.f64[1] * _Q1.f64[0];
      *(&v42 + 1) = _D2 - _Q5.f64[0] * _Q5.f64[0];
      v41.f64[1] = -(_Q5.f64[0] * _Q1.f64[1]);
      v45 = vmlaq_n_f64(v41, _Q5, _Q1.f64[0]);
      v65[0] = _Q7;
      v65[1] = _Q18;
      __asm { FMLS            D1, D6, V5.D[1] }

      v65[2] = v42;
      v65[3] = v12;
      v65[4] = vaddq_f64(v45, v45);
      v65[5] = _Q1;
      v4 = v30;
      ADCommonUtils::calcRotationAngle(v65, v64);
      v21 = vdivq_f64(vmulq_f64(v64[1], v62), v58);
      v22 = vdivq_f64(vmulq_f64(v64[0], v63), v57);
      if ((v18 & 1) == 0 && (v26 - 1) <= 1u && v5 != 0.0)
      {
        v46.f64[0] = (v4 - v25) / a4;
        *&v47.f64[0] = v22.i64[0];
        *&v47.f64[1] = vextq_s8(v22, v22, 8uLL).u64[0];
        v48 = vsubq_f64(v47, v61);
        v49 = vsubq_f64(v21, v60);
        v50 = vabdq_f64(v47, v61);
        __asm { FMOV            V18.2D, #1.0 }

        v51 = vorrq_s8(vandq_s8(v49, v56), _Q18);
        v12 = vandq_s8(vorrq_s8(vandq_s8(v48, v56), _Q18), vorrq_s8(vcltzq_f64(v48), vcgtzq_f64(v48)));
        _Q18.i64[1] = 0;
        v52 = vnegq_f64(vmulq_f64(vsubq_f64(vdupq_n_s64(0x4076800000000000uLL), v50), v12));
        *&v53 = *&vnegq_f64(vmulq_f64(vsubq_f64(v62, vabdq_f64(v21, v60)), vbslq_s8(vorrq_s8(vcltzq_f64(v49), vcgtzq_f64(v49)), v51, 0)));
        if (fabs(v49.f64[0]) > 90.0)
        {
          v49.f64[0] = v53;
        }

        v54 = vdivq_f64(vbslq_s8(vcgtq_f64(v50, v63), v52, v48), vdupq_lane_s64(*&v46.f64[0], 0));
        v19 = v19 + v54.f64[0];
        v23 = v23 + v54.f64[1];
        v24 = v24 + vdivq_f64(v49, v46).f64[0];
        ++v16;
      }

      v18 = 0;
      v5 = v26;
      v17 += 20;
      --v15;
    }

    while (v15);
    if (v16 <= 0)
    {
LABEL_19:
      v14 = NAN;
    }

    else
    {
      v14 = sqrt(v24 / v16 * (v24 / v16) + v23 / v16 * (v23 / v16) + v19 / v16 * (v19 / v16));
    }
  }

  return v14;
}

+ (double)getMidExposureTimestampFromMetadataDictionary:(id)a3
{
  v3 = a3;
  if (!CMCaptureLibraryCore() || !getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc())
  {
    v5 = @"_OriginalPresentationTimeStamp";
    goto LABEL_6;
  }

  v4 = getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc();
  if (v4)
  {
    v5 = *v4;
LABEL_6:
    v6 = [v3 objectForKeyedSubscript:v5];
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeFromDictionary(&v11, v6);
    time = v11;
    [ADFigCameraCalibrationSource getMidExposureTimestampFromMetadataDictionary:v3 timestamp:CMTimeGetSeconds(&time)];
    v8 = v7;

    return v8;
  }

  dlerror();
  abort_report_np();
  __break(1u);
  return result;
}

+ (double)getMidExposureTimestampFromMetadataDictionary:(id)a3 timestamp:(double)a4
{
  v5 = a3;
  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc())
  {
    v6 = getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc();
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = *v6;
  }

  else
  {
    v7 = @"RollingShutterSkew";
  }

  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 intValue];

  if (!CMCaptureLibraryCore() || !getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc())
  {
    v11 = @"ExposureTime";
    goto LABEL_11;
  }

  v10 = getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc();
  if (v10)
  {
    v11 = *v10;
LABEL_11:
    v12 = [v5 objectForKeyedSubscript:v11];
    [v12 doubleValue];
    v14 = v13;

    return a4 + (v9 / 1000000.0 - v14) * 0.5;
  }

LABEL_12:
  dlerror();
  abort_report_np();
  __break(1u);
  return result;
}

+ (void)getFrameTransformsFromMetadataDictionary:(id)a3 sensorCropRect:(CGRect *)a4 rawSensorSize:(CGSize *)a5 postReadCropRect:(CGRect *)a6
{
  v19 = a3;
  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc())
  {
    v9 = getkFigCaptureStreamMetadata_RawSensorWidth();
  }

  else
  {
    v9 = @"RawSensorWidth";
  }

  v10 = [v19 objectForKeyedSubscript:v9];
  a5->width = [v10 intValue];

  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc())
  {
    v11 = getkFigCaptureStreamMetadata_RawSensorHeight();
  }

  else
  {
    v11 = @"RawSensorHeight";
  }

  v12 = [v19 objectForKeyedSubscript:v11];
  a5->height = [v12 intValue];

  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc())
  {
    v13 = getkFigCaptureStreamMetadata_SensorCropRect();
  }

  else
  {
    v13 = @"SensorCropRect";
  }

  v14 = [v19 objectForKeyedSubscript:v13];

  if (v14)
  {
    if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc())
    {
      v15 = getkFigCaptureStreamMetadata_SensorCropRect();
    }

    else
    {
      v15 = @"SensorCropRect";
    }

    v16 = [v19 objectForKeyedSubscript:v15];
    CGRectMakeWithDictionaryRepresentation(v16, a4);
  }

  else
  {
    a4->origin.x = 0.0;
    a4->origin.y = 0.0;
    a4->size = *a5;
  }

  if (CMCaptureLibraryCore() && getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc())
  {
    v17 = getkFigCaptureStreamMetadata_TotalSensorCropRect();
  }

  else
  {
    v17 = @"TotalSensorCropRect";
  }

  v18 = [v19 objectForKeyedSubscript:v17];
  CGRectMakeWithDictionaryRepresentation(v18, a6);
}

+ (__n128)getTransformFromStream:(void *)a3 toStream:(void *)a4 usingExtrinsicsDictionary:(void *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!v11)
  {
    v13 = [v9 objectForKeyedSubscript:v7];
    v14 = [v13 objectForKeyedSubscript:v8];

    if (v14)
    {
      [ADFigCameraCalibrationSource figExtrinsicsToTransform:v14];
      v17 = vzip1q_s32(v15, v16);
      v17.i32[2] = v18;
      v49 = v17;
LABEL_13:

      goto LABEL_14;
    }

    v19 = [v9 objectForKeyedSubscript:v7];
    v20 = [v19 allKeys];

    if ([v20 count] == 1)
    {
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v9 objectForKeyedSubscript:v7];
      v23 = [v22 objectForKeyedSubscript:v21];

      v24 = [v9 objectForKeyedSubscript:v8];
      v25 = [v24 objectForKeyedSubscript:v21];

      if (v23 && v25)
      {
        [ADFigCameraCalibrationSource figExtrinsicsToTransform:v23];
        v47 = v27;
        v48 = v26;
        v46 = v28;
        v50 = v29;
        v30 = [ADFigCameraCalibrationSource figExtrinsicsToTransform:v25];
        v31 = vzip1q_s32(v48, v47);
        v57.columns[0] = vzip1q_s32(v31, v46);
        v32 = vtrn2q_s32(v48, v46);
        v32.i32[2] = v47.i32[1];
        v57.columns[2] = vzip1q_s32(vzip2q_s32(v48, v47), vdupq_laneq_s32(v46, 2));
        v35 = vzip1q_s32(v33, v34);
        v37 = vtrn2q_s32(v33, v36);
        v37.i32[2] = v34.i32[1];
        v38 = vzip2q_s32(v33, v34);
        v56.columns[0] = vzip1q_s32(v35, v36);
        v56.columns[2] = vzip1q_s32(v38, vdupq_laneq_s32(v36, 2));
        v40 = vmlaq_lane_f32(vmulq_n_f32(v56.columns[0], v39.f32[0]), v37, *v39.f32, 1);
        v56.columns[0].i32[3] = 0;
        v56.columns[1] = vzip2q_s32(v35, vdupq_lane_s32(*v36.i8, 1));
        v56.columns[1].i32[3] = 0;
        v41 = vmlaq_laneq_f32(v40, v56.columns[2], v39, 2);
        v56.columns[2].i32[3] = 0;
        v56.columns[3] = vnegq_f32(v41);
        v56.columns[3].i32[3] = 0;
        v42 = vmlaq_lane_f32(vmulq_n_f32(v57.columns[0], v50.f32[0]), v32, *v50.f32, 1);
        v57.columns[0].i32[3] = 0;
        v57.columns[1] = vzip2q_s32(v31, vdupq_lane_s32(*v46.i8, 1));
        v57.columns[1].i32[3] = 0;
        v43 = vmlaq_laneq_f32(v42, v57.columns[2], v50, 2);
        v57.columns[2].i32[3] = 0;
        v57.columns[3] = vnegq_f32(v43);
        v57.columns[3].i32[3] = 0;
        *v44.i64 = ADCommonUtils::computeTransform(v30, v56, v57);
        v49 = v44;

LABEL_12:
        goto LABEL_13;
      }
    }

    v49 = 0u;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v52 = v7;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not calculate transform from %@ to %@ out of Fig extrinsics dictionary", buf, 0x16u);
    }

    goto LABEL_12;
  }

  [ADFigCameraCalibrationSource figExtrinsicsToTransform:v11];
  v49 = v12;
LABEL_14:

  return v49;
}

+ (double)figExtrinsicsToTransform:(void *)a3
{
  v3 = [a3 bytes];
  v4 = 0;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = vzip1q_s32(*v3, v6);
  v8 = vzip2q_s32(*v3, v6);
  v9 = vzip2q_s32(v5, 0);
  v10 = vzip1q_s32(v7, v5);
  v11 = vzip1q_s32(v8, v9);
  v12 = vzip2q_s32(v7, vdupq_lane_s32(*v5.i8, 1));
  v10.i32[3] = 0;
  v12.i32[3] = 0;
  v13 = vzip2q_s32(v8, v9);
  v11.i32[3] = 0;
  v13.i32[3] = 1.0;
  v17 = *MEMORY[0x277D860B8];
  v16 = *(MEMORY[0x277D860B8] + 16);
  v14 = *(MEMORY[0x277D860B8] + 32);
  v15 = *(MEMORY[0x277D860B8] + 48);
  v16.i32[1] = -1.0;
  v17.i32[0] = -1.0;
  v24 = v10;
  v25 = v12;
  v26 = v11;
  v27 = v13;
  do
  {
    v28[v4 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v24 + v4))), v16, *&v24.i8[v4], 1), v14, *(&v24 + v4), 2), v15, *(&v24 + v4), 3);
    v4 += 16;
  }

  while (v4 != 64);
  v18 = 0;
  v19 = v28[0];
  v20 = v28[1];
  v21 = v28[2];
  v22 = v28[3];
  v24 = v17;
  v25 = v16;
  v26 = v14;
  v27 = v15;
  do
  {
    v28[v18 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v24 + v18))), v20, *&v24.i8[v18], 1), v21, *(&v24 + v18), 2), v22, *(&v24 + v18), 3);
    v18 += 16;
  }

  while (v18 != 64);
  return *v28;
}

@end