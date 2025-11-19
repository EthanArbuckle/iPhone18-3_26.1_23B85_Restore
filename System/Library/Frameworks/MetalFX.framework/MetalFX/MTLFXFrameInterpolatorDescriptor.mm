@interface MTLFXFrameInterpolatorDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (id)newFrameInterpolatorWithDevice:(id)a3;
- (id)newFrameInterpolatorWithDevice:(id)a3 compiler:(id)a4;
@end

@implementation MTLFXFrameInterpolatorDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setColorTextureFormat:-[MTLFXFrameInterpolatorDescriptor colorTextureFormat](self, "colorTextureFormat")];
  [v4 setOutputTextureFormat:-[MTLFXFrameInterpolatorDescriptor outputTextureFormat](self, "outputTextureFormat")];
  [v4 setMotionTextureFormat:-[MTLFXFrameInterpolatorDescriptor motionTextureFormat](self, "motionTextureFormat")];
  [v4 setDepthTextureFormat:-[MTLFXFrameInterpolatorDescriptor depthTextureFormat](self, "depthTextureFormat")];
  v5 = [(MTLFXFrameInterpolatorDescriptor *)self scaler];
  [v4 setScaler:v5];

  [v4 setInputWidth:{-[MTLFXFrameInterpolatorDescriptor inputWidth](self, "inputWidth")}];
  [v4 setInputHeight:{-[MTLFXFrameInterpolatorDescriptor inputHeight](self, "inputHeight")}];
  [v4 setOutputWidth:{-[MTLFXFrameInterpolatorDescriptor outputWidth](self, "outputWidth")}];
  [v4 setOutputHeight:{-[MTLFXFrameInterpolatorDescriptor outputHeight](self, "outputHeight")}];
  return v4;
}

- (id)newFrameInterpolatorWithDevice:(id)a3
{
  v4 = a3;
  if (+[MTLFXFrameInterpolatorDescriptor supportsDevice:](MTLFXFrameInterpolatorDescriptor, "supportsDevice:", v4) && [v4 supportsFamily:1001])
  {
    [(MTLFXFrameInterpolatorDescriptor *)self version];
    v5 = [[_MFXFrameInterpolatorEffect alloc] initWithDevice:v4 descriptor:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newFrameInterpolatorWithDevice:(id)a3 compiler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[MTLFXFrameInterpolatorDescriptor supportsDevice:](MTLFXFrameInterpolatorDescriptor, "supportsDevice:", v6) && [v6 supportsFamily:1001])
  {
    [(MTLFXFrameInterpolatorDescriptor *)self version];
    v8 = [[_M4FXFrameInterpolatorEffect alloc] initWithDevice:v6 compiler:v7 descriptor:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end