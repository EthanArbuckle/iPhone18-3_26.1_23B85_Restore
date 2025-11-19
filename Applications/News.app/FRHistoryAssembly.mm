@interface FRHistoryAssembly
- (FRHistoryAssembly)init;
- (void)loadInRegistry:(id)a3;
@end

@implementation FRHistoryAssembly

- (FRHistoryAssembly)init
{
  v3.receiver = self;
  v3.super_class = FRHistoryAssembly;
  return [(FRHistoryAssembly *)&v3 init];
}

- (void)loadInRegistry:(id)a3
{
  v4 = [a3 publicContainer];
  v3 = [v4 registerProtocol:&OBJC_PROTOCOL___TSClearDataManager factory:&stru_1000C2288];
}

@end