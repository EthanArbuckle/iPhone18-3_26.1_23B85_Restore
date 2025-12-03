@interface FigAssetVariantQualifierForMaximumInKeyPathObjC
- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithCoder:(id)coder;
- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithKeyPath:(id)path;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigAssetVariantQualifierForMaximumInKeyPathObjC

- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithKeyPath:(id)path
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  v4 = [(FigAssetVariantQualifierForMaximumInKeyPathObjC *)&v6 init];
  if (v4)
  {
    v4->_keyPath = path;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, keyPath:%@>", NSStringFromClass(v4), self, self->_keyPath];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  [(FigAssetVariantQualifierForMaximumInKeyPathObjC *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  [(FigAssetVariantQualifierObjC *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_keyPath forKey:@"keyPath"];
}

- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  v4 = [(FigAssetVariantQualifierObjC *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
  }

  return v4;
}

@end