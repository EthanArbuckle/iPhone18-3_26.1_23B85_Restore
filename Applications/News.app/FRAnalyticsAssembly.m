@interface FRAnalyticsAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation FRAnalyticsAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&OBJC_PROTOCOL___NSSNewsAnalyticsSessionManager factory:&stru_1000C5508];

  v7 = [v3 publicContainer];

  v6 = [v7 registerProtocol:&OBJC_PROTOCOL___NSSNewsAnalyticsUserIDProvider factory:&stru_1000C5548];
}

@end