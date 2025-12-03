@interface CRLMovieCompatibilityConverter
+ (id)p_uniquePathForConvertingData:(id)data toType:(id)type;
+ (id)progressStringForUpgradingMoviesWithPreset:(int64_t)preset dataCount:(unint64_t)count filename:(id)filename;
+ (void)initialize;
- (CRLMovieCompatibilityConverter)init;
- (CRLMovieCompatibilityConverter)initWithMovieData:(id)data auxiliaryMovieData:(id)movieData auxiliaryMovieDataFilename:(id)filename desiredCompatibilityLevel:(int64_t)level initialCompatibilityLevel:(int64_t)compatibilityLevel assetOwner:(id)owner;
- (id)p_exportSessionForAsset:(id)asset presetName:(id)name data:(id)data outputURL:(id)l preserveFrameDuration:(BOOL)duration;
- (int64_t)playableOnAllDevicesPreset;
- (void)cancel;
- (void)convertMediaWithCompletionHandler:(id)handler;
- (void)p_checkInitialCompatibilityLevelWithCompletionHandler:(id)handler;
- (void)p_convertMovieData:(id)data fromPlayableByAVFoundationToAllDevicesWithCompletionHandler:(id)handler;
- (void)p_convertMovieData:(id)data withPresetName:(id)name completionHandler:(id)handler;
- (void)p_finishConvertingWithConvertedMovieData:(id)data error:(id)error completionHandler:(id)handler;
@end

@implementation CRLMovieCompatibilityConverter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = dispatch_queue_create("com.apple.freeform.CRLMovieCompatibilityConverter", 0);
    v3 = qword_101A34F70;
    qword_101A34F70 = v2;
  }
}

- (CRLMovieCompatibilityConverter)initWithMovieData:(id)data auxiliaryMovieData:(id)movieData auxiliaryMovieDataFilename:(id)filename desiredCompatibilityLevel:(int64_t)level initialCompatibilityLevel:(int64_t)compatibilityLevel assetOwner:(id)owner
{
  dataCopy = data;
  movieDataCopy = movieData;
  movieDataCopy2 = movieData;
  filenameCopy = filename;
  ownerCopy = owner;
  ownerCopy2 = owner;
  v45.receiver = self;
  v45.super_class = CRLMovieCompatibilityConverter;
  v16 = [(CRLMovieCompatibilityConverter *)&v45 init];
  compatibilityLevelCopy = compatibilityLevel;
  if (level <= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101370B70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101370B98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370C34();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter initWithMovieData:auxiliaryMovieData:auxiliaryMovieDataFilename:desiredCompatibilityLevel:initialCompatibilityLevel:assetOwner:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:68 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "desiredCompatibilityLevel >= CRLMediaCompatibilityLevelPlayableOnThisDevice"];

    compatibilityLevel = compatibilityLevelCopy;
  }

  if (compatibilityLevel >= level)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101370C5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101370C84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370D20();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter initWithMovieData:auxiliaryMovieData:auxiliaryMovieDataFilename:desiredCompatibilityLevel:initialCompatibilityLevel:assetOwner:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:69 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "initialCompatibilityLevel < desiredCompatibilityLevel"];

    compatibilityLevel = compatibilityLevelCopy;
  }

  if (v16)
  {
    if (qword_101AD5CC8 != -1)
    {
      sub_101370D48();
    }

    v23 = off_1019F0290;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      if (dataCopy)
      {
        v35 = objc_opt_class();
        v34 = NSStringFromClass(v35);
      }

      else
      {
        v34 = @"Nil";
      }

      filename = [dataCopy filename];
      assetUUID = [dataCopy assetUUID];
      uUIDString = [assetUUID UUIDString];
      *buf = 134219266;
      v47 = v16;
      v48 = 2114;
      v49 = v34;
      v50 = 2112;
      v51 = filename;
      v52 = 2114;
      v53 = uUIDString;
      v54 = 2048;
      v55 = compatibilityLevelCopy;
      v56 = 2048;
      levelCopy = level;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "creating converter %p for data <%{public}@: filename=%@, assetUUID=%{public}@>  initialCompatLevel %li desiredCompatLevel %li", buf, 0x3Eu);

      if (dataCopy)
      {
      }

      compatibilityLevel = compatibilityLevelCopy;
    }

    objc_storeStrong(&v16->mMovieData, data);
    objc_storeStrong(&v16->mAuxiliaryMovieData, movieDataCopy);
    v24 = [filenameCopy copy];
    mAuxiliaryMovieDataFilename = v16->mAuxiliaryMovieDataFilename;
    v16->mAuxiliaryMovieDataFilename = v24;

    v16->mInitialCompatibilityLevel = compatibilityLevel;
    v16->mDesiredCompatibilityLevel = level;
    objc_storeStrong(&v16->mAssetOwner, ownerCopy);
    v26 = [[NSMutableArray alloc] initWithCapacity:4];
    if (v16->mInitialCompatibilityLevel <= 2)
    {
      v27 = [[CRLBasicProgress alloc] initWithMaxValue:3.0];
      mMakePlayableProgress = v16->mMakePlayableProgress;
      v16->mMakePlayableProgress = v27;

      [v26 addObject:v16->mMakePlayableProgress];
    }

    if (v16->mDesiredCompatibilityLevel >= 3)
    {
      v29 = [[CRLBasicProgress alloc] initWithMaxValue:3.0];
      mAllDevicesProgress = v16->mAllDevicesProgress;
      v16->mAllDevicesProgress = v29;

      [v26 addObject:v16->mAllDevicesProgress];
    }

    v31 = [[CRLProgressGroup alloc] initWithChildren:v26];
    mProgress = v16->mProgress;
    v16->mProgress = v31;
  }

  return v16;
}

- (CRLMovieCompatibilityConverter)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101861D40);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLMovieCompatibilityConverter init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m";
    v18 = 1024;
    v19 = 109;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101861D60);
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

  v7 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:109 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLMovieCompatibilityConverter init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (int64_t)playableOnAllDevicesPreset
{
  if (self->mPlayableOnAllDevicesPreset)
  {
    return self->mPlayableOnAllDevicesPreset;
  }

  else
  {
    return 4;
  }
}

+ (id)progressStringForUpgradingMoviesWithPreset:(int64_t)preset dataCount:(unint64_t)count filename:(id)filename
{
  filenameCopy = filename;
  filenameCopy = &stru_1018BCA28;
  if (preset > 2)
  {
    if (preset > 4)
    {
      if (preset == 5)
      {
        v9 = +[NSBundle mainBundle];
        if (count == 1)
        {
          v10 = @"Converting “%@” to HEVC (4K)…";
          goto LABEL_21;
        }

        v12 = @"Converting %u movies to HEVC (4K)";
      }

      else
      {
        if (preset != 6)
        {
          goto LABEL_34;
        }

        v9 = +[NSBundle mainBundle];
        if (count == 1)
        {
          v10 = @"Converting “%@” to H.264 (Draft Quality / Smaller File)…";
          goto LABEL_21;
        }

        v12 = @"Converting %u movies to H.264 (Draft Quality / Smaller File)";
      }
    }

    else if (preset == 3)
    {
      v9 = +[NSBundle mainBundle];
      if (count == 1)
      {
        v10 = @"Converting “%@” to H.264 (4K)…";
        goto LABEL_21;
      }

      v12 = @"Converting %u movies to H.264 (4K)";
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      if (count == 1)
      {
        v10 = @"Converting “%@” to HEVC (1080p)…";
LABEL_21:
        v11 = [v9 localizedStringForKey:v10 value:0 table:0];
        filenameCopy = [NSString localizedStringWithFormat:v11, filenameCopy];

LABEL_33:
        goto LABEL_34;
      }

      v12 = @"Converting %u movies to HEVC (1080p)";
    }

    goto LABEL_32;
  }

  if (!preset)
  {
    v9 = +[NSBundle mainBundle];
    if (count == 1)
    {
      v10 = @"Converting “%@”…";
      goto LABEL_21;
    }

    v12 = @"Converting %u movies";
    goto LABEL_32;
  }

  if (preset != 1)
  {
    if (preset != 2)
    {
      goto LABEL_34;
    }

    v9 = +[NSBundle mainBundle];
    if (count == 1)
    {
      v10 = @"Converting “%@” to H.264 (1080p)…";
      goto LABEL_21;
    }

    v12 = @"Converting %u movies to H.264 (1080p)";
LABEL_32:
    v13 = [v9 localizedStringForKey:v12 value:0 table:0];
    filenameCopy = [NSString localizedStringWithFormat:v13, count];

    goto LABEL_33;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_101370D70();
  }

  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_101370D84();
  }

LABEL_34:

  return filenameCopy;
}

- (void)convertMediaWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_101A34F70;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10042C5CC;
  v7[3] = &unk_10183FC10;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

+ (id)p_uniquePathForConvertingData:(id)data toType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v44 = 0;
  v7 = [[CRLTemporaryDirectory alloc] initWithError:&v44];
  v8 = v44;
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101370ECC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101370EF4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370F90();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMovieCompatibilityConverter p_uniquePathForConvertingData:toType:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:210 isFatal:0 description:"invalid nil value for '%{public}s'", "temporaryDirectory"];
  }

  path = [(CRLTemporaryDirectory *)v7 path];
  v13 = [NSURL crl_fileURLWithPath:path];

  v14 = [v13 URLByAppendingPathComponent:@"MovieCompatibilityConverter.XXXXXX"];
  v46 = 0;
  path2 = [v14 path];
  strncpy(__dst, [path2 fileSystemRepresentation], 0x3FFuLL);

  v46 = 0;
  v16 = mkdtemp(__dst);
  if (v16)
  {
    v17 = v16;
    v18 = [NSString stringWithUTF8String:v16];
    if (v18)
    {
      v19 = v18;
      v20 = [NSURL fileURLWithPath:v18 isDirectory:1];

      if (v20)
      {
        [UTType typeWithMIMEType:typeCopy];
        v40 = dataCopy;
        v21 = v41 = typeCopy;
        preferredFilenameExtension = [v21 preferredFilenameExtension];
        filename = [v40 filename];
        stringByDeletingPathExtension = [filename stringByDeletingPathExtension];
        [stringByDeletingPathExtension stringByAppendingPathExtension:preferredFilenameExtension];
        v25 = v14;
        v26 = v13;
        v27 = v7;
        v29 = v28 = v8;

        v30 = [v20 URLByAppendingPathComponent:v29];

        v8 = v28;
        v7 = v27;
        v13 = v26;
        v14 = v25;

        dataCopy = v40;
        typeCopy = v41;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v43 = typeCopy;
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v35 = dataCopy;
      if (qword_101AD5A10 != -1)
      {
        sub_101370FB8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101370FE0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101371070();
      }

      v36 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v36);
      }

      v37 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMovieCompatibilityConverter p_uniquePathForConvertingData:toType:]");
      v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:226 isFatal:0 description:"stringWithUTF8String failed"];

      rmdir(v17);
      v30 = 0;
      dataCopy = v35;
      typeCopy = v43;
    }
  }

  else
  {
    v42 = typeCopy;
    v31 = dataCopy;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101371098();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013710C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371150();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v32);
    }

    v33 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMovieCompatibilityConverter p_uniquePathForConvertingData:toType:]");
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:230 isFatal:0 description:"mkdtemp failed"];

    v30 = 0;
    dataCopy = v31;
    typeCopy = v42;
  }

  return v30;
}

- (void)p_convertMovieData:(id)data fromPlayableByAVFoundationToAllDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  playableOnAllDevicesPreset = [(CRLMovieCompatibilityConverter *)self playableOnAllDevicesPreset];
  v10 = sub_1003266C4(playableOnAllDevicesPreset, 0, v9);
  [(CRLMovieCompatibilityConverter *)self p_convertMovieData:dataCopy withPresetName:v10 completionHandler:handlerCopy];
}

- (void)p_convertMovieData:(id)data withPresetName:(id)name completionHandler:(id)handler
{
  dataCopy = data;
  nameCopy = name;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!atomic_load(&self->mIsCancelled))
  {
    if (qword_101AD5CC8 != -1)
    {
      sub_101371178();
    }

    if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
    {
      sub_10137118C();
    }

    v13 = [dataCopy AVAssetAndReturnError:0];
    if (self->mExportSession)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013711F4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137121C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013712B8();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter p_convertMovieData:withPresetName:completionHandler:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:281 isFatal:0 description:"expected nil value for '%{public}s'", "mExportSession"];
    }

    v17 = objc_opt_class();
    identifier = [UTTypeQuickTimeMovie identifier];
    v19 = [v17 p_uniquePathForConvertingData:dataCopy toType:identifier];

    if (v19)
    {
      v20 = [(CRLMovieCompatibilityConverter *)self p_exportSessionForAsset:v13 presetName:nameCopy data:dataCopy outputURL:v19 preserveFrameDuration:self->mDesiredCompatibilityLevel < 4];
      mExportSession = self->mExportSession;
      self->mExportSession = v20;

      if (self->mExportSession)
      {
        [(CRLBasicProgress *)self->mAllDevicesProgress setValue:0.0];
        v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_101A34F70);
        mAllDevicesProgressTimer = self->mAllDevicesProgressTimer;
        self->mAllDevicesProgressTimer = v22;

        v24 = self->mAllDevicesProgressTimer;
        v25 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v24, v25, 0x3B9ACA00uLL, 0x64uLL);
        v26 = self->mAllDevicesProgressTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10042D684;
        handler[3] = &unk_10183AB38;
        handler[4] = self;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_resume(self->mAllDevicesProgressTimer);
        v27 = self->mExportSession;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10042D6E4;
        v30[3] = &unk_101862060;
        v30[4] = self;
        v30[5] = v19;
        v31 = dataCopy;
        v32 = nameCopy;
        v33 = v13;
        v34 = v11;
        v28 = v13;
        [(AVAssetExportSession *)v27 exportAsynchronouslyWithCompletionHandler:v30];

        goto LABEL_23;
      }

      (v11)[2](v11, dataCopy, 0);
    }

    else
    {
      v29 = [[NSError alloc] initWithDomain:NSCocoaErrorDomain code:512 userInfo:0];
      (v11)[2](v11, 0, v29);
    }

    goto LABEL_23;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_23:
}

- (id)p_exportSessionForAsset:(id)asset presetName:(id)name data:(id)data outputURL:(id)l preserveFrameDuration:(BOOL)duration
{
  durationCopy = duration;
  lCopy = l;
  v11 = [AVAssetExportSession crl_exportSessionWithAsset:asset presetName:name preserveFrameDuration:durationCopy];
  identifier = [UTTypeQuickTimeMovie identifier];
  [v11 setOutputFileType:identifier];

  [v11 setOutputURL:lCopy];

  return v11;
}

- (void)p_finishConvertingWithConvertedMovieData:(id)data error:(id)error completionHandler:(id)handler
{
  dataCopy = data;
  errorCopy = error;
  handlerCopy = handler;
  if (!atomic_load(&self->mIsCancelled))
  {
    if (dataCopy)
    {
      if (qword_101AD5CC8 != -1)
      {
        sub_101371644();
      }

      if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
      {
        sub_101371658();
      }

      v12 = dataCopy;
      mConvertedMovieData = self->mConvertedMovieData;
      self->mConvertedMovieData = v12;
LABEL_8:

      goto LABEL_10;
    }

    if (!self->mError)
    {
      if (errorCopy)
      {
        if (qword_101AD5CC8 != -1)
        {
          sub_1013716C0();
        }

        if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
        {
          sub_1013716D4();
        }

        v14 = [errorCopy copy];
        mConvertedMovieData = self->mError;
        self->mError = v14;
      }

      else
      {
        if (qword_101AD5CC8 != -1)
        {
          sub_10137173C();
        }

        if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
        {
          sub_101371750();
        }

        v21 = [NSError alloc];
        mConvertedMovieData = +[NSBundle mainBundle];
        v15 = [mConvertedMovieData localizedStringForKey:@"This movie can’t be added." value:0 table:0];
        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"The file couldn’t be converted into a compatible format." value:0 table:0];
        v18 = [NSDictionary dictionaryWithObjectsAndKeys:v15, NSLocalizedDescriptionKey, v17, NSLocalizedFailureReasonErrorKey, 0];
        v19 = [v21 initWithDomain:@"com.apple.freeform.CRLErrorDomainMediaCompatibility" code:100 userInfo:v18];
        mError = self->mError;
        self->mError = v19;
      }

      goto LABEL_8;
    }
  }

LABEL_10:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)cancel
{
  if (qword_101AD5CC8 != -1)
  {
    sub_1013717B8();
  }

  if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
  {
    sub_1013717CC();
  }

  atomic_fetch_add(&self->mIsCancelled, 1u);
  Main = CFRunLoopGetMain();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10042E6AC;
  block[3] = &unk_10183AB38;
  block[4] = self;
  CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
  CFRunLoopWakeUp(Main);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10042E79C;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  dispatch_async(qword_101A34F70, v4);
}

- (void)p_checkInitialCompatibilityLevelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (qword_101AD5CC8 != -1)
  {
    sub_101371834();
  }

  if (os_log_type_enabled(off_1019F0290, OS_LOG_TYPE_DEBUG))
  {
    sub_101371848();
  }

  if (self->mCompatibilityChecker)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013718B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013718D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371974();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter p_checkInitialCompatibilityLevelWithCompletionHandler:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:426 isFatal:0 description:"expected nil value for '%{public}s'", "mCompatibilityChecker"];
  }

  if (self->mInitialCompatibilityLevel)
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137199C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013719C4(&self->mInitialCompatibilityLevel, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371A7C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLMovieCompatibilityConverter p_checkInitialCompatibilityLevelWithCompletionHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMovieCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:427 isFatal:0 description:"mInitialCompatibilityLevel is %zd, not CRLMediaCompatibilityLevelUnknown", self->mInitialCompatibilityLevel];
  }

  v12 = [[CRLMovieCompatibilityChecker alloc] initWithData:self->mMovieData];
  mCompatibilityChecker = self->mCompatibilityChecker;
  self->mCompatibilityChecker = v12;

  v14 = self->mCompatibilityChecker;
  mDesiredCompatibilityLevel = self->mDesiredCompatibilityLevel;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10042EC58;
  v17[3] = &unk_10183FC10;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(CRLMovieCompatibilityChecker *)v14 checkCompatibilityUpToLevel:mDesiredCompatibilityLevel completionHandler:v17];
}

@end