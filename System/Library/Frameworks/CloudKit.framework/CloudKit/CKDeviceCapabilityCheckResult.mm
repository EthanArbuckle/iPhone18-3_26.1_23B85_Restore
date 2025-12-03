@interface CKDeviceCapabilityCheckResult
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDeviceCapabilityCheckResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKDeviceCapabilityCheckResult.encode(with:)(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKDeviceCapabilityCheckResult.hash.getter();

  return v3;
}

@end