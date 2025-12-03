@interface MTLFXTemporalScalerDescriptor
+ (BOOL)supportsDevice:(id)device;
+ (BOOL)supportsMetal4FX:(id)x;
+ (float)supportedInputContentMaxScaleForDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newTemporalScalerWithDevice:(id)device;
- (id)newTemporalScalerWithDevice:(id)device compiler:(id)compiler;
- (id)newTemporalScalerWithHistoryTexture:(id)texture;
- (id)newTemporalScalerWithHistoryTexture:(id)texture compiler:(id)compiler;
@end

@implementation MTLFXTemporalScalerDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setVersion:{-[MTLFXTemporalScalerDescriptor version](self, "version")}];
  [v4 setColorTextureFormat:-[MTLFXTemporalScalerDescriptor colorTextureFormat](self, "colorTextureFormat")];
  [v4 setDepthTextureFormat:-[MTLFXTemporalScalerDescriptor depthTextureFormat](self, "depthTextureFormat")];
  [v4 setMotionTextureFormat:-[MTLFXTemporalScalerDescriptor motionTextureFormat](self, "motionTextureFormat")];
  [v4 setOutputTextureFormat:-[MTLFXTemporalScalerDescriptor outputTextureFormat](self, "outputTextureFormat")];
  [v4 setInputWidth:{-[MTLFXTemporalScalerDescriptor inputWidth](self, "inputWidth")}];
  [v4 setInputHeight:{-[MTLFXTemporalScalerDescriptor inputHeight](self, "inputHeight")}];
  [v4 setOutputWidth:{-[MTLFXTemporalScalerDescriptor outputWidth](self, "outputWidth")}];
  [v4 setOutputHeight:{-[MTLFXTemporalScalerDescriptor outputHeight](self, "outputHeight")}];
  [v4 setAutoExposureEnabled:{-[MTLFXTemporalScalerDescriptor isAutoExposureEnabled](self, "isAutoExposureEnabled")}];
  [v4 setRequiresSynchronousInitialization:{-[MTLFXTemporalScalerDescriptor requiresSynchronousInitialization](self, "requiresSynchronousInitialization")}];
  [v4 setInputContentPropertiesEnabled:{-[MTLFXTemporalScalerDescriptor isInputContentPropertiesEnabled](self, "isInputContentPropertiesEnabled")}];
  [(MTLFXTemporalScalerDescriptor *)self inputContentMinScale];
  [v4 setInputContentMinScale:?];
  [(MTLFXTemporalScalerDescriptor *)self inputContentMaxScale];
  [v4 setInputContentMaxScale:?];
  [v4 setReactiveMaskTextureEnabled:{-[MTLFXTemporalScalerDescriptor isReactiveMaskTextureEnabled](self, "isReactiveMaskTextureEnabled")}];
  [v4 setReactiveMaskTextureFormat:-[MTLFXTemporalScalerDescriptor reactiveMaskTextureFormat](self, "reactiveMaskTextureFormat")];
  return v4;
}

- (id)newTemporalScalerWithHistoryTexture:(id)texture
{
  textureCopy = texture;
  device = [textureCopy device];
  if ([MTLFXTemporalScalerDescriptor supportsDevice:device])
  {
    [device supportsFamily:1001];
    MTLFXTemporalScalerVersionOverride = getMTLFXTemporalScalerVersionOverride([(MTLFXTemporalScalerDescriptor *)self version]);
    v7 = off_278AA4988;
    if (MTLFXTemporalScalerVersionOverride != 0x10000)
    {
      v7 = off_278AA4990;
    }

    v8 = [objc_alloc(*v7) initWithDevice:device descriptor:self history:textureCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newTemporalScalerWithDevice:(id)device
{
  v4 = device;
  if ([MTLFXTemporalScalerDescriptor supportsDevice:v4])
  {
    {
      findEnvVarNum<unsigned int>();
    }

    if ([MTLFXTemporalScalerDescriptor newTemporalScalerWithDevice:]::debugMode)
    {
      if (([MTLFXTemporalScalerDescriptor newTemporalScalerWithDevice:]& 1) == 0)
      {
        findEnvVarNum<int>();
      }

      v11 = [_MFXTemporalScalingEffectDebug alloc];
      v7 = [(_MFXTemporalScalingEffectDebug *)v11 initWithDevice:v4 descriptor:self mode:[MTLFXTemporalScalerDescriptor newTemporalScalerWithDevice:]::debugMode enableJitterViz:[MTLFXTemporalScalerDescriptor newTemporalScalerWithDevice:]::jitterVizEnabled != 0];
      goto LABEL_12;
    }

    v5 = [v4 supportsFamily:1001];
    MTLFXTemporalScalerVersionOverride = getMTLFXTemporalScalerVersionOverride([(MTLFXTemporalScalerDescriptor *)self version]);
    if (!v5)
    {
      goto LABEL_7;
    }

    if (MTLFXTemporalScalerVersionOverride == 0x10000)
    {
      v9 = off_278AA4988;
    }

    else
    {
      if (MTLFXTemporalScalerVersionOverride == 65537)
      {
LABEL_7:
        v7 = [[_MFXTemporalScalingEffectNRS alloc] initWithDevice:v4 descriptor:self];
LABEL_12:
        v8 = v7;
        goto LABEL_13;
      }

      v9 = off_278AA4990;
    }

    v7 = [objc_alloc(*v9) initWithDevice:v4 descriptor:self history:0];
    goto LABEL_12;
  }

  v8 = 0;
LABEL_13:

  return v8;
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

+ (BOOL)supportsDevice:(id)device
{
  v3 = device;
  v4 = [v3 supportsFamily:1001];
  v5 = [v3 supportsFamily:1007] | ~v4;

  return v5 & 1;
}

+ (BOOL)supportsMetal4FX:(id)x
{
  xCopy = x;
  if ([xCopy supportsFamily:5002])
  {
    v4 = [xCopy supportsFamily:1007];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)newTemporalScalerWithHistoryTexture:(id)texture compiler:(id)compiler
{
  textureCopy = texture;
  compilerCopy = compiler;
  device = [textureCopy device];
  if ([MTLFXTemporalScalerDescriptor supportsMetal4FX:device])
  {
    v9 = [[_M4FXTemporalScalingEffectV4 alloc] initWithDevice:device descriptor:self compiler:compilerCopy history:textureCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newTemporalScalerWithDevice:(id)device compiler:(id)compiler
{
  deviceCopy = device;
  compilerCopy = compiler;
  v8 = [[_M4FXTemporalScalingEffectV4 alloc] initWithDevice:deviceCopy descriptor:self compiler:compilerCopy history:0];

  return v8;
}

- (uint64_t)newTemporalScalerWithDevice:.cold.1()
{
  {
    v0 = 1;
  }

  {
    v0 = 0;
  }

  else
  {
    v0 = -1;
  }

  return v0 & 1;
}

@end