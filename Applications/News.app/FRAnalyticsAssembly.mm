@interface FRAnalyticsAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation FRAnalyticsAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&OBJC_PROTOCOL___NSSNewsAnalyticsSessionManager factory:&stru_1000C5508];

  publicContainer2 = [registryCopy publicContainer];

  v6 = [publicContainer2 registerProtocol:&OBJC_PROTOCOL___NSSNewsAnalyticsUserIDProvider factory:&stru_1000C5548];
}

@end