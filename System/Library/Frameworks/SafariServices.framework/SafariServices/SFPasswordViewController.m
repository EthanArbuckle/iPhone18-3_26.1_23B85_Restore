@interface SFPasswordViewController
@end

@implementation SFPasswordViewController

void __46___SFPasswordViewController__connectToService__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 992);
  *(v1 + 992) = 0;
}

void __59___SFPasswordViewController__dismissPasswordViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordViewControllerDidFinish:*(a1 + 32)];
  }
}

@end