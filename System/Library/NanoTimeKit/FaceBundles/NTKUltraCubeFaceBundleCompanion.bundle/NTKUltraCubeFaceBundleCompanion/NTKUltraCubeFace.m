@interface NTKUltraCubeFace
+ (BOOL)_customEditMode:(int64_t)a3 hasActionForOption:(id)a4 forDevice:(id)a5;
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)sortableFaceWithAssets:(id)a3 forDevice:(id)a4;
- (BOOL)_colorEffectsSupportedForEditMode:(int64_t)a3;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3;
- (BOOL)_sanitizeFaceConfiguration:(id *)a3;
- (BOOL)hasSampleResourceDirectory;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_resourceDirectorySnapshotKey;
- (id)addFaceDetailViewController;
- (id)copyFromGalleryFace;
- (id)copyWithZone:(_NSZone *)a3;
- (id)libraryDetailViewController;
- (id)upgradeContext;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)companionEditorWithAssets:(id)a3 completion:(id)a4;
@end

@implementation NTKUltraCubeFace

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NTKUltraCubeFace;
  v4 = [(NTKUltraCubeFace *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_cachedResourceDirectorySnapshotKey copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 supportsPDRCapability:4094027452])
  {
    v4 = [v3 deviceCategory] == &dword_0 + 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_faceDescriptionKey
{
  v2 = [(NTKUltraCubeFace *)self device];
  v3 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:v2];

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
  v2 = [(NTKUltraCubeFace *)self _faceDescriptionKey];
  v3 = [NTKUltraCubeFaceBundle localizedStringForKey:v2 comment:v2];

  return v3;
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];

  v9 = [[NTKResourceDirectoryScrubber alloc] initWithOperations:v8];
  v10 = [(NTKUltraCubeFace *)self resourceDirectory];
  LOBYTE(a4) = [v9 scrubDirectoryAtPath:v10 toDestinationPath:v6 error:a4];

  return a4;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)a3
{
  v5 = [(NTKUltraCubeFace *)self resourceDirectory];
  v6 = [NTKUltraCubeResourcesManifest manifestForResourceDirectory:v5];

  if (!v6)
  {
    if (a3)
    {
      [NSError errorWithDomain:kNTKPhotosErrorDomain code:1006 userInfo:0];
      *a3 = v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if (![v6 validateManifestWithError:a3])
  {
    goto LABEL_9;
  }

  v7 = [(NTKUltraCubeFace *)self resourceDirectory];
  v8 = [NTKUltraCubePhotosReader readerForResourceDirectory:v7];

  v9 = [v8 count];
  v10 = [v6 imageList];
  v11 = [v10 count];
  v12 = v9 == v11;

  if (a3 && v9 != v11)
  {
    *a3 = [NSError errorWithDomain:kNTKResourceDirectoryDomain code:2003 userInfo:0];
  }

LABEL_10:
  return v12;
}

- (id)_resourceDirectorySnapshotKey
{
  v3 = [(NTKUltraCubeFace *)self resourceDirectory];
  if (v3 && (v4 = v3, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v5 = objc_claimAutoreleasedReturnValue(), -[NTKUltraCubeFace resourceDirectory](self, "resourceDirectory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 fileExistsAtPath:v6], v6, v5, v4, v7))
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    if (!cachedResourceDirectorySnapshotKey)
    {
      v9 = [(NTKUltraCubeFace *)self resourceDirectory];
      v10 = [NTKUltraCubePhotosReader readerForResourceDirectory:v9];

      v11 = [v10 version];
      if (v11 == &dword_0 + 2)
      {
        v12 = [v10 firstObject];
        v13 = [v12 uniqueIdentifier];
        v14 = self->_cachedResourceDirectorySnapshotKey;
        self->_cachedResourceDirectorySnapshotKey = v13;
      }

      else
      {
        v17 = [NSString stringWithFormat:@"version-outdated-%ld", v11];
        v12 = self->_cachedResourceDirectorySnapshotKey;
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
  v4 = [v3 hasUserEverAddedFaceToLibrary];

  if (v4)
  {
    [v2 setResourceDirectory:0];
  }

  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v2 resourceDirectory];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Transferring ultracube face from gallery to face library with resource directory %@", &v8, 0xCu);
  }

  return v2;
}

- (id)_customEditModes
{
  v3 = +[NSMutableArray array];
  v4 = [(NTKUltraCubeFace *)self device];
  v5 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:v4];

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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = 0;
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:a3, a4])
  {
    if (a3 > 12)
    {
      if (a3 == 13)
      {
        v7 = [(NTKUltraCubeFace *)self device];
        v8 = [NTKUltraCubeTypefaceEditOption optionWithTypeface:1 forDevice:v7];
      }

      else
      {
        if (a3 != 15)
        {
          goto LABEL_12;
        }

        v7 = [(NTKUltraCubeFace *)self device];
        v8 = [NTKUltraCubeColorEffectEditOption optionWithColorEffect:0 forDevice:v7];
      }
    }

    else if (a3 == 10)
    {
      v7 = [(NTKUltraCubeFace *)self device];
      v8 = [NTKPhotosColorEditOption optionWithColor:3000 forDevice:v7];
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_12;
      }

      v7 = [(NTKUltraCubeFace *)self device];
      v8 = [NTKUltraCubeContentEditOption optionWithUltraCubeContent:0 forDevice:v7];
    }

    v6 = v8;
  }

LABEL_12:

  return v6;
}

+ (BOOL)_customEditMode:(int64_t)a3 hasActionForOption:(id)a4 forDevice:(id)a5
{
  v6 = a4;
  v7 = v6;
  v8 = a3 == 12 && [v6 ultracubeContent] == 0;

  return v8;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 12)
  {
    v7 = @"EDIT_MODE_LABEL_CONTENT";
    goto LABEL_5;
  }

  if (a3 == 13)
  {
    v7 = @"EDIT_MODE_LABEL_TYPEFACE";
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = [NTKUltraCubeFaceBundle localizedStringForKey:v8 comment:v8];

    goto LABEL_7;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKUltraCubeFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_7:

  return v9;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKUltraCubeFace;
  return [(NTKUltraCubeFace *)&v4 _hasOptionsForCustomEditMode:a3];
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (![(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:a3, a4])
  {
    return 0;
  }

  v6 = a3 - 10;
  if ((a3 - 10) > 5 || ((0x2Du >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = *(&off_490C8)[v6];
  v8 = [(NTKUltraCubeFace *)self device];
  v9 = [v7 numberOfOptionsForDevice:v8];

  return v9;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:a4]&& (v8 = a4 - 10, (a4 - 10) <= 5) && ((0x2Du >> v8) & 1) != 0)
  {
    v9 = *(&off_490C8)[v8];
    v10 = [(NTKUltraCubeFace *)self device];
    v11 = [v9 optionAtIndex:a3 forDevice:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:a4]&& (v8 = a4 - 10, (a4 - 10) <= 5) && ((0x2Du >> v8) & 1) != 0)
  {
    v9 = *(&off_490C8)[v8];
    v10 = [(NTKUltraCubeFace *)self device];
    v11 = [v9 indexOfOption:v7 forDevice:v10];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if ([(NTKUltraCubeFace *)self _colorEffectsSupportedForEditMode:?]&& (a3 - 10) <= 5 && ((0x2Du >> (a3 - 10)) & 1) != 0)
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

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotDate])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKUltraCubeFace;
    v5 = [(NTKUltraCubeFace *)&v8 _localizedNameForComplicationSlot:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_colorEffectsSupportedForEditMode:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    return 1;
  }

  v4 = [(NTKUltraCubeFace *)self device];
  v5 = [NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:v4];

  return v5;
}

- (id)upgradeContext
{
  v3 = [(NTKUltraCubeFace *)self resourceDirectory];
  v4 = [NTKUltraCubePhotosReader readerForResourceDirectory:v3];

  v5 = [(NTKUltraCubeFace *)self complicationForSlot:NTKComplicationSlotDate];
  v6 = [(NTKUltraCubeFace *)self complicationForSlot:NTKComplicationSlotBottom];
  v7 = [(NTKUltraCubeFace *)self selectedOptionsForCustomEditModes];
  v8 = [v7 objectForKeyedSubscript:&off_4B7F8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(NTKUltraCubeFace *)self selectedOptionsForCustomEditModes];
    v10 = [v9 objectForKeyedSubscript:&off_4B810];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(NTKUltraCubeFace *)self selectedOptionsForCustomEditModes];
      v12 = [v11 objectForKeyedSubscript:&off_4B7E0];

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
  v4 = [(NTKUltraCubeFace *)self externalAssets];
  v5 = [(NTKCUltraCubeFaceDetailViewController *)v3 initWithCandidateFace:self externalAssets:v4];

  return v5;
}

+ (id)sortableFaceWithAssets:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 supportsPDRCapability:4067975928])
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
    v8 = v6;
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
    v15 = [a1 bundledFaceWithIdentifier:v13 analyticsIdentifier:v14 forDevice:v7 initCustomization:0];
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

- (void)companionEditorWithAssets:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [NTKCompanionUltraCubePhotosEditor alloc];
    v10 = [(NTKUltraCubeFace *)self device];
    v11 = [(NTKCompanionUltraCubePhotosEditor *)v9 initWithResourceDirectory:0 forDevice:v10];

    [(NTKCompanionUltraCubePhotosEditor *)v11 addAssetsFromAssetList:v12];
    v6[2](v6, v11);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (BOOL)hasSampleResourceDirectory
{
  v2 = [(NTKUltraCubeFace *)self _resourceDirectorySnapshotKey];
  v3 = [v2 hasPrefix:@"GalleryImage-"];

  return v3;
}

@end