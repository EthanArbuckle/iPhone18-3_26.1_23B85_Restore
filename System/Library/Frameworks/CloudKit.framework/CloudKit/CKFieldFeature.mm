@interface CKFieldFeature
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFieldFeature

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKFieldFeature.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKFieldFeature.encode(with:)(coderCopy);
}

@end