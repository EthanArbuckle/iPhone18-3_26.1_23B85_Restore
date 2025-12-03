@interface _MFXTemporalScalingEffectV3
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_MFXTemporalScalingEffectV3)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history;
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
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXTemporalScalingEffectV3

- (float)jitterOffsetX
{
  v2 = *&self->_jitterOffset[4];
  LODWORD(result) = v2;
  return result;
}

- (float)motionVectorScaleX
{
  v2 = *&self->_motionVectorScale[4];
  LODWORD(result) = v2;
  return result;
}

- (CGPoint)jitterOffset
{
  v2 = vcvtq_f64_f32(*&self->_jitterOffset[4]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)motionVectorScale
{
  v2 = vcvtq_f64_f32(*&self->_motionVectorScale[4]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (_MFXTemporalScalingEffectV3)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  historyCopy = history;
  v108.receiver = self;
  v108.super_class = _MFXTemporalScalingEffectV3;
  v10 = [(_MTLFXEffectBase *)&v108 init];
  objc_storeStrong(v10 + 6, device);
  *(v10 + 11) = [descriptorCopy colorTextureFormat];
  *(v10 + 12) = [descriptorCopy depthTextureFormat];
  *(v10 + 13) = [descriptorCopy motionTextureFormat];
  *(v10 + 103) = [descriptorCopy outputTextureFormat];
  *(v10 + 14) = [descriptorCopy reactiveMaskTextureFormat];
  *(v10 + 7) = [descriptorCopy inputWidth];
  *(v10 + 8) = [descriptorCopy inputHeight];
  *(v10 + 9) = [descriptorCopy outputWidth];
  *(v10 + 10) = [descriptorCopy outputHeight];
  *(v10 + 30) = 1065353216;
  v10[160] = 1;
  v11 = *(v10 + 7);
  *&v12 = -v11;
  *(v10 + 34) = v12;
  v13 = *(v10 + 8);
  *(&v12 + 1) = -v13;
  *(v10 + 17) = v12;
  v10[161] = 1;
  v10[163] = 1;
  v10[165] = [descriptorCopy isReactiveMaskTextureEnabled];
  v10[164] = 1;
  v10[166] = 1;
  getFeatureConfiguration();
  if (isInternalBuild(void)::once != -1)
  {
    [_MFXTemporalScalingEffectV3 initWithDevice:descriptor:history:];
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v14 = getenv("MTLFX_FORCE_GPU");
    if (!v14)
    {
      v14 = "0";
    }

    if (strtol(v14, 0, 0))
    {
      v10[163] = 0;
    }

    v15 = getenv("MTLFX_PRE_BICUBIC");
    if (!v15)
    {
      v15 = "0";
    }

    if (strtol(v15, 0, 0))
    {
      v10[164] = 0;
    }
  }

  v16 = getenv("MTLFX_DISABLE_LATE_LATCH");
  if (!v16)
  {
    v16 = "0";
  }

  if (strtol(v16, 0, 0))
  {
    v10[166] = 0;
  }

  v17 = getenv("MTLFX_EXECUTION_MODE");
  if (!v17)
  {
    v17 = "0";
  }

  if (strtol(v17, 0, 0) == 1)
  {
    v10[163] = 0;
  }

  *(v10 + 95) = 1;
  *(v10 + 96) = 1;
  *(v10 + 97) = 1;
  *(v10 + 98) = 1;
  *(v10 + 99) = 7;
  v102 = [MEMORY[0x277CD7838] deviceWithMTLDevice:*(v10 + 6)];
  v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v98 = [v99 pathForResource:@"default" ofType:@"metallib"];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v98];
  v107 = 0;
  v100 = [deviceCopy newLibraryWithURL:v18 error:&v107];
  v97 = v107;

  v101 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
  [v101 setUsage:3];
  [v101 setCompressionMode:1];
  v19 = historyCopy;
  v20 = historyCopy;
  if (!historyCopy)
  {
    v20 = [*(v10 + 6) newTextureWithDescriptor:v101];
    v19 = 0;
  }

  objc_storeStrong(v10 + 27, v20);
  if (!v19)
  {
  }

  if (v10[165] == 1)
  {
    v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(v10 + 14) width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
    [v21 setUsage:3];
    [v21 setCompressionMode:1];
    v22 = [*(v10 + 6) newTextureWithDescriptor:v21];
    v23 = *(v10 + 28);
    *(v10 + 28) = v22;
  }

  v104 = objc_opt_new();
  if (v10[166] == 1)
  {
    [v104 setEnableLowLatencySignalSharedEvent:1];
    [v104 setEnableLowLatencyWaitSharedEvent:1];
    [v104 setDisableIOFencing:1];
  }

  v96 = *(v10 + 6);
  v24 = [v96 newCommandQueueWithDescriptor:v104];
  v25 = *(v10 + 48);
  *(v10 + 48) = v24;

  newEvent = [*(v10 + 6) newEvent];
  v27 = *(v10 + 49);
  *(v10 + 49) = newEvent;

  newEvent2 = [*(v10 + 6) newEvent];
  v29 = *(v10 + 50);
  *(v10 + 50) = newEvent2;

  newEvent3 = [*(v10 + 6) newEvent];
  v31 = *(v10 + 51);
  *(v10 + 51) = newEvent3;

  newEvent4 = [*(v10 + 6) newEvent];
  v33 = *(v10 + 52);
  *(v10 + 52) = newEvent4;

  if (v10[163] == 1)
  {
    newSharedEvent = [*(v10 + 6) newSharedEvent];
    v35 = *(v10 + 53);
    *(v10 + 53) = newSharedEvent;

    newSharedEvent2 = [*(v10 + 6) newSharedEvent];
  }

  else
  {
    v37 = *(v10 + 53);
    *(v10 + 53) = 0;

    newSharedEvent2 = [*(v10 + 6) newEvent];
  }

  v38 = *(v10 + 54);
  *(v10 + 54) = newSharedEvent2;

  v39 = *(v10 + 50);
  if (objc_opt_respondsToSelector())
  {
    [*(v10 + 50) setEnableBarrier:0];
    newFence = [*(v10 + 6) newFence];
    v41 = *(v10 + 55);
    *(v10 + 55) = newFence;
  }

  v42 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v43 = dispatch_queue_attr_make_with_qos_class(v42, QOS_CLASS_USER_INTERACTIVE, 0);

  v95 = v43;
  v44 = dispatch_queue_create("MetalFX", v43);
  v45 = *(v10 + 58);
  *(v10 + 58) = v44;

  *(v10 + 92) = *(v10 + 7);
  *(v10 + 93) = *(v10 + 8);
  v10[162] = [descriptorCopy isAutoExposureEnabled];
  v46 = getenv("MTLFX_FORCE_AUTO_EXPOSURE");
  if (!v46)
  {
    v46 = "0";
  }

  if (strtol(v46, 0, 0))
  {
    v10[162] = 1;
  }

  v48 = v104;
  v47 = historyCopy;
  if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    [descriptorCopy inputContentMinScale];
    *(v10 + 188) = v49;
    [descriptorCopy inputContentMaxScale];
    *(v10 + 189) = v50;
    v51 = *(v10 + 188);
    v52 = v50;
  }

  else
  {
    v53 = *(v10 + 9);
    v54 = *(v10 + 7);
    v55 = v53 / v54;
    v56 = *(v10 + 10);
    v57 = *(v10 + 8);
    v58 = v56 / v57;
    v51 = fminf(v55, v58);
    v50 = fmaxf(v55, v58);
    *(v10 + 188) = v51;
    *(v10 + 189) = v50;
    v52 = fmaxf(v53 / (v54 + 1), v56 / (v57 + 1));
  }

  if (v51 < 1.0 || v52 > 3.0)
  {
    MTLReportFailure();
    goto LABEL_43;
  }

  v59 = *(v10 + 14);
  v60 = *(v10 + 16);
  if (v50 <= 2.0)
  {
    v63 = *(v10 + 18);
    v65 = *(v10 + 20);
  }

  else if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    v61 = *(v10 + 189);
    v62 = ceilf(*(v10 + 9) / v61);
    v63 = (v62 + v62);
    v64 = ceilf(*(v10 + 10) / v61);
    v65 = (v64 + v64);
  }

  else
  {
    v63 = 2 * *(v10 + 14);
    v65 = 2 * *(v10 + 16);
  }

  TemporalScalarBRNetVersionOverride = getTemporalScalarBRNetVersionOverride(0);
  v94 = TemporalScalarBRNetVersionOverride;
  if (TemporalScalarBRNetVersionOverride <= 1)
  {
    if (TemporalScalarBRNetVersionOverride)
    {
      if (TemporalScalarBRNetVersionOverride == 1)
      {
        v70 = MEMORY[0x277CCACA8];
        v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        resourcePath = [v93 resourcePath];
        v69 = [v70 stringWithFormat:@"%@/%@", resourcePath, @"emit_v40_nhwc_constants.dat"];
        goto LABEL_57;
      }

LABEL_73:
      MTLReportFailure();
      abort();
    }

    v74 = MEMORY[0x277CCACA8];
    v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    resourcePath = [v93 resourcePath];
    v72 = [v74 stringWithFormat:@"%@/%@", resourcePath, @"emit_v35_constants.dat"];
LABEL_61:
    v91 = 0;
    v92 = v72;
    goto LABEL_62;
  }

  if (TemporalScalarBRNetVersionOverride == 2)
  {
    v71 = MEMORY[0x277CCACA8];
    v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    resourcePath = [v93 resourcePath];
    v72 = [v71 stringWithFormat:@"%@/%@", resourcePath, @"emit_v40_nchw_constants.dat"];
    goto LABEL_61;
  }

  if (TemporalScalarBRNetVersionOverride == 3)
  {
    v73 = MEMORY[0x277CCACA8];
    v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    resourcePath = [v93 resourcePath];
    v72 = [v73 stringWithFormat:@"%@/%@", resourcePath, @"emit_v41_nchw_constants.dat"];
    goto LABEL_61;
  }

  if (TemporalScalarBRNetVersionOverride != 4)
  {
    goto LABEL_73;
  }

  v67 = MEMORY[0x277CCACA8];
  v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourcePath = [v93 resourcePath];
  v69 = [v67 stringWithFormat:@"%@/%@", resourcePath, @"emit_v41_nhwc_constants.dat"];
LABEL_57:
  v91 = 1;
  v92 = v69;
LABEL_62:
  v75 = ((v63 + 63) >> 1) & 0x7FFFFFE0;
  v76 = v65;
  v77 = ((v65 + 63) >> 1) & 0x7FFFFFE0;

  *(v10 + 72) = v94;
  *(v10 + 73) = v63;
  *(v10 + 74) = v76;
  *(v10 + 75) = v75;
  *(v10 + 76) = v77;
  *(v10 + 308) = 0x100000005;
  *(v10 + 79) = v75;
  *(v10 + 80) = v77;
  *(v10 + 324) = 0x200000005;
  *(v10 + 83) = v75 >> 1;
  *(v10 + 84) = v77 >> 1;
  *(v10 + 85) = 11;
  v78 = *(v10 + 44);
  *(v10 + 43) = v91;
  *(v10 + 44) = v92;

  v79 = objc_opt_new();
  v80 = v79;
  if (v10[163] == 1)
  {
    [(MPSGraphCompilationDescriptor *)v79 setOptimizationLevel:1];
    [(MPSGraphCompilationDescriptor *)v80 setAllowedComputeDevices:7];
    [(MPSGraphCompilationDescriptor *)v80 setPreferredDevice:2];
    if ([deviceCopy supportsFamily:1008])
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    [(MPSGraphCompilationDescriptor *)v80 setAneCompilerSpatialSplitting:v81];
    if (v10[166] == 1)
    {
      [(MPSGraphCompilationDescriptor *)v80 setEnableANELateLatch:1];
      [(MPSGraphCompilationDescriptor *)v80 setEnableANEFWToFWSignal:1];
    }

    v82 = getMPSGraphExecutable(v10 + 4, v80);
  }

  else
  {
    v82 = 0;
  }

  v83 = *(v10 + 30);
  *(v10 + 30) = v82;

  [(MPSGraphCompilationDescriptor *)v80 setOptimizationProfile:0];
  [(MPSGraphCompilationDescriptor *)v80 setAllowedComputeDevices:1];
  [(MPSGraphCompilationDescriptor *)v80 setPreferredDevice:1];
  v84 = getMPSGraphExecutable(v10 + 4, v80);
  v85 = *(v10 + 31);
  *(v10 + 31) = v84;

  *v106 = 0;
  v48 = v104;
  v47 = historyCopy;
  v86 = makeMPSTensorDataWithData(v102, *(v10 + 79), *(v10 + 80), *(v10 + 81), 0, &v106[1], 0, *(v10 + 43));
  v87 = *(v10 + 46);
  *(v10 + 46) = v86;

  if (*(v10 + 46))
  {
    v88 = makeMPSTensorDataWithData(v102, *(v10 + 83), *(v10 + 84), *(v10 + 85), 0, v106, 0, *(v10 + 43));
    v89 = *(v10 + 47);
    *(v10 + 47) = v88;

    if (*(v10 + 47))
    {
      deviceCopy;
      operator new();
    }
  }

LABEL_43:

  return 0;
}

- (void)dealloc
{
  if (self->_filter)
  {
    BRNet_v3_Filter<MFXDevice3>::~BRNet_v3_Filter();
  }

  self->_filter = 0;
  v2.receiver = self;
  v2.super_class = _MFXTemporalScalingEffectV3;
  [(_MFXTemporalScalingEffectV3 *)&v2 dealloc];
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXTemporalScalingEffectV3 *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  v4 = bufferCopy;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v5 = MetalFXHUDInstanceV3(void)::v3;
  v6 = v5;
  if (v5)
  {
    [v5 markCommandBuffer:v4 component:3];
  }

  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v13 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v13 < inputContentMinScale)
    {
      v24 = v13;
      v25 = inputContentMinScale;
      MTLReportFailure();
    }

    v14 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v14 > inputContentMaxScale)
    {
      v24 = v14;
      v25 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v24]!= 2)
    {
      MTLReportFailure();
    }
  }

  encodeID = self->super.super.super._encodeID;
  ++self->_inputEventValue;
  ++self->_outputEventValue;
  inputEventValue = self->_inputEventValue;
  v15 = *&self->_jitterOffset[4];
  reset = self->_reset;
  reversedDepth = self->_reversedDepth;
  preExposure = self->_preExposure;
  v17 = *&self->_motionVectorScale[4];
  v18 = self->_inputContentWidth;
  v19 = self->_inputContentHeight;
  self->_colorTexture;
  self->_depthTexture;
  self->_motionTexture;
  self->_outputTexture;
  self->_exposureTexture;
  self->_reactiveMaskTexture;
  v20 = self->_inputContentWidth;
  v21 = self->_inputContentHeight;
  self->_device;
  memset(v32, 0, 24);
  [v4 encodeSignalEvent:self->_inputEvent value:self->_inputEventValue];
  [v4 encodeWaitForEvent:self->_midProcessingStartEvent value:2 * inputEventValue];
  MFXComputeEncoder3::beginEncoding(v32, v4);
  v31 = v32[0];
  [v31 setLabel:@"MetalFX_Temporal_MidProcessing"];
  [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:v31 forEncode:encodeID];
  filter = self->_filter;
  history = self->_history;
  BRNet_v3_Filter<MFXDevice3>::encodeMid();
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
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 264) = 0u;
  *(self + 44) = 0;
  return self;
}

@end