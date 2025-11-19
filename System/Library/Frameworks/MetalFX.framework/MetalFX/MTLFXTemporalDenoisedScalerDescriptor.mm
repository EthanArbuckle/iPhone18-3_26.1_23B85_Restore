@interface MTLFXTemporalDenoisedScalerDescriptor
+ (float)supportedInputContentMaxScaleForDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newTemporalDenoisedScalerWithDevice:(id)a3;
- (id)newTemporalDenoisedScalerWithDevice:(id)a3 compiler:(id)a4;
- (id)newTemporalDenoisedScalerWithHistoryTexture:(id)a3;
@end

@implementation MTLFXTemporalDenoisedScalerDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setVersion:{-[MTLFXTemporalDenoisedScalerDescriptor version](self, "version")}];
  [v4 setColorTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor colorTextureFormat](self, "colorTextureFormat")];
  [v4 setDepthTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor depthTextureFormat](self, "depthTextureFormat")];
  [v4 setMotionTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor motionTextureFormat](self, "motionTextureFormat")];
  [v4 setOutputTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor outputTextureFormat](self, "outputTextureFormat")];
  [v4 setDiffuseAlbedoTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor diffuseAlbedoTextureFormat](self, "diffuseAlbedoTextureFormat")];
  [v4 setSpecularAlbedoTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor specularAlbedoTextureFormat](self, "specularAlbedoTextureFormat")];
  [v4 setNormalTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor normalTextureFormat](self, "normalTextureFormat")];
  [v4 setRoughnessTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor roughnessTextureFormat](self, "roughnessTextureFormat")];
  [v4 setInputWidth:{-[MTLFXTemporalDenoisedScalerDescriptor inputWidth](self, "inputWidth")}];
  [v4 setInputHeight:{-[MTLFXTemporalDenoisedScalerDescriptor inputHeight](self, "inputHeight")}];
  [v4 setOutputWidth:{-[MTLFXTemporalDenoisedScalerDescriptor outputWidth](self, "outputWidth")}];
  [v4 setOutputHeight:{-[MTLFXTemporalDenoisedScalerDescriptor outputHeight](self, "outputHeight")}];
  [v4 setAutoExposureEnabled:{-[MTLFXTemporalDenoisedScalerDescriptor isAutoExposureEnabled](self, "isAutoExposureEnabled")}];
  [v4 setRequiresSynchronousInitialization:{-[MTLFXTemporalDenoisedScalerDescriptor requiresSynchronousInitialization](self, "requiresSynchronousInitialization")}];
  [v4 setInputContentPropertiesEnabled:{-[MTLFXTemporalDenoisedScalerDescriptor isInputContentPropertiesEnabled](self, "isInputContentPropertiesEnabled")}];
  [(MTLFXTemporalDenoisedScalerDescriptor *)self inputContentMinScale];
  [v4 setInputContentMinScale:?];
  [(MTLFXTemporalDenoisedScalerDescriptor *)self inputContentMaxScale];
  [v4 setInputContentMaxScale:?];
  [v4 setReactiveMaskTextureEnabled:{-[MTLFXTemporalDenoisedScalerDescriptor isReactiveMaskTextureEnabled](self, "isReactiveMaskTextureEnabled")}];
  [v4 setReactiveMaskTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor reactiveMaskTextureFormat](self, "reactiveMaskTextureFormat")];
  [v4 setSpecularHitDistanceTextureEnabled:{-[MTLFXTemporalDenoisedScalerDescriptor isSpecularHitDistanceTextureEnabled](self, "isSpecularHitDistanceTextureEnabled")}];
  [v4 setSpecularHitDistanceTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor specularHitDistanceTextureFormat](self, "specularHitDistanceTextureFormat")];
  [v4 setDenoiseStrengthMaskTextureEnabled:{-[MTLFXTemporalDenoisedScalerDescriptor isDenoiseStrengthMaskTextureEnabled](self, "isDenoiseStrengthMaskTextureEnabled")}];
  [v4 setDenoiseStrengthMaskTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor denoiseStrengthMaskTextureFormat](self, "denoiseStrengthMaskTextureFormat")];
  [v4 setTransparencyOverlayTextureEnabled:{-[MTLFXTemporalDenoisedScalerDescriptor isTransparencyOverlayTextureEnabled](self, "isTransparencyOverlayTextureEnabled")}];
  [v4 setTransparencyOverlayTextureFormat:-[MTLFXTemporalDenoisedScalerDescriptor transparencyOverlayTextureFormat](self, "transparencyOverlayTextureFormat")];
  return v4;
}

- (id)newTemporalDenoisedScalerWithHistoryTexture:(id)a3
{
  v4 = a3;
  v5 = [v4 device];
  if ([MTLFXTemporalDenoisedScalerDescriptor supportsDevice:v5])
  {
    [v5 supportsFamily:1001];
    v6 = [[_MFXTemporalDenoisingScalingEffect alloc] initWithDevice:v5 descriptor:self history:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newTemporalDenoisedScalerWithDevice:(id)a3
{
  v4 = a3;
  if ([MTLFXTemporalDenoisedScalerDescriptor supportsDevice:v4])
  {
    [(MTLFXTemporalDenoisedScalerDescriptor *)self version];
    v5 = [[_MFXTemporalDenoisingScalingEffect alloc] initWithDevice:v4 descriptor:self history:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (float)supportedInputContentMaxScaleForDevice:(id)a3
{
  v3 = [a3 supportsFamily:1001];
  result = 2.0;
  if (v3)
  {
    return 3.0;
  }

  return result;
}

- (id)newTemporalDenoisedScalerWithDevice:(id)a3 compiler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MTLFXTemporalDenoisedScalerDescriptor supportsMetal4FX:v6])
  {
    v8 = [[_M4FXTemporalDenoisingScalingEffect alloc] initWithDevice:v6 compiler:v7 descriptor:self history:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end