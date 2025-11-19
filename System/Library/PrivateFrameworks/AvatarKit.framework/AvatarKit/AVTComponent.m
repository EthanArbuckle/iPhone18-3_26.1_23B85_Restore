@interface AVTComponent
- (AVTComponent)initWithType:(int64_t)a3 assets:(id)a4 morphVariant:(id)a5 imageVariant:(id)a6 materialVariant:(id)a7 morphVariantIntensity:(float)a8 bodyPoseVariantIntensity:(float)a9 textureAssetPresence:(float)a10;
- (id)description;
- (id)materialAtIndex:(unint64_t)a3;
- (void)setMaterial:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation AVTComponent

- (void)setMaterial:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  if (v7 || a4)
  {
    if (a4 >= 3)
    {
      [AVTComponent setMaterial:atIndex:];
    }

    v8 = v7;
    objc_storeStrong(&self->_materials[a4], a3);
    v7 = v8;
  }
}

- (id)materialAtIndex:(unint64_t)a3
{
  if (a3 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_materials[a3];
    if (a3 && !v6)
    {
      v6 = [(AVTComponent *)self materialAtIndex:a3 - 1];
    }
  }

  return v6;
}

- (AVTComponent)initWithType:(int64_t)a3 assets:(id)a4 morphVariant:(id)a5 imageVariant:(id)a6 materialVariant:(id)a7 morphVariantIntensity:(float)a8 bodyPoseVariantIntensity:(float)a9 textureAssetPresence:(float)a10
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v26.receiver = self;
  v26.super_class = AVTComponent;
  v23 = [(AVTComponent *)&v26 init];
  v24 = v23;
  if (v23)
  {
    v23->_type = a3;
    objc_storeStrong(&v23->_assets, a4);
    objc_storeStrong(&v24->_morphVariant, a5);
    objc_storeStrong(&v24->_imageVariant, a6);
    objc_storeStrong(&v24->_materialVariant, a7);
    v24->_morphVariantIntensity = a8;
    v24->_bodyPoseVariantIntensity = a9;
    v24->_textureAssetPresence = a10;
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