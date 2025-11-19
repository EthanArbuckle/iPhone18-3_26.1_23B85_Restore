@interface FigAssetVariantQualifierForMaximumInKeyPathObjC
- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithCoder:(id)a3;
- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithKeyPath:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigAssetVariantQualifierForMaximumInKeyPathObjC

- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithKeyPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  v4 = [(FigAssetVariantQualifierForMaximumInKeyPathObjC *)&v6 init];
  if (v4)
  {
    v4->_keyPath = a3;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  [(FigAssetVariantQualifierObjC *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_keyPath forKey:@"keyPath"];
}

- (FigAssetVariantQualifierForMaximumInKeyPathObjC)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigAssetVariantQualifierForMaximumInKeyPathObjC;
  v4 = [(FigAssetVariantQualifierObjC *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
  }

  return v4;
}

@end