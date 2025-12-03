@interface AVTComponent
- (AVTComponent)initWithType:(int64_t)type assets:(id)assets morphVariant:(id)variant imageVariant:(id)imageVariant materialVariant:(id)materialVariant morphVariantIntensity:(float)intensity bodyPoseVariantIntensity:(float)variantIntensity textureAssetPresence:(float)self0;
- (id)description;
- (id)materialAtIndex:(unint64_t)index;
- (void)setMaterial:(id)material atIndex:(unint64_t)index;
@end

@implementation AVTComponent

- (void)setMaterial:(id)material atIndex:(unint64_t)index
{
  materialCopy = material;
  if (materialCopy || index)
  {
    if (index >= 3)
    {
      [AVTComponent setMaterial:atIndex:];
    }

    v8 = materialCopy;
    objc_storeStrong(&self->_materials[index], material);
    materialCopy = v8;
  }
}

- (id)materialAtIndex:(unint64_t)index
{
  if (index > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_materials[index];
    if (index && !v6)
    {
      v6 = [(AVTComponent *)self materialAtIndex:index - 1];
    }
  }

  return v6;
}

- (AVTComponent)initWithType:(int64_t)type assets:(id)assets morphVariant:(id)variant imageVariant:(id)imageVariant materialVariant:(id)materialVariant morphVariantIntensity:(float)intensity bodyPoseVariantIntensity:(float)variantIntensity textureAssetPresence:(float)self0
{
  assetsCopy = assets;
  variantCopy = variant;
  imageVariantCopy = imageVariant;
  materialVariantCopy = materialVariant;
  v26.receiver = self;
  v26.super_class = AVTComponent;
  v23 = [(AVTComponent *)&v26 init];
  v24 = v23;
  if (v23)
  {
    v23->_type = type;
    objc_storeStrong(&v23->_assets, assets);
    objc_storeStrong(&v24->_morphVariant, variant);
    objc_storeStrong(&v24->_imageVariant, imageVariant);
    objc_storeStrong(&v24->_materialVariant, materialVariant);
    v24->_morphVariantIntensity = intensity;
    v24->_bodyPoseVariantIntensity = variantIntensity;
    v24->_textureAssetPresence = presence;
  }

  return v24;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = AVTComponentTypeToString(self->_type);
  v6 = [v3 initWithFormat:@"<%@ %p | type:%@", v4, self, v5];

  if (self->_assets)
  {
    [v6 appendFormat:@" assets: %@", self->_assets];
  }

  if (self->_morphVariant)
  {
    [v6 appendFormat:@" morph variant: %@", self->_morphVariant];
  }

  if (self->_imageVariant)
  {
    [v6 appendFormat:@" image variant: %@", self->_imageVariant];
  }

  if (self->_materialVariant)
  {
    [v6 appendFormat:@" material variant: %@", self->_materialVariant];
  }

  [v6 appendString:@">"];

  return v6;
}

@end