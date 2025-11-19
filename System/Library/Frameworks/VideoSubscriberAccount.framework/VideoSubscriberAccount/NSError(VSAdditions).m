@interface NSError(VSAdditions)
- (id)vs_secureCodingSafeError;
@end

@implementation NSError(VSAdditions)

- (id)vs_secureCodingSafeError
{
  v2 = [a1 userInfo];
  v3 = secureCodingSafeObject(v2);
  v4 = [v3 unwrapWithFallback:MEMORY[0x277CBEC10]];

  v5 = MEMORY[0x277CCA9B8];
  v6 = [a1 domain];
  v7 = [v5 errorWithDomain:v6 code:objc_msgSend(a1 userInfo:{"code"), v4}];

  return v7;
}

@end