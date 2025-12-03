@interface PHImageRequestOptions
- (CGRect)normalizedCropRect;
- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable;
- (NSString)description;
- (PHImageRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAllowSecondaryDegradedImage:(BOOL)allowSecondaryDegradedImage;
- (void)setOpportunisticDegradedImagesToReturn:(int64_t)return;
- (void)setVideoFrameTime:(id *)time;
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

- (void)setVideoFrameTime:(id *)time
{
  v3 = *&time->var0;
  self->_videoFrameTime.epoch = time->var3;
  *&self->_videoFrameTime.value = v3;
}

- (void)setOpportunisticDegradedImagesToReturn:(int64_t)return
{
  if (!return)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageManager.m" lineNumber:479 description:@"opportunisticDegradedImagesToReturn cannot be zero."];
  }

  self->_opportunisticDegradedImagesToReturn = return;
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
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"version="];
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

  [string appendString:v4];
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
    [string appendFormat:@", cropRect={%0.3lf, %0.3lf, %0.3lfx%0.3lf}", v6, v8, v10, v11];
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

  [string appendString:v12];
LABEL_17:
  [string appendString:{@", delivery="}];
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

  [string appendString:@"ask+"];
  if (([(PHImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 1) != 0)
  {
    [string appendString:@"[fst"];
    if ([(PHImageRequestOptions *)self useAsyncForFastOpportunisticResult])
    {
      [string appendString:@"-async"];
    }

    [string appendString:@"]"];
  }

  if (([(PHImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 2) != 0)
  {
    v13 = @"[int]";
LABEL_32:
    [string appendString:v13];
  }

LABEL_33:
  [string appendString:{@", loading=img"}];
  if (([(PHImageRequestOptions *)self loadingMode]& 1) != 0)
  {
    [string appendString:@"+data"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x10000) != 0)
  {
    [string appendString:@"+URL"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x40000) != 0)
  {
    [string appendString:@"+BGRA"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x80000) != 0)
  {
    [string appendString:@"+hipriodec"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x100000) != 0)
  {
    [string appendString:@"+nofallback"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x200000) != 0)
  {
    [string appendString:@"+swjpeg"];
  }

  if (([(PHImageRequestOptions *)self loadingMode]& 0x400000) != 0)
  {
    [string appendString:@"+lowmemdec"];
  }

  if ([(PHImageRequestOptions *)self isNetworkAccessAllowed])
  {
    [string appendString:@"+network"];
  }

  downloadIntent = [(PHImageRequestOptions *)self downloadIntent];
  if (downloadIntent)
  {
    v15 = _PHDownloadIntentName(downloadIntent);
    v16 = _PHDownloadPriorityName([(PHImageRequestOptions *)self downloadPriority]);
    [string appendFormat:@"+downloadIntent:%@+downloadPriority:%@", v15, v16];
  }

  if (self->_videoFrameTime.flags)
  {
    time = self->_videoFrameTime;
    v17 = CMTimeCopyDescription(0, &time);
    [string appendFormat:@"+videoFrameTime:%@", v17];
  }

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setVersion:{-[PHImageRequestOptions version](self, "version")}];
  [v4 setDeliveryMode:{-[PHImageRequestOptions deliveryMode](self, "deliveryMode")}];
  [v4 setLoadingMode:{-[PHImageRequestOptions loadingMode](self, "loadingMode")}];
  [v4 setResizeMode:{-[PHImageRequestOptions resizeMode](self, "resizeMode")}];
  [(PHImageRequestOptions *)self normalizedCropRect];
  [v4 setNormalizedCropRect:?];
  [v4 setNetworkAccessAllowed:{-[PHImageRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [v4 setSynchronous:{-[PHImageRequestOptions isSynchronous](self, "isSynchronous")}];
  progressHandler = [(PHImageRequestOptions *)self progressHandler];
  [v4 setProgressHandler:progressHandler];

  [v4 setAllowPlaceholder:{-[PHImageRequestOptions allowPlaceholder](self, "allowPlaceholder")}];
  resultHandlerQueue = [(PHImageRequestOptions *)self resultHandlerQueue];
  [v4 setResultHandlerQueue:resultHandlerQueue];

  cachingCompleteHandler = [(PHImageRequestOptions *)self cachingCompleteHandler];
  [v4 setCachingCompleteHandler:cachingCompleteHandler];

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
  contextualVideoThumbnailIdentifier = [(PHImageRequestOptions *)self contextualVideoThumbnailIdentifier];
  [v4 setContextualVideoThumbnailIdentifier:contextualVideoThumbnailIdentifier];

  [v4 setOpportunisticDegradedImagesToReturn:{-[PHImageRequestOptions opportunisticDegradedImagesToReturn](self, "opportunisticDegradedImagesToReturn")}];
  [v4 setUseAsyncForFastOpportunisticResult:{-[PHImageRequestOptions useAsyncForFastOpportunisticResult](self, "useAsyncForFastOpportunisticResult")}];
  [v4 setAvoidDisplayingProgressUpdates:{-[PHImageRequestOptions avoidDisplayingProgressUpdates](self, "avoidDisplayingProgressUpdates")}];
  return v4;
}

@end