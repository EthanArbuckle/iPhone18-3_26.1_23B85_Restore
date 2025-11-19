@interface VNPersonsModelAlgorithm
- (VNPersonsModelAlgorithm)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation VNPersonsModelAlgorithm

- (VNPersonsModelAlgorithm)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
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