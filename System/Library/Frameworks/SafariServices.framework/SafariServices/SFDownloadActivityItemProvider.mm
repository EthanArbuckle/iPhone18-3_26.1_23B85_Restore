@interface SFDownloadActivityItemProvider
@end

@implementation SFDownloadActivityItemProvider

void __39___SFDownloadActivityItemProvider_item__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 320);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39___SFDownloadActivityItemProvider_item__block_invoke_2;
  v6[3] = &unk_1E8493B88;
  v7 = v3;
  v5 = v3;
  [v4 saveToFileIfNeeded:v6];
}

@end