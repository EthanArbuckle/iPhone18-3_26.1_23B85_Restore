@interface CKFieldFeature
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFieldFeature

- (int64_t)hash
{
  v2 = self;
  v3 = CKFieldFeature.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CKFieldFeature.encode(with:)(v4);
}

@end