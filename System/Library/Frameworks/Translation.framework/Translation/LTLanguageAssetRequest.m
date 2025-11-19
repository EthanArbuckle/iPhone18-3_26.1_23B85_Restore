@interface LTLanguageAssetRequest
@end

@implementation LTLanguageAssetRequest

void __56___LTLanguageAssetRequest_assetRequestWithService_done___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [a1[5] copy];
    v4 = *(v5 + 3);
    *(v5 + 3) = v3;

    objc_storeStrong(v5 + 2, a1[4]);
    [*(v5 + 2) assetRequestHandler:v5];
    WeakRetained = v5;
  }
}

uint64_t __68___LTLanguageAssetRequest_assetResponseWithProgress_finished_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    [v3 assetResponseWithProgress:*(a1 + 32) finished:*(a1 + 56) error:*(a1 + 40)];

    if (*(a1 + 56) == 1)
    {
      v4 = v9;
      v5 = v9[8];
      if (v5)
      {
        v5[2](v5, *(a1 + 40));
        v4 = v9;
      }

      v6 = v4[3];
      if (v6)
      {
        v6[2]();
      }
    }

    else
    {
      v7 = v9[7];
      if (v7)
      {
        v7[2](v7, *(a1 + 32));
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end