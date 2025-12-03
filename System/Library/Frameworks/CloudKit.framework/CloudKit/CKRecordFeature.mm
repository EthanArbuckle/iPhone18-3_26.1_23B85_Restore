@interface CKRecordFeature
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRecordFeature

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKRecordFeature.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKRecordFeature.encode(with:)(coderCopy);
}

@end