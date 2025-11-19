@interface CKDeviceCapabilityCheckResult
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDeviceCapabilityCheckResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CKDeviceCapabilityCheckResult.encode(with:)(v4);
}

- (int64_t)hash
{
  v2 = self;
  v3 = CKDeviceCapabilityCheckResult.hash.getter();

  return v3;
}

@end