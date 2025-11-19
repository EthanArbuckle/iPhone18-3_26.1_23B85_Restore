@interface MPArtworkDataSourceURLCache
@end

@implementation MPArtworkDataSourceURLCache

void __65___MPArtworkDataSourceURLCache_setRepresentationSize_forRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = NSStringFromCGSize(*(a1 + 48));
  v3 = [*(a1 + 40) URL];
  [v2 setObject:v4 forKey:v3];
}

void __63___MPArtworkDataSourceURLCache_storeCachedResponse_forRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 40) URL];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end