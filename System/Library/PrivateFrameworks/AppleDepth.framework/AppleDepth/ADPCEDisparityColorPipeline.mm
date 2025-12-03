@interface ADPCEDisparityColorPipeline
- (ADPCEDisparityColorPipeline)initWithParameters:(id)parameters inputSource:(unint64_t)source metalDevice:(id)device;
- (float)disparityScaleForLayout:(unint64_t)layout;
- (int64_t)adjustForEngine:(unint64_t)engine;
- (int64_t)encodeDisparityPostprocessingToCommandBuffer:(id)buffer input:(id)input output:(id)output;
- (int64_t)encodeDisparityPreprocessingToCommandBuffer:(id)buffer input:(id)input normalizationMultiplier:(float)multiplier normalizationOffset:(float)offset invalidValue:(unsigned __int16)value rotation:(int64_t)rotation output:(id)output;
- (int64_t)rebuildMetalPreprocessingKernels;
@end

@implementation ADPCEDisparityColorPipeline

- (int64_t)rebuildMetalPreprocessingKernels
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"default" withExtension:@"metallib" subdirectory:0];

  metalDevice = self->_metalDevice;
  v63 = 0;
  v6 = [(MTLDevice *)metalDevice newLibraryWithURL:v4 error:&v63];
  v7 = v63;
  if (v6)
  {
    disparityInput = [(ADEspressoPCEDisparityColorInferenceDescriptor *)self->_inferenceDesc disparityInput];
    imageDescriptor = [disparityInput imageDescriptor];
    if ([imageDescriptor pixelFormat] == 1751411059)
    {
      v10 = 16;
    }

    else
    {
      v10 = 32;
    }

    v68 = xmmword_240406E50;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADPCEDisparityColorPipelineUtils::preprocessPCEDisparityToF%d", v10];
    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADPCEDisparityColorPipelineUtils::preprocessF%dPCEDisparity", v10];
    [v11 setConstantValue:&v68 type:33 withName:@"RotationMode"];
    v62 = v7;
    v13 = [v6 newFunctionWithName:v12 constantValues:v11 error:&v62];
    v14 = v62;

    if (v13)
    {
      v15 = self->_metalDevice;
      v61 = v14;
      v16 = [(MTLDevice *)v15 newComputePipelineStateWithFunction:v13 error:&v61];
      v17 = v61;

      v18 = self->_preprocessPipelineForRawPCE[0];
      self->_preprocessPipelineForRawPCE[0] = v16;

      if (v17)
      {
LABEL_7:
        v14 = v17;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v52 = [v17 description];
          *buf = 138412546;
          v65 = v12;
          v66 = 2112;
          v67 = v52;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create compute pipeline for %@: %@", buf, 0x16u);
        }

        goto LABEL_44;
      }

      v60 = 0;
      v20 = [v6 newFunctionWithName:v56 constantValues:v11 error:&v60];
      v14 = v60;

      if (!v20 || v14)
      {
        goto LABEL_41;
      }

      v21 = self->_metalDevice;
      v59 = 0;
      v22 = [(MTLDevice *)v21 newComputePipelineStateWithFunction:v20 error:&v59];
      v14 = v59;
      v23 = self->_preprocessPipelineForFloatPCE[0];
      self->_preprocessPipelineForFloatPCE[0] = v22;

      if (v14)
      {
        goto LABEL_16;
      }

      [v11 setConstantValue:&v68 + 4 type:33 withName:@"RotationMode"];
      v62 = 0;
      v13 = [v6 newFunctionWithName:v12 constantValues:v11 error:&v62];
      v14 = v62;
      if (v13)
      {
        v24 = self->_metalDevice;
        v61 = v14;
        v25 = [(MTLDevice *)v24 newComputePipelineStateWithFunction:v13 error:&v61];
        v17 = v61;

        v26 = self->_preprocessPipelineForRawPCE[1];
        self->_preprocessPipelineForRawPCE[1] = v25;

        if (v17)
        {
          goto LABEL_7;
        }

        v60 = 0;
        v20 = [v6 newFunctionWithName:v56 constantValues:v11 error:&v60];
        v14 = v60;

        if (!v20 || v14)
        {
          goto LABEL_41;
        }

        v27 = self->_metalDevice;
        v59 = 0;
        v28 = [(MTLDevice *)v27 newComputePipelineStateWithFunction:v20 error:&v59];
        v14 = v59;
        v29 = self->_preprocessPipelineForFloatPCE[1];
        self->_preprocessPipelineForFloatPCE[1] = v28;

        if (v14)
        {
          goto LABEL_16;
        }

        [v11 setConstantValue:&v68 + 8 type:33 withName:@"RotationMode"];
        v62 = 0;
        v13 = [v6 newFunctionWithName:v12 constantValues:v11 error:&v62];
        v14 = v62;
        if (v13)
        {
          v30 = self->_metalDevice;
          v61 = v14;
          v31 = [(MTLDevice *)v30 newComputePipelineStateWithFunction:v13 error:&v61];
          v17 = v61;

          v32 = self->_preprocessPipelineForRawPCE[2];
          self->_preprocessPipelineForRawPCE[2] = v31;

          if (v17)
          {
            goto LABEL_7;
          }

          v60 = 0;
          v20 = [v6 newFunctionWithName:v56 constantValues:v11 error:&v60];
          v14 = v60;

          if (!v20 || v14)
          {
            goto LABEL_41;
          }

          v33 = self->_metalDevice;
          v59 = 0;
          v34 = [(MTLDevice *)v33 newComputePipelineStateWithFunction:v20 error:&v59];
          v14 = v59;
          v35 = self->_preprocessPipelineForFloatPCE[2];
          self->_preprocessPipelineForFloatPCE[2] = v34;

          if (v14)
          {
            goto LABEL_16;
          }

          [v11 setConstantValue:&v68 | 0xC type:33 withName:@"RotationMode"];
          v62 = 0;
          v13 = [v6 newFunctionWithName:v12 constantValues:v11 error:&v62];
          v14 = v62;
          if (v13)
          {
            v36 = self->_metalDevice;
            v61 = v14;
            v37 = [(MTLDevice *)v36 newComputePipelineStateWithFunction:v13 error:&v61];
            v17 = v61;

            v38 = self->_preprocessPipelineForRawPCE[3];
            self->_preprocessPipelineForRawPCE[3] = v37;

            if (v17)
            {
              goto LABEL_7;
            }

            v60 = 0;
            v20 = [v6 newFunctionWithName:v56 constantValues:v11 error:&v60];
            v14 = v60;

            if (v20 && !v14)
            {
              v39 = self->_metalDevice;
              v59 = 0;
              v40 = [(MTLDevice *)v39 newComputePipelineStateWithFunction:v20 error:&v59];
              v14 = v59;
              v41 = self->_preprocessPipelineForFloatPCE[3];
              self->_preprocessPipelineForFloatPCE[3] = v40;

              if (!v14)
              {

                v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADPCEDisparityColorPipelineUtils::postprocessF%dDisparity", v10];
                v58 = 0;
                v43 = [v6 newFunctionWithName:v42 constantValues:v11 error:&v58];
                v44 = v58;
                v14 = v44;
                if (!v43 || v44)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    v55 = [v14 description];
                    *buf = 138412546;
                    v65 = v42;
                    v66 = 2112;
                    v67 = v55;
                    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find metal function %@: %@", buf, 0x16u);
                  }
                }

                else
                {
                  v45 = self->_metalDevice;
                  v57 = 0;
                  v46 = [(MTLDevice *)v45 newComputePipelineStateWithFunction:v43 error:&v57];
                  v14 = v57;
                  postprocessPipeline = self->_postprocessPipeline;
                  self->_postprocessPipeline = v46;

                  if (!v14)
                  {
                    v19 = 0;
                    goto LABEL_50;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    v48 = [v14 description];
                    *buf = 138412546;
                    v65 = v42;
                    v66 = 2112;
                    v67 = v48;
                    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create compute pipeline for %@: %@", buf, 0x16u);
                  }
                }

                v19 = -22950;
LABEL_50:

                goto LABEL_45;
              }

LABEL_16:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v54 = [v14 description];
                *buf = 138412546;
                v65 = v56;
                v66 = 2112;
                v67 = v54;
                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create compute pipeline for %@: %@", buf, 0x16u);
              }

LABEL_43:

LABEL_44:
              v19 = -22950;
LABEL_45:

              v7 = v14;
              goto LABEL_46;
            }

LABEL_41:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v53 = [v14 description];
              *buf = 138412546;
              v65 = v56;
              v66 = 2112;
              v67 = v53;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find metal function %@: %@", buf, 0x16u);
            }

            goto LABEL_43;
          }
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v49 = [v14 description];
      *buf = 138412546;
      v65 = v12;
      v66 = 2112;
      v67 = v49;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find metal function %@: %@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v51 = [v7 description];
    *buf = 138412290;
    v65 = v51;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot load metal library: %@", buf, 0xCu);
  }

  v19 = -22950;
LABEL_46:

  return v19;
}

- (float)disparityScaleForLayout:(unint64_t)layout
{
  if ([(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters trainingWidth])
  {
    colorInput = [(ADEspressoPCEDisparityColorInferenceDescriptor *)self->_inferenceDesc colorInput];
    imageDescriptor = [colorInput imageDescriptor];
    [imageDescriptor sizeForLayout:layout];
    v8 = v7 / [(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters trainingWidth];
  }

  else
  {
    v8 = 1.0;
  }

  [(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters disparityScaleForModelZoom];
  return v8 * v9;
}

- (int64_t)encodeDisparityPostprocessingToCommandBuffer:(id)buffer input:(id)input output:(id)output
{
  v36 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  inputCopy = input;
  outputCopy = output;
  kdebug_trace();
  disparityOutput = [(ADEspressoPCEDisparityColorInferenceDescriptor *)self->_inferenceDesc disparityOutput];
  imageDescriptor = [disparityOutput imageDescriptor];
  pixelFormat = [imageDescriptor pixelFormat];

  if (pixelFormat == 1751411059)
  {
    if ([inputCopy pixelFormat] != 25)
    {
      goto LABEL_3;
    }
  }

  else if ([inputCopy pixelFormat] != 55)
  {
LABEL_3:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      disparityOutput2 = [(ADEspressoPCEDisparityColorInferenceDescriptor *)self->_inferenceDesc disparityOutput];
      imageDescriptor2 = [disparityOutput2 imageDescriptor];
      PixelBufferUtils::pixelFormatAsString([imageDescriptor2 pixelFormat], &__p);
      v16 = SHIBYTE(v30);
      v17 = __p;
      pixelFormat2 = [inputCopy pixelFormat];
      p_p = &__p;
      if (v16 < 0)
      {
        p_p = v17;
      }

      *buf = 136446466;
      v33 = p_p;
      v34 = 1024;
      v35 = pixelFormat2;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expected output pixelbuffer format (%{public}s) does not match provided texture format (%d)", buf, 0x12u);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }
    }

LABEL_15:
    v25 = -22953;
    goto LABEL_20;
  }

  pixelFormat3 = [inputCopy pixelFormat];
  if (pixelFormat3 != [outputCopy pixelFormat])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 67109376;
      HIDWORD(__p) = [inputCopy pixelFormat];
      v28 = 1024;
      pixelFormat4 = [outputCopy pixelFormat];
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Input texture format (%d) does not match output texture format (%d)", &__p, 0xEu);
    }

    goto LABEL_15;
  }

  [(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters outputDisparityBias];
  v30 = v21;
  -[ADPCEDisparityColorPipeline disparityScaleForLayout:](self, "disparityScaleForLayout:", [MEMORY[0x277CED0C0] layoutForSize:{objc_msgSend(outputCopy, "width"), objc_msgSend(outputCopy, "height")}]);
  v31 = v22;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  v24 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_postprocessPipeline];
    [v24 setTexture:inputCopy atIndex:0];
    [v24 setTexture:outputCopy atIndex:1];
    [v24 setBytes:&__p length:28 atIndex:0];
    +[ADMetalUtils dispatchCommandEncoder:pipeline:width:height:](ADMetalUtils, "dispatchCommandEncoder:pipeline:width:height:", v24, self->_postprocessPipeline, [outputCopy width], objc_msgSend(outputCopy, "height"));
    [v24 endEncoding];
    v25 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed getting command encoder", buf, 2u);
    }

    v25 = -22950;
  }

LABEL_20:
  kdebug_trace();

  return v25;
}

- (int64_t)encodeDisparityPreprocessingToCommandBuffer:(id)buffer input:(id)input normalizationMultiplier:(float)multiplier normalizationOffset:(float)offset invalidValue:(unsigned __int16)value rotation:(int64_t)rotation output:(id)output
{
  v54 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  inputCopy = input;
  outputCopy = output;
  LODWORD(v44) = 335681660;
  kdebug_trace();
  pixelFormat = [inputCopy pixelFormat];
  if ([inputCopy pixelFormat] == 25)
  {
    v19 = 1;
  }

  else
  {
    pixelFormat2 = [inputCopy pixelFormat];
    v19 = pixelFormat2 == 55;
    if (pixelFormat != 23 && pixelFormat2 != 55)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = [inputCopy pixelFormat];
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported input texture format %d", buf, 8u);
      }

      v23 = -22951;
      goto LABEL_27;
    }
  }

  v20 = [(ADEspressoPCEDisparityColorInferenceDescriptor *)self->_inferenceDesc disparityInput:bufferCopy];
  imageDescriptor = [v20 imageDescriptor];
  pixelFormat3 = [imageDescriptor pixelFormat];

  if (pixelFormat3 == 1751411059)
  {
    if ([outputCopy pixelFormat] != 25)
    {
      goto LABEL_5;
    }
  }

  else if ([outputCopy pixelFormat] != 55)
  {
LABEL_5:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      disparityInput = [(ADEspressoPCEDisparityColorInferenceDescriptor *)self->_inferenceDesc disparityInput];
      imageDescriptor2 = [disparityInput imageDescriptor];
      PixelBufferUtils::pixelFormatAsString([imageDescriptor2 pixelFormat], buf);
      v39 = SHIBYTE(v48);
      v40 = *buf;
      pixelFormat4 = [outputCopy pixelFormat];
      v42 = buf;
      if (v39 < 0)
      {
        v42 = v40;
      }

      *v50 = 136446466;
      v51 = v42;
      v52 = 1024;
      v53 = pixelFormat4;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expected output pixelbuffer format (%{public}s) does not match provided texture format (%d)", v50, 0x12u);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_6:
    v23 = -22953;
    goto LABEL_27;
  }

  if (v19)
  {
    pixelFormat5 = [inputCopy pixelFormat];
    if (pixelFormat5 != [outputCopy pixelFormat])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = [inputCopy pixelFormat];
        LOWORD(v46) = 1024;
        *(&v46 + 2) = [outputCopy pixelFormat];
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Input texture format (%d) does not match output texture format (%d)", buf, 0xEu);
      }

      goto LABEL_6;
    }
  }

  v26 = 1;
  rotationCopy = rotation;
  if (rotation == 1)
  {
    rotationCopy = 3;
  }

  if (rotation != 3)
  {
    v26 = rotationCopy;
  }

  preprocessPipelineForRawPCE = self->_preprocessPipelineForRawPCE;
  if (pixelFormat != 23)
  {
    preprocessPipelineForRawPCE = self->_preprocessPipelineForFloatPCE;
  }

  v29 = preprocessPipelineForRawPCE[v26];
  [(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters minDisparity];
  LODWORD(v46) = v30;
  [(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters maxDisparity];
  HIDWORD(v46) = v31;
  *buf = multiplier;
  *&buf[4] = offset;
  valueCopy = value;
  [(ADPCEDisparityColorPipelineParameters *)self->_pipelineParameters pceBias];
  v48 = v32;
  -[ADPCEDisparityColorPipeline disparityScaleForLayout:](self, "disparityScaleForLayout:", [MEMORY[0x277CED0C0] layoutForSize:{objc_msgSend(outputCopy, "width"), objc_msgSend(outputCopy, "height")}]);
  v49 = v33;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  v35 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:v29];
    [v35 setTexture:inputCopy atIndex:0];
    [v35 setTexture:outputCopy atIndex:1];
    [v35 setBytes:buf length:28 atIndex:0];
    +[ADMetalUtils dispatchCommandEncoder:pipeline:width:height:](ADMetalUtils, "dispatchCommandEncoder:pipeline:width:height:", v35, v29, [outputCopy width], objc_msgSend(outputCopy, "height"));
    [v35 endEncoding];
    v23 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed getting command encoder", v50, 2u);
    }

    v23 = -22950;
  }

LABEL_27:
  kdebug_trace();

  return v23;
}

- (ADPCEDisparityColorPipeline)initWithParameters:(id)parameters inputSource:(unint64_t)source metalDevice:(id)device
{
  v41 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  deviceCopy = device;
  v34 = 335686912;
  v35 = 0u;
  v36 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v38) = source;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Initializing ADPCEDisparityColorPipeline for input source #%d", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v38) = source;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Initializing ADPCEDisparityColorPipeline for input source #%d", buf, 8u);
  }

  v33.receiver = self;
  v33.super_class = ADPCEDisparityColorPipeline;
  v10 = [(ADPCEDisparityColorPipeline *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_53;
  }

  if (!parametersCopy)
  {
    parametersCopy = objc_opt_new();
  }

  objc_storeStrong(&v10->_pipelineParameters, parametersCopy);
  if (source > 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v38) = source;
      v15 = MEMORY[0x277D86220];
      v16 = "Unsupported input source: %d";
      v17 = 8;
      goto LABEL_59;
    }

LABEL_52:
    v25 = 0;
    goto LABEL_54;
  }

  v12 = [ADNetworkProvider providerForNetwork:*(&off_278CA1400 + source)];
  networkProvider = v10->_networkProvider;
  v10->_networkProvider = v12;

  if (!v10->_networkProvider)
  {
    goto LABEL_52;
  }

  [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters pceBias];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters pceBias];
      *buf = 134217984;
      v38 = v14;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Init with PCE bias value: %f", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters pceBias];
    *buf = 134217984;
    v38 = v27;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Init with PCE bias value: %f", buf, 0xCu);
  }

  [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters outputDisparityBias];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters outputDisparityBias];
      *buf = 134217984;
      v38 = v18;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Init with output disparity bias value: %f", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters outputDisparityBias];
    *buf = 134217984;
    v38 = v28;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Init with output disparity bias value: %f", buf, 0xCu);
  }

  if ([(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters trainingWidth]== -1)
  {
    v19 = [(ADNetworkProvider *)v10->_networkProvider metadataForKey:TRAINING_WIDTH_METADATA_KEY];
    v20 = v19;
    if (v19)
    {
      -[ADPCEDisparityColorPipelineParameters setTrainingWidth:](v10->_pipelineParameters, "setTrainingWidth:", [v19 unsignedLongValue]);
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Reading training width from network", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Reading training width from network", buf, 2u);
      }
    }

    else
    {
      [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters setTrainingWidth:0];
    }
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      trainingWidth = [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters trainingWidth];
      trainingWidth2 = [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters trainingWidth];
      v23 = "";
      if (!trainingWidth2)
      {
        v23 = " (no scaling)";
      }

      *buf = 134218242;
      v38 = *&trainingWidth;
      v39 = 2080;
      v40 = v23;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Init with reference training width value: %ld%s", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    trainingWidth3 = [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters trainingWidth];
    trainingWidth4 = [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters trainingWidth];
    v31 = "";
    if (!trainingWidth4)
    {
      v31 = " (no scaling)";
    }

    *buf = 134218242;
    v38 = *&trainingWidth3;
    v39 = 2080;
    v40 = v31;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Init with reference training width value: %ld%s", buf, 0x16u);
  }

  [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters disparityScaleForModelZoom];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters disparityScaleForModelZoom];
      *buf = 134217984;
      v38 = v24;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Init with disparityScaleForModelZoom value: %f", buf, 0xCu);
      if (deviceCopy)
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_43:
    if (deviceCopy)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  [(ADPCEDisparityColorPipelineParameters *)v10->_pipelineParameters disparityScaleForModelZoom];
  *buf = 134217984;
  v38 = v32;
  _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Init with disparityScaleForModelZoom value: %f", buf, 0xCu);
  if (deviceCopy)
  {
    goto LABEL_50;
  }

LABEL_44:
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Metal device not provided, using default device", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Metal device not provided, using default device", buf, 2u);
  }

  deviceCopy = MTLCreateSystemDefaultDevice();
  if (deviceCopy)
  {
LABEL_50:
    objc_storeStrong(&v10->_metalDevice, deviceCopy);
    if ([(ADPCEDisparityColorPipeline *)v10 adjustForEngine:3])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v15 = MEMORY[0x277D86220];
      v16 = "adjustForEngine failed";
      v17 = 2;
LABEL_59:
      _os_log_error_impl(&dword_2402F6000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
      v25 = 0;
      goto LABEL_54;
    }

LABEL_53:
    v25 = v10;
    goto LABEL_54;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create default metal device", buf, 2u);
  }

  deviceCopy = 0;
  v25 = 0;
LABEL_54:
  kdebug_trace();

  return v25;
}

- (int64_t)adjustForEngine:(unint64_t)engine
{
  v4 = engine - 3;
  v5 = [ADEspressoPCEDisparityColorInferenceDescriptor alloc];
  if (v4 >= 2)
  {
    v6 = 1717856627;
  }

  else
  {
    v6 = 1751411059;
  }

  v7 = [(ADEspressoPCEDisparityColorInferenceDescriptor *)v5 initWithNetworkProvider:self->_networkProvider inputColorFormat:1111970369 disparityFormat:v6];
  inferenceDesc = self->_inferenceDesc;
  self->_inferenceDesc = v7;

  return [(ADPCEDisparityColorPipeline *)self rebuildMetalPreprocessingKernels];
}

@end