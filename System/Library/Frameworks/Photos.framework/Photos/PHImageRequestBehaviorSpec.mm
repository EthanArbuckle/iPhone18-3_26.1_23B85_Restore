@interface PHImageRequestBehaviorSpec
+ (BOOL)_shouldLoadHDRGainMapBasedOnChoosingPolicy:(int64_t)policy options:(id)options;
+ (id)contentEditingInputImageBehaviorSpecForBaseVersion:(int64_t)version isNetworkAccessAllowed:(BOOL)allowed downloadIntent:(int64_t)intent shouldUseRAWAsUnadjustedBase:(BOOL)base asset:(id)asset;
+ (id)imageRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)spec options:(id)options asset:(id)asset;
+ (id)imageRequestInitialBehaviorSpecWithImageRequestOptions:(id)options asset:(id)asset;
+ (id)imageRequestIntermediateBehaviorSpecWithPreviousBehaviorSpec:(id)spec options:(id)options asset:(id)asset;
+ (id)livePhotoRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)spec options:(id)options;
+ (id)livePhotoRequestInitialBehaviorSpecWithLivePhotoRequestOptions:(id)options asset:(id)asset;
+ (unint64_t)loadingOptionsFromLoadingMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortDescription;
@end

@implementation PHImageRequestBehaviorSpec

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  shortDescription = [(PHImageRequestBehaviorSpec *)self shortDescription];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, shortDescription];

  return v7;
}

- (id)shortDescription
{
  choosingPolicy = self->_choosingPolicy;
  if (choosingPolicy > 4)
  {
    v4 = @"best";
  }

  else
  {
    v4 = off_1E75AA510[choosingPolicy];
  }

  v5 = MEMORY[0x1E696AEC0];
  networkAccessAllowed = self->_networkAccessAllowed;
  synchronous = self->_synchronous;
  loadingOptions = self->_loadingOptions;
  array = [MEMORY[0x1E695DF70] array];
  v10 = array;
  if (loadingOptions)
  {
    v11 = @"img";
  }

  else if ((loadingOptions & 2) != 0)
  {
    v11 = @"data";
  }

  else if ((loadingOptions & 4) != 0)
  {
    v11 = @"url";
  }

  else if ((loadingOptions & 8) != 0)
  {
    v11 = @"bgra";
  }

  else
  {
    if ((loadingOptions & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v11 = @"hipri";
  }

  [array addObject:v11];
LABEL_15:
  v12 = [v10 componentsJoinedByString:@"|"];

  version = self->_version;
  if (version <= 1)
  {
    if (version)
    {
      if (version == 1)
      {
        v14 = @"unadj";
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = @"curr";
    }
  }

  else
  {
    switch(version)
    {
      case 2:
        v14 = @"orig";
        break;
      case 8:
        v14 = @"penult";
        break;
      case 16:
        v14 = @"adjustment";
        break;
      default:
        v14 = 0;
        break;
    }
  }

  resizeMode = self->_resizeMode;
  if (resizeMode > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E75AA538[resizeMode];
  }

  if (synchronous)
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  if (networkAccessAllowed)
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  if (self->_allowPlaceholder)
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  v20 = _PHDownloadIntentName(self->_downloadIntent);
  v21 = _PHDownloadPriorityName(self->_downloadPriority);
  v22 = [v5 stringWithFormat:@"net: %@, sync: %@, choose: %@, load: %@, ver: %@, resize: %@, allow-pl-hdr: %@, intent: %@, priority: %@", v18, v17, v4, v12, v14, v16, v19, v20, v21];

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(PHImageRequestBehaviorSpec);
  *(result + 3) = self->_choosingPolicy;
  *(result + 4) = self->_loadingOptions;
  *(result + 5) = self->_version;
  *(result + 8) = self->_synchronous;
  *(result + 9) = self->_networkAccessAllowed;
  *(result + 10) = self->_allowPlaceholder;
  *(result + 6) = self->_resizeMode;
  *(result + 11) = self->_onlyUseFetchedAssetPropertiesDuringChoosing;
  *(result + 12) = self->_includeHDRGainMap;
  *(result + 13) = self->_includeHDRGainMapInIntermediateImage;
  *(result + 14) = self->_decodeAsHDR;
  *(result + 15) = self->_disableImageIOForHDR;
  *(result + 7) = *&self->_targetHDRHeadroom;
  *(result + 8) = *&self->_minimumTableThumbnailLongSide;
  *(result + 16) = self->_useLowMemoryMode;
  *(result + 17) = self->_useLimitedLibraryMode;
  *(result + 9) = self->_downloadIntent;
  *(result + 10) = self->_downloadPriority;
  *(result + 18) = self->_cannotReturnSmallerImage;
  return result;
}

+ (BOOL)_shouldLoadHDRGainMapBasedOnChoosingPolicy:(int64_t)policy options:(id)options
{
  optionsCopy = options;
  v6 = optionsCopy;
  if ((policy - 3) >= 2)
  {
    if (policy != 2 || ![optionsCopy includeHDRGainMap])
    {
      v8 = 0;
      goto LABEL_8;
    }

    includeHDRGainMapInIntermediateImage = [v6 includeHDRGainMapInIntermediateImage];
  }

  else
  {
    includeHDRGainMapInIntermediateImage = [optionsCopy includeHDRGainMap];
  }

  v8 = includeHDRGainMapInIntermediateImage;
LABEL_8:

  return v8;
}

+ (unint64_t)loadingOptionsFromLoadingMode:(int64_t)mode
{
  v3 = (mode & 0xFC0000) != 0 || mode == 0;
  v4 = (mode >> 15) & 0x1F8;
  if (v3)
  {
    return ((mode >> 14) & 4 | (2 * (mode & 1)) | v4) + 1;
  }

  else
  {
    return (mode >> 14) & 4 | (2 * (mode & 1)) | v4;
  }
}

+ (id)livePhotoRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)spec options:(id)options
{
  optionsCopy = options;
  v7 = [spec copy];
  [v7 setSynchronous:0];
  [v7 setChoosingPolicy:3];
  preferHDR = [optionsCopy preferHDR];

  [v7 setDecodeAsHDR:{objc_msgSend(self, "_shouldDecodeAsHDRBasedOnChoosingPolicy:optionsPreferHDR:", 3, preferHDR)}];

  return v7;
}

+ (id)livePhotoRequestInitialBehaviorSpecWithLivePhotoRequestOptions:(id)options asset:(id)asset
{
  optionsCopy = options;
  deliveryMode = [optionsCopy deliveryMode];
  v7 = objc_alloc_init(PHImageRequestBehaviorSpec);
  [(PHImageRequestBehaviorSpec *)v7 setLoadingOptions:1];
  v8 = deliveryMode == 0;
  v9 = 3;
  if (!deliveryMode)
  {
    v9 = 1;
  }

  if (deliveryMode == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [(PHImageRequestBehaviorSpec *)v7 setChoosingPolicy:v10];
  -[PHImageRequestBehaviorSpec setNetworkAccessAllowed:](v7, "setNetworkAccessAllowed:", [optionsCopy isNetworkAccessAllowed]);
  -[PHImageRequestBehaviorSpec setVersion:](v7, "setVersion:", [optionsCopy version]);
  -[PHImageRequestBehaviorSpec setDownloadIntent:](v7, "setDownloadIntent:", [optionsCopy downloadIntent]);
  -[PHImageRequestBehaviorSpec setDownloadPriority:](v7, "setDownloadPriority:", [optionsCopy downloadPriority]);
  preferHDR = [optionsCopy preferHDR];

  -[PHImageRequestBehaviorSpec setDecodeAsHDR:](v7, "setDecodeAsHDR:", [self _shouldDecodeAsHDRBasedOnChoosingPolicy:v10 optionsPreferHDR:preferHDR]);
  [(PHImageRequestBehaviorSpec *)v7 setResizeMode:1];
  [(PHImageRequestBehaviorSpec *)v7 setSynchronous:v8];

  return v7;
}

+ (id)imageRequestIntermediateBehaviorSpecWithPreviousBehaviorSpec:(id)spec options:(id)options asset:(id)asset
{
  optionsCopy = options;
  v8 = [spec copy];
  [v8 setSynchronous:0];
  [v8 setNetworkAccessAllowed:0];
  [v8 setChoosingPolicy:2];
  [v8 setIncludeHDRGainMap:{objc_msgSend(self, "_shouldLoadHDRGainMapBasedOnChoosingPolicy:options:", 2, optionsCopy)}];
  [v8 setDecodeAsHDR:{objc_msgSend(self, "_shouldDecodeAsHDRBasedOnChoosingPolicy:optionsPreferHDR:", 2, objc_msgSend(optionsCopy, "preferHDR"))}];
  [optionsCopy targetHDRHeadroom];
  v10 = v9;

  [v8 setTargetHDRHeadroom:v10];
  [v8 setAllowPlaceholder:0];

  return v8;
}

+ (id)imageRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)spec options:(id)options asset:(id)asset
{
  optionsCopy = options;
  v8 = [spec copy];
  [v8 setSynchronous:{objc_msgSend(optionsCopy, "isSynchronous")}];
  [v8 setChoosingPolicy:3];
  [v8 setIncludeHDRGainMap:{objc_msgSend(self, "_shouldLoadHDRGainMapBasedOnChoosingPolicy:options:", 3, optionsCopy)}];
  [v8 setDecodeAsHDR:{objc_msgSend(self, "_shouldDecodeAsHDRBasedOnChoosingPolicy:optionsPreferHDR:", 3, objc_msgSend(optionsCopy, "preferHDR"))}];
  [optionsCopy targetHDRHeadroom];
  [v8 setTargetHDRHeadroom:?];
  isNetworkAccessAllowed = [optionsCopy isNetworkAccessAllowed];

  [v8 setNetworkAccessAllowed:isNetworkAccessAllowed];

  return v8;
}

+ (id)imageRequestInitialBehaviorSpecWithImageRequestOptions:(id)options asset:(id)asset
{
  optionsCopy = options;
  deliveryMode = [optionsCopy deliveryMode];
  v7 = 3;
  if (deliveryMode > 2)
  {
    if (deliveryMode == 5)
    {
      v7 = 2;
    }

    v8 = deliveryMode == 3 || deliveryMode != 5;
    if (deliveryMode == 3)
    {
      v9 = 4;
    }

    else
    {
      v9 = v7;
    }
  }

  else if (deliveryMode)
  {
    v8 = deliveryMode != 2;
    if (deliveryMode == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }
  }

  else if ([optionsCopy isSynchronous])
  {
    v8 = 1;
    v9 = 3;
  }

  else
  {
    v8 = 0;
    if ([optionsCopy opportunisticDegradedImagesToReturn] == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  v10 = +[PHImageRequestBehaviorSpec loadingOptionsFromLoadingMode:](PHImageRequestBehaviorSpec, "loadingOptionsFromLoadingMode:", [optionsCopy loadingMode]);
  v11 = objc_alloc_init(PHImageRequestBehaviorSpec);
  [(PHImageRequestBehaviorSpec *)v11 setChoosingPolicy:v9];
  [(PHImageRequestBehaviorSpec *)v11 setLoadingOptions:v10];
  -[PHImageRequestBehaviorSpec setAllowPlaceholder:](v11, "setAllowPlaceholder:", [optionsCopy allowPlaceholder]);
  if (v8)
  {
    isNetworkAccessAllowed = [optionsCopy isNetworkAccessAllowed];
  }

  else
  {
    isNetworkAccessAllowed = 0;
  }

  [(PHImageRequestBehaviorSpec *)v11 setNetworkAccessAllowed:isNetworkAccessAllowed];
  -[PHImageRequestBehaviorSpec setVersion:](v11, "setVersion:", [optionsCopy version]);
  -[PHImageRequestBehaviorSpec setResizeMode:](v11, "setResizeMode:", [optionsCopy resizeMode]);
  -[PHImageRequestBehaviorSpec setOnlyUseFetchedAssetPropertiesDuringChoosing:](v11, "setOnlyUseFetchedAssetPropertiesDuringChoosing:", [optionsCopy onlyUseFetchedAssetPropertiesDuringChoosing]);
  -[PHImageRequestBehaviorSpec setIncludeHDRGainMap:](v11, "setIncludeHDRGainMap:", [self _shouldLoadHDRGainMapBasedOnChoosingPolicy:v9 options:optionsCopy]);
  -[PHImageRequestBehaviorSpec setDecodeAsHDR:](v11, "setDecodeAsHDR:", [self _shouldDecodeAsHDRBasedOnChoosingPolicy:v9 optionsPreferHDR:{objc_msgSend(optionsCopy, "preferHDR")}]);
  [(PHImageRequestBehaviorSpec *)v11 setDisableImageIOForHDR:(v10 >> 8) & 1];
  [optionsCopy targetHDRHeadroom];
  [(PHImageRequestBehaviorSpec *)v11 setTargetHDRHeadroom:?];
  -[PHImageRequestBehaviorSpec setUseLowMemoryMode:](v11, "setUseLowMemoryMode:", [optionsCopy useLowMemoryMode]);
  -[PHImageRequestBehaviorSpec setUseLimitedLibraryMode:](v11, "setUseLimitedLibraryMode:", [optionsCopy useLimitedLibraryMode]);
  loadingMode = [optionsCopy loadingMode];
  v14 = 100.0;
  if ((loadingMode & 0x400000) == 0)
  {
    v14 = 0.0;
  }

  [(PHImageRequestBehaviorSpec *)v11 setMinimumTableThumbnailLongSide:v14];
  if ([optionsCopy deliveryMode])
  {
    isSynchronous = [optionsCopy isSynchronous];
  }

  else if ([optionsCopy opportunisticDegradedImagesToReturn])
  {
    isSynchronous = [optionsCopy useAsyncForFastOpportunisticResult] ^ 1;
  }

  else
  {
    isSynchronous = 0;
  }

  [(PHImageRequestBehaviorSpec *)v11 setSynchronous:isSynchronous];
  -[PHImageRequestBehaviorSpec setDownloadIntent:](v11, "setDownloadIntent:", [optionsCopy downloadIntent]);
  -[PHImageRequestBehaviorSpec setDownloadPriority:](v11, "setDownloadPriority:", [optionsCopy downloadPriority]);
  -[PHImageRequestBehaviorSpec setCannotReturnSmallerImage:](v11, "setCannotReturnSmallerImage:", [optionsCopy cannotReturnSmallerImage]);

  return v11;
}

+ (id)contentEditingInputImageBehaviorSpecForBaseVersion:(int64_t)version isNetworkAccessAllowed:(BOOL)allowed downloadIntent:(int64_t)intent shouldUseRAWAsUnadjustedBase:(BOOL)base asset:(id)asset
{
  allowedCopy = allowed;
  assetCopy = asset;
  v12 = objc_alloc_init(PHImageRequestBehaviorSpec);
  [(PHImageRequestBehaviorSpec *)v12 setChoosingPolicy:3];
  [(PHImageRequestBehaviorSpec *)v12 setLoadingOptions:4];
  [(PHImageRequestBehaviorSpec *)v12 setNetworkAccessAllowed:allowedCopy];
  [(PHImageRequestBehaviorSpec *)v12 setDownloadIntent:intent];
  mediaSubtypes = [assetCopy mediaSubtypes];

  [(PHImageRequestBehaviorSpec *)v12 setIncludeHDRGainMap:(mediaSubtypes >> 9) & 1];
  if (version || !base)
  {
    v14 = [PHAdjustmentData imageRequestVersionFromAdjustmentBaseVersion:version];
  }

  else
  {
    v14 = 2;
  }

  [(PHImageRequestBehaviorSpec *)v12 setVersion:v14];

  return v12;
}

@end