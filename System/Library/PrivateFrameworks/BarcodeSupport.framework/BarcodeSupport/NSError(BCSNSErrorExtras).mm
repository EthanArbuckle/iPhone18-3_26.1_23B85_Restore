@interface NSError(BCSNSErrorExtras)
- (id)_bcs_privacyPreservingDescription;
@end

@implementation NSError(BCSNSErrorExtras)

- (id)_bcs_privacyPreservingDescription
{
  v2 = MEMORY[0x277CCACA8];
  domain = [self domain];
  v4 = [v2 stringWithFormat:@"(NSError: domain: %@, code: %ld)", domain, objc_msgSend(self, "code")];

  return v4;
}

@end