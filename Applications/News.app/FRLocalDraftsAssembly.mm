@interface FRLocalDraftsAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation FRLocalDraftsAssembly

- (void)loadInRegistry:(id)registry
{
  publicContainer = [registry publicContainer];
  v3 = [publicContainer registerProtocol:&OBJC_PROTOCOL___TSLocalDraftsDeviceManagerType factory:&stru_1000C5B68];
  v4 = [v3 inScope:2];
}

@end