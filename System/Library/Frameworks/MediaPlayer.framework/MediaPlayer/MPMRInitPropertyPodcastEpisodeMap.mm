@interface MPMRInitPropertyPodcastEpisodeMap
@end

@implementation MPMRInitPropertyPodcastEpisodeMap

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a2;
  v6 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator translatorForMPModelClass:objc_opt_class()];
  v19[0] = @"MPModelPropertyPodcastChapterTitle";
  v19[1] = @"MPModelPropertyPodcastChapterDuration";
  v19[2] = @"MPModelPropertyPodcastChapterStartTime";
  v19[3] = @"MPModelPropertyPodcastChapterPlayable";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v8 = [MPPropertySet propertySetWithProperties:v7];

  v9 = [v5 sections];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_15;
  v15[3] = &unk_1E767E390;
  v16 = v6;
  v17 = v8;
  v18 = v4;
  v10 = v4;
  v11 = v8;
  v12 = v6;
  v13 = [v9 msv_map:v15];

  return v13;
}

uint64_t ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_13(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 episodeType] - 1;
  if (v3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1A27419A8[v3];
  }

  return [v2 numberWithInteger:v4];
}

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"podEpShURL"];

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

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"podEpStrURL"];

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

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_10(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 deviceSpecificUserInfo];
  v4 = [v3 objectForKeyedSubscript:@"rating"];
  [v4 floatValue];
  v5 = [v2 numberWithFloat:?];

  return v5;
}

uint64_t ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = ([a2 mediaType] & 0xFF00) != 0;
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 releaseDate];
  v3 = _MPMRDateComponentsFromDate(v2);

  return v3;
}

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 transcriptAlignments];
  v3 = [v2 msv_map:&__block_literal_global_232];

  return v3;
}

id ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_5(uint64_t a1, void *a2)
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

void ___MPMRInitPropertyPodcastEpisodeMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deviceSpecificUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"did"];

  if ([v7 length])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_2;
    v22[3] = &unk_1E7680B00;
    v23 = v4;
    [v5 setLibraryIdentifiersWithDatabaseID:v7 block:v22];
  }

  v8 = [v4 deviceSpecificUserInfo];
  v9 = [v8 objectForKeyedSubscript:@"prid"];

  if ([v9 length])
  {
    [v5 setPersonalStoreIdentifiersWithPersonID:v9 block:&__block_literal_global_219_44482];
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_4;
  v20 = &unk_1E767FAA0;
  v21 = v4;
  v10 = v4;
  [v5 setUniversalStoreIdentifiersWithBlock:&v17];
  v11 = [v10 externalContentIdentifier];
  [v5 setVendorID:v11];

  v12 = [v10 identifier];
  [v5 setContentItemID:v12];

  v13 = [v10 userInfo];
  v14 = [v13 objectForKeyedSubscript:@"cntrUID"];
  [v5 setContainerUniqueID:v14];

  v15 = [v10 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"phold"];
  [v5 setPlaceholder:{objc_msgSend(v16, "BOOLValue")}];
}

void ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 deviceSpecificUserInfo];
  v4 = [v5 objectForKeyedSubscript:@"pid"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void ___MPMRInitPropertyPodcastEpisodeMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "storeID")}];
}

@end