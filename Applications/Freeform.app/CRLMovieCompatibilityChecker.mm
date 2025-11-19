@interface CRLMovieCompatibilityChecker
+ (BOOL)assetContainsProResVideoTracks:(id)a3;
+ (BOOL)assetContainsVideoTracksWithAlpha:(id)a3;
+ (BOOL)isPreset:(int64_t)a3 moreCompatibleThanAsset:(id)a4;
+ (BOOL)p_doesAsset:(id)a3 containTrackWithMediaType:(id)a4 matchingCodecTypes:(id)a5;
+ (BOOL)p_doesTrack:(id)a3 matchCodecTypes:(id)a4;
+ (CGSize)maxPlayableVideoDimensionsForMediaCompatibilityConverterPreset:(int64_t)a3;
+ (id)videoCodecsForMediaCompatibilityConverterPreset:(int64_t)a3;
+ (int)maxPlayableAudioBitrateForMediaCompatibilityConverterPreset:(int64_t)a3;
+ (int)maxPlayableVideoPixelsPerFrameForMediaCompatibilityConverterPreset:(int64_t)a3;
- (BOOL)p_assetHasSupportedFileTypeOnAllDevices;
- (BOOL)p_doesLoadedAssetHaveHEVCTracks;
- (BOOL)p_doesLoadedAssetHaveProResTracks;
- (BOOL)p_isAudioTrackPlayableOnAllDevices:(id)a3;
- (BOOL)p_isH263VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3;
- (BOOL)p_isH264VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3;
- (BOOL)p_isLoadedAssetPlayableOnSupportedDevices;
- (BOOL)p_isMPEG4VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3;
- (BOOL)p_isVideoTrackPlayableOnSupportedDevices:(id)a3;
- (CRLMovieCompatibilityChecker)init;
- (CRLMovieCompatibilityChecker)initWithData:(id)a3 asset:(id)a4;
- (float)p_estimatedAudioAssetDataRate;
- (float)p_estimatedAudioAssetDataRateUsingFileSize;
- (float)p_estimatedDataRateForAudioTrack:(id)a3;
- (float)p_estimatedDataRateUsingFormatDescriptionForAudioTrack:(id)a3;
- (float)p_estimatedDataRateUsingTrackPropertiesForAudioTrack:(id)a3;
- (id)p_sampleDescriptionExtensionAto_dataFromVideoFormatDescription:(opaqueCMFormatDescription *)a3 forAtomType:(id)a4;
- (void)checkCompatibilityUpToLevel:(int64_t)a3 completionHandler:(id)a4;
- (void)checkCustomCompatibilityWithConverterPreset:(int64_t)a3 completionHandler:(id)a4;
- (void)p_checkCompatibilityOfAVAssetUpToLevel:(int64_t)a3 completionHandler:(id)a4;
- (void)p_checkCustomCompatibilityWithVideoCodecTypes:(id)a3 maxPlayableVideoDimensions:(CGSize)a4 maxPlayableVideoPixelsPerFrame:(int)a5 maxAudioBitRate:(int)a6 completionHandler:(id)a7;
- (void)p_didFinishCheckingCompatibilityUpToLevel:(int64_t)a3 actualLevel:(int64_t)a4 error:(id)a5 completionHandler:(id)a6;
@end

@implementation CRLMovieCompatibilityChecker

- (CRLMovieCompatibilityChecker)initWithData:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101354DD4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101354DE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354E84();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker initWithData:asset:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:46 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];
  }

  v17.receiver = self;
  v17.super_class = CRLMovieCompatibilityChecker;
  v12 = [(CRLMovieCompatibilityChecker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    v14 = [v7 type];
    v15 = [v14 identifier];
    v13->_movieIsAnimatedImage = [CRLAnimatedGIFController canInitWithDataType:v15];

    if (!v13->_movieIsAnimatedImage)
    {
      if (!v8)
      {
        v8 = [v7 AVAssetAndReturnError:0];
      }

      objc_storeStrong(&v13->_asset, v8);
    }
  }

  return v13;
}

- (CRLMovieCompatibilityChecker)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101856810);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLMovieCompatibilityChecker init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m";
    v18 = 1024;
    v19 = 71;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101856830);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:71 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLMovieCompatibilityChecker init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)checkCompatibilityUpToLevel:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3 <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101354EAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101354EC0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354F5C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:75 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "maxDesiredCompatibilityLevel > CRLMediaCompatibilityLevelNone"];
  }

  if (self->_movieIsAnimatedImage)
  {
    v10 = self;
    v11 = a3;
    v12 = 5;
LABEL_17:
    [(CRLMovieCompatibilityChecker *)v10 p_didFinishCheckingCompatibilityUpToLevel:v11 actualLevel:v12 error:0 completionHandler:v6];
    goto LABEL_18;
  }

  if ([(CRLAsset *)self->_data needsDownload]|| !self->_asset)
  {
    v10 = self;
    v11 = a3;
    v12 = 0;
    goto LABEL_17;
  }

  [(CRLMovieCompatibilityChecker *)self p_checkCompatibilityOfAVAssetUpToLevel:a3 completionHandler:v6];
LABEL_18:
}

- (void)p_checkCompatibilityOfAVAssetUpToLevel:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [AVAsset crl_playableKeysWithKeys:&off_1018E1C98];
  asset = self->_asset;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100330460;
  v10[3] = &unk_10183F0D0;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v9 = v6;
  [(AVAsset *)asset loadValuesAsynchronouslyForKeys:v7 completionHandler:v10];
}

- (void)p_checkCustomCompatibilityWithVideoCodecTypes:(id)a3 maxPlayableVideoDimensions:(CGSize)a4 maxPlayableVideoPixelsPerFrame:(int)a5 maxAudioBitRate:(int)a6 completionHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v15 = a7;
  v13 = [a3 copy];
  customPlayableVideoCodecTypes = self->_customPlayableVideoCodecTypes;
  self->_customPlayableVideoCodecTypes = v13;

  self->_customMaxPlayableVideoDimensions.width = width;
  self->_customMaxPlayableVideoDimensions.height = height;
  self->_customMaxPlayableVideoPixelsPerFrame = a5;
  self->_customMaxAudioBitRate = a6;
  [(CRLMovieCompatibilityChecker *)self checkCompatibilityUpToLevel:6 completionHandler:v15];
}

- (void)checkCustomCompatibilityWithConverterPreset:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3 > 1)
  {
    v10 = objc_opt_class();
    v11 = [v10 videoCodecsForMediaCompatibilityConverterPreset:a3];
    [v10 maxPlayableVideoDimensionsForMediaCompatibilityConverterPreset:a3];
    v13 = v12;
    v15 = v14;
    v16 = [v10 maxPlayableVideoPixelsPerFrameForMediaCompatibilityConverterPreset:a3];
    v17 = [v10 maxPlayableAudioBitrateForMediaCompatibilityConverterPreset:a3];
    self->_wasConverterPresetMoreCompatibleThanAsset = [CRLMovieCompatibilityChecker isPreset:a3 moreCompatibleThanAsset:self->_asset];
    [(CRLMovieCompatibilityChecker *)self p_checkCustomCompatibilityWithVideoCodecTypes:v11 maxPlayableVideoDimensions:v16 maxPlayableVideoPixelsPerFrame:v17 maxAudioBitRate:v6 completionHandler:v13, v15];
  }

  else
  {
    if (!a3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013553D0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013553E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135546C();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker checkCustomCompatibilityWithConverterPreset:completionHandler:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:273 isFatal:0 description:"Invalid preset"];
    }

    self->_compatibilityLevel = 4;
    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)p_didFinishCheckingCompatibilityUpToLevel:(int64_t)a3 actualLevel:(int64_t)a4 error:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (![(CRLMovieCompatibilityChecker *)self isCancelled])
  {
    if (a4 || !v10)
    {
      if (a4 || v10)
      {
LABEL_11:
        if (a4 >= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = a4;
        }

        self->_compatibilityLevel = v17;
        v18 = [v10 copy];
        error = self->_error;
        self->_error = v18;

        goto LABEL_15;
      }

      v20 = NSLocalizedDescriptionKey;
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"This movie can’t be added." value:0 table:0];
      v21 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      v10 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainMediaCompatibility" code:100 userInfo:v16];
    }

    else if ([v10 code] == -11828)
    {
      v12 = [v10 domain];
      v13 = [v12 isEqualToString:AVFoundationErrorDomain];

      if (v13)
      {

        v10 = 0;
        a4 = 1;
        goto LABEL_11;
      }
    }

    a4 = 0;
    goto LABEL_11;
  }

LABEL_15:
  if (v11)
  {
    v11[2](v11);
  }
}

+ (BOOL)p_doesTrack:(id)a3 matchCodecTypes:(id)a4
{
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 formatDescriptions];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [NSNumber numberWithUnsignedInt:CMFormatDescriptionGetMediaSubType(*(*(&v13 + 1) + 8 * i))];
        v11 = [v5 containsObject:v10];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (BOOL)p_doesAsset:(id)a3 containTrackWithMediaType:(id)a4 matchingCodecTypes:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [a3 tracks];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 isEnabled])
        {
          v16 = [v15 mediaType];
          if ([v16 isEqualToString:v8])
          {
            v17 = [a1 p_doesTrack:v15 matchCodecTypes:v9];

            if (v17)
            {
              v18 = 1;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

+ (BOOL)assetContainsVideoTracksWithAlpha:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 tracks];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasMediaCharacteristic:AVMediaCharacteristicContainsAlphaChannel])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (BOOL)assetContainsProResVideoTracks:(id)a3
{
  v4 = a3;
  v5 = +[AVAsset crl_codecTypesForProRes];
  LOBYTE(a1) = [a1 p_doesAsset:v4 containTrackWithMediaType:AVMediaTypeVideo matchingCodecTypes:v5];

  return a1;
}

+ (BOOL)isPreset:(int64_t)a3 moreCompatibleThanAsset:(id)a4
{
  v6 = a4;
  if (![v6 crl_containsVideoTracks])
  {
    goto LABEL_8;
  }

  if (!sub_100326828(a3))
  {
    if (sub_100326840(a3))
    {
      if (([a1 assetContainsH264VideoTracks:v6] & 1) == 0)
      {
        v7 = [a1 assetContainsHEVCVideoTracks:v6];
        goto LABEL_4;
      }

LABEL_9:
      LOBYTE(v8) = 0;
      goto LABEL_11;
    }

LABEL_8:
    if (a3 >= 2)
    {
      v9 = [a1 p_defaultPlayableAudioCodecTypes];
      v8 = [a1 p_doesAsset:v6 containTrackWithMediaType:AVMediaTypeAudio matchingCodecTypes:v9] ^ 1;

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = [a1 assetContainsH264VideoTracks:v6];
LABEL_4:
  LOBYTE(v8) = v7 ^ 1;
LABEL_11:

  return v8;
}

+ (id)videoCodecsForMediaCompatibilityConverterPreset:(int64_t)a3
{
  if (a3 > 1)
  {
    if (sub_100326840(a3))
    {
      v4 = &off_1018E2970;
    }

    else
    {
      v4 = &off_1018E2988;
    }

    v3 = [NSSet setWithObject:v4];
  }

  else
  {
    v3 = +[NSSet set];
  }

  return v3;
}

+ (CGSize)maxPlayableVideoDimensionsForMediaCompatibilityConverterPreset:(int64_t)a3
{
  if (a3 > 5)
  {
    width = 568.0;
    height = 568.0;
  }

  else if (((1 << a3) & 3) != 0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    height = 1920.0;
    if (((1 << a3) & 0x14) != 0)
    {
      width = 1920.0;
    }

    else
    {
      width = 3840.0;
    }

    if (((1 << a3) & 0x14) == 0)
    {
      height = 3840.0;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

+ (int)maxPlayableVideoPixelsPerFrameForMediaCompatibilityConverterPreset:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    return 0;
  }

  else
  {
    return dword_101464C88[a3 - 2];
  }
}

+ (int)maxPlayableAudioBitrateForMediaCompatibilityConverterPreset:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    return 0;
  }

  else
  {
    return dword_101464C9C[a3 - 2];
  }
}

- (BOOL)p_doesLoadedAssetHaveHEVCTracks
{
  if ([(AVAsset *)self->_asset statusOfValueForKey:@"tracks" error:0]!= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355494();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013554A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355530();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_doesLoadedAssetHaveHEVCTracks]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:518 isFatal:0 description:"Asset tracks must be loaded"];
  }

  return [objc_opt_class() assetContainsHEVCVideoTracks:self->_asset];
}

- (BOOL)p_doesLoadedAssetHaveProResTracks
{
  if ([(AVAsset *)self->_asset statusOfValueForKey:@"tracks" error:0]!= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355558();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135556C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013555F4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_doesLoadedAssetHaveProResTracks]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:524 isFatal:0 description:"Asset tracks must be loaded"];
  }

  return [objc_opt_class() assetContainsProResVideoTracks:self->_asset];
}

- (BOOL)p_isLoadedAssetPlayableOnSupportedDevices
{
  if ([(CRLMovieCompatibilityChecker *)self p_assetHasSupportedFileTypeOnAllDevices])
  {
    if ([(AVAsset *)self->_asset statusOfValueForKey:@"tracks" error:0]!= 2)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135561C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101355630();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013556B8();
      }

      v3 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v3);
      }

      v4 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityChecker p_isLoadedAssetPlayableOnSupportedDevices]"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityChecker.m"];
      [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:540 isFatal:0 description:"Asset tracks must be loaded"];
    }

    v6 = [NSSet setWithObjects:AVMediaTypeAudio, AVMediaTypeClosedCaption, AVMediaTypeSubtitle, 0];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = self;
    v7 = [(AVAsset *)self->_asset tracks];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v25 = 0;
      v9 = 0;
      v23 = 0;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if ([v12 isEnabled])
          {
            v13 = [v12 mediaType];
            if ([v6 containsObject:v13])
            {
              if (![v12 isSelfContained] || (objc_msgSend(v12, "formatDescriptions"), v14 = v9, v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v9 = v14, !v16))
              {

                v17 = 0;
                goto LABEL_31;
              }

              if ([v13 isEqualToString:AVMediaTypeVideo])
              {
                v25 |= [(CRLMovieCompatibilityChecker *)v24 p_isVideoTrackPlayableOnSupportedDevices:v12];
                LODWORD(v23) = 1;
              }

              else if ([v13 isEqualToString:AVMediaTypeAudio])
              {
                HIDWORD(v23) |= [(CRLMovieCompatibilityChecker *)v24 p_isAudioTrackPlayableOnAllDevices:v12];
                v9 = 1;
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v17 = 1;
LABEL_31:
      LODWORD(v8) = v23;
      v19 = HIDWORD(v23);
      v20 = v25;
    }

    else
    {
      v20 = 0;
      LODWORD(v9) = 0;
      v19 = 0;
      v17 = 1;
    }

    v18 = v17 & (v20 | v8 ^ 1) & (v19 | v9 ^ 1);
    if (v18 == 1 && (v19 & 1) != 0 && (v8 & 1) == 0 && v24->_customMaxAudioBitRate >= 1)
    {
      [(CRLMovieCompatibilityChecker *)v24 p_estimatedAudioAssetDataRate];
      LOBYTE(v18) = v21 <= v24->_customMaxAudioBitRate;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)p_assetHasSupportedFileTypeOnAllDevices
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_asset);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URL];
    if ([v6 isFileURL] && (v17[0] = 0, objc_msgSend(v6, "getResourceValue:forKey:error:", v17, NSURLTypeIdentifierKey, 0)))
    {
      v16 = v17[0];
      v7 = [UTTypeAppleProtectedMPEG4Audio identifier];
      v8 = [UTTypeMP3 identifier];
      v9 = [UTTypeMPEG identifier];
      v10 = [NSSet setWithObjects:AVFileTypeQuickTimeMovie, AVFileTypeMPEG4, AVFileTypeAppleM4V, AVFileTypeAppleM4A, @"public.3gpp", @"public.3gpp2", @"com.apple.itunes.audible", v7, AVFileTypeAIFF, AVFileTypeAIFC, AVFileTypeCoreAudioFormat, AVFileTypeWAVE, @"public.au-audio", v8, AVFileTypeAMR, v9, @"public.mpeg-2-video", @"public.mp2", @"public.mpeg-2-transport-stream", @"public.avi", 0];

      v11 = [v10 containsObject:v16];
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v13 = [v6 pathExtension];
        v14 = [NSSet setWithObjects:@"mqv", @"m4r", @"m1a", @"m2a", @"mpa", @"aac", @"adts", @"mod", @"vob", @"m2ts", @"m2t", @"mts", 0];
        v12 = [v14 containsObject:v13];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)p_isVideoTrackPlayableOnSupportedDevices:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() p_doesTrack:v4 matchCodecTypes:&off_1018E1D40] && (objc_msgSend(v4, "nominalFrameRate"), v5 <= 30.0))
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if ([(NSSet *)self->_customPlayableVideoCodecTypes count])
    {
      v26 = self->_customPlayableVideoCodecTypes;
    }

    else
    {
      v6 = [objc_opt_class() p_defaultPlayableVideoCodecTypes];
      v26 = [NSSet setWithArray:v6];
    }

    width = self->_customMaxPlayableVideoDimensions.width;
    if (width < 1 || (height = self->_customMaxPlayableVideoDimensions.height, height <= 0))
    {
      width = 1920;
      height = 1920;
    }

    customMaxPlayableVideoPixelsPerFrame = self->_customMaxPlayableVideoPixelsPerFrame;
    if (customMaxPlayableVideoPixelsPerFrame <= 0)
    {
      customMaxPlayableVideoPixelsPerFrame = 2073600;
    }

    v25 = customMaxPlayableVideoPixelsPerFrame;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v4 formatDescriptions];
    v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v23 = v4;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          MediaSubType = CMFormatDescriptionGetMediaSubType(v14);
          v16 = [NSNumber numberWithUnsignedInt:MediaSubType];
          v17 = [(NSSet *)v26 containsObject:v16];

          if (!v17 || ((Dimensions = CMVideoFormatDescriptionGetDimensions(v14), width >= Dimensions.width) ? (v19 = height < Dimensions.height) : (v19 = 1), !v19 ? (v20 = Dimensions.height * Dimensions.width <= v25) : (v20 = 0), !v20))
          {
LABEL_43:

            LOBYTE(v21) = 0;
            v4 = v23;
            goto LABEL_46;
          }

          if (MediaSubType > 1748121138)
          {
            if (MediaSubType == 1748121139)
            {
              if (![(CRLMovieCompatibilityChecker *)self p_isH263VideoFormatPlayableOnAllDevices:v14])
              {
                goto LABEL_43;
              }
            }

            else if (MediaSubType == 1836070006 && ![(CRLMovieCompatibilityChecker *)self p_isMPEG4VideoFormatPlayableOnAllDevices:v14])
            {
              goto LABEL_43;
            }
          }

          else if (MediaSubType == 1398165811)
          {
            if (![(CRLMovieCompatibilityChecker *)self p_isSorenson3VideoFormatPlayableOnAllDevices:v14])
            {
              goto LABEL_43;
            }
          }

          else if (MediaSubType == 1635148593 && ![(CRLMovieCompatibilityChecker *)self p_isH264VideoFormatPlayableOnAllDevices:v14])
          {
            goto LABEL_43;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v4 = v23;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    if (v4)
    {
      [v4 preferredTransform];
    }

    v27 = v30;
    v28 = v31;
    v29 = v32;
    if (sub_100139B5C(&v27))
    {
      v27 = v30;
      v28 = v31;
      v29 = v32;
      v21 = !sub_1001399E4(&v27);
    }

    else
    {
      LOBYTE(v21) = 0;
    }

LABEL_46:
  }

  return v21;
}

- (BOOL)p_isH264VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3
{
  v4 = [(CRLMovieCompatibilityChecker *)self p_sampleDescriptionExtensionAto_dataFromVideoFormatDescription:a3 forAtomType:@"avcC"];
  v12 = v4 && [v4 length] >= 4 && (v6 = objc_msgSend(v5, "bytes"), v6[3] <= 0x29u) && ((v7 = v6[1] - 66, v8 = v7 > 0x22, v9 = (1 << v7) & 0x400000801, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (v5, CMFormatDescriptionGetExtension(a3, kCVImageBufferFieldCountKey), v11 = v5 = v4;

  return v12;
}

- (BOOL)p_isMPEG4VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3
{
  v3 = [(CRLMovieCompatibilityChecker *)self p_sampleDescriptionExtensionAto_dataFromVideoFormatDescription:a3 forAtomType:@"esds"];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = [v3 bytes];
  v6 = [v4 length];
  if (v6 < 5)
  {
    goto LABEL_9;
  }

  v7 = v5 + 2;
  v8 = 4;
  while (*(v7 - 2) || *(v7 - 1) || *v7 != 1 || v7[1] != 176)
  {
    ++v7;
    if (++v8 >= v6)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v6)
  {
    v11 = v7[2];
    v12 = &byte_101464C5A;
    v13 = 15;
    while (*(v12 - 2) != v11)
    {
      v9 = 0;
      v12 += 3;
      if (!--v13)
      {
        goto LABEL_10;
      }
    }

    v14 = *(v12 - 1);
    v15 = *v12;
    v9 = v14 < 2 && v15 < 5;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (BOOL)p_isH263VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3
{
  v3 = [(CRLMovieCompatibilityChecker *)self p_sampleDescriptionExtensionAto_dataFromVideoFormatDescription:a3 forAtomType:@"d263"];
  v4 = v3;
  if (v3 && [v3 length] >= 7)
  {
    v5 = [v4 bytes];
    if (v5[6])
    {
      v6 = 1;
    }

    else
    {
      v6 = v5[5] >= 0x2Eu;
    }

    v7 = !v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)p_sampleDescriptionExtensionAto_dataFromVideoFormatDescription:(opaqueCMFormatDescription *)a3 forAtomType:(id)a4
{
  v5 = a4;
  v6 = CMFormatDescriptionGetExtension(a3, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      if ([v9 count])
      {
        v10 = [v9 objectAtIndexedSubscript:0];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)p_isAudioTrackPlayableOnAllDevices:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() p_defaultPlayableAudioCodecTypes];
  v5 = [NSSet setWithArray:v4];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v3;
  v6 = [v3 formatDescriptions];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        MediaSubType = CMFormatDescriptionGetMediaSubType(v12);
        if ((v9 & 1) == 0 && (v14 = MediaSubType, +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", MediaSubType), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v5 containsObject:v15], v15, v16) && (StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v12)) != 0 && StreamBasicDescription->mChannelsPerFrame <= 6 && StreamBasicDescription->mSampleRate <= 48000.0)
        {
          if (v14 == 1885430579 || v14 == 1633889587)
          {
            v9 = [v21 isEnabled];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 1;
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v18 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v18;
    }

    while (v18);
    v19 = v9 ^ 1;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (float)p_estimatedAudioAssetDataRate
{
  v3 = [(AVAsset *)self->_asset tracksWithMediaType:AVMediaTypeAudio];
  if (![v3 count])
  {
    v8 = 0.0;
    goto LABEL_27;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v23 + 1) + 8 * i) estimatedDataRate];
        if (v8 < v10)
        {
          v8 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);

    if (v8 != 0.0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  [(CRLMovieCompatibilityChecker *)self p_estimatedAudioAssetDataRateUsingFileSize];
  v8 = v11;
LABEL_16:
  if (v8 == 0.0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(CRLMovieCompatibilityChecker *)self p_estimatedDataRateForAudioTrack:*(*(&v19 + 1) + 8 * j), v19];
          if (v8 < v17)
          {
            v8 = v17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }

LABEL_27:

  return v8;
}

- (float)p_estimatedAudioAssetDataRateUsingFileSize
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_asset);
  v5 = [v4 URL];

  v6 = [v5 crl_fileSize];
  memset(&v12[1], 0, sizeof(CMTime));
  v7 = 0.0;
  asset = self->_asset;
  if (asset)
  {
    [(AVAsset *)asset duration];
    if ((v12[1].flags & 0x1D) == 1)
    {
      v9 = 8 * v6;
      v12[0] = v12[1];
      Seconds = CMTimeGetSeconds(v12);
      if (v9)
      {
        if (Seconds > 0.0)
        {
          v7 = v9 / Seconds;
        }
      }
    }
  }

  return v7;
}

- (float)p_estimatedDataRateForAudioTrack:(id)a3
{
  v4 = a3;
  [v4 estimatedDataRate];
  if (v5 == 0.0)
  {
    [(CRLMovieCompatibilityChecker *)self p_estimatedDataRateUsingTrackPropertiesForAudioTrack:v4];
  }

  v6 = v5;
  if (v5 == 0.0)
  {
    [(CRLMovieCompatibilityChecker *)self p_estimatedDataRateUsingFormatDescriptionForAudioTrack:v4];
    v6 = v7;
  }

  return v6;
}

- (float)p_estimatedDataRateUsingTrackPropertiesForAudioTrack:(id)a3
{
  v3 = a3;
  v4 = [v3 totalSampleDataLength];
  memset(&v10, 0, sizeof(v10));
  v5 = [v3 asset];

  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  v6 = 0.0;
  if (v4 >= 1 && (v10.flags & 0x1D) == 1)
  {
    v9 = v10;
    Seconds = CMTimeGetSeconds(&v9);
    if (Seconds > 0.0)
    {
      return v4 * 8.0 / Seconds;
    }
  }

  return v6;
}

- (float)p_estimatedDataRateUsingFormatDescriptionForAudioTrack:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 formatDescriptions];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(*(&v14 + 1) + 8 * i));
        if (StreamBasicDescription)
        {
          mChannelsPerFrame = 1.0;
          if ((StreamBasicDescription->mFormatFlags & 0x20) == 0)
          {
            mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
          }

          LODWORD(v10) = StreamBasicDescription->mBytesPerFrame;
          v12 = mChannelsPerFrame * (StreamBasicDescription->mSampleRate * 8.0 * v10);
          if (v7 < v12)
          {
            v7 = v12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

@end