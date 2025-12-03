@interface _M4FXTemporalDenoisingScalingEffect
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (_M4FXTemporalDenoisingScalingEffect)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor history:(id)history;
- (__n128)setViewToClipMatrix:(__n128)matrix;
- (__n128)setWorldToViewMatrix:(__n128)matrix;
- (__n128)viewToClipMatrix;
- (__n128)worldToViewMatrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
@end

@implementation _M4FXTemporalDenoisingScalingEffect

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

- (_M4FXTemporalDenoisingScalingEffect)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor history:(id)history
{
  device;
  compiler;
  descriptorCopy = descriptor;
  history;
  v14.receiver = self;
  v14.super_class = _M4FXTemporalDenoisingScalingEffect;
  v12 = [(_MTL4FXEffect *)&v14 init];
  objc_storeStrong(&v12->_device, device);
  operator new();
}

- (void)dealloc
{
  if (self->_filter)
  {
    BRNet_v3_Filter<MFXDevice4>::~BRNet_v3_Filter();
  }

  self->_filter = 0;
  if (self->_denoiseFilter)
  {
    BFNet_v1_Filter<MFXDevice4>::~BFNet_v1_Filter();
  }

  self->_denoiseFilter = 0;
  device4 = self->device4;
  if (device4)
  {
    MFXDevice4::~MFXDevice4(device4);
    MEMORY[0x23EE7AA60]();
  }

  self->device4 = 0;
  v4.receiver = self;
  v4.super_class = _M4FXTemporalDenoisingScalingEffect;
  [(_M4FXTemporalDenoisingScalingEffect *)&v4 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTL4FXEffect *)self _beginEncodeWithCommandBuffer:?];
  if (MTLReportFailureTypeEnabled())
  {
    diffuseAlbedoTexture = self->_diffuseAlbedoTexture;
    roughnessTexture = self->_roughnessTexture;
    checkInputOutputTexturesForDenoiser(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_normalTexture, diffuseAlbedoTexture, self->_specularAlbedoTexture, roughnessTexture, self->_specularHitDistanceTexture, self->_denoiseStrengthMaskTexture, self->_preUpscaleComposeTexture, self->_reactiveMaskTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat, self->_depthTextureFormat, self->_motionTextureFormat, self->_normalTextureFormat, self->_diffuseAlbedoTextureFormat, self->_specularAlbedoTextureFormat, self->_roughnessTextureFormat, self->_specularHitDistanceTextureFormat, self->_denoiseStrengthMaskTextureFormat, self->_preUpscaleComposeTextureFormat, self->_reactiveMaskTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v10 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v10 < inputContentMinScale)
    {
      v26 = v10;
      v27 = inputContentMinScale;
      MTLReportFailure();
    }

    v11 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v11 > inputContentMaxScale)
    {
      v26 = v11;
      v27 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v26]!= 2)
    {
      MTLReportFailure();
    }
  }

  v12 = *&self->_jitterOffset[4];
  reset = self->_reset;
  reversedDepth = self->_reversedDepth;
  preExposure = self->_preExposure;
  v14 = *&self->_motionVectorScale[4];
  v15 = self->_inputContentWidth;
  v16 = self->_inputContentHeight;
  self->_colorTexture;
  self->_depthTexture;
  self->_motionTexture;
  self->_outputTexture;
  self->_exposureTexture;
  self->_reactiveMaskTexture;
  v17 = self->_inputContentWidth;
  v18 = self->_inputContentHeight;
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  *(self->_denoiseFilter + 299) = *(self->_denoiseFilter + 299) == 0;
  [bufferCopy useResidencySet:self->device4->var2];
  device4 = self->device4;
  MFXComputeEncoder4::beginEncoding(device4->var4, bufferCopy, device4->var3);
  var4 = device4->var4;
  if (MTLTraceEnabled())
  {
    [(_M4FXTemporalDenoisingScalingEffect *)self outputWidth];
    [(_M4FXTemporalDenoisingScalingEffect *)self outputHeight];
    [(_M4FXTemporalDenoisingScalingEffect *)self inputWidth];
    [(_M4FXTemporalDenoisingScalingEffect *)self inputHeight];
    v21 = self->device4;
    v21->var6 = self;
    MFXDevice4::emitSignPostForComputeEncoder(v21);
  }

  fence = self->_fence;
  if (fence)
  {
    [*var4 waitForFence:fence beforeEncoderStages:0x8000000];
  }

  [*var4 waitForFence:self->_internalFence beforeEncoderStages:0x8000000];
  filter = self->_filter;
  *var4;
  *(var4 + 1);
  v33 = *(var4 + 4);
  *(var4 + 3);
  colorTexture = self->_colorTexture;
  autoExposureEnabled = self->_autoExposureEnabled;
  BRNet_v3_Filter<MFXDevice4>::encodeExposureCalcForDenoiser();
}

- (__n128)worldToViewMatrix
{
  result = *(self + 752);
  v2 = *(self + 768);
  v3 = *(self + 784);
  v4 = *(self + 800);
  return result;
}

- (__n128)setWorldToViewMatrix:(__n128)matrix
{
  result[47] = a2;
  result[48] = matrix;
  result[49] = a4;
  result[50] = a5;
  return result;
}

- (__n128)viewToClipMatrix
{
  result = *(self + 816);
  v2 = *(self + 832);
  v3 = *(self + 848);
  v4 = *(self + 864);
  return result;
}

- (__n128)setViewToClipMatrix:(__n128)matrix
{
  result[51] = a2;
  result[52] = matrix;
  result[53] = a4;
  result[54] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 31) = 0u;
  *(self + 32) = 0u;
  *(self + 30) = 0u;
  return self;
}

@end