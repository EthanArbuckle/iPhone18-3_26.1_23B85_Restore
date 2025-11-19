@interface AVAssetVariantVideoLayoutAttributes
- (AVAssetVariantVideoLayoutAttributes)initWithFigVideoLayoutAttributes:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetVariantVideoLayoutAttributes

- (AVAssetVariantVideoLayoutAttributes)initWithFigVideoLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAssetVariantVideoLayoutAttributes;
  v4 = [(AVAssetVariantVideoLayoutAttributes *)&v6 init];
  if (v4)
  {
    v4->_figVideoLayoutAttributes = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVariantVideoLayoutAttributes;
  [(AVAssetVariantVideoLayoutAttributes *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAssetVariantVideoLayoutAttributes *)self stereoViewComponents];
  v7 = @"Mono";
  if (v6 == 3)
  {
    v7 = @"Stereo";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, stereoView:%@", v5, self, v7];
  [v8 appendFormat:@">"];
  return v8;
}

@end