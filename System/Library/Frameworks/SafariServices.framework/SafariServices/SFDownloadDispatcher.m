@interface SFDownloadDispatcher
@end

@implementation SFDownloadDispatcher

void __49___SFDownloadDispatcher_sharedDownloadDispatcher__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedDownloadDispatcher_instance;
  sharedDownloadDispatcher_instance = v1;
}

void __42___SFDownloadDispatcher_downloadDidStart___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A978];
  v6 = a2;
  v7 = [v4 errorWithDomain:v5 code:-999 userInfo:0];
  [v2 download:v3 didFailWithError:v7 resumeData:v6];
}

@end