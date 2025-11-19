@interface LSDOpenClient
@end

@implementation LSDOpenClient

void __58___LSDOpenClient_getiCloudHostNamesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _LSServer_GetiCloudHostNames();
  (*(v1 + 16))(v1);
}

@end