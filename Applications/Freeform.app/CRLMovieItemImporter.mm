@interface CRLMovieItemImporter
+ (BOOL)p_canAnimate:(CGImageSource *)animate;
+ (BOOL)protected_canImportFileAtURL:(id)l type:(id)type;
+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)asset type:(id)type;
+ (void)p_setMovieProperties:(id)properties fromLoadedAsset:(id)asset containsVideoTrack:(BOOL)track;
- (BOOL)p_isURLRemote;
- (BOOL)p_validateSizeOfImportWithBoardItem:(id)item error:(id *)error;
- (CRLMovieItemImporter)initWithData:(id)data boardItemFactory:(id)factory;
- (CRLMovieItemImporter)initWithURL:(id)l boardItemFactory:(id)factory;
- (id)p_importErrorForLackOfAVTracks;
- (id)p_makeMovieItemWithContainsVisibleTrack:(BOOL)track andIsURLRemote:(BOOL)remote;
- (unint64_t)embeddedDataLength;
- (unint64_t)p_onlyMovieFileDataLength;
- (unint64_t)uploadDataLength;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)handler;
- (void)p_asynchronouslyGeneratePosterImagesAndFinishImportingMovieItem:(id)item;
- (void)p_createAssetDataAndThenContinueImport;
- (void)p_enableLoopingIfNeeded:(id)needed;
- (void)p_finishImportingWithBoardItem:(id)item error:(id)error;
- (void)p_importBoardItemFromAnimatedGIF;
- (void)p_importBoardItemFromAsset;
- (void)p_importBoardItemFromAssetConvertingIfNeededToRequiredCompatibilityLevel:(int64_t)level allowHEVCContent:(BOOL)content fromCompatibilityLevel:(int64_t)compatibilityLevel;
- (void)p_performMovieCompatibilityAnalysis;
- (void)p_removeShadowIfNeeded:(id)needed;
- (void)p_tellMovieCompatibilityProviderToIgnoreCompatibilityLevelIfNeeded;
@end

@implementation CRLMovieItemImporter

+ (BOOL)protected_canImportFileAtURL:(id)l type:(id)type
{
  typeCopy = type;
  lCopy = l;
  if ([self isSupportedAnimatedImageFileType:typeCopy])
  {
    v8 = CGImageSourceCreateWithURL(lCopy, 0);

    if (v8)
    {
      if (([PFImageMetadata imageSourceIsSpatial:v8]& 1) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = [self p_canImportImageSource:v8];
      }

      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___CRLMovieItemImporter;
    v9 = objc_msgSendSuper2(&v11, "protected_canImportFileAtURL:type:", lCopy, typeCopy);
  }

  return v9;
}

+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)asset type:(id)type
{
  typeCopy = type;
  assetCopy = asset;
  if ([self isSupportedAnimatedImageFileType:typeCopy])
  {
    newCGImageSource = [assetCopy newCGImageSource];

    if (newCGImageSource)
    {
      if (([PFImageMetadata imageSourceIsSpatial:newCGImageSource]& 1) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = [self p_canImportImageSource:newCGImageSource];
      }

      CFRelease(newCGImageSource);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___CRLMovieItemImporter;
    v9 = objc_msgSendSuper2(&v11, "protected_canImportFileWithPreinsertionAsset:type:", assetCopy, typeCopy);
  }

  return v9;
}

+ (BOOL)p_canAnimate:(CGImageSource *)animate
{
  if (!animate)
  {
    return 1;
  }

  v3 = CGImageSourceCopyProperties(animate, 0);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"CanAnimate"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (CRLMovieItemImporter)initWithURL:(id)l boardItemFactory:(id)factory
{
  v7.receiver = self;
  v7.super_class = CRLMovieItemImporter;
  v4 = [(CRLBoardItemImporter *)&v7 initWithURL:l boardItemFactory:factory];
  v5 = v4;
  if (v4)
  {
    sub_10039F0FC(v4);
  }

  return v5;
}

- (CRLMovieItemImporter)initWithData:(id)data boardItemFactory:(id)factory
{
  v7.receiver = self;
  v7.super_class = CRLMovieItemImporter;
  v4 = [(CRLBoardItemImporter *)&v7 initWithData:data boardItemFactory:factory];
  v5 = v4;
  if (v4)
  {
    sub_10039F0FC(v4);
  }

  return v5;
}

- (BOOL)p_isURLRemote
{
  v2 = [(CRLBoardItemImporter *)self URL];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isFileURL] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)importBoardItemWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  importQueue = self->_importQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039F2DC;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(importQueue, block);
}

- (void)p_createAssetDataAndThenContinueImport
{
  v3 = self->_importQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  if (!self->_isCancelled)
  {
    v4 = [(CRLBoardItemImporter *)self URL];
    v5 = v4;
    if (v4)
    {
      lastPathComponent = [v4 lastPathComponent];
      pathExtension = [lastPathComponent pathExtension];
      v8 = [pathExtension length];

      if (!v8)
      {
        v24 = 0;
        v9 = [v5 getResourceValue:&v24 forKey:NSURLTypeIdentifierKey error:0];
        v10 = v24;
        v11 = v10;
        if (v9 && v10)
        {
          v12 = [UTType typeWithIdentifier:v10];
          if (!v12)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013616F8();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101361720();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013617BC();
            }

            v13 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DA10(v13);
            }

            v14 = [NSString stringWithUTF8String:"[CRLMovieItemImporter p_createAssetDataAndThenContinueImport]"];
            v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieItemImporter.m"];
            [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:185 isFatal:0 description:"invalid nil value for '%{public}s'", "extensionUTType"];
          }

          preferredFilenameExtension = [v12 preferredFilenameExtension];
          if ([preferredFilenameExtension length])
          {
            v17 = [lastPathComponent stringByAppendingPathExtension:preferredFilenameExtension];

            lastPathComponent = v17;
          }
        }
      }

      v18 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
      boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
      assetOwner = [boardItemFactory assetOwner];
      v21 = [(CRLPreinsertionAssetWrapper *)v18 initWithUrl:v5 filename:lastPathComponent owner:assetOwner];

      if (!v21)
      {
        goto LABEL_31;
      }
    }

    else
    {
      preinsertionAsset = [(CRLBoardItemImporter *)self preinsertionAsset];

      if (!preinsertionAsset || ([(CRLBoardItemImporter *)self preinsertionAsset], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_31:
        [(CRLMovieItemImporter *)self p_performMovieCompatibilityAnalysis];
        goto LABEL_32;
      }
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10039F6FC;
    v23[3] = &unk_10185B6F0;
    v23[4] = self;
    [(CRLPreinsertionAssetWrapper *)v21 createAssetWithCompletionHandler:v23];

LABEL_32:
    return;
  }

  [(CRLMovieItemImporter *)self p_finishImportingWithBoardItem:0 error:0];
}

- (void)p_performMovieCompatibilityAnalysis
{
  v3 = self->_importQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  if (!self->_isCancelled && ![(CRLMovieItemImporter *)self p_isURLRemote]&& self->_movieData)
  {
    v4 = objc_opt_class();
    type = [(CRLAsset *)self->_movieData type];
    identifier = [type identifier];
    LODWORD(v4) = [v4 isSupportedAnimatedImageFileType:identifier];

    if (v4)
    {
      [(CRLMovieItemImporter *)self p_importBoardItemFromAnimatedGIF];
    }

    else
    {
      v7 = [[CRLMovieCompatibilityChecker alloc] initWithData:self->_movieData asset:self->_asset];
      compatibilityChecker = self->_compatibilityChecker;
      self->_compatibilityChecker = v7;

      delegate = [(CRLBoardItemImporter *)self delegate];
      v10 = delegate;
      if (delegate)
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }

      if (delegate)
      {
        v12 = 5;
      }

      else
      {
        v12 = 3;
      }

      v13 = self->_compatibilityChecker;
      if (!v13)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013618B0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013618C4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101361960();
        }

        v14 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v14);
        }

        v15 = [NSString stringWithUTF8String:"[CRLMovieItemImporter p_performMovieCompatibilityAnalysis]"];
        v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieItemImporter.m"];
        [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:246 isFatal:0 description:"invalid nil value for '%{public}s'", "self->_compatibilityChecker"];

        v13 = self->_compatibilityChecker;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10039FC1C;
      v18[3] = &unk_10183C780;
      v18[4] = self;
      v19 = v10;
      v20 = v11;
      v17 = v10;
      [(CRLMovieCompatibilityChecker *)v13 checkCompatibilityUpToLevel:v12 completionHandler:v18];
    }
  }

  if (!self->_asset && !self->_boardItem || self->_isCancelled)
  {
    [(CRLMovieItemImporter *)self p_finishImportingWithBoardItem:0 error:0];
  }
}

- (void)p_importBoardItemFromAssetConvertingIfNeededToRequiredCompatibilityLevel:(int64_t)level allowHEVCContent:(BOOL)content fromCompatibilityLevel:(int64_t)compatibilityLevel
{
  contentCopy = content;
  v9 = self->_importQueue;
  if (v9 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v9);
  }

  if (self->_isCancelled)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101361988();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136199C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101361A2C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLMovieItemImporter p_importBoardItemFromAssetConvertingIfNeededToRequiredCompatibilityLevel:allowHEVCContent:fromCompatibilityLevel:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieItemImporter.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:342 isFatal:0 description:"This method must not be called if the importer has been canceled."];
  }

  if (compatibilityLevel >= level)
  {
    v23 = [[CRLBasicProgress alloc] initWithMaxValue:1.0];
    [(CRLScaledProgress *)self->_progress setMaxValue:1.0];
    [(CRLScaledProgress *)self->_progress setProgress:v23];
    [(CRLMovieItemImporter *)self p_importBoardItemFromAsset];
  }

  else
  {
    v13 = [CRLMovieCompatibilityConverter alloc];
    movieData = self->_movieData;
    boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
    assetOwner = [boardItemFactory assetOwner];
    v17 = [(CRLMovieCompatibilityConverter *)v13 initWithMovieData:movieData desiredCompatibilityLevel:level initialCompatibilityLevel:compatibilityLevel assetOwner:assetOwner];
    compatibilityConverter = self->_compatibilityConverter;
    self->_compatibilityConverter = v17;

    if (level == 4 && contentCopy)
    {
      v19 = +[CRLCapabilities currentCapabilities];
      hasHEVCHardwareEncoding = [v19 hasHEVCHardwareEncoding];

      if (hasHEVCHardwareEncoding)
      {
        [(CRLMovieCompatibilityConverter *)self->_compatibilityConverter setPlayableOnAllDevicesPreset:5];
      }
    }

    [(CRLScaledProgress *)self->_progress setMaxValue:100.0];
    progress = [(CRLMovieCompatibilityConverter *)self->_compatibilityConverter progress];
    [(CRLScaledProgress *)self->_progress setProgress:progress];

    v22 = self->_compatibilityConverter;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1003A037C;
    v24[3] = &unk_10183AB38;
    v24[4] = self;
    [(CRLMovieCompatibilityConverter *)v22 convertMediaWithCompletionHandler:v24];
  }
}

- (id)p_importErrorForLackOfAVTracks
{
  v10[0] = NSLocalizedDescriptionKey;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"The movie doesn’t contain audio or video." value:0 table:0];
  v10[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
  v11[0] = v4;
  v11[1] = &off_1018E2C58;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = [v5 mutableCopy];
  v7 = [(CRLBoardItemImporter *)self URL];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:NSURLErrorKey];
  }

  v8 = [[NSError alloc] initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:101 userInfo:v6];

  return v8;
}

- (id)p_makeMovieItemWithContainsVisibleTrack:(BOOL)track andIsURLRemote:(BOOL)remote
{
  if (track)
  {
    [(AVAsset *)self->_asset naturalSizeWithPreferredTransforms];
    [_TtC8Freeform12CRLMovieItem defaultVideoItemSizeWithOriginalSize:?];
  }

  else
  {
    +[_TtC8Freeform12CRLMovieItem defaultAudioItemSize];
  }

  v8 = [[CRLCanvasInfoGeometry alloc] initWithSize:v6, v7];
  if (remote)
  {
    v9 = 0;
  }

  else
  {
    if (!self->_movieData)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101361A54();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101361A68();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101361B04();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLMovieItemImporter p_makeMovieItemWithContainsVisibleTrack:andIsURLRemote:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieItemImporter.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:449 isFatal:0 description:"invalid nil value for '%{public}s'", "self->_movieData"];
    }

    boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
    v9 = [boardItemFactory makeMovieItemWithGeometry:v8 movieData:self->_movieData posterImageData:0 posterTime:0.0];

    [(CRLMovieItemImporter *)self p_removeShadowIfNeeded:v9];
  }

  return v9;
}

- (void)p_enableLoopingIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy isAnimatedImage])
  {
    [neededCopy setIsLooping:1];
  }
}

- (void)p_removeShadowIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = [(AVAsset *)self->_asset tracksWithMediaCharacteristic:AVMediaCharacteristicContainsAlphaChannel];
  v5 = [v4 count];
  if (([neededCopy isAnimatedImage] & 1) != 0 || v5)
  {
    [neededCopy setShadow:0];
  }
}

+ (void)p_setMovieProperties:(id)properties fromLoadedAsset:(id)asset containsVideoTrack:(BOOL)track
{
  propertiesCopy = properties;
  assetCopy = asset;
  metadata = [assetCopy metadata];
  v10 = [AVAsset crl_titleWithMetadataArray:metadata];
  if (v10)
  {
    stringByDeletingPathExtension = v10;
  }

  else
  {
    movieAssetPayload = [propertiesCopy movieAssetPayload];
    filename = [movieAssetPayload filename];
    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];

    if (!stringByDeletingPathExtension)
    {
      goto LABEL_5;
    }
  }

  [propertiesCopy setTitle:stringByDeletingPathExtension];

LABEL_5:
  v14 = [AVAsset crl_creatorArtistOrAuthorWithMetadataArray:metadata];
  [propertiesCopy setCreator:v14];

  creator = [propertiesCopy creator];

  if (!creator)
  {
    movieAssetPayload2 = [propertiesCopy movieAssetPayload];
    type = [movieAssetPayload2 type];

    localizedDescription = [type localizedDescription];
    [propertiesCopy setCreator:localizedDescription];
  }

  memset(&v24[1], 0, sizeof(CMTime));
  if (!assetCopy || ([assetCopy duration], (v24[1].flags & 1) == 0))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101361B2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101361B54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101361BE4();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMovieItemImporter p_setMovieProperties:fromLoadedAsset:containsVideoTrack:]");
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieItemImporter.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:502 isFatal:0 description:"invalid duration received from avAsset on load, preventing us from setting up start and end time properly based on it."];
  }

  v24[0] = v24[1];
  Seconds = CMTimeGetSeconds(v24);
  [propertiesCopy setStartTime:0.0];
  [propertiesCopy setEndTime:Seconds];
  if (track)
  {
    crl_containsTracksWithVisualCharacteristics = 0;
  }

  else
  {
    crl_containsTracksWithVisualCharacteristics = [assetCopy crl_containsTracksWithVisualCharacteristics];
  }

  [propertiesCopy setIsAudioOnly:crl_containsTracksWithVisualCharacteristics];
}

- (void)p_asynchronouslyGeneratePosterImagesAndFinishImportingMovieItem:(id)item
{
  itemCopy = item;
  [itemCopy posterTime];
  v6 = v5;
  v7 = [[CRLMoviePosterImageGenerator alloc] initWithAsset:self->_asset];
  posterImageGenerator = self->_posterImageGenerator;
  self->_posterImageGenerator = v7;

  v9 = self->_posterImageGenerator;
  CMTimeMakeWithSeconds(&v13, v6, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A0E44;
  v11[3] = &unk_10185B920;
  v11[4] = self;
  v12 = itemCopy;
  v10 = itemCopy;
  [(CRLMoviePosterImageGenerator *)v9 generateCGImageAsynchronouslyForTime:&v13 completionHandler:v11];
}

- (void)p_importBoardItemFromAsset
{
  v3 = self->_importQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  asset = self->_asset;
  v5 = &off_1018E1E18;
  [(AVAsset *)asset loadValuesAsynchronouslyForKeys:_NSConcreteStackBlock completionHandler:3221225472, sub_1003A142C, &unk_10183AE28, self];
}

- (void)p_importBoardItemFromAnimatedGIF
{
  v3 = objc_opt_class();
  v4 = +[CRLImageProviderPool sharedPool];
  v5 = [v4 temporaryProviderForAsset:self->_movieData shouldValidate:1];
  v6 = sub_100014370(v3, v5);

  if (v6)
  {
    v7 = [CRLCanvasInfoGeometry alloc];
    [v6 naturalSize];
    v8 = [(CRLCanvasInfoGeometry *)v7 initWithSize:?];
    boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
    v45 = v8;
    v10 = [boardItemFactory makeMovieItemWithGeometry:v8 movieData:self->_movieData posterImageData:0 posterTime:0.0];

    v11 = objc_autoreleasePoolPush();
    v12 = [[CRLAnimatedGIFController alloc] initWithData:self->_movieData delegate:0];
    v46 = v6;
    if (v12)
    {
      v13 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
      [v10 startTime];
      v14 = sub_1005357BC([(CRLAnimatedGIFController *)v12 imageForTime:?]);
      boardItemFactory2 = [(CRLBoardItemImporter *)self boardItemFactory];
      assetOwner = [boardItemFactory2 assetOwner];
      v49 = 0;
      v17 = [(CRLPreinsertionAssetWrapper *)v13 initWithData:v14 filename:@"posterImage.png" owner:assetOwner error:&v49];
      v18 = v49;

      v44 = v17;
      if (!v17)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_101361DC4();
        }

        v19 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_101361C34(v19, v18);
        }
      }

      [(CRLAnimatedGIFController *)v12 absoluteDuration];
      [v10 setEndTime:?];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101361DEC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101361E00();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101361E9C();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v18 = [NSString stringWithUTF8String:"[CRLMovieItemImporter p_importBoardItemFromAnimatedGIF]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieItemImporter.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v26 lineNumber:646 isFatal:0 description:"invalid nil value for '%{public}s'", "controller"];

      v44 = 0;
    }

    objc_autoreleasePoolPop(v11);
    newCGImageSource = [(CRLAsset *)self->_movieData newCGImageSource];
    Count = CGImageSourceGetCount(newCGImageSource);
    if (Count)
    {
      v29 = Count;
      for (i = 0; i < v29; ++i)
      {
        v31 = CGImageSourceCopyPropertiesAtIndex(newCGImageSource, i, 0);
        v32 = v31;
        if (v31)
        {
          v33 = [(__CFDictionary *)v31 objectForKeyedSubscript:kCGImagePropertyGIFDictionary];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 objectForKeyedSubscript:kCGImagePropertyGIFLoopCount];
            if (v35)
            {
              v36 = v35;
              integerValue = [v35 integerValue];

              if (integerValue == 1)
              {
                break;
              }

              continue;
            }
          }
        }
      }
    }

    if (newCGImageSource)
    {
      CFRelease(newCGImageSource);
    }

    movieAssetPayload = [v10 movieAssetPayload];
    filename = [movieAssetPayload filename];
    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];
    [v10 setTitle:stringByDeletingPathExtension];

    movieAssetPayload2 = [v10 movieAssetPayload];
    type = [movieAssetPayload2 type];

    localizedDescription = [type localizedDescription];
    [v10 setCreator:localizedDescription];

    [(CRLMovieItemImporter *)self p_removeShadowIfNeeded:v10];
    [(CRLMovieItemImporter *)self p_enableLoopingIfNeeded:v10];
    v6 = v46;
    v23 = v44;
    if (v44)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1003A1DE8;
      v47[3] = &unk_10185B8D0;
      v47[4] = self;
      v10 = v10;
      v48 = v10;
      [(CRLPreinsertionAssetWrapper *)v44 createAssetWithCompletionHandler:v47];
    }

    else
    {
      [(CRLMovieItemImporter *)self p_finishImportingWithBoardItem:v10 error:0];
    }

    v22 = v45;
  }

  else
  {
    v50[0] = NSLocalizedDescriptionKey;
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"The movie doesn’t contain audio or video." value:0 table:0];
    v50[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
    v51[0] = v21;
    v51[1] = &off_1018E2C58;
    v22 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];

    v10 = [v22 mutableCopy];
    v23 = [(CRLBoardItemImporter *)self URL];
    if (v23)
    {
      [v10 setObject:v23 forKeyedSubscript:NSURLErrorKey];
    }

    v24 = [[NSError alloc] initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:101 userInfo:v10];
    [(CRLMovieItemImporter *)self p_finishImportingWithBoardItem:0 error:v24];
  }
}

- (void)p_tellMovieCompatibilityProviderToIgnoreCompatibilityLevelIfNeeded
{
  v3 = self->_importQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  if (!self->_didMessageDelegateAboutMovieCompatibility)
  {
    self->_didMessageDelegateAboutMovieCompatibility = 1;
    delegate = [(CRLBoardItemImporter *)self delegate];
    if (delegate)
    {
      v5 = delegate;
      if (objc_opt_respondsToSelector())
      {
        [v5 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
      }
    }

    _objc_release_x2();
  }
}

- (BOOL)p_validateSizeOfImportWithBoardItem:(id)item error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)p_finishImportingWithBoardItem:(id)item error:(id)error
{
  itemCopy = item;
  errorCopy = error;
  v9 = self->_importQueue;
  if (v9 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v9);
  }

  [(CRLMovieItemImporter *)self p_tellMovieCompatibilityProviderToIgnoreCompatibilityLevelIfNeeded];
  if (!self->_isCancelled)
  {
    v10 = objc_opt_class();
    progress = [(CRLScaledProgress *)self->_progress progress];
    v12 = sub_100014370(v10, progress);

    if (v12)
    {
      [v12 maxValue];
      [v12 setValue:?];
    }

    if (itemCopy)
    {
      objc_storeStrong(&self->_boardItem, item);
      v13 = objc_opt_class();
      v14 = sub_100013F00(v13, itemCopy);
      [v14 setPosterImageData:self->_posterImageData];
      v41 = 0;
      v15 = [(CRLMovieItemImporter *)self p_validateSizeOfImportWithBoardItem:v14 error:&v41];
      v16 = v41;
      v17 = v41;
      if (v15)
      {
LABEL_27:

        goto LABEL_28;
      }

      objc_storeStrong(&self->_error, v16);
      boardItem = self->_boardItem;
      self->_boardItem = 0;
    }

    else
    {
      v19 = [(CRLBoardItemImporter *)self URL];
      v14 = v19;
      if (v19)
      {
        v40 = 0;
        [v19 getResourceValue:&v40 forKey:NSURLLocalizedNameKey error:0];
        lastPathComponent = v40;
        if (!lastPathComponent)
        {
          lastPathComponent = [v14 lastPathComponent];
        }

        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"The movie “%@” couldn’t be inserted." value:0 table:0];
        v17 = [NSString stringWithFormat:v22, lastPathComponent];
      }

      else
      {
        lastPathComponent = +[NSBundle mainBundle];
        v17 = [lastPathComponent localizedStringForKey:@"The movie couldn’t be inserted." value:0 table:0];
      }

      if (errorCopy)
      {
        userInfo = [errorCopy userInfo];
        boardItem = [userInfo mutableCopy];

        if (v14)
        {
          [boardItem setObject:v14 forKeyedSubscript:NSURLErrorKey];
        }

        v24 = [boardItem objectForKeyedSubscript:NSLocalizedDescriptionKey];
        if (!v24 || ([boardItem setObject:v24 forKeyedSubscript:NSLocalizedFailureReasonErrorKey], objc_msgSend(errorCopy, "domain"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25 != @"com.apple.freeform.CRLErrorDomainInfoImporter"))
        {
          [boardItem setObject:v17 forKeyedSubscript:NSLocalizedDescriptionKey];
        }

        v26 = [NSError alloc];
        domain = [errorCopy domain];
        code = [errorCopy code];
        v29 = v26;
        v30 = domain;
        v31 = boardItem;
      }

      else
      {
        v42[0] = NSLocalizedDescriptionKey;
        v42[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
        v43[0] = v17;
        v43[1] = &off_1018E2C58;
        boardItem = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
        v24 = [boardItem mutableCopy];
        domain = [(CRLBoardItemImporter *)self URL];
        if (domain)
        {
          [v24 setObject:domain forKeyedSubscript:NSURLErrorKey];
        }

        v29 = [NSError alloc];
        v30 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
        code = 100;
        v31 = v24;
      }

      v32 = [v29 initWithDomain:v30 code:code userInfo:v31];
      error = self->_error;
      self->_error = v32;
    }

    goto LABEL_27;
  }

LABEL_28:
  movieData = self->_movieData;
  self->_movieData = 0;

  readonlyMovieData = self->_readonlyMovieData;
  self->_readonlyMovieData = 0;

  asset = self->_asset;
  self->_asset = 0;

  posterImageGenerator = self->_posterImageGenerator;
  self->_posterImageGenerator = 0;

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2]();
    v39 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)cancel
{
  importQueue = self->_importQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A2614;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(importQueue, block);
}

- (unint64_t)uploadDataLength
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_boardItem);
  movieAssetPayload = [v4 movieAssetPayload];
  v6 = [movieAssetPayload length];

  return v6;
}

- (unint64_t)embeddedDataLength
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_boardItem);
  posterImageAssetPayload = [v4 posterImageAssetPayload];
  v6 = [posterImageAssetPayload length];

  movieAssetPayload = [v4 movieAssetPayload];
  v8 = [movieAssetPayload length];

  return v6 + v8;
}

- (unint64_t)p_onlyMovieFileDataLength
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_boardItem);
  movieAssetPayload = [v4 movieAssetPayload];
  v6 = [movieAssetPayload length];

  return v6;
}

@end