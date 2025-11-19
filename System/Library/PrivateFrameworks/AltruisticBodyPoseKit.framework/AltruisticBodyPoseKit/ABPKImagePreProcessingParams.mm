@interface ABPKImagePreProcessingParams
+ (double)convert2DPoint:(uint64_t)a3 toInputSpaceWithParams:(void *)a4;
- (ABPKImagePreProcessingParams)initWithType:(int)a3 inputResolution:(CGSize)a4 outputResolution:(CGSize)a5;
- (CGSize)inputResolution;
- (CGSize)outputResolution;
- (void)printData;
@end

@implementation ABPKImagePreProcessingParams

- (ABPKImagePreProcessingParams)initWithType:(int)a3 inputResolution:(CGSize)a4 outputResolution:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v15.receiver = self;
  v15.super_class = ABPKImagePreProcessingParams;
  v10 = [(ABPKImagePreProcessingParams *)&v15 init];
  if (v10)
  {
    if (a3 <= 2)
    {
      v11 = qword_23EE28150[a3];
      v12 = [objc_alloc(*off_278C71878[a3]) initWithInputResolution:v8 andOutputResolution:{v7, width, height}];
      v13 = *(&v10->super.isa + v11);
      *(&v10->super.isa + v11) = v12;
    }

    v10->_type = a3;
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
        v15 = [(ABPKPaddingParams *)self->_paddingParams height];
        v26 = 67109120;
        LODWORD(v27) = v15;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " /t height:       %u ", &v26, 8u);
      }

      v16 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(ABPKPaddingParams *)self->_paddingParams width];
        v26 = 67109120;
        LODWORD(v27) = v17;
        _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " /t width:        %u ", &v26, 8u);
      }

      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [(ABPKPaddingParams *)self->_paddingParams offsetHeight];
        v26 = 67109120;
        LODWORD(v27) = v19;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " /t offsetHeight: %u ", &v26, 8u);
      }

      v20 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      v21 = [(ABPKPaddingParams *)self->_paddingParams offsetWidth];
      v26 = 67109120;
      LODWORD(v27) = v21;
      v22 = " /t offsetWidth:  %u ";
      v23 = v20;
      v24 = 8;
      goto LABEL_27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (double)convert2DPoint:(uint64_t)a3 toInputSpaceWithParams:(void *)a4
{
  v5 = a4;
  if ([v5 type] != 2)
  {
    if ([v5 type])
    {
      if ([v5 type] == 1)
      {
        v20 = [v5 scalingParams];

        if (v20)
        {
          v21 = [v5 scalingParams];
          [v21 widthScale];
          v37 = v22;

          v11 = [v5 scalingParams];
          [v11 heightScale];
          __asm { FMOV            V2.2D, #1.0 }

          _D9 = vcvt_f32_f64(vmulq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(__PAIR64__(v23, v37))), vcvtq_f64_f32(a1)));
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
      v28 = [v5 cropParams];

      if (v28)
      {
        v29 = [v5 cropParams];
        v30 = [v29 width];
        [v5 outputResolution];
        *&v31 = v30 / v31;
        v38 = *&v31;

        v32 = [v5 cropParams];
        v33 = [v32 offsetWidth];

        v11 = [v5 cropParams];
        _D9 = vmla_n_f32(vcvt_f32_u32(__PAIR64__([v11 offsetHeight], v33)), a1, v38);
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

  v6 = [v5 paddingParams];

  if (!v6)
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

  v7 = [v5 paddingParams];
  v8 = [v7 offsetWidth];
  v9 = [v5 paddingParams];
  [v9 scale];
  v36 = v10;

  v11 = [v5 paddingParams];
  LODWORD(v9) = [v11 offsetHeight];
  v12 = [v5 paddingParams];
  [v12 scale];
  __asm { FMOV            V2.2D, #1.0 }

  _D9 = vcvt_f32_f64(vmulq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(__PAIR64__(v13, v36))), vcvtq_f64_f32(vsub_f32(a1, vcvt_f32_u32(__PAIR64__(v9, v8))))));

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