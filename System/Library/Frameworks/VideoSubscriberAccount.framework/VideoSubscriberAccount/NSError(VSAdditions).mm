@interface NSError(VSAdditions)
- (id)vs_secureCodingSafeError;
@end

@implementation NSError(VSAdditions)

- (id)vs_secureCodingSafeError
{
  userInfo = [self userInfo];
  v3 = secureCodingSafeObject(userInfo);
  v4 = [v3 unwrapWithFallback:MEMORY[0x277CBEC10]];

  v5 = MEMORY[0x277CCA9B8];
  domain = [self domain];
  v7 = [v5 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v4}];

  return v7;
}

@end