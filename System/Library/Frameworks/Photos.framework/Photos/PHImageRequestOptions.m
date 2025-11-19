@interface PHImageRequestOptions
- (CGRect)normalizedCropRect;
- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable;
- (NSString)description;
- (PHImageRequestOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAllowSecondaryDegradedImage:(BOOL)allowSecondaryDegradedImage;
- (void)setOpportunisticDegradedImagesToReturn:(int64_t)a3;
- (void)setVideoFrameTime:(id *)a3;
@end

@implementation PHImageRequestOptions

- (PHImageRequestOptions)init
{
  v9.receiver = self;
  v9.super_class = PHImageRequestOptions;
  v2 = [(PHImageRequestOptions *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_loadingMode = 0;
    v2->_version = 0;
    v2->_deliveryMode = 0;
    if (init_r_onceToken != -1)
    {
      dispatch_once(&init_r_onceToken, &__block_literal_global_51655);
    }

    v4 = init_r_useFastResize;
    v5 = *(MEMORY[0x1E695F058] + 16);
    v3->_normalizedCropRect.origin = *MEMORY[0x1E695F058];
    v3->_normalizedCropRect.size = v5;
    v3->_networkAccessAllowed = 0;
    progressHandler = v3->_progressHandler;
    v3->_resizeMode = v4;
    v3->_progressHandler = 0;

    v3->_allowPlaceholder = 0;
    v3->_onlyUseFetchedAssetPropertiesDuringChoosing = 0;
    v3->_requestID = 0;
    v3->_useLimitedLibraryMode = PLIsLimitedLibraryClient();
    v7 = MEMORY[0x1E6960C70];
    *&v3->_videoFrameTime.value = *MEMORY[0x1E6960C70];
    v3->_videoFrameTime.epoch = *(v7 + 16);
    v3->_opportunisticDegradedImagesToReturn = 1;
    v3->_targetHDRHeadroom = 1.0;
    v3->_avoidDisplayingProgressUpdates = 0;
  }

  return v3;
}

uint64_t __29__PHImageRequestOptions_init__block_invoke()
{
  result = dyld_program_sdk_at_least();
  init_r_useFastResize = result;
  return result;
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable
{
  width = self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.width;
  height = self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setVideoFrameTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_videoFrameTime.epoch = a3->var3;
  *&self->_videoFrameTime.value = v3;
}

- (void)setOpportunisticDegradedImagesToReturn:(int64_t)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHImageManager.m" lineNumber:479 description:@"opportunisticDegradedImagesToReturn cannot be zero."];
  }

  self->_opportunisticDegradedImagesToReturn = a3;
}

- (void)setAllowSecondaryDegradedImage:(BOOL)allowSecondaryDegradedImage
{
  v3 = allowSecondaryDegradedImage;
  v5 = [(PHImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(PHImageRequestOptions *)self setOpportunisticDegradedImagesToReturn:v5 | v6];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"version="];
  if ([(PHImageRequestOptions *)self version]== PHImageRequestOptionsVersionOriginal)
  {
    v4 = @"orig";
  }

  else if ([(PHImageRequestOptions *)self version]== PHImageRequestOptionsVersionUnadjusted)
  {
    v4 = @"unadj";
  }

  else if ([(PHImageRequestOptions *)self version])
  {
    if ([(PHImageRequestOptions *)self version]!= 8)
    {
      goto LABEL_10;
    }

    v4 = @"penult";
  }

  else
  {
    v4 = @"curr";
  }

  [v3 appendString:v4];
LABEL_10:
  [(PHImageRequestOptions *)self normalizedCropRect];
  if (!CGRectEqualToRect(v21, *MEMORY[0x1E695F058]))
  {
    [(PHImageRequestOptions *)self normalizedCropRect];
    v6 = v5;
    [(PHImageRequestOptions *)self normalizedCropRect];
    v8 = v7;
    [(PHImageRequestOptions *)self normalizedCropRect];
    v10 = v9;
    [(PHImageRequestOptions *)self normalizedCropRect];
    [v3 appendFormat:@", cropRect={%0.3lf, %0.3lf, %0.3lfx%0.3lf}", v6, v8, v10, v11];
  }

  if ([(PHImageRequestOptions *)self resizeMode]== PHImageRequestOptionsResizeModeFast)
  {
    v12 = @", resize=fast";
  }

  else
  {
    if ([(PHImageRequestOptions *)self resizeMode]!= PHImageRequestOptionsResizeModeExact)
    {
      goto LABEL_17;
    }

    v12 = @", resize=exact";
  }

  [v3 appendString:v12];
LABEL_17:
  [v3 appendString:{@", delivery="}];
  if ([(PHImageRequestOptions *)self deliveryMode])
  {
    if ([(PHImageRequestOptions *)self deliveryMode]== PHImageRequestOptionsDeliveryModeHighQualityFormat)
    {
      v13 = @"ask";
    }

    else if ([(PHImageRequestOptions *)self deliveryMode]== PHImageRequestOptionsDeliveryModeFastFormat)
    {
      v13 = @"fst";
    }

    else if ([(PHImageRequestOptions *)self deliveryMode]== (PHImageRequestOptionsDeliveryModeFastFormat|PHImageRequestOptionsDeliveryModeHighQualityFormat))
    {
      v13 = @"ask-non-derivative";
    }

    else
    {
      if ([(PHImageRequestOptions *)self deliveryMode]!= 5)
      {
        goto LABEL_33;
      }

      v13 = @"sec";
    }

    goto LABEL_32;
  }

  [v3 appendString:@"ask+"];
  if (([(PHImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 1) != 0)
  {
    [v3 appendString:@"[fst"];
    if ([(PHImageRequestOptions *)self useAsyncForFastOpportunisticResult])
    {
      [v3 appendString:@"-async"];
    }

    [v3 appendString:@"]"];
  }

  if (([(PHImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 2) != 0)
  {
    v13 = @"[int]";
LABEL_32:
    [v3 appendString:v13];
  }

LABEL_33:
  [v3 appendString:{@", loading=img"}];
  if (([(PHImageRequestOptions *)self loadingMode]& 1) != 0)
  {
    [v3 appendString:@"+data"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x10000) != 0)
  {
    [v3 appendString:@"+URL"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x40000) != 0)
  {
    [v3 appendString:@"+BGRA"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x80000) != 0)
  {
    [v3 appendString:@"+hipriodec"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x100000) != 0)
  {
    [v3 appendString:@"+nofallback"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x200000) != 0)
  {
    [v3 appendString:@"+swjpeg"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x400000) != 0)
  {
    [v3 appendString:@"+lowmemdec"];
  }

  if ([(PHImageRequestOptions *)self isNetworkAccessAllowed])
  {
    [v3 appendString:@"+network"];
  }

  v14 = [(PHImageRequestOptions *)self downloadIntent];
  if (v14)
  {
    v15 = _PHDownloadIntentName(v14);
    v16 = _PHDownloadPriorityName([(PHImageRequestOptions *)self downloadPriority]);
    [v3 appendFormat:@"+downloadIntent:%@+downloadPriority:%@", v15, v16];
  }

  if (self->_videoFrameTime.flags)
  {
    time = self->_videoFrameTime;
    v17 = CMTimeCopyDescription(0, &time);
    [v3 appendFormat:@"+videoFrameTime:%@", v17];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setVersion:{-[PHImageRequestOptions version](self, "version")}];
  [v4 setDeliveryMode:{-[PHImageRequestOptions deliveryMode](self, "deliveryMode")}];
  [v4 setLoadingMode:{-[PHImageRequestOptions loadingMode](self, "loadingMode")}];
  [v4 setResizeMode:{-[PHImageRequestOptions resizeMode](self, "resizeMode")}];
  [(PHImageRequestOptions *)self normalizedCropRect];
  [v4 setNormalizedCropRect:?];
  [v4 setNetworkAccessAllowed:{-[PHImageRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [v4 setSynchronous:{-[PHImageRequestOptions isSynchronous](self, "isSynchronous")}];
  v5 = [(PHImageRequestOptions *)self progressHandler];
  [v4 setProgressHandler:v5];

  [v4 setAllowPlaceholder:{-[PHImageRequestOptions allowPlaceholder](self, "allowPlaceholder")}];
  v6 = [(PHImageRequestOptions *)self resultHandlerQueue];
  [v4 setResultHandlerQueue:v6];

  v7 = [(PHImageRequestOptions *)self cachingCompleteHandler];
  [v4 setCachingCompleteHandler:v7];

  [v4 setOnlyUseFetchedAssetPropertiesDuringChoosing:{-[PHImageRequestOptions onlyUseFetchedAssetPropertiesDuringChoosing](self, "onlyUseFetchedAssetPropertiesDuringChoosing")}];
  [v4 setIncludeHDRGainMap:{-[PHImageRequestOptions includeHDRGainMap](self, "includeHDRGainMap")}];
  [v4 setIncludeHDRGainMapInIntermediateImage:{-[PHImageRequestOptions includeHDRGainMapInIntermediateImage](self, "includeHDRGainMapInIntermediateImage")}];
  [v4 setPreferHDR:{-[PHImageRequestOptions preferHDR](self, "preferHDR")}];
  [(PHImageRequestOptions *)self targetHDRHeadroom];
  [v4 setTargetHDRHeadroom:?];
  [v4 setUseLowMemoryMode:{-[PHImageRequestOptions useLowMemoryMode](self, "useLowMemoryMode")}];
  [v4 setUseLimitedLibraryMode:{-[PHImageRequestOptions useLimitedLibraryMode](self, "useLimitedLibraryMode")}];
  [v4 setDownloadIntent:{-[PHImageRequestOptions downloadIntent](self, "downloadIntent")}];
  [v4 setDownloadPriority:{-[PHImageRequestOptions downloadPriority](self, "downloadPriority")}];
  [(PHImageRequestOptions *)self fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  [v4 setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:?];
  [v4 setCannotReturnSmallerImage:{-[PHImageRequestOptions cannotReturnSmallerImage](self, "cannotReturnSmallerImage")}];
  [v4 setIgnoreProcessWideRepairLimits:{-[PHImageRequestOptions ignoreProcessWideRepairLimits](self, "ignoreProcessWideRepairLimits")}];
  [(PHImageRequestOptions *)self videoFrameTime];
  [v4 setVideoFrameTime:v10];
  [v4 setChooseAlchemist:{-[PHImageRequestOptions chooseAlchemist](self, "chooseAlchemist")}];
  v8 = [(PHImageRequestOptions *)self contextualVideoThumbnailIdentifier];
  [v4 setContextualVideoThumbnailIdentifier:v8];

  [v4 setOpportunisticDegradedImagesToReturn:{-[PHImageRequestOptions opportunisticDegradedImagesToReturn](self, "opportunisticDegradedImagesToReturn")}];
  [v4 setUseAsyncForFastOpportunisticResult:{-[PHImageRequestOptions useAsyncForFastOpportunisticResult](self, "useAsyncForFastOpportunisticResult")}];
  [v4 setAvoidDisplayingProgressUpdates:{-[PHImageRequestOptions avoidDisplayingProgressUpdates](self, "avoidDisplayingProgressUpdates")}];
  return v4;
}

@end