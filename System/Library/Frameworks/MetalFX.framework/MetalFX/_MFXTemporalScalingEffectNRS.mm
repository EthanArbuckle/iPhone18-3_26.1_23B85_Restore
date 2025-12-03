@interface _MFXTemporalScalingEffectNRS
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_MFXTemporalScalingEffectNRS)initWithDevice:(id)device descriptor:(id)descriptor;
- (__n128)currentViewToClipMatrix;
- (__n128)currentWorldToViewMatrix;
- (__n128)previousViewToClipMatrix;
- (__n128)previousWorldToViewMatrix;
- (__n128)setCurrentViewToClipMatrix:(__n128)matrix;
- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix;
- (__n128)setPreviousViewToClipMatrix:(__n128)matrix;
- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
- (void)initExposureWithDevice:(void *)device library:(int)library autoexposureEnabled:;
- (void)initOutputResolutionPassesWithDevice:(void *)device library:;
- (void)initRenderResolutionPassesWithDevice:(void *)device library:;
@end

@implementation _MFXTemporalScalingEffectNRS

- (_MFXTemporalScalingEffectNRS)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  v32.receiver = self;
  v32.super_class = _MFXTemporalScalingEffectNRS;
  v8 = [(_MTLFXEffectBase *)&v32 init];
  v8->_executionMode = 1;
  v8->_colorTextureUsage = 1;
  v8->_depthTextureUsage = 1;
  v8->_motionTextureUsage = 1;
  v8->_reactiveTextureUsage = 1;
  v8->_colorTextureFormat = [descriptorCopy colorTextureFormat];
  v8->_depthTextureFormat = [descriptorCopy depthTextureFormat];
  v8->_motionTextureFormat = [descriptorCopy motionTextureFormat];
  outputTextureFormat = [descriptorCopy outputTextureFormat];
  v10 = 115;
  if (outputTextureFormat)
  {
    v10 = outputTextureFormat;
  }

  v8->_outputTextureFormat = v10;
  inputWidth = [descriptorCopy inputWidth];
  v8->_inputWidth = inputWidth;
  v8->_inputContentWidth = inputWidth;
  inputHeight = [descriptorCopy inputHeight];
  v8->_inputHeight = inputHeight;
  v8->_inputContentHeight = inputHeight;
  v8->_outputWidth = [descriptorCopy outputWidth];
  outputHeight = [descriptorCopy outputHeight];
  v8->_outputHeight = outputHeight;
  outputWidth = v8->_outputWidth;
  inputWidth = v8->_inputWidth;
  inputHeight = v8->_inputHeight;
  if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    [descriptorCopy inputContentMinScale];
    v8->_inputContentMinScale = v17;
    [descriptorCopy inputContentMaxScale];
  }

  else
  {
    v19 = outputWidth / inputWidth;
    v20 = outputHeight / inputHeight;
    v21 = fminf(v19, v20);
    v18 = fmaxf(v19, v20);
    v8->_inputContentMinScale = v21;
  }

  v8->_inputContentMaxScale = v18;
  if (v8->_inputContentMinScale >= 1.0 && v18 <= 2.0)
  {
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 pathForResource:@"default" ofType:@"metallib"];
    v25 = [MEMORY[0x277CBEBC0] URLWithString:v24];
    v31 = 0;
    v26 = [deviceCopy newLibraryWithURL:v25 error:&v31];
    v27 = v31;

    v28 = [deviceCopy newBufferWithLength:1 options:32];
    internal_is_history_invalid = v8->_internal_is_history_invalid;
    v8->_internal_is_history_invalid = v28;

    -[_MFXTemporalScalingEffectNRS initExposureWithDevice:library:autoexposureEnabled:](v8, deviceCopy, v26, [descriptorCopy isAutoExposureEnabled]);
    [(_MFXTemporalScalingEffectNRS *)v8 initRenderResolutionPassesWithDevice:deviceCopy library:v26];
    [(_MFXTemporalScalingEffectNRS *)v8 initOutputResolutionPassesWithDevice:deviceCopy library:v26];
    v8->_reset = 1;
    v22 = v8;
  }

  else
  {
    MTLReportFailure();
    v22 = 0;
  }

  return v22;
}

- (void)initExposureWithDevice:(void *)device library:(int)library autoexposureEnabled:
{
  v20 = a2;
  deviceCopy = device;
  if (self)
  {
    *(self + 268) = 1065353216;
    *(self + 72) = 1040187392;
    v8 = [v20 newBufferWithLength:2 options:0];
    v9 = *(self + 80);
    *(self + 80) = v8;

    v10 = [v20 newBufferWithLength:2 options:0];
    v11 = *(self + 88);
    *(self + 88) = v10;

    *[*(self + 80) contents] = COERCE_UNSIGNED_INT(1.0);
    *[*(self + 88) contents] = COERCE_UNSIGNED_INT(1.0);
    if (library)
    {
      v12 = computeKernel(deviceCopy, v20, @"luma_log_sum_nrs", 0, 0, 0, 1);
      v13 = *(self + 104);
      *(self + 104) = v12;

      v14 = [v20 newBufferWithLength:0x2000 options:0];
      v15 = *(self + 96);
      *(self + 96) = v14;

      v16 = objc_opt_new();
      [v16 setConstantValue:self + 72 type:3 atIndex:9];
      v17 = computeKernel(deviceCopy, v20, @"luma_log_sum_to_exposure", 0, v16, 0x400uLL, 1);
      v18 = *(self + 112);
      *(self + 112) = v17;
    }

    else
    {
      v19 = computeKernel(deviceCopy, v20, @"exposure_texture_to_buffer", 0, 0, 0, 0);
      v16 = *(self + 120);
      *(self + 120) = v19;
    }
  }
}

- (void)initRenderResolutionPassesWithDevice:(void *)device library:
{
  v5 = a2;
  deviceCopy = device;
  if (self)
  {
    v7 = [v5 supportsFamily:1004];
    v36 = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v5 supportsFamily:1004];
    }

    v35 = v8;
    v34 = [v5 supportsFamily:1001];
    v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:*(self + 392) height:*(self + 400) mipmapped:0];
    v10 = v9;
    if ((v8 | v7))
    {
      v11 = 5;
    }

    else
    {
      v11 = 3;
    }

    [v9 setUsage:v11];
    [v10 setStorageMode:2];
    [v10 setCompressionMode:1];
    v12 = [v5 newTextureWithDescriptor:v10];
    v13 = *(self + 128);
    *(self + 128) = v12;

    [v10 setPixelFormat:65];
    v14 = [v5 newTextureWithDescriptor:v10];
    v15 = *(self + 136);
    *(self + 136) = v14;

    [v10 setPixelFormat:115];
    v16 = [v5 newTextureWithDescriptor:v10];
    v17 = *(self + 144);
    *(self + 144) = v16;

    [v10 setPixelFormat:115];
    v18 = [v5 newTextureWithDescriptor:v10];
    v19 = *(self + 152);
    *(self + 152) = v18;

    v20 = [v5 newTextureWithDescriptor:v10];
    v21 = *(self + 160);
    *(self + 160) = v20;

    v22 = [v5 newTextureWithDescriptor:v10];
    v23 = *(self + 168);
    *(self + 168) = v22;

    v24 = objc_opt_new();
    [v24 setConstantValue:&v35 type:53 atIndex:0];
    [v24 setConstantValue:&v36 type:53 atIndex:1];
    [v24 setConstantValue:&v34 type:53 atIndex:2];
    if (v36 == 1)
    {
      v33 = 0;
      v27 = tileKernel(deviceCopy, v5, @"unified_low_resolution_tile", &v33, v24, 512, v25, v26, 115, 65);
      v28 = v33;
      v29 = *(self + 184);
      *(self + 184) = v27;
    }

    else
    {
      v32 = 0;
      v30 = computeKernel(deviceCopy, v5, @"unified_low_resolution_tile", &v32, v24, 0x200uLL, 1);
      v28 = v32;
      v31 = *(self + 176);
      *(self + 176) = v30;

      *(self + 192) = v35;
    }
  }
}

- (void)initOutputResolutionPassesWithDevice:(void *)device library:
{
  v5 = a2;
  deviceCopy = device;
  if (self)
  {
    v7 = [v5 supportsFamily:1004];
    v35 = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v5 supportsFamily:1004];
    }

    v34 = v8;
    v9 = [v5 supportsFamily:1001];
    v10 = *(self + 384);
    v33 = v9;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v32 = 0;
    v11 = 2;
    if ((v8 | v7))
    {
      v11 = 4;
    }

    *(self + 304) = v11;
    v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:*(self + 408) height:*(self + 416) mipmapped:0];
    [v12 setUsage:*(self + 304) | 1];
    [v12 setStorageMode:2];
    [v12 setCompressionMode:1];
    v13 = [v5 newTextureWithDescriptor:v12];
    v14 = *(self + 200);
    *(self + 200) = v13;

    v15 = [v5 newTextureWithDescriptor:v12];
    v16 = *(self + 208);
    *(self + 208) = v15;

    v17 = [v5 newTextureWithDescriptor:v12];
    v18 = *(self + 216);
    *(self + 216) = v17;

    v19 = [v5 newTextureWithDescriptor:v12];
    v20 = *(self + 224);
    *(self + 224) = v19;

    *(self + 249) = 0;
    v21 = objc_opt_new();
    [v21 setConstantValue:&v34 type:53 atIndex:0];
    [v21 setConstantValue:&v35 type:53 atIndex:1];
    [v21 setConstantValue:&v33 type:53 atIndex:2];
    [v21 setConstantValue:&v32 type:53 atIndex:3];
    [v21 setConstantValue:self + 72 type:3 atIndex:4];
    if (v35 == 1)
    {
      v31 = 0;
      v29 = *(self + 384);
      v24 = tileKernel(deviceCopy, v5, @"unified_pass_tile", &v31, v21, 512, v22, v23, 115, 115);
      v25 = v31;
      v26 = *(self + 240);
      *(self + 240) = v24;
    }

    else
    {
      v30 = 0;
      v27 = computeKernel(deviceCopy, v5, @"unified_pass_tile", &v30, v21, 0x200uLL, 1);
      v25 = v30;
      v28 = *(self + 232);
      *(self + 232) = v27;

      *(self + 248) = v34;
    }
  }
}

- (float)jitterOffsetX
{
  v2 = *self->_jitterOffset;
  LODWORD(result) = v2;
  return result;
}

- (float)motionVectorScaleX
{
  v2 = *self->_motionVectorScale;
  LODWORD(result) = v2;
  return result;
}

- (CGPoint)jitterOffset
{
  v2 = vcvtq_f64_f32(*self->_jitterOffset);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)motionVectorScale
{
  v2 = vcvtq_f64_f32(*self->_motionVectorScale);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)encodeToCommandBuffer:(id)buffer
{
  v92 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v10 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v10 < inputContentMinScale)
    {
      v76 = v10;
      v77 = inputContentMinScale;
      MTLReportFailure();
    }

    v11 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v11 > inputContentMaxScale)
    {
      v76 = v11;
      v77 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v76]!= 2)
    {
      MTLReportFailure();
    }
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v87, 0, self, 0, self->super.super.super._encodeID, 0);
  if (MTLTraceEnabled())
  {
    [bufferCopy globalTraceObjectID];
    kdebug_trace();
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
  if (self->_fence)
  {
    [computeCommandEncoder waitForFence:?];
  }

  if (self->_internalExposure.lumaLogSums)
  {
    v13 = self->_inputContentWidth;
    v14 = self->_inputContentHeight;
    WORD1(v84[0]) = v14;
    LOWORD(v84[0]) = v13;
    v86 = v14 * v13;
    [computeCommandEncoder setComputePipelineState:self->_internalExposure.lumaLogSumKernel];
    [computeCommandEncoder setTexture:self->_colorTexture atIndex:0];
    [computeCommandEncoder setBytes:v84 length:4 atIndex:1];
    [computeCommandEncoder setBytes:&self->_preExposure length:4 atIndex:2];
    [computeCommandEncoder setBuffer:self->_internalExposure.lumaLogSums offset:0 atIndex:0];
    v88 = xmmword_2398F2880;
    *&v89 = 1;
    *v85 = [(MTLComputePipelineState *)self->_internalExposure.lumaLogSumKernel threadExecutionWidth];
    *&v85[8] = vdupq_n_s64(1uLL);
    [computeCommandEncoder dispatchThreadgroups:&v88 threadsPerThreadgroup:v85];
    [computeCommandEncoder setComputePipelineState:self->_internalExposure.lumaLogSumToExposureKernel];
    [computeCommandEncoder setBuffer:self->_internalExposure.lumaLogSums offset:0 atIndex:0];
    [computeCommandEncoder setBytes:&v86 length:4 atIndex:1];
    [computeCommandEncoder setBuffer:self->_internalExposure.currExposure offset:0 atIndex:2];
    [computeCommandEncoder setBuffer:self->_internalExposure.prevExposure offset:0 atIndex:3];
    [computeCommandEncoder setBuffer:self->_internal_is_history_invalid offset:0 atIndex:4];
    [computeCommandEncoder setBytes:&self->_reset length:1 atIndex:5];
    v88 = vdupq_n_s64(1uLL);
    *&v89 = 1;
    *v85 = xmmword_2398F2890;
    *&v85[16] = 1;
    [computeCommandEncoder dispatchThreadgroups:&v88 threadsPerThreadgroup:v85];
  }

  else
  {
    [computeCommandEncoder setComputePipelineState:self->_internalExposure.exposureToBufferKernel];
    [computeCommandEncoder setTexture:self->_exposureTexture atIndex:0];
    [computeCommandEncoder setBuffer:self->_internalExposure.currExposure offset:0 atIndex:0];
    [computeCommandEncoder setBuffer:self->_internalExposure.prevExposure offset:0 atIndex:1];
    [computeCommandEncoder setBuffer:self->_internal_is_history_invalid offset:0 atIndex:2];
    [computeCommandEncoder setBytes:&self->_reset length:1 atIndex:3];
    v88 = vdupq_n_s64(1uLL);
    *&v89 = 1;
    *v85 = v88;
    *&v85[16] = 1;
    [computeCommandEncoder dispatchThreads:&v88 threadsPerThreadgroup:v85];
  }

  v15 = self->_inputContentWidth;
  v16 = self->_inputContentHeight;
  HIWORD(v86) = v16;
  LOWORD(v86) = v15;
  v17.f32[0] = v15;
  v17.f32[1] = v16;
  v18 = vrecpe_f32(v17);
  v19 = vmul_f32(v18, vrecps_f32(v17, v18));
  v20 = vmul_f32(v19, vrecps_f32(v17, v19));
  v21 = *self->_jitterOffset;
  v84[0] = vmul_f32(*self->_motionVectorScale, v20);
  v84[1] = v21;
  v22 = -1.0;
  if (self->_reversedDepth)
  {
    v22 = 1.0;
  }

  v83 = v22;
  v79 = self->_outputTexture;
  p_internalOutputResolution = &self->_internalOutputResolution;
  if (self->_internalOutputResolution.emulateSRGB)
  {
    outputTextureFormat = self->_outputTextureFormat;
    if (outputTextureFormat > 70)
    {
      if (outputTextureFormat == 71)
      {
        v25 = 70;
        goto LABEL_28;
      }

      if (outputTextureFormat == 81)
      {
        v25 = 80;
        goto LABEL_28;
      }
    }

    else
    {
      if (outputTextureFormat == 11)
      {
        v25 = 10;
        goto LABEL_28;
      }

      if (outputTextureFormat == 31)
      {
        v25 = 30;
LABEL_28:
        v26 = [(MTLTexture *)v79 newTextureViewWithPixelFormat:v25];

        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __54___MFXTemporalScalingEffectNRS_encodeToCommandBuffer___block_invoke;
        v81[3] = &unk_278AA4B50;
        v79 = v26;
        v82 = v79;
        [bufferCopy addCompletedHandler:v81];

        goto LABEL_29;
      }
    }

    v25 = 0;
    goto LABEL_28;
  }

LABEL_29:
  p_internalRenderResolution = &self->_internalRenderResolution;
  if (self->_internalRenderResolution.tileKernel)
  {
    if (computeCommandEncoder)
    {
      [computeCommandEncoder endEncoding];
    }

    v28 = p_internalRenderResolution->colorRangeReduced;
    v29 = self->_internalRenderResolution.dilatedFlow;
    v30 = self->_internalRenderResolution.pixelData;
    v31 = self->_internalRenderResolution.variance0;
    *&v32 = v30;
    *(&v32 + 1) = v31;
    v33.i64[0] = v28;
    v33.i64[1] = v29;
    v88 = v33;
    v89 = v32;
    v90 = self->_internalRenderResolution.variance1;
    v91 = self->_internalRenderResolution.variance2;
    renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
    [renderPassDescriptor setTileWidth:32];
    [renderPassDescriptor setTileHeight:16];
    [renderPassDescriptor setThreadgroupMemoryLength:10080];
    v35 = 0;
    v36 = 48;
    do
    {
      v37 = v88.i64[v35];
      colorAttachments = [renderPassDescriptor colorAttachments];
      v39 = [colorAttachments objectAtIndexedSubscript:v35];
      [v39 setLoadAction:0];

      colorAttachments2 = [renderPassDescriptor colorAttachments];
      v41 = [colorAttachments2 objectAtIndexedSubscript:v35];
      [v41 setClearColor:{0.0, 0.0, 0.0, 0.0}];

      colorAttachments3 = [renderPassDescriptor colorAttachments];
      v43 = [colorAttachments3 objectAtIndexedSubscript:v35];
      [v43 setStoreAction:1];

      colorAttachments4 = [renderPassDescriptor colorAttachments];
      v45 = [colorAttachments4 objectAtIndexedSubscript:v35];
      [v45 setTexture:v37];

      ++v35;
      v36 -= 8;
    }

    while (v36);
    v46 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];
    [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:v46 forEncode:self->super.super.super._encodeID];
    [v46 setTileTexture:self->_colorTexture atIndex:0];
    [v46 setTileTexture:self->_depthTexture atIndex:1];
    [v46 setTileTexture:self->_motionTexture atIndex:2];
    [v46 setTileBytes:&v83 length:4 atIndex:0];
    [v46 setTileBytes:v84 length:16 atIndex:1];
    [v46 setTileBytes:&v86 length:4 atIndex:2];
    [v46 setTileBytes:&self->_preExposure length:4 atIndex:3];
    [v46 setTileBuffer:self->_internalExposure.currExposure offset:0 atIndex:4];
    [v46 setTileBuffer:self->_internal_is_history_invalid offset:0 atIndex:6];
    [v46 setThreadgroupMemoryLength:5760 offset:0 atIndex:0];
    [v46 setThreadgroupMemoryLength:1440 offset:5760 atIndex:1];
    [v46 setThreadgroupMemoryLength:2880 offset:7200 atIndex:2];
    [v46 setRenderPipelineState:self->_internalRenderResolution.tileKernel];
    *v85 = xmmword_2398F28A0;
    *&v85[16] = 1;
    [v46 dispatchThreadsPerTile:v85];
    [v46 endEncoding];

    for (i = 5; i != -1; --i)
    {
    }

    p_tileKernel = &self->_internalOutputResolution.tileKernel;
    if (!self->_internalOutputResolution.tileKernel)
    {
LABEL_37:
      computeCommandEncoder = [bufferCopy computeCommandEncoder];
      [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
LABEL_51:
      v65 = self->_outputWidth;
      v66 = self->_outputHeight;
      [computeCommandEncoder setTexture:p_internalRenderResolution->colorRangeReduced atIndex:0];
      [computeCommandEncoder setTexture:self->_internalRenderResolution.pixelData atIndex:1];
      [computeCommandEncoder setTexture:self->_internalRenderResolution.dilatedFlow atIndex:2];
      [computeCommandEncoder setTexture:p_internalOutputResolution->prevHistory0 atIndex:4];
      [computeCommandEncoder setTexture:self->_internalOutputResolution.prevHistory1 atIndex:5];
      [computeCommandEncoder setTexture:self->_internalOutputResolution.currHistory0 atIndex:6];
      [computeCommandEncoder setTexture:self->_internalOutputResolution.currHistory1 atIndex:7];
      [computeCommandEncoder setTexture:v79 atIndex:8];
      [computeCommandEncoder setTexture:self->_internalRenderResolution.variance0 atIndex:12];
      [computeCommandEncoder setTexture:self->_internalRenderResolution.variance1 atIndex:13];
      [computeCommandEncoder setTexture:self->_internalRenderResolution.variance2 atIndex:14];
      [computeCommandEncoder setBytes:v84 length:16 atIndex:1];
      [computeCommandEncoder setBytes:&v86 length:4 atIndex:2];
      [computeCommandEncoder setBytes:&self->_preExposure length:4 atIndex:3];
      [computeCommandEncoder setBuffer:self->_internalExposure.currExposure offset:0 atIndex:4];
      [computeCommandEncoder setBuffer:self->_internalExposure.prevExposure offset:0 atIndex:5];
      [computeCommandEncoder setBuffer:self->_internal_is_history_invalid offset:0 atIndex:6];
      [computeCommandEncoder setThreadgroupMemoryLength:3840 atIndex:0];
      [computeCommandEncoder setThreadgroupMemoryLength:7680 atIndex:1];
      [computeCommandEncoder setThreadgroupMemoryLength:7680 atIndex:2];
      if (self->_internalOutputResolution.kernelUsesImageblock)
      {
        [computeCommandEncoder setImageblockWidth:32 height:16];
      }

      [computeCommandEncoder setComputePipelineState:self->_internalOutputResolution.kernel];
      v88.i64[0] = (v65 + 31) >> 5;
      v88.i64[1] = (v66 + 15) >> 4;
      *&v89 = 1;
      *v85 = xmmword_2398F28A0;
      *&v85[16] = 1;
      [computeCommandEncoder dispatchThreadgroups:&v88 threadsPerThreadgroup:v85];
      if (self->_fence)
      {
        [computeCommandEncoder updateFence:?];
      }

      if (computeCommandEncoder)
      {
        [computeCommandEncoder endEncoding];
      }

      goto LABEL_57;
    }
  }

  else
  {
    inputWidth = self->_inputWidth;
    inputHeight = self->_inputHeight;
    [computeCommandEncoder setTexture:self->_colorTexture atIndex:0];
    [computeCommandEncoder setTexture:self->_depthTexture atIndex:1];
    [computeCommandEncoder setTexture:self->_motionTexture atIndex:2];
    [computeCommandEncoder setTexture:p_internalRenderResolution->colorRangeReduced atIndex:3];
    [computeCommandEncoder setTexture:self->_internalRenderResolution.dilatedFlow atIndex:4];
    [computeCommandEncoder setTexture:self->_internalRenderResolution.pixelData atIndex:5];
    [computeCommandEncoder setTexture:self->_internalRenderResolution.variance0 atIndex:6];
    [computeCommandEncoder setTexture:self->_internalRenderResolution.variance1 atIndex:7];
    [computeCommandEncoder setTexture:self->_internalRenderResolution.variance2 atIndex:8];
    [computeCommandEncoder setBytes:&v83 length:4 atIndex:0];
    [computeCommandEncoder setBytes:v84 length:16 atIndex:1];
    [computeCommandEncoder setBytes:&v86 length:4 atIndex:2];
    [computeCommandEncoder setBytes:&self->_preExposure length:4 atIndex:3];
    [computeCommandEncoder setBuffer:self->_internalExposure.currExposure offset:0 atIndex:4];
    [computeCommandEncoder setBuffer:self->_internal_is_history_invalid offset:0 atIndex:6];
    [computeCommandEncoder setThreadgroupMemoryLength:5760 atIndex:0];
    [computeCommandEncoder setThreadgroupMemoryLength:1440 atIndex:1];
    [computeCommandEncoder setThreadgroupMemoryLength:2880 atIndex:2];
    if (self->_internalRenderResolution.kernelUsesImageblock)
    {
      [computeCommandEncoder setImageblockWidth:32 height:16];
    }

    [computeCommandEncoder setComputePipelineState:self->_internalRenderResolution.kernel];
    v88.i64[0] = (inputWidth + 31) >> 5;
    v88.i64[1] = (inputHeight + 15) >> 4;
    *&v89 = 1;
    *v85 = xmmword_2398F28A0;
    *&v85[16] = 1;
    [computeCommandEncoder dispatchThreadgroups:&v88 threadsPerThreadgroup:v85];
    p_tileKernel = &self->_internalOutputResolution.tileKernel;
    if (!self->_internalOutputResolution.tileKernel)
    {
      if (computeCommandEncoder)
      {
        goto LABEL_51;
      }

      goto LABEL_37;
    }

    if (computeCommandEncoder)
    {
      [computeCommandEncoder endEncoding];
    }
  }

  v88.i64[0] = self->_internalOutputResolution.currHistory0;
  v88.i64[1] = self->_internalOutputResolution.currHistory1;
  *&v89 = v79;
  renderPassDescriptor2 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [renderPassDescriptor2 setTileWidth:32];
  [renderPassDescriptor2 setTileHeight:16];
  [renderPassDescriptor2 setThreadgroupMemoryLength:19200];
  v51 = 0;
  v52 = 24;
  do
  {
    v53 = v88.i64[v51];
    colorAttachments5 = [renderPassDescriptor2 colorAttachments];
    v55 = [colorAttachments5 objectAtIndexedSubscript:v51];
    [v55 setLoadAction:0];

    colorAttachments6 = [renderPassDescriptor2 colorAttachments];
    v57 = [colorAttachments6 objectAtIndexedSubscript:v51];
    [v57 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    colorAttachments7 = [renderPassDescriptor2 colorAttachments];
    v59 = [colorAttachments7 objectAtIndexedSubscript:v51];
    [v59 setStoreAction:1];

    colorAttachments8 = [renderPassDescriptor2 colorAttachments];
    v61 = [colorAttachments8 objectAtIndexedSubscript:v51];
    [v61 setTexture:v53];

    ++v51;
    v52 -= 8;
  }

  while (v52);
  v62 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor2];
  [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:v62 forEncode:self->super.super.super._encodeID];
  [v62 setTileTexture:p_internalRenderResolution->colorRangeReduced atIndex:0];
  [v62 setTileTexture:self->_internalRenderResolution.pixelData atIndex:1];
  [v62 setTileTexture:self->_internalRenderResolution.dilatedFlow atIndex:2];
  [v62 setTileTexture:p_internalOutputResolution->prevHistory0 atIndex:4];
  [v62 setTileTexture:self->_internalOutputResolution.prevHistory1 atIndex:5];
  [v62 setTileTexture:self->_internalRenderResolution.variance0 atIndex:12];
  [v62 setTileTexture:self->_internalRenderResolution.variance1 atIndex:13];
  [v62 setTileTexture:self->_internalRenderResolution.variance2 atIndex:14];
  [v62 setTileBytes:v84 length:16 atIndex:1];
  [v62 setTileBytes:&v86 length:4 atIndex:2];
  [v62 setTileBytes:&self->_preExposure length:4 atIndex:3];
  [v62 setTileBuffer:self->_internalExposure.currExposure offset:0 atIndex:4];
  [v62 setTileBuffer:self->_internalExposure.prevExposure offset:0 atIndex:5];
  [v62 setTileBuffer:self->_internal_is_history_invalid offset:0 atIndex:6];
  [v62 setThreadgroupMemoryLength:3840 offset:0 atIndex:0];
  [v62 setThreadgroupMemoryLength:7680 offset:3840 atIndex:1];
  [v62 setThreadgroupMemoryLength:7680 offset:11520 atIndex:2];
  [v62 setRenderPipelineState:*p_tileKernel];
  *v85 = xmmword_2398F28A0;
  *&v85[16] = 1;
  [v62 dispatchThreadsPerTile:v85];
  fence = self->_fence;
  if (fence)
  {
    [v62 updateFence:fence afterStages:2];
  }

  [v62 endEncoding];

  for (j = 2; j != -1; --j)
  {
  }

LABEL_57:
  v67 = p_internalOutputResolution->prevHistory0;
  objc_storeStrong(&self->_internalOutputResolution.prevHistory0, self->_internalOutputResolution.currHistory0);
  currHistory0 = self->_internalOutputResolution.currHistory0;
  self->_internalOutputResolution.currHistory0 = v67;
  v69 = v67;

  v70 = self->_internalOutputResolution.prevHistory1;
  objc_storeStrong(&self->_internalOutputResolution.prevHistory1, self->_internalOutputResolution.currHistory1);
  currHistory1 = self->_internalOutputResolution.currHistory1;
  self->_internalOutputResolution.currHistory1 = v70;
  v72 = v70;

  v73 = self->_internalExposure.prevExposure;
  objc_storeStrong(&self->_internalExposure.prevExposure, self->_internalExposure.currExposure);
  currExposure = self->_internalExposure.currExposure;
  self->_internalExposure.currExposure = v73;

  self->_reset = 0;
  MetalFxScopedSignpost::~MetalFxScopedSignpost(v87);

  v75 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXTemporalScalingEffectNRS *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (CGPoint)previousJitterOffset
{
  x = self->_previousJitterOffset.x;
  y = self->_previousJitterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (__n128)currentWorldToViewMatrix
{
  result = *(self + 480);
  v2 = *(self + 496);
  v3 = *(self + 512);
  v4 = *(self + 528);
  return result;
}

- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix
{
  result[30] = a2;
  result[31] = matrix;
  result[32] = a4;
  result[33] = a5;
  return result;
}

- (__n128)currentViewToClipMatrix
{
  result = *(self + 544);
  v2 = *(self + 560);
  v3 = *(self + 576);
  v4 = *(self + 592);
  return result;
}

- (__n128)setCurrentViewToClipMatrix:(__n128)matrix
{
  result[34] = a2;
  result[35] = matrix;
  result[36] = a4;
  result[37] = a5;
  return result;
}

- (__n128)previousWorldToViewMatrix
{
  result = *(self + 608);
  v2 = *(self + 624);
  v3 = *(self + 640);
  v4 = *(self + 656);
  return result;
}

- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix
{
  result[38] = a2;
  result[39] = matrix;
  result[40] = a4;
  result[41] = a5;
  return result;
}

- (__n128)previousViewToClipMatrix
{
  result = *(self + 672);
  v2 = *(self + 688);
  v3 = *(self + 704);
  v4 = *(self + 720);
  return result;
}

- (__n128)setPreviousViewToClipMatrix:(__n128)matrix
{
  result[42] = a2;
  result[43] = matrix;
  result[44] = a4;
  result[45] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  return self;
}

@end