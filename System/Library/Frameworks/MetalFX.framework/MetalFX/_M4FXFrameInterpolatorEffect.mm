@interface _M4FXFrameInterpolatorEffect
- (_M4FXFrameInterpolatorEffect)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
@end

@implementation _M4FXFrameInterpolatorEffect

- (_M4FXFrameInterpolatorEffect)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor
{
  deviceCopy = device;
  compilerCopy = compiler;
  descriptorCopy = descriptor;
  v34.receiver = self;
  v34.super_class = _M4FXFrameInterpolatorEffect;
  v9 = [(_MTL4FXEffect *)&v34 init];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v27 pathForResource:@"default" ofType:@"metallib"];
  v10 = [MEMORY[0x277CBEBC0] URLWithString:v26];
  v33 = 0;
  v29 = [deviceCopy newLibraryWithURL:v10 error:&v33];
  v25 = v33;

  scaler = [descriptorCopy scaler];
  v12 = scaler;
  obj = scaler;
  if (!scaler)
  {
    goto LABEL_14;
  }

  if ([scaler conformsToProtocol:&unk_284C66EF0])
  {
    v13 = &OBJC_IVAR____M4FXFrameInterpolatorEffect__temporalScaler;
    goto LABEL_6;
  }

  if ([v12 conformsToProtocol:&unk_284C672B0])
  {
    v13 = &OBJC_IVAR____M4FXFrameInterpolatorEffect__temporalScaler4;
LABEL_6:
    v14 = *v13;
    objc_storeStrong((&v9->super.super.super.super.isa + v14), obj);
    v15 = *(&v9->super.super.super.super.isa + v14);
    if (v15)
    {
      v16 = v15;
      v9->_depthTextureFormat = [v15 depthTextureFormat];
      v9->_motionTextureFormat = [v16 motionTextureFormat];
      v9->_inputWidth = [v16 inputWidth];
      v9->_inputHeight = [v16 inputHeight];
      v9->_outputWidth = [v16 outputWidth];
      outputHeight = [v16 outputHeight];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([v12 conformsToProtocol:&unk_284C66098])
  {
    v18 = &OBJC_IVAR____M4FXFrameInterpolatorEffect__denoisedScaler;
    goto LABEL_12;
  }

  if ([v12 conformsToProtocol:&unk_284C67AC0])
  {
    v18 = &OBJC_IVAR____M4FXFrameInterpolatorEffect__denoisedScaler4;
LABEL_12:
    v19 = *v18;
    objc_storeStrong((&v9->super.super.super.super.isa + v19), obj);
    v20 = *(&v9->super.super.super.super.isa + v19);
    if (v20)
    {
      v32 = v20;
      v9->_depthTextureFormat = [v20 depthTextureFormat];
      v9->_motionTextureFormat = [v32 motionTextureFormat];
      v9->_inputWidth = [v32 inputWidth];
      v9->_inputHeight = [v32 inputHeight];
      v9->_outputWidth = [v32 outputWidth];
      outputHeight = [v32 outputHeight];
      goto LABEL_15;
    }

LABEL_14:
    v9->_colorTextureFormat = [descriptorCopy colorTextureFormat];
    v9->_depthTextureFormat = [descriptorCopy depthTextureFormat];
    v9->_motionTextureFormat = [descriptorCopy motionTextureFormat];
    v9->_inputWidth = [descriptorCopy inputWidth];
    v9->_inputHeight = [descriptorCopy inputHeight];
    v9->_outputWidth = [descriptorCopy outputWidth];
    outputHeight = [descriptorCopy outputHeight];
LABEL_15:
    v9->_outputHeight = outputHeight;
    v9->_contentWidth = v9->_inputWidth;
    v9->_contentHeight = v9->_inputHeight;
    v9->_colorTextureFormat = [descriptorCopy colorTextureFormat];
    v9->_outputTextureFormat = [descriptorCopy outputTextureFormat];
    v21 = objc_opt_new();
    [v21 setMaxBufferBindCount:8];
    [v21 setMaxTextureBindCount:16];
    [deviceCopy newArgumentTableWithDescriptor:v21 error:0];
    newFence = [deviceCopy newFence];
    internalFence = v9->_internalFence;
    v9->_internalFence = newFence;

    operator new();
  }

  MTLReportFailure();

  return 0;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v4 = FrameGenImpl<MFXDevice4>::~FrameGenImpl(impl);
    MEMORY[0x23EE7AA60](v4, 0x1080C4083F9AD3FLL);
  }

  self->_impl = 0;
  v5.receiver = self;
  v5.super_class = _M4FXFrameInterpolatorEffect;
  [(_M4FXFrameInterpolatorEffect *)&v5 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTL4FXEffect *)self _beginEncodeWithCommandBuffer:bufferCopy];
  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = self->_colorTexture;
  v26 = self->_prevColorTexture;
  v35 = 1;
  p_temporalScaler = &self->_temporalScaler;
  temporalScaler = self->_temporalScaler;
  if (temporalScaler || (p_temporalScaler = &self->_temporalScaler4, (temporalScaler = self->_temporalScaler4) != 0))
  {
    dilatedMotionVectors = [(MTLFXTemporalScalerSPI *)temporalScaler dilatedMotionVectors];
    v8 = *(&v27 + 1);
    *(&v27 + 1) = dilatedMotionVectors;

    v9 = *p_temporalScaler;
    contentWidth = [(MTLFXTemporalScalerSPI *)v9 inputContentWidth];
    inputContentHeight = [(MTLFXTemporalScalerSPI *)v9 inputContentHeight];

    goto LABEL_6;
  }

  denoisedScaler = self->_denoisedScaler;
  if (denoisedScaler)
  {
    dilatedMotionVectors2 = [(MTLFXTemporalDenoisedScalerSPI *)denoisedScaler dilatedMotionVectors];
    v19 = *(&v27 + 1);
    *(&v27 + 1) = dilatedMotionVectors2;

    contentWidth = [(MTLFXTemporalDenoisedScalerSPI *)self->_denoisedScaler inputContentWidth];
    inputContentHeight2 = [(MTLFXTemporalDenoisedScalerSPI *)self->_denoisedScaler inputContentHeight];
LABEL_22:
    inputContentHeight = inputContentHeight2;
    goto LABEL_6;
  }

  denoisedScaler4 = self->_denoisedScaler4;
  if (denoisedScaler4)
  {
    dilatedMotionVectors3 = [(MTL4FXTemporalDenoisedScalerSPI *)denoisedScaler4 dilatedMotionVectors];
    v23 = *(&v27 + 1);
    *(&v27 + 1) = dilatedMotionVectors3;

    contentWidth = [(MTL4FXTemporalDenoisedScalerSPI *)self->_denoisedScaler4 inputContentWidth];
    inputContentHeight2 = [(MTL4FXTemporalDenoisedScalerSPI *)self->_denoisedScaler4 inputContentHeight];
    goto LABEL_22;
  }

  v35 = 0;
  *(&v27 + 1) = self->_motionTexture;
  contentHeight = self->_contentHeight;
  contentWidth = self->_contentWidth;
  inputContentHeight = contentHeight;
LABEL_6:
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTexturesForInterpolation(self->_colorTexture, self->_prevColorTexture, self->_depthTexture, *(&v27 + 1), self->_outputTexture, contentWidth, inputContentHeight, self->_colorTextureFormat, contentWidth, inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    if (self->_nearPlane == 0.0)
    {
      MTLReportFailure();
    }

    if (self->_farPlane == 0.0)
    {
      MTLReportFailure();
    }

    if (self->_aspectRatio == 0.0)
    {
      MTLReportFailure();
    }

    if (self->_fieldOfView == 0.0)
    {
      MTLReportFailure();
    }
  }

  objc_storeStrong(&v27, self->_depthTexture);
  objc_storeStrong(&v28 + 1, self->_debugTexture);
  reset = self->_reset;
  objc_storeStrong(&v28, self->_outputTexture);
  motionVectorScaleY = self->_motionVectorScaleY;
  deltaTime = self->_deltaTime;
  reversedDepth = self->_reversedDepth;
  nearPlane = self->_nearPlane;
  motionVectorScaleX = self->_motionVectorScaleX;
  v31 = motionVectorScaleY;
  v36 = deltaTime;
  v37 = nearPlane;
  farPlane = self->_farPlane;
  v33 = reversedDepth;
  v38 = farPlane;
  objc_storeStrong(&v29, self->_uiTexture);
  v34 = !self->_uiTextureComposited;
  fence = self->_fence;
  if (!fence)
  {
    fence = self->_internalFence;
  }

  objc_storeStrong(&v29 + 1, fence);
  [bufferCopy useResidencySet:self->_pDevice->var2];
  pDevice = self->_pDevice;
  pDevice->var6 = self;
  FrameGenImpl<MFXDevice4>::encodeTo(self->_impl, pDevice, bufferCopy, &v25);
  self->_reset = 0;
}

@end