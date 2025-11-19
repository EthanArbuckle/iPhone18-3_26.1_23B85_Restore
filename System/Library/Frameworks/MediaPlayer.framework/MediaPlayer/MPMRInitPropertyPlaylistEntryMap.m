@interface MPMRInitPropertyPlaylistEntryMap
@end

@implementation MPMRInitPropertyPlaylistEntryMap

void ___MPMRInitPropertyPlaylistEntryMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"did"];

  if ([v7 length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___MPMRInitPropertyPlaylistEntryMap_block_invoke_2;
    v11[3] = &unk_1E7680B00;
    v12 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v11];
  }

  v8 = [v4 identifier];
  [v5 setContentItemID:v8];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"cntrUID"];
  [v5 setContainerUniqueID:v10];
}

void ___MPMRInitPropertyPlaylistEntryMap_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deviceSpecificUserInfo];
  v6 = [v5 objectForKeyedSubscript:@"peid"];
  [v4 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  v8 = [*(a1 + 32) deviceSpecificUserInfo];
  v7 = [v8 objectForKeyedSubscript:@"pid"];
  [v4 setContainedPersistentID:{objc_msgSend(v7, "longLongValue")}];
}

@end