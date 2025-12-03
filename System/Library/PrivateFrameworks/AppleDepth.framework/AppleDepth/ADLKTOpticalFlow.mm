@interface ADLKTOpticalFlow
+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)defaultConfig;
+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)highPerformanceConfig;
+ ($06231CF0FCC0A6A3B5C95DAAB190E4AF)highQualityConfig;
+ (CGSize)getNextPyramidLevelSize:(CGSize)size;
- ($41DCF25500D59F4991CE6CEF6FDF028F)_prepareLKTGPUUniforms:(id)retstr out_uv_tex:coeff:stride:computeConfidenceComponents:;
- (ADLKTOpticalFlow)initWithDevice:(id)device inputSize:(CGSize)size config:(id *)config;
- (ADLKTOpticalFlow)initWithDevice:(id)device inputSize:(CGSize)size config:(id *)config confidenceParameters:(id)parameters;
- (ADLKTOpticalFlow)initWithDevice:(id)device inputSize:(CGSize)size scales:(unint64_t)scales;
- (BOOL)_createImagePyramidWithCommandBuffer:(id)buffer cropSizeRatio:(id)ratio inOutPyramidsArray:(id)array outMeanIntensityAtCoarsestScale:(id *)scale error:;
- (BOOL)_createImagePyramidWithCommandBuffer:(id)buffer in_tex:(id)in_tex cropSizeRatio:(id)ratio outPyramidsArray:(id)array outMeanIntensityAtCoarsestScale:(id *)scale error:;
- (BOOL)_setupBufferAndReturnErrorWithDevice:(id)device error:(id *)error;
- (int)_computeConfidence:(id)confidence shiftMap:(id)map outConfidenceMap:(id)confidenceMap cropSizeRatio:;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer cropSizeRatio:(id)ratio in_tex:(id)in_tex out_tex:;
- (int)_computeFeaturesWithCommandBuffer:(id)buffer cropSizeRatio:(id)ratio in_tex:(id)in_tex out_tex:;
- (int)_doSolverWithCommandBuffer:(id)buffer currentFeatures:(id)features currentDerivitive:(id)derivitive previousFeatures:(id)previousFeatures previousDerivitive:(id)previousDerivitive in_uv_tex:(id)in_uv_tex out_uv_tex:(id)out_uv_tex out_w_tex:(id)self0 uniforms:(id *)self1 cropSizeRatio:;
- (int)_downscale2XWithCommandBuffer:(ADLKTOpticalFlow *)self in_tex:(SEL)in_tex out_tex:(id)out_tex scaling_factor:(id)scaling_factor cropSizeRatio:(id)ratio outMeanIntensity:(id)intensity;
- (int64_t)encodeOpticalFlowSolverToCommandBuffer:(id)buffer currentFeaturesArray:(id)array currentDerivitiveArray:(id)derivitiveArray previousFeaturesArray:(id)featuresArray previousDerivitiveArray:(id)previousDerivitiveArray currentPyramidsArray:(id)pyramidsArray validBufferRect:(CGRect)rect outShiftMap:(id)self0 outConfidenceMap:(id)self1;
- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)buffer colorTexture:(id)texture outPyramidsArray:(id)array outFeaturesArray:(id)featuresArray outDerivitiveArray:(id)derivitiveArray;
- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)buffer grayscaleTexture:(id)texture validBufferRect:(CGRect)rect outPyramidsArray:(id)array outFeaturesArray:(id)featuresArray outDerivitiveArray:(id)derivitiveArray outMeanIntensityAtCoarsestScale:(id)scale;
- (void)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex cropSizeRatio:;
- (void)_setupPipelines;
- (void)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex;
- (void)dealloc;
- (void)dispatchCommandEncoder:(id)encoder pipeline:(id)pipeline width:(unsigned int)width height:(unsigned int)height;
- (void)setPyramidSizes;
@end

@implementation ADLKTOpticalFlow

- (void)dispatchCommandEncoder:(id)encoder pipeline:(id)pipeline width:(unsigned int)width height:(unsigned int)height
{
  encoderCopy = encoder;
  pipelineCopy = pipeline;
  threadExecutionWidth = [pipelineCopy threadExecutionWidth];
  v13[0] = width;
  v13[1] = height;
  v13[2] = 1;
  v12[0] = threadExecutionWidth;
  v12[1] = [pipelineCopy maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
  v12[2] = 1;
  [encoderCopy dispatchThreads:v13 threadsPerThreadgroup:v12];
}

- (int64_t)encodeOpticalFlowSolverToCommandBuffer:(id)buffer currentFeaturesArray:(id)array currentDerivitiveArray:(id)derivitiveArray previousFeaturesArray:(id)featuresArray previousDerivitiveArray:(id)previousDerivitiveArray currentPyramidsArray:(id)pyramidsArray validBufferRect:(CGRect)rect outShiftMap:(id)self0 outConfidenceMap:(id)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bufferCopy = buffer;
  arrayCopy = array;
  derivitiveArrayCopy = derivitiveArray;
  featuresArrayCopy = featuresArray;
  previousDerivitiveArrayCopy = previousDerivitiveArray;
  pyramidsArrayCopy = pyramidsArray;
  mapCopy = map;
  confidenceMapCopy = confidenceMap;
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v79 = pyramidsArrayCopy;
  if (CGRectIsNull(v102))
  {
    v23 = [pyramidsArrayCopy objectAtIndexedSubscript:0];
    width = [v23 width];
    v25 = [pyramidsArrayCopy objectAtIndexedSubscript:0];
    width = width;
    height = [v25 height];

    x = 0.0;
    y = 0.0;
  }

  if (x == 0.0 && y == 0.0)
  {
    v26 = [pyramidsArrayCopy objectAtIndexedSubscript:0];
    if (width > [v26 width])
    {
    }

    else
    {
      v27 = [pyramidsArrayCopy objectAtIndexedSubscript:0];
      height = [v27 height];

      if (height <= height)
      {
        v29 = [pyramidsArrayCopy objectAtIndexedSubscript:0];
        width2 = [v29 width];
        v31 = [pyramidsArrayCopy objectAtIndexedSubscript:0];
        height2 = [v31 height];

        v99 = 335681520;
        v100 = 0u;
        v101 = 0u;
        kdebug_trace();
        uv_tex = self->_uv_tex;
        [(ADLKTOpticalFlow *)self _zeroFlowWithCommandBuffer:bufferCopy uv_tex:self->_uv_pxbuf[self->_nscales + 1]];
        v84 = confidenceMapCopy;
        v33 = width;
        *&v34 = v33 / width2;
        v35 = height;
        *(&v34 + 1) = v35 / height2;
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
                v50 = mapCopy;
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
              v55 = [arrayCopy objectAtIndexedSubscript:v46];
              v56 = [derivitiveArrayCopy objectAtIndexedSubscript:v46];
              v57 = [featuresArrayCopy objectAtIndexedSubscript:v46];
              v58 = [previousDerivitiveArrayCopy objectAtIndexedSubscript:v46];
              v59 = v54[v81];
              v93 = *buf;
              v94 = v97;
              v95 = v98;
              [(ADLKTOpticalFlow *)self _doSolverWithCommandBuffer:bufferCopy currentFeatures:v55 currentDerivitive:v56 previousFeatures:v57 previousDerivitive:v58 in_uv_tex:v59 out_uv_tex:v85 out_w_tex:v50 uniforms:v91 cropSizeRatio:&v93];

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
                    v62 = mapCopy;
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
                  v67 = [arrayCopy objectAtIndexedSubscript:v46];
                  v68 = [derivitiveArrayCopy objectAtIndexedSubscript:v46];
                  v69 = [featuresArrayCopy objectAtIndexedSubscript:v46];
                  v70 = [previousDerivitiveArrayCopy objectAtIndexedSubscript:v46];
                  v71 = v66[v46];
                  v93 = *buf;
                  v94 = v97;
                  v95 = v98;
                  [(ADLKTOpticalFlow *)self _doSolverWithCommandBuffer:bufferCopy currentFeatures:v67 currentDerivitive:v68 previousFeatures:v69 previousDerivitive:v70 in_uv_tex:v71 out_uv_tex:v85 out_w_tex:v62 uniforms:v91 cropSizeRatio:&v93];

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
                v73 = mapCopy;

                v72 = v73;
              }

              v74 = [(MTLTexture *)uv_tex[v37][v46] newTextureViewWithPixelFormat:53];
              v75 = [v79 objectAtIndexedSubscript:v46];
              v76 = [v75 newTextureViewWithPixelFormat:53];

              [(ADLKTOpticalFlow *)self _doNLRegularizationWithCommandBuffer:bufferCopy in_uv_tex:v74 join_tex:v76 w_tex:v91 out_uv_tex:v72 cropSizeRatio:v85];
              v37 ^= 1uLL;
            }

            v45 = v43 <= 1;
            v43 = v46;
          }

          while (!v45);
        }

        confidenceMapCopy = v84;
        if (v84)
        {
          [(ADLKTOpticalFlow *)self _computeConfidence:bufferCopy shiftMap:mapCopy outConfidenceMap:v84 cropSizeRatio:v85];
        }

        kdebug_trace();
        pyramidsArrayCopy = v79;
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

- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)buffer grayscaleTexture:(id)texture validBufferRect:(CGRect)rect outPyramidsArray:(id)array outFeaturesArray:(id)featuresArray outDerivitiveArray:(id)derivitiveArray outMeanIntensityAtCoarsestScale:(id)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v44 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  textureCopy = texture;
  arrayCopy = array;
  featuresArrayCopy = featuresArray;
  derivitiveArrayCopy = derivitiveArray;
  scaleCopy = scale;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectIsNull(v45))
  {
    width = [textureCopy width];
    height = [textureCopy height];
    x = 0.0;
    y = 0.0;
  }

  if (x == 0.0 && y == 0.0)
  {
    if (width <= [textureCopy width] && height <= objc_msgSend(textureCopy, "height"))
    {
      width = [textureCopy width];
      height = [textureCopy height];
      *buf = 335682684;
      v40 = 0u;
      v41 = 0u;
      kdebug_trace();
      if ([textureCopy pixelFormat] == 10)
      {
        v29 = height;
        v30 = width;
        *&v31 = v30 / width;
        *(&v31 + 1) = v29 / height;
        v38 = v31;
        [(ADLKTOpticalFlow *)self _createImagePyramidWithCommandBuffer:bufferCopy in_tex:textureCopy cropSizeRatio:arrayCopy outPyramidsArray:scaleCopy outMeanIntensityAtCoarsestScale:0 error:?];
        if (self->_nscales < 1)
        {
          v25 = 0;
        }

        else
        {
          v37 = scaleCopy;
          v32 = (self->_nscales & 0x7FFFFFFF) + 1;
          do
          {
            v33 = [arrayCopy objectAtIndexedSubscript:v32 - 2];
            v34 = [featuresArrayCopy objectAtIndexedSubscript:v32 - 2];
            [(ADLKTOpticalFlow *)self _computeFeaturesWithCommandBuffer:bufferCopy cropSizeRatio:v33 in_tex:v34 out_tex:v38];

            v35 = [featuresArrayCopy objectAtIndexedSubscript:v32 - 2];
            v36 = [derivitiveArrayCopy objectAtIndexedSubscript:v32 - 2];
            [(ADLKTOpticalFlow *)self _computeFeaturesDerivativesWithCommandBuffer:bufferCopy cropSizeRatio:v35 in_tex:v36 out_tex:v38];

            --v32;
          }

          while (v32 > 1);
          v25 = 0;
          scaleCopy = v37;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v42 = 134217984;
          pixelFormat = [textureCopy pixelFormat];
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

- (int64_t)encodePyramidFeaturesToCommandBuffer:(id)buffer colorTexture:(id)texture outPyramidsArray:(id)array outFeaturesArray:(id)featuresArray outDerivitiveArray:(id)derivitiveArray
{
  v22 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  textureCopy = texture;
  arrayCopy = array;
  featuresArrayCopy = featuresArray;
  derivitiveArrayCopy = derivitiveArray;
  if ([textureCopy pixelFormat] == 80)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_computePipelines[0]];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:self->_grayscaleTexture atIndex:1];
    +[ADMetalUtils dispatchCommandEncoder:pipeline:width:height:](ADMetalUtils, "dispatchCommandEncoder:pipeline:width:height:", computeCommandEncoder, self->_computePipelines[0], [textureCopy width], objc_msgSend(textureCopy, "height"));
    [computeCommandEncoder endEncoding];
    v18 = [(ADLKTOpticalFlow *)self encodePyramidFeaturesToCommandBuffer:bufferCopy grayscaleTexture:self->_grayscaleTexture validBufferRect:arrayCopy outPyramidsArray:featuresArrayCopy outFeaturesArray:derivitiveArrayCopy outDerivitiveArray:0 outMeanIntensityAtCoarsestScale:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      pixelFormat = [textureCopy pixelFormat];
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not supported pixel format: %lu", &v20, 0xCu);
    }

    v18 = -22951;
  }

  return v18;
}

- (ADLKTOpticalFlow)initWithDevice:(id)device inputSize:(CGSize)size config:(id *)config confidenceParameters:(id)parameters
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  parametersCopy = parameters;
  v39.receiver = self;
  v39.super_class = ADLKTOpticalFlow;
  v14 = [(ADLKTOpticalFlow *)&v39 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    v38 = deviceCopy;
    v14->_resX = width;
    v14->_resY = height;
    var0 = config->var0;
    v14->_nscales = config->var0;
    v14->_reducedMemoryConsumption = config->var10;
    if (var0)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = [config->var1 objectAtIndexedSubscript:v18];
        v15->_nwarpings[v18] = [v20 unsignedIntValue];

        v18 = v19++;
      }

      while (v16->_nscales > v18);
    }

    v16->_useNonLocalRegularization = config->var2;
    v16->_nlreg_radius = config->var3;
    v16->_nlreg_padding = config->var4;
    v16->_nlreg_sigma_l = config->var5;
    v16->_nlreg_sigma_c = config->var6;
    v16->_nlreg_sigma_w = config->var7;
    v16->_firstScaleStride = config->var9;
    objc_storeStrong(&v15->_device, device);
    deviceCopy = v38;
    height = [ADMetalUtils textureForSize:1278226488 pixelFormat:v16->_device metalDevice:width, height];
    grayscaleTexture = v16->_grayscaleTexture;
    v16->_grayscaleTexture = height;

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

    objc_storeStrong(&v15->_confidenceParameters, parameters);
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

- (ADLKTOpticalFlow)initWithDevice:(id)device inputSize:(CGSize)size config:(id *)config
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  v10 = objc_opt_new();
  var1 = config->var1;
  v15[0] = config->var0;
  v12 = var1;
  v15[1] = v12;
  v13 = *&config->var6;
  v16 = *&config->var2;
  *v17 = v13;
  *&v17[13] = *(&config->var8 + 5);
  if (self)
  {
    self = [(ADLKTOpticalFlow *)self initWithDevice:deviceCopy inputSize:v15 config:v10 confidenceParameters:width, height];
  }

  else
  {
  }

  return self;
}

- (ADLKTOpticalFlow)initWithDevice:(id)device inputSize:(CGSize)size scales:(unint64_t)scales
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  +[ADLKTOpticalFlow defaultConfig];
  scalesCopy = scales;
  v12[0] = scales;
  v10 = v16;
  v12[1] = v10;
  v13 = v17;
  *v14 = *v18;
  *&v14[13] = *&v18[13];
  if (self)
  {
    self = [(ADLKTOpticalFlow *)self initWithDevice:deviceCopy inputSize:v12 config:width, height];
  }

  else
  {
  }

  return self;
}

- (BOOL)_setupBufferAndReturnErrorWithDevice:(id)device error:(id *)error
{
  deviceCopy = device;
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
      v16 = [deviceCopy newBufferWithLength:8 * v13 * self->_resY options:0];
      v17 = self->_Adiagb_buf[0];
      self->_Adiagb_buf[0] = v16;

      if (self->_Adiagb_buf[0])
      {
        v18 = 2 * v13;
        v19 = [deviceCopy newBufferWithLength:v18 * self->_resY options:0];
        v20 = self->_Ixy_buf[0];
        self->_Ixy_buf[0] = v19;

        if (self->_Ixy_buf[0])
        {
          if (reducedMemoryConsumption || (v21 = [deviceCopy newBufferWithLength:v15 * self->_resY options:0], v22 = self->_Adiagb_buf[1], self->_Adiagb_buf[1] = v21, v22, self->_Adiagb_buf[1]) && (v23 = objc_msgSend(deviceCopy, "newBufferWithLength:options:", v18 * self->_resY, 0), v24 = self->_Ixy_buf[1], self->_Ixy_buf[1] = v23, v24, self->_Ixy_buf[1]))
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
                    v45 = [ADMetalUtils bindPixelBufferToMTL2DTexture:self->_w_pxbuf pixelFormat:25 textureSize:0 plane:self->_device metalDevice:error error:v40, v37];
                    v46 = w_tex[v36];
                    w_tex[v36] = v45;

                    if (!w_tex[v36])
                    {
                      break;
                    }
                  }

                  pyramid_size = [ADMetalUtils bindPixelBufferToMTL2DTexture:self->_uv_pxbuf[0] pixelFormat:65 textureSize:0 plane:self->_device metalDevice:error error:v40, v37, pyramid_size];
                  v48 = (*uv_tex)[v36];
                  (*uv_tex)[v36] = pyramid_size;

                  v49 = (*uv_tex)[v36];
                  if (!v49)
                  {
                    break;
                  }

                  v50 = [(MTLTexture *)v49 newTextureViewWithPixelFormat:53];
                  v51 = (*uv_u32_alias_tex)[v36];
                  (*uv_u32_alias_tex)[v36] = v50;

                  v52 = [ADMetalUtils bindPixelBufferToMTL2DTexture:self->_uv_pxbuf[1] pixelFormat:65 textureSize:0 plane:self->_device metalDevice:error error:v40, v37];
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
    threadExecutionWidth = [v12 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (threadExecutionWidth > maxThreadExecutionWidth)
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

- (int)_computeConfidence:(id)confidence shiftMap:(id)map outConfidenceMap:(id)confidenceMap cropSizeRatio:
{
  v17 = v5;
  mapCopy = map;
  confidenceMapCopy = confidenceMap;
  computeCommandEncoder = [confidence computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[10]];
  [computeCommandEncoder setTexture:self->_gradientNormConfidenceTex atIndex:0];
  [computeCommandEncoder setTexture:self->_conditionNumberConfidenceTex atIndex:1];
  [computeCommandEncoder setTexture:mapCopy atIndex:2];
  [computeCommandEncoder setTexture:confidenceMapCopy atIndex:3];
  checkFlowInFOV = [(ADLKTConfidenceParameters *)self->_confidenceParameters checkFlowInFOV];
  [computeCommandEncoder setBytes:&checkFlowInFOV length:1 atIndex:0];
  width = [confidenceMapCopy width];
  height = [confidenceMapCopy height];
  LODWORD(v14) = vcvtps_s32_f32(width * v17.f32[0]);
  LODWORD(v15) = vcvtps_s32_f32(vmuls_lane_f32(height, v17, 1));
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder pipeline:self->_computePipelines[10] width:v14 height:v15];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_doSolverWithCommandBuffer:(id)buffer currentFeatures:(id)features currentDerivitive:(id)derivitive previousFeatures:(id)previousFeatures previousDerivitive:(id)previousDerivitive in_uv_tex:(id)in_uv_tex out_uv_tex:(id)out_uv_tex out_w_tex:(id)self0 uniforms:(id *)self1 cropSizeRatio:
{
  v38 = v11;
  bufferCopy = buffer;
  featuresCopy = features;
  derivitiveCopy = derivitive;
  previousFeaturesCopy = previousFeatures;
  previousDerivitiveCopy = previousDerivitive;
  in_uv_texCopy = in_uv_tex;
  out_uv_texCopy = out_uv_tex;
  out_w_texCopy = out_w_tex;
  var0 = uniforms->var0;
  var1 = uniforms->var1;
  if (uniforms[1].var5)
  {
    v21 = self->_gradientNormConfidenceTex;
  }

  else
  {
    v21 = 0;
  }

  v41 = featuresCopy;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[6]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:featuresCopy atIndex:1];
  [computeCommandEncoder setTexture:previousFeaturesCopy atIndex:2];
  [computeCommandEncoder setTexture:derivitiveCopy atIndex:3];
  [computeCommandEncoder setTexture:previousDerivitiveCopy atIndex:4];
  [computeCommandEncoder setTexture:v21 atIndex:5];
  [computeCommandEncoder setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [computeCommandEncoder setBytes:uniforms length:48 atIndex:2];
  v23 = ceil((var0 * v39.f32[0]) * 0.5);
  v24 = ceil(vmuls_lane_f32(var1, v39, 1) * 0.5);
  v25 = (v23 + v23);
  v26 = (v24 + v24);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder pipeline:self->_computePipelines[6] width:v25 height:v26];
  [computeCommandEncoder endEncoding];
  Adiagb_buf = self->_Adiagb_buf;
  Ixy_buf = self->_Ixy_buf;

  if (!self->_reducedMemoryConsumption)
  {
    computeCommandEncoder2 = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder2 setComputePipelineState:self->_computePipelines[7]];
    [computeCommandEncoder2 setBuffer:*Adiagb_buf offset:0 atIndex:0];
    [computeCommandEncoder2 setBuffer:*Ixy_buf offset:0 atIndex:1];
    [computeCommandEncoder2 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
    [computeCommandEncoder2 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
    [computeCommandEncoder2 setBytes:uniforms length:48 atIndex:4];
    LODWORD(v30) = vcvtps_u32_f32(v26 / uniforms[1].var3);
    [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder2 pipeline:self->_computePipelines[7] width:v25 height:v30];
    [computeCommandEncoder2 endEncoding];
  }

  v39.i32[0] = v26;
  if (uniforms[1].var5)
  {
    v31 = self->_conditionNumberConfidenceTex;
  }

  else
  {
    v31 = 0;
  }

  reducedMemoryConsumption = self->_reducedMemoryConsumption;
  computeCommandEncoder3 = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder3 setComputePipelineState:self->_computePipelines[8]];
  reducedMemoryConsumption ^= 1uLL;
  [computeCommandEncoder3 setBuffer:Adiagb_buf[reducedMemoryConsumption] offset:0 atIndex:0];
  [computeCommandEncoder3 setBuffer:Ixy_buf[reducedMemoryConsumption] offset:0 atIndex:1];
  [computeCommandEncoder3 setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder3 setTexture:out_uv_texCopy atIndex:1];
  [computeCommandEncoder3 setTexture:out_w_texCopy atIndex:2];
  [computeCommandEncoder3 setTexture:v31 atIndex:3];
  [computeCommandEncoder3 setBytes:uniforms length:48 atIndex:2];
  [computeCommandEncoder3 setBytes:&self->_reducedMemoryConsumption length:1 atIndex:3];
  var3 = uniforms[1].var3;
  LODWORD(v35) = vcvtps_u32_f32(v25 / var3);
  LODWORD(v36) = vcvtps_u32_f32(v40 / var3);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder3 pipeline:self->_computePipelines[8] width:v35 height:v36];
  [computeCommandEncoder3 endEncoding];

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
  width = [v13 width];
  height = [v13 height];
  v16 = *(v11 + 264);
  width2 = [v29 width];
  height2 = [v29 height];
  *&v19 = (width2 - 1) / (width * v8 - 1);
  *(&v19 + 1) = (height2 - 1) / (height * v8 - 1);
  *&retstr->var2 = 0u;
  *&retstr[1].var1 = 0u;
  *&retstr[2].var0 = 0;
  retstr->var0 = width * v8;
  retstr->var1 = height * v8;
  retstr->var2 = (width * v8 - 1 + v16) / v16 * v16;
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

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer cropSizeRatio:(id)ratio in_tex:(id)in_tex out_tex:
{
  v18 = v5;
  ratioCopy = ratio;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[5]];
  [computeCommandEncoder setTexture:ratioCopy atIndex:0];
  [computeCommandEncoder setTexture:in_texCopy atIndex:1];
  width = [ratioCopy width];
  height = [ratioCopy height];
  v14 = ceil((width * v18.f32[0]) * 0.5);
  v15 = (v14 + v14);
  v16 = ceil(vmuls_lane_f32(height, v18, 1) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder pipeline:self->_computePipelines[5] width:v15 height:(v16 + v16)];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeFeaturesWithCommandBuffer:(id)buffer cropSizeRatio:(id)ratio in_tex:(id)in_tex out_tex:
{
  v18 = v5;
  ratioCopy = ratio;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[4]];
  [computeCommandEncoder setTexture:ratioCopy atIndex:0];
  [computeCommandEncoder setTexture:in_texCopy atIndex:1];
  width = [ratioCopy width];
  height = [ratioCopy height];
  v14 = ceil((width * v18.f32[0]) * 0.5);
  v15 = (v14 + v14);
  v16 = ceil(vmuls_lane_f32(height, v18, 1) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder pipeline:self->_computePipelines[4] width:v15 height:(v16 + v16)];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (BOOL)_createImagePyramidWithCommandBuffer:(id)buffer in_tex:(id)in_tex cropSizeRatio:(id)ratio outPyramidsArray:(id)array outMeanIntensityAtCoarsestScale:(id *)scale error:
{
  v11 = v7;
  bufferCopy = buffer;
  in_texCopy = in_tex;
  ratioCopy = ratio;
  arrayCopy = array;
  width = [in_texCopy width];
  v19 = [ratioCopy objectAtIndexedSubscript:0];
  width2 = [v19 width];

  if (width <= width2)
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    [blitCommandEncoder setLabel:@"lkt_copyToPyramid"];
    v23 = [ratioCopy objectAtIndexedSubscript:0];
    [blitCommandEncoder copyFromTexture:in_texCopy toTexture:v23];
  }

  else
  {
    blitCommandEncoder = [bufferCopy computeCommandEncoder];
    [blitCommandEncoder setComputePipelineState:self->_computePipelines[1]];
    [blitCommandEncoder setTexture:in_texCopy atIndex:0];
    v22 = [ratioCopy objectAtIndexedSubscript:0];
    [blitCommandEncoder setTexture:v22 atIndex:1];

    -[ADLKTOpticalFlow dispatchCommandEncoder:pipeline:width:height:](self, "dispatchCommandEncoder:pipeline:width:height:", blitCommandEncoder, self->_computePipelines[1], [in_texCopy width], objc_msgSend(in_texCopy, "height"));
  }

  [blitCommandEncoder endEncoding];

  [(ADLKTOpticalFlow *)self _createImagePyramidWithCommandBuffer:bufferCopy cropSizeRatio:ratioCopy inOutPyramidsArray:arrayCopy outMeanIntensityAtCoarsestScale:scale error:v11];
  return 1;
}

- (BOOL)_createImagePyramidWithCommandBuffer:(id)buffer cropSizeRatio:(id)ratio inOutPyramidsArray:(id)array outMeanIntensityAtCoarsestScale:(id *)scale error:
{
  v9 = v6;
  bufferCopy = buffer;
  ratioCopy = ratio;
  arrayCopy = array;
  if (self->_nscales >= 2)
  {
    v14 = 2;
    v15 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v27 = _Q0;
    do
    {
      v21 = [ratioCopy objectAtIndexedSubscript:{v14 - 2, *&v27}];
      v22 = [ratioCopy objectAtIndexedSubscript:v15];
      v23 = COERCE_DOUBLE(vdiv_f32(vcvt_f32_f64(vaddq_f64(*(&self->_nlreg_radius + v14), v27)), vcvt_f32_f64(vaddq_f64(self->_pyramid_size[v15], v27))));
      if (self->_nscales - 1 == v15)
      {
        v24 = arrayCopy;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      [(ADLKTOpticalFlow *)self _downscale2XWithCommandBuffer:bufferCopy in_tex:v21 out_tex:v22 scaling_factor:v25 cropSizeRatio:v23 outMeanIntensity:v9];

      v15 = v14++;
    }

    while (self->_nscales > v15);
  }

  return 1;
}

- (void)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex cropSizeRatio:
{
  v30 = v7;
  in_uv_texCopy = in_uv_tex;
  join_texCopy = join_tex;
  w_texCopy = w_tex;
  out_uv_texCopy = out_uv_tex;
  v31[1] = 0;
  v17.i64[0] = *&self->_nlreg_sigma_l;
  v31[0] = *&self->_nlreg_radius;
  v17.i32[3] = LODWORD(self->_nlreg_sigma_w);
  v18 = vaddq_f32(v17, v17);
  __asm { FMOV            V1.4S, #1.0 }

  v24 = vdivq_f32(_Q1, v18);
  v24.i32[2] = v24.i32[1];
  v32 = v24;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[9]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:join_texCopy atIndex:1];
  [computeCommandEncoder setTexture:w_texCopy atIndex:2];
  [computeCommandEncoder setTexture:out_uv_texCopy atIndex:3];
  [computeCommandEncoder setBytes:v31 length:32 atIndex:0];
  width = [in_uv_texCopy width];
  width2 = [in_uv_texCopy width];
  LODWORD(v28) = vcvtpd_s64_f64((v30 * width) * 0.5);
  LODWORD(v29) = vcvtpd_s64_f64((v30 * width2) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder pipeline:self->_computePipelines[9] width:v28 height:v29];
  [computeCommandEncoder endEncoding];
}

- (int)_downscale2XWithCommandBuffer:(ADLKTOpticalFlow *)self in_tex:(SEL)in_tex out_tex:(id)out_tex scaling_factor:(id)scaling_factor cropSizeRatio:(id)ratio outMeanIntensity:(id)intensity
{
  v23 = v7;
  v9 = v6;
  scaling_factorCopy = scaling_factor;
  ratioCopy = ratio;
  v25 = v9;
  intensityCopy = intensity;
  computeCommandEncoder = [out_tex computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[3]];
  [computeCommandEncoder setTexture:scaling_factorCopy atIndex:0];
  [computeCommandEncoder setTexture:ratioCopy atIndex:1];
  [computeCommandEncoder setBytes:&v25 length:8 atIndex:0];
  *[(MTLBuffer *)self->_computeMeanIntensityBuffer contents]= intensityCopy != 0;
  [computeCommandEncoder setBuffer:self->_computeMeanIntensityBuffer offset:0 atIndex:1];
  if (intensityCopy)
  {
    [computeCommandEncoder setBuffer:intensityCopy offset:0 atIndex:2];
  }

  else
  {
    [computeCommandEncoder setBuffer:self->_meanIntensityBuffer offset:0 atIndex:2];
  }

  width = [ratioCopy width];
  height = [ratioCopy height];
  v19 = ceil((width * v24.f32[0]) * 0.5);
  v20 = (v19 + v19);
  v21 = ceil(vmuls_lane_f32(height, v24, 1) * 0.5);
  [(ADLKTOpticalFlow *)self dispatchCommandEncoder:computeCommandEncoder pipeline:self->_computePipelines[3] width:v20 height:(v21 + v21)];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex
{
  uv_texCopy = uv_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[2]];
  [computeCommandEncoder setTexture:uv_texCopy atIndex:0];
  +[ADMetalUtils dispatchCommandEncoder:pipeline:width:height:](ADMetalUtils, "dispatchCommandEncoder:pipeline:width:height:", computeCommandEncoder, self->_computePipelines[2], [uv_texCopy width], objc_msgSend(uv_texCopy, "height"));
  [computeCommandEncoder endEncoding];
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

+ (CGSize)getNextPyramidLevelSize:(CGSize)size
{
  height = size.height;
  v4 = size.width & 1;
  if (size.width < 0)
  {
    v4 = -v4;
  }

  v5 = size.height & 1;
  if (height < 0)
  {
    v5 = -v5;
  }

  v6 = v4 + size.width;
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