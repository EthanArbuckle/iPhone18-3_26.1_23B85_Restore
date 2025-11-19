@interface MPMRInitPropertyStoreAssetMap
@end

@implementation MPMRInitPropertyStoreAssetMap

id ___MPMRInitPropertyStoreAssetMap_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 deviceSpecificUserInfo];
  v4 = [v3 objectForKeyedSubscript:@"endpt"];
  v5 = [v4 integerValue];

  if (!v5)
  {
    if ([v2 storeSubscriptionID])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];

  return v6;
}

void ___MPMRInitPropertyStoreAssetMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"did"];

  if ([v7 length])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___MPMRInitPropertyStoreAssetMap_block_invoke_2;
    v8[3] = &unk_1E7680B00;
    v9 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v8];
  }
}

void ___MPMRInitPropertyStoreAssetMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 deviceSpecificUserInfo];
  v4 = [v5 objectForKeyedSubscript:@"pid"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

@end