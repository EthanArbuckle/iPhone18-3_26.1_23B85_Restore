@interface _MFXFrameInterpolatorEffect
- (_MFXFrameInterpolatorEffect)initWithDevice:(id)a3 descriptor:(id)a4;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3;
- (void)encodeToCommandQueue:(id)a3;
@end

@implementation _MFXFrameInterpolatorEffect

- (_MFXFrameInterpolatorEffect)initWithDevice:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v25 = a4;
  v27.receiver = self;
  v27.super_class = _MFXFrameInterpolatorEffect;
  v7 = [(_MTLFXEffectBase *)&v27 init];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 pathForResource:@"default" ofType:@"metallib"];
  v8 = [MEMORY[0x277CBEBC0] URLWithString:v21];
  v26 = 0;
  v23 = [v6 newLibraryWithURL:v8 error:&v26];
  v20 = v26;

  v9 = [v25 scaler];
  obj = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  if ([v9 conformsToProtocol:&unk_284C66EF0])
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
      v14 = [v13 outputHeight];
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
      v14 = [v18 outputHeight];
      goto LABEL_11;
    }

LABEL_10:
    v7->_depthTextureFormat = [v25 depthTextureFormat];
    v7->_motionTextureFormat = [v25 motionTextureFormat];
    v7->_inputWidth = [v25 inputWidth];
    v7->_inputHeight = [v25 inputHeight];
    v7->_outputWidth = [v25 outputWidth];
    v14 = [v25 outputHeight];
LABEL_11:
    v7->_outputHeight = v14;
    v7->_outputTextureFormat = [v25 outputTextureFormat];
    v7->_colorTextureFormat = [v25 colorTextureFormat];
    v7->_contentWidth = v7->_inputWidth;
    v7->_contentHeight = v7->_inputHeight;
    v7->_outputTextureFormat = [v25 outputTextureFormat];
    v6;
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

- (void)encodeToCommandQueue:(id)a3
{
  v4 = [a3 commandBuffer];
  [(_MFXFrameInterpolatorEffect *)self encodeToCommandBuffer:?];
  [v4 commit];
}

- (void)encodeToCommandBuffer:(id)a3
{
  v24 = a3;
  [(_MTLFXEffectBase *)self _beginEncode];
  v4 = v24;
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
    v9 = [(MTLFXTemporalScalerSPI *)self->_temporalScaler dilatedMotionVectors];
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
        v20 = [(MTLFXTemporalDenoisedScalerSPI *)denoisedScaler dilatedMotionVectors];
        v21 = *(&v25 + 1);
        *(&v25 + 1) = v20;

        v37 = [(MTLFXTemporalDenoisedScalerSPI *)*p_denoisedScaler inputContentWidth];
        LODWORD(contentHeight) = [(MTLFXTemporalDenoisedScalerSPI *)*p_denoisedScaler inputContentHeight];
      }

      else
      {
        v33 = 0;
        v22 = self->_motionTexture;
        contentWidth = self->_contentWidth;
        *(&v25 + 1) = v22;
        v37 = contentWidth;
        contentHeight = self->_contentHeight;
      }

LABEL_11:
      v38 = contentHeight;
      if (MTLReportFailureTypeEnabled())
      {
        checkInputOutputTexturesForInterpolation(self->_colorTexture, self->_prevColorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, v37, v38, self->_colorTextureFormat, v37, v38, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
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
    v9 = [(MTL4FXTemporalScalerSPI *)self->_temporalScaler4 dilatedMotionVectors];
  }

  v11 = *(&v25 + 1);
  *(&v25 + 1) = v9;

  v37 = [(MTLFXTemporalScalerSPI *)v8 inputContentWidth];
  LODWORD(contentHeight) = [(MTLFXTemporalScalerSPI *)v8 inputContentHeight];
  goto LABEL_11;
}

@end