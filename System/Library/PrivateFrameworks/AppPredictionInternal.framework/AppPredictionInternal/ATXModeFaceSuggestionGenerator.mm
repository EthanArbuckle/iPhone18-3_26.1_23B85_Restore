@interface ATXModeFaceSuggestionGenerator
- (ATXModeFaceSuggestionGenerator)init;
- (id)_facesForModeType:(int64_t)type modeUUID:(id)d allDescriptors:(id)descriptors;
- (id)_firstDescriptorWithExtension:(id)extension focus:(int64_t)focus allDescriptors:(id)descriptors;
- (id)_firstDescriptorWithExtension:(id)extension identifier:(id)identifier allDescriptors:(id)descriptors;
- (id)_firstPhotosDescriptorMatchingSubtype:(int64_t)subtype allDescriptors:(id)descriptors;
- (id)_posterCandidatesForModeType:(int64_t)type allDescriptors:(id)descriptors;
- (id)facesForMode:(id)mode allDescriptors:(id)descriptors;
- (id)generateFacesFromDescriptors:(id)descriptors;
- (void)generateAndCacheFacesFromDescriptors:(id)descriptors;
@end

@implementation ATXModeFaceSuggestionGenerator

- (ATXModeFaceSuggestionGenerator)init
{
  v7.receiver = self;
  v7.super_class = ATXModeFaceSuggestionGenerator;
  v2 = [(ATXModeFaceSuggestionGenerator *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    appLaunchCounts = v2->_appLaunchCounts;
    v2->_appLaunchCounts = rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps;
  }

  return v2;
}

- (id)generateFacesFromDescriptors:(id)descriptors
{
  v23 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [&unk_283A58C40 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(&unk_283A58C40);
        }

        v11 = [objc_alloc(MEMORY[0x277CEB538]) initWithType:objc_msgSend(*(*(&v18 + 1) + 8 * i) uuid:{"integerValue"), 0}];
        v12 = [(ATXModeFaceSuggestionGenerator *)self facesForMode:v11 allDescriptors:descriptorsCopy];
        v13 = [v12 bs_firstObjectPassingTest:&__block_literal_global_245];
        if (v13 || ([v12 lastObject], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14 = v13;
          if (v9)
          {
            v7 = [v12 count] - 1;
            [v4 addObjectsFromArray:v12];
          }

          else
          {
            if (v7 >= 1)
            {
              [v4 removeObjectAtIndex:0];
              --v7;
            }

            [v4 addObject:v14];
          }

          v9 = 0;
        }
      }

      v6 = [&unk_283A58C40 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)generateAndCacheFacesFromDescriptors:(id)descriptors
{
  v18 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeFaceSuggestionGenerator: starting generation of mode faces", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CEB6B0]);
  [v7 evictCachedSuggestedFaces];
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  configuredModes = [mEMORY[0x277CEB440] configuredModes];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__ATXModeFaceSuggestionGenerator_generateAndCacheFacesFromDescriptors___block_invoke;
  v14[3] = &unk_2785A1790;
  v14[4] = self;
  v15 = descriptorsCopy;
  v10 = descriptorsCopy;
  [configuredModes enumerateKeysAndObjectsUsingBlock:v14];

  v11 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v17 = v12 - Current;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXModeFaceSuggestionGenerator: finished generation of mode faces in %f seconds", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __71__ATXModeFaceSuggestionGenerator_generateAndCacheFacesFromDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = DNDModeSemanticTypeToSuggestedFaceType([v5 semanticType]);
  v9 = [v11 UUIDString];
  v10 = [v7 _facesForModeType:v8 modeUUID:v9 allDescriptors:*(a1 + 40)];

  objc_autoreleasePoolPop(v6);
}

- (id)facesForMode:(id)mode allDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  modeCopy = mode;
  type = [modeCopy type];
  uuid = [modeCopy uuid];

  v10 = [uuid length];
  if (type)
  {
    if (v10)
    {
LABEL_11:
      v16 = [(ATXModeFaceSuggestionGenerator *)self _facesForModeType:type modeUUID:uuid allDescriptors:descriptorsCopy];
      goto LABEL_16;
    }

    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    v12 = [mEMORY[0x277CEB440] dndModeUUIDForDNDModeSemanticType:DNDModeSemanticTypeFromSuggestedFaceType(type)];

    if (v12)
    {
      uUIDString = [v12 UUIDString];

      uuid = uUIDString;
LABEL_9:

      goto LABEL_11;
    }
  }

  else if (v10)
  {
    if (![uuid length])
    {
      type = 0;
      goto LABEL_11;
    }

    mEMORY[0x277CEB440]2 = [MEMORY[0x277CEB440] sharedInstance];
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uuid];
    v12 = [mEMORY[0x277CEB440]2 dndModeForDNDModeWithUUID:v15];

    if (v12)
    {
      type = DNDModeSemanticTypeToSuggestedFaceType([v12 semanticType]);
      goto LABEL_9;
    }

    v17 = __atxlog_handle_modes();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXModeFaceSuggestionGenerator facesForMode:uuid allDescriptors:v17];
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)_facesForModeType:(int64_t)type modeUUID:(id)d allDescriptors:(id)descriptors
{
  v49[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  descriptorsCopy = descriptors;
  if (!dCopy)
  {
    [ATXModeFaceSuggestionGenerator _facesForModeType:a2 modeUUID:self allDescriptors:?];
  }

  v10 = objc_alloc_init(ATXModeFaceComplicationsAggregator);
  v35 = [(ATXModeFaceComplicationsAggregator *)v10 provideComplicationsForSuggestedFaceType:type environment:self];
  v34 = [(ATXModeFaceComplicationsAggregator *)v10 provideLandscapeComplicationsForSuggestedFaceType:type environment:self];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v11 = objc_opt_new();
  v49[0] = v11;
  v12 = objc_opt_new();
  v49[1] = v12;
  v13 = objc_opt_new();
  v49[2] = v13;
  v14 = objc_opt_new();
  v49[3] = v14;
  v15 = objc_opt_new();
  v49[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:5];

  v17 = DNDModeSemanticTypeFromSuggestedFaceType(type);
  v18 = [(ATXModeFaceSuggestionGenerator *)self _posterCandidatesForModeType:v17 allDescriptors:descriptorsCopy];
  if (v18)
  {
    v19 = DNDModeLocalizedNameForSemanticType();
    v20 = [MEMORY[0x277CF0BC8] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __76__ATXModeFaceSuggestionGenerator__facesForModeType_modeUUID_allDescriptors___block_invoke;
    v37[3] = &unk_2785A17B8;
    v23 = v22;
    v38 = v23;
    v24 = v21;
    v39 = v24;
    v46 = v48;
    v40 = v16;
    v47 = v17;
    v25 = v20;
    v41 = v25;
    v26 = dCopy;
    v42 = v26;
    v27 = v19;
    v43 = v27;
    v44 = v34;
    v45 = v35;
    [v18 enumerateObjectsWithOptions:2 usingBlock:v37];
    if ([v24 count])
    {
      v28 = objc_alloc_init(MEMORY[0x277CEB6B0]);
      v29 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v26];
      [v28 cacheSuggestedFaces:v24 forModeUUID:v29];
    }

    v30 = v45;
    v31 = v24;
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(v48, 8);
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __76__ATXModeFaceSuggestionGenerator__facesForModeType_modeUUID_allDescriptors___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v37 = a2;
  v7 = [v37 descriptor];
  v8 = [v7 extensionBundleIdentifier];
  if ([v8 isEqualToString:@"com.apple.mobileslideshow.PhotosPosterProvider"])
  {
  }

  else
  {
    v9 = [v8 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  if ([*(a1 + 32) bundleIdIsLockedOrHiddenByUserPreference:@"com.apple.mobileslideshow"])
  {
    goto LABEL_18;
  }

LABEL_5:
  if ([*(a1 + 40) count] >= 3 || (v10 = *(*(*(a1 + 96) + 8) + 24), v10 >= objc_msgSend(*(a1 + 48), "count")))
  {
    *a4 = 1;
    goto LABEL_18;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"mode-%ld-%ld", *(a1 + 104), a3];
  v12 = MEMORY[0x277CEB3B0];
  v13 = [v37 descriptor];
  v14 = [v13 extensionBundleIdentifier];
  v15 = [v12 localizedNameForExtensionBundleId:v14];

  v16 = objc_alloc(MEMORY[0x277CEB520]);
  v17 = [v37 descriptor];
  v18 = [v17 identifier];
  v19 = [v37 descriptor];
  v20 = [v19 extensionBundleIdentifier];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 104)];
  v22 = [v37 fontName];
  v23 = [v16 initWithIdentifier:v11 descriptorIdentifier:v18 extensionBundleIdentifier:v20 localizedDisplayName:v15 modeSemanticType:v21 titleFontName:v22 titleColor:*(a1 + 56) subtitleComplication:0 layoutType:0 complications:0 landscapeComplications:0];

  [v23 setModeUUID:*(a1 + 64)];
  [v23 setIsPreferredForGallery:{objc_msgSend(v37, "isPreferredForGallery")}];
  [v23 setLocalizedSubtitle:*(a1 + 72)];
  [v23 setSource:6];
  v24 = [v37 descriptor];
  v25 = [v24 galleryOptions];
  if ([v25 allowsSystemSuggestedComplications])
  {
  }

  else
  {
    v26 = [v37 descriptor];
    v27 = [v26 galleryOptions];
    v28 = [v27 modularComplications];
    v29 = [v28 count];

    if (!v29)
    {
      goto LABEL_12;
    }
  }

  v30 = [v37 descriptor];
  v31 = [v30 extensionBundleIdentifier];
  v32 = [v31 isEqualToString:@"com.apple.EmojiPoster.EmojiPosterExtension"];

  if ((v32 & 1) == 0)
  {
    v34 = 0;
    do
    {
      v33 = [*(a1 + 48) objectAtIndexedSubscript:*(*(*(a1 + 96) + 8) + 24)];

      v35 = objc_opt_new();
      [v35 assignComplicationsFromCandidates:*(a1 + 80) forSuggestedFace:v23];
      v36 = *(*(*(a1 + 96) + 8) + 24);
      if (v36 < [*(a1 + 48) count] - 1)
      {
        ++*(*(*(a1 + 96) + 8) + 24);
      }

      v34 = v33;
    }

    while (([v33 assignComplicationsFromCandidates:*(a1 + 88) forSuggestedFace:v23] & 1) == 0);
    goto LABEL_17;
  }

LABEL_12:
  v33 = objc_opt_new();
  [v33 assignComplicationsFromCandidates:*(a1 + 88) forSuggestedFace:v23];
LABEL_17:

  [*(a1 + 40) insertObject:v23 atIndex:0];
LABEL_18:
}

- (id)_firstDescriptorWithExtension:(id)extension identifier:(id)identifier allDescriptors:(id)descriptors
{
  v28 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  identifierCopy = identifier;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  descriptorsCopy = descriptors;
  v10 = [descriptorsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        galleryOptions = [v13 galleryOptions];
        isHero = [galleryOptions isHero];

        if ((isHero & 1) == 0)
        {
          if ([identifierCopy length])
          {
            extensionBundleIdentifier = [v13 extensionBundleIdentifier];
            if ([extensionBundleIdentifier isEqualToString:extensionCopy])
            {
              identifier = [v13 identifier];
              v18 = [identifier hasPrefix:identifierCopy];

              if (v18)
              {
                goto LABEL_17;
              }
            }

            else
            {
            }
          }

          if (![identifierCopy length])
          {
            extensionBundleIdentifier2 = [v13 extensionBundleIdentifier];
            v20 = [extensionBundleIdentifier2 isEqualToString:extensionCopy];

            if (v20)
            {
LABEL_17:
              v10 = v13;
              goto LABEL_18;
            }
          }
        }
      }

      v10 = [descriptorsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_firstDescriptorWithExtension:(id)extension focus:(int64_t)focus allDescriptors:(id)descriptors
{
  v26 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  descriptorsCopy = descriptors;
  v8 = [descriptorsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *v22;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(descriptorsCopy);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      extensionBundleIdentifier = [v12 extensionBundleIdentifier];
      if (![extensionBundleIdentifier isEqualToString:extensionCopy])
      {
        goto LABEL_11;
      }

      galleryOptions = [v12 galleryOptions];
      if (([galleryOptions isOnlyEligibleForMadeForFocusSection] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      galleryOptions2 = [v12 galleryOptions];
      focus = [galleryOptions2 focus];

      if (focus == focus)
      {
        v17 = v12;
        goto LABEL_15;
      }
    }

    v9 = [descriptorsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
LABEL_14:
  v17 = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_firstPhotosDescriptorMatchingSubtype:(int64_t)subtype allDescriptors:(id)descriptors
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__ATXModeFaceSuggestionGenerator__firstPhotosDescriptorMatchingSubtype_allDescriptors___block_invoke;
  v9[3] = &__block_descriptor_40_e29_B16__0__ATXPosterDescriptor_8l;
  v9[4] = subtype;
  v4 = [descriptors _pas_filteredSetWithTest:v9];
  allObjects = [v4 allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_99_0];

  firstObject = [v6 firstObject];

  return firstObject;
}

uint64_t __87__ATXModeFaceSuggestionGenerator__firstPhotosDescriptorMatchingSubtype_allDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 galleryOptions];
  v5 = [v4 photoSubtype];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = [v3 galleryOptions];
    v8 = [v7 shouldShowAsShuffleStack];

    v9 = v8 ^ 1u;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __87__ATXModeFaceSuggestionGenerator__firstPhotosDescriptorMatchingSubtype_allDescriptors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [a3 galleryOptions];
  v7 = [v4 numberWithInteger:{objc_msgSend(v6, "featuredConfidenceLevel")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 galleryOptions];

  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "featuredConfidenceLevel")}];
  v11 = [v7 compare:v10];

  return v11;
}

- (id)_posterCandidatesForModeType:(int64_t)type allDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v7 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke;
  aBlock[3] = &unk_2785A1800;
  v8 = v7;
  v41 = v8;
  v9 = _Block_copy(aBlock);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke_2;
  v37[3] = &unk_2785A1828;
  v10 = v9;
  v39 = v10;
  v37[4] = self;
  v11 = descriptorsCopy;
  v38 = v11;
  v12 = _Block_copy(v37);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke_3;
  v34[3] = &unk_2785A1850;
  v13 = v10;
  v36 = v13;
  v34[4] = self;
  v14 = v11;
  v35 = v14;
  v15 = _Block_copy(v34);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke_4;
  v30 = &unk_2785A1878;
  v16 = v13;
  v33 = v16;
  selfCopy = self;
  v17 = v14;
  v32 = v17;
  v18 = _Block_copy(&v27);
  v19 = v18;
  v20 = 0;
  if (type > 4)
  {
    if (type <= 6)
    {
      if (type == 5)
      {
        if (((*(v18 + 2))(v18, 2, &stru_2839A6058, 1) & 1) == 0 && ((v19)[2](v19, 1, &stru_2839A6058, 1) & 1) == 0 && (v15[2](v15, @"com.apple.WallpaperKit.CollectionsPoster", 6, &stru_2839A6058, 1) & 1) == 0 && ((v12[2])(v12, @"com.apple.WallpaperKit.CollectionsPoster", @"7560", &stru_2839A6058, 1) & 1) == 0)
        {
          v12[2](v12, @"com.apple.WallpaperKit.CollectionsPoster", @"7420", &stru_2839A6058, 1);
        }

        if ((v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 6, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, &stru_2839A6058, 0);
        }

        if ((v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 6, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.GradientPoster.GradientPosterExtension", @"pink", &stru_2839A6058, 0);
        }
      }

      else
      {
        v12[2](v12, @"com.apple.weather.poster", @"weather-poster", @"PRTimeFontIdentifierNewYork", 0);
        v22 = v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 7, @"PRTimeFontIdentifierNewYork", 1);
        if ((v22 & 1) == 0)
        {
          v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, @"PRTimeFontIdentifierNewYork", 0);
        }

        if ((v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 7, @"PRTimeFontIdentifierNewYork", v22 ^ 1u) & 1) == 0)
        {
          v12[2](v12, @"com.apple.GradientPoster.GradientPosterExtension", @"yellow", @"PRTimeFontIdentifierNewYork", v22 ^ 1u);
        }
      }

      goto LABEL_56;
    }

    switch(type)
    {
      case 7:
        if ((v15[2](v15, @"com.apple.WallpaperKit.CollectionsPoster", 8, &stru_2839A6058, 1) & 1) == 0)
        {
          v12[2](v12, @"com.apple.WallpaperKit.CollectionsPoster", @"7365", &stru_2839A6058, 1);
        }

        if ((v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 8, &stru_2839A6058, 1) & 1) == 0)
        {
          v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, &stru_2839A6058, 0);
        }

        if ((v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 8, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.GradientPoster.GradientPosterExtension", @"blue", &stru_2839A6058, 0);
        }

        goto LABEL_56;
      case 8:
        if ((v15[2](v15, @"com.apple.WallpaperKit.CollectionsPoster", 9, &stru_2839A6058, 1) & 1) == 0)
        {
          v12[2](v12, @"com.apple.weather.poster", @"weather-poster", &stru_2839A6058, 0);
        }

        if ((v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 9, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, &stru_2839A6058, 0);
        }

        if (v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 9, &stru_2839A6058, 0))
        {
          goto LABEL_56;
        }

LABEL_41:
        v12[2](v12, @"com.apple.GradientPoster.GradientPosterExtension", @"cyan", &stru_2839A6058, 0);
LABEL_56:
        if (![v8 count] && objc_msgSend(v17, "count"))
        {
          v23 = __atxlog_handle_modes();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [ATXModeFaceSuggestionGenerator _posterCandidatesForModeType:v23 allDescriptors:?];
          }

          anyObject = [v17 anyObject];
          (*(v16 + 2))(v16, anyObject, &stru_2839A6058, 0);
        }

        v20 = v8;
        goto LABEL_62;
      case 9:
        goto LABEL_62;
    }
  }

  else
  {
    if (type > 1)
    {
      if (type == 2)
      {
        goto LABEL_62;
      }

      if (type == 3)
      {
        if (((*(v18 + 2))(v18, 3, &stru_2839A6058, 1) & 1) == 0 && (v15[2](v15, @"com.apple.WallpaperKit.CollectionsPoster", 4, &stru_2839A6058, 1) & 1) == 0 && ((v12[2])(v12, @"com.apple.WallpaperKit.CollectionsPoster", @"7560", &stru_2839A6058, 1) & 1) == 0)
        {
          v12[2](v12, @"com.apple.WallpaperKit.CollectionsPoster", @"7420", &stru_2839A6058, 1);
        }

        if ((v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 4, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, &stru_2839A6058, 0);
        }

        if ((v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 4, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.GradientPoster.GradientPosterExtension", @"green", &stru_2839A6058, 0);
        }
      }

      else
      {
        v21 = (*(v18 + 2))(v18, 4, &stru_2839A6058, 1);
        if ((v21 & 1) == 0)
        {
          v12[2](v12, @"com.apple.weather.poster", @"weather-poster", &stru_2839A6058, 0);
        }

        if ((v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 5, &stru_2839A6058, v21 ^ 1u) & 1) == 0)
        {
          v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, &stru_2839A6058, 0);
        }

        if ((v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 5, &stru_2839A6058, 0) & 1) == 0)
        {
          v12[2](v12, @"com.apple.GradientPoster.GradientPosterExtension", @"red", &stru_2839A6058, 0);
        }
      }

      goto LABEL_56;
    }

    if ((type + 1) < 2)
    {
      goto LABEL_62;
    }

    if (type == 1)
    {
      v12[2](v12, @"com.apple.NanoUniverse.AegirProxyApp.AegirPoster", @"V02-Moon", &stru_2839A6058, 1);
      if ((v15[2](v15, @"com.apple.EmojiPoster.EmojiPosterExtension", 2, &stru_2839A6058, 0) & 1) == 0)
      {
        v12[2](v12, @"com.apple.EmojiPoster.EmojiPosterExtension", &stru_2839A6058, &stru_2839A6058, 0);
      }

      if (v15[2](v15, @"com.apple.GradientPoster.GradientPosterExtension", 2, &stru_2839A6058, 0))
      {
        goto LABEL_56;
      }

      goto LABEL_41;
    }
  }

  v26 = __atxlog_handle_modes();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    DNDModeSemanticTypeToSuggestedFaceType_cold_1(type, v26);
  }

  v20 = 0;
LABEL_62:

  return v20;
}

BOOL __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = a2;
    if ([v7 count] == 3)
    {
      [*(a1 + 32) removeObjectAtIndex:0];
    }

    v10 = [[_ATXModePosterCandidate alloc] initWithDescriptor:v9 fontName:v8 isPreferredForGallery:a4];

    [*(a1 + 32) insertObject:v10 atIndex:0];
  }

  return a2 != 0;
}

uint64_t __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];
  v11 = a4;
  v12 = [v10 _firstDescriptorWithExtension:a2 identifier:a3 allDescriptors:v9];
  v13 = (*(v8 + 16))(v8, v12, v11, a5);

  return v13;
}

uint64_t __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];
  v11 = a4;
  v12 = [v10 _firstDescriptorWithExtension:a2 focus:a3 allDescriptors:v9];
  v13 = (*(v8 + 16))(v8, v12, v11, a5);

  return v13;
}

uint64_t __78__ATXModeFaceSuggestionGenerator__posterCandidatesForModeType_allDescriptors___block_invoke_4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];
  v9 = a3;
  v10 = [v8 _firstPhotosDescriptorMatchingSubtype:a2 allDescriptors:v7];
  v11 = (*(v6 + 16))(v6, v10, v9, a4);

  return v11;
}

- (void)facesForMode:(uint64_t)a1 allDescriptors:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeFaceSuggestionGenerator: could not look up mode semantic type for UUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_facesForModeType:(uint64_t)a1 modeUUID:(uint64_t)a2 allDescriptors:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXModeFaceSuggestionGenerator.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"modeUUID"}];
}

@end