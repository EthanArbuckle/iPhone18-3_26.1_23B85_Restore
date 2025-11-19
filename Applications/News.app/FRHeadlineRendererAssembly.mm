@interface FRHeadlineRendererAssembly
- (FRHeadlineRendererAssembly)init;
- (void)loadInRegistry:(id)a3;
@end

@implementation FRHeadlineRendererAssembly

- (FRHeadlineRendererAssembly)init
{
  v3.receiver = self;
  v3.super_class = FRHeadlineRendererAssembly;
  return [(FRHeadlineRendererAssembly *)&v3 init];
}

- (void)loadInRegistry:(id)a3
{
  v4 = [a3 publicContainer];
  v3 = [v4 registerClass:objc_opt_class() factory:&stru_1000C6468];
}

@end