@interface NTKKaleidoscopeFace
+ (BOOL)_customEditMode:(int64_t)a3 hasActionForOption:(id)a4 forDevice:(id)a5;
+ (BOOL)supportsExternalAssets;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_sortableFaceOfStyle:(int64_t)a3 withAssets:(id)a4;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4;
- (BOOL)_sanitizeFaceConfiguration:(id *)a3;
- (BOOL)isUsingCustomAsset;
- (Class)_optionClassForCustomEditMode:(int64_t)a3 resourceDirectoryExists:(BOOL)a4;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_resourceDirectorySnapshotKey;
- (id)addFaceDetailViewController;
- (id)copyWithZone:(_NSZone *)a3;
- (id)editOptionThatHidesAllComplications;
- (id)libraryDetailViewController;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_updateForResourceDirectoryChange:(id)a3;
- (void)companionEditorWithAssets:(id)a3 completion:(id)a4;
@end

@implementation NTKKaleidoscopeFace

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NTKKaleidoscopeFace;
  v4 = [(NTKKaleidoscopeFace *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_cachedResourceDirectorySnapshotKey copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSmallComplicationTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v12[0] = NTKComplicationSlotTopLeft;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotBottomCenter;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomCenter;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 12)
  {
    v10 = [(NTKKaleidoscopeFace *)self device];
    v11 = [NTKKaleidoscopeAssetOption optionWithAsset:27 forDevice:v10];
LABEL_8:
    v12 = v11;

    goto LABEL_10;
  }

  if (a3 == 15)
  {
    v7 = [(NTKKaleidoscopeFace *)self device];
    v8 = [v7 deviceCategory];

    if (v8 == &dword_0 + 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    v10 = [(NTKKaleidoscopeFace *)self device];
    v11 = [NTKKaleidoscopeStyleOption optionWithStyle:v9 forDevice:v10];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (BOOL)_customEditMode:(int64_t)a3 hasActionForOption:(id)a4 forDevice:(id)a5
{
  v6 = a4;
  v7 = v6;
  v8 = a3 == 12 && [v6 asset] == stru_3D8.segname;

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKKaleidoscopeFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKKaleidoscopeFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKKaleidoscopeFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKKaleidoscopeFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKKaleidoscopeFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKKaleidoscopeFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3 resourceDirectoryExists:(BOOL)a4
{
  if (a3 == 12)
  {
    v5 = &off_244B8;
    if (!a4)
    {
      v5 = off_244B0;
    }

    v6 = *v5;
    v4 = objc_opt_class();
  }

  else if (a3 == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resourceDirectorySnapshotKey
{
  v3 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = +[NSFileManager defaultManager];
  v6 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    if (!cachedResourceDirectorySnapshotKey)
    {
      v9 = [(NTKKaleidoscopeFace *)self resourceDirectory];
      v10 = [NTKPhotosReader readerForResourceDirectory:v9];

      if ([v10 count])
      {
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = NTKUniqueIDForNTKPhoto();
        v13 = self->_cachedResourceDirectorySnapshotKey;
        self->_cachedResourceDirectorySnapshotKey = v12;
      }

      cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    }

    v14 = cachedResourceDirectorySnapshotKey;
  }

  else
  {
LABEL_8:
    v15 = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = 0;

    v14 = 0;
  }

  return v14;
}

- (void)_updateForResourceDirectoryChange:(id)a3
{
  cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
  self->_cachedResourceDirectorySnapshotKey = 0;

  v6 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v7 = v6;
  if (a3)
  {

    if (v7)
    {
      return;
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }
  }

  [(NTKKaleidoscopeFace *)self _notifyObserversOptionsDidChangeForEditMode:12];
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (a3 == 12)
  {
    v6 = @"EDIT_MODE_LABEL_IMAGE";
    v7 = @"<Image>";
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v6 = @"EDIT_MODE_LABEL_STYLE";
    v7 = @"<Style>";
LABEL_5:
    v8 = [NTKKaleidoscopeFaceBundle localizedStringForKey:v6 comment:v7];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)editOptionThatHidesAllComplications
{
  v2 = [(NTKKaleidoscopeFace *)self device];
  v3 = [NTKKaleidoscopeStyleOption optionWithStyle:3 forDevice:v2];

  return v3;
}

- (BOOL)isUsingCustomAsset
{
  v2 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v15 = v7;
  v8 = objc_opt_new();
  v16 = v8;
  v9 = objc_opt_new();
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v15 count:3];

  v11 = [NTKResourceDirectoryScrubber alloc];
  v12 = [v11 initWithOperations:{v10, v15, v16}];
  v13 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  LOBYTE(a4) = [v12 scrubDirectoryAtPath:v13 toDestinationPath:v6 error:a4];

  return a4;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)a3
{
  v5 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v6 = [NTKKaleidoscopeResourcesManifest manifestForResourceDirectory:v5];

  if (!v6)
  {
    if (a3)
    {
      [NSError errorWithDomain:kNTKResourceDirectoryDomain code:2003 userInfo:0];
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

  v7 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v8 = [NTKPhotosReader readerForResourceDirectory:v7];

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

- (id)libraryDetailViewController
{
  v2 = [[NTKCFaceDetailViewController alloc] initWithLibraryFace:self];

  return v2;
}

- (id)addFaceDetailViewController
{
  v3 = [NTKCFaceDetailViewController alloc];
  v4 = [(NTKKaleidoscopeFace *)self externalAssets];
  v5 = [v3 initWithCandidateFace:self externalAssets:v4];

  return v5;
}

+ (BOOL)supportsExternalAssets
{
  v2 = [a1 isSubclassOfClass:objc_opt_class()];
  v3 = +[CLKDevice currentDevice];
  v4 = NTKShowBlueRidgeUI();

  return v2 ^ v4 ^ 1;
}

+ (id)_sortableFaceOfStyle:(int64_t)a3 withAssets:(id)a4
{
  v5 = a4;
  if ([v5 count] == &dword_0 + 1)
  {
    v6 = +[CLKDevice currentDevice];
    v7 = [NTKFace defaultFaceOfStyle:a3 forDevice:v6];

    [v7 setExternalAssets:v5];
    v8 = [v7 device];
    v9 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v8];

    [v7 selectOption:v9 forCustomEditMode:12 slot:0];
    if (v7)
    {
      v10 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v7 priority:100];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)companionEditorWithAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_C7C4;
  v21 = sub_C7D4;
  v10 = [NTKCompanionKaleidoscopeEditor alloc];
  v11 = [(NTKKaleidoscopeFace *)self device];
  v22 = [(NTKCompanionKaleidoscopeEditor *)v10 initWithResourceDirectory:0 forDevice:v11];

  v12 = [v6 firstObject];
  v13 = v18[5];
  if (isKindOfClass)
  {
    v14 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_C7DC;
    v16[3] = &unk_24C88;
    v16[4] = v7;
    v16[5] = &v17;
    [v13 setAsset:v12 completion:v16];
  }

  else
  {
    v14 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_C838;
    v15[3] = &unk_24C88;
    v15[4] = v7;
    v15[5] = &v17;
    [v13 setRawImage:v12 completion:v15];
  }

  _Block_object_dispose(&v17, 8);
}

@end