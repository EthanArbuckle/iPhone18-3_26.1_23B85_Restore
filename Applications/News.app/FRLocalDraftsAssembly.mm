@interface FRLocalDraftsAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation FRLocalDraftsAssembly

- (void)loadInRegistry:(id)a3
{
  v5 = [a3 publicContainer];
  v3 = [v5 registerProtocol:&OBJC_PROTOCOL___TSLocalDraftsDeviceManagerType factory:&stru_1000C5B68];
  v4 = [v3 inScope:2];
}

@end