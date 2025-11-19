@interface Util
+ (int)pidFromAuditToken:(id *)a3;
@end

@implementation Util

+ (int)pidFromAuditToken:(id *)a3
{
  pidp = 0;
  v3 = *&a3->var0[4];
  *atoken.val = *a3->var0;
  *&atoken.val[4] = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  return pidp;
}

@end