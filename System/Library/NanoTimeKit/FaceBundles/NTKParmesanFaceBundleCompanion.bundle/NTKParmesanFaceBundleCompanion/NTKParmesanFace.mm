@interface NTKParmesanFace
+ (BOOL)externalAssetsAreValid:(id)valid;
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_slotsForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_timePigmentFaceDomain;
+ (id)additionalPigmentFaceDomains;
+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device;
+ (id)upgradeManagerWithFace:(id)face forDevice:(id)device;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (BOOL)_sanitizeFaceConfiguration:(id *)configuration;
- (BOOL)applyConfiguration:(id)configuration;
- (BOOL)isValidConfigurationToAddToLibrary;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_createDynamicContentDirectoryFromReader:(id)reader;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_resourceDirectorySnapshotKey;
- (id)_selectDefaultPigmentForStyle:(id)style;
- (id)_storedPlaceholderName;
- (id)addFaceDetailViewController;
- (id)companionGalleryName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)curatedGalleryBackgroundColors;
- (id)editOptionsThatHideEditModes;
- (id)galleryName;
- (id)libraryDetailViewController;
- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)mode;
- (id)trackedPhotosContent;
- (int64_t)_selectedStyleOption;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfDynamicSections;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_commonInit;
- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_reportAdditionalAddedToLibraryMetrics;
- (void)_reportAdditionalDailyConfigurationMetrics;
- (void)_startStreamingAssetsFromReader:(id)reader updateBlock:(id)block completionBlock:(id)completionBlock;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)applyDefaultConfiguration;
- (void)companionEditorWithAssets:(id)assets completion:(id)completion;
- (void)prepareForSharing;
@end

@implementation NTKParmesanFace

- (id)libraryDetailViewController
{
  v3 = [NTKCParmesanFaceDetailViewController alloc];
  v6 = objc_msgSend_initWithLibraryFace_(v3, v4, self, v5);

  return v6;
}

- (id)addFaceDetailViewController
{
  v3 = [NTKCParmesanFaceDetailViewController alloc];
  v7 = objc_msgSend_externalAssets(self, v4, v5, v6);
  v9 = objc_msgSend_initWithCandidateFace_externalAssets_(v3, v8, self, v7);

  return v9;
}

+ (BOOL)externalAssetsAreValid:(id)valid
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  validCopy = valid;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(validCopy, v4, &v17, v21, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(validCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0 || objc_msgSend_sourceType(v9, v10, v11, v12, v17) != 2)
        {
          objc_opt_class();
          if ((isKindOfClass | objc_opt_isKindOfClass()))
          {
            continue;
          }
        }

        v15 = 0;
        goto LABEL_13;
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(validCopy, v14, &v17, v21, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device
{
  assetsCopy = assets;
  deviceCopy = device;
  if (objc_msgSend_supportsPDRCapability_(deviceCopy, v8, 4067975928, v9))
  {
    if (objc_msgSend_externalAssetsAreValid_(self, v10, assetsCopy, v11))
    {
      v15 = objc_msgSend_identifier(NTKParmesanFaceBundle, v12, v13, v14);
      v19 = objc_msgSend_analyticsIdentifier(NTKParmesanFaceBundle, v16, v17, v18);
      v21 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(self, v20, v15, v19, deviceCopy, &unk_284EBA568);
      v23 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v22, 1, deviceCopy);
      objc_msgSend_selectOption_forCustomEditMode_slot_(v21, v24, v23, 12, 0);
      objc_msgSend_setExternalAssets_(v21, v25, assetsCopy, v26);
      if (v21)
      {
        v27 = objc_alloc(MEMORY[0x277D2C018]);
        v29 = objc_msgSend_initWithFace_priority_(v27, v28, v21, 400);
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_11;
    }

    v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13, v14);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF70A0(v30);
    }
  }

  v29 = 0;
LABEL_11:

  return v29;
}

- (void)companionEditorWithAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v11 = objc_msgSend_firstObject(assetsCopy, v8, v9, v10);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v16 = objc_msgSend_firstObject(assetsCopy, v13, v14, v15);
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v18, v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BF0C000, v21, OS_LOG_TYPE_INFO, "Creating parmesan editor to handle PHAssets", buf, 2u);
    }

    v22 = [NTKCParmesanPhotosEditor alloc];
    v26 = objc_msgSend_device(self, v23, v24, v25);
    v28 = objc_msgSend_initWithResourceDirectory_forDevice_(v22, v27, 0, v26);

    objc_msgSend_addAssetsFromAssetList_(v28, v29, assetsCopy, v30);
LABEL_9:
    completionCopy[2](completionCopy, v28);
    goto LABEL_16;
  }

  if (v17)
  {
    v31 = objc_msgSend_logObject(NTKParmesanFaceBundle, v18, v19, v20);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v47[0] = 0;
      _os_log_impl(&dword_23BF0C000, v31, OS_LOG_TYPE_INFO, "Creating paremsan editor to handle UIImages", v47, 2u);
    }

    v32 = [NTKParmesanImageEditor alloc];
    v36 = objc_msgSend_device(self, v33, v34, v35);
    v28 = objc_msgSend_initForDevice_(v32, v37, v36, v38);

    objc_msgSend_addImages_(v28, v39, assetsCopy, v40);
    goto LABEL_9;
  }

  v28 = objc_msgSend_firstObject(assetsCopy, v18, v19, v20);
  if (v28)
  {
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
  }

  else
  {
    v45 = @"nil";
  }

  v46 = objc_msgSend_logObject(NTKParmesanFaceBundle, v41, v42, v43);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF70E4(v45, v46);
  }

  completionCopy[2](completionCopy, 0);
LABEL_16:
}

+ (id)_complicationSlotDescriptors
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v10[0] = *MEMORY[0x277D2BF00];
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v11[0] = v4;
  v10[1] = *MEMORY[0x277D2BED0];
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v11[1] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v11, v10, 2);

  return v8;
}

+ (id)_orderedComplicationSlots
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BED0];
  v5[0] = *MEMORY[0x277D2BF00];
  v5[1] = v2;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v4, *MEMORY[0x277D2BF00], v5))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"SLOT_LABEL_%@", v7, @"TOP");
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(slotCopy, v6, *MEMORY[0x277D2BED0], v7);
    v11 = @"BOTTOM";
    if (!isEqualToString)
    {
      v11 = 0;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"SLOT_LABEL_%@", v10, v11);
  }
  v12 = ;
  v13 = NTKClockFaceLocalizedString();

  return v13;
}

- (void)_reportAdditionalDailyConfigurationMetrics
{
  v7 = objc_msgSend_shared(NTKParmesanAnalyticsReporter, a2, v2, v3);
  objc_msgSend_sendParmesanFaceSnapshotEvent_(v7, v5, self, v6);
}

- (void)_reportAdditionalAddedToLibraryMetrics
{
  v7 = objc_msgSend_shared(NTKParmesanAnalyticsReporter, a2, v2, v3);
  objc_msgSend_sendAddedNewParmesanFaceEvent_(v7, v5, self, v6);
}

- (id)_customEditModes
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  objc_msgSend_addObjectsFromArray_(v5, v6, &unk_284ED4200, v7);
  v11 = objc_msgSend_device(self, v8, v9, v10);
  v12 = NTKShowIndicScriptNumerals();

  if (v12)
  {
    objc_msgSend_addObject_(v5, v13, &unk_284ED4608, v14);
  }

  objc_msgSend_addObjectsFromArray_(v5, v13, &unk_284ED4218, v14);
  v18 = objc_msgSend_copy(v5, v15, v16, v17);

  return v18;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKParmesanFace;
  return [(NTKFace *)&v4 _hasOptionsForCustomEditMode:mode];
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode - 12) <= 7 && ((0x8Fu >> (mode - 12)))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_slotsForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 10)
  {
    v5 = objc_msgSend__colorSlots(self, a2, mode, device);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 10)
  {
    v5 = @"style-color";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode, slot);
  v9 = objc_msgSend_device(self, v6, v7, v8);
  v12 = objc_msgSend_numberOfOptionsForDevice_(v5, v10, v9, v11);

  return v12;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode, mode, slot);
  v11 = objc_msgSend_device(self, v8, v9, v10);
  v13 = objc_msgSend_optionAtIndex_forDevice_(v7, v12, index, v11);

  return v13;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10 = objc_msgSend__optionClassForCustomEditMode_(self, v8, mode, v9);
  v14 = objc_msgSend_device(self, v11, v12, v13);
  v16 = objc_msgSend_indexOfOption_forDevice_(v10, v15, optionCopy, v14);

  return v16;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v9 = objc_msgSend_device(self, a2, mode, slot);
  v10 = 0;
  if (mode <= 13)
  {
    if (mode == 12)
    {
      v14 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v6, 0, v9);
    }

    else
    {
      if (mode != 13)
      {
        goto LABEL_13;
      }

      v14 = objc_msgSend_optionWithTypeface_device_(NTKParmesanTypefaceEditOption, v6, 0, v9);
    }

    goto LABEL_12;
  }

  switch(mode)
  {
    case 14:
      v14 = objc_msgSend_optionWithTime_device_(NTKParmesanTimeEditOption, v6, 0, v9);
LABEL_12:
      v10 = v14;
      break;
    case 15:
      v14 = objc_msgSend_optionWithStyle_device_(NTKParmesanStyleEditOption, v6, 0, v9);
      goto LABEL_12;
    case 19:
      v11 = objc_msgSend_device(self, v6, v7, v8);
      v10 = objc_msgSend_defaultOptionForDevice_(NTKParmesanNumeralsEditOption, v12, v11, v13);

      break;
  }

LABEL_13:

  return v10;
}

- (unint64_t)_numberOfDynamicSections
{
  v2 = kParmesanColorSlots(self, a2);
  v6 = objc_msgSend_count(v2, v3, v4, v5);

  return v6;
}

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v9 = slotCopy;
  if (mode == 10)
  {
    if (objc_msgSend_isEqualToString_(slotCopy, v7, @"time-color", v8))
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v10, @"PARMESAN_EDIT_MODE_LABEL_TIME_COLOR", @"[Parmesan] Custom name for time color slot");
      v13 = LABEL_6:;
      goto LABEL_8;
    }

    if (objc_msgSend_isEqualToString_(v9, v10, @"style-color", v11))
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v12, @"PARMESAN_EDIT_MODE_LABEL_STYLE_COLOR", @"[Parmesan] Custom name for style color slot");
      goto LABEL_6;
    }
  }

  v16.receiver = self;
  v16.super_class = NTKParmesanFace;
  v13 = [(NTKFace *)&v16 _localizedNameForDynamicSectionCustomEditMode:mode slot:v9];
LABEL_8:
  v14 = v13;

  return v14;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode > 13)
  {
    if (mode == 14)
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_POSITION", @"[Parmesan] Custom name for position edit mode");
      goto LABEL_11;
    }

    if (mode == 19)
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_NUMERALS", @"[Parmesan] Custom name for numerals edit mode");
      goto LABEL_11;
    }

LABEL_8:
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___NTKParmesanFace;
    v8 = objc_msgSendSuper2(&v11, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, deviceCopy);
    goto LABEL_12;
  }

  if (mode == 12)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_CONTENT", @"[Parmesan] Custom name for content edit mode");
    goto LABEL_11;
  }

  if (mode != 13)
  {
    goto LABEL_8;
  }

  objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_TYPEFACE", @"[Parmesan] Custom name for typeface edit mode");
  v8 = LABEL_11:;
LABEL_12:
  v9 = v8;

  return v9;
}

- (id)editOptionsThatHideEditModes
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_device(self, a2, v2, v3);
  v7 = objc_msgSend_partiallySupportedEditOptionsForDevice_(NTKParmesanNumeralsEditOption, v5, v4, v6);

  v11[0] = &unk_284ED45F0;
  v11[1] = &unk_284ED45D8;
  v12[0] = v7;
  v12[1] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v12, v11, 2);

  return v9;
}

- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)mode
{
  if (mode == 14)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, a2, @"PARMESAN_TIME_SIZE_CANNOT_BE_CHANGED_EXPLANATION", @"Time size cannot be changed explanation");
    goto LABEL_5;
  }

  if (mode == 13)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, a2, @"PARMESAN_TIME_FONT_CANNOT_BE_CHANGED_EXPLANATION", @"Time font cannot be changed explanation");
    v3 = LABEL_5:;
    goto LABEL_7;
  }

  v3 = &stru_284EC2B20;
LABEL_7:

  return v3;
}

- (void)_commonInit
{
  v9.receiver = self;
  v9.super_class = NTKParmesanFace;
  [(NTKFace *)&v9 _commonInit];
  v3 = [NTKParmesanPigmentProviderCoordinator alloc];
  v6 = objc_msgSend_initWithSelectedStyle_(v3, v4, 0, v5);
  pigmentProviderCoordinator = self->_pigmentProviderCoordinator;
  self->_pigmentProviderCoordinator = v6;

  cachedGalleryName = self->_cachedGalleryName;
  self->_cachedGalleryName = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = NTKParmesanFace;
  v4 = [(NTKFace *)&v16 copyWithZone:zone];
  v8 = objc_msgSend_copy(self->_cachedGalleryName, v5, v6, v7);
  v9 = v4[21];
  v4[21] = v8;

  v13 = objc_msgSend_copy(self->_cachedResourceDirectorySnapshotKey, v10, v11, v12);
  v14 = v4[23];
  v4[23] = v13;

  return v4;
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
  self->_cachedResourceDirectorySnapshotKey = 0;
}

- (id)_resourceDirectorySnapshotKey
{
  v8 = objc_msgSend__storedPlaceholderName(self, a2, v2, v3);
  if (v8)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v10 = objc_msgSend_resourceDirectory(self, v5, v6, v7);
  if (v10 && (v14 = v10, objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12, v13), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_resourceDirectory(self, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_fileExistsAtPath_(v15, v20, v19, v21), v19, v15, v14, v22))
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    if (cachedResourceDirectorySnapshotKey)
    {
      v9 = cachedResourceDirectorySnapshotKey;
      goto LABEL_11;
    }

    v37 = objc_msgSend_resourceDirectory(self, v23, v24, v25);
    v40 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v38, v37, v39);

    v44 = objc_msgSend_version(v40, v41, v42, v43);
    if (v44 == 2)
    {
      v48 = objc_msgSend_firstObject(v40, v45, v46, v47);
      v50 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v49, 14, 0);
      v53 = objc_msgSend_uniqueSnapshotIdentifierForTimeOption_(v48, v51, v50, v52);
      v54 = self->_cachedResourceDirectorySnapshotKey;
      self->_cachedResourceDirectorySnapshotKey = v53;
    }

    else
    {
      v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"version-outdated-%ld", v47, v44);
      v48 = self->_cachedResourceDirectorySnapshotKey;
      self->_cachedResourceDirectorySnapshotKey = v55;
    }

    v9 = self->_cachedResourceDirectorySnapshotKey;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v27 = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = 0;
  }

  v31 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v28, v29, v30);
  isTinker = objc_msgSend_isTinker(v31, v32, v33, v34);

  if (isTinker)
  {
    v9 = @"T";
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (id)_faceDescriptionKey
{
  if (NTKPeerDeviceHandlesWideLoads())
  {
    return @"FACE_PARMESAN_DESCRIPTION_24";
  }

  else
  {
    return @"FACE_PARMESAN_DESCRIPTION_06";
  }
}

- (id)_faceDescription
{
  v4 = objc_msgSend__faceDescriptionKey(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v5, v4, v4);

  return v6;
}

- (id)galleryName
{
  cachedGalleryName = self->_cachedGalleryName;
  if (cachedGalleryName)
  {
    galleryName = cachedGalleryName;
  }

  else
  {
    v7 = objc_msgSend_resourceDirectory(self, a2, v2, v3);
    v10 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v8, v7, v9);
    if (objc_msgSend_contentType(v10, v11, v12, v13) == 2)
    {
      v17 = objc_msgSend_shuffleSelection(v10, v14, v15, v16);
      v21 = objc_msgSend_shuffleName(v17, v18, v19, v20);
      v23 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v22, @"PARMESAN_SHUFFLE", @"Shuffle");
      v25 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v24, @"PARMESAN_SHUFFLE_FORMAT", @"%@ %@");
      v28 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v26, v25, v27, v21, v23);
      v29 = self->_cachedGalleryName;
      self->_cachedGalleryName = v28;

      galleryName = self->_cachedGalleryName;
    }

    else
    {
      v31.receiver = self;
      v31.super_class = NTKParmesanFace;
      galleryName = [(NTKFace *)&v31 galleryName];
    }
  }

  return galleryName;
}

- (id)companionGalleryName
{
  companionGalleryName = self->_companionGalleryName;
  if (companionGalleryName)
  {
    v5 = companionGalleryName;
  }

  else
  {
    v5 = objc_msgSend_galleryName(self, a2, v2, v3);
  }

  return v5;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v7 = objc_msgSend_deviceCategory(deviceCopy, v4, v5, v6);
  v8 = _os_feature_enabled_impl();
  v11 = objc_msgSend_supportsPDRCapability_(deviceCopy, v9, 3669496134, v10);
  v14 = objc_msgSend_supportsPDRCapability_(deviceCopy, v12, 4067975928, v13);

  return !((v7 != 1) & (v8 & v11) & v14);
}

- (id)trackedPhotosContent
{
  v3 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, 12, 0);
  v10 = 0;
  if (!objc_msgSend_content(v3, v4, v5, v6))
  {
    v11 = objc_msgSend_resourceDirectory(self, v7, v8, v9);
    v14 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v12, v11, v13);

    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = objc_msgSend_uuidString(v14, v16, v17, v18);
    v22 = objc_msgSend_initWithUUIDString_(v15, v20, v19, v21);

    v26 = objc_msgSend_contentType(v14, v23, v24, v25);
    switch(v26)
    {
      case 4:
        v37 = objc_alloc(MEMORY[0x277D2C118]);
        v33 = objc_msgSend_initWithDailyUUID_(v37, v38, v22, v39);
        break;
      case 3:
        v34 = objc_alloc(MEMORY[0x277D2C118]);
        v33 = objc_msgSend_initWithAlbumUUID_(v34, v35, v22, v36);
        break;
      case 2:
        v30 = objc_alloc(MEMORY[0x277D2C118]);
        v33 = objc_msgSend_initWithShuffleUUID_(v30, v31, v22, v32);
        break;
      default:
        v40 = objc_msgSend_logObject(NTKParmesanFaceBundle, v27, v28, v29);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_23BFF89B4(v14, self, v40, v41);
        }

        v10 = 0;
        goto LABEL_12;
    }

    v10 = v33;
LABEL_12:
  }

  return v10;
}

- (int64_t)_selectedStyleOption
{
  v2 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, 15, 0);
  v6 = v2;
  if (v2)
  {
    v7 = objc_msgSend_style(v2, v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)additionalPigmentFaceDomains
{
  v8[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__timePigmentFaceDomain(self, a2, v2, v3);
  v8[0] = v4;
  v8[1] = @"regular";
  v8[2] = @"duotone";
  v8[3] = @"tritone";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v8, 4);

  return v6;
}

+ (id)_timePigmentFaceDomain
{
  isGlassEnabled = objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, v2, v3);
  v5 = NTKParmesanColorPigmentCollectionNameGroupTime;
  if (!isGlassEnabled)
  {
    v5 = NTKParmesanColorPigmentCollectionNameGroupTimeFiltered;
  }

  v6 = *v5;

  return v6;
}

- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot
{
  toCopy = to;
  slotCopy = slot;
  v62.receiver = self;
  v62.super_class = NTKParmesanFace;
  [(NTKFace *)&v62 _noteOptionChangedFrom:from to:toCopy forCustomEditMode:mode slot:slotCopy];
  if (objc_msgSend_deviceSupportsPigmentEditOption(self, v12, v13, v14))
  {
    if (mode == 15)
    {
      v38 = objc_msgSend_style(toCopy, v15, v16, v17);
      objc_msgSend_setSelectedStyle_(self->_pigmentProviderCoordinator, v39, v38, v40);
      objc_msgSend__handleColorEditOptionsChanged(self, v41, v42, v43);
      v24 = @"style-color";
      v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, v38, v45);
      v50 = objc_msgSend_stringValue(v46, v47, v48, v49);
      v32 = objc_msgSend_customDataForKey_(self, v51, v50, v52);

      if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v53, v32, v54), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v55 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v53, v38, v54);
        v29 = objc_msgSend__selectDefaultPigmentForStyle_(self, v56, v55, v57);
      }

      v58 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v53, 10, v24);
      v36 = v58;
      if (v29 && (objc_msgSend_isEqual_(v58, v59, v29, v60) & 1) == 0)
      {
        objc_msgSend_selectOption_forCustomEditMode_slot_(self, v61, v29, 10, v24);
      }

      goto LABEL_14;
    }

    if (mode == 10 && objc_msgSend_isEqualToString_(slotCopy, v15, @"style-color", v17))
    {
      v24 = objc_msgSend_pigmentEditOption(toCopy, v18, v19, v20);
      if (!v24)
      {
LABEL_15:

        goto LABEL_16;
      }

      v25 = objc_msgSend__selectedStyleOption(self, v21, v22, v23);
      v29 = objc_msgSend_JSONObjectRepresentation(v24, v26, v27, v28);
      v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, v25, v31);
      v36 = objc_msgSend_stringValue(v32, v33, v34, v35);
      objc_msgSend_setCustomData_forKey_(self, v37, v29, v36);
LABEL_14:

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)applyDefaultConfiguration
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = NTKParmesanFace;
  [(NTKFace *)&v23 applyDefaultConfiguration];
  v6 = objc_msgSend_device(self, v3, v4, v5);
  v9 = objc_msgSend__orderedValuesForDevice_(NTKParmesanStyleEditOption, v7, v6, v8);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v24, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend__selectDefaultPigmentForStyle_(self, v13, *(*(&v19 + 1) + 8 * v17++), v14, v19);
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v19, v24, 16);
    }

    while (v15);
  }
}

- (id)_selectDefaultPigmentForStyle:(id)style
{
  pigmentProviderCoordinator = self->_pigmentProviderCoordinator;
  styleCopy = style;
  v9 = objc_msgSend_unsignedIntValue(styleCopy, v6, v7, v8);
  v11 = objc_msgSend_providerForSlot_style_(pigmentProviderCoordinator, v10, @"style-color", v9);
  v14 = objc_msgSend_defaultColorOptionForSlot_(v11, v12, 0, v13);
  v18 = objc_msgSend_JSONObjectRepresentation(v14, v15, v16, v17);
  v22 = objc_msgSend_stringValue(styleCopy, v19, v20, v21);

  objc_msgSend_setCustomData_forKey_(self, v23, v18, v22);

  return v14;
}

- (BOOL)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = objc_msgSend__selectedStyleOption(self, v5, v6, v7);
  objc_msgSend_setSelectedStyle_(self->_pigmentProviderCoordinator, v9, v8, v10);
  v12.receiver = self;
  v12.super_class = NTKParmesanFace;
  LOBYTE(self) = [(NTKFace *)&v12 applyConfiguration:configurationCopy];

  return self;
}

- (BOOL)isValidConfigurationToAddToLibrary
{
  v6 = objc_msgSend__storedPlaceholderName(self, a2, v2, v3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v5, 12, 0);
    v7 = objc_msgSend_content(v8, v9, v10, v11) != 2;
  }

  return v7;
}

- (id)_storedPlaceholderName
{
  v5 = objc_msgSend_placeholderCustomDataKey(NTKParmesanGalleryPlaceholderDataSource, a2, v2, v3);
  v8 = objc_msgSend_customDataForKey_(self, v6, v5, v7);
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)upgradeManagerWithFace:(id)face forDevice:(id)device
{
  deviceCopy = device;
  faceCopy = face;
  v7 = [NTKParmesanUpgradeManager alloc];
  v9 = objc_msgSend_initWithFace_forDevice_(v7, v8, faceCopy, deviceCopy);

  return v9;
}

- (void)prepareForSharing
{
  v5 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], a2, v2, v3);
  v8 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v6, 1, v5);

  objc_msgSend_selectOption_forCustomEditMode_slot_(self, v7, v8, 12, 0);
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v10 = objc_msgSend_resourceDirectory(self, v7, v8, v9);
  v14 = objc_msgSend_resourceDirectory(self, v11, v12, v13);
  v17 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v15, v14, v16);

  v21 = objc_msgSend_uuidString(v17, v18, v19, v20);

  if (v21 && (objc_msgSend__createDynamicContentDirectoryFromReader_(self, v22, v17, v23), v24 = objc_claimAutoreleasedReturnValue(), v10, (v10 = v24) == 0))
  {
    v36 = 0;
  }

  else
  {
    v25 = objc_opt_new();
    v40[0] = v25;
    v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v40, 1);

    v28 = objc_alloc(MEMORY[0x277D2C0C8]);
    v31 = objc_msgSend_initWithOperations_(v28, v29, v27, v30);
    v36 = objc_msgSend_scrubDirectoryAtPath_toDestinationPath_error_(v31, v32, v10, pathCopy, error);
    if (v21)
    {
      v37 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v33, v34, v35);
      objc_msgSend_removeItemAtPath_error_(v37, v38, v10, 0);
    }
  }

  return v36;
}

- (id)_createDynamicContentDirectoryFromReader:(id)reader
{
  v79 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  v4 = dispatch_semaphore_create(0);
  v43 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = dispatch_queue_create("com.apple.NanoTimeKit.parmesanGreenfield", v43);
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = sub_23BF3851C;
  v67[4] = sub_23BF3852C;
  v68 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8);
  v9 = NTKNewUniqueTeporaryResourceDirectory();
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v10, v11, v12);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v13, v14, v9, 1, 0, 0);

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF38674;
  aBlock[3] = &unk_278BA7630;
  v15 = v5;
  v58 = v15;
  objc_copyWeak(&v65, &location);
  v61 = v75;
  v62 = &v71;
  v63 = v69;
  v16 = v9;
  v59 = v16;
  v60 = &unk_284EBA708;
  v64 = v67;
  v17 = _Block_copy(aBlock);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_23BF38DE4;
  v48[3] = &unk_278BA7680;
  v18 = v15;
  v49 = v18;
  objc_copyWeak(&v56, &location);
  v52 = v75;
  v53 = &v71;
  v54 = v67;
  v19 = v16;
  v50 = v19;
  v20 = v4;
  v51 = v20;
  v55 = v69;
  v21 = _Block_copy(v48);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_23BF39168;
  v45[3] = &unk_278BA76A8;
  v22 = v18;
  v46 = v22;
  v47 = v75;
  v23 = _Block_copy(v45);
  objc_msgSend__startStreamingAssetsFromReader_updateBlock_completionBlock_(self, v24, readerCopy, v17, v21);
  v28 = objc_msgSend_logObject(NTKParmesanFaceBundle, v25, v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v78 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]";
    _os_log_impl(&dword_23BF0C000, v28, OS_LOG_TYPE_DEFAULT, "%s: Start waiting....", buf, 0xCu);
  }

  v29 = dispatch_time(0, 4000000000);
  v33 = dispatch_semaphore_wait(v20, v29);
  if (v33)
  {
    v34 = objc_msgSend_logObject(NTKParmesanFaceBundle, v30, v31, v32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v78 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]";
      _os_log_impl(&dword_23BF0C000, v34, OS_LOG_TYPE_DEFAULT, "%s: Timed out; cancelling further streaming", buf, 0xCu);
    }

    v23[2](v23);
  }

  v35 = objc_msgSend_logObject(NTKParmesanFaceBundle, v30, v31, v32);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v78 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]";
    _os_log_impl(&dword_23BF0C000, v35, OS_LOG_TYPE_DEFAULT, "%s: And proceed!", buf, 0xCu);
  }

  if (v33 || (v72[3] & 1) == 0)
  {
    v40 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v36, v37, v38);
    objc_msgSend_removeItemAtPath_error_(v40, v41, v19, 0);

    v39 = 0;
  }

  else
  {
    v39 = v19;
  }

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v65);

  objc_destroyWeak(&location);
  _Block_object_dispose(v67, 8);

  _Block_object_dispose(v69, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(v75, 8);

  return v39;
}

- (void)_startStreamingAssetsFromReader:(id)reader updateBlock:(id)block completionBlock:(id)completionBlock
{
  v70 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v13 = objc_msgSend_contentType(readerCopy, v10, v11, v12);
  switch(v13)
  {
    case 4:
      v56 = [_TtC30NTKParmesanFaceBundleCompanion10NTKDailyID alloc];
      v60 = objc_msgSend_uuidString(readerCopy, v57, v58, v59);
      v43 = objc_msgSend_initWithUuidString_(v56, v61, v60, v62);

      objc_msgSend_streamAssetsInDaily_updateBlock_completionBlock_(NTKParmesanPhotoProcessor, v63, v43, blockCopy, completionBlockCopy);
      break;
    case 3:
      v45 = [_TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID alloc];
      v49 = objc_msgSend_assetCollectionIdentifier(readerCopy, v46, v47, v48);
      v53 = objc_msgSend_uuidString(readerCopy, v50, v51, v52);
      v43 = objc_msgSend_initWithAlbum_uuidString_(v45, v54, v49, v53);

      objc_msgSend_streamAssetsInAlbum_updateBlock_completionBlock_(NTKParmesanPhotoProcessor, v55, v43, blockCopy, completionBlockCopy);
      break;
    case 2:
      v17 = [_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID alloc];
      v18 = MEMORY[0x277CBEB98];
      v22 = objc_msgSend_peopleIdentifiers(readerCopy, v19, v20, v21);
      v25 = objc_msgSend_setWithArray_(v18, v23, v22, v24);
      hasPets = objc_msgSend_hasPets(readerCopy, v26, v27, v28);
      hasNature = objc_msgSend_hasNature(readerCopy, v30, v31, v32);
      hasCityscapes = objc_msgSend_hasCityscapes(readerCopy, v34, v35, v36);
      v41 = objc_msgSend_uuidString(readerCopy, v38, v39, v40);
      v43 = objc_msgSend_initWithPeople_pets_nature_cityscape_uuidString_(v17, v42, v25, hasPets, hasNature, hasCityscapes, v41);

      objc_msgSend_streamAssetsInShuffle_updateBlock_completionBlock_(NTKParmesanPhotoProcessor, v44, v43, blockCopy, completionBlockCopy);
      break;
    default:
      v64 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15, v16);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v66 = 136315394;
        v67 = "[NTKParmesanFace _startStreamingAssetsFromReader:updateBlock:completionBlock:]";
        v68 = 2112;
        v69 = readerCopy;
        _os_log_impl(&dword_23BF0C000, v64, OS_LOG_TYPE_DEFAULT, "%s: Bad content type in reader %@", &v66, 0x16u);
      }

      v43 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v65, *MEMORY[0x277D2C160], 2003, 0);
      blockCopy[2](blockCopy, 0, v43);
      completionBlockCopy[2](completionBlockCopy);
      break;
  }
}

- (BOOL)_sanitizeFaceConfiguration:(id *)configuration
{
  v6 = objc_msgSend_resourceDirectory(self, a2, configuration, v3);
  v9 = objc_msgSend_manifestForResourceDirectory_(NTKParmesanResourcesManifest, v7, v6, v8);

  if (!v9)
  {
    if (configuration)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v10, *MEMORY[0x277D2C158], 1006, 0);
      *configuration = v31 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  if (!objc_msgSend_validateManifestWithError_(v9, v10, configuration, v11))
  {
    goto LABEL_9;
  }

  v15 = objc_msgSend_resourceDirectory(self, v12, v13, v14);
  v18 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v16, v15, v17);

  v22 = objc_msgSend_count(v18, v19, v20, v21);
  v26 = objc_msgSend_imageList(v9, v23, v24, v25);
  v30 = objc_msgSend_count(v26, v27, v28, v29);
  v31 = v22 == v30;

  if (configuration && v22 != v30)
  {
    *configuration = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v32, *MEMORY[0x277D2C160], 2003, 0);
  }

LABEL_10:
  return v31;
}

- (id)curatedGalleryBackgroundColors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = NTKColorWithRGBA();
  v7[0] = v2;
  v3 = NTKColorWithRGBA();
  v7[1] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 2);

  return v5;
}

@end