@interface CKRecordFeature
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKRecordFeature

- (int64_t)hash
{
  v2 = self;
  v3 = CKRecordFeature.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CKRecordFeature.encode(with:)(v4);
}

@end