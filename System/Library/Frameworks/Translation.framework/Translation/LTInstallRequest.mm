@interface LTInstallRequest
@end

@implementation LTInstallRequest

void __56___LTInstallRequest__startInstallationWithService_done___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [a1[5] copy];
    v4 = *(v5 + 3);
    *(v5 + 3) = v3;

    objc_storeStrong(v5 + 2, a1[4]);
    [*(v5 + 2) startInstallRequest:v5];
    WeakRetained = v5;
  }
}

@end