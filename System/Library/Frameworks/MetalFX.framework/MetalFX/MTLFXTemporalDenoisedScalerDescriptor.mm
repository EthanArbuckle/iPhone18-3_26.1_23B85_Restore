@interface MTLFXTemporalDenoisedScalerDescriptor
+ (float)supportedInputContentMaxScaleForDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newTemporalDenoisedScalerWithDevice:(id)device;
- (id)newTemporalDenoisedScalerWithDevice:(id)device compiler:(id)compiler;
- (id)newTemporalDenoisedScalerWithHistoryTexture:(id)texture;
@end

@implementation MTLFXTemporalDenoisedScalerDescriptor

- (id)copyWithZone:(_NSZone *)zone
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

- (id)newTemporalDenoisedScalerWithHistoryTexture:(id)texture
{
  textureCopy = texture;
  device = [textureCopy device];
  if ([MTLFXTemporalDenoisedScalerDescriptor supportsDevice:device])
  {
    [device supportsFamily:1001];
    v6 = [[_MFXTemporalDenoisingScalingEffect alloc] initWithDevice:device descriptor:self history:textureCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newTemporalDenoisedScalerWithDevice:(id)device
{
  deviceCopy = device;
  if ([MTLFXTemporalDenoisedScalerDescriptor supportsDevice:deviceCopy])
  {
    [(MTLFXTemporalDenoisedScalerDescriptor *)self version];
    v5 = [[_MFXTemporalDenoisingScalingEffect alloc] initWithDevice:deviceCopy descriptor:self history:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (float)supportedInputContentMaxScaleForDevice:(id)device
{
  v3 = [device supportsFamily:1001];
  result = 2.0;
  if (v3)
  {
    return 3.0;
  }

  return result;
}

- (id)newTemporalDenoisedScalerWithDevice:(id)device compiler:(id)compiler
{
  deviceCopy = device;
  compilerCopy = compiler;
  if ([MTLFXTemporalDenoisedScalerDescriptor supportsMetal4FX:deviceCopy])
  {
    v8 = [[_M4FXTemporalDenoisingScalingEffect alloc] initWithDevice:deviceCopy compiler:compilerCopy descriptor:self history:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end