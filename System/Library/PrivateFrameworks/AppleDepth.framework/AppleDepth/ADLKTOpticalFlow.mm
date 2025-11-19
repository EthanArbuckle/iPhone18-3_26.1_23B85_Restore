@interface ADLKTOpticalFlow
+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)defaultConfig;
+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)highPerformanceConfig;
+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)highQualityConfig;
+ (CGSize)getNextPyramidLevelSize:(CGSize)a3;
- ($41DCF25500D59F4991CE6CEF6FDF028F)_prepareLKTGPUUniforms:(id)retstr out_uv_tex:coeff:stride:computeConfidenceComponents:;
- (ADLKTOpticalFlow)initWithDevice:(id)a3 inputSize:(CGSize)a4 config:(id *)a5;
- (ADLKTOpticalFlow)initWithDevice:(id)a3 inputSize:(CGSize)a4 config:(id *)a5 confidenceParameters:(id)a6;
- (ADLKTOpticalFlow)initWithDevice:(id)a3 inputSize:(CGSize)a4 scales:(unint64_t)a5;
- (BOOL)_createImagePyramidWithCommandBuffer:(id)a3 cropSizeRatio:(id)a4 inOutPyramidsArray:(id)a5 outMeanIntensityAtCoarsestScale:(id *)a6 error:;
- (BOOL)_createImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4 cropSizeRatio:(id)a5 outPyramidsArray:(id)a6 outMeanIntensityAtCoarsestScale:(id *)a7 error:;
- (BOOL)_setupBufferAndReturnErrorWithDevice:(id)a3 error:(id *)a4;
- (int)_computeConfidence:(id)a3 shiftMap:(id)a4 outConfidenceMap:(id)a5 cropSizeRatio:;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 cropSizeRatio:(id)a4 in_tex:(id)a5 out_tex:;
- (int)_computeFeaturesWithCommandBuffer:(id)a3 cropSizeRatio:(id)a4 in_tex:(id)a5 out_tex:;
- (int)_doSolverWithCommandBuffer:(id)a3 currentFeatures:(id)a4 currentDerivitive:(id)a5 previousFeatures:(id)a6 previousDerivitive:(id)a7 in_uv_tex:(id)a8 out_uv_tex:(id)a9 out_w_tex:(id)a10 uniforms:(id *)a11 cropSizeRatio:;
- (int)_downscale2XWithCommandBuffer:(ADLKTOpticalFlow *)self in_tex:(SEL)a2 out_tex:(id)a3 scaling_factor:(id)a4 cropSizeRatio:(id)a5 outMeanIntensity:(id)a6;
- (int64_t)encodeOpticalFlowSolverToCommandBuffer:(id)a3 currentFeaturesArray:(id)a4 currentDerivitiveArray:(id)a5 previousFeaturesArray:(id)a6 previousDerivitiveArray:(id)a7 currentPyramidsArray:(id)a8 validBufferRect:(CGRect)a9 outShiftMap:(id)a10 outConfidenceMap:(id)a11;
- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)a3 colorTexture:(id)a4 outPyramidsArray:(id)a5 outFeaturesArray:(id)a6 outDerivitiveArray:(id)a7;
- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)a3 grayscaleTexture:(id)a4 validBufferRect:(CGRect)a5 outPyramidsArray:(id)a6 outFeaturesArray:(id)a7 outDerivitiveArray:(id)a8 outMeanIntensityAtCoarsestScale:(id)a9;
- (void)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7 cropSizeRatio:;
- (void)_setupPipelines;
- (void)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4;
- (void)dealloc;
- (void)dispatchCommandEncoder:(id)a3 pipeline:(id)a4 width:(unsigned int)a5 height:(unsigned int)a6;
- (void)setPyramidSizes;
@end

@implementation ADLKTOpticalFlow

- (void)dispatchCommandEncoder:(id)a3 pipeline:(id)a4 width:(unsigned int)a5 height:(unsigned int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 threadExecutionWidth];
  v13[0] = a5;
  v13[1] = a6;
  v13[2] = 1;
  v12[0] = v11;
  v12[1] = [v10 maxTotalThreadsPerThreadgroup] / v11;
  v12[2] = 1;
  [v9 dispatchThreads:v13 threadsPerThreadgroup:v12];
}

- (int64_t)encodeOpticalFlowSolverToCommandBuffer:(id)a3 currentFeaturesArray:(id)a4 currentDerivitiveArray:(id)a5 previousFeaturesArray:(id)a6 previousDerivitiveArray:(id)a7 currentPyramidsArray:(id)a8 validBufferRect:(CGRect)a9 outShiftMap:(id)a10 outConfidenceMap:(id)a11
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v90 = a3;
  v89 = a4;
  v88 = a5;
  v87 = a6;
  v86 = a7;
  v21 = a8;
  v83 = a10;
  v22 = a11;
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v79 = v21;
  if (CGRectIsNull(v102))
  {
    v23 = [v21 objectAtIndexedSubscript:0];
    v24 = [v23 width];
    v25 = [v21 objectAtIndexedSubscript:0];
    width = v24;
    height = [v25 height];

    x = 0.0;
    y = 0.0;
  }

  if (x == 0.0 && y == 0.0)
  {
    v26 = [v21 objectAtIndexedSubscript:0];
    if (width > [v26 width])
    {
    }

    else
    {
      v27 = [v21 objectAtIndexedSubscript:0];
      v28 = [v27 height];

      if (height <= v28)
      {
        v29 = [v21 objectAtIndexedSubscript:0];
        v30 = [v29 width];
        v31 = [v21 objectAtIndexedSubscript:0];
        v32 = [v31 height];

        v99 = 335681520;
        v100 = 0u;
        v101 = 0u;
        kdebug_trace();
        uv_tex = self->_uv_tex;
        [(ADLKTOpticalFlow *)self _zeroFlowWithCommandBuffer:v90 uv_tex:self->_uv_pxbuf[self->_nscales + 1]];
        v84 = v22;
        v33 = width;
        *&v34 = v33 / v30;
        v35 = height;
        *(&v34 + 1) = v35 / v32;
        v85 = v34;
        nscales = self->_nscales;
        if (nscales < 1)
        {
          v91 = 0;
        }

        else
        {
          v37 = 0;
          v91 = 0;
          nwarpings = self->_nwarpings;
          v81 = nscales - 1;
          w_tex = self->_w_tex;
          __asm { FMOV            V8.2S, #1.0 }

          v43 = self->_nscales & 0x7FFFFFFF;
          __asm { FMOV            V10.2S, #-1.0 }

          do
          {
            v46 = v43 - 1;
            v47 = _D8;
            if (v43 != LODWORD(self->_nscales))
            {
              v47 = COERCE_DOUBLE(vdiv_f32(vadd_f32(vcvt_f32_f64(self->_pyramid_size[v46]), _D10), vadd_f32(vcvt_f32_f64(self->_pyramid_size[v43]), _D10)));
            }

            v48 = nwarpings[v46];
            if (v48)
            {
              v80 = v43;
              _ZF = v48 == 1 && v43 == 1;
              if (_ZF && !self->_useNonLocalRegularization)
              {
                v50 = v83;
                firstScaleStride = self->_firstScaleStride;
              }

              else
              {
                v50 = uv_tex[v37 ^ 1][v46];
                firstScaleStride = 1;
              }

              if (self->_useNonLocalRegularization && nwarpings[v46] == 1)
              {
                v52 = w_tex[v46];

                v91 = v52;
              }

              v53 = v84 && v46 == [(ADLKTConfidenceParameters *)self->_confidenceParameters scaleIdxForConfidenceComponents]&& nwarpings[v46] == 1;
              v97 = 0u;
              v98 = 0u;
              *buf = 0u;
              v54 = uv_tex[v37];
              [(ADLKTOpticalFlow *)self _prepareLKTGPUUniforms:v54[v81] out_uv_tex:v50 coeff:firstScaleStride stride:v53 computeConfidenceComponents:v47];
              v55 = [v89 objectAtIndexedSubscript:v46];
              v56 = [v88 objectAtIndexedSubscript:v46];
              v57 = [v87 objectAtIndexedSubscript:v46];
              v58 = [v86 objectAtIndexedSubscript:v46];
              v59 = v54[v81];
              v93 = *buf;
              v94 = v97;
              v95 = v98;
              [(ADLKTOpticalFlow *)self _doSolverWithCommandBuffer:v90 currentFeatures:v55 currentDerivitive:v56 previousFeatures:v57 previousDerivitive:v58 in_uv_tex:v59 out_uv_tex:v85 out_w_tex:v50 uniforms:v91 cropSizeRatio:&v93];

              v37 ^= 1uLL;
              v60 = nwarpings[v46];
              if (v60 >= 2)
              {
                for (i = 2; i <= v60; ++i)
                {
                  if (i != v60 || v46 || self->_useNonLocalRegularization)
                  {
                    v62 = uv_tex[v37 ^ 1][v46];
                    v63 = 1;
                  }

                  else
                  {
                    v62 = v83;
                    v63 = self->_firstScaleStride;
                  }

                  if (self->_useNonLocalRegularization && i == nwarpings[v46])
                  {
                    v64 = w_tex[v46];

                    v91 = v64;
                  }

                  v65 = v84 && v46 == [(ADLKTConfidenceParameters *)self->_confidenceParameters scaleIdxForConfidenceComponents]&& i == nwarpings[v46];
                  v97 = 0u;
                  v98 = 0u;
                  *buf = 0u;
                  v66 = uv_tex[v37];
                  [(ADLKTOpticalFlow *)self _prepareLKTGPUUniforms:v66[v46] out_uv_tex:v62 coeff:v63 stride:v65 computeConfidenceComponents:_D8];
                  v67 = [v89 objectAtIndexedSubscript:v46];
                  v68 = [v88 objectAtIndexedSubscript:v46];
                  v69 = [v87 objectAtIndexedSubscript:v46];
                  v70 = [v86 objectAtIndexedSubscript:v46];
                  v71 = v66[v46];
                  v93 = *buf;
                  v94 = v97;
                  v95 = v98;
                  [(ADLKTOpticalFlow *)self _doSolverWithCommandBuffer:v90 currentFeatures:v67 currentDerivitive:v68 previousFeatures:v69 previousDerivitive:v70 in_uv_tex:v71 out_uv_tex:v85 out_w_tex:v62 uniforms:v91 cropSizeRatio:&v93];

                  v37 ^= 1uLL;
                  nwarpings = self->_nwarpings;
                  v60 = self->_nwarpings[v46];
                }
              }

              v81 = v46;
              v43 = v80;
            }

            if (self->_useNonLocalRegularization)
            {
              v72 = uv_tex[v37 ^ 1][v46];
              if (!v46)
              {
                v73 = v83;

                v72 = v73;
              }

              v74 = [(MTLTexture *)uv_tex[v37][v46] newTextureViewWithPixelFormat:53];
              v75 = [v79 objectAtIndexedSubscript:v46];
              v76 = [v75 newTextureViewWithPixelFormat:53];

              [(ADLKTOpticalFlow *)self _doNLRegularizationWithCommandBuffer:v90 in_uv_tex:v74 join_tex:v76 w_tex:v91 out_uv_tex:v72 cropSizeRatio:v85];
              v37 ^= 1uLL;
            }

            v45 = v43 <= 1;
            v43 = v46;
          }

          while (!v45);
        }

        v22 = v84;
        if (v84)
        {
          [(ADLKTOpticalFlow *)self _computeConfidence:v90 shiftMap:v83 outConfidenceMap:v84 cropSizeRatio:v85];
        }

        kdebug_trace();
        v21 = v79;
        v77 = 0;
        goto LABEL_59;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "validBufferRect is larger input size", buf, 2u);
    }

    v77 = -22957;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "validBufferRect origin is different than (0,0)", buf, 2u);
    }

    v77 = -22951;
  }

LABEL_59:

  return v77;
}

- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)a3 grayscaleTexture:(id)a4 validBufferRect:(CGRect)a5 outPyramidsArray:(id)a6 outFeaturesArray:(id)a7 outDerivitiveArray:(id)a8 outMeanIntensityAtCoarsestScale:(id)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v44 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectIsNull(v45))
  {
    width = [v20 width];
    height = [v20 height];
    x = 0.0;
    y = 0.0;
  }

  if (x == 0.0 && y == 0.0)
  {
    if (width <= [v20 width] && height <= objc_msgSend(v20, "height"))
    {
      v27 = [v20 width];
      v28 = [v20 height];
      *buf = 335682684;
      v40 = 0u;
      v41 = 0u;
      kdebug_trace();
      if ([v20 pixelFormat] == 10)
      {
        v29 = height;
        v30 = width;
        *&v31 = v30 / v27;
        *(&v31 + 1) = v29 / v28;
        v38 = v31;
        [(ADLKTOpticalFlow *)self _createImagePyramidWithCommandBuffer:v19 in_tex:v20 cropSizeRatio:v21 outPyramidsArray:v24 outMeanIntensityAtCoarsestScale:0 error:?];
        if (self->_nscales < 1)
        {
          v25 = 0;
        }

        else
        {
          v37 = v24;
          v32 = (self->_nscales & 0x7FFFFFFF) + 1;
          do
          {
            v33 = [v21 objectAtIndexedSubscript:v32 - 2];
            v34 = [v22 objectAtIndexedSubscript:v32 - 2];
            [(ADLKTOpticalFlow *)self _computeFeaturesWithCommandBuffer:v19 cropSizeRatio:v33 in_tex:v34 out_tex:v38];

            v35 = [v22 objectAtIndexedSubscript:v32 - 2];
            v36 = [v23 objectAtIndexedSubscript:v32 - 2];
            [(ADLKTOpticalFlow *)self _computeFeaturesDerivativesWithCommandBuffer:v19 cropSizeRatio:v35 in_tex:v36 out_tex:v38];

            --v32;
          }

          while (v32 > 1);
          v25 = 0;
          v24 = v37;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v42 = 134217984;
          v43 = [v20 pixelFormat];
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not supported pixel format: %lu", v42, 0xCu);
        }

        v25 = -22951;
      }

      kdebug_trace();
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "validBufferRect is larger than input size", buf, 2u);
      }

      v25 = -22957;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "validBufferRect origin is different than (0,0)", buf, 2u);
    }

    v25 = -22951;
  }

  return v25;
}

- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)a3 colorTexture:(id)a4 outPyramidsArray:(id)a5 outFeaturesArray:(id)a6 outDerivitiveArray:(id)a7
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 pixelFormat] == 80)
  {
    v17 = [v12 computeCommandEncoder];
    [v17 setComputePipelineState:self->_computePipelines[0]];
    [v17 setTexture:v13 atIndex:0];
    [v17 setTexture:self->_grayscaleTexture atIndex:1];
    +[ADMetalUtils dispatchCommandEncoder:pipeline:width:height:](ADMetalUtils, "dispatchCommandEncoder:pipeline:width:height:", v17, self->_computePipelines[0], [v13 width], objc_msgSend(v13, "height"));
    [v17 endEncoding];
    v18 = [(ADLKTOpticalFlow *)self encodePyramidFeaturesToCommandBuffer:v12 grayscaleTexture:self->_grayscaleTexture validBufferRect:v14 outPyramidsArray:v15 outFeaturesArray:v16 outDerivitiveArray:0 outMeanIntensityAtCoarsestScale:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      v21 = [v13 pixelFormat];
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not supported pixel format: %lu", &v20, 0xCu);
    }

    v18 = -22951;
  }

  return v18;
}

- (ADLKTOpticalFlow)initWithDevice:(id)a3 inputSize:(CGSize)a4 config:(id *)a5 confidenceParameters:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a6;
  v39.receiver = self;
  v39.super_class = ADLKTOpticalFlow;
  v14 = [(ADLKTOpticalFlow *)&v39 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    v38 = v12;
    v14->_resX = width;
    v14->_resY = height;
    var0 = a5->var0;
    v14->_nscales = a5->var0;
    v14->_reducedMemoryConsumption = a5->var10;
    if (var0)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = [a5->var1 objectAtIndexedSubscript:v18];
        v15->_nwarpings[v18] = [v20 unsignedIntValue];

        v18 = v19++;
      }

      while (v16->_nscales > v18);
    }

    v16->_useNonLocalRegularization = a5->var2;
    v16->_nlreg_radius = a5->var3;
    v16->_nlreg_padding = a5->var4;
    v16->_nlreg_sigma_l = a5->var5;
    v16->_nlreg_sigma_c = a5->var6;
    v16->_nlreg_sigma_w = a5->var7;
    v16->_firstScaleStride = a5->var9;
    objc_storeStrong(&v15->_device, a3);
    v12 = v38;
    v21 = [ADMetalUtils textureForSize:1278226488 pixelFormat:v16->_device metalDevice:width, height];
    grayscaleTexture = v16->_grayscaleTexture;
    v16->_grayscaleTexture = v21;

    [(ADLKTOpticalFlow *)v16 _setupPipelines];
    [(ADLKTOpticalFlow *)v16 setPyramidSizes];
    if (![(ADLKTOpticalFlow *)v16 _setupBufferAndReturnErrorWithDevice:v16->_device error:0])
    {
      v36 = 0;
      goto LABEL_11;
    }

    gradientNormConfidenceTex = v16->_gradientNormConfidenceTex;
    v16->_gradientNormConfidenceTex = 0;

    conditionNumberConfidenceTex = v16->_conditionNumberConfidenceTex;
    v16->_conditionNumberConfidenceTex = 0;

    objc_storeStrong(&v15->_confidenceParameters, a6);
    if ([(ADLKTConfidenceParameters *)v16->_confidenceParameters enableConfidence])
    {
      v25 = (v15 + 16 * [(ADLKTConfidenceParameters *)v15->_confidenceParameters scaleIdxForConfidenceComponents]);
      v26 = v25[13];
      v27 = v25[14];
      v28 = [ADMetalUtils textureForSize:1278226536 pixelFormat:v16->_device metalDevice:v26, v27];
      v29 = v16->_gradientNormConfidenceTex;
      v16->_gradientNormConfidenceTex = v28;

      v30 = [ADMetalUtils textureForSize:1278226536 pixelFormat:v16->_device metalDevice:v26, v27];
      v31 = v16->_conditionNumberConfidenceTex;
      v16->_conditionNumberConfidenceTex = v30;
    }

    v32 = [(MTLDevice *)v15->_device newBufferWithLength:1 options:0];
    computeMeanIntensityBuffer = v16->_computeMeanIntensityBuffer;
    v16->_computeMeanIntensityBuffer = v32;

    v34 = [(MTLDevice *)v16->_device newBufferWithLength:4 options:0];
    meanIntensityBuffer = v16->_meanIntensityBuffer;
    v16->_meanIntensityBuffer = v34;
  }

  v36 = v16;
LABEL_11:

  return v36;
}

- (ADLKTOpticalFlow)initWithDevice:(id)a3 inputSize:(CGSize)a4 config:(id *)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = objc_opt_new();
  var1 = a5->var1;
  v15[0] = a5->var0;
  v12 = var1;
  v15[1] = v12;
  v13 = *&a5->var6;
  v16 = *&a5->var2;
  *v17 = v13;
  *&v17[13] = *(&a5->var8 + 5);
  if (self)
  {
    self = [(ADLKTOpticalFlow *)self initWithDevice:v9 inputSize:v15 config:v10 confidenceParameters:width, height];
  }

  else
  {
  }

  return self;
}

- (ADLKTOpticalFlow)initWithDevice:(id)a3 inputSize:(CGSize)a4 scales:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  +[ADLKTOpticalFlow defaultConfig];
  v15 = a5;
  v12[0] = a5;
  v10 = v16;
  v12[1] = v10;
  v13 = v17;
  *v14 = *v18;
  *&v14[13] = *&v18[13];
  if (self)
  {
    self = [(ADLKTOpticalFlow *)self initWithDevice:v9 inputSize:v12 config:width, height];
  }

  else
  {
  }

  return self;
}

- (BOOL)_setupBufferAndReturnErrorWithDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  if (maxThreadExecutionWidth)
  {
    resX = self->_resX;
    self->_w_pxbuf = 0;
    if (!self->_useNonLocalRegularization)
    {
      goto LABEL_6;
    }

    resY = self->_resY;
    pixelBufferOut = 0;
    BufferAttributes = getBufferAttributes();
    v11 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], resX, resY, 0x4C303068u, BufferAttributes, &pixelBufferOut);
    v12 = pixelBufferOut;
    if (v11)
    {
      v12 = 0;
    }

    self->_w_pxbuf = v12;
    if (v12)
    {
LABEL_6:
      v13 = (maxThreadExecutionWidth + resX - 1) / maxThreadExecutionWidth * maxThreadExecutionWidth;
      reducedMemoryConsumption = self->_reducedMemoryConsumption;
      v15 = 8 * v13;
      v16 = [v6 newBufferWithLength:8 * v13 * self->_resY options:0];
      v17 = self->_Adiagb_buf[0];
      self->_Adiagb_buf[0] = v16;

      if (self->_Adiagb_buf[0])
      {
        v18 = 2 * v13;
        v19 = [v6 newBufferWithLength:v18 * self->_resY options:0];
        v20 = self->_Ixy_buf[0];
        self->_Ixy_buf[0] = v19;

        if (self->_Ixy_buf[0])
        {
          if (reducedMemoryConsumption || (v21 = [v6 newBufferWithLength:v15 * self->_resY options:0], v22 = self->_Adiagb_buf[1], self->_Adiagb_buf[1] = v21, v22, self->_Adiagb_buf[1]) && (v23 = objc_msgSend(v6, "newBufferWithLength:options:", v18 * self->_resY, 0), v24 = self->_Ixy_buf[1], self->_Ixy_buf[1] = v23, v24, self->_Ixy_buf[1]))
          {
            v25 = self->_resX;
            v26 = self->_resY;
            pixelBufferOut = 0;
            v27 = getBufferAttributes();
            v28 = *MEMORY[0x277CBECE8];
            v29 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v25, v26, 0x32433068u, v27, &pixelBufferOut);
            v30 = pixelBufferOut;
            if (v29)
            {
              v30 = 0;
            }

            self->_uv_pxbuf[0] = v30;
            if (v30)
            {
              v31 = self->_resX;
              v32 = self->_resY;
              pixelBufferOut = 0;
              v33 = getBufferAttributes();
              v34 = CVPixelBufferCreate(v28, v31, v32, 0x32433068u, v33, &pixelBufferOut);
              v35 = pixelBufferOut;
              if (v34)
              {
                v35 = 0;
              }

              self->_uv_pxbuf[1] = v35;
              if (v35)
              {
                if (!self->_nscales)
                {
                  v61 = 1;
                  goto LABEL_26;
                }

                v36 = 0;
                v37 = self->_resY;
                pyramid_size = self->_pyramid_size;
                w_tex = self->_w_tex;
                uv_tex = self->_uv_tex;
                v40 = self->_resX;
                uv_u32_alias_tex = self->_uv_u32_alias_tex;
                v42 = 1;
                while (1)
                {
                  p_width = &pyramid_size[v36].width;
                  *p_width = v40;
                  p_width[1] = v37;
                  v44 = w_tex[v36];
                  w_tex[v36] = 0;

                  if (self->_useNonLocalRegularization)
                  {
                    v45 = [ADMetalUtils bindPixelBufferToMTL2DTexture:self->_w_pxbuf pixelFormat:25 textureSize:0 plane:self->_device metalDevice:a4 error:v40, v37];
                    v46 = w_tex[v36];
                    w_tex[v36] = v45;

                    if (!w_tex[v36])
                    {
                      break;
                    }
                  }

                  v47 = [ADMetalUtils bindPixelBufferToMTL2DTexture:self->_uv_pxbuf[0] pixelFormat:65 textureSize:0 plane:self->_device metalDevice:a4 error:v40, v37, pyramid_size];
                  v48 = (*uv_tex)[v36];
                  (*uv_tex)[v36] = v47;

                  v49 = (*uv_tex)[v36];
                  if (!v49)
                  {
                    break;
                  }

                  v50 = [(MTLTexture *)v49 newTextureViewWithPixelFormat:53];
                  v51 = (*uv_u32_alias_tex)[v36];
                  (*uv_u32_alias_tex)[v36] = v50;

                  v52 = [ADMetalUtils bindPixelBufferToMTL2DTexture:self->_uv_pxbuf[1] pixelFormat:65 textureSize:0 plane:self->_device metalDevice:a4 error:v40, v37];
                  v53 = &(*uv_tex)[v36];
                  v54 = v53[10];
                  v53[10] = v52;

                  v55 = v53[10];
                  if (!v55)
                  {
                    break;
                  }

                  v56 = [(MTLTexture *)v55 newTextureViewWithPixelFormat:53];
                  v57 = &(*uv_u32_alias_tex)[v36];
                  v58 = v57[10];
                  v57[10] = v56;

                  [ADLKTOpticalFlow getNextPyramidLevelSize:v40, v37];
                  v40 = v59;
                  v37 = v60;
                  v36 = v42++;
                  v61 = 1;
                  if (self->_nscales <= v36)
                  {
                    goto LABEL_26;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v61 = 0;
LABEL_26:

  return v61;
}

- (void)dealloc
{
  w_pxbuf = self->_w_pxbuf;
  if (w_pxbuf)
  {
    CVPixelBufferRelease(w_pxbuf);
  }

  v4 = self->_uv_pxbuf[0];
  if (v4)
  {
    CVPixelBufferRelease(v4);
  }

  v5 = self->_uv_pxbuf[1];
  if (v5)
  {
    CVPixelBufferRelease(v5);
  }

  v6.receiver = self;
  v6.super_class = ADLKTOpticalFlow;
  [(ADLKTOpticalFlow *)&v6 dealloc];
}

- (void)setPyramidSizes
{
  self->_pyramid_size[0].width = self->_resX;
  pyramid_size = self->_pyramid_size;
  self->_pyramid_size[0].height = self->_resY;
  if (self->_nscales >= 2)
  {
    v4 = 2;
    v5 = 1;
    do
    {
      [ADLKTOpticalFlow getNextPyramidLevelSize:?];
      p_width = &pyramid_size[v5].width;
      *p_width = v7;
      p_width[1] = v8;
      v5 = v4++;
    }

    while (self->_nscales > v5);
  }
}

- (void)_setupPipelines
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"default" withExtension:@"metallib" subdirectory:0];

  device = self->_device;
  v16 = 0;
  v6 = [(MTLDevice *)device newLibraryWithURL:v4 error:&v16];
  v15 = v16;
  v7 = 0;
  v8 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:kKernelNames[v7]];
    v11 = [v6 newFunctionWithName:v10];

    v12 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v11 error:0];
    objc_storeStrong(computePipelines, v12);
    v13 = [v12 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (v13 > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v12 threadExecutionWidth];
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++v7;
    ++computePipelines;
    v8 = v11;
  }

  while (v7 != 11);
}

- (int)_computeConfidence:(id)a3 shiftMap:(id)a4 outConfidenceMap:(id)a5 cropSizeRatio:
{
  v17 = v5;
  v9 = a4;
  v10 = a5;
  v11 = [a3 computeCommandEncoder];
  [v11 setComputePipelineState:self->_computePipelines[10]];
  [v11 setTexture:self->_gradientNormConfidenceTex atIndex:0];
  [v11 setTexture:self->_conditionNumberConfidenceTex atIndex:1];
  [v11 setTexture:v9 atIndex:2];
  [v11 setTexture:v10 atIndex:3];
  v18 = [(ADLKTConfidenceParameters *)self->_confidenceParameters checkFlowInFOV];
  [v11 setBytes:&v18 length:1 atIndex:0];
  v12 = [v10 width];
  v13 = [v10 height];
  LODWORD(v14) = vcvtps_s32_f32(v12 * v17.f32[0]);
  LODWORD(v15) = vcvtps_s32_f32(vmuls_lane_f32(v13, v17, 1));
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v11 pipeline:self->_computePipelines[10] width:v14 height:v15];
  [v11 endEncoding];

  return 0;
}

- (int)_doSolverWithCommandBuffer:(id)a3 currentFeatures:(id)a4 currentDerivitive:(id)a5 previousFeatures:(id)a6 previousDerivitive:(id)a7 in_uv_tex:(id)a8 out_uv_tex:(id)a9 out_w_tex:(id)a10 uniforms:(id *)a11 cropSizeRatio:
{
  v38 = v11;
  v47 = a3;
  v18 = a4;
  v45 = a5;
  v46 = a6;
  v44 = a7;
  v48 = a8;
  v43 = a9;
  v42 = a10;
  var0 = a11->var0;
  var1 = a11->var1;
  if (a11[1].var5)
  {
    v21 = self->_gradientNormConfidenceTex;
  }

  else
  {
    v21 = 0;
  }

  v41 = v18;
  v22 = [v47 computeCommandEncoder];
  [v22 setComputePipelineState:self->_computePipelines[6]];
  [v22 setTexture:v48 atIndex:0];
  [v22 setTexture:v18 atIndex:1];
  [v22 setTexture:v46 atIndex:2];
  [v22 setTexture:v45 atIndex:3];
  [v22 setTexture:v44 atIndex:4];
  [v22 setTexture:v21 atIndex:5];
  [v22 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [v22 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [v22 setBytes:a11 length:48 atIndex:2];
  v23 = ceil((var0 * v39.f32[0]) * 0.5);
  v24 = ceil(vmuls_lane_f32(var1, v39, 1) * 0.5);
  v25 = (v23 + v23);
  v26 = (v24 + v24);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v22 pipeline:self->_computePipelines[6] width:v25 height:v26];
  [v22 endEncoding];
  Adiagb_buf = self->_Adiagb_buf;
  Ixy_buf = self->_Ixy_buf;

  if (!self->_reducedMemoryConsumption)
  {
    v29 = [v47 computeCommandEncoder];
    [v29 setComputePipelineState:self->_computePipelines[7]];
    [v29 setBuffer:*Adiagb_buf offset:0 atIndex:0];
    [v29 setBuffer:*Ixy_buf offset:0 atIndex:1];
    [v29 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
    [v29 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
    [v29 setBytes:a11 length:48 atIndex:4];
    LODWORD(v30) = vcvtps_u32_f32(v26 / a11[1].var3);
    [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v29 pipeline:self->_computePipelines[7] width:v25 height:v30];
    [v29 endEncoding];
  }

  v39.i32[0] = v26;
  if (a11[1].var5)
  {
    v31 = self->_conditionNumberConfidenceTex;
  }

  else
  {
    v31 = 0;
  }

  reducedMemoryConsumption = self->_reducedMemoryConsumption;
  v33 = [v47 computeCommandEncoder];
  [v33 setComputePipelineState:self->_computePipelines[8]];
  reducedMemoryConsumption ^= 1uLL;
  [v33 setBuffer:Adiagb_buf[reducedMemoryConsumption] offset:0 atIndex:0];
  [v33 setBuffer:Ixy_buf[reducedMemoryConsumption] offset:0 atIndex:1];
  [v33 setTexture:v48 atIndex:0];
  [v33 setTexture:v43 atIndex:1];
  [v33 setTexture:v42 atIndex:2];
  [v33 setTexture:v31 atIndex:3];
  [v33 setBytes:a11 length:48 atIndex:2];
  [v33 setBytes:&self->_reducedMemoryConsumption length:1 atIndex:3];
  var3 = a11[1].var3;
  LODWORD(v35) = vcvtps_u32_f32(v25 / var3);
  LODWORD(v36) = vcvtps_u32_f32(v40 / var3);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v33 pipeline:self->_computePipelines[8] width:v35 height:v36];
  [v33 endEncoding];

  return 0;
}

- ($41DCF25500D59F4991CE6CEF6FDF028F)_prepareLKTGPUUniforms:(id)retstr out_uv_tex:coeff:stride:computeConfidenceComponents:
{
  v7 = v5;
  v8 = v4;
  v9 = v6;
  v10 = v3;
  v11 = v1;
  v29 = v2;
  v13 = v10;
  v14 = [v13 width];
  v15 = [v13 height];
  v16 = *(v11 + 264);
  v17 = [v29 width];
  v18 = [v29 height];
  *&v19 = (v17 - 1) / (v14 * v8 - 1);
  *(&v19 + 1) = (v18 - 1) / (v15 * v8 - 1);
  *&retstr->var2 = 0u;
  *&retstr[1].var1 = 0u;
  *&retstr[2].var0 = 0;
  retstr->var0 = v14 * v8;
  retstr->var1 = v15 * v8;
  retstr->var2 = (v14 * v8 - 1 + v16) / v16 * v16;
  *&retstr->var4 = v19;
  *&retstr[1].var1 = v9;
  retstr[1].var3 = v8;
  retstr[1].var5 = v7;
  [*(v11 + 856) gradientNormMinValue];
  __asm { FCVT            H0, S0 }

  *(&retstr[1].var5 + 1) = _S0;
  [*(v11 + 856) gradientNormMaxValue];
  __asm { FCVT            H0, S0 }

  LOWORD(retstr[2].var0) = _S0;
  [*(v11 + 856) conditionNumberMinValue];
  __asm { FCVT            H0, S0 }

  HIWORD(retstr[2].var0) = _S0;
  [*(v11 + 856) conditionNumberMaxValue];
  __asm { FCVT            H0, S0 }

  LOWORD(retstr[2].var1) = _S0;

  return result;
}

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 cropSizeRatio:(id)a4 in_tex:(id)a5 out_tex:
{
  v18 = v5;
  v9 = a4;
  v10 = a5;
  v11 = [a3 computeCommandEncoder];
  [v11 setComputePipelineState:self->_computePipelines[5]];
  [v11 setTexture:v9 atIndex:0];
  [v11 setTexture:v10 atIndex:1];
  v12 = [v9 width];
  v13 = [v9 height];
  v14 = ceil((v12 * v18.f32[0]) * 0.5);
  v15 = (v14 + v14);
  v16 = ceil(vmuls_lane_f32(v13, v18, 1) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v11 pipeline:self->_computePipelines[5] width:v15 height:(v16 + v16)];
  [v11 endEncoding];

  return 0;
}

- (int)_computeFeaturesWithCommandBuffer:(id)a3 cropSizeRatio:(id)a4 in_tex:(id)a5 out_tex:
{
  v18 = v5;
  v9 = a4;
  v10 = a5;
  v11 = [a3 computeCommandEncoder];
  [v11 setComputePipelineState:self->_computePipelines[4]];
  [v11 setTexture:v9 atIndex:0];
  [v11 setTexture:v10 atIndex:1];
  v12 = [v9 width];
  v13 = [v9 height];
  v14 = ceil((v12 * v18.f32[0]) * 0.5);
  v15 = (v14 + v14);
  v16 = ceil(vmuls_lane_f32(v13, v18, 1) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v11 pipeline:self->_computePipelines[4] width:v15 height:(v16 + v16)];
  [v11 endEncoding];

  return 0;
}

- (BOOL)_createImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4 cropSizeRatio:(id)a5 outPyramidsArray:(id)a6 outMeanIntensityAtCoarsestScale:(id *)a7 error:
{
  v11 = v7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [v15 width];
  v19 = [v16 objectAtIndexedSubscript:0];
  v20 = [v19 width];

  if (v18 <= v20)
  {
    v21 = [v14 blitCommandEncoder];
    [v21 setLabel:@"lkt_copyToPyramid"];
    v23 = [v16 objectAtIndexedSubscript:0];
    [v21 copyFromTexture:v15 toTexture:v23];
  }

  else
  {
    v21 = [v14 computeCommandEncoder];
    [v21 setComputePipelineState:self->_computePipelines[1]];
    [v21 setTexture:v15 atIndex:0];
    v22 = [v16 objectAtIndexedSubscript:0];
    [v21 setTexture:v22 atIndex:1];

    -[ADLKTOpticalFlow dispatchCommandEncoder:pipeline:width:height:](self, "dispatchCommandEncoder:pipeline:width:height:", v21, self->_computePipelines[1], [v15 width], objc_msgSend(v15, "height"));
  }

  [v21 endEncoding];

  [(ADLKTOpticalFlow *)self _createImagePyramidWithCommandBuffer:v14 cropSizeRatio:v16 inOutPyramidsArray:v17 outMeanIntensityAtCoarsestScale:a7 error:v11];
  return 1;
}

- (BOOL)_createImagePyramidWithCommandBuffer:(id)a3 cropSizeRatio:(id)a4 inOutPyramidsArray:(id)a5 outMeanIntensityAtCoarsestScale:(id *)a6 error:
{
  v9 = v6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (self->_nscales >= 2)
  {
    v14 = 2;
    v15 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v27 = _Q0;
    do
    {
      v21 = [v12 objectAtIndexedSubscript:{v14 - 2, *&v27}];
      v22 = [v12 objectAtIndexedSubscript:v15];
      v23 = COERCE_DOUBLE(vdiv_f32(vcvt_f32_f64(vaddq_f64(*(&self->_nlreg_radius + v14), v27)), vcvt_f32_f64(vaddq_f64(self->_pyramid_size[v15], v27))));
      if (self->_nscales - 1 == v15)
      {
        v24 = v13;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      [(ADLKTOpticalFlow *)self _downscale2XWithCommandBuffer:v11 in_tex:v21 out_tex:v22 scaling_factor:v25 cropSizeRatio:v23 outMeanIntensity:v9];

      v15 = v14++;
    }

    while (self->_nscales > v15);
  }

  return 1;
}

- (void)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7 cropSizeRatio:
{
  v30 = v7;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31[1] = 0;
  v17.i64[0] = *&self->_nlreg_sigma_l;
  v31[0] = *&self->_nlreg_radius;
  v17.i32[3] = LODWORD(self->_nlreg_sigma_w);
  v18 = vaddq_f32(v17, v17);
  __asm { FMOV            V1.4S, #1.0 }

  v24 = vdivq_f32(_Q1, v18);
  v24.i32[2] = v24.i32[1];
  v32 = v24;
  v25 = [a3 computeCommandEncoder];
  [v25 setComputePipelineState:self->_computePipelines[9]];
  [v25 setTexture:v13 atIndex:0];
  [v25 setTexture:v14 atIndex:1];
  [v25 setTexture:v15 atIndex:2];
  [v25 setTexture:v16 atIndex:3];
  [v25 setBytes:v31 length:32 atIndex:0];
  v26 = [v13 width];
  v27 = [v13 width];
  LODWORD(v28) = vcvtpd_s64_f64((v30 * v26) * 0.5);
  LODWORD(v29) = vcvtpd_s64_f64((v30 * v27) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v25 pipeline:self->_computePipelines[9] width:v28 height:v29];
  [v25 endEncoding];
}

- (int)_downscale2XWithCommandBuffer:(ADLKTOpticalFlow *)self in_tex:(SEL)a2 out_tex:(id)a3 scaling_factor:(id)a4 cropSizeRatio:(id)a5 outMeanIntensity:(id)a6
{
  v23 = v7;
  v9 = v6;
  v13 = a4;
  v14 = a5;
  v25 = v9;
  v15 = a6;
  v16 = [a3 computeCommandEncoder];
  [v16 setComputePipelineState:self->_computePipelines[3]];
  [v16 setTexture:v13 atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setBytes:&v25 length:8 atIndex:0];
  *[(MTLBuffer *)self->_computeMeanIntensityBuffer contents]= v15 != 0;
  [v16 setBuffer:self->_computeMeanIntensityBuffer offset:0 atIndex:1];
  if (v15)
  {
    [v16 setBuffer:v15 offset:0 atIndex:2];
  }

  else
  {
    [v16 setBuffer:self->_meanIntensityBuffer offset:0 atIndex:2];
  }

  v17 = [v14 width];
  v18 = [v14 height];
  v19 = ceil((v17 * v24.f32[0]) * 0.5);
  v20 = (v19 + v19);
  v21 = ceil(vmuls_lane_f32(v18, v24, 1) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:v16 pipeline:self->_computePipelines[3] width:v20 height:(v21 + v21)];
  [v16 endEncoding];

  return 0;
}

- (void)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4
{
  v7 = a4;
  v6 = [a3 computeCommandEncoder];
  [v6 setComputePipelineState:self->_computePipelines[2]];
  [v6 setTexture:v7 atIndex:0];
  +[ADMetalUtils dispatchCommandEncoder:pipeline:width:height:](ADMetalUtils, "dispatchCommandEncoder:pipeline:width:height:", v6, self->_computePipelines[2], [v7 width], objc_msgSend(v7, "height"));
  [v6 endEncoding];
}

+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)highPerformanceConfig
{
  v4 = +[ADLKTOpticalFlow highPerformanceConfig]::highPerformanceConfig;
  if (!+[ADLKTOpticalFlow highPerformanceConfig]::highPerformanceConfig)
  {
    operator new();
  }

  retstr->var0 = *+[ADLKTOpticalFlow highPerformanceConfig]::highPerformanceConfig;
  result = *(v4 + 8);
  retstr->var1 = result;
  v6 = *(v4 + 32);
  *&retstr->var2 = *(v4 + 16);
  *&retstr->var6 = v6;
  *(&retstr->var8 + 5) = *(v4 + 45);
  return result;
}

+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)highQualityConfig
{
  v4 = +[ADLKTOpticalFlow highQualityConfig]::highQualityConfig;
  if (!+[ADLKTOpticalFlow highQualityConfig]::highQualityConfig)
  {
    operator new();
  }

  retstr->var0 = *+[ADLKTOpticalFlow highQualityConfig]::highQualityConfig;
  result = *(v4 + 8);
  retstr->var1 = result;
  v6 = *(v4 + 32);
  *&retstr->var2 = *(v4 + 16);
  *&retstr->var6 = v6;
  *(&retstr->var8 + 5) = *(v4 + 45);
  return result;
}

+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)defaultConfig
{
  v4 = +[ADLKTOpticalFlow defaultConfig]::defaultConfig;
  if (!+[ADLKTOpticalFlow defaultConfig]::defaultConfig)
  {
    operator new();
  }

  v5 = *(+[ADLKTOpticalFlow defaultConfig]::defaultConfig + 8);
  retstr->var0 = *+[ADLKTOpticalFlow defaultConfig]::defaultConfig;
  result = v5;
  retstr->var1 = result;
  v7 = *(v4 + 32);
  *&retstr->var2 = *(v4 + 16);
  *&retstr->var6 = v7;
  *(&retstr->var8 + 5) = *(v4 + 45);
  return result;
}

+ (CGSize)getNextPyramidLevelSize:(CGSize)a3
{
  height = a3.height;
  v4 = a3.width & 1;
  if (a3.width < 0)
  {
    v4 = -v4;
  }

  v5 = a3.height & 1;
  if (height < 0)
  {
    v5 = -v5;
  }

  v6 = v4 + a3.width;
  if (v6 / 2 >= 0)
  {
    v7 = (v6 / 2) & 1;
  }

  else
  {
    v7 = -((v6 / 2) & 1);
  }

  v8 = v5 + height;
  if (v8 / 2 >= 0)
  {
    v9 = (v8 / 2) & 1;
  }

  else
  {
    v9 = -((v8 / 2) & 1);
  }

  v10 = ((v6 + 2 * v7 + 1) / 2);
  v11 = ((v8 + 2 * v9 + 1) / 2);
  result.height = v11;
  result.width = v10;
  return result;
}

@end