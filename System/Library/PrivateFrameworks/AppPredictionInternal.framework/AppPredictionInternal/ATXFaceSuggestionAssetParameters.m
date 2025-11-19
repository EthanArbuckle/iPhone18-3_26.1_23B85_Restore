@interface ATXFaceSuggestionAssetParameters
+ (id)loadAssetParametersDictionaryFromPath:(id)a3;
+ (id)posterDescriptorFromKey:(id)a3 withDescriptorCache:(id)a4;
- (ATXFaceSuggestionAssetParameters)init;
- (NSArray)collectionsSectionDescriptors;
- (NSArray)colorSectionDescriptors;
- (NSArray)dayZeroFeaturedDescriptors;
- (NSArray)descriptorsToRemoveFromCollections;
- (NSArray)emojiSectionDescriptors;
- (NSArray)heroSectionOrder;
- (NSArray)kaleidoscopeSectionDescriptors;
- (NSArray)osVersionSectionDescriptors;
- (NSArray)prideSectionDescriptors;
- (NSArray)sectionOrder;
- (NSArray)weatherAndAstronomySectionDescriptors;
- (NSDictionary)allowedDescriptorsForRegions;
- (NSDictionary)globalPopularityScores;
- (NSDictionary)hiddenRegions;
- (NSDictionary)topLevelDictionary;
- (NSDictionary)unpromotableRegions;
- (NSDictionary)uprankedDateIntervals;
- (NSSet)extensionBundleIdsEligibleForComplicationsInFaceGallery;
- (id)_currentCountryCode;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)dictionaryStringToSetFromObject:(id)a3;
- (void)topLevelDictionary;
@end

@implementation ATXFaceSuggestionAssetParameters

- (ATXFaceSuggestionAssetParameters)init
{
  v10.receiver = self;
  v10.super_class = ATXFaceSuggestionAssetParameters;
  v2 = [(ATXFaceSuggestionAssetParameters *)&v10 init];
  if (v2)
  {
    v3 = +[ATXPosterDescriptorCache sharedInstance];
    descriptorCache = v2->_descriptorCache;
    v2->_descriptorCache = v3;

    v5 = [MEMORY[0x277CEB3C0] pathForResource:@"FaceSuggestionAssetParameters" ofType:@"json" isDirectory:0];
    path = v2->_path;
    v2->_path = v5;

    v7 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = v7;
  }

  return v2;
}

- (NSArray)sectionOrder
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"SectionOrder"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_210];

  return v3;
}

id __48__ATXFaceSuggestionAssetParameters_sectionOrder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__ATXFaceSuggestionAssetParameters_sectionOrder__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)heroSectionOrder
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"HeroSectionOrder"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_93];

  return v3;
}

id __52__ATXFaceSuggestionAssetParameters_heroSectionOrder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__ATXFaceSuggestionAssetParameters_heroSectionOrder__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)weatherAndAstronomySectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"WeatherAndAstronomySectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_95_1];

  return v3;
}

id __73__ATXFaceSuggestionAssetParameters_weatherAndAstronomySectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__ATXFaceSuggestionAssetParameters_weatherAndAstronomySectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)kaleidoscopeSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"KaleidoscopeSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_97];

  return v3;
}

id __66__ATXFaceSuggestionAssetParameters_kaleidoscopeSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXFaceSuggestionAssetParameters_kaleidoscopeSectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)emojiSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"EmojiSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_99];

  return v3;
}

id __59__ATXFaceSuggestionAssetParameters_emojiSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__ATXFaceSuggestionAssetParameters_emojiSectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)prideSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"PrideSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_125];

  return v3;
}

id __59__ATXFaceSuggestionAssetParameters_prideSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__ATXFaceSuggestionAssetParameters_prideSectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)osVersionSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"OSVersionSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_127_0];

  return v3;
}

id __63__ATXFaceSuggestionAssetParameters_osVersionSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__ATXFaceSuggestionAssetParameters_osVersionSectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)collectionsSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"CollectionsSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_129];

  return v3;
}

id __65__ATXFaceSuggestionAssetParameters_collectionsSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__ATXFaceSuggestionAssetParameters_collectionsSectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)colorSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"ColorSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_131];

  return v3;
}

id __59__ATXFaceSuggestionAssetParameters_colorSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__ATXFaceSuggestionAssetParameters_colorSectionDescriptors__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)descriptorsToRemoveFromCollections
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"DescriptorsToRemoveFromCollections"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_133];

  return v3;
}

id __70__ATXFaceSuggestionAssetParameters_descriptorsToRemoveFromCollections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__ATXFaceSuggestionAssetParameters_descriptorsToRemoveFromCollections__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSArray)dayZeroFeaturedDescriptors
{
  v3 = [(ATXFaceSuggestionAssetParameters *)self _currentCountryCode];
  v4 = [(ATXFaceSuggestionAssetParameters *)self unpromotableRegions];
  v5 = [(ATXFaceSuggestionAssetParameters *)self hiddenRegions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke;
  v11[3] = &unk_2785A05F0;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = self;
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [&unk_283A58B08 _pas_mappedArrayWithTransform:v11];

  return v9;
}

id __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 componentsSeparatedByString:@"/"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_158;
    v10[3] = &unk_2785A05C8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v5 = [v4 _pas_filteredArrayWithTest:v10];

    v6 = [v5 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v5, "count"))}];
    v7 = [ATXFaceSuggestionAssetParameters posterDescriptorFromKey:v6 withDescriptorCache:*(*(a1 + 56) + 8)];

    v8 = v11;
  }

  else
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_cold_1();
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_158(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 componentsSeparatedByString:@":"];
  v4 = [v3 firstObject];

  if (v4)
  {
    if (*(a1 + 32))
    {
      v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
      if ([v5 containsObject:*(a1 + 32)])
      {

LABEL_6:
        v8 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v13 = 136315650;
          v14 = "[ATXFaceSuggestionAssetParameters dayZeroFeaturedDescriptors]_block_invoke";
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = v4;
          _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: not showing hidden or unpromotable day zero extensionBundleId in restricted country code %@: %@", &v13, 0x20u);
        }

        goto LABEL_9;
      }

      v6 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v7 = [v6 containsObject:*(a1 + 32)];

      if (v7)
      {
        goto LABEL_6;
      }
    }

    v10 = 1;
    goto LABEL_11;
  }

LABEL_9:
  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSSet)extensionBundleIdsEligibleForComplicationsInFaceGallery
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"ExtensionBundleIdsEligibleForComplicationsInFaceGallery"];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_167_0];
    v5 = [v3 initWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __91__ATXFaceSuggestionAssetParameters_extensionBundleIdsEligibleForComplicationsInFaceGallery__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __91__ATXFaceSuggestionAssetParameters_extensionBundleIdsEligibleForComplicationsInFaceGallery__block_invoke_cold_1();
    }

    v3 = 0;
  }

  return v3;
}

- (NSDictionary)uprankedDateIntervals
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"UprankedDateIntervals"];
  v3 = [v2 mutableCopy];
  [v3 addEntriesFromDictionary:&unk_283A58F10];
  v4 = [v3 copy];

  if (v4)
  {
    v46 = v3;
    v49 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0x277CBE000uLL;
      v9 = *v62;
      v47 = *v62;
      v48 = v5;
      do
      {
        v10 = 0;
        v50 = v7;
        do
        {
          if (*v62 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v61 + 1) + 8 * v10);
          v12 = [v5 objectForKeyedSubscript:{v11, v45}];
          v13 = *(v8 + 2752);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = [v5 objectForKeyedSubscript:v11];
            v16 = [(ATXFaceSuggestionAssetParameters *)self _currentCountryCode];
            v17 = v16;
            if (v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = @"default";
            }

            v19 = v18;

            v20 = [v15 objectForKeyedSubscript:v19];
            if (v20)
            {
              v21 = v19;
            }

            else
            {

              v21 = @"default";
            }

            v54 = v21;
            v22 = [v15 objectForKeyedSubscript:?];

            if (v22)
            {
              v53 = v10;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 = v15;
                v56 = objc_opt_new();
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v51 = v22;
                v23 = v22;
                v24 = [v23 countByEnumeratingWithState:&v57 objects:v71 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v58;
                  do
                  {
                    for (i = 0; i != v25; ++i)
                    {
                      if (*v58 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v57 + 1) + 8 * i);
                      v29 = *(v8 + 2752);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v30 = v8;
                        v31 = v11;
                        v32 = v28;
                        v33 = [(__CFString *)v32 objectForKeyedSubscript:@"start"];
                        v34 = dateFromDict(v33);

                        if (v34)
                        {
                          v35 = [(__CFString *)v32 objectForKeyedSubscript:@"end"];
                          v36 = dateFromDict(v35);

                          if (v36 && ([v34 isAfterDate:v36] & 1) == 0)
                          {
                            v37 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v34 endDate:v36];
                          }

                          else
                          {
                            v37 = 0;
                          }
                        }

                        else
                        {
                          v37 = 0;
                        }

                        if (v37)
                        {
                          [v56 addObject:v37];
                          v11 = v31;
                          v8 = v30;
                        }

                        else
                        {
                          v38 = __atxlog_handle_lock_screen();
                          v8 = v30;
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                          {
                            locale = self->_locale;
                            *buf = 136315650;
                            v66 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
                            v67 = 2112;
                            v68 = v32;
                            v69 = 2112;
                            v70 = locale;
                            _os_log_error_impl(&dword_2263AA000, v38, OS_LOG_TYPE_ERROR, "%s: date interval dict didn't produce a valid interval: %@, current locale: %@", buf, 0x20u);
                          }

                          v11 = v31;
                        }
                      }

                      else
                      {
                        v37 = __atxlog_handle_lock_screen();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v66 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
                          v67 = 2112;
                          v68 = v28;
                          _os_log_error_impl(&dword_2263AA000, v37, OS_LOG_TYPE_ERROR, "%s: array element %@ is not a dictionary", buf, 0x16u);
                        }
                      }
                    }

                    v25 = [v23 countByEnumeratingWithState:&v57 objects:v71 count:16];
                  }

                  while (v25);
                }

                v40 = v56;
                v41 = [v56 copy];
                [v49 setObject:v41 forKeyedSubscript:v11];

                v9 = v47;
                v5 = v48;
                v7 = v50;
                v22 = v51;
                v15 = v52;
              }

              else
              {
                v40 = __atxlog_handle_lock_screen();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v66 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
                  v67 = 2112;
                  v68 = v54;
                  _os_log_error_impl(&dword_2263AA000, v40, OS_LOG_TYPE_ERROR, "%s: value of key %@ is not an array", buf, 0x16u);
                }
              }

              v10 = v53;
            }
          }

          else
          {
            v15 = __atxlog_handle_lock_screen();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v66 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
              v67 = 2112;
              v68 = v11;
              _os_log_error_impl(&dword_2263AA000, v15, OS_LOG_TYPE_ERROR, "%s: value of key %@ not a dictionary", buf, 0x16u);
            }
          }

          ++v10;
        }

        while (v10 != v7);
        v7 = [v5 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v7);
    }

    v42 = [v49 copy];
    v4 = v45;
    v3 = v46;
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (NSDictionary)globalPopularityScores
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"GlobalPopularityScores"];
  if (v3)
  {
    v18 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [ATXFaceSuggestionAssetParameters posterDescriptorFromKey:v9 withDescriptorCache:self->_descriptorCache];
          if (v10)
          {
            v11 = [v4 objectForKeyedSubscript:v9];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v13 = [v4 objectForKeyedSubscript:v9];
              [v18 setObject:v13 forKeyedSubscript:v10];
            }

            else
            {
              v13 = __atxlog_handle_lock_screen();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v24 = "[ATXFaceSuggestionAssetParameters globalPopularityScores]";
                v25 = 2112;
                v26 = v9;
                _os_log_error_impl(&dword_2263AA000, v13, OS_LOG_TYPE_ERROR, "%s: value is not NSNumber for key: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v13 = __atxlog_handle_lock_screen();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v24 = "[ATXFaceSuggestionAssetParameters globalPopularityScores]";
              v25 = 2112;
              v26 = v9;
              _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: no descriptor found for key: %@", buf, 0x16u);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v6);
    }

    v14 = [v18 copy];
    v3 = v17;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSDictionary)unpromotableRegions
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"UnpromotableRegions"];
  if (v2)
  {
    v3 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = v5;
    v7 = *v23;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = __atxlog_handle_lock_screen();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 136315394;
          v27 = "[ATXFaceSuggestionAssetParameters unpromotableRegions]";
          v28 = 2112;
          v29 = v9;
          v15 = v13;
          v16 = "%s: key is not a string: %@";
          goto LABEL_16;
        }

        v10 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = objc_alloc(MEMORY[0x277CBEB98]);
          v13 = [v4 objectForKeyedSubscript:v9];
          v14 = [v12 initWithArray:v13];
          [v3 setObject:v14 forKeyedSubscript:v9];

          goto LABEL_13;
        }

        v13 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "[ATXFaceSuggestionAssetParameters unpromotableRegions]";
          v28 = 2112;
          v29 = v9;
          v15 = v13;
          v16 = "%s: value is not an array for key: %@";
LABEL_16:
          _os_log_error_impl(&dword_2263AA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
        }

LABEL_13:

        ++v8;
      }

      while (v6 != v8);
      v17 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v6 = v17;
      if (!v17)
      {
LABEL_18:

        v18 = [v3 copy];
        v2 = v21;
        goto LABEL_20;
      }
    }
  }

  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSDictionary)hiddenRegions
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"HiddenRegions"];
  if (v2)
  {
    v3 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = v5;
    v7 = *v23;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = __atxlog_handle_lock_screen();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 136315394;
          v27 = "[ATXFaceSuggestionAssetParameters hiddenRegions]";
          v28 = 2112;
          v29 = v9;
          v15 = v13;
          v16 = "%s: key is not a string: %@";
          goto LABEL_16;
        }

        v10 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = objc_alloc(MEMORY[0x277CBEB98]);
          v13 = [v4 objectForKeyedSubscript:v9];
          v14 = [v12 initWithArray:v13];
          [v3 setObject:v14 forKeyedSubscript:v9];

          goto LABEL_13;
        }

        v13 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "[ATXFaceSuggestionAssetParameters hiddenRegions]";
          v28 = 2112;
          v29 = v9;
          v15 = v13;
          v16 = "%s: value is not an array for key: %@";
LABEL_16:
          _os_log_error_impl(&dword_2263AA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
        }

LABEL_13:

        ++v8;
      }

      while (v6 != v8);
      v17 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v6 = v17;
      if (!v17)
      {
LABEL_18:

        v18 = [v3 copy];
        v2 = v21;
        goto LABEL_20;
      }
    }
  }

  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSDictionary)allowedDescriptorsForRegions
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"AllowedDescriptorsForRegions"];
  if (v3)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v5 objectForKeyedSubscript:v10];
            v12 = [(ATXFaceSuggestionAssetParameters *)self dictionaryStringToSetFromObject:v11];

            if (v12)
            {
              [v4 setObject:v12 forKeyedSubscript:v10];
            }

            else
            {
              v13 = __atxlog_handle_lock_screen();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v23 = "[ATXFaceSuggestionAssetParameters allowedDescriptorsForRegions]";
                v24 = 2112;
                v25 = v10;
                _os_log_fault_impl(&dword_2263AA000, v13, OS_LOG_TYPE_FAULT, "%s: dictionary is nil. key: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v12 = __atxlog_handle_lock_screen();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v23 = "[ATXFaceSuggestionAssetParameters allowedDescriptorsForRegions]";
              v24 = 2112;
              v25 = v10;
              _os_log_fault_impl(&dword_2263AA000, v12, OS_LOG_TYPE_FAULT, "%s: key is not a string: %@", buf, 0x16u);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
    v3 = v17;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)dictionaryStringToSetFromObject:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v3;
    v4 = v3;
    v5 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v9 = *v25;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = __atxlog_handle_lock_screen();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_13;
          }

          *buf = 136315394;
          v29 = "[ATXFaceSuggestionAssetParameters dictionaryStringToSetFromObject:]";
          v30 = 2112;
          v31 = v11;
          v17 = v15;
          v18 = "%s: key is not a string: %@";
          goto LABEL_16;
        }

        v12 = [v6 objectForKeyedSubscript:v11];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          v15 = [v6 objectForKeyedSubscript:v11];
          v16 = [v14 initWithArray:v15];
          [v5 setObject:v16 forKeyedSubscript:v11];

          goto LABEL_13;
        }

        v15 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v29 = "[ATXFaceSuggestionAssetParameters dictionaryStringToSetFromObject:]";
          v30 = 2112;
          v31 = v11;
          v17 = v15;
          v18 = "%s: value is not an array for key: %@";
LABEL_16:
          _os_log_fault_impl(&dword_2263AA000, v17, OS_LOG_TYPE_FAULT, v18, buf, 0x16u);
        }

LABEL_13:

        ++v10;
      }

      while (v8 != v10);
      v19 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v8 = v19;
      if (!v19)
      {
LABEL_18:

        v20 = [v5 copy];
        v3 = v23;
        goto LABEL_22;
      }
    }
  }

  v6 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(ATXFaceSuggestionAssetParameters *)v3 dictionaryStringToSetFromObject:v6];
  }

  v20 = 0;
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(ATXFaceSuggestionAssetParameters *)self topLevelDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceSuggestionAssetParameters *)v4 dictionaryForKey:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(ATXFaceSuggestionAssetParameters *)self topLevelDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceSuggestionAssetParameters *)v4 arrayForKey:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (NSDictionary)topLevelDictionary
{
  v2 = self;
  objc_sync_enter(v2);
  topLevelDictionary = v2->_topLevelDictionary;
  if (topLevelDictionary)
  {
    v4 = [(NSDictionary *)topLevelDictionary copy];
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  if (v2->_path)
  {
    v5 = [ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:?];
    v6 = v2->_topLevelDictionary;
    v2->_topLevelDictionary = v5;

    v4 = [(NSDictionary *)v2->_topLevelDictionary copy];
    goto LABEL_5;
  }

  v9 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ATXFaceSuggestionAssetParameters topLevelDictionary];
  }

  v7 = 0;
LABEL_6:
  objc_sync_exit(v2);

  return v7;
}

+ (id)loadAssetParametersDictionaryFromPath:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3 options:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    v11 = v5;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v11];
    v7 = v11;

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v6;
        v8 = v6;
        goto LABEL_13;
      }

      v9 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:];
      }
    }

    else
    {
      v9 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:];
      }
    }

    v8 = 0;
  }

  else
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:];
    }

    v8 = 0;
    v7 = v5;
  }

LABEL_13:

  return v8;
}

+ (id)posterDescriptorFromKey:(id)a3 withDescriptorCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"])
  {
    v7 = [v6 descriptors];
    v8 = [v7 objectForKeyedSubscript:@"com.apple.WallpaperKit.CollectionsPoster"];
    v9 = [v8 firstObject];
  }

  else
  {
    v7 = [v5 componentsSeparatedByString:@":"];
    if ([v7 count] > 1)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v10 = [v7 objectAtIndexedSubscript:1];
      v11 = [v6 descriptors];
      v12 = [v11 objectForKeyedSubscript:v8];

      if (v12)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke;
        v20[3] = &unk_2785A0618;
        v13 = v10;
        v21 = v13;
        v14 = [v12 bs_firstObjectPassingTest:v20];
        v15 = v14;
        if (v14)
        {
          v9 = v14;
        }

        else
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke_2;
          v18[3] = &unk_2785A0618;
          v19 = v13;
          v9 = [v12 bs_firstObjectPassingTest:v18];
        }

        v16 = v21;
      }

      else
      {
        v16 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[ATXFaceSuggestionAssetParameters posterDescriptorFromKey:withDescriptorCache:];
        }

        v9 = 0;
      }
    }

    else
    {
      v8 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceSuggestionAssetParameters posterDescriptorFromKey:withDescriptorCache:];
      }

      v9 = 0;
    }
  }

  return v9;
}

uint64_t __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 coreIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 coreIdentifier];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

- (id)_currentCountryCode
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(NSLocale *)self->_locale countryCode];
  v3 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ATXFaceSuggestionAssetParameters _currentCountryCode]";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: using country code: %@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

void __48__ATXFaceSuggestionAssetParameters_sectionOrder__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ATXFaceSuggestionAssetParameters_heroSectionOrder__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__ATXFaceSuggestionAssetParameters_weatherAndAstronomySectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__ATXFaceSuggestionAssetParameters_kaleidoscopeSectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ATXFaceSuggestionAssetParameters_emojiSectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ATXFaceSuggestionAssetParameters_prideSectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__ATXFaceSuggestionAssetParameters_osVersionSectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__ATXFaceSuggestionAssetParameters_collectionsSectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ATXFaceSuggestionAssetParameters_colorSectionDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__ATXFaceSuggestionAssetParameters_descriptorsToRemoveFromCollections__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__ATXFaceSuggestionAssetParameters_extensionBundleIdsEligibleForComplicationsInFaceGallery__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dictionaryStringToSetFromObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v6[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  v4 = v3;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: object is not a dictionary: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dictionaryForKey:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a2 topLevelDictionary];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, a3, v5, "%s: did not find dictionary with key %@ in top level dictionary: %@", v7);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)arrayForKey:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a2 topLevelDictionary];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, a3, v5, "%s: did not find array with key %@ in top level dictionary: %@", v7);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)topLevelDictionary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadAssetParametersDictionaryFromPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadAssetParametersDictionaryFromPath:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_28();
  v4 = v0;
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, v1, v1, "%s: could not parse JSON from contents of path: %@; error: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)loadAssetParametersDictionaryFromPath:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_28();
  v4 = v0;
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, v1, v1, "%s: could not load data from path: %@; error: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)posterDescriptorFromKey:withDescriptorCache:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)posterDescriptorFromKey:withDescriptorCache:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end