@interface ABPKImagePreProcessingParams
+ (double)convert2DPoint:(uint64_t)point toInputSpaceWithParams:(void *)params;
- (ABPKImagePreProcessingParams)initWithType:(int)type inputResolution:(CGSize)resolution outputResolution:(CGSize)outputResolution;
- (CGSize)inputResolution;
- (CGSize)outputResolution;
- (void)printData;
@end

@implementation ABPKImagePreProcessingParams

- (ABPKImagePreProcessingParams)initWithType:(int)type inputResolution:(CGSize)resolution outputResolution:(CGSize)outputResolution
{
  height = outputResolution.height;
  width = outputResolution.width;
  v7 = resolution.height;
  v8 = resolution.width;
  v15.receiver = self;
  v15.super_class = ABPKImagePreProcessingParams;
  v10 = [(ABPKImagePreProcessingParams *)&v15 init];
  if (v10)
  {
    if (type <= 2)
    {
      v11 = qword_23EE28150[type];
      v12 = [objc_alloc(*off_278C71878[type]) initWithInputResolution:v8 andOutputResolution:{v7, width, height}];
      v13 = *(&v10->super.isa + v11);
      *(&v10->super.isa + v11) = v12;
    }

    v10->_type = type;
    v10->_inputResolution.width = v8;
    v10->_inputResolution.height = v7;
    v10->_outputResolution.width = width;
    v10->_outputResolution.height = height;
  }

  return v10;
}

- (void)printData
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    width = self->_inputResolution.width;
    height = self->_inputResolution.height;
    v26 = 134218240;
    v27 = width;
    v28 = 2048;
    v29 = height;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " Input Resolution: (%f,%f) ", &v26, 0x16u);
  }

  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_outputResolution.width;
    v8 = self->_outputResolution.height;
    v26 = 134218240;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " Output Resolution: (%f,%f) ", &v26, 0x16u);
  }

  type = self->_type;
  switch(type)
  {
    case 0:
      v20 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v26) = 0;
        v22 = "  ";
        goto LABEL_26;
      }

LABEL_28:

      break;
    case 1:
      v20 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v26) = 0;
        v22 = "  ";
LABEL_26:
        v23 = v20;
        v24 = 2;
LABEL_27:
        _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, v22, &v26, v24);
        goto LABEL_28;
      }

      goto LABEL_28;
    case 2:
      v10 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " Type: ScalingPadding ", &v26, 2u);
      }

      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " Padding Parameters: ", &v26, 2u);
      }

      v12 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ABPKPaddingParams *)self->_paddingParams scale];
        v26 = 134217984;
        v27 = v13;
        _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " /t scale:        %f ", &v26, 0xCu);
      }

      v14 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        height = [(ABPKPaddingParams *)self->_paddingParams height];
        v26 = 67109120;
        LODWORD(v27) = height;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " /t height:       %u ", &v26, 8u);
      }

      v16 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        width = [(ABPKPaddingParams *)self->_paddingParams width];
        v26 = 67109120;
        LODWORD(v27) = width;
        _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " /t width:        %u ", &v26, 8u);
      }

      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        offsetHeight = [(ABPKPaddingParams *)self->_paddingParams offsetHeight];
        v26 = 67109120;
        LODWORD(v27) = offsetHeight;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " /t offsetHeight: %u ", &v26, 8u);
      }

      v20 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      offsetWidth = [(ABPKPaddingParams *)self->_paddingParams offsetWidth];
      v26 = 67109120;
      LODWORD(v27) = offsetWidth;
      v22 = " /t offsetWidth:  %u ";
      v23 = v20;
      v24 = 8;
      goto LABEL_27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (double)convert2DPoint:(uint64_t)point toInputSpaceWithParams:(void *)params
{
  paramsCopy = params;
  if ([paramsCopy type] != 2)
  {
    if ([paramsCopy type])
    {
      if ([paramsCopy type] == 1)
      {
        scalingParams = [paramsCopy scalingParams];

        if (scalingParams)
        {
          scalingParams2 = [paramsCopy scalingParams];
          [scalingParams2 widthScale];
          v37 = v22;

          scalingParams3 = [paramsCopy scalingParams];
          [scalingParams3 heightScale];
          __asm { FMOV            V2.2D, #1.0 }

          _D9 = vcvt_f32_f64(vmulq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(__PAIR64__(v23, v37))), vcvtq_f64_f32(self)));
          goto LABEL_12;
        }

        v34 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_ERROR, " Scaling Parameters not specified ", buf, 2u);
        }
      }

      v25 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        v26 = " Invalid Image Pre-Processing type specified ";
        v27 = v39;
        goto LABEL_20;
      }
    }

    else
    {
      cropParams = [paramsCopy cropParams];

      if (cropParams)
      {
        cropParams2 = [paramsCopy cropParams];
        width = [cropParams2 width];
        [paramsCopy outputResolution];
        *&v31 = width / v31;
        v38 = *&v31;

        cropParams3 = [paramsCopy cropParams];
        offsetWidth = [cropParams3 offsetWidth];

        scalingParams3 = [paramsCopy cropParams];
        _D9 = vmla_n_f32(vcvt_f32_u32(__PAIR64__([scalingParams3 offsetHeight], offsetWidth)), self, v38);
        goto LABEL_12;
      }

      v25 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v41 = 0;
        v26 = " Crop Parameters not specified ";
        v27 = &v41;
        goto LABEL_20;
      }
    }

LABEL_21:

    __asm { FMOV            V9.2S, #-1.0 }

    goto LABEL_22;
  }

  paddingParams = [paramsCopy paddingParams];

  if (!paddingParams)
  {
    v25 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v42 = 0;
      v26 = " Padding Parameters not specified ";
      v27 = &v42;
LABEL_20:
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  paddingParams2 = [paramsCopy paddingParams];
  offsetWidth2 = [paddingParams2 offsetWidth];
  paddingParams3 = [paramsCopy paddingParams];
  [paddingParams3 scale];
  v36 = v10;

  scalingParams3 = [paramsCopy paddingParams];
  LODWORD(paddingParams3) = [scalingParams3 offsetHeight];
  paddingParams4 = [paramsCopy paddingParams];
  [paddingParams4 scale];
  __asm { FMOV            V2.2D, #1.0 }

  _D9 = vcvt_f32_f64(vmulq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(__PAIR64__(v13, v36))), vcvtq_f64_f32(vsub_f32(self, vcvt_f32_u32(__PAIR64__(paddingParams3, offsetWidth2))))));

LABEL_12:
LABEL_22:

  return *&_D9;
}

- (CGSize)inputResolution
{
  width = self->_inputResolution.width;
  height = self->_inputResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)outputResolution
{
  width = self->_outputResolution.width;
  height = self->_outputResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end