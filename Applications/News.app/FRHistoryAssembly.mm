@interface FRHistoryAssembly
- (FRHistoryAssembly)init;
- (void)loadInRegistry:(id)registry;
@end

@implementation FRHistoryAssembly

- (FRHistoryAssembly)init
{
  v3.receiver = self;
  v3.super_class = FRHistoryAssembly;
  return [(FRHistoryAssembly *)&v3 init];
}

- (void)loadInRegistry:(id)registry
{
  publicContainer = [registry publicContainer];
  v3 = [publicContainer registerProtocol:&OBJC_PROTOCOL___TSClearDataManager factory:&stru_1000C2288];
}

@end