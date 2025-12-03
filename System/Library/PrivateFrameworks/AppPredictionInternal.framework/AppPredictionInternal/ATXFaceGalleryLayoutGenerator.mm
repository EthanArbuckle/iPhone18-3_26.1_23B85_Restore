@interface ATXFaceGalleryLayoutGenerator
+ (id)_descriptorsByDeduplicatingExtensionsInDescriptors:(id)descriptors;
- (ATXFaceGalleryLayoutGenerator)initWithDescriptors:(id)descriptors complicationProvider:(id)provider complicationDescriptorProvider:(id)descriptorProvider parameters:(id)parameters dayZero:(BOOL)zero locale:(id)locale;
- (BOOL)_complicationExistsOnSystem:(id)system;
- (BOOL)_descriptorIsEligibleForComplications:(id)complications;
- (BOOL)_isFocusUser;
- (BOOL)_shouldExcludePhotosDescriptor:(id)descriptor appProtectionInfo:(id)info;
- (BOOL)isDescriptor:(id)descriptor availableInAssetParameter:(id)parameter;
- (BOOL)isDescriptorFromGalleryItem:(id)item availableInAssetParameter:(id)parameter;
- (BOOL)shouldAddDescriptorFromExtension:(id)extension descriptorIdentifierInAsset:(id)asset withSemanticType:(int64_t)type assetParametersToFilterOut:(id)out;
- (BOOL)shouldRemoveDescriptorFromFeatured:(id)featured withDescriptorsToRemove:(id)remove;
- (NSArray)rankedFeaturedDescriptors;
- (id)_candidateFeaturedDescriptors;
- (id)_generateSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id assetDescriptors:(id)descriptors otherParameters:(id)parameters semanticType:(int64_t)type;
- (id)_generatedFeaturedSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)_generatedFocusSection;
- (id)_generatedHeroSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id heroSectionOrder:(id)order;
- (id)_generatedPhotoShuffleSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)_generatedSpatialPhotosSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)_inlineComplicationForDescriptor:(id)descriptor;
- (id)_itemFromDescriptor:(id)descriptor shouldShowDisplayName:(BOOL)name shouldShowComplications:(BOOL)complications systemSuggestedComplicationSet:(id)set systemSuggestedLandscapeComplicationSet:(id)complicationSet;
- (id)_itemsFromDescriptors:(id)descriptors widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id shouldShowDisplayName:(BOOL)name shouldShowComplications:(BOOL)complications limit:(id)limit;
- (id)_landscapeSetsFromLandscapeSetsDict:(id)dict;
- (id)_localizedSubtitleTextWithSemanticType:(int64_t)type;
- (id)_localizedTitleForWeatherAndAstronomySection;
- (id)_localizedTitleTextWithSemanticType:(int64_t)type;
- (id)_localizedTitleforOSVersionSection;
- (id)_modularComplicationsForDescriptor:(id)descriptor systemSuggestionComplications:(id)complications;
- (id)_modularLandscapeComplicationsForDescriptor:(id)descriptor systemSuggestionComplications:(id)complications;
- (id)_shuffledSuggestableComplicationSetsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)descriptorsToRemoveFromSectionWithSemanticType:(int64_t)type parameters:(id)parameters;
- (id)generatedConfigurationWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)putPhotoShuffleAndSpatialSceneInTheTopPositions:(id)positions;
- (void)_processDescriptors:(id)descriptors;
@end

@implementation ATXFaceGalleryLayoutGenerator

- (ATXFaceGalleryLayoutGenerator)initWithDescriptors:(id)descriptors complicationProvider:(id)provider complicationDescriptorProvider:(id)descriptorProvider parameters:(id)parameters dayZero:(BOOL)zero locale:(id)locale
{
  descriptorsCopy = descriptors;
  providerCopy = provider;
  descriptorProviderCopy = descriptorProvider;
  parametersCopy = parameters;
  localeCopy = locale;
  v24.receiver = self;
  v24.super_class = ATXFaceGalleryLayoutGenerator;
  v18 = [(ATXFaceGalleryLayoutGenerator *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_complicationProvider, provider);
    objc_storeStrong(&v19->_complicationDescriptorProvider, descriptorProvider);
    v19->_dayZero = zero;
    objc_storeStrong(&v19->_locale, locale);
    v20 = +[ATXComplicationSuggestionParameters sharedInstance];
    complicationParameters = v19->_complicationParameters;
    v19->_complicationParameters = v20;

    objc_storeStrong(&v19->_parameters, parameters);
    [(ATXFaceGalleryLayoutGenerator *)v19 _processDescriptors:descriptorsCopy];
  }

  return v19;
}

- (id)generatedConfigurationWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v95 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  v9 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v94 = "[ATXFaceGalleryLayoutGenerator generatedConfigurationWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:]";
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: generating new gallery layout", buf, 0xCu);
  }

  v10 = objc_opt_new();
  v87 = [(ATXFaceGalleryLayoutGenerator *)self _generatedFeaturedSectionWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
  parameters = self->_parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = self->_parameters;
  }

  else
  {
    v12 = 0;
  }

  v84 = v12;
  sectionOrder = [(ATXFaceSuggestionParameters *)v12 sectionOrder];
  v14 = sectionOrder;
  v15 = MEMORY[0x277CBEBF8];
  if (sectionOrder)
  {
    v15 = sectionOrder;
  }

  v16 = v15;

  if (![v16 count])
  {
    v17 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ATXFaceGalleryLayoutGenerator *)v17 generatedConfigurationWithWidgetDescriptorsAdditionalData:v18 aggregatedAppLaunchData:v19 bundleIdToCompanionBundleId:v20, v21, v22, v23, v24];
    }
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v25 = v16;
  v26 = [v25 countByEnumeratingWithState:&v88 objects:v92 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v89;
    v82 = dataCopy;
    selfCopy = self;
    do
    {
      v29 = 0;
      do
      {
        if (*v89 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v88 + 1) + 8 * v29);
        if ([v30 isEqualToString:@"Default"])
        {
          goto LABEL_18;
        }

        if ([v30 isEqualToString:@"FeaturedFaces"])
        {

          [v10 addObject:v87];
        }

        else
        {
          if ([v30 isEqualToString:@"FeaturedPhotos"])
          {
            goto LABEL_18;
          }

          if ([v30 isEqualToString:@"Focus"])
          {

            _generatedFocusSection = [(ATXFaceGalleryLayoutGenerator *)self _generatedFocusSection];
LABEL_26:
            v30 = _generatedFocusSection;
            if (_generatedFocusSection)
            {
              [v10 addObject:_generatedFocusSection];
            }

LABEL_18:

            goto LABEL_21;
          }

          if ([v30 isEqualToString:@"Hero"])
          {

            heroSectionOrder = [(ATXFaceSuggestionParameters *)v84 heroSectionOrder];
            v30 = heroSectionOrder;
            if (heroSectionOrder)
            {
              v33 = heroSectionOrder;
            }

            else
            {
              v33 = MEMORY[0x277CBEBF8];
            }

            v34 = [(ATXFaceGalleryLayoutGenerator *)self _generatedHeroSectionWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy heroSectionOrder:v33, v82];
            [v10 addObject:v34];

            self = selfCopy;
            goto LABEL_18;
          }

          if ([v30 isEqualToString:@"PhotoShuffle"])
          {

            _generatedFocusSection = [(ATXFaceGalleryLayoutGenerator *)self _generatedPhotoShuffleSectionWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
            goto LABEL_26;
          }

          if ([v30 isEqualToString:@"WeatherAndAstronomy"])
          {

            weatherAndAstronomySectionDescriptors = [(ATXFaceSuggestionParameters *)v84 weatherAndAstronomySectionDescriptors];
            v36 = weatherAndAstronomySectionDescriptors;
            v37 = MEMORY[0x277CBEBF8];
            if (weatherAndAstronomySectionDescriptors)
            {
              v37 = weatherAndAstronomySectionDescriptors;
            }

            v38 = dataCopy;
            v39 = v37;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v38;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 6;
          }

          else if ([v30 isEqualToString:@"Kaleidoscope"])
          {

            kaleidoscopeSectionDescriptors = [(ATXFaceSuggestionParameters *)v84 kaleidoscopeSectionDescriptors];
            v48 = kaleidoscopeSectionDescriptors;
            v49 = MEMORY[0x277CBEBF8];
            if (kaleidoscopeSectionDescriptors)
            {
              v49 = kaleidoscopeSectionDescriptors;
            }

            v50 = dataCopy;
            v39 = v49;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v50;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 7;
          }

          else if ([v30 isEqualToString:@"Emoji"])
          {

            emojiSectionDescriptors = [(ATXFaceSuggestionParameters *)v84 emojiSectionDescriptors];
            v52 = emojiSectionDescriptors;
            v53 = MEMORY[0x277CBEBF8];
            if (emojiSectionDescriptors)
            {
              v53 = emojiSectionDescriptors;
            }

            v54 = dataCopy;
            v39 = v53;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v54;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 8;
          }

          else if ([v30 isEqualToString:@"Unity"])
          {

            unitySectionDescriptors = [(ATXFaceSuggestionParameters *)v84 unitySectionDescriptors];
            v56 = unitySectionDescriptors;
            v57 = MEMORY[0x277CBEBF8];
            if (unitySectionDescriptors)
            {
              v57 = unitySectionDescriptors;
            }

            v58 = dataCopy;
            v39 = v57;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v58;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 9;
          }

          else if ([v30 isEqualToString:@"Pride"])
          {

            prideSectionDescriptors = [(ATXFaceSuggestionParameters *)v84 prideSectionDescriptors];
            v60 = prideSectionDescriptors;
            v61 = MEMORY[0x277CBEBF8];
            if (prideSectionDescriptors)
            {
              v61 = prideSectionDescriptors;
            }

            v62 = dataCopy;
            v39 = v61;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v62;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 10;
          }

          else if ([v30 isEqualToString:@"OSVersion"])
          {

            osVersionSectionDescriptors = [(ATXFaceSuggestionParameters *)v84 osVersionSectionDescriptors];
            v64 = osVersionSectionDescriptors;
            v65 = MEMORY[0x277CBEBF8];
            if (osVersionSectionDescriptors)
            {
              v65 = osVersionSectionDescriptors;
            }

            v66 = dataCopy;
            v39 = v65;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v66;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 11;
          }

          else if ([v30 isEqualToString:@"Collections"])
          {

            collectionsSectionDescriptors = [(ATXFaceSuggestionParameters *)v84 collectionsSectionDescriptors];
            v68 = collectionsSectionDescriptors;
            v69 = MEMORY[0x277CBEBF8];
            if (collectionsSectionDescriptors)
            {
              v69 = collectionsSectionDescriptors;
            }

            v70 = dataCopy;
            v39 = v69;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v70;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 12;
          }

          else
          {
            if (([v30 isEqualToString:@"Color"] & 1) == 0)
            {
              if ([v30 isEqualToString:@"SpatialPhotos"])
              {

                _generatedFocusSection = [(ATXFaceGalleryLayoutGenerator *)self _generatedSpatialPhotosSectionWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
                goto LABEL_26;
              }

              goto LABEL_18;
            }

            colorSectionDescriptors = [(ATXFaceSuggestionParameters *)v84 colorSectionDescriptors];
            v72 = colorSectionDescriptors;
            v73 = MEMORY[0x277CBEBF8];
            if (colorSectionDescriptors)
            {
              v73 = colorSectionDescriptors;
            }

            v74 = dataCopy;
            v39 = v73;

            self = selfCopy;
            v40 = selfCopy;
            v41 = v74;
            v43 = idCopy;
            v42 = launchDataCopy;
            v44 = v39;
            v45 = v84;
            v46 = 13;
          }

          v75 = [(ATXFaceGalleryLayoutGenerator *)v40 _generateSectionWithWidgetDescriptorsAdditionalData:v41 aggregatedAppLaunchData:v42 bundleIdToCompanionBundleId:v43 assetDescriptors:v44 otherParameters:v45 semanticType:v46, v82];

          if (v75)
          {
            [v10 addObject:v75];
          }

          dataCopy = v82;
        }

LABEL_21:
        ++v29;
      }

      while (v27 != v29);
      v76 = [v25 countByEnumeratingWithState:&v88 objects:v92 count:16];
      v27 = v76;
    }

    while (v76);
  }

  v77 = objc_alloc(MEMORY[0x277CEB518]);
  v78 = [v10 copy];
  v79 = [v77 initWithSections:v78 source:1 locale:self->_locale dayZero:self->_dayZero];

  v80 = *MEMORY[0x277D85DE8];

  return v79;
}

- (void)_processDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  hiddenRegions = [(ATXFaceSuggestionParameters *)self->_parameters hiddenRegions];
  allowedDescriptorsForRegions = [(ATXFaceSuggestionParameters *)self->_parameters allowedDescriptorsForRegions];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __53__ATXFaceGalleryLayoutGenerator__processDescriptors___block_invoke;
  v24 = &unk_2785A1518;
  selfCopy = self;
  v26 = hiddenRegions;
  v27 = allowedDescriptorsForRegions;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = allowedDescriptorsForRegions;
  v14 = hiddenRegions;
  [descriptorsCopy enumerateKeysAndObjectsUsingBlock:&v21];

  v15 = [v12 copy];
  allHeroDescriptors = self->_allHeroDescriptors;
  self->_allHeroDescriptors = v15;

  v17 = [v11 copy];
  allNonHeroDescriptors = self->_allNonHeroDescriptors;
  self->_allNonHeroDescriptors = v17;

  v19 = [v10 copy];
  nonHeroDescriptorsByExtensionBundleId = self->_nonHeroDescriptorsByExtensionBundleId;
  self->_nonHeroDescriptorsByExtensionBundleId = v19;
}

void __53__ATXFaceGalleryLayoutGenerator__processDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 72) countryCode];
  if (!v7)
  {
    goto LABEL_42;
  }

  v8 = v7;
  v9 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v10 = [*(*(a1 + 32) + 72) countryCode];
  v11 = [v9 containsObject:v10];

  if (!v11)
  {
LABEL_42:
    if ([v5 isEqualToString:@"com.apple.WatchFacesWallpaperSupport.KaleidoscopePoster"])
    {
      v12 = MGGetStringAnswer();
      if (([v12 isEqualToString:@"iPad7, 5"]& 1) != 0 || [v12 isEqualToString:@"iPad7, 6"])
      {
        v13 = __atxlog_handle_lock_screen();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
LABEL_11:

          goto LABEL_39;
        }

        *buf = 136315650;
        v52 = "[ATXFaceGalleryLayoutGenerator _processDescriptors:]_block_invoke";
        v53 = 2112;
        v54 = v5;
        v55 = 2112;
        v56 = v12;
        v14 = "%s: disallowing extensionBundleId %@ for product type: %@";
        v15 = v13;
LABEL_10:
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
        goto LABEL_11;
      }
    }

    v43 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v42 = v6;
    obj = v6;
    v16 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (!v16)
    {
      goto LABEL_38;
    }

    v17 = v16;
    v45 = 0;
    v46 = *v48;
LABEL_15:
    v18 = 0;
    while (1)
    {
      if (*v48 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v47 + 1) + 8 * v18);
      v20 = [*(*(a1 + 32) + 72) countryCode];
      if (v20)
      {
        v21 = v20;
        [*(a1 + 48) objectForKeyedSubscript:v5];
        v23 = v22 = v5;
        v24 = [*(*(a1 + 32) + 72) countryCode];
        v25 = [v23 objectForKeyedSubscript:v24];

        v5 = v22;
        if (v25)
        {
          v26 = [*(a1 + 48) objectForKeyedSubscript:v22];
          v27 = [*(*(a1 + 32) + 72) countryCode];
          v28 = [v26 objectForKeyedSubscript:v27];
          v29 = [v19 identifier];
          v30 = [v28 containsObject:v29];

          v31 = __atxlog_handle_lock_screen();
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          v5 = v22;
          if ((v30 & 1) == 0)
          {
            if (v32)
            {
              v37 = [v19 identifier];
              v38 = [*(*(a1 + 32) + 72) countryCode];
              *buf = 136315906;
              v52 = "[ATXFaceGalleryLayoutGenerator _processDescriptors:]_block_invoke";
              v53 = 2112;
              v54 = v22;
              v55 = 2112;
              v56 = v37;
              v57 = 2112;
              v58 = v38;
              _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "%s: hiding extensionBundleId %@ descriptorId: %@ in restricted locale: %@ because it's not on allow list.", buf, 0x2Au);
            }

            goto LABEL_36;
          }

          if (v32)
          {
            v33 = [v19 identifier];
            v34 = [*(*(a1 + 32) + 72) countryCode];
            *buf = 136315906;
            v52 = "[ATXFaceGalleryLayoutGenerator _processDescriptors:]_block_invoke";
            v53 = 2112;
            v54 = v22;
            v55 = 2112;
            v56 = v33;
            v57 = 2112;
            v58 = v34;
            _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "%s: Accepting extensionBundleId %@ descriptorId: %@ in restricted locale: %@ because it is on allow list.", buf, 0x2Au);
          }
        }
      }

      v35 = [v19 galleryOptions];
      v36 = [v35 isHero];

      if (v36)
      {
        if ((v45 & 1) != 0 && !isPhotosPosterExtensionBundleId(v5))
        {
          v39 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v52 = "[ATXFaceGalleryLayoutGenerator _processDescriptors:]_block_invoke";
            v53 = 2112;
            v54 = v5;
            _os_log_error_impl(&dword_2263AA000, v39, OS_LOG_TYPE_ERROR, "%s: provider %@ has provided more than one hero descriptor!", buf, 0x16u);
          }
        }

        else
        {
          [*(a1 + 56) addObject:v19];
        }

        v45 = 1;
      }

      else
      {
        [v43 addObject:v19];
      }

LABEL_36:
      if (v17 == ++v18)
      {
        v17 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (!v17)
        {
LABEL_38:

          v12 = v43;
          [*(a1 + 64) addObjectsFromArray:v43];
          v40 = [v43 copy];
          [*(a1 + 72) setObject:v40 forKeyedSubscript:v5];

          v6 = v42;
          goto LABEL_39;
        }

        goto LABEL_15;
      }
    }
  }

  v12 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(*(a1 + 32) + 72) countryCode];
    *buf = 136315650;
    v52 = "[ATXFaceGalleryLayoutGenerator _processDescriptors:]_block_invoke";
    v53 = 2112;
    v54 = v5;
    v55 = 2112;
    v56 = v13;
    v14 = "%s: hiding extensionBundleId %@ in restricted locale: %@";
    v15 = v12;
    goto LABEL_10;
  }

LABEL_39:

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_generatedHeroSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id heroSectionOrder:(id)order
{
  v95 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  orderCopy = order;
  v12 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(NSArray *)self->_allHeroDescriptors count];
    *buf = 136315394;
    v92 = "[ATXFaceGalleryLayoutGenerator _generatedHeroSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:heroSectionOrder:]";
    v93 = 2048;
    v94 = v13;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s: %lu hero descriptors", buf, 0x16u);
  }

  v71 = orderCopy;
  v68 = dataCopy;

  v14 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  selfCopy = self;
  v15 = self->_allHeroDescriptors;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (!v16)
  {
    v74 = 0;
    v75 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_29;
  }

  v17 = v16;
  v74 = 0;
  v75 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *v85;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v85 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v84 + 1) + 8 * i);
      if (isPhotosDescriptor(v22))
      {
        identifier = [v22 identifier];
        v24 = [identifier hasPrefix:@"CreateAFacePhotos"];

        if (v24)
        {
          extensionBundleIdentifier = v19;
          v19 = v22;
          goto LABEL_25;
        }
      }

      else
      {
      }

      v26 = v22;
      if (isPhotosDescriptor(v26))
      {
        identifier2 = [v26 identifier];
        v28 = [identifier2 hasPrefix:@"CreateAFacePeople"];

        if (v28)
        {
          extensionBundleIdentifier = v18;
          v18 = v26;
          goto LABEL_25;
        }
      }

      else
      {
      }

      v29 = v26;
      if (isPhotosDescriptor(v29))
      {
        identifier3 = [v29 identifier];
        v31 = [identifier3 hasPrefix:@"CreateAFaceShuffle"];

        if (v31)
        {
          extensionBundleIdentifier = v74;
          v74 = v29;
          goto LABEL_25;
        }
      }

      else
      {
      }

      v32 = v29;
      if (isPhotosDescriptor(v32))
      {
        identifier4 = [v32 identifier];
        v34 = [identifier4 hasPrefix:@"CreateAFaceLivePhoto"];

        if (v34)
        {
          extensionBundleIdentifier = v75;
          v75 = v32;
          goto LABEL_25;
        }
      }

      else
      {
      }

      extensionBundleIdentifier = [v32 extensionBundleIdentifier];
      [v14 setObject:v32 forKeyedSubscript:extensionBundleIdentifier];
LABEL_25:
    }

    v17 = [(NSArray *)v15 countByEnumeratingWithState:&v84 objects:v90 count:16];
  }

  while (v17);
LABEL_29:
  v73 = v14;

  v35 = objc_opt_new();
  if (![v71 count])
  {
    v36 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [(ATXFaceGalleryLayoutGenerator *)v36 _generatedHeroSectionWithWidgetDescriptorsAdditionalData:v37 aggregatedAppLaunchData:v38 bundleIdToCompanionBundleId:v39 heroSectionOrder:v40, v41, v42, v43];
    }
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v44 = v71;
  v45 = [v44 countByEnumeratingWithState:&v80 objects:v89 count:16];
  v46 = v74;
  v72 = v44;
  if (v45)
  {
    v47 = v45;
    v48 = *v81;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v81 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = *(*(&v80 + 1) + 8 * j);
        if (v19 && [*(*(&v80 + 1) + 8 * j) isEqualToString:@"Photos"])
        {
          v51 = v35;
          v52 = v19;
LABEL_50:
          [v51 addObject:v52];
          continue;
        }

        if (v18 && [v50 isEqualToString:@"People"])
        {
          v51 = v35;
          v52 = v18;
          goto LABEL_50;
        }

        if (v46 && [v50 isEqualToString:@"Shuffle"])
        {
          v51 = v35;
          v52 = v46;
          goto LABEL_50;
        }

        if (v75 && [v50 isEqualToString:@"LivePhoto"])
        {
          v51 = v35;
          v52 = v75;
          goto LABEL_50;
        }

        v53 = [v73 objectForKeyedSubscript:v50];
        if (v53)
        {
          [v35 addObject:v53];
          [v73 removeObjectForKey:v50];
        }

        else
        {
          v54 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v92 = "[ATXFaceGalleryLayoutGenerator _generatedHeroSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:heroSectionOrder:]";
            v93 = 2112;
            v94 = v50;
            _os_log_error_impl(&dword_2263AA000, v54, OS_LOG_TYPE_ERROR, "%s: could not find extensionBundleId defined in hero section order: %@", buf, 0x16u);
          }
        }

        v46 = v74;
        v44 = v72;
      }

      v47 = [v44 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v47);
  }

  allValues = [v73 allValues];
  if ([allValues count])
  {
    v56 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      [ATXFaceGalleryLayoutGenerator _generatedHeroSectionWithWidgetDescriptorsAdditionalData:v73 aggregatedAppLaunchData:v56 bundleIdToCompanionBundleId:? heroSectionOrder:?];
    }

    [v35 addObjectsFromArray:allValues];
  }

  v57 = [v35 copy];
  v58 = [(ATXFaceGalleryLayoutGenerator *)selfCopy _itemsFromDescriptors:v57 widgetDescriptorsAdditionalData:v68 aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy shouldShowDisplayName:1 shouldShowComplications:0 limit:0];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v59 = v58;
  v60 = [v59 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v77;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v77 != v62)
        {
          objc_enumerationMutation(v59);
        }

        [*(*(&v76 + 1) + 8 * k) setSource:1];
      }

      v61 = [v59 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v61);
  }

  v64 = [objc_alloc(MEMORY[0x277CEB528]) initWithLocalizedTitle:0 symbolImageName:0 symbolColorName:0 localizedSubtitle:0 localizedDescriptiveText:0 unityDescription:0 type:3 items:v59 semanticType:4];
  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

- (id)_generatedFeaturedSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v57 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  if (self->_dayZero)
  {
    dayZeroFeaturedDescriptors = [(ATXFaceSuggestionParameters *)self->_parameters dayZeroFeaturedDescriptors];
    if ([dayZeroFeaturedDescriptors count] > 5)
    {
      goto LABEL_7;
    }

    rankedFeaturedDescriptors = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(rankedFeaturedDescriptors, OS_LOG_TYPE_FAULT))
    {
      [ATXFaceGalleryLayoutGenerator _generatedFeaturedSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:];
    }
  }

  else
  {
    rankedFeaturedDescriptors = [(ATXFaceGalleryLayoutGenerator *)self rankedFeaturedDescriptors];
    v13 = [objc_opt_class() _descriptorsByDeduplicatingExtensionsInDescriptors:rankedFeaturedDescriptors];
    dayZeroFeaturedDescriptors = [(ATXFaceGalleryLayoutGenerator *)self putPhotoShuffleAndSpatialSceneInTheTopPositions:v13];
  }

LABEL_7:
  v14 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v54 = "[ATXFaceGalleryLayoutGenerator _generatedFeaturedSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:]";
    v55 = 2112;
    v56 = dayZeroFeaturedDescriptors;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: ranked descriptors for featured section: %@", buf, 0x16u);
  }

  v38 = dayZeroFeaturedDescriptors;
  v39 = idCopy;
  if (dayZeroFeaturedDescriptors)
  {
    v15 = dayZeroFeaturedDescriptors;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v40 = launchDataCopy;
  v41 = dataCopy;
  [(ATXFaceGalleryLayoutGenerator *)self _itemsFromDescriptors:v15 widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy shouldShowDisplayName:1 shouldShowComplications:1 limit:&unk_283A57A70];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v16 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        [v20 setSource:2];
        osVersionSectionDescriptors = [(ATXFaceSuggestionParameters *)self->_parameters osVersionSectionDescriptors];
        v22 = osVersionSectionDescriptors;
        v23 = MEMORY[0x277CBEBF8];
        if (osVersionSectionDescriptors)
        {
          v23 = osVersionSectionDescriptors;
        }

        v24 = v23;

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v44;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v44 != v28)
              {
                objc_enumerationMutation(v25);
              }

              if ([(ATXFaceGalleryLayoutGenerator *)self isDescriptorFromGalleryItem:v20 availableInAssetParameter:*(*(&v43 + 1) + 8 * j)])
              {
                _localizedTitleforOSVersionSection = [(ATXFaceGalleryLayoutGenerator *)self _localizedTitleforOSVersionSection];
                [v20 setLocalizedDisplayName:_localizedTitleforOSVersionSection];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v27);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v17);
  }

  if ([MEMORY[0x277D42590] isiPad])
  {
    v31 = 1;
  }

  else
  {
    v31 = 4;
  }

  v32 = objc_alloc(MEMORY[0x277CEB528]);
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_FEATURED_FACES" value:&stru_2839A6058 table:0];
  v35 = [v32 initWithLocalizedTitle:v34 symbolImageName:0 symbolColorName:0 localizedSubtitle:0 localizedDescriptiveText:0 unityDescription:0 type:v31 items:obj semanticType:1];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)putPhotoShuffleAndSpatialSceneInTheTopPositions:(id)positions
{
  positionsCopy = positions;
  if ([positionsCopy count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    if ([positionsCopy count])
    {
      v7 = 0;
      do
      {
        if ([v4 count] >= 2 && objc_msgSend(v5, "count") >= 2)
        {
          break;
        }

        v8 = [positionsCopy objectAtIndexedSubscript:v7];
        if ([v4 count] > 1 || (v9 = isSpatialPhotosDescriptor(v8), v10 = v4, (v9 & 1) == 0))
        {
          if ([v5 count] > 1)
          {
            continue;
          }

          v11 = isPhotoShuffleDescriptor(v8);
          v10 = v5;
          if (!v11)
          {
            continue;
          }
        }

        [v10 addObject:v8];
        [indexSet addIndex:v7];

        ++v7;
      }

      while (v7 < [positionsCopy count]);
    }

    if ([v4 count] || objc_msgSend(v5, "count"))
    {
      v12 = [positionsCopy mutableCopy];
      [v12 removeObjectsAtIndexes:indexSet];
      v13 = [v4 arrayByAddingObjectsFromArray:v5];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v13, "count")}];
      [v12 insertObjects:v13 atIndexes:v14];

      v15 = [v12 copy];
    }

    else
    {
      v15 = positionsCopy;
    }
  }

  else
  {
    v15 = positionsCopy;
  }

  return v15;
}

- (NSArray)rankedFeaturedDescriptors
{
  _candidateFeaturedDescriptors = [(ATXFaceGalleryLayoutGenerator *)self _candidateFeaturedDescriptors];
  v4 = [ATXFaceSuggestionScorer alloc];
  parameters = self->_parameters;
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:_candidateFeaturedDescriptors];
  v7 = [(ATXFaceSuggestionScorer *)v4 initWithParameters:parameters descriptors:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__ATXFaceGalleryLayoutGenerator_rankedFeaturedDescriptors__block_invoke;
  v12[3] = &unk_2785A1540;
  v13 = v7;
  v8 = v7;
  v9 = [_candidateFeaturedDescriptors _pas_mappedArrayWithTransform:v12];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_238];

  return v10;
}

id __58__ATXFaceGalleryLayoutGenerator_rankedFeaturedDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 copy];
  [*(a1 + 32) featuredScoreForDescriptor:v3];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v3 setScore:v4];

  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ATXFaceGalleryLayoutGenerator rankedFeaturedDescriptors]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: descriptor: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __58__ATXFaceGalleryLayoutGenerator_rankedFeaturedDescriptors__block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 score];
  v7 = [v4 score];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 identifier];
    v10 = [v5 identifier];
    v8 = [v9 compare:v10];

    if (!v8)
    {
      v11 = [v4 identifier];
      v12 = [v5 identifier];
      v8 = [v11 compare:v12];
    }
  }

  return v8;
}

- (id)_candidateFeaturedDescriptors
{
  v3 = objc_opt_new();
  allNonHeroDescriptors = self->_allNonHeroDescriptors;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ATXFaceGalleryLayoutGenerator__candidateFeaturedDescriptors__block_invoke;
  v8[3] = &unk_2785A1588;
  v8[4] = self;
  v9 = v3;
  v5 = v3;
  v6 = [(NSArray *)allNonHeroDescriptors _pas_filteredArrayWithTest:v8];

  return v6;
}

uint64_t __62__ATXFaceGalleryLayoutGenerator__candidateFeaturedDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _shouldExcludePhotosDescriptor:v3 appProtectionInfo:*(a1 + 40)])
  {
    goto LABEL_10;
  }

  v4 = [v3 galleryOptions];
  v5 = [v4 featuredConfidenceLevel];

  if (v5)
  {
    v6 = [v3 galleryOptions];
    v7 = [v6 isOnlyEligibleForMadeForFocusSection];

    if (!v7)
    {
      v13 = [*(*(a1 + 32) + 72) countryCode];
      if (v13)
      {
        v14 = v13;
        v15 = [*(*(a1 + 32) + 24) unpromotableRegions];
        v16 = [v3 extensionBundleIdentifier];
        v17 = [v15 objectForKeyedSubscript:v16];
        v18 = [*(*(a1 + 32) + 72) countryCode];
        v19 = [v17 containsObject:v18];

        if (v19)
        {
          v20 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [*(*(a1 + 32) + 72) countryCode];
            v26 = 136315394;
            v27 = "[ATXFaceGalleryLayoutGenerator _candidateFeaturedDescriptors]_block_invoke";
            v28 = 2112;
            v29 = v21;
            _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%s: not considering unpromotable descriptor in restricted locale: %@", &v26, 0x16u);
          }

          goto LABEL_10;
        }
      }

      v22 = [v3 extensionBundleIdentifier];
      v23 = [v22 isEqualToString:@"com.apple.weather.poster"];

      if (!v23 || ([MEMORY[0x277CEB3B8] isInstalledForBundle:@"com.apple.weather"] & 1) != 0)
      {
        v24 = *(a1 + 32);
        v25 = [v24[3] descriptorsToRemoveFromFeatured];
        LODWORD(v24) = [v24 shouldRemoveDescriptorFromFeatured:v3 withDescriptorsToRemove:v25];

        v10 = v24 ^ 1;
        goto LABEL_11;
      }

      v8 = __atxlog_handle_lock_screen();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v26 = 136315394;
      v27 = "[ATXFaceGalleryLayoutGenerator _candidateFeaturedDescriptors]_block_invoke";
      v28 = 2112;
      v29 = v3;
      v9 = "%s: not considering descriptor for featured section because weather app is not currently installed: %@";
      goto LABEL_8;
    }

    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = "[ATXFaceGalleryLayoutGenerator _candidateFeaturedDescriptors]_block_invoke";
      v28 = 2112;
      v29 = v3;
      v9 = "%s: not considering descriptor made only for focus for featured section: %@";
LABEL_8:
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, v9, &v26, 0x16u);
    }
  }

  else
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = "[ATXFaceGalleryLayoutGenerator _candidateFeaturedDescriptors]_block_invoke";
      v28 = 2112;
      v29 = v3;
      v9 = "%s: not considering unconfident descriptor for featured section: %@";
      goto LABEL_8;
    }
  }

LABEL_9:

LABEL_10:
  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_shouldExcludePhotosDescriptor:(id)descriptor appProtectionInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  infoCopy = info;
  if (isPhotosDescriptor(descriptorCopy) && [infoCopy bundleIdIsLockedOrHiddenByUserPreference:@"com.apple.mobileslideshow"])
  {
    v7 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[ATXFaceGalleryLayoutGenerator _shouldExcludePhotosDescriptor:appProtectionInfo:]";
      v13 = 2112;
      v14 = descriptorCopy;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: Photos app is locked. Skipping descriptor: %@", &v11, 0x16u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_descriptorsByDeduplicatingExtensionsInDescriptors:(id)descriptors
{
  v57 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v4 = objc_opt_new();
  v39 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = descriptorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        extensionBundleIdentifier = [v10 extensionBundleIdentifier];
        if ([extensionBundleIdentifier isEqualToString:@"com.apple.WatchFacesWallpaperSupport.Unity2025Poster"])
        {
          identifier = [v10 identifier];
          v13 = [identifier hasPrefix:@"unity"];

          if (v13)
          {
            v14 = v10;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v7);
  }

  v14 = 0;
LABEL_13:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  v16 = v39;
  if (!v15)
  {
    goto LABEL_38;
  }

  v17 = v15;
  v18 = *v44;
  v19 = @"com.apple.UnityPoster.UnityPosterExtension";
  v41 = v4;
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v44 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v43 + 1) + 8 * j);
      extensionBundleIdentifier2 = [v21 extensionBundleIdentifier];
      if (![v4 containsObject:extensionBundleIdentifier2])
      {

LABEL_24:
        extensionBundleIdentifier3 = [v21 extensionBundleIdentifier];
        if ([extensionBundleIdentifier3 isEqualToString:v19])
        {
          goto LABEL_29;
        }

        v26 = v19;
        v27 = v17;
        v28 = v18;
        v29 = v14;
        extensionBundleIdentifier4 = [v21 extensionBundleIdentifier];
        if ([extensionBundleIdentifier4 isEqualToString:@"com.apple.WatchFacesWallpaperSupport.ExtragalacticPoster"])
        {
          goto LABEL_28;
        }

        extensionBundleIdentifier5 = [v21 extensionBundleIdentifier];
        if ([extensionBundleIdentifier5 isEqualToString:@"com.apple.WatchFacesWallpaperSupport.RhizomePoster"])
        {

LABEL_28:
          v14 = v29;
          v18 = v28;
          v17 = v27;
          v19 = v26;
          v4 = v41;
LABEL_29:

LABEL_30:
          [v4 addObject:v19];
          [v4 addObject:@"com.apple.WatchFacesWallpaperSupport.ExtragalacticPoster"];
          [v4 addObject:@"com.apple.WatchFacesWallpaperSupport.RhizomePoster"];
          [v4 addObject:@"com.apple.WatchFacesWallpaperSupport.Unity2025Poster"];
          if (v14)
          {
            v32 = v16;
            v33 = v14;
LABEL_35:
            [v32 addObject:v33];
            continue;
          }
        }

        else
        {
          extensionBundleIdentifier6 = [v21 extensionBundleIdentifier];
          v40 = [extensionBundleIdentifier6 isEqualToString:@"com.apple.WatchFacesWallpaperSupport.Unity2025Poster"];

          v16 = v39;
          v14 = v29;
          v18 = v28;
          v17 = v27;
          v19 = v26;
          v4 = v41;
          if (v40)
          {
            goto LABEL_30;
          }

          extensionBundleIdentifier7 = [v21 extensionBundleIdentifier];
          [v41 addObject:extensionBundleIdentifier7];
        }

        v32 = v16;
        v33 = v21;
        goto LABEL_35;
      }

      v23 = isPhotosDescriptor(v21);

      if (v23)
      {
        goto LABEL_24;
      }

      v24 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v52 = "+[ATXFaceGalleryLayoutGenerator _descriptorsByDeduplicatingExtensionsInDescriptors:]";
        v53 = 2112;
        v54 = v21;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%s: skipping descriptor, extensionBundleId already used: %@", buf, 0x16u);
      }
    }

    v17 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  }

  while (v17);
LABEL_38:

  v36 = [v16 copy];
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_generatedPhotoShuffleSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  v11 = [(NSDictionary *)self->_nonHeroDescriptorsByExtensionBundleId objectForKeyedSubscript:@"com.apple.mobileslideshow.PhotosPosterProvider"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(NSDictionary *)self->_nonHeroDescriptorsByExtensionBundleId objectForKeyedSubscript:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  v14 = v13;

  v15 = [v14 _pas_filteredArrayWithTest:&__block_literal_global_101];
  if ([v15 count])
  {
    v16 = [v15 count];
    v17 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "[ATXFaceGalleryLayoutGenerator _generatedPhotoShuffleSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:]";
      v49 = 1024;
      v50 = v16 > 1;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "%s: shuffle should show display name: %{BOOL}d", buf, 0x12u);
    }

    v40 = launchDataCopy;
    v18 = [(ATXFaceGalleryLayoutGenerator *)self _itemsFromDescriptors:v15 widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy shouldShowDisplayName:v16 > 1 shouldShowComplications:0 limit:&unk_283A57A88];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v42 + 1) + 8 * i) setSource:4];
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v20);
    }

    v39 = v14;
    v41 = dataCopy;
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"FACE_GALLERY_SECTION_DESCRIPTIVE_TEXT_PHOTO_SHUFFLE" value:&stru_2839A6058 table:0];

    v25 = idCopy;
    if ([MEMORY[0x277D42590] isiPad])
    {
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"FACE_GALLERY_SECTION_DESCRIPTIVE_TEXT_PHOTO_SHUFFLE_IPAD" value:&stru_2839A6058 table:0];

      v24 = v27;
    }

    if (v16 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v24;
    }

    if (v16 <= 1)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    v30 = MEMORY[0x277CEB528];
    v31 = v24;
    v32 = [v30 alloc];
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_PHOTO_SHUFFLE" value:&stru_2839A6058 table:0];
    v35 = 1;
    if (v29)
    {
      v35 = 2;
    }

    v36 = [v32 initWithLocalizedTitle:v34 symbolImageName:0 symbolColorName:0 localizedSubtitle:v28 localizedDescriptiveText:v29 unityDescription:v29 type:v35 items:v18 semanticType:5];

    launchDataCopy = v40;
    dataCopy = v41;
    idCopy = v25;
    v14 = v39;
  }

  else
  {
    v29 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v48 = "[ATXFaceGalleryLayoutGenerator _generatedPhotoShuffleSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:]";
      _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%s: no photo shuffle descriptors available, not returning a photo shuffle section", buf, 0xCu);
    }

    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_generatedSpatialPhotosSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  v11 = [(NSDictionary *)self->_nonHeroDescriptorsByExtensionBundleId objectForKeyedSubscript:@"com.apple.mobileslideshow.PhotosPosterProvider"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(NSDictionary *)self->_nonHeroDescriptorsByExtensionBundleId objectForKeyedSubscript:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  v14 = v13;

  v15 = [v14 _pas_filteredArrayWithTest:&__block_literal_global_114];
  if ([v15 count])
  {
    v16 = [(ATXFaceGalleryLayoutGenerator *)self _itemsFromDescriptors:v15 widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy shouldShowDisplayName:0 shouldShowComplications:1 limit:&unk_283A57A88];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v27 + 1) + 8 * i) setSource:7];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    v21 = objc_alloc(MEMORY[0x277CEB528]);
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_SPATIAL_SCENES" value:&stru_2839A6058 table:0];
    v24 = [v21 initWithLocalizedTitle:v23 symbolImageName:0 symbolColorName:0 localizedSubtitle:0 localizedDescriptiveText:0 unityDescription:0 type:1 items:v16 semanticType:14];
  }

  else
  {
    v16 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[ATXFaceGalleryLayoutGenerator _generatedSpatialPhotosSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:]";
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%s: no spatial/3D photo descriptors available, not returning a spatial photo section", buf, 0xCu);
    }

    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_isFocusUser
{
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  v3 = [mEMORY[0x277CEB440] dndModeUUIDForDNDModeSemanticType:3];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = 4;
    do
    {
      v6 = v5;
      if (v5 == 9)
      {
        break;
      }

      v7 = [mEMORY[0x277CEB440] dndModeUUIDForDNDModeSemanticType:v5];

      v5 = v6 + 1;
    }

    while (!v7);
    v4 = (v6 - 1) < 8;
  }

  return v4;
}

- (id)_generatedFocusSection
{
  if ([(ATXFaceGalleryLayoutGenerator *)self _isFocusUser])
  {
    v3 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_allNonHeroDescriptors];
    v5 = [(ATXModeFaceSuggestionGenerator *)v3 generateFacesFromDescriptors:v4];

    if ([v5 count])
    {
      v6 = objc_alloc(MEMORY[0x277CEB528]);
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_FOCUS" value:&stru_2839A6058 table:0];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"FACE_GALLERY_SECTION_SUBTITLE_FOCUS" value:&stru_2839A6058 table:0];
      v11 = [v6 initWithLocalizedTitle:v8 symbolImageName:@"moon.fill" symbolColorName:@"systemIndigoColor" localizedSubtitle:v10 localizedDescriptiveText:0 unityDescription:0 type:1 items:v5 semanticType:3];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Not generating Made For Focus section because user is not a Focus user", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_generateSectionWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id assetDescriptors:(id)descriptors otherParameters:(id)parameters semanticType:(int64_t)type
{
  v78 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  descriptorsCopy = descriptors;
  parametersCopy = parameters;
  v16 = objc_opt_new();
  v54 = parametersCopy;
  if ([descriptorsCopy count])
  {
    v17 = [(ATXFaceGalleryLayoutGenerator *)self descriptorsToRemoveFromSectionWithSemanticType:type parameters:parametersCopy];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v53 = descriptorsCopy;
    obj = descriptorsCopy;
    v60 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v60)
    {
      v59 = *v72;
      do
      {
        v18 = 0;
        do
        {
          if (*v72 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v71 + 1) + 8 * v18);
          v62 = v18;
          if ([v19 containsString:@":"])
          {
            v20 = [v19 componentsSeparatedByString:@":"];
            firstObject = [v20 firstObject];

            v22 = [v19 componentsSeparatedByString:@":"];
            lastObject = [v22 lastObject];

            v19 = firstObject;
          }

          else
          {
            lastObject = &stru_2839A6058;
          }

          v61 = v19;
          v24 = [(NSDictionary *)self->_nonHeroDescriptorsByExtensionBundleId objectForKeyedSubscript:v19];
          v25 = [v24 _pas_filteredArrayWithTest:&__block_literal_global_136_0];

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v68;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v68 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v67 + 1) + 8 * i);
                if ([(ATXFaceGalleryLayoutGenerator *)self shouldAddDescriptorFromExtension:v31 descriptorIdentifierInAsset:lastObject withSemanticType:type assetParametersToFilterOut:v17])
                {
                  [v16 addObject:v31];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v67 objects:v76 count:16];
            }

            while (v28);
          }

          v18 = v62 + 1;
        }

        while (v62 + 1 != v60);
        v60 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v60);
    }

    v32 = [v16 copy];
    v33 = [(ATXFaceGalleryLayoutGenerator *)self _itemsFromDescriptors:v32 widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy shouldShowDisplayName:0 shouldShowComplications:1 limit:&unk_283A57A88];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v34 = v33;
    v35 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v64;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v63 + 1) + 8 * j) setSource:5];
        }

        v36 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v36);
    }

    v39 = objc_alloc(MEMORY[0x277CEB528]);
    v40 = [(ATXFaceGalleryLayoutGenerator *)self _localizedTitleTextWithSemanticType:type];
    v41 = [(ATXFaceGalleryLayoutGenerator *)self _localizedSubtitleTextWithSemanticType:type];
    v42 = [v39 initWithLocalizedTitle:v40 symbolImageName:0 symbolColorName:0 localizedSubtitle:v41 localizedDescriptiveText:0 unityDescription:0 type:1 items:v34 semanticType:type];

    v43 = v53;
  }

  else
  {
    v43 = descriptorsCopy;
    v17 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ATXFaceGalleryLayoutGenerator *)v17 _generateSectionWithWidgetDescriptorsAdditionalData:v44 aggregatedAppLaunchData:v45 bundleIdToCompanionBundleId:v46 assetDescriptors:v47 otherParameters:v48 semanticType:v49, v50];
    }

    v42 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v42;
}

uint64_t __183__ATXFaceGalleryLayoutGenerator__generateSectionWithWidgetDescriptorsAdditionalData_aggregatedAppLaunchData_bundleIdToCompanionBundleId_assetDescriptors_otherParameters_semanticType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 galleryOptions];
  v3 = [v2 isOnlyEligibleForMadeForFocusSection];

  return v3 ^ 1u;
}

- (id)_itemsFromDescriptors:(id)descriptors widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id shouldShowDisplayName:(BOOL)name shouldShowComplications:(BOOL)complications limit:(id)limit
{
  complicationsCopy = complications;
  nameCopy = name;
  v62 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  limitCopy = limit;
  v17 = [(ATXFaceGalleryLayoutGenerator *)self _shuffledSuggestableComplicationSetsWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
  v48 = launchDataCopy;
  v49 = dataCopy;
  v47 = idCopy;
  [(ATXFaceGalleryLayoutGeneratorComplicationProviding *)self->_complicationProvider landscapeModularSetsDictsWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy portraitSets:v17];
  v45 = v55 = self;
  v54 = [(ATXFaceGalleryLayoutGenerator *)self _landscapeSetsFromLandscapeSetsDict:?];
  v18 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = descriptorsCopy;
  v53 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v53)
  {
    v19 = 0;
    v51 = *v58;
    do
    {
      v20 = 0;
      do
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v57 + 1) + 8 * v20);
        v22 = complicationsCopy && [(ATXFaceGalleryLayoutGenerator *)v55 _descriptorIsEligibleForComplications:*(*(&v57 + 1) + 8 * v20)];
        if ([v17 count])
        {
          v23 = v19 % [v17 count];
        }

        else
        {
          v23 = 0;
        }

        if ([v54 count])
        {
          v24 = v19 % [v54 count];
          if (!v22)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v24 = 0;
          if (!v22)
          {
            goto LABEL_20;
          }
        }

        if (![v17 count])
        {
LABEL_20:
          v27 = 0;
LABEL_21:
          v28 = 0;
          goto LABEL_22;
        }

        galleryOptions = [v21 galleryOptions];
        if ([galleryOptions allowsSystemSuggestedComplications])
        {
          v26 = [v17 count];

          if (v26)
          {
            v27 = [v17 objectAtIndexedSubscript:v23];
            goto LABEL_28;
          }
        }

        else
        {
        }

        v27 = 0;
LABEL_28:
        extensionBundleIdentifier = [v21 extensionBundleIdentifier];
        if ([extensionBundleIdentifier isEqualToString:@"com.apple.GradientPoster.GradientPosterExtension"])
        {

LABEL_31:
          galleryOptions2 = [v21 galleryOptions];
          if (![galleryOptions2 allowsSystemSuggestedComplications])
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

        extensionBundleIdentifier2 = [v21 extensionBundleIdentifier];
        v36 = [extensionBundleIdentifier2 isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"];

        if (v36)
        {
          goto LABEL_31;
        }

        galleryOptions2 = [v21 galleryOptions];
        if (![galleryOptions2 allowsSystemSuggestedComplicationsInLandscape])
        {
LABEL_35:

          goto LABEL_21;
        }

LABEL_32:
        v38 = [v54 count];

        if (!v38)
        {
          goto LABEL_21;
        }

        v28 = [v54 objectAtIndexedSubscript:v24];
LABEL_22:
        v29 = [(ATXFaceGalleryLayoutGenerator *)v55 _itemFromDescriptor:v21 shouldShowDisplayName:nameCopy shouldShowComplications:complicationsCopy systemSuggestedComplicationSet:v27 systemSuggestedLandscapeComplicationSet:v28];
        [v18 addObject:v29];
        complications = [v29 complications];
        v31 = [complications count];

        landscapeComplications = [v29 landscapeComplications];
        v33 = v31 | [landscapeComplications count];

        if (v33)
        {
          ++v19;
        }

        ++v20;
      }

      while (v53 != v20);
      v39 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      v53 = v39;
    }

    while (v39);
  }

  if (limitCopy && (v40 = [limitCopy unsignedIntegerValue], v40 < objc_msgSend(v18, "count")))
  {
    v41 = [v18 subarrayWithRange:{0, objc_msgSend(limitCopy, "unsignedIntegerValue")}];
  }

  else
  {
    v41 = v18;
  }

  v42 = v41;

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)_itemFromDescriptor:(id)descriptor shouldShowDisplayName:(BOOL)name shouldShowComplications:(BOOL)complications systemSuggestedComplicationSet:(id)set systemSuggestedLandscapeComplicationSet:(id)complicationSet
{
  complicationsCopy = complications;
  nameCopy = name;
  descriptorCopy = descriptor;
  setCopy = set;
  complicationSetCopy = complicationSet;
  v39 = nameCopy;
  if (nameCopy)
  {
    v15 = MEMORY[0x277CEB3B0];
    extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
    v42 = [v15 localizedNameForExtensionBundleId:extensionBundleIdentifier];
  }

  else
  {
    v42 = 0;
  }

  v40 = complicationSetCopy;
  v41 = setCopy;
  if (complicationsCopy)
  {
    complications = [setCopy complications];
    v18 = [(ATXFaceGalleryLayoutGenerator *)self _modularComplicationsForDescriptor:descriptorCopy systemSuggestionComplications:complications];

    complications2 = [complicationSetCopy complications];
    v20 = [(ATXFaceGalleryLayoutGenerator *)self _modularLandscapeComplicationsForDescriptor:descriptorCopy systemSuggestionComplications:complications2];

    v21 = [(ATXFaceGalleryLayoutGenerator *)self _inlineComplicationForDescriptor:descriptorCopy];
  }

  else
  {
    v21 = 0;
    v18 = 0;
    v20 = 0;
  }

  v22 = objc_alloc(MEMORY[0x277CEB520]);
  v23 = objc_opt_new();
  uUIDString = [v23 UUIDString];
  identifier = [descriptorCopy identifier];
  extensionBundleIdentifier2 = [descriptorCopy extensionBundleIdentifier];
  v27 = [MEMORY[0x277CF0BC8] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v28 = [v22 initWithIdentifier:uUIDString descriptorIdentifier:identifier extensionBundleIdentifier:extensionBundleIdentifier2 localizedDisplayName:v42 modeSemanticType:0 titleFontName:&stru_2839A6058 titleColor:v27 subtitleComplication:v21 layoutType:0 complications:v18 landscapeComplications:v20];

  [v28 setSource:5];
  if (v39)
  {
    galleryOptions = [descriptorCopy galleryOptions];
    displayNameLocalizationKey = [galleryOptions displayNameLocalizationKey];
    [v28 setDisplayNameLocalizationKey:displayNameLocalizationKey];
  }

  else
  {
    [v28 setDisplayNameLocalizationKey:0];
  }

  galleryOptions2 = [descriptorCopy galleryOptions];
  spokenNameLocalizationKey = [galleryOptions2 spokenNameLocalizationKey];
  [v28 setSpokenNameLocalizationKey:spokenNameLocalizationKey];

  galleryOptions3 = [descriptorCopy galleryOptions];
  descriptiveTextLocalizationKey = [galleryOptions3 descriptiveTextLocalizationKey];
  [v28 setDescriptiveTextLocalizationKey:descriptiveTextLocalizationKey];

  score = [descriptorCopy score];
  [v28 setScore:score];

  galleryOptions4 = [descriptorCopy galleryOptions];
  [v28 setBlankTemplate:{objc_msgSend(galleryOptions4, "isHero")}];

  galleryOptions5 = [descriptorCopy galleryOptions];
  [v28 setShouldShowAsShuffleStack:{objc_msgSend(galleryOptions5, "shouldShowAsShuffleStack")}];

  return v28;
}

- (id)_inlineComplicationForDescriptor:(id)descriptor
{
  v20 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  if ([(ATXComplicationSuggestionParameters *)self->_complicationParameters showPreviewsInPosterGallery])
  {
    galleryOptions = [descriptorCopy galleryOptions];
    inlineComplication = [galleryOptions inlineComplication];

    if (inlineComplication)
    {
      galleryOptions2 = [descriptorCopy galleryOptions];
      inlineComplication2 = [galleryOptions2 inlineComplication];
      v9 = [(ATXFaceGalleryLayoutGenerator *)self _complicationExistsOnSystem:inlineComplication2];

      if (v9)
      {
        galleryOptions3 = [descriptorCopy galleryOptions];
        inlineComplication3 = [galleryOptions3 inlineComplication];
        v12 = [inlineComplication3 copy];

        [v12 setSource:5];
        goto LABEL_9;
      }

      v13 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        galleryOptions4 = [descriptorCopy galleryOptions];
        inlineComplication4 = [galleryOptions4 inlineComplication];
        v18 = 138412290;
        v19 = inlineComplication4;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Not showing complication since no matching chrono descriptor exists on system: %@", &v18, 0xCu);
      }
    }
  }

  v12 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_modularComplicationsForDescriptor:(id)descriptor systemSuggestionComplications:(id)complications
{
  descriptorCopy = descriptor;
  complicationsCopy = complications;
  if ([(ATXComplicationSuggestionParameters *)self->_complicationParameters showPreviewsInPosterGallery])
  {
    galleryOptions = [descriptorCopy galleryOptions];
    modularComplications = [galleryOptions modularComplications];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__ATXFaceGalleryLayoutGenerator__modularComplicationsForDescriptor_systemSuggestionComplications___block_invoke;
    v15[3] = &unk_2785A15D0;
    v15[4] = self;
    v10 = [modularComplications _pas_mappedArrayWithTransform:v15];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = complicationsCopy;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __98__ATXFaceGalleryLayoutGenerator__modularComplicationsForDescriptor_systemSuggestionComplications___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _complicationExistsOnSystem:v3])
  {
    v4 = [v3 copy];
    [v4 setSource:5];
  }

  else
  {
    v5 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Not showing preferred complication since no matching chrono descriptor exists on system: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_modularLandscapeComplicationsForDescriptor:(id)descriptor systemSuggestionComplications:(id)complications
{
  descriptorCopy = descriptor;
  complicationsCopy = complications;
  if (-[ATXComplicationSuggestionParameters showPreviewsInPosterGallery](self->_complicationParameters, "showPreviewsInPosterGallery") && [MEMORY[0x277D42590] isiPad])
  {
    galleryOptions = [descriptorCopy galleryOptions];
    modularLandscapeComplications = [galleryOptions modularLandscapeComplications];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __107__ATXFaceGalleryLayoutGenerator__modularLandscapeComplicationsForDescriptor_systemSuggestionComplications___block_invoke;
    v15[3] = &unk_2785A15D0;
    v15[4] = self;
    v10 = [modularLandscapeComplications _pas_mappedArrayWithTransform:v15];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = complicationsCopy;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __107__ATXFaceGalleryLayoutGenerator__modularLandscapeComplicationsForDescriptor_systemSuggestionComplications___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _complicationExistsOnSystem:v3])
  {
    v4 = [v3 copy];
    [v4 setSource:5];
  }

  else
  {
    v5 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Not showing preferred landscape complication since no matching chrono descriptor exists on system: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_complicationExistsOnSystem:(id)system
{
  systemCopy = system;
  allWidgetDescriptorsAllowedOnLockscreen = [(ATXFaceGalleryLayoutGeneratorComplicationDescriptorProviding *)self->_complicationDescriptorProvider allWidgetDescriptorsAllowedOnLockscreen];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ATXFaceGalleryLayoutGenerator__complicationExistsOnSystem___block_invoke;
  v9[3] = &unk_2785A15F8;
  v10 = systemCopy;
  v6 = systemCopy;
  v7 = [allWidgetDescriptorsAllowedOnLockscreen bs_containsObjectPassingTest:v9];

  return v7;
}

uint64_t __61__ATXFaceGalleryLayoutGenerator__complicationExistsOnSystem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionBundleIdentifier];
  v5 = [*(a1 + 32) extensionBundleIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 kind];
    v7 = [*(a1 + 32) kind];
    if ([v6 isEqualToString:v7])
    {
      [v3 supportedFamilies];
      [*(a1 + 32) widgetFamily];
      v8 = CHSWidgetFamilyMaskContainsFamily();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_shuffledSuggestableComplicationSetsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(ATXFaceGalleryLayoutGeneratorComplicationProviding *)self->_complicationProvider modularSetsWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy, 0];
  v13 = [v12 _pas_shuffledArrayUsingRng:0];

  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v11 addObject:*(*(&v21 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v18 = [v11 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_landscapeSetsFromLandscapeSetsDict:(id)dict
{
  v63 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v54 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v4 = dictCopy;
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v57 = *v59;
    v55 = *MEMORY[0x277CEB1E8];
    v56 = *MEMORY[0x277CEB1F0];
    v8 = *MEMORY[0x277CEB1E0];
    v53 = v4;
    do
    {
      v9 = 0;
      v52 = v7;
      do
      {
        if (*v59 != v57)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v58 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:v56];
        complications = [v11 complications];

        v13 = [v10 objectForKeyedSubscript:v55];
        complications2 = [v13 complications];

        v15 = [v10 objectForKeyedSubscript:v8];
        complications3 = [v15 complications];

        if ([complications count] == 2 && objc_msgSend(complications2, "count") == 2 && objc_msgSend(complications3, "count") == 4)
        {
          v17 = objc_opt_new();
          if (v7 > 1)
          {
            if (v7 != 2)
            {
              if (v7 != 3)
              {
                goto LABEL_21;
              }

              v26 = [complications objectAtIndexedSubscript:0];
              [v17 addObject:v26];

              v27 = [complications objectAtIndexedSubscript:1];
              [v17 addObject:v27];

              v28 = [complications3 objectAtIndexedSubscript:0];
              [v17 addObject:v28];

              v29 = [complications3 objectAtIndexedSubscript:1];
              [v17 addObject:v29];

              v30 = [complications3 objectAtIndexedSubscript:2];
              [v17 addObject:v30];

              v31 = [complications3 objectAtIndexedSubscript:3];
              [v17 addObject:v31];

              v32 = complications2;
              v33 = 0;
              goto LABEL_17;
            }

            v42 = [complications3 objectAtIndexedSubscript:0];
            [v17 addObject:v42];

            v43 = [complications3 objectAtIndexedSubscript:1];
            [v17 addObject:v43];

            v44 = [complications2 objectAtIndexedSubscript:0];
            [v17 addObject:v44];

            v45 = [complications objectAtIndexedSubscript:0];
            [v17 addObject:v45];

            v46 = [complications3 objectAtIndexedSubscript:2];
            [v17 addObject:v46];

            v47 = [complications3 objectAtIndexedSubscript:3];
            [v17 addObject:v47];

            v24 = complications2;
            v25 = 1;
LABEL_19:
            v40 = [v24 objectAtIndexedSubscript:v25];
            v41 = complications;
          }

          else
          {
            if (v7)
            {
              if (v7 == 1)
              {
                v18 = [complications3 objectAtIndexedSubscript:0];
                [v17 addObject:v18];

                v19 = [complications3 objectAtIndexedSubscript:1];
                [v17 addObject:v19];

                v20 = [complications3 objectAtIndexedSubscript:2];
                [v17 addObject:v20];

                v21 = [complications3 objectAtIndexedSubscript:3];
                [v17 addObject:v21];

                v22 = [complications2 objectAtIndexedSubscript:0];
                [v17 addObject:v22];

                v23 = [complications2 objectAtIndexedSubscript:1];
                [v17 addObject:v23];

                v24 = complications;
                v25 = 0;
                goto LABEL_19;
              }

LABEL_21:
              v49 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v17];
              [v54 addObject:v49];

              v4 = v53;
              goto LABEL_22;
            }

            v34 = [complications3 objectAtIndexedSubscript:0];
            [v17 addObject:v34];

            v35 = [complications3 objectAtIndexedSubscript:1];
            [v17 addObject:v35];

            v36 = [complications objectAtIndexedSubscript:0];
            [v17 addObject:v36];

            v37 = [complications3 objectAtIndexedSubscript:2];
            [v17 addObject:v37];

            v38 = [complications3 objectAtIndexedSubscript:3];
            [v17 addObject:v38];

            v39 = [complications2 objectAtIndexedSubscript:0];
            [v17 addObject:v39];

            v32 = complications;
            v33 = 1;
LABEL_17:
            v40 = [v32 objectAtIndexedSubscript:v33];
            v41 = complications2;
          }

          [v17 addObject:v40];

          v48 = [v41 objectAtIndexedSubscript:1];
          [v17 addObject:v48];

          goto LABEL_21;
        }

LABEL_22:
        ++v7;

        ++v9;
      }

      while (v6 != v9);
      v7 = v52 + v6;
      v6 = [v4 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v6);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v54;
}

- (BOOL)_descriptorIsEligibleForComplications:(id)complications
{
  parameters = self->_parameters;
  complicationsCopy = complications;
  extensionBundleIdsEligibleForComplicationsInFaceGallery = [(ATXFaceSuggestionParameters *)parameters extensionBundleIdsEligibleForComplicationsInFaceGallery];
  extensionBundleIdentifier = [complicationsCopy extensionBundleIdentifier];

  LOBYTE(complicationsCopy) = [extensionBundleIdsEligibleForComplicationsInFaceGallery containsObject:extensionBundleIdentifier];
  return complicationsCopy;
}

- (id)_localizedTitleForWeatherAndAstronomySection
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_WEATHER_AND_ASTRONOMY" value:&stru_2839A6058 table:0];

  if (([MEMORY[0x277CEB3B8] isInstalledForBundle:@"com.apple.weather"] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_ASTRONOMY_ONLY" value:&stru_2839A6058 table:0];

    v3 = v5;
  }

  return v3;
}

- (id)_localizedTitleforOSVersionSection
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_IOS_VERSION" value:&stru_2839A6058 table:0];

  if ([MEMORY[0x277D42590] isiPad])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_IPADOS_VERSION" value:&stru_2839A6058 table:0];

    v3 = v5;
  }

  return v3;
}

- (id)_localizedTitleTextWithSemanticType:(int64_t)type
{
  v3 = &stru_2839A6058;
  if (type > 9)
  {
    if (type > 11)
    {
      if (type == 12)
      {
        v4 = MEMORY[0x277CEB3B0];
        v5 = @"com.apple.WallpaperKit.CollectionsPoster";
      }

      else
      {
        if (type != 13)
        {
          goto LABEL_20;
        }

        v4 = MEMORY[0x277CEB3B0];
        v5 = @"com.apple.GradientPoster.GradientPosterExtension";
      }

      goto LABEL_18;
    }

    if (type == 10)
    {
      v4 = MEMORY[0x277CEB3B0];
      v5 = @"com.apple.PridePoster.PridePosterExtension";
LABEL_18:
      _localizedTitleforOSVersionSection = [v4 localizedNameForExtensionBundleId:v5];
      goto LABEL_19;
    }

    _localizedTitleforOSVersionSection = [(ATXFaceGalleryLayoutGenerator *)self _localizedTitleforOSVersionSection];
  }

  else
  {
    if (type > 7)
    {
      if (type != 8)
      {
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v3 = [v7 localizedStringForKey:@"FACE_GALLERY_SECTION_TITLE_UNITY" value:&stru_2839A6058 table:0];

        goto LABEL_20;
      }

      v4 = MEMORY[0x277CEB3B0];
      v5 = @"com.apple.EmojiPoster.EmojiPosterExtension";
      goto LABEL_18;
    }

    if (type != 6)
    {
      if (type != 7)
      {
        goto LABEL_20;
      }

      v4 = MEMORY[0x277CEB3B0];
      v5 = @"com.apple.WatchFacesWallpaperSupport.KaleidoscopePoster";
      goto LABEL_18;
    }

    _localizedTitleforOSVersionSection = [(ATXFaceGalleryLayoutGenerator *)self _localizedTitleForWeatherAndAstronomySection];
  }

LABEL_19:
  v3 = _localizedTitleforOSVersionSection;
LABEL_20:

  return v3;
}

- (id)_localizedSubtitleTextWithSemanticType:(int64_t)type
{
  v3 = type - 6;
  if (type - 6) <= 5 && ((0x39u >> v3))
  {
    v4 = off_2785A1618[v3];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_2839A6058 table:0];
  }

  else
  {
    v6 = &stru_2839A6058;
  }

  return v6;
}

- (BOOL)shouldAddDescriptorFromExtension:(id)extension descriptorIdentifierInAsset:(id)asset withSemanticType:(int64_t)type assetParametersToFilterOut:(id)out
{
  v30 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  assetCopy = asset;
  outCopy = out;
  v13 = outCopy;
  if (type > 10)
  {
    if (type != 11)
    {
      if (type == 12)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = outCopy;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([(ATXFaceGalleryLayoutGenerator *)self isDescriptor:extensionCopy availableInAssetParameter:*(*(&v25 + 1) + 8 * i), v25])
              {

                goto LABEL_22;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (type == 6)
    {
      extensionBundleIdentifier = [extensionCopy extensionBundleIdentifier];
      v22 = [extensionBundleIdentifier isEqualToString:@"com.apple.weather.poster"];

      if (v22 && ([MEMORY[0x277CEB3B8] isInstalledForBundle:@"com.apple.weather"] & 1) == 0)
      {
LABEL_22:
        v20 = 0;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (type != 9 || ![assetCopy length])
    {
LABEL_20:
      v20 = 1;
      goto LABEL_23;
    }
  }

  identifier = [extensionCopy identifier];
  v20 = [identifier hasPrefix:assetCopy];

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)descriptorsToRemoveFromSectionWithSemanticType:(int64_t)type parameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (type == 12)
  {
    descriptorsToRemoveFromCollections = [parametersCopy descriptorsToRemoveFromCollections];
    v8 = descriptorsToRemoveFromCollections;
    v9 = MEMORY[0x277CBEBF8];
    if (descriptorsToRemoveFromCollections)
    {
      v10 = descriptorsToRemoveFromCollections;
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = v10;

    osVersionSectionDescriptors = [v6 osVersionSectionDescriptors];
    v13 = osVersionSectionDescriptors;
    if (osVersionSectionDescriptors)
    {
      v14 = osVersionSectionDescriptors;
    }

    else
    {
      v14 = v9;
    }

    v15 = v14;

    v16 = [MEMORY[0x277CBEB58] setWithArray:v11];
    v17 = [MEMORY[0x277CBEB98] setWithArray:v15];

    [v16 unionSet:v17];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  return v16;
}

- (BOOL)isDescriptorFromGalleryItem:(id)item availableInAssetParameter:(id)parameter
{
  itemCopy = item;
  parameterCopy = parameter;
  extensionBundleIdentifier = [itemCopy extensionBundleIdentifier];
  v8 = [parameterCopy componentsSeparatedByString:@":"];
  firstObject = [v8 firstObject];
  if ([extensionBundleIdentifier isEqualToString:firstObject])
  {
    descriptorIdentifier = [itemCopy descriptorIdentifier];
    v11 = [parameterCopy componentsSeparatedByString:@":"];
    lastObject = [v11 lastObject];
    v13 = [descriptorIdentifier hasPrefix:lastObject];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isDescriptor:(id)descriptor availableInAssetParameter:(id)parameter
{
  descriptorCopy = descriptor;
  parameterCopy = parameter;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  v8 = [parameterCopy componentsSeparatedByString:@":"];
  firstObject = [v8 firstObject];
  if ([extensionBundleIdentifier isEqualToString:firstObject])
  {
    identifier = [descriptorCopy identifier];
    v11 = [parameterCopy componentsSeparatedByString:@":"];
    lastObject = [v11 lastObject];
    v13 = [identifier hasPrefix:lastObject];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldRemoveDescriptorFromFeatured:(id)featured withDescriptorsToRemove:(id)remove
{
  v20 = *MEMORY[0x277D85DE8];
  featuredCopy = featured;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  removeCopy = remove;
  v8 = [removeCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(removeCopy);
        }

        if ([(ATXFaceGalleryLayoutGenerator *)self isDescriptor:featuredCopy availableInAssetParameter:*(*(&v15 + 1) + 8 * i), v15])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [removeCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)generatedConfigurationWithWidgetDescriptorsAdditionalData:(uint64_t)a3 aggregatedAppLaunchData:(uint64_t)a4 bundleIdToCompanionBundleId:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: no section order provided in asset parameters, or asset parameters missing!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_generatedHeroSectionWithWidgetDescriptorsAdditionalData:(uint64_t)a3 aggregatedAppLaunchData:(uint64_t)a4 bundleIdToCompanionBundleId:(uint64_t)a5 heroSectionOrder:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: no hero section order provided in asset parameters, or asset parameters missing!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_generatedHeroSectionWithWidgetDescriptorsAdditionalData:(void *)a1 aggregatedAppLaunchData:(NSObject *)a2 bundleIdToCompanionBundleId:heroSectionOrder:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 allKeys];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: missing descriptors from hero section order: %@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_generatedFeaturedSectionWithWidgetDescriptorsAdditionalData:aggregatedAppLaunchData:bundleIdToCompanionBundleId:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "%s: not enough day zero descriptors were provided: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_generateSectionWithWidgetDescriptorsAdditionalData:(uint64_t)a3 aggregatedAppLaunchData:(uint64_t)a4 bundleIdToCompanionBundleId:(uint64_t)a5 assetDescriptors:(uint64_t)a6 otherParameters:(uint64_t)a7 semanticType:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: No descriptors provided in asset parameters, or asset parameters missing!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end