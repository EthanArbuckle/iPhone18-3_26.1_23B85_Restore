@interface PreviewImageForAsset
@end

@implementation PreviewImageForAsset

void ___PreviewImageForAsset_block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end