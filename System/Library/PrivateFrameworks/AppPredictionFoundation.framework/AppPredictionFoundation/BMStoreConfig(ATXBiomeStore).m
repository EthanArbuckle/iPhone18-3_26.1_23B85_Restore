@interface BMStoreConfig(ATXBiomeStore)
+ (id)atx_storeConfigWithMaxAge:()ATXBiomeStore;
@end

@implementation BMStoreConfig(ATXBiomeStore)

+ (id)atx_storeConfigWithMaxAge:()ATXBiomeStore
{
  v4 = objc_alloc(MEMORY[0x277CF17F8]);
  v5 = [a1 atx_biomeStreamManagerStreamsBasePath];
  v6 = [v4 initWithStoreBasePath:v5 segmentSize:0x800000];

  v7 = [objc_alloc(MEMORY[0x277CF17E8]) initPruneOnAccess:1 filterByAgeOnRead:0 maxAge:0x20000000 maxStreamSize:a2];
  [v6 setPruningPolicy:v7];

  return v6;
}

@end