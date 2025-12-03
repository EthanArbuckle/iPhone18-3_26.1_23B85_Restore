@interface MTLFXSpatialScalerDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (id)newSpatialScalerWithDevice:(id)device;
- (id)newSpatialScalerWithDevice:(id)device compiler:(id)compiler;
@end

@implementation MTLFXSpatialScalerDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setVersion:{-[MTLFXSpatialScalerDescriptor version](self, "version")}];
  [v4 setColorTextureFormat:-[MTLFXSpatialScalerDescriptor colorTextureFormat](self, "colorTextureFormat")];
  [v4 setOutputTextureFormat:-[MTLFXSpatialScalerDescriptor outputTextureFormat](self, "outputTextureFormat")];
  [v4 setInputWidth:{-[MTLFXSpatialScalerDescriptor inputWidth](self, "inputWidth")}];
  [v4 setInputHeight:{-[MTLFXSpatialScalerDescriptor inputHeight](self, "inputHeight")}];
  [v4 setOutputWidth:{-[MTLFXSpatialScalerDescriptor outputWidth](self, "outputWidth")}];
  [v4 setOutputHeight:{-[MTLFXSpatialScalerDescriptor outputHeight](self, "outputHeight")}];
  [v4 setColorProcessingMode:{-[MTLFXSpatialScalerDescriptor colorProcessingMode](self, "colorProcessingMode")}];
  return v4;
}

- (id)newSpatialScalerWithDevice:(id)device
{
  v4 = device;
  if ([MTLFXSpatialScalerDescriptor supportsDevice:v4])
  {
    [(MTLFXSpatialScalerDescriptor *)self version];
    v5 = [[_MFXSpatialScalingEffectEFFECT_NAME_V1 alloc] initWithDevice:v4 descriptor:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newSpatialScalerWithDevice:(id)device compiler:(id)compiler
{
  deviceCopy = device;
  compilerCopy = compiler;
  if ([MTLFXSpatialScalerDescriptor supportsMetal4FX:deviceCopy])
  {
    v8 = [[_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 alloc] initWithDevice:deviceCopy compiler:compilerCopy descriptor:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end