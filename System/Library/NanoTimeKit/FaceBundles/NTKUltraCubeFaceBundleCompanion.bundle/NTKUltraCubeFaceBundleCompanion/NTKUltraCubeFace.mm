@interface NTKUltraCubeFace
+ (BOOL)_customEditMode:(int64_t)mode hasActionForOption:(id)option forDevice:(id)device;
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device;
- (BOOL)_colorEffectsSupportedForEditMode:(int64_t)mode;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (BOOL)_sanitizeFaceConfiguration:(id *)configuration;
- (BOOL)hasSampleResourceDirectory;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_resourceDirectorySnapshotKey;
- (id)addFaceDetailViewController;
- (id)copyFromGalleryFace;
- (id)copyWithZone:(_NSZone *)zone;
- (id)libraryDetailViewController;
- (id)upgradeContext;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)companionEditorWithAssets:(id)assets completion:(id)completion;
@end

@implementation NTKUltraCubeFace

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NTKUltraCubeFace;
  v4 = [(NTKUltraCubeFace *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_cachedResourceDirectorySnapshotKey copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:4094027452])
  {
    v4 = [deviceCopy deviceCategory] == &dword_0 + 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_faceDescriptionKey
{
  device = [(NTKUltraCubeFace *)self device];
  v3 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:device];

  if (v3)
  {
    return @"FACE_STYLE_ULTRACUBE_FACE_DESCRIPTION";
  }

  else
  {
    return @"FACE_STYLE_ULTRACUBE_FACE_DESCRIPTION_PRE2K22";
  }
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKUltraCubeFace *)self _faceDescriptionKey];
  v3 = [NTKUltraCubeFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = objc_opt_new();
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];

  v9 = [[NTKResourceDirectoryScrubber alloc] initWithOperations:v8];
  resourceDirectory = [(NTKUltraCubeFace *)self resourceDirectory];
  LOBYTE(error) = [v9 scrubDirectoryAtPath:resourceDirectory toDestinationPath:pathCopy error:error];

  return error;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)configuration
{
  resourceDirectory = [(NTKUltraCubeFace *)self resourceDirectory];
  v6 = [NTKUltraCubeResourcesManifest manifestForResourceDirectory:resourceDirectory];

  if (!v6)
  {
    if (configuration)
    {
      [NSError errorWithDomain:kNTKPhotosErrorDomain code:1006 userInfo:0];
      *configuration = v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if (![v6 validateManifestWithError:configuration])
  {
    goto LABEL_9;
  }

  resourceDirectory2 = [(NTKUltraCubeFace *)self resourceDirectory];
  v8 = [NTKUltraCubePhotosReader readerForResourceDirectory:resourceDirectory2];

  v9 = [v8 count];
  imageList = [v6 imageList];
  v11 = [imageList count];
  v12 = v9 == v11;

  if (configuration && v9 != v11)
  {
    *configuration = [NSError errorWithDomain:kNTKResourceDirectoryDomain code:2003 userInfo:0];
  }

LABEL_10:
  return v12;
}

- (id)_resourceDirectorySnapshotKey
{
  resourceDirectory = [(NTKUltraCubeFace *)self resourceDirectory];
  if (resourceDirectory && (v4 = resourceDirectory, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v5 = objc_claimAutoreleasedReturnValue(), -[NTKUltraCubeFace resourceDirectory](self, "resourceDirectory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 fileExistsAtPath:v6], v6, v5, v4, v7))
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    if (!cachedResourceDirectorySnapshotKey)
    {
      resourceDirectory2 = [(NTKUltraCubeFace *)self resourceDirectory];
      v10 = [NTKUltraCubePhotosReader readerForResourceDirectory:resourceDirectory2];

      version = [v10 version];
      if (version == &dword_0 + 2)
      {
        firstObject = [v10 firstObject];
        uniqueIdentifier = [firstObject uniqueIdentifier];
        v14 = self->_cachedResourceDirectorySnapshotKey;
        self->_cachedResourceDirectorySnapshotKey = uniqueIdentifier;
      }

      else
      {
        v17 = [NSString stringWithFormat:@"version-outdated-%ld", version];
        firstObject = self->_cachedResourceDirectorySnapshotKey;
        self->_cachedResourceDirectorySnapshotKey = v17;
      }

      cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    }

    v16 = cachedResourceDirectorySnapshotKey;
  }

  else
  {
    v15 = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = 0;

    v16 = 0;
  }

  return v16;
}

- (id)copyFromGalleryFace
{
  v2 = [(NTKUltraCubeFace *)self copy];
  v3 = +[NTKUltraCubeUserState userState];
  hasUserEverAddedFaceToLibrary = [v3 hasUserEverAddedFaceToLibrary];

  if (hasUserEverAddedFaceToLibrary)
  {
    [v2 setResourceDirectory:0];
  }

  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    resourceDirectory = [v2 resourceDirectory];
    v8 = 138412290;
    v9 = resourceDirectory;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Transferring ultracube face from gallery to face library with resource directory %@", &v8, 0xCu);
  }

  return v2;
}

- (id)_customEditModes
{
  v3 = +[NSMutableArray array];
  device = [(NTKUltraCubeFace *)self device];
  v5 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:device];

  [v3 addObject:&off_4B7C8];
  if (v5)
  {
    [v3 addObject:&off_4B7E0];
    [v3 addObject:&off_4B7F8];
  }

  [v3 addObject:&off_4B810];
  v6 = [v3 copy];

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = 0;
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:mode, slot])
  {
    if (mode > 12)
    {
      if (mode == 13)
      {
        device = [(NTKUltraCubeFace *)self device];
        v8 = [NTKUltraCubeTypefaceEditOption optionWithTypeface:1 forDevice:device];
      }

      else
      {
        if (mode != 15)
        {
          goto LABEL_12;
        }

        device = [(NTKUltraCubeFace *)self device];
        v8 = [NTKUltraCubeColorEffectEditOption optionWithColorEffect:0 forDevice:device];
      }
    }

    else if (mode == 10)
    {
      device = [(NTKUltraCubeFace *)self device];
      v8 = [NTKPhotosColorEditOption optionWithColor:3000 forDevice:device];
    }

    else
    {
      if (mode != 12)
      {
        goto LABEL_12;
      }

      device = [(NTKUltraCubeFace *)self device];
      v8 = [NTKUltraCubeContentEditOption optionWithUltraCubeContent:0 forDevice:device];
    }

    v6 = v8;
  }

LABEL_12:

  return v6;
}

+ (BOOL)_customEditMode:(int64_t)mode hasActionForOption:(id)option forDevice:(id)device
{
  optionCopy = option;
  v7 = optionCopy;
  v8 = mode == 12 && [optionCopy ultracubeContent] == 0;

  return v8;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 12)
  {
    v7 = @"EDIT_MODE_LABEL_CONTENT";
    goto LABEL_5;
  }

  if (mode == 13)
  {
    v7 = @"EDIT_MODE_LABEL_TYPEFACE";
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = [NTKUltraCubeFaceBundle localizedStringForKey:v8 comment:v8];

    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKUltraCubeFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_7:

  return v9;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKUltraCubeFace;
  return [(NTKUltraCubeFace *)&v4 _hasOptionsForCustomEditMode:mode];
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (![(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:mode, slot])
  {
    return 0;
  }

  v6 = mode - 10;
  if ((mode - 10) > 5 || ((0x2Du >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = *(&off_490C8)[v6];
  device = [(NTKUltraCubeFace *)self device];
  v9 = [v7 numberOfOptionsForDevice:device];

  return v9;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:mode]&& (v8 = mode - 10, (mode - 10) <= 5) && ((0x2Du >> v8) & 1) != 0)
  {
    v9 = *(&off_490C8)[v8];
    device = [(NTKUltraCubeFace *)self device];
    v11 = [v9 optionAtIndex:index forDevice:device];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:mode]&& (v8 = mode - 10, (mode - 10) <= 5) && ((0x2Du >> v8) & 1) != 0)
  {
    v9 = *(&off_490C8)[v8];
    device = [(NTKUltraCubeFace *)self device];
    v11 = [v9 indexOfOption:optionCopy forDevice:device];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:?]&& (mode - 10) <= 5 && ((0x2Du >> (mode - 10)) & 1) != 0)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotDate;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilityLargeNarrowComplicationTypes();
  v9[0] = NTKComplicationSlotDate;
  v3 = NTKWrappedDateComplicationType();
  v4 = NTKComplicationSlotDescriptor();
  v10[0] = v4;
  v9[1] = NTKComplicationSlotBottom;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotDate])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKUltraCubeFace;
    v5 = [(NTKUltraCubeFace *)&v8 _localizedNameForComplicationSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_colorEffectsSupportedForEditMode:(int64_t)mode
{
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    return 1;
  }

  device = [(NTKUltraCubeFace *)self device];
  v5 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:device];

  return v5;
}

- (id)upgradeContext
{
  resourceDirectory = [(NTKUltraCubeFace *)self resourceDirectory];
  v4 = [NTKUltraCubePhotosReader readerForResourceDirectory:resourceDirectory];

  v5 = [(NTKUltraCubeFace *)self complicationForSlot:NTKComplicationSlotDate];
  v6 = [(NTKUltraCubeFace *)self complicationForSlot:NTKComplicationSlotBottom];
  selectedOptionsForCustomEditModes = [(NTKUltraCubeFace *)self selectedOptionsForCustomEditModes];
  v8 = [selectedOptionsForCustomEditModes objectForKeyedSubscript:&off_4B7F8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedOptionsForCustomEditModes2 = [(NTKUltraCubeFace *)self selectedOptionsForCustomEditModes];
    v10 = [selectedOptionsForCustomEditModes2 objectForKeyedSubscript:&off_4B810];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selectedOptionsForCustomEditModes3 = [(NTKUltraCubeFace *)self selectedOptionsForCustomEditModes];
      v12 = [selectedOptionsForCustomEditModes3 objectForKeyedSubscript:&off_4B7E0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v12;
        v13 = [[_NTKUltraCubePhotoFaceUpgradeContext alloc] initWithReader:v4 topComplication:v5 bottomComplication:v6 colorEffectOption:v8 colorOption:v12 typefaceOption:v10];
      }

      else
      {
        v16 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_29B68();
        }

        v13 = 0;
      }

      v15 = v10;
    }

    else
    {
      v15 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_29AF4();
      }

      v13 = 0;
      v12 = v10;
    }

    v14 = v8;
    v8 = v12;
  }

  else
  {
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_29A80();
    }

    v13 = 0;
  }

  return v13;
}

- (id)libraryDetailViewController
{
  v2 = [[NTKCUltraCubeFaceDetailViewController alloc] initWithLibraryFace:self];

  return v2;
}

- (id)addFaceDetailViewController
{
  v3 = [NTKCUltraCubeFaceDetailViewController alloc];
  externalAssets = [(NTKUltraCubeFace *)self externalAssets];
  v5 = [(NTKCUltraCubeFaceDetailViewController *)v3 initWithCandidateFace:self externalAssets:externalAssets];

  return v5;
}

+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device
{
  assetsCopy = assets;
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:4067975928])
  {
LABEL_13:
    v16 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = assetsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = +[NTKUltraCubeFaceBundle identifier];
    v14 = +[NTKUltraCubeFaceBundle analyticsIdentifier];
    v15 = [self bundledFaceWithIdentifier:v13 analyticsIdentifier:v14 forDevice:deviceCopy initCustomization:0];
    [v15 setExternalAssets:v8];
    if (v15)
    {
      v16 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v15 priority:300];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)companionEditorWithAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  firstObject = [assetsCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [NTKCompanionUltraCubePhotosEditor alloc];
    device = [(NTKUltraCubeFace *)self device];
    v11 = [(NTKCompanionUltraCubePhotosEditor *)v9 initWithResourceDirectory:0 forDevice:device];

    [(NTKCompanionUltraCubePhotosEditor *)v11 addAssetsFromAssetList:assetsCopy];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)hasSampleResourceDirectory
{
  _resourceDirectorySnapshotKey = [(NTKUltraCubeFace *)self _resourceDirectorySnapshotKey];
  v3 = [_resourceDirectorySnapshotKey hasPrefix:@"GalleryImage-"];

  return v3;
}

@end