@interface MPMRInitPropertyTVSeasonMap
@end

@implementation MPMRInitPropertyTVSeasonMap

void ___MPMRInitPropertyTVSeasonMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"did"];

  if ([v7 length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___MPMRInitPropertyTVSeasonMap_block_invoke_2;
    v11[3] = &unk_1E7680B00;
    v12 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v11];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___MPMRInitPropertyTVSeasonMap_block_invoke_3;
  v9[3] = &unk_1E767FAA0;
  v10 = v4;
  v8 = v4;
  [v5 setUniversalStoreIdentifiersWithBlock:v9];
}

void ___MPMRInitPropertyTVSeasonMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 deviceSpecificUserInfo];
  v4 = [v5 objectForKeyedSubscript:@"apid"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void ___MPMRInitPropertyTVSeasonMap_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "storeAlbumID")}];
}

@end