@interface MPStorePlatformInitPropertyPlaylistMap
@end

@implementation MPStorePlatformInitPropertyPlaylistMap

void ___MPStorePlatformInitPropertyPlaylistMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPStorePlatformInitPropertyPlaylistMap_block_invoke_2;
  v11[3] = &unk_1E767FAA0;
  v12 = v6;
  v7 = v6;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v11];
  v10 = [v9 personID];

  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:&__block_literal_global_338];
}

void ___MPStorePlatformInitPropertyPlaylistMap_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"id"];
  [v4 setGlobalPlaylistID:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"libraryPlaylistId"];
  [v4 setUniversalCloudLibraryID:v6];
}

@end