@interface SHServiceStateHandlerUtilities
+ (void)registerBundleAttributionForAuditToken:(id *)token;
@end

@implementation SHServiceStateHandlerUtilities

+ (void)registerBundleAttributionForAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  v4[0] = *token->var0;
  v4[1] = v3;
  [STDynamicActivityAttributionPublisher setCurrentAttributionStringWithFormat:@"%@" auditToken:v4];
}

@end