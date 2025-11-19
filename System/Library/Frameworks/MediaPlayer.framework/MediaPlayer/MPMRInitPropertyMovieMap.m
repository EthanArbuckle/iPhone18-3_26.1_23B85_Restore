@interface MPMRInitPropertyMovieMap
@end

@implementation MPMRInitPropertyMovieMap

id ___MPMRInitPropertyMovieMap_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"libEligible"];
  v5 = [v2 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

id ___MPMRInitPropertyMovieMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 deviceSpecificUserInfo];
  v4 = [v3 objectForKeyedSubscript:@"libAdded"];
  v5 = [v2 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

id ___MPMRInitPropertyMovieMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 deviceSpecificUserInfo];
  v4 = [v3 objectForKeyedSubscript:@"klStatus"];
  v5 = [v2 numberWithInt:{objc_msgSend(v4, "intValue")}];

  return v5;
}

id ___MPMRInitPropertyMovieMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 deviceSpecificUserInfo];
  v4 = [v3 objectForKeyedSubscript:@"klEnable"];
  v5 = [v2 numberWithInt:{objc_msgSend(v4, "intValue")}];

  return v5;
}

id ___MPMRInitPropertyMovieMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"phold"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v7 = [v2 title];
    v8 = [v6 localizedStringForKey:v7 value:&stru_1F149ECA8 table:@"MediaPlayer"];
  }

  else
  {
    v8 = [v2 title];
  }

  return v8;
}

void ___MPMRInitPropertyMovieMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"did"];

  if ([v7 length])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___MPMRInitPropertyMovieMap_block_invoke_2;
    v18[3] = &unk_1E7680B00;
    v19 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v18];
  }

  v8 = [v4 deviceSpecificUserInfo];
  v9 = [v8 objectForKeyedSubscript:@"prid"];

  if ([v9 length])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___MPMRInitPropertyMovieMap_block_invoke_3;
    v16[3] = &unk_1E767FA78;
    v17 = v4;
    [v5 setPersonalStoreIdentifiersWithPersonID:v9 block:v16];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___MPMRInitPropertyMovieMap_block_invoke_4;
  v14[3] = &unk_1E767FAA0;
  v15 = v4;
  v10 = v4;
  [v5 setUniversalStoreIdentifiersWithBlock:v14];
  v11 = [v10 identifier];
  [v5 setContentItemID:v11];

  v12 = [v10 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"cntrUID"];
  [v5 setContainerUniqueID:v13];
}

void ___MPMRInitPropertyMovieMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 deviceSpecificUserInfo];
  v4 = [v5 objectForKeyedSubscript:@"pid"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void ___MPMRInitPropertyMovieMap_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deviceSpecificUserInfo];
  v6 = [v5 objectForKeyedSubscript:@"clid"];
  [v4 setCloudID:{objc_msgSend(v6, "longLongValue")}];

  v8 = [*(a1 + 32) deviceSpecificUserInfo];
  v7 = [v8 objectForKeyedSubscript:@"claid"];
  [v4 setCloudAlbumID:v7];
}

void ___MPMRInitPropertyMovieMap_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  [v8 setAdamID:{objc_msgSend(v3, "storeID")}];
  [v8 setSubscriptionAdamID:{objc_msgSend(*(a1 + 32), "storeSubscriptionID")}];
  v4 = [*(a1 + 32) deviceSpecificUserInfo];
  v5 = [v4 objectForKeyedSubscript:@"purID"];
  [v8 setPurchasedAdamID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [*(a1 + 32) deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"ulid"];
  [v8 setUniversalCloudLibraryID:v7];

  [v8 setReportingAdamID:{objc_msgSend(*(a1 + 32), "reportingAdamID")}];
}

@end