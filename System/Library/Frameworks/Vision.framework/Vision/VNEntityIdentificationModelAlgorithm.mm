@interface VNEntityIdentificationModelAlgorithm
- (VNEntityIdentificationModelAlgorithm)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation VNEntityIdentificationModelAlgorithm

- (VNEntityIdentificationModelAlgorithm)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end