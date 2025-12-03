@interface _MFXSpatialScalingEffectEFFECT_NAME_V1
- (_MFXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXSpatialScalingEffectEFFECT_NAME_V1

- (_MFXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  v98.receiver = self;
  v98.super_class = _MFXSpatialScalingEffectEFFECT_NAME_V1;
  v9 = [(_MTLFXEffectBase *)&v98 init];
  objc_storeStrong(&v9->_device, device);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v90 = [v10 pathForResource:@"default" ofType:@"metallib"];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v90];
  v97 = 0;
  v91 = [deviceCopy newLibraryWithURL:v11 error:&v97];
  v12 = v97;

  v9->_inputLinear = 0;
  v9->_inputOutputNormalized = 1;
  v9->_colorTextureFormat = [descriptorCopy colorTextureFormat];
  v9->_outputTextureFormat = [descriptorCopy outputTextureFormat];
  v9->_inputWidth = [descriptorCopy inputWidth];
  v9->_inputHeight = [descriptorCopy inputHeight];
  v9->_outputWidth = [descriptorCopy outputWidth];
  v9->_outputHeight = [descriptorCopy outputHeight];
  colorProcessingMode = [descriptorCopy colorProcessingMode];
  v9->_colorProcessingMode = colorProcessingMode;
  if (colorProcessingMode >= 3)
  {
    goto LABEL_17;
  }

  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  mfxPassDescriptor = v9->_mfxPassDescriptor;
  v9->_mfxPassDescriptor = renderPassDescriptor;

  colorAttachments = [(MTLRenderPassDescriptor *)v9->_mfxPassDescriptor colorAttachments];
  v17 = [colorAttachments objectAtIndexedSubscript:0];
  [v17 setLoadAction:0];

  colorAttachments2 = [(MTLRenderPassDescriptor *)v9->_mfxPassDescriptor colorAttachments];
  v19 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v19 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments3 = [(MTLRenderPassDescriptor *)v9->_mfxPassDescriptor colorAttachments];
  v21 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v21 setStoreAction:1];

  [descriptorCopy colorTextureFormat];
  device = v9->_device;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v9->_inputSRGB = (WORD4(v99) & 0x800) != 0;
  [descriptorCopy outputTextureFormat];
  v23 = v9->_device;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v9->_outputSRGB = (WORD4(v99) & 0x800) != 0;
  if (v9->_inputSRGB)
  {
    colorTextureFormat = [descriptorCopy colorTextureFormat];
    if (((colorTextureFormat - 31) > 0x32 || ((1 << (colorTextureFormat - 31)) & 0x4010000000001) == 0) && colorTextureFormat != 11)
    {
      goto LABEL_17;
    }
  }

  if (v9->_outputSRGB)
  {
    outputTextureFormat = [descriptorCopy outputTextureFormat];
    if (((outputTextureFormat - 31) > 0x32 || ((1 << (outputTextureFormat - 31)) & 0x4010000000001) == 0) && outputTextureFormat != 11)
    {
      goto LABEL_17;
    }
  }

  if (v9->_inputSRGB != v9->_outputSRGB)
  {
    NSLog(&cfstr_SMixedSrgbInpu.isa, "[_MFXSpatialScalingEffectEFFECT_NAME_V1 initWithDevice:descriptor:]");
LABEL_18:
    v26 = 0;
    v27 = v12;
    goto LABEL_19;
  }

  if (v9->_inputSRGB && v9->_colorProcessingMode >= 1)
  {
LABEL_17:
    MTLReportFailure();
    goto LABEL_18;
  }

  v9->_inputContentWidth = [descriptorCopy inputWidth];
  v9->_inputContentHeight = [descriptorCopy inputHeight];
  v9->_use3DPipeline = 1;
  v82 = v10;
  if (([(MTLDeviceSPI *)v9->_device supportsFamily:1001]& 1) != 0)
  {
    v80 = @"MFX_SHARPEN_SHADER_V1_FRAG";
    v81 = @"MFX_SCALE_SHADER_V1_FRAG";
    v78 = @"MFX_Sharpen";
    v79 = @"MFX_Scale";
  }

  else
  {
    name = [(MTLDeviceSPI *)v9->_device name];
    if ([name containsString:@"Intel"])
    {
      v80 = @"MFX_SHARPEN_SHADER_V1_FRAG";
      v81 = @"MFX_SCALE_SHADER_V1_FRAG";
      v78 = @"MFX_Sharpen";
      v79 = @"MFX_Scale";
    }

    else
    {
      v86 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\s\\d{3}\\D+" options:0 error:0];
      v30 = [v86 matchesInString:name options:0 range:{0, objc_msgSend(name, "length")}];
      v31 = [v30 count];

      if (v31 == 1)
      {
        v9->_use3DPipeline = 0;
        v79 = @"MFX_SCALE_SHADER_V1_FP32";
        v80 = @"MFX_SHARPEN_SHADER_V1_FRAG_FP32";
        v81 = @"MFX_SCALE_SHADER_V1_FRAG_FP32";
        v32 = @"MFX_SHARPEN_SHADER_V1_FP32";
      }

      else
      {
        v79 = @"MFX_Scale";
        v80 = @"MFX_SHARPEN_SHADER_V1_FRAG";
        v81 = @"MFX_SCALE_SHADER_V1_FRAG";
        v32 = @"MFX_Sharpen";
      }

      v78 = v32;
    }
  }

  use3DPipeline = v9->_use3DPipeline;
  v9->_colorTextureUsage = 1;
  v34 = !use3DPipeline;
  v35 = 7;
  if (!v34)
  {
    v35 = 5;
  }

  v9->_outputTextureUsage = v35;
  v9->_inputFormat = [descriptorCopy colorTextureFormat];
  v9->_outputFormat = [descriptorCopy outputTextureFormat];
  if (!v9->_outputSRGB)
  {
    outputTextureFormat2 = [descriptorCopy outputTextureFormat];
    goto LABEL_35;
  }

  outputTextureFormat3 = [descriptorCopy outputTextureFormat];
  if (outputTextureFormat3 > 70)
  {
    if (outputTextureFormat3 == 71)
    {
      outputTextureFormat2 = 70;
      goto LABEL_35;
    }

    if (outputTextureFormat3 == 81)
    {
      outputTextureFormat2 = 80;
      goto LABEL_35;
    }

LABEL_59:
    outputTextureFormat2 = 0;
    goto LABEL_35;
  }

  if (outputTextureFormat3 == 11)
  {
    outputTextureFormat2 = 10;
    goto LABEL_35;
  }

  if (outputTextureFormat3 != 31)
  {
    goto LABEL_59;
  }

  outputTextureFormat2 = 30;
LABEL_35:
  v9->_intermediatePixelFormat = outputTextureFormat2;
  v38 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:outputTextureFormat2 width:objc_msgSend(descriptorCopy height:"outputWidth") mipmapped:objc_msgSend(descriptorCopy, "outputHeight"), 0];
  texDesc = v9->_texDesc;
  v9->_texDesc = v38;

  [(MTLTextureDescriptor *)v9->_texDesc setStorageMode:2];
  if (v9->_use3DPipeline)
  {
    v40 = 5;
  }

  else
  {
    v40 = 7;
  }

  [(MTLTextureDescriptor *)v9->_texDesc setUsage:v40];
  v41 = [(MTLDeviceSPI *)v9->_device newTextureWithDescriptor:v9->_texDesc];
  mfxUpscaledTex = v9->_mfxUpscaledTex;
  v9->_mfxUpscaledTex = v41;

  [(MTLTexture *)v9->_mfxUpscaledTex setLabel:@"MetalFX_Upscaled"];
  v87 = [v91 newFunctionWithName:@"FSQuadVertexShader"];
  v83 = [v91 newFunctionWithName:@"MFX_NORMALIZE_SHADER_V1_FRAG"];
  v43 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v43 setLabel:@"MFX_NPRenderPipelineState"];
  [v43 setRasterSampleCount:1];
  [v43 setVertexFunction:v87];
  [v43 setFragmentFunction:v83];
  intermediatePixelFormat = v9->_intermediatePixelFormat;
  colorAttachments4 = [v43 colorAttachments];
  v46 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v46 setPixelFormat:intermediatePixelFormat];

  v47 = v9->_device;
  v96 = v12;
  v48 = [(MTLDeviceSPI *)v47 newRenderPipelineStateWithDescriptor:v43 error:&v96];
  v49 = v96;

  mfxNormPerceptPSO = v9->_mfxNormPerceptPSO;
  v9->_mfxNormPerceptPSO = v48;

  v51 = [v91 newFunctionWithName:v81];
  v52 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v52 setLabel:@"MFX_ScaleRenderPipelineStateV1"];
  [v52 setRasterSampleCount:1];
  [v52 setVertexFunction:v87];
  [v52 setFragmentFunction:v51];
  v53 = v9->_intermediatePixelFormat;
  colorAttachments5 = [v52 colorAttachments];
  v55 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v55 setPixelFormat:v53];

  v56 = v9->_device;
  v95 = v49;
  v57 = [(MTLDeviceSPI *)v56 newRenderPipelineStateWithDescriptor:v52 error:&v95];
  v84 = v51;
  v88 = v95;

  mfxUpscalePSO = v9->_mfxUpscalePSO;
  v9->_mfxUpscalePSO = v57;

  v59 = [v91 newFunctionWithName:v80];
  v60 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v60 setLabel:@"MFX_SharpenRenderPipelineStateV1"];
  [v60 setRasterSampleCount:1];
  [v60 setVertexFunction:v87];
  [v60 setFragmentFunction:v59];
  v61 = v9->_intermediatePixelFormat;
  colorAttachments6 = [v60 colorAttachments];
  v63 = [colorAttachments6 objectAtIndexedSubscript:0];
  [v63 setPixelFormat:v61];

  v64 = v9->_device;
  v94 = v88;
  v65 = [(MTLDeviceSPI *)v64 newRenderPipelineStateWithDescriptor:v60 error:&v94];
  v85 = v59;
  v66 = v94;

  mfxSharpenPSO = v9->_mfxSharpenPSO;
  v9->_mfxSharpenPSO = v65;

  v68 = [v91 newFunctionWithName:v79];
  v69 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v69 setLabel:@"MFX_ScaleComputePipelineState"];
  [v69 setComputeFunction:v68];
  [v69 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  v70 = v9->_device;
  v93 = v66;
  v71 = [(MTLDeviceSPI *)v70 newComputePipelineStateWithDescriptor:v69 error:&v93];
  v89 = v93;

  mfxUpscaleKernel = v9->_mfxUpscaleKernel;
  v9->_mfxUpscaleKernel = v71;

  v73 = [v91 newFunctionWithName:v78];
  v74 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v74 setLabel:@"MFX_SharpenComputePipelineState"];
  [v74 setComputeFunction:v73];
  [v74 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  v75 = v9->_device;
  v92 = v89;
  v76 = [(MTLDeviceSPI *)v75 newComputePipelineStateWithDescriptor:v74 error:&v92];
  v27 = v92;

  mfxSharpenKernel = v9->_mfxSharpenKernel;
  v9->_mfxSharpenKernel = v76;

  if (!v27 && v9->_mfxPassDescriptor && v9->_mfxUpscaledTex && v9->_mfxUpscalePSO && v9->_mfxSharpenPSO && v9->_mfxNormPerceptPSO && v9->_mfxUpscaleKernel && v9->_mfxSharpenKernel && v87 && v83 && v84 && v59)
  {
    [(_MTLFXSpatialScaler *)v9 _emitTelemetry:descriptorCopy forDevice:v9->_device];
    v10 = v82;
    if (MetalFXHUDEnabled() && MetalFXHUDAddTAAUMetrics(void)::onceToken != -1)
    {
      [_MFXSpatialScalingEffectEFFECT_NAME_V1 initWithDevice:descriptor:];
    }

    v26 = v9;
  }

  else
  {
    MTLReportFailure();
    v26 = 0;
    v10 = v82;
  }

LABEL_19:
  return v26;
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  v59 = bufferCopy;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v4 = MetalFXHUDInstanceV3(void)::v3;
  v5 = v4;
  if (v4)
  {
    [v4 markCommandBuffer:v59 component:3];
  }

  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_inputTexture, 0, 0, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    if ([(MTLTexture *)self->_outputTexture storageMode]!= 2)
    {
      MTLReportFailure();
    }
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v71, 0, self, 4, self->super.super.super._encodeID, 0);
  if (MTLTraceEnabled())
  {
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self inputWidth];
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self inputHeight];
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self outputWidth];
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self outputHeight];
    if (MTLTraceEnabled())
    {
      [v59 globalTraceObjectID];
      kdebug_trace();
    }
  }

  colorProcessingMode = self->_colorProcessingMode;
  if (colorProcessingMode)
  {
    if (colorProcessingMode < 1)
    {
      v57 = self->_colorProcessingMode;
      v7 = 0;
      goto LABEL_20;
    }
  }

  else if (self->_inputOutputNormalized)
  {
    if (!self->_inputLinear)
    {
      v7 = 0;
      v57 = 0;
      goto LABEL_20;
    }

    colorProcessingMode = 1;
  }

  else
  {
    colorProcessingMode = 2;
  }

  v57 = colorProcessingMode;
  if (!self->_mfxNormPerceptTex)
  {
    [(MTLTextureDescriptor *)self->_texDesc setWidth:[(MTLTexture *)self->_inputTexture width]];
    [(MTLTextureDescriptor *)self->_texDesc setHeight:[(MTLTexture *)self->_inputTexture height]];
    v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:self->_texDesc];
    mfxNormPerceptTex = self->_mfxNormPerceptTex;
    self->_mfxNormPerceptTex = v8;

    [(MTLTexture *)self->_mfxNormPerceptTex setLabel:@"MetalFX_NormalizePerceptual"];
  }

  v7 = 1;
LABEL_20:
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  memset(v67, 0, sizeof(v67));
  inputContentWidth = self->_inputContentWidth;
  inputContentHeight = self->_inputContentHeight;
  width = [(MTLTexture *)self->_inputTexture width];
  height = [(MTLTexture *)self->_inputTexture height];
  width2 = [(MTLTexture *)self->_outputTexture width];
  height2 = [(MTLTexture *)self->_outputTexture height];
  v16.f32[0] = height;
  v17 = 1.0 / width2;
  v18 = 1.0 / height2;
  *&v68 = v17 * inputContentWidth;
  *(&v68 + 1) = v18 * inputContentHeight;
  *(&v68 + 2) = ((inputContentWidth * 0.5) * v17) + -0.5;
  *(&v68 + 3) = ((inputContentHeight * 0.5) * v18) + -0.5;
  v16.f32[1] = width;
  __asm { FMOV            V0.2S, #1.0 }

  v24 = vdiv_f32(_D0, v16);
  *&v69 = vrev64_s32(v24);
  DWORD2(v69) = v24.i32[1];
  v25 = vmul_f32(v24, 0x40000000);
  *(v70 + 12) = v25;
  v25.i32[1] = v24.i32[1];
  *(&v69 + 3) = -v24.f32[0];
  *v70 = -v24.f32[1];
  *(v70 + 4) = v25;
  *(&v70[1] + 1) = 4.0 * v24.f32[0];
  *(&v70[1] + 1) = 0;
  v67[0] = xmmword_2398F28B0;
  v66 = 0;
  inputTexture = self->_inputTexture;
  if (!self->_inputSRGB)
  {
    v60 = inputTexture;
    v28 = v59;
    goto LABEL_34;
  }

  pixelFormat = [(MTLTexture *)self->_inputTexture pixelFormat];
  v28 = v59;
  if (pixelFormat > 70)
  {
    if (pixelFormat == 71)
    {
      v29 = 70;
      goto LABEL_33;
    }

    if (pixelFormat == 81)
    {
      v29 = 80;
      goto LABEL_33;
    }

LABEL_30:
    v29 = 0;
    goto LABEL_33;
  }

  if (pixelFormat == 11)
  {
    v29 = 10;
    goto LABEL_33;
  }

  if (pixelFormat != 31)
  {
    goto LABEL_30;
  }

  v29 = 30;
LABEL_33:
  v60 = [(MTLTexture *)inputTexture newTextureViewWithPixelFormat:v29];
LABEL_34:
  outputTexture = self->_outputTexture;
  if (self->_outputSRGB)
  {
    v58 = [(MTLTexture *)outputTexture newTextureViewWithPixelFormat:self->_intermediatePixelFormat];
    if (!v7)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v58 = outputTexture;
    if (!v7)
    {
      goto LABEL_41;
    }
  }

  v31 = self->_mfxNormPerceptTex;
  colorAttachments = [(MTLRenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
  v33 = [colorAttachments objectAtIndexedSubscript:0];
  [v33 setTexture:v31];

  v34 = [v28 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
  [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:v34 forEncode:self->super.super.super._encodeID];
  fence = self->_fence;
  if (fence)
  {
    [v34 waitForFence:fence beforeStages:2];
  }

  [v34 setLabel:@"MetalFX_Normalize"];
  LOBYTE(v66) = v57 == 2;
  *(&v66 + 1) = 1;
  HIBYTE(v66) = 0;
  [v34 setFragmentBytes:&v66 length:4 atIndex:0];
  [v34 setRenderPipelineState:self->_mfxNormPerceptPSO];
  [v34 setFragmentTexture:v60 atIndex:0];
  [v34 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v34 endEncoding];

LABEL_41:
  if (self->_use3DPipeline)
  {
    mfxUpscaledTex = self->_mfxUpscaledTex;
    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
    v38 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v38 setTexture:mfxUpscaledTex];

    v39 = [v28 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
    [v39 setLabel:@"MetalFX_Scale"];
    [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:v39 forEncode:self->super.super.super._encodeID];
    v40 = self->_fence;
    if (v40)
    {
      [v39 waitForFence:v40 beforeStages:2];
    }

    [v39 setFragmentBytes:&v68 length:64 atIndex:0];
    v66 = 0;
    [v39 setFragmentBytes:&v66 length:4 atIndex:1];
    [v39 setRenderPipelineState:self->_mfxUpscalePSO];
    v41 = v60;
    if (v7)
    {
      v41 = self->_mfxNormPerceptTex;
    }

    [v39 setFragmentTexture:v41 atIndex:0];
    [v39 drawPrimitives:3 vertexStart:0 vertexCount:3];
    [v39 endEncoding];
    colorAttachments3 = [(MTLRenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
    v43 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v43 setTexture:v58];

    computeCommandEncoder = [v28 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];

    [computeCommandEncoder setLabel:@"MetalFX_Sharpen"];
    [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
    [computeCommandEncoder setFragmentBytes:v67 length:64 atIndex:0];
    LOWORD(v66) = 0;
    BYTE2(v66) = v7;
    HIBYTE(v66) = v57 == 2;
    [computeCommandEncoder setFragmentBytes:&v66 length:4 atIndex:1];
    [computeCommandEncoder setRenderPipelineState:self->_mfxSharpenPSO];
    [computeCommandEncoder setFragmentTexture:self->_mfxUpscaledTex atIndex:0];
    [computeCommandEncoder drawPrimitives:3 vertexStart:0 vertexCount:3];
    v45 = self->_fence;
    if (v45)
    {
      [computeCommandEncoder updateFence:v45 afterStages:2];
    }

    [computeCommandEncoder endEncoding];
  }

  else
  {
    computeCommandEncoder = [v28 computeCommandEncoder];
    [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
    [computeCommandEncoder setLabel:@"MetalFX_SpatialScaleSharpen"];
    if (self->_fence)
    {
      [computeCommandEncoder waitForFence:?];
    }

    [computeCommandEncoder setComputePipelineState:self->_mfxUpscaleKernel];
    [computeCommandEncoder setBytes:&v68 length:64 atIndex:0];
    v66 = 0;
    [computeCommandEncoder setBytes:&v66 length:4 atIndex:1];
    v46 = v60;
    if (v7)
    {
      v46 = self->_mfxNormPerceptTex;
    }

    [computeCommandEncoder setTexture:v46 atIndex:0];
    [computeCommandEncoder setTexture:self->_mfxUpscaledTex atIndex:1];
    width3 = [(MTLTexture *)self->_outputTexture width];
    v48 = ([(MTLTexture *)self->_outputTexture height]+ 15) >> 4;
    v63 = (width3 + 15) >> 4;
    v64 = v48;
    v65 = 1;
    v61 = xmmword_2398F2910;
    v62 = 1;
    [computeCommandEncoder dispatchThreadgroups:&v63 threadsPerThreadgroup:&v61];
    [computeCommandEncoder setBytes:v67 length:64 atIndex:0];
    LOWORD(v66) = 0;
    BYTE2(v66) = v7;
    HIBYTE(v66) = v57 == 2;
    [computeCommandEncoder setBytes:&v66 length:4 atIndex:1];
    [computeCommandEncoder setTexture:self->_mfxUpscaledTex atIndex:0];
    [computeCommandEncoder setTexture:v58 atIndex:1];
    [computeCommandEncoder setComputePipelineState:self->_mfxSharpenKernel];
    v63 = (width3 + 15) >> 4;
    v64 = v48;
    v65 = 1;
    v61 = xmmword_2398F2910;
    v62 = 1;
    [computeCommandEncoder dispatchThreadgroups:&v63 threadsPerThreadgroup:&v61];
    if (self->_fence)
    {
      [computeCommandEncoder updateFence:?];
    }

    [computeCommandEncoder endEncoding];
  }

  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
    v28 = v59;
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v49 = MetalFXHUDInstance();
    v50 = MetalFXHUDInstanceV3();
    v51 = v50;
    if (v49 && v50)
    {
      v52 = self->_inputContentWidth;
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", v52, self->_inputContentHeight];
      [v51 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" label:v53];

      outputWidth = self->_outputWidth;
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", outputWidth, self->_outputHeight];
      [v51 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" label:v55];

      [v51 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.scaling" label:@"Spatial"];
    }
  }

  MetalFxScopedSignpost::~MetalFxScopedSignpost(v71);
}

@end