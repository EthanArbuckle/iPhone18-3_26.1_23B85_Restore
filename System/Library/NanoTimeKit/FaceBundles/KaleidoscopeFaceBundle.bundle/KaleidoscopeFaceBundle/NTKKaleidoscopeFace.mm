@interface NTKKaleidoscopeFace
+ (BOOL)_customEditMode:(int64_t)mode hasActionForOption:(id)option forDevice:(id)device;
+ (BOOL)supportsExternalAssets;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_sortableFaceOfStyle:(int64_t)style withAssets:(id)assets;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error;
- (BOOL)_sanitizeFaceConfiguration:(id *)configuration;
- (BOOL)isUsingCustomAsset;
- (Class)_optionClassForCustomEditMode:(int64_t)mode resourceDirectoryExists:(BOOL)exists;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_resourceDirectorySnapshotKey;
- (id)addFaceDetailViewController;
- (id)copyWithZone:(_NSZone *)zone;
- (id)editOptionThatHidesAllComplications;
- (id)libraryDetailViewController;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)companionEditorWithAssets:(id)assets completion:(id)completion;
@end

@implementation NTKKaleidoscopeFace

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NTKKaleidoscopeFace;
  v4 = [(NTKKaleidoscopeFace *)&v8 copyWithZone:zone];
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 12)
  {
    device = [(NTKKaleidoscopeFace *)self device];
    v11 = [NTKKaleidoscopeAssetOption optionWithAsset:27 forDevice:device];
LABEL_8:
    v12 = v11;

    goto LABEL_10;
  }

  if (mode == 15)
  {
    device2 = [(NTKKaleidoscopeFace *)self device];
    deviceCategory = [device2 deviceCategory];

    if (deviceCategory == &dword_0 + 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    device = [(NTKKaleidoscopeFace *)self device];
    v11 = [NTKKaleidoscopeStyleOption optionWithStyle:v9 forDevice:device];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (BOOL)_customEditMode:(int64_t)mode hasActionForOption:(id)option forDevice:(id)device
{
  optionCopy = option;
  v7 = optionCopy;
  v8 = mode == 12 && [optionCopy asset] == stru_3D8.segname;

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKKaleidoscopeFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKKaleidoscopeFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKKaleidoscopeFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKKaleidoscopeFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKKaleidoscopeFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKKaleidoscopeFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode resourceDirectoryExists:(BOOL)exists
{
  if (mode == 12)
  {
    v5 = &off_244B8;
    if (!exists)
    {
      v5 = off_244B0;
    }

    v6 = *v5;
    v4 = objc_opt_class();
  }

  else if (mode == 15)
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
  resourceDirectory = [(NTKKaleidoscopeFace *)self resourceDirectory];
  if (!resourceDirectory)
  {
    goto LABEL_8;
  }

  v4 = resourceDirectory;
  v5 = +[NSFileManager defaultManager];
  resourceDirectory2 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v7 = [v5 fileExistsAtPath:resourceDirectory2];

  if (v7)
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    if (!cachedResourceDirectorySnapshotKey)
    {
      resourceDirectory3 = [(NTKKaleidoscopeFace *)self resourceDirectory];
      v10 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory3];

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

- (void)_updateForResourceDirectoryChange:(id)change
{
  cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
  self->_cachedResourceDirectorySnapshotKey = 0;

  resourceDirectory = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v7 = resourceDirectory;
  if (change)
  {

    if (v7)
    {
      return;
    }
  }

  else
  {
    if (!resourceDirectory)
    {
      return;
    }
  }

  [(NTKKaleidoscopeFace *)self _notifyObserversOptionsDidChangeForEditMode:12];
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 12)
  {
    v6 = @"EDIT_MODE_LABEL_IMAGE";
    v7 = @"<Image>";
    goto LABEL_5;
  }

  if (mode == 15)
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
  device = [(NTKKaleidoscopeFace *)self device];
  v3 = [NTKKaleidoscopeStyleOption optionWithStyle:3 forDevice:device];

  return v3;
}

- (BOOL)isUsingCustomAsset
{
  resourceDirectory = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v3 = resourceDirectory != 0;

  return v3;
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = objc_opt_new();
  v15 = v7;
  v8 = objc_opt_new();
  v16 = v8;
  v9 = objc_opt_new();
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v15 count:3];

  v11 = [NTKResourceDirectoryScrubber alloc];
  v12 = [v11 initWithOperations:{v10, v15, v16}];
  resourceDirectory = [(NTKKaleidoscopeFace *)self resourceDirectory];
  LOBYTE(error) = [v12 scrubDirectoryAtPath:resourceDirectory toDestinationPath:pathCopy error:error];

  return error;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)configuration
{
  resourceDirectory = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v6 = [NTKKaleidoscopeResourcesManifest manifestForResourceDirectory:resourceDirectory];

  if (!v6)
  {
    if (configuration)
    {
      [NSError errorWithDomain:kNTKResourceDirectoryDomain code:2003 userInfo:0];
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

  resourceDirectory2 = [(NTKKaleidoscopeFace *)self resourceDirectory];
  v8 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory2];

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

- (id)libraryDetailViewController
{
  v2 = [[NTKCFaceDetailViewController alloc] initWithLibraryFace:self];

  return v2;
}

- (id)addFaceDetailViewController
{
  v3 = [NTKCFaceDetailViewController alloc];
  externalAssets = [(NTKKaleidoscopeFace *)self externalAssets];
  v5 = [v3 initWithCandidateFace:self externalAssets:externalAssets];

  return v5;
}

+ (BOOL)supportsExternalAssets
{
  v2 = [self isSubclassOfClass:objc_opt_class()];
  v3 = +[CLKDevice currentDevice];
  v4 = NTKShowBlueRidgeUI();

  return v2 ^ v4 ^ 1;
}

+ (id)_sortableFaceOfStyle:(int64_t)style withAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count] == &dword_0 + 1)
  {
    v6 = +[CLKDevice currentDevice];
    v7 = [NTKFace defaultFaceOfStyle:style forDevice:v6];

    [v7 setExternalAssets:assetsCopy];
    device = [v7 device];
    v9 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:device];

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

- (void)companionEditorWithAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  firstObject = [assetsCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_C7C4;
  v21 = sub_C7D4;
  v10 = [NTKCompanionKaleidoscopeEditor alloc];
  device = [(NTKKaleidoscopeFace *)self device];
  v22 = [(NTKCompanionKaleidoscopeEditor *)v10 initWithResourceDirectory:0 forDevice:device];

  firstObject2 = [assetsCopy firstObject];
  v13 = v18[5];
  if (isKindOfClass)
  {
    v14 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_C7DC;
    v16[3] = &unk_24C88;
    v16[4] = completionCopy;
    v16[5] = &v17;
    [v13 setAsset:firstObject2 completion:v16];
  }

  else
  {
    v14 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_C838;
    v15[3] = &unk_24C88;
    v15[4] = completionCopy;
    v15[5] = &v17;
    [v13 setRawImage:firstObject2 completion:v15];
  }

  _Block_object_dispose(&v17, 8);
}

@end