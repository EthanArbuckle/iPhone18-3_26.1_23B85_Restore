@interface FRHeadlineRendererAssembly
- (FRHeadlineRendererAssembly)init;
- (void)loadInRegistry:(id)registry;
@end

@implementation FRHeadlineRendererAssembly

- (FRHeadlineRendererAssembly)init
{
  v3.receiver = self;
  v3.super_class = FRHeadlineRendererAssembly;
  return [(FRHeadlineRendererAssembly *)&v3 init];
}

- (void)loadInRegistry:(id)registry
{
  publicContainer = [registry publicContainer];
  v3 = [publicContainer registerClass:objc_opt_class() factory:&stru_1000C6468];
}

@end