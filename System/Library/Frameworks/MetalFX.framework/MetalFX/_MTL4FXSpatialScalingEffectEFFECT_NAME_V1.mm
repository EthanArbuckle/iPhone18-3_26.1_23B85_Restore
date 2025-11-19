@interface _MTL4FXSpatialScalingEffectEFFECT_NAME_V1
- (_MTL4FXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)a3 compiler:(id)a4 descriptor:(id)a5;
- (void)encodeToCommandBuffer:(id)a3;
@end

@implementation _MTL4FXSpatialScalingEffectEFFECT_NAME_V1

- (_MTL4FXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)a3 compiler:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v106 = a4;
  v10 = a5;
  v119.receiver = self;
  v119.super_class = _MTL4FXSpatialScalingEffectEFFECT_NAME_V1;
  v11 = [(_MTL4FXEffect *)&v119 init];
  objc_storeStrong(&v11->_device, a3);
  v104 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [(MTLDeviceSPI *)v11->_device newFence];
  internalFence = v11->_internalFence;
  v11->_internalFence = v12;

  fence = v11->_fence;
  v11->_fence = 0;

  v11->_frame = 0;
  v11->_framesInFlight = 16;
  v11->_colorTextureBarrierStages = 2;
  v11->_outputTextureBarrierStages = 0;
  v103 = [v104 pathForResource:@"default" ofType:@"metallib"];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:v103];
  v118 = 0;
  v105 = [v9 newLibraryWithURL:v15 error:&v118];
  v16 = v118;

  if (!v16)
  {
    v11->_colorTextureFormat = [v10 colorTextureFormat];
    v11->_outputTextureFormat = [v10 outputTextureFormat];
    v11->_inputWidth = [v10 inputWidth];
    v11->_inputHeight = [v10 inputHeight];
    v11->_outputWidth = [v10 outputWidth];
    v11->_outputHeight = [v10 outputHeight];
    v17 = objc_opt_new();
    v18 = [(MTLDeviceSPI *)v11->_device newResidencySetWithDescriptor:v17 error:0];
    residencySetGlobal = v11->_residencySetGlobal;
    v11->_residencySetGlobal = v18;

    v20 = [v10 colorProcessingMode];
    v11->_colorProcessingMode = v20;
    if (v20 >= 3)
    {
      goto LABEL_22;
    }

    v21 = objc_opt_new();
    mfxPassDescriptor = v11->_mfxPassDescriptor;
    v11->_mfxPassDescriptor = v21;

    v23 = [(MTL4RenderPassDescriptor *)v11->_mfxPassDescriptor colorAttachments];
    v24 = [v23 objectAtIndexedSubscript:0];
    [v24 setLoadAction:0];

    v25 = [(MTL4RenderPassDescriptor *)v11->_mfxPassDescriptor colorAttachments];
    v26 = [v25 objectAtIndexedSubscript:0];
    [v26 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v27 = [(MTL4RenderPassDescriptor *)v11->_mfxPassDescriptor colorAttachments];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setStoreAction:1];

    [v10 colorTextureFormat];
    device = v11->_device;
    *&v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v11->_inputSRGB = 0;
    [v10 outputTextureFormat];
    v30 = v11->_device;
    *&v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v11->_outputSRGB = 0;
    if (v11->_inputSRGB)
    {
      v31 = [v10 colorTextureFormat];
      if (((v31 - 31) > 0x32 || ((1 << (v31 - 31)) & 0x4010000000001) == 0) && v31 != 11)
      {
        goto LABEL_22;
      }
    }

    if (v11->_outputSRGB)
    {
      v32 = [v10 outputTextureFormat];
      if (((v32 - 31) > 0x32 || ((1 << (v32 - 31)) & 0x4010000000001) == 0) && v32 != 11)
      {
        goto LABEL_22;
      }
    }

    if (v11->_inputSRGB != v11->_outputSRGB)
    {
      NSLog(&cfstr_SMixedSrgbInpu.isa, "[_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 initWithDevice:compiler:descriptor:]");
LABEL_23:
      v16 = 0;
      goto LABEL_24;
    }

    if (v11->_inputSRGB && v11->_colorProcessingMode >= 1)
    {
LABEL_22:
      MTLReportFailure();
      goto LABEL_23;
    }

    v11->_inputContentWidth = [v10 inputWidth];
    v11->_inputContentHeight = [v10 inputHeight];
    v11->_colorTextureUsage = 1;
    v11->_outputTextureUsage = 5;
    v11->_inputFormat = [v10 colorTextureFormat];
    v11->_outputFormat = [v10 outputTextureFormat];
    if (!v11->_outputSRGB)
    {
      v34 = [v10 outputTextureFormat];
      goto LABEL_27;
    }

    v33 = [v10 outputTextureFormat];
    if (v33 > 70)
    {
      if (v33 != 71)
      {
        if (v33 == 81)
        {
          v34 = 80;
          goto LABEL_27;
        }

        goto LABEL_43;
      }

      v34 = 70;
    }

    else
    {
      if (v33 != 11)
      {
        if (v33 == 31)
        {
          v34 = 30;
          goto LABEL_27;
        }

LABEL_43:
        v34 = 0;
        goto LABEL_27;
      }

      v34 = 10;
    }

LABEL_27:
    v11->_intermediatePixelFormat = v34;
    v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v34 width:objc_msgSend(v10 height:"outputWidth") mipmapped:objc_msgSend(v10, "outputHeight"), 0];
    texDesc = v11->_texDesc;
    v11->_texDesc = v37;

    [(MTLTextureDescriptor *)v11->_texDesc setStorageMode:2];
    [(MTLTextureDescriptor *)v11->_texDesc setUsage:5];
    v39 = [(MTLDeviceSPI *)v11->_device newTextureWithDescriptor:v11->_texDesc];
    mfxUpscaledTex = v11->_mfxUpscaledTex;
    v11->_mfxUpscaledTex = v39;

    [(MTLTexture *)v11->_mfxUpscaledTex setLabel:@"MetalFX_Upscaled"];
    v96 = objc_opt_new();
    v117 = 0;
    v95 = objc_opt_new();
    [v95 setLibrary:v105];
    [v95 setName:@"FSQuadVertexShader"];
    v97 = objc_opt_new();
    [v97 setLibrary:v105];
    colorProcessingMode = v11->_colorProcessingMode;
    v11->_needNormPercept = colorProcessingMode > 0;
    if (colorProcessingMode < 1)
    {
      v100 = 0;
    }

    else
    {
      v42 = [(MTLDeviceSPI *)v11->_device newResidencySetWithDescriptor:v17 error:0];
      residencySetPercept = v11->_residencySetPercept;
      v11->_residencySetPercept = v42;

      [(MTLTextureDescriptor *)v11->_texDesc setWidth:v11->_inputWidth];
      [(MTLTextureDescriptor *)v11->_texDesc setHeight:v11->_inputHeight];
      v44 = [(MTLDeviceSPI *)v11->_device newTextureWithDescriptor:v11->_texDesc];
      mfxNormPerceptTex = v11->_mfxNormPerceptTex;
      v11->_mfxNormPerceptTex = v44;

      [(MTLTexture *)v11->_mfxNormPerceptTex setLabel:@"MetalFX_NormalizePerceptual"];
      [v97 setName:@"MFX_NORMALIZE_SHADER_V1_FRAG"];
      v94 = v17;
      v98 = objc_alloc_init(MEMORY[0x277CD6BB8]);
      [v98 setLabel:@"MFX_NPRenderPipelineState"];
      [v98 setRasterSampleCount:1];
      [v98 setVertexFunctionDescriptor:v95];
      [v98 setFragmentFunctionDescriptor:v97];
      intermediatePixelFormat = v11->_intermediatePixelFormat;
      v47 = [v98 colorAttachments];
      v48 = [v47 objectAtIndexedSubscript:0];
      [v48 setPixelFormat:intermediatePixelFormat];

      v116 = 0;
      v49 = [v106 newRenderPipelineStateWithDescriptor:v98 compilerTaskOptions:0 error:&v116];
      v50 = v116;
      mfxNormPerceptPSO = v11->_mfxNormPerceptPSO;
      v11->_mfxNormPerceptPSO = v49;

      [v96 setMaxTextureBindCount:1];
      [v96 setMaxBufferBindCount:1];
      v115 = v50;
      v52 = [v9 newArgumentTableWithDescriptor:v96 error:&v115];
      v53 = v115;

      normPerceptFragInputs = v11->_normPerceptFragInputs;
      v11->_normPerceptFragInputs = v52;

      v55 = v11->_colorProcessingMode;
      LOBYTE(v117) = v55 == 2;
      BYTE1(v117) = v55 > 0;
      HIWORD(v117) = 0;
      v56 = [v9 newBufferWithBytes:&v117 length:4 options:0];
      normalizeBuffer = v11->_normalizeBuffer;
      v11->_normalizeBuffer = v56;

      [(MTL4ArgumentTable *)v11->_normPerceptFragInputs setAddress:[(MTLBuffer *)v11->_normalizeBuffer gpuAddress] atIndex:0];
      [(MTLResidencySet *)v11->_residencySetPercept addAllocation:v11->_normalizeBuffer];
      [(MTLResidencySet *)v11->_residencySetPercept addAllocation:v11->_mfxNormPerceptTex];
      [(MTLResidencySet *)v11->_residencySetPercept commit];
      v100 = v53;

      v17 = v94;
    }

    [v97 setName:@"MFX_SCALE_SHADER_V1_FRAG"];
    v99 = objc_alloc_init(MEMORY[0x277CD6BB8]);
    [v99 setLabel:@"MFX_ScaleRenderPipelineStateV1"];
    [v99 setRasterSampleCount:1];
    [v99 setVertexFunctionDescriptor:v95];
    [v99 setFragmentFunctionDescriptor:v97];
    v58 = v11->_intermediatePixelFormat;
    v59 = [v99 colorAttachments];
    v60 = [v59 objectAtIndexedSubscript:0];
    [v60 setPixelFormat:v58];

    v114 = v100;
    v61 = [v106 newRenderPipelineStateWithDescriptor:v99 compilerTaskOptions:0 error:&v114];
    v16 = v114;

    mfxUpscalePSO = v11->_mfxUpscalePSO;
    v11->_mfxUpscalePSO = v61;

    if (v16)
    {
      v63 = [v16 description];
      NSLog(&cfstr_Error.isa, v63);
    }

    else
    {
      [v96 setMaxTextureBindCount:1];
      [v96 setMaxBufferBindCount:2];
      v113 = 0;
      v64 = [v9 newArgumentTableWithDescriptor:v96 error:&v113];
      v101 = v113;
      scaleFragInputs = v11->_scaleFragInputs;
      v11->_scaleFragInputs = v64;

      v117 = 0;
      v66 = [v9 newBufferWithBytes:&v117 length:4 options:0];
      scaleBuffer = v11->_scaleBuffer;
      v11->_scaleBuffer = v66;

      [(MTL4ArgumentTable *)v11->_scaleFragInputs setAddress:[(MTLBuffer *)v11->_scaleBuffer gpuAddress] atIndex:1];
      inputContentWidth = v11->_inputContentWidth;
      inputContentHeight = v11->_inputContentHeight;
      inputWidth = v11->_inputWidth;
      inputHeight = v11->_inputHeight;
      v72 = 1.0 / v11->_outputWidth;
      v73 = 1.0 / v11->_outputHeight;
      *&v109 = v72 * inputContentWidth;
      *(&v109 + 1) = v73 * inputContentHeight;
      *(&v109 + 2) = (vcvts_n_f32_u64(inputContentWidth, 1uLL) * v72) + -0.5;
      *(&v109 + 3) = (vcvts_n_f32_u64(inputContentHeight, 1uLL) * v73) + -0.5;
      *&v110 = 1.0 / inputWidth;
      *(&v110 + 1) = 1.0 / inputHeight;
      *(&v110 + 2) = 1.0 / inputWidth;
      *(&v110 + 3) = -(1.0 / inputHeight);
      *&v111 = -(1.0 / inputWidth);
      *(&v111 + 1) = *(&v110 + 1) + *(&v110 + 1);
      *(&v111 + 2) = 1.0 / inputWidth;
      *(&v111 + 3) = *(&v110 + 1) + *(&v110 + 1);
      *&v112 = (1.0 / inputWidth) * 0.0;
      *(&v112 + 1) = (1.0 / inputHeight) * 4.0;
      *(&v112 + 1) = 0;
      v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11->_framesInFlight];
      fxrUpscaleBuffer = v11->_fxrUpscaleBuffer;
      v11->_fxrUpscaleBuffer = v74;

      if (v11->_framesInFlight)
      {
        v76 = 0;
        do
        {
          v77 = [v9 newBufferWithBytes:&v109 length:64 options:0];
          [(NSMutableArray *)v11->_fxrUpscaleBuffer setObject:v77 atIndexedSubscript:v76];

          v78 = v11->_residencySetGlobal;
          v79 = [(NSMutableArray *)v11->_fxrUpscaleBuffer objectAtIndexedSubscript:v76];
          [(MTLResidencySet *)v78 addAllocation:v79];

          ++v76;
        }

        while (v76 < v11->_framesInFlight);
      }

      [v97 setName:@"MFX_SHARPEN_SHADER_V1_FRAG"];
      v80 = objc_alloc_init(MEMORY[0x277CD6BB8]);
      [v80 setLabel:@"MFX_SharpenRenderPipelineStateV1"];
      [v80 setRasterSampleCount:1];
      [v80 setVertexFunctionDescriptor:v95];
      [v80 setFragmentFunctionDescriptor:v97];
      v81 = v11->_intermediatePixelFormat;
      v82 = [v80 colorAttachments];
      v83 = [v82 objectAtIndexedSubscript:0];
      [v83 setPixelFormat:v81];

      v108 = v101;
      v84 = [v106 newRenderPipelineStateWithDescriptor:v80 compilerTaskOptions:0 error:&v108];
      v16 = v108;

      mfxSharpenPSO = v11->_mfxSharpenPSO;
      v11->_mfxSharpenPSO = v84;

      if (!v16)
      {
        [v96 setMaxTextureBindCount:1];
        [v96 setMaxBufferBindCount:2];
        v107 = 0;
        v87 = [v9 newArgumentTableWithDescriptor:v96 error:&v107];
        v102 = v107;
        sharpenFragInputs = v11->_sharpenFragInputs;
        v11->_sharpenFragInputs = v87;

        [(MTL4ArgumentTable *)v11->_sharpenFragInputs setTexture:[(MTLTexture *)v11->_mfxUpscaledTex gpuResourceID] atIndex:0];
        LOWORD(v117) = 0;
        v89 = v11->_colorProcessingMode;
        BYTE2(v117) = v89 > 0;
        HIBYTE(v117) = v89 == 2;
        v90 = [v9 newBufferWithBytes:&v117 length:4 options:0];
        sharpenBuffer = v11->_sharpenBuffer;
        v11->_sharpenBuffer = v90;

        [(MTL4ArgumentTable *)v11->_sharpenFragInputs setAddress:[(MTLBuffer *)v11->_sharpenBuffer gpuAddress] atIndex:1];
        v111 = 0u;
        v112 = 0u;
        v109 = xmmword_2398F28B0;
        v110 = 0u;
        v92 = [v9 newBufferWithBytes:&v109 length:64 options:0];
        fxrSharpenBuffer = v11->_fxrSharpenBuffer;
        v11->_fxrSharpenBuffer = v92;

        [(MTL4ArgumentTable *)v11->_sharpenFragInputs setAddress:[(MTLBuffer *)v11->_fxrSharpenBuffer gpuAddress] atIndex:0];
        [(MTLResidencySet *)v11->_residencySetGlobal addAllocation:v11->_fxrSharpenBuffer];
        [(MTLResidencySet *)v11->_residencySetGlobal addAllocation:v11->_sharpenBuffer];
        [(MTLResidencySet *)v11->_residencySetGlobal addAllocation:v11->_mfxUpscaledTex];

        [(MTLResidencySet *)v11->_residencySetGlobal commit];
        [(_MTL4FXSpatialScaler *)v11 _emitTelemetry:v10 forDevice:v11->_device];
        v35 = v11;
        v16 = v102;
        goto LABEL_38;
      }

      v86 = [v16 description];
      NSLog(&cfstr_Error.isa, v86);
    }

    v35 = 0;
LABEL_38:

    goto LABEL_25;
  }

  v17 = [v16 description];
  MTLReportFailure();
LABEL_24:
  v35 = 0;
LABEL_25:

  return v35;
}

- (void)encodeToCommandBuffer:(id)a3
{
  v4 = a3;
  v43 = v4;
  [(_MTL4FXEffect *)self _beginEncodeWithCommandBuffer:v4];
  if (MTLReportFailureTypeEnabled())
  {
    if (!self->_fence && !self->_outputTextureBarrierStages)
    {
      MTLReportFailure();
    }

    checkInputOutputTexturesForSpatial(self->_inputTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    if ([(MTLTexture *)self->_outputTexture storageMode]!= 2)
    {
      MTLReportFailure();
    }
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v44, 0, self, 4, self->super.super.super._encodeID, 0);
  inputTexture = self->_inputTexture;
  if (!self->_inputSRGB)
  {
    v8 = inputTexture;
    goto LABEL_20;
  }

  v6 = [(MTLTexture *)inputTexture pixelFormat];
  if (v6 > 70)
  {
    if (v6 == 71)
    {
      v7 = 70;
      goto LABEL_19;
    }

    if (v6 == 81)
    {
      v7 = 80;
      goto LABEL_19;
    }

LABEL_16:
    v7 = 0;
    goto LABEL_19;
  }

  if (v6 == 11)
  {
    v7 = 10;
    goto LABEL_19;
  }

  if (v6 != 31)
  {
    goto LABEL_16;
  }

  v7 = 30;
LABEL_19:
  v8 = [(MTLTexture *)inputTexture newTextureViewWithPixelFormat:v7];
LABEL_20:
  v9 = v8;
  outputTexture = self->_outputTexture;
  v42 = v9;
  if (self->_outputSRGB)
  {
    v11 = [(MTLTexture *)outputTexture newTextureViewWithPixelFormat:self->_intermediatePixelFormat];
  }

  else
  {
    v11 = outputTexture;
  }

  v41 = v11;
  if (self->_needNormPercept)
  {
    [(MTL4ArgumentTable *)self->_normPerceptFragInputs setTexture:[(MTLTexture *)v9 gpuResourceID] atIndex:0];
    mfxNormPerceptTex = self->_mfxNormPerceptTex;
    v13 = [(MTL4RenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:0];
    [v14 setTexture:mfxNormPerceptTex];

    v15 = [v4 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
    [(_MTL4FXEffect *)self _didCreateRenderCommandEncoder:v15 forEncode:self->super.super.super._encodeID];
    [v4 useResidencySet:self->_residencySetPercept];
    fence = self->_fence;
    if (fence)
    {
      [v15 waitForFence:fence beforeEncoderStages:2];
    }

    [v15 setLabel:@"Metal4FX_Normalize"];
    [v15 setArgumentTable:self->_normPerceptFragInputs atStages:2];
    [v15 setRenderPipelineState:self->_mfxNormPerceptPSO];
    [v15 drawPrimitives:3 vertexStart:0 vertexCount:3];
    [v15 updateFence:self->_internalFence afterEncoderStages:2];
    [v15 endEncoding];
  }

  [v4 useResidencySet:self->_residencySetGlobal];
  mfxUpscaledTex = self->_mfxUpscaledTex;
  v18 = [(MTL4RenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
  v19 = [v18 objectAtIndexedSubscript:0];
  [v19 setTexture:mfxUpscaledTex];

  v20 = [v4 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
  [v20 setLabel:@"Metal4FX_Scale"];
  if (MTLTraceEnabled())
  {
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self inputWidth];
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self inputHeight];
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self outputWidth];
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self outputHeight];
    if (MTLTraceEnabled())
    {
      [v20 globalTraceObjectID];
      kdebug_trace();
    }
  }

  [(_MTL4FXEffect *)self _didCreateRenderCommandEncoder:v20 forEncode:self->super.super.super._encodeID];
  v21 = self->_fence;
  if (v21)
  {
    [v20 waitForFence:v21 beforeEncoderStages:2];
  }

  inputContentWidth = self->_inputContentWidth;
  inputWidth = self->_inputWidth;
  inputContentHeight = self->_inputContentHeight;
  inputHeight = self->_inputHeight;
  if (inputContentWidth != inputWidth || inputContentHeight != inputHeight)
  {
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v28 = [(NSMutableArray *)self->_fxrUpscaleBuffer objectAtIndexedSubscript:self->_frame];
    v29 = [v28 contents];
    v30 = 1.0 / outputWidth;
    v31 = 1.0 / outputHeight;
    v32 = 1.0 / inputWidth;
    *v29 = v30 * inputContentWidth;
    *(v29 + 4) = v31 * inputContentHeight;
    v33 = 1.0 / inputHeight;
    *(v29 + 8) = (vcvts_n_f32_u64(inputContentWidth, 1uLL) * v30) + -0.5;
    *(v29 + 12) = (vcvts_n_f32_u64(inputContentHeight, 1uLL) * v31) + -0.5;
    *(v29 + 16) = v32;
    *(v29 + 20) = v33;
    *(v29 + 24) = v32;
    *(v29 + 28) = -v33;
    *(v29 + 32) = -v32;
    *(v29 + 36) = v33 + v33;
    *(v29 + 40) = v32;
    *(v29 + 44) = v33 + v33;
    *(v29 + 48) = v32 * 0.0;
    *(v29 + 52) = v33 * 4.0;
    *(v29 + 56) = 0;
  }

  scaleFragInputs = self->_scaleFragInputs;
  v35 = [(NSMutableArray *)self->_fxrUpscaleBuffer objectAtIndexedSubscript:self->_frame];
  -[MTL4ArgumentTable setAddress:atIndex:](scaleFragInputs, "setAddress:atIndex:", [v35 gpuAddress], 0);

  v36 = v42;
  if (self->_needNormPercept)
  {
    v36 = self->_mfxNormPerceptTex;
  }

  [(MTL4ArgumentTable *)self->_scaleFragInputs setTexture:[(MTLTexture *)v36 gpuResourceID] atIndex:0];
  [v20 setArgumentTable:self->_scaleFragInputs atStages:2];
  [v20 setRenderPipelineState:self->_mfxUpscalePSO];
  [v20 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v20 updateFence:self->_internalFence afterEncoderStages:2];
  [v20 endEncoding];
  v37 = [(MTL4RenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
  v38 = [v37 objectAtIndexedSubscript:0];
  [v38 setTexture:v41];

  v39 = [v43 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];

  [v39 waitForFence:self->_internalFence beforeEncoderStages:2];
  [v39 setLabel:@"Metal4FX_Sharpen"];
  [(_MTL4FXEffect *)self _didCreateRenderCommandEncoder:v39 forEncode:self->super.super.super._encodeID];
  [v39 setArgumentTable:self->_sharpenFragInputs atStages:2];
  [v39 setRenderPipelineState:self->_mfxSharpenPSO];
  [v39 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v39 updateFence:self->_internalFence afterEncoderStages:2];
  v40 = self->_fence;
  if (v40)
  {
    [v39 updateFence:v40 afterEncoderStages:2];
  }

  else
  {
    [v39 barrierAfterStages:2 beforeQueueStages:self->_outputTextureBarrierStages visibilityOptions:1];
  }

  [v39 endEncoding];
  self->_frame = (self->_frame + 1) % self->_framesInFlight;

  MetalFxScopedSignpost::~MetalFxScopedSignpost(v44);
}

@end