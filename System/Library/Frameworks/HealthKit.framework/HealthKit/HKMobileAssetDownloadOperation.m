@interface HKMobileAssetDownloadOperation
@end

@implementation HKMobileAssetDownloadOperation

void __55___HKMobileAssetDownloadOperation__queue_downloadAsset__block_invoke(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_not_V2(*(*(a1 + 32) + 56));
  if (a2 != 10 && a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55___HKMobileAssetDownloadOperation__queue_downloadAsset__block_invoke_3;
    v8[3] = &unk_1E7378630;
    v8[4] = v6;
    v8[5] = a2;
    dispatch_sync(v7, v8);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55___HKMobileAssetDownloadOperation__queue_downloadAsset__block_invoke_2;
    block[3] = &unk_1E7376780;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

@end