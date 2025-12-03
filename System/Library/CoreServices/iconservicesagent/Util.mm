@interface Util
+ (int)pidFromAuditToken:(id *)token;
@end

@implementation Util

+ (int)pidFromAuditToken:(id *)token
{
  pidp = 0;
  v3 = *&token->var0[4];
  *atoken.val = *token->var0;
  *&atoken.val[4] = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  return pidp;
}

@end