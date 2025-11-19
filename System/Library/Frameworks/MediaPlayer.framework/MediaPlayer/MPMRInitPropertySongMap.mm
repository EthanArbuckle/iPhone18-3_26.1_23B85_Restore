@interface MPMRInitPropertySongMap
@end

@implementation MPMRInitPropertySongMap

uint64_t ___MPMRInitPropertySongMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"libEligible"];
  v5 = [v4 BOOLValue];

  v6 = [v2 storeID];
  v7 = [v2 storeSubscriptionID];

  v8 = MEMORY[0x1E696AD98];
  if (v6 | v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return [v8 numberWithInt:v9];
}

uint64_t ___MPMRInitPropertySongMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = ([a2 mediaType] & 0xFF00) != 0;
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

id ___MPMRInitPropertySongMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 title];
  v4 = [v2 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"phold"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v8 = [v7 localizedStringForKey:v3 value:&stru_1F149ECA8 table:@"MediaPlayer"];

    goto LABEL_11;
  }

  if (![v3 length])
  {
    v9 = [v2 collectionInfo];
    v10 = [v9 objectForKeyedSubscript:@"_MPNowPlayingCollectionInfoKeyCollectionType"];
    if (v10 == @"_MPNowPlayingCollectionInfoCollectionTypeRadio")
    {
    }

    else
    {
      v11 = v10;
      v12 = [@"_MPNowPlayingCollectionInfoCollectionTypeRadio" isEqual:v10];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v13 = [v9 objectForKeyedSubscript:@"_MPNowPlayingCollectionInfoKeyTitle"];

    v3 = v13;
LABEL_9:
  }

  v3 = v3;
  v8 = v3;
LABEL_11:

  return v8;
}

void ___MPMRInitPropertySongMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"did"];

  if ([v7 length])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___MPMRInitPropertySongMap_block_invoke_2;
    v20[3] = &unk_1E7680B00;
    v21 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v20];
  }

  v8 = [v4 deviceSpecificUserInfo];
  v9 = [v8 objectForKeyedSubscript:@"prid"];

  if ([v9 length])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___MPMRInitPropertySongMap_block_invoke_3;
    v18[3] = &unk_1E767FA78;
    v19 = v4;
    [v5 setPersonalStoreIdentifiersWithPersonID:v9 block:v18];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___MPMRInitPropertySongMap_block_invoke_4;
  v16[3] = &unk_1E767FAA0;
  v17 = v4;
  v10 = v4;
  [v5 setUniversalStoreIdentifiersWithBlock:v16];
  v11 = [v10 identifier];
  [v5 setContentItemID:v11];

  v12 = [v10 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"cntrUID"];
  [v5 setContainerUniqueID:v13];

  v14 = [v10 nowPlayingInfo];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69B0F18]];
  [v5 setVendorID:v15];
}

void ___MPMRInitPropertySongMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 deviceSpecificUserInfo];
  v4 = [v5 objectForKeyedSubscript:@"pid"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void ___MPMRInitPropertySongMap_block_invoke_3(uint64_t a1, void *a2)
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

void ___MPMRInitPropertySongMap_block_invoke_4(uint64_t a1, void *a2)
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
  [v8 setLyricsAdamID:{objc_msgSend(*(a1 + 32), "lyricsAdamID")}];
}

@end