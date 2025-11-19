@interface MPMRInitPropertyPodcastMap
@end

@implementation MPMRInitPropertyPodcastMap

id ___MPMRInitPropertyPodcastMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"podSort"];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "integerValue")}];
  }

  else
  {
    v4 = &unk_1F1509C40;
  }

  return v4;
}

id ___MPMRInitPropertyPodcastMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"podSupSub"];
  v5 = [v2 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

id ___MPMRInitPropertyPodcastMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"podShURL"];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ___MPMRInitPropertyPodcastMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"podURL"];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___MPMRInitPropertyPodcastMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"pdid"];

  if ([v7 length])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___MPMRInitPropertyPodcastMap_block_invoke_2;
    v13[3] = &unk_1E7680B00;
    v14 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v13];
  }

  v8 = [v4 deviceSpecificUserInfo];
  v9 = [v8 objectForKeyedSubscript:@"prid"];

  if ([v9 length])
  {
    [v5 setPersonalStoreIdentifiersWithPersonID:v9 block:&__block_literal_global_202_44489];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPMRInitPropertyPodcastMap_block_invoke_4;
  v11[3] = &unk_1E767FAA0;
  v12 = v4;
  v10 = v4;
  [v5 setUniversalStoreIdentifiersWithBlock:v11];
}

void ___MPMRInitPropertyPodcastMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 deviceSpecificUserInfo];
  v4 = [v5 objectForKeyedSubscript:@"apid"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void ___MPMRInitPropertyPodcastMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "storeAlbumID")}];
}

@end