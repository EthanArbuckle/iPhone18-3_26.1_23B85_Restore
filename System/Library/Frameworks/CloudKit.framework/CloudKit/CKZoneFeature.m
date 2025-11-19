@interface CKZoneFeature
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKZoneFeature

- (int64_t)hash
{
  v2 = self;
  v3 = CKZoneFeature.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CKZoneFeature.encode(with:)(v4);
}

@end