@interface NSError(BCSNSErrorExtras)
- (id)_bcs_privacyPreservingDescription;
@end

@implementation NSError(BCSNSErrorExtras)

- (id)_bcs_privacyPreservingDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 domain];
  v4 = [v2 stringWithFormat:@"(NSError: domain: %@, code: %ld)", v3, objc_msgSend(a1, "code")];

  return v4;
}

@end