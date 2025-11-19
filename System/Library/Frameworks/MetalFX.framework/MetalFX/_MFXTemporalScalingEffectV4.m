@interface _MFXTemporalScalingEffectV4
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_MFXTemporalScalingEffectV4)initWithDevice:(id)a3 descriptor:(id)a4 history:(id)a5;
- (__n128)currentViewToClipMatrix;
- (__n128)currentWorldToViewMatrix;
- (__n128)previousViewToClipMatrix;
- (__n128)previousWorldToViewMatrix;
- (__n128)setCurrentViewToClipMatrix:(__n128)a3;
- (__n128)setCurrentWorldToViewMatrix:(__n128)a3;
- (__n128)setPreviousViewToClipMatrix:(__n128)a3;
- (__n128)setPreviousWorldToViewMatrix:(__n128)a3;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3;
- (void)encodeToCommandQueue:(id)a3;
@end

@implementation _MFXTemporalScalingEffectV4

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

- (_MFXTemporalScalingEffectV4)initWithDevice:(id)a3 descriptor:(id)a4 history:(id)a5
{
  v101 = a3;
  v9 = a4;
  obj = a5;
  v111.receiver = self;
  v111.super_class = _MFXTemporalScalingEffectV4;
  v10 = [(_MTLFXEffectBase *)&v111 init];
  objc_storeStrong(v10 + 6, a3);
  *(v10 + 14) = [v9 colorTextureFormat];
  *(v10 + 15) = [v9 depthTextureFormat];
  *(v10 + 16) = [v9 motionTextureFormat];
  *(v10 + 104) = [v9 outputTextureFormat];
  *(v10 + 17) = [v9 reactiveMaskTextureFormat];
  *(v10 + 7) = [v9 inputWidth];
  *(v10 + 8) = [v9 inputHeight];
  *(v10 + 9) = [v9 outputWidth];
  *(v10 + 10) = [v9 outputHeight];
  v10[62] = 1065353216;
  *(v10 + 288) = 1;
  v11 = *(v10 + 7);
  *&v12 = -v11;
  v10[66] = v12;
  v13 = *(v10 + 8);
  *(&v12 + 1) = -v13;
  *(v10 + 33) = v12;
  *(v10 + 289) = 1;
  *(v10 + 291) = 1;
  *(v10 + 293) = [v9 isReactiveMaskTextureEnabled];
  *(v10 + 292) = 1;
  *(v10 + 294) = 1;
  getFeatureConfiguration();
  v14 = getenv("MTLFX_FORCE_GPU");
  if (!v14)
  {
    v14 = "0";
  }

  if (strtol(v14, 0, 0))
  {
    *(v10 + 291) = 0;
  }

  if (isInternalBuild(void)::once != -1)
  {
    [_MFXTemporalScalingEffectV4 initWithDevice:descriptor:history:];
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v15 = getenv("MTLFX_PRE_BICUBIC");
    if (!v15)
    {
      v15 = "0";
    }

    if (strtol(v15, 0, 0))
    {
      *(v10 + 292) = 0;
    }
  }

  v16 = getenv("MTLFX_DISABLE_LATE_LATCH");
  if (!v16)
  {
    v16 = "0";
  }

  if (strtol(v16, 0, 0))
  {
    *(v10 + 294) = 0;
  }

  v17 = getenv("MTLFX_EXECUTION_MODE");
  if (!v17)
  {
    v17 = "0";
  }

  if (strtol(v17, 0, 0) == 1)
  {
    *(v10 + 291) = 0;
  }

  *(v10 + 18) = 1;
  *(v10 + 19) = 1;
  *(v10 + 20) = 1;
  *(v10 + 21) = 1;
  *(v10 + 22) = 7;
  v99 = [MEMORY[0x277CD7838] deviceWithMTLDevice:*(v10 + 6)];
  v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v96 = [v97 pathForResource:@"default" ofType:@"metallib"];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v96];
  v110 = 0;
  v98 = [v101 newLibraryWithURL:v18 error:&v110];
  v95 = v110;

  v100 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
  [v100 setUsage:3];
  [v100 setCompressionMode:1];
  v19 = obj;
  v20 = obj;
  if (!obj)
  {
    v20 = [*(v10 + 6) newTextureWithDescriptor:v100];
    v19 = 0;
  }

  objc_storeStrong(v10 + 29, v20);
  if (!v19)
  {
  }

  if (*(v10 + 293) == 1)
  {
    v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(v10 + 17) width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
    [v21 setUsage:3];
    [v21 setCompressionMode:1];
    v22 = [*(v10 + 6) newTextureWithDescriptor:v21];
    v23 = *(v10 + 30);
    *(v10 + 30) = v22;
  }

  v24 = dispatch_semaphore_create(1);
  v25 = *(v10 + 68);
  *(v10 + 68) = v24;

  if (!*(v10 + 68))
  {
    goto LABEL_37;
  }

  *(v10 + 11) = *(v10 + 7);
  *(v10 + 12) = *(v10 + 8);
  *(v10 + 290) = [v9 isAutoExposureEnabled];
  v26 = getenv("MTLFX_FORCE_AUTO_EXPOSURE");
  if (!v26)
  {
    v26 = "0";
  }

  if (strtol(v26, 0, 0))
  {
    *(v10 + 290) = 1;
  }

  if ([v9 isInputContentPropertiesEnabled])
  {
    [v9 inputContentMinScale];
    v10[26] = v27;
    [v9 inputContentMaxScale];
    *(v10 + 27) = v28;
    v29 = *(v10 + 26);
    v30 = v28;
  }

  else
  {
    v31 = *(v10 + 9);
    v32 = *(v10 + 7);
    v33 = v31 / v32;
    v34 = *(v10 + 10);
    v35 = *(v10 + 8);
    v36 = v34 / v35;
    v29 = fminf(v33, v36);
    v28 = fmaxf(v33, v36);
    *(v10 + 26) = v29;
    *(v10 + 27) = v28;
    v30 = fmaxf(v31 / (v32 + 1), v34 / (v35 + 1));
  }

  if (v29 >= 1.0 && v30 <= 3.0)
  {
    v39 = v10[16];
    v93 = v10[16];
    v94 = v10[14];
    if (v28 <= 2.0)
    {
      v42 = v10[18];
      v44 = v10[20];
    }

    else if ([v9 isInputContentPropertiesEnabled])
    {
      v40 = *(v10 + 27);
      v41 = ceilf(*(v10 + 9) / v40);
      v42 = (v41 + v41);
      v43 = ceilf(*(v10 + 10) / v40);
      v44 = (v43 + v43);
    }

    else
    {
      v42 = 2 * v10[14];
      v44 = 2 * v10[16];
    }

    v45 = objc_opt_new();
    [(MPSGraphCompilationDescriptor *)v45 setOptimizationLevel:1];
    if (*(v10 + 291) == 1)
    {
      v46 = objc_opt_new();
      v47 = v46;
      v92 = v46;
      if (*(v10 + 294) == 1)
      {
        [v46 setEnableLowLatencySignalSharedEvent:1];
        [v47 setEnableLowLatencyWaitSharedEvent:1];
        [v47 setDisableIOFencing:1];
      }

      v91 = *(v10 + 6);
      v48 = [v91 newCommandQueueWithDescriptor:v47];
      v49 = *(v10 + 56);
      *(v10 + 56) = v48;

      v50 = [*(v10 + 6) newEvent];
      v51 = *(v10 + 57);
      *(v10 + 57) = v50;

      v52 = [*(v10 + 6) newEvent];
      v53 = *(v10 + 58);
      *(v10 + 58) = v52;

      v54 = [*(v10 + 6) newEvent];
      v55 = *(v10 + 59);
      *(v10 + 59) = v54;

      v56 = [*(v10 + 6) newEvent];
      v57 = *(v10 + 60);
      *(v10 + 60) = v56;

      v58 = [*(v10 + 6) newSharedEvent];
      v59 = *(v10 + 61);
      *(v10 + 61) = v58;

      v60 = [*(v10 + 6) newSharedEvent];
      v61 = *(v10 + 62);
      *(v10 + 62) = v60;

      v62 = *(v10 + 58);
      if (objc_opt_respondsToSelector())
      {
        [*(v10 + 58) setEnableBarrier:0];
        v63 = [*(v10 + 6) newFence];
        v64 = *(v10 + 63);
        *(v10 + 63) = v63;
      }

      v65 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v66 = dispatch_queue_attr_make_with_qos_class(v65, QOS_CLASS_USER_INTERACTIVE, 0);

      v67 = dispatch_queue_create("MetalFX", v66);
      v68 = *(v10 + 66);
      *(v10 + 66) = v67;

      getDefaultBRNetDescriptor(3, v42, v44, &v105);
      *(v10 + 22) = v105;
      *(v10 + 23) = v106;
      *(v10 + 24) = v107;
      *(v10 + 25) = v108;
      v69 = *(v10 + 52);
      *(v10 + 52) = v109;

      [(MPSGraphCompilationDescriptor *)v45 setAllowedComputeDevices:7];
      [(MPSGraphCompilationDescriptor *)v45 setPreferredDevice:2];
      if ([v101 supportsFamily:1008])
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      [(MPSGraphCompilationDescriptor *)v45 setAneCompilerSpatialSplitting:v70];
      if (*(v10 + 294) == 1)
      {
        [(MPSGraphCompilationDescriptor *)v45 setEnableANELateLatch:1];
        [(MPSGraphCompilationDescriptor *)v45 setEnableANEFWToFWSignal:1];
      }

      v71 = getMPSGraphExecutable((v10 + 88), v45);
      v72 = *(v10 + 38);
      *(v10 + 38) = v71;

      [(MPSGraphCompilationDescriptor *)v45 setAllowedComputeDevices:1];
      [(MPSGraphCompilationDescriptor *)v45 setPreferredDevice:1];
      v73 = getMPSGraphExecutable((v10 + 88), v45);
      v74 = *(v10 + 39);
      *(v10 + 39) = v73;

      v75 = v92;
    }

    else
    {
      v76 = *(v10 + 56);
      *(v10 + 56) = 0;

      v77 = *(v10 + 57);
      *(v10 + 57) = 0;

      v78 = *(v10 + 58);
      *(v10 + 58) = 0;

      v79 = *(v10 + 59);
      *(v10 + 59) = 0;

      v80 = *(v10 + 60);
      *(v10 + 60) = 0;

      v81 = *(v10 + 61);
      *(v10 + 61) = 0;

      v82 = *(v10 + 62);
      *(v10 + 62) = 0;

      TemporalScalarBRNetVersionOverride = getTemporalScalarBRNetVersionOverride(4);
      getDefaultBRNetDescriptor(TemporalScalarBRNetVersionOverride, v42, v44, &v105);
      *(v10 + 22) = v105;
      *(v10 + 23) = v106;
      *(v10 + 24) = v107;
      *(v10 + 25) = v108;
      v84 = *(v10 + 52);
      *(v10 + 52) = v109;

      [(MPSGraphCompilationDescriptor *)v45 setAllowedComputeDevices:1];
      [(MPSGraphCompilationDescriptor *)v45 setPreferredDevice:1];
      v85 = *(v10 + 38);
      *(v10 + 38) = 0;

      v86 = getMPSGraphExecutable((v10 + 88), v45);
      v75 = *(v10 + 39);
      *(v10 + 39) = v86;
    }

    v104 = 0;
    v103 = 0;
    v87 = makeMPSTensorDataWithData(v99, v10[95], v10[96], v10[97], 0, &v104, 0, *(v10 + 51));
    v88 = *(v10 + 54);
    *(v10 + 54) = v87;

    if (*(v10 + 54))
    {
      v89 = makeMPSTensorDataWithData(v99, v10[99], v10[100], v10[101], 0, &v103, 0, *(v10 + 51));
      v90 = *(v10 + 55);
      *(v10 + 55) = v89;

      if (*(v10 + 55))
      {
        v105 = v101;
        v106 = 0uLL;
        operator new();
      }
    }

    v37 = obj;
  }

  else
  {
LABEL_37:
    MTLReportFailure();
    v37 = obj;
  }

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
  v2.super_class = _MFXTemporalScalingEffectV4;
  [(_MFXTemporalScalingEffectV4 *)&v2 dealloc];
}

- (void)encodeToCommandQueue:(id)a3
{
  v4 = [a3 commandBuffer];
  [(_MFXTemporalScalingEffectV4 *)self encodeToCommandBuffer:?];
  [v4 commit];
}

- (void)encodeToCommandBuffer:(id)a3
{
  v4 = a3;
  v37 = self->_device;
  memset(v38, 0, 24);
  [(_MTLFXEffectBase *)self _beginEncode];
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  v5 = v4;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markCommandBuffer:v5 component:3];
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v36, 0, self, 7, self->super.super.super._encodeID, 0);
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v14 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v14 < inputContentMinScale)
    {
      v27 = v14;
      v28 = inputContentMinScale;
      MTLReportFailure();
    }

    v15 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v15 > inputContentMaxScale)
    {
      v27 = v15;
      v28 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v27]!= 2)
    {
      MTLReportFailure();
    }
  }

  encodeID = self->super.super.super._encodeID;
  v32 = HIDWORD(*&self->_jitterOffset[4]);
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
  if (MTLTraceEnabled())
  {
    [(_MFXTemporalScalingEffectV4 *)self outputWidth];
    [(_MFXTemporalScalingEffectV4 *)self outputHeight];
    [(_MFXTemporalScalingEffectV4 *)self inputWidth];
    [(_MFXTemporalScalingEffectV4 *)self inputHeight];
    if (MTLTraceEnabled())
    {
      [v5 globalTraceObjectID];
      kdebug_trace();
    }
  }

  if (self->_useANE)
  {
    ++self->_inputEventValue;
    ++self->_outputEventValue;
    inputEventValue = self->_inputEventValue;
    [v5 encodeSignalEvent:self->_inputEvent value:inputEventValue];
    [v5 encodeWaitForEvent:self->_midProcessingStartEvent value:2 * inputEventValue];
    MFXComputeEncoder3::beginEncoding(v38, v5);
    v34 = v38[0];
    [v34 setLabel:@"MetalFX_Temporal_MidProcessing"];
    [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:v34 forEncode:encodeID];
    filter = self->_filter;
    history = self->_history;
    BRNet_v3_Filter<MFXDevice3>::encodeMid();
  }

  if (self->super.super.super._useRefTensors)
  {
    MTLReportFailure();
  }

  if (self->super.super.super._dumpTensors)
  {
    dispatch_semaphore_wait(self->_waitForCompletion, 0xFFFFFFFFFFFFFFFFLL);
    NSLog(&cfstr_DumpTensorsEnc.isa);
  }

  MFXComputeEncoder3::beginEncoding(v38, v5);
  v35 = v38[0];
  [v35 setLabel:@"MetalFX_Temporal_PreProcessing"];
  [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:v35 forEncode:encodeID];
  if (self->_fence)
  {
    [v35 waitForFence:?];
  }

  v25 = self->_filter;
  v26 = self->_history;
  [(MPSGraphTensorData *)self->_input_TensorData mpsndarray];
  [objc_claimAutoreleasedReturnValue() buffer];
  objc_claimAutoreleasedReturnValue();
  autoExposureEnabled = self->_autoExposureEnabled;
  BRNet_v3_Filter<MFXDevice3>::encodePre();
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
  result = *(a1 + 560);
  v2 = *(a1 + 576);
  v3 = *(a1 + 592);
  v4 = *(a1 + 608);
  return result;
}

- (__n128)setCurrentWorldToViewMatrix:(__n128)a3
{
  result[35] = a2;
  result[36] = a3;
  result[37] = a4;
  result[38] = a5;
  return result;
}

- (__n128)currentViewToClipMatrix
{
  result = *(a1 + 624);
  v2 = *(a1 + 640);
  v3 = *(a1 + 656);
  v4 = *(a1 + 672);
  return result;
}

- (__n128)setCurrentViewToClipMatrix:(__n128)a3
{
  result[39] = a2;
  result[40] = a3;
  result[41] = a4;
  result[42] = a5;
  return result;
}

- (__n128)previousWorldToViewMatrix
{
  result = *(a1 + 688);
  v2 = *(a1 + 704);
  v3 = *(a1 + 720);
  v4 = *(a1 + 736);
  return result;
}

- (__n128)setPreviousWorldToViewMatrix:(__n128)a3
{
  result[43] = a2;
  result[44] = a3;
  result[45] = a4;
  result[46] = a5;
  return result;
}

- (__n128)previousViewToClipMatrix
{
  result = *(a1 + 752);
  v2 = *(a1 + 768);
  v3 = *(a1 + 784);
  v4 = *(a1 + 800);
  return result;
}

- (__n128)setPreviousViewToClipMatrix:(__n128)a3
{
  result[47] = a2;
  result[48] = a3;
  result[49] = a4;
  result[50] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 52) = 0;
  return self;
}

@end