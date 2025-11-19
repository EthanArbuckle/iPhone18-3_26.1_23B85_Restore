@interface SHServiceStateHandlerUtilities
+ (void)registerBundleAttributionForAuditToken:(id *)a3;
@end

@implementation SHServiceStateHandlerUtilities

+ (void)registerBundleAttributionForAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  v4[0] = *a3->var0;
  v4[1] = v3;
  [STDynamicActivityAttributionPublisher setCurrentAttributionStringWithFormat:@"%@" auditToken:v4];
}

@end