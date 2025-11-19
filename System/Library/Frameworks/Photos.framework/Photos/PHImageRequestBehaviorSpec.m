@interface PHImageRequestBehaviorSpec
+ (BOOL)_shouldLoadHDRGainMapBasedOnChoosingPolicy:(int64_t)a3 options:(id)a4;
+ (id)contentEditingInputImageBehaviorSpecForBaseVersion:(int64_t)a3 isNetworkAccessAllowed:(BOOL)a4 downloadIntent:(int64_t)a5 shouldUseRAWAsUnadjustedBase:(BOOL)a6 asset:(id)a7;
+ (id)imageRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)a3 options:(id)a4 asset:(id)a5;
+ (id)imageRequestInitialBehaviorSpecWithImageRequestOptions:(id)a3 asset:(id)a4;
+ (id)imageRequestIntermediateBehaviorSpecWithPreviousBehaviorSpec:(id)a3 options:(id)a4 asset:(id)a5;
+ (id)livePhotoRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)a3 options:(id)a4;
+ (id)livePhotoRequestInitialBehaviorSpecWithLivePhotoRequestOptions:(id)a3 asset:(id)a4;
+ (unint64_t)loadingOptionsFromLoadingMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)shortDescription;
@end

@implementation PHImageRequestBehaviorSpec

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PHImageRequestBehaviorSpec *)self shortDescription];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

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
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = v9;
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

  [v9 addObject:v11];
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

- (id)copyWithZone:(_NSZone *)a3
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

+ (BOOL)_shouldLoadHDRGainMapBasedOnChoosingPolicy:(int64_t)a3 options:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ((a3 - 3) >= 2)
  {
    if (a3 != 2 || ![v5 includeHDRGainMap])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [v6 includeHDRGainMapInIntermediateImage];
  }

  else
  {
    v7 = [v5 includeHDRGainMap];
  }

  v8 = v7;
LABEL_8:

  return v8;
}

+ (unint64_t)loadingOptionsFromLoadingMode:(int64_t)a3
{
  v3 = (a3 & 0xFC0000) != 0 || a3 == 0;
  v4 = (a3 >> 15) & 0x1F8;
  if (v3)
  {
    return ((a3 >> 14) & 4 | (2 * (a3 & 1)) | v4) + 1;
  }

  else
  {
    return (a3 >> 14) & 4 | (2 * (a3 & 1)) | v4;
  }
}

+ (id)livePhotoRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [v7 setSynchronous:0];
  [v7 setChoosingPolicy:3];
  v8 = [v6 preferHDR];

  [v7 setDecodeAsHDR:{objc_msgSend(a1, "_shouldDecodeAsHDRBasedOnChoosingPolicy:optionsPreferHDR:", 3, v8)}];

  return v7;
}

+ (id)livePhotoRequestInitialBehaviorSpecWithLivePhotoRequestOptions:(id)a3 asset:(id)a4
{
  v5 = a3;
  v6 = [v5 deliveryMode];
  v7 = objc_alloc_init(PHImageRequestBehaviorSpec);
  [(PHImageRequestBehaviorSpec *)v7 setLoadingOptions:1];
  v8 = v6 == 0;
  v9 = 3;
  if (!v6)
  {
    v9 = 1;
  }

  if (v6 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [(PHImageRequestBehaviorSpec *)v7 setChoosingPolicy:v10];
  -[PHImageRequestBehaviorSpec setNetworkAccessAllowed:](v7, "setNetworkAccessAllowed:", [v5 isNetworkAccessAllowed]);
  -[PHImageRequestBehaviorSpec setVersion:](v7, "setVersion:", [v5 version]);
  -[PHImageRequestBehaviorSpec setDownloadIntent:](v7, "setDownloadIntent:", [v5 downloadIntent]);
  -[PHImageRequestBehaviorSpec setDownloadPriority:](v7, "setDownloadPriority:", [v5 downloadPriority]);
  v11 = [v5 preferHDR];

  -[PHImageRequestBehaviorSpec setDecodeAsHDR:](v7, "setDecodeAsHDR:", [a1 _shouldDecodeAsHDRBasedOnChoosingPolicy:v10 optionsPreferHDR:v11]);
  [(PHImageRequestBehaviorSpec *)v7 setResizeMode:1];
  [(PHImageRequestBehaviorSpec *)v7 setSynchronous:v8];

  return v7;
}

+ (id)imageRequestIntermediateBehaviorSpecWithPreviousBehaviorSpec:(id)a3 options:(id)a4 asset:(id)a5
{
  v7 = a4;
  v8 = [a3 copy];
  [v8 setSynchronous:0];
  [v8 setNetworkAccessAllowed:0];
  [v8 setChoosingPolicy:2];
  [v8 setIncludeHDRGainMap:{objc_msgSend(a1, "_shouldLoadHDRGainMapBasedOnChoosingPolicy:options:", 2, v7)}];
  [v8 setDecodeAsHDR:{objc_msgSend(a1, "_shouldDecodeAsHDRBasedOnChoosingPolicy:optionsPreferHDR:", 2, objc_msgSend(v7, "preferHDR"))}];
  [v7 targetHDRHeadroom];
  v10 = v9;

  [v8 setTargetHDRHeadroom:v10];
  [v8 setAllowPlaceholder:0];

  return v8;
}

+ (id)imageRequestBestBehaviorSpecWithPreviousBehaviorSpec:(id)a3 options:(id)a4 asset:(id)a5
{
  v7 = a4;
  v8 = [a3 copy];
  [v8 setSynchronous:{objc_msgSend(v7, "isSynchronous")}];
  [v8 setChoosingPolicy:3];
  [v8 setIncludeHDRGainMap:{objc_msgSend(a1, "_shouldLoadHDRGainMapBasedOnChoosingPolicy:options:", 3, v7)}];
  [v8 setDecodeAsHDR:{objc_msgSend(a1, "_shouldDecodeAsHDRBasedOnChoosingPolicy:optionsPreferHDR:", 3, objc_msgSend(v7, "preferHDR"))}];
  [v7 targetHDRHeadroom];
  [v8 setTargetHDRHeadroom:?];
  v9 = [v7 isNetworkAccessAllowed];

  [v8 setNetworkAccessAllowed:v9];

  return v8;
}

+ (id)imageRequestInitialBehaviorSpecWithImageRequestOptions:(id)a3 asset:(id)a4
{
  v5 = a3;
  v6 = [v5 deliveryMode];
  v7 = 3;
  if (v6 > 2)
  {
    if (v6 == 5)
    {
      v7 = 2;
    }

    v8 = v6 == 3 || v6 != 5;
    if (v6 == 3)
    {
      v9 = 4;
    }

    else
    {
      v9 = v7;
    }
  }

  else if (v6)
  {
    v8 = v6 != 2;
    if (v6 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }
  }

  else if ([v5 isSynchronous])
  {
    v8 = 1;
    v9 = 3;
  }

  else
  {
    v8 = 0;
    if ([v5 opportunisticDegradedImagesToReturn] == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  v10 = +[PHImageRequestBehaviorSpec loadingOptionsFromLoadingMode:](PHImageRequestBehaviorSpec, "loadingOptionsFromLoadingMode:", [v5 loadingMode]);
  v11 = objc_alloc_init(PHImageRequestBehaviorSpec);
  [(PHImageRequestBehaviorSpec *)v11 setChoosingPolicy:v9];
  [(PHImageRequestBehaviorSpec *)v11 setLoadingOptions:v10];
  -[PHImageRequestBehaviorSpec setAllowPlaceholder:](v11, "setAllowPlaceholder:", [v5 allowPlaceholder]);
  if (v8)
  {
    v12 = [v5 isNetworkAccessAllowed];
  }

  else
  {
    v12 = 0;
  }

  [(PHImageRequestBehaviorSpec *)v11 setNetworkAccessAllowed:v12];
  -[PHImageRequestBehaviorSpec setVersion:](v11, "setVersion:", [v5 version]);
  -[PHImageRequestBehaviorSpec setResizeMode:](v11, "setResizeMode:", [v5 resizeMode]);
  -[PHImageRequestBehaviorSpec setOnlyUseFetchedAssetPropertiesDuringChoosing:](v11, "setOnlyUseFetchedAssetPropertiesDuringChoosing:", [v5 onlyUseFetchedAssetPropertiesDuringChoosing]);
  -[PHImageRequestBehaviorSpec setIncludeHDRGainMap:](v11, "setIncludeHDRGainMap:", [a1 _shouldLoadHDRGainMapBasedOnChoosingPolicy:v9 options:v5]);
  -[PHImageRequestBehaviorSpec setDecodeAsHDR:](v11, "setDecodeAsHDR:", [a1 _shouldDecodeAsHDRBasedOnChoosingPolicy:v9 optionsPreferHDR:{objc_msgSend(v5, "preferHDR")}]);
  [(PHImageRequestBehaviorSpec *)v11 setDisableImageIOForHDR:(v10 >> 8) & 1];
  [v5 targetHDRHeadroom];
  [(PHImageRequestBehaviorSpec *)v11 setTargetHDRHeadroom:?];
  -[PHImageRequestBehaviorSpec setUseLowMemoryMode:](v11, "setUseLowMemoryMode:", [v5 useLowMemoryMode]);
  -[PHImageRequestBehaviorSpec setUseLimitedLibraryMode:](v11, "setUseLimitedLibraryMode:", [v5 useLimitedLibraryMode]);
  v13 = [v5 loadingMode];
  v14 = 100.0;
  if ((v13 & 0x400000) == 0)
  {
    v14 = 0.0;
  }

  [(PHImageRequestBehaviorSpec *)v11 setMinimumTableThumbnailLongSide:v14];
  if ([v5 deliveryMode])
  {
    v15 = [v5 isSynchronous];
  }

  else if ([v5 opportunisticDegradedImagesToReturn])
  {
    v15 = [v5 useAsyncForFastOpportunisticResult] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  [(PHImageRequestBehaviorSpec *)v11 setSynchronous:v15];
  -[PHImageRequestBehaviorSpec setDownloadIntent:](v11, "setDownloadIntent:", [v5 downloadIntent]);
  -[PHImageRequestBehaviorSpec setDownloadPriority:](v11, "setDownloadPriority:", [v5 downloadPriority]);
  -[PHImageRequestBehaviorSpec setCannotReturnSmallerImage:](v11, "setCannotReturnSmallerImage:", [v5 cannotReturnSmallerImage]);

  return v11;
}

+ (id)contentEditingInputImageBehaviorSpecForBaseVersion:(int64_t)a3 isNetworkAccessAllowed:(BOOL)a4 downloadIntent:(int64_t)a5 shouldUseRAWAsUnadjustedBase:(BOOL)a6 asset:(id)a7
{
  v9 = a4;
  v11 = a7;
  v12 = objc_alloc_init(PHImageRequestBehaviorSpec);
  [(PHImageRequestBehaviorSpec *)v12 setChoosingPolicy:3];
  [(PHImageRequestBehaviorSpec *)v12 setLoadingOptions:4];
  [(PHImageRequestBehaviorSpec *)v12 setNetworkAccessAllowed:v9];
  [(PHImageRequestBehaviorSpec *)v12 setDownloadIntent:a5];
  v13 = [v11 mediaSubtypes];

  [(PHImageRequestBehaviorSpec *)v12 setIncludeHDRGainMap:(v13 >> 9) & 1];
  if (a3 || !a6)
  {
    v14 = [PHAdjustmentData imageRequestVersionFromAdjustmentBaseVersion:a3];
  }

  else
  {
    v14 = 2;
  }

  [(PHImageRequestBehaviorSpec *)v12 setVersion:v14];

  return v12;
}

@end