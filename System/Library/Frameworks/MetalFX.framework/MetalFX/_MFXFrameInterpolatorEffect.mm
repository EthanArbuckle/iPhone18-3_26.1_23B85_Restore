@interface _MFXFrameInterpolatorEffect
- (_MFXFrameInterpolatorEffect)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXFrameInterpolatorEffect

- (_MFXFrameInterpolatorEffect)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  v27.receiver = self;
  v27.super_class = _MFXFrameInterpolatorEffect;
  v7 = [(_MTLFXEffectBase *)&v27 init];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 pathForResource:@"default" ofType:@"metallib"];
  v8 = [MEMORY[0x277CBEBC0] URLWithString:v21];
  v26 = 0;
  v23 = [deviceCopy newLibraryWithURL:v8 error:&v26];
  v20 = v26;

  scaler = [descriptorCopy scaler];
  obj = scaler;
  if (!scaler)
  {
    goto LABEL_10;
  }

  if ([scaler conformsToProtocol:&unk_284C66EF0])
  {
    v10 = &OBJC_IVAR____MFXFrameInterpolatorEffect__temporalScaler;
    goto LABEL_4;
  }

  if ([obj conformsToProtocol:&unk_284C66218])
  {
    v15 = &OBJC_IVAR____MFXFrameInterpolatorEffect__denoisedScaler;
    goto LABEL_8;
  }

  if ([obj conformsToProtocol:&unk_284C672B0])
  {
    v10 = &OBJC_IVAR____MFXFrameInterpolatorEffect__temporalScaler4;
LABEL_4:
    v11 = *v10;
    objc_storeStrong((&v7->super.super.super.super.isa + v11), obj);
    v12 = *(&v7->super.super.super.super.isa + v11);
    if (v12)
    {
      v13 = v12;
      v7->_depthTextureFormat = [v12 depthTextureFormat];
      v7->_motionTextureFormat = [v13 motionTextureFormat];
      v7->_inputWidth = [v13 inputWidth];
      v7->_inputHeight = [v13 inputHeight];
      v7->_outputWidth = [v13 outputWidth];
      outputHeight = [v13 outputHeight];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([obj conformsToProtocol:&unk_284C67B20])
  {
    v15 = &OBJC_IVAR____MFXFrameInterpolatorEffect__denoisedScaler4;
LABEL_8:
    v16 = *v15;
    objc_storeStrong((&v7->super.super.super.super.isa + v16), obj);
    v17 = *(&v7->super.super.super.super.isa + v16);
    if (v17)
    {
      v18 = v17;
      v7->_depthTextureFormat = [v17 depthTextureFormat];
      v7->_motionTextureFormat = [v18 motionTextureFormat];
      v7->_inputWidth = [v18 inputWidth];
      v7->_inputHeight = [v18 inputHeight];
      v7->_outputWidth = [v18 outputWidth];
      outputHeight = [v18 outputHeight];
      goto LABEL_11;
    }

LABEL_10:
    v7->_depthTextureFormat = [descriptorCopy depthTextureFormat];
    v7->_motionTextureFormat = [descriptorCopy motionTextureFormat];
    v7->_inputWidth = [descriptorCopy inputWidth];
    v7->_inputHeight = [descriptorCopy inputHeight];
    v7->_outputWidth = [descriptorCopy outputWidth];
    outputHeight = [descriptorCopy outputHeight];
LABEL_11:
    v7->_outputHeight = outputHeight;
    v7->_outputTextureFormat = [descriptorCopy outputTextureFormat];
    v7->_colorTextureFormat = [descriptorCopy colorTextureFormat];
    v7->_contentWidth = v7->_inputWidth;
    v7->_contentHeight = v7->_inputHeight;
    v7->_outputTextureFormat = [descriptorCopy outputTextureFormat];
    deviceCopy;
    operator new();
  }

  MTLReportFailure();

  return 0;
}

- (void)dealloc
{
  if (self->_impl)
  {
    FrameGenImpl<MFXDevice3>::~FrameGenImpl();
  }

  self->_impl = 0;
  v2.receiver = self;
  v2.super_class = _MFXFrameInterpolatorEffect;
  [(_MFXFrameInterpolatorEffect *)&v2 dealloc];
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXFrameInterpolatorEffect *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
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

  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  self->_colorTexture;
  self->_prevColorTexture;
  v33 = 1;
  temporalScaler = self->_temporalScaler;
  if (temporalScaler)
  {
    v8 = temporalScaler;
    dilatedMotionVectors = [(MTLFXTemporalScalerSPI *)self->_temporalScaler dilatedMotionVectors];
  }

  else
  {
    temporalScaler4 = self->_temporalScaler4;
    if (!temporalScaler4)
    {
      p_denoisedScaler = &self->_denoisedScaler;
      denoisedScaler = self->_denoisedScaler;
      if (denoisedScaler || (p_denoisedScaler = &self->_denoisedScaler4, (denoisedScaler = self->_denoisedScaler4) != 0))
      {
        dilatedMotionVectors2 = [(MTLFXTemporalDenoisedScalerSPI *)denoisedScaler dilatedMotionVectors];
        v21 = *(&v25 + 1);
        *(&v25 + 1) = dilatedMotionVectors2;

        inputContentWidth = [(MTLFXTemporalDenoisedScalerSPI *)*p_denoisedScaler inputContentWidth];
        LODWORD(contentHeight) = [(MTLFXTemporalDenoisedScalerSPI *)*p_denoisedScaler inputContentHeight];
      }

      else
      {
        v33 = 0;
        v22 = self->_motionTexture;
        contentWidth = self->_contentWidth;
        *(&v25 + 1) = v22;
        inputContentWidth = contentWidth;
        contentHeight = self->_contentHeight;
      }

LABEL_11:
      v38 = contentHeight;
      if (MTLReportFailureTypeEnabled())
      {
        checkInputOutputTexturesForInterpolation(self->_colorTexture, self->_prevColorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, inputContentWidth, v38, self->_colorTextureFormat, inputContentWidth, v38, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
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

      objc_storeStrong(&v25, self->_depthTexture);
      objc_storeStrong(&v26 + 1, self->_debugTexture);
      reset = self->_reset;
      objc_storeStrong(&v26, self->_outputTexture);
      motionVectorScaleY = self->_motionVectorScaleY;
      reversedDepth = self->_reversedDepth;
      motionVectorScaleX = self->_motionVectorScaleX;
      v29 = motionVectorScaleY;
      v31 = reversedDepth;
      objc_storeStrong(&v27 + 1, self->_fence);
      nearPlane = self->_nearPlane;
      farPlane = self->_farPlane;
      deltaTime = self->_deltaTime;
      v35 = nearPlane;
      v36 = farPlane;
      objc_storeStrong(&v27, self->_uiTexture);
      v32 = !self->_uiTextureComposited;
      if (MTLTraceEnabled())
      {
        [(_MFXFrameInterpolatorEffect *)self outputWidth];
        [(_MFXFrameInterpolatorEffect *)self outputHeight];
        [(_MFXFrameInterpolatorEffect *)self inputWidth];
        [(_MFXFrameInterpolatorEffect *)self inputHeight];
        if (MTLTraceEnabled())
        {
          [v4 globalTraceObjectID];
          kdebug_trace();
        }
      }

      [v4 device];
      objc_claimAutoreleasedReturnValue();
      impl = self->_impl;
      FrameGenImpl<MFXDevice3>::encodeTo();
    }

    v8 = temporalScaler4;
    dilatedMotionVectors = [(MTL4FXTemporalScalerSPI *)self->_temporalScaler4 dilatedMotionVectors];
  }

  v11 = *(&v25 + 1);
  *(&v25 + 1) = dilatedMotionVectors;

  inputContentWidth = [(MTLFXTemporalScalerSPI *)v8 inputContentWidth];
  LODWORD(contentHeight) = [(MTLFXTemporalScalerSPI *)v8 inputContentHeight];
  goto LABEL_11;
}

@end