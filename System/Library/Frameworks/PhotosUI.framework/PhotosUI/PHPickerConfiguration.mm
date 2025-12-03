@interface PHPickerConfiguration
- (BOOL)isEqual:(id)equal;
- (PHPickerConfiguration)initWithCoder:(id)coder;
- (PHPickerConfiguration)initWithPhotoLibrary:(PHPhotoLibrary *)photoLibrary;
- (PHPickerConfiguration)initWithPhotoLibraryAndOnlyForOpenPanel:(id)panel;
- (PHPickerConfiguration)initWithPhotoLibraryAndOnlyReturnsIdentifiers:(id)identifiers;
- (id)_initWithPhotoLibrary:(id)library onlyReturnsIdentifiers:(BOOL)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setAllowsContinuousSelection:(BOOL)selection;
- (void)encodeWithCoder:(id)coder;
- (void)setPreselectedAssetIdentifiers:(NSArray *)preselectedAssetIdentifiers;
@end

@implementation PHPickerConfiguration

- (void)setPreselectedAssetIdentifiers:(NSArray *)preselectedAssetIdentifiers
{
  v4 = [(NSArray *)preselectedAssetIdentifiers copy];
  [(PHPickerConfiguration *)self setPreselectedItemIdentifiers:v4];
}

- (id)_initWithPhotoLibrary:(id)library onlyReturnsIdentifiers:(BOOL)identifiers
{
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = PHPickerConfiguration;
  v8 = [(PHPickerConfiguration *)&v17 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  if (([(PHPickerConfiguration *)v8 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    objc_storeStrong(&v8->_photoLibrary, library);
    v8->_preferredAssetRepresentationMode = 0;
    v8->_selectionLimit = 1;
    v8->_minimumSelectionLimit = 0x7FFFFFFFFFFFFFFFLL;
    preselectedItemIdentifiers = v8->_preselectedItemIdentifiers;
    v8->_preselectedItemIdentifiers = MEMORY[0x1E695E0F0];

    v8->__onlyReturnsIdentifiers = identifiers;
    v8->__allowsEncodingPolicyModification = 1;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8->__onboardingOverlayDismissedBefore = [standardUserDefaults BOOLForKey:@"com.apple.photos.picker.overlay"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8->__onboardingHeaderDismissedBefore = [standardUserDefaults2 BOOLForKey:@"com.apple.photos.picker.header"];

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8->__limitedLibraryHeaderDismissedBefore = [standardUserDefaults3 BOOLForKey:@"com.apple.photos.picker.limitedlibrary.header"];

LABEL_4:
    return v8;
  }

  v14 = _PFAssertFailHandler();
  [(PHPickerConfiguration *)v14 encodeWithCoder:v15, v16];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  preferredAssetRepresentationMode = self->_preferredAssetRepresentationMode;
  coderCopy = coder;
  [coderCopy encodeInteger:preferredAssetRepresentationMode forKey:@"PHPickerConfigurationCoderAssetRepresentationModeKey"];
  [coderCopy encodeInteger:self->_selection forKey:@"PHPickerConfigurationCoderSelectionKey"];
  [coderCopy encodeInteger:self->_selectionLimit forKey:@"PHPickerConfigurationCoderSelectionLimitKey"];
  [coderCopy encodeInteger:self->_minimumSelectionLimit forKey:@"PHPickerConfigurationCoderMinimumSelectionLimitKey"];
  _puPickerFilter = [(PHPickerFilter *)self->_filter _puPickerFilter];
  [coderCopy encodeObject:_puPickerFilter forKey:@"PHPickerConfigurationCoderFilterKey"];

  [coderCopy encodeObject:self->__aspectRatio forKey:@"PHPickerConfigurationCoderAspectRatioKey"];
  [coderCopy encodeObject:self->_preselectedItemIdentifiers forKey:@"PHPickerConfigurationCoderPreselectedItemIdentifiersKey"];
  [coderCopy encodeInteger:self->_mode forKey:@"PHPickerConfigurationCoderModeKey"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_edgesWithoutContentMargins];
  [coderCopy encodeObject:v6 forKey:@"PHPickerConfigurationCoderEdgesWithoutContentMarginsKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_disabledCapabilities];
  [coderCopy encodeObject:v7 forKey:@"PHPickerConfigurationCoderDisabledCapabilitiesKey"];

  [coderCopy encodeObject:self->_prompt forKey:@"PHPickerConfigurationCoderPromptKey"];
  [coderCopy encodeObject:self->_title forKey:@"PHPickerConfigurationCoderTitleKey"];
  photoLibraryURL = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
  [coderCopy encodeObject:photoLibraryURL forKey:@"PHPickerConfigurationCoderPhotoLibraryURLKey"];

  [coderCopy encodeBool:self->__onlyReturnsIdentifiers forKey:@"PHPickerConfigurationCoderOnlyReturnsIdentifiersKey"];
  [coderCopy encodeBool:self->__allowsDownscaling forKey:@"PHPickerConfigurationCoderAllowsDownscalingKey"];
  [coderCopy encodeBool:self->__allowsEncodingPolicyModification forKey:@"PHPickerConfigurationAllowsEncodingPolicyModificationKey"];
  [coderCopy encodeBool:self->__usesOpenPanelLayout forKey:@"PHPickerConfigurationCoderUsesOpenPanelLayoutKey"];
  [coderCopy encodeBool:self->__usesMemoriesLayout forKey:@"PHPickerConfigurationCoderUsesMemoriesLayoutKey"];
  [coderCopy encodeObject:self->__suggestionGroup forKey:@"PHPickerConfigurationCoderSuggestionGroupKey"];
  [coderCopy encodeObject:self->__searchText forKey:@"PHPickerConfigurationCoderSearchTextKey"];
  [coderCopy encodeObject:self->__albumsConfiguration forKey:@"PHPickerConfigurationCoderAlbumsConfigurationKey"];
  [coderCopy encodeObject:self->__peopleConfiguration forKey:@"PHPickerConfigurationCoderPeopleConfigurationKey"];
  [coderCopy encodeBool:self->__alwaysShowLoadingPlaceholder forKey:@"PHPickerConfigurationCoderAlwaysShowLoadingPlaceholderKey"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->__disabledPrivateCapabilities];
  [coderCopy encodeObject:v9 forKey:@"PHPickerConfigurationCoderDisabledPrivateCapabilitiesKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->__primaryButtonType];
  [coderCopy encodeObject:v10 forKey:@"PHPickerConfigurationCoderPrimaryButtonTypeKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->__secondaryButtonType];
  [coderCopy encodeObject:v11 forKey:@"PHPickerConfigurationCoderSecondaryButtonTypeKey"];

  [coderCopy encodeInteger:self->__sourceType forKey:@"PHPickerConfigurationCoderSourceTypeKey"];
  [coderCopy encodeObject:self->__containerIdentifier forKey:@"PHPickerConfigurationCoderContainerIdentifierKey"];
  [coderCopy encodeObject:self->__purposedLimitedLibraryApplicationIdentifier forKey:@"PHPickerConfigurationCoderPurposedLimitedLibraryApplicationIdentifierKey"];
  [coderCopy encodeBool:self->__onboardingOverlayDismissedBefore forKey:@"PHPickerConfigurationCoderOnboardingOverlayDismissedBeforeKey"];
  [coderCopy encodeBool:self->__onboardingHeaderDismissedBefore forKey:@"PHPickerConfigurationCoderOnboardingHeaderDismissedBeforeKey"];
  [coderCopy encodeBool:self->__limitedLibraryHeaderDismissedBefore forKey:@"PHPickerConfigurationCoderLimitedLibraryHeaderDismissedBeforeKey"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->__excludedCollections];
  [coderCopy encodeObject:v12 forKey:@"PHPickerConfigurationCoderExcludedCollectionsKey"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->__desiredCollectionSuggestions];
  [coderCopy encodeObject:v13 forKey:@"PHPickerConfigurationCoderDesiredCollectionSuggestionsKey"];

  [coderCopy encodeObject:self->__sharedAlbumSheetConfiguration forKey:@"PHPickerConfigurationCoderSharedAlbumSheetConfigKey"];
}

- (PHPickerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = PHPickerConfiguration;
  v5 = [(PHPickerConfiguration *)&v44 init];
  if (v5)
  {
    v5->_preferredAssetRepresentationMode = [coderCopy decodeIntegerForKey:@"PHPickerConfigurationCoderAssetRepresentationModeKey"];
    v5->_selection = [coderCopy decodeIntegerForKey:@"PHPickerConfigurationCoderSelectionKey"];
    v5->_selectionLimit = [coderCopy decodeIntegerForKey:@"PHPickerConfigurationCoderSelectionLimitKey"];
    v5->_minimumSelectionLimit = [coderCopy decodeIntegerForKey:@"PHPickerConfigurationCoderMinimumSelectionLimitKey"];
    v6 = PUPickerFilterAvailableClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"PHPickerConfigurationCoderFilterKey"];

    if (v7)
    {
      v8 = [[PHPickerFilter alloc] _initWithPUPickerFilter:v7];
      filter = v5->_filter;
      v5->_filter = v8;
    }

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderPreselectedItemIdentifiersKey"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_preselectedItemIdentifiers, v12);

    v5->_mode = [coderCopy decodeIntegerForKey:@"PHPickerConfigurationCoderModeKey"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderEdgesWithoutContentMarginsKey"];
    v5->_edgesWithoutContentMargins = [v13 unsignedIntegerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderDisabledCapabilitiesKey"];
    v5->_disabledCapabilities = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderPromptKey"];
    prompt = v5->_prompt;
    v5->_prompt = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderTitleKey"];
    title = v5->_title;
    v5->_title = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderPhotoLibraryURLKey"];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E69789A8]) initWithPhotoLibraryURL:v19];
      photoLibrary = v5->_photoLibrary;
      v5->_photoLibrary = v20;
    }

    v5->__onlyReturnsIdentifiers = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderOnlyReturnsIdentifiersKey"];
    v5->__allowsDownscaling = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderAllowsDownscalingKey"];
    v5->__allowsEncodingPolicyModification = [coderCopy decodeBoolForKey:@"PHPickerConfigurationAllowsEncodingPolicyModificationKey"];
    v5->__usesOpenPanelLayout = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderUsesOpenPanelLayoutKey"];
    v5->__usesMemoriesLayout = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderUsesMemoriesLayoutKey"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderAspectRatioKey"];
    aspectRatio = v5->__aspectRatio;
    v5->__aspectRatio = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderSuggestionGroupKey"];
    suggestionGroup = v5->__suggestionGroup;
    v5->__suggestionGroup = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderSearchTextKey"];
    searchText = v5->__searchText;
    v5->__searchText = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderAlbumsConfigurationKey"];
    albumsConfiguration = v5->__albumsConfiguration;
    v5->__albumsConfiguration = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderPeopleConfigurationKey"];
    peopleConfiguration = v5->__peopleConfiguration;
    v5->__peopleConfiguration = v30;

    v5->__alwaysShowLoadingPlaceholder = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderAlwaysShowLoadingPlaceholderKey"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderDisabledPrivateCapabilitiesKey"];
    v5->__disabledPrivateCapabilities = [v32 unsignedIntegerValue];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderPrimaryButtonTypeKey"];
    v5->__primaryButtonType = [v33 unsignedIntegerValue];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderSecondaryButtonTypeKey"];
    v5->__secondaryButtonType = [v34 unsignedIntegerValue];

    v5->__sourceType = [coderCopy decodeIntegerForKey:@"PHPickerConfigurationCoderSourceTypeKey"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderContainerIdentifierKey"];
    containerIdentifier = v5->__containerIdentifier;
    v5->__containerIdentifier = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderPurposedLimitedLibraryApplicationIdentifierKey"];
    purposedLimitedLibraryApplicationIdentifier = v5->__purposedLimitedLibraryApplicationIdentifier;
    v5->__purposedLimitedLibraryApplicationIdentifier = v37;

    v5->__onboardingOverlayDismissedBefore = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderOnboardingOverlayDismissedBeforeKey"];
    v5->__onboardingHeaderDismissedBefore = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderOnboardingHeaderDismissedBeforeKey"];
    v5->__limitedLibraryHeaderDismissedBefore = [coderCopy decodeBoolForKey:@"PHPickerConfigurationCoderLimitedLibraryHeaderDismissedBeforeKey"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderExcludedCollectionsKey"];
    v5->__excludedCollections = [v39 unsignedIntegerValue];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderDesiredCollectionSuggestionsKey"];
    v5->__desiredCollectionSuggestions = [v40 unsignedIntegerValue];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerConfigurationCoderSharedAlbumSheetConfigKey"];
    sharedAlbumSheetConfiguration = v5->__sharedAlbumSheetConfiguration;
    v5->__sharedAlbumSheetConfiguration = v41;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PHPickerConfiguration alloc] _initWithPhotoLibrary:self->_photoLibrary onlyReturnsIdentifiers:self->__onlyReturnsIdentifiers];
  objc_storeStrong(v4 + 12, self->_photoLibrary);
  v4[3] = self->_preferredAssetRepresentationMode;
  v4[4] = self->_selection;
  v4[5] = self->_selectionLimit;
  v4[15] = self->_minimumSelectionLimit;
  v5 = [(PHPickerFilter *)self->_filter copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSArray *)self->_preselectedItemIdentifiers copy];
  v8 = v4[24];
  v4[24] = v7;

  v4[7] = self->_mode;
  objc_storeStrong(v4 + 20, self->__aspectRatio);
  v4[8] = self->_edgesWithoutContentMargins;
  v4[9] = self->_disabledCapabilities;
  objc_storeStrong(v4 + 22, self->_prompt);
  objc_storeStrong(v4 + 23, self->_title);
  *(v4 + 15) = self->__allowsDownscaling;
  *(v4 + 16) = self->__allowsEncodingPolicyModification;
  v9 = [(_PHPickerSuggestionGroup *)self->__suggestionGroup copy];
  v10 = v4[13];
  v4[13] = v9;

  v11 = [(NSString *)self->__searchText copy];
  v12 = v4[14];
  v4[14] = v11;

  v13 = [(_PHPickerCollectionConfiguration *)self->__albumsConfiguration copy];
  v14 = v4[25];
  v4[25] = v13;

  v15 = [(_PHPickerCollectionConfiguration *)self->__peopleConfiguration copy];
  v16 = v4[26];
  v4[26] = v15;

  *(v4 + 14) = self->__alwaysShowLoadingPlaceholder;
  v4[18] = self->__disabledPrivateCapabilities;
  v4[16] = self->__primaryButtonType;
  v4[17] = self->__secondaryButtonType;
  v4[19] = self->__sourceType;
  v17 = [(NSString *)self->__containerIdentifier copy];
  v18 = v4[21];
  v4[21] = v17;

  v19 = [(NSString *)self->__purposedLimitedLibraryApplicationIdentifier copy];
  v20 = v4[11];
  v4[11] = v19;

  *(v4 + 8) = self->__onboardingOverlayDismissedBefore;
  *(v4 + 9) = self->__onboardingHeaderDismissedBefore;
  *(v4 + 10) = self->__limitedLibraryHeaderDismissedBefore;
  *(v4 + 11) = self->__onlyReturnsIdentifiers;
  *(v4 + 12) = self->__usesOpenPanelLayout;
  *(v4 + 13) = self->__usesMemoriesLayout;
  v4[27] = self->__excludedCollections;
  v4[28] = self->__desiredCollectionSuggestions;
  objc_storeStrong(v4 + 10, self->__sharedAlbumSheetConfiguration);
  return v4;
}

- (PHPickerConfiguration)initWithPhotoLibraryAndOnlyForOpenPanel:(id)panel
{
  panelCopy = panel;
  if (panelCopy || ([MEMORY[0x1E69789A8] imagePickerPhotoLibrary], (panelCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = panelCopy;
    v6 = [(PHPickerConfiguration *)self _initWithPhotoLibrary:panelCopy onlyReturnsIdentifiers:0];
    v6[2].i64[0] = 3;
    v6[4] = vdupq_n_s64(0xFuLL);
    v6->i8[12] = 1;

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(PHPickerConfiguration *)v8 _allowsContinuousSelection];
  }
}

- (void)_setAllowsContinuousSelection:(BOOL)selection
{
  selection = self->_selection;
  if (selection > 1)
  {
    if (selection == 2)
    {
      if (selection)
      {
        return;
      }

      v4 = 0;
      goto LABEL_14;
    }

    if (selection == 3 && !selection)
    {
      v4 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    if (!selection)
    {
      if (!selection)
      {
        return;
      }

      v4 = 2;
      goto LABEL_14;
    }

    if (selection == 1 && selection)
    {
      v4 = 3;
LABEL_14:
      self->_selection = v4;
    }
  }
}

- (PHPickerConfiguration)initWithPhotoLibraryAndOnlyReturnsIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v5 = identifiersCopy;
    v6 = [(PHPickerConfiguration *)self _initWithPhotoLibrary:identifiersCopy onlyReturnsIdentifiers:1];

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(PHPickerConfiguration *)v8 hash];
  }
}

- (unint64_t)hash
{
  v3 = [(PHPhotoLibrary *)self->_photoLibrary hash];
  v4 = self->_preferredAssetRepresentationMode - v3 + 32 * v3;
  v5 = self->_selection - v4 + 32 * v4;
  v6 = self->_selectionLimit - v5 + 32 * v5;
  v7 = self->_minimumSelectionLimit - v6 + 32 * v6;
  v8 = [(PHPickerFilter *)self->_filter hash]- v7 + 32 * v7;
  v9 = [(NSArray *)self->_preselectedItemIdentifiers hash];
  v10 = self->_mode - (v9 - v8 + 32 * v8) + 32 * (v9 - v8 + 32 * v8);
  v11 = self->_edgesWithoutContentMargins - v10 + 32 * v10;
  v12 = self->_disabledCapabilities - v11 + 32 * v11;
  v13 = [(NSString *)self->_prompt hash]- v12 + 32 * v12;
  v14 = [(NSString *)self->_title hash];
  v15 = self->__onlyReturnsIdentifiers - (v14 - v13 + 32 * v13) + 32 * (v14 - v13 + 32 * v13);
  v16 = self->__allowsDownscaling - v15 + 32 * v15;
  v17 = self->__allowsEncodingPolicyModification - v16 + 32 * v16;
  v18 = self->__usesOpenPanelLayout - v17 + 32 * v17;
  v19 = self->__usesMemoriesLayout - v18 + 32 * v18;
  v20 = [(_PHPickerSuggestionGroup *)self->__suggestionGroup hash]- v19 + 32 * v19;
  v21 = [(NSString *)self->__searchText hash]- v20 + 32 * v20;
  v22 = [(_PHPickerCollectionConfiguration *)self->__albumsConfiguration hash]- v21 + 32 * v21;
  v23 = [(_PHPickerCollectionConfiguration *)self->__peopleConfiguration hash];
  v24 = self->__alwaysShowLoadingPlaceholder - (v23 - v22 + 32 * v22) + 32 * (v23 - v22 + 32 * v22);
  v25 = self->__disabledPrivateCapabilities - v24 + 32 * v24;
  v26 = self->__primaryButtonType - v25 + 32 * v25;
  v27 = self->__secondaryButtonType - v26 + 32 * v26;
  v28 = self->__sourceType - v27 + 32 * v27;
  v29 = [(NSString *)self->__containerIdentifier hash]- v28 + 32 * v28;
  v30 = [(NSString *)self->__purposedLimitedLibraryApplicationIdentifier hash];
  v31 = self->__onboardingOverlayDismissedBefore - (v30 - v29 + 32 * v29) + 32 * (v30 - v29 + 32 * v29);
  v32 = self->__onboardingHeaderDismissedBefore - v31 + 32 * v31;
  v33 = self->__limitedLibraryHeaderDismissedBefore - v32 + 32 * v32;
  v34 = self->__excludedCollections - v33 + 32 * v33;
  v35 = self->__desiredCollectionSuggestions - v34 + 32 * v34;
  return [(_PHPickerShareAlbumSheetConfiguration *)self->__sharedAlbumSheetConfiguration hash]- v35 + 32 * v35 + 0x44B813EF66D8BFC1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = 0x1E83F6000;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = objc_opt_class();
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          photoLibrary = v6->_photoLibrary;
          v9 = self->_photoLibrary;
          v10 = v9;
          if (v9 == photoLibrary)
          {
          }

          else
          {
            v11 = [(PHPhotoLibrary *)v9 isEqual:photoLibrary];

            if (!v11)
            {
              goto LABEL_72;
            }
          }

          if (self->_preferredAssetRepresentationMode != v6->_preferredAssetRepresentationMode || self->_selection != v6->_selection || self->_selectionLimit != v6->_selectionLimit || self->_minimumSelectionLimit != v6->_minimumSelectionLimit)
          {
            goto LABEL_72;
          }

          filter = v6->_filter;
          v14 = self->_filter;
          v15 = v14;
          if (v14 == filter)
          {
          }

          else
          {
            v16 = [(PHPickerFilter *)v14 isEqual:filter];

            if (!v16)
            {
              goto LABEL_72;
            }
          }

          preselectedItemIdentifiers = v6->_preselectedItemIdentifiers;
          v18 = self->_preselectedItemIdentifiers;
          v19 = v18;
          if (v18 == preselectedItemIdentifiers)
          {
          }

          else
          {
            v20 = [(NSArray *)v18 isEqual:preselectedItemIdentifiers];

            if (!v20)
            {
              goto LABEL_72;
            }
          }

          if (self->_mode != v6->_mode || self->_edgesWithoutContentMargins != v6->_edgesWithoutContentMargins || self->_disabledCapabilities != v6->_disabledCapabilities || self->_prompt != v6->_prompt || self->_title != v6->_title || self->__onlyReturnsIdentifiers != v6->__onlyReturnsIdentifiers || self->__allowsDownscaling != v6->__allowsDownscaling || self->__allowsEncodingPolicyModification != v6->__allowsEncodingPolicyModification || self->__usesOpenPanelLayout != v6->__usesOpenPanelLayout || self->__usesMemoriesLayout != v6->__usesMemoriesLayout || self->__alwaysShowLoadingPlaceholder != v6->__alwaysShowLoadingPlaceholder || self->__disabledPrivateCapabilities != v6->__disabledPrivateCapabilities || self->__primaryButtonType != v6->__primaryButtonType || self->__secondaryButtonType != v6->__secondaryButtonType || self->__sourceType != v6->__sourceType)
          {
            goto LABEL_72;
          }

          suggestionGroup = v6->__suggestionGroup;
          v22 = self->__suggestionGroup;
          v5 = v22;
          if (v22 != suggestionGroup)
          {
            v23 = [(_PHPickerSuggestionGroup *)v22 isEqual:suggestionGroup];

            if (!v23)
            {
              goto LABEL_72;
            }

            goto LABEL_45;
          }

LABEL_44:

LABEL_45:
          searchText = v6->__searchText;
          v27 = self->__searchText;
          v28 = v27;
          if (v27 == searchText)
          {
          }

          else
          {
            v29 = [(NSString *)v27 isEqual:searchText];

            if (!v29)
            {
              goto LABEL_72;
            }
          }

          albumsConfiguration = v6->__albumsConfiguration;
          v31 = self->__albumsConfiguration;
          v32 = v31;
          if (v31 == albumsConfiguration)
          {
          }

          else
          {
            v33 = [(_PHPickerCollectionConfiguration *)v31 isEqual:albumsConfiguration];

            if (!v33)
            {
              goto LABEL_72;
            }
          }

          peopleConfiguration = v6->__peopleConfiguration;
          v35 = self->__peopleConfiguration;
          v36 = v35;
          if (v35 == peopleConfiguration)
          {
          }

          else
          {
            v37 = [(_PHPickerCollectionConfiguration *)v35 isEqual:peopleConfiguration];

            if (!v37)
            {
              goto LABEL_72;
            }
          }

          containerIdentifier = v6->__containerIdentifier;
          v39 = self->__containerIdentifier;
          v40 = v39;
          if (v39 == containerIdentifier)
          {
          }

          else
          {
            v41 = [(NSString *)v39 isEqual:containerIdentifier];

            if (!v41)
            {
              goto LABEL_72;
            }
          }

          purposedLimitedLibraryApplicationIdentifier = v6->__purposedLimitedLibraryApplicationIdentifier;
          v43 = self->__purposedLimitedLibraryApplicationIdentifier;
          v44 = v43;
          if (v43 == purposedLimitedLibraryApplicationIdentifier)
          {
          }

          else
          {
            v45 = [(NSString *)v43 isEqual:purposedLimitedLibraryApplicationIdentifier];

            if (!v45)
            {
              goto LABEL_72;
            }
          }

          if (self->__onboardingOverlayDismissedBefore == v6->__onboardingOverlayDismissedBefore && self->__onboardingHeaderDismissedBefore == v6->__onboardingHeaderDismissedBefore && self->__limitedLibraryHeaderDismissedBefore == v6->__limitedLibraryHeaderDismissedBefore && self->__excludedCollections == v6->__excludedCollections && self->__desiredCollectionSuggestions == v6->__desiredCollectionSuggestions)
          {
            sharedAlbumSheetConfiguration = self->__sharedAlbumSheetConfiguration;
            v47 = v6->__sharedAlbumSheetConfiguration;
            v48 = sharedAlbumSheetConfiguration;
            v49 = v48;
            if (v48 == v47)
            {
              v12 = 1;
            }

            else
            {
              v12 = [(_PHPickerShareAlbumSheetConfiguration *)v48 isEqual:v47];
            }

            goto LABEL_73;
          }

LABEL_72:
          v12 = 0;
LABEL_73:

          goto LABEL_74;
        }

        v24 = objc_opt_class();
        equalCopy = NSStringFromClass(v24);
        v25 = objc_opt_class();
        NSStringFromClass(v25);
        objc_claimAutoreleasedReturnValue();
      }

      else
      {
        NSStringFromClass(v7);
        objc_claimAutoreleasedReturnValue();
      }

      _PFAssertFailHandler();
      goto LABEL_44;
    }

    v12 = 0;
  }

LABEL_74:

  return v12;
}

- (PHPickerConfiguration)initWithPhotoLibrary:(PHPhotoLibrary *)photoLibrary
{
  v4 = photoLibrary;
  if (v4)
  {
    v5 = v4;
    v6 = [(PHPickerConfiguration *)self _initWithPhotoLibrary:v4 onlyReturnsIdentifiers:0];

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return +[(PHPickerConfiguration *)v8];
  }
}

@end