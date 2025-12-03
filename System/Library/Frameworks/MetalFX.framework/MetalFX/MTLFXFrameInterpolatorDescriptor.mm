@interface MTLFXFrameInterpolatorDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (id)newFrameInterpolatorWithDevice:(id)device;
- (id)newFrameInterpolatorWithDevice:(id)device compiler:(id)compiler;
@end

@implementation MTLFXFrameInterpolatorDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setColorTextureFormat:-[MTLFXFrameInterpolatorDescriptor colorTextureFormat](self, "colorTextureFormat")];
  [v4 setOutputTextureFormat:-[MTLFXFrameInterpolatorDescriptor outputTextureFormat](self, "outputTextureFormat")];
  [v4 setMotionTextureFormat:-[MTLFXFrameInterpolatorDescriptor motionTextureFormat](self, "motionTextureFormat")];
  [v4 setDepthTextureFormat:-[MTLFXFrameInterpolatorDescriptor depthTextureFormat](self, "depthTextureFormat")];
  scaler = [(MTLFXFrameInterpolatorDescriptor *)self scaler];
  [v4 setScaler:scaler];

  [v4 setInputWidth:{-[MTLFXFrameInterpolatorDescriptor inputWidth](self, "inputWidth")}];
  [v4 setInputHeight:{-[MTLFXFrameInterpolatorDescriptor inputHeight](self, "inputHeight")}];
  [v4 setOutputWidth:{-[MTLFXFrameInterpolatorDescriptor outputWidth](self, "outputWidth")}];
  [v4 setOutputHeight:{-[MTLFXFrameInterpolatorDescriptor outputHeight](self, "outputHeight")}];
  return v4;
}

- (id)newFrameInterpolatorWithDevice:(id)device
{
  deviceCopy = device;
  if (+[MTLFXFrameInterpolatorDescriptor supportsDevice:](MTLFXFrameInterpolatorDescriptor, "supportsDevice:", deviceCopy) && [deviceCopy supportsFamily:1001])
  {
    [(MTLFXFrameInterpolatorDescriptor *)self version];
    v5 = [[_MFXFrameInterpolatorEffect alloc] initWithDevice:deviceCopy descriptor:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newFrameInterpolatorWithDevice:(id)device compiler:(id)compiler
{
  deviceCopy = device;
  compilerCopy = compiler;
  if (+[MTLFXFrameInterpolatorDescriptor supportsDevice:](MTLFXFrameInterpolatorDescriptor, "supportsDevice:", deviceCopy) && [deviceCopy supportsFamily:1001])
  {
    [(MTLFXFrameInterpolatorDescriptor *)self version];
    v8 = [[_M4FXFrameInterpolatorEffect alloc] initWithDevice:deviceCopy compiler:compilerCopy descriptor:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end