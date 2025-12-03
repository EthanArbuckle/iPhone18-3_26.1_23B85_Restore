@interface CKZoneFeature
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKZoneFeature

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKZoneFeature.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKZoneFeature.encode(with:)(coderCopy);
}

@end