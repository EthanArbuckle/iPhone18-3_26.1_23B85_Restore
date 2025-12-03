@interface CRLInfoImporterBoardItemProvider
+ (BOOL)canInitWithType:(id)type;
+ (NSArray)disallowedTypes;
- (CRLInfoImporterBoardItemProvider)init;
- (CRLInfoImporterBoardItemProvider)initWithData:(id)data type:(id)type boardItemFactory:(id)factory;
- (CRLInfoImporterBoardItemProvider)initWithURL:(id)l type:(id)type boardItemFactory:(id)factory;
- (void)boardItemImporter:(id)importer needsMediaCompatibilityFeedbackWithReasons:(int64_t)reasons forMediaType:(int64_t)type usingBlock:(id)block;
- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)requirement;
- (void)provideBoardItemWithFactory:(id)factory completionHandler:(id)handler;
@end

@implementation CRLInfoImporterBoardItemProvider

+ (BOOL)canInitWithType:(id)type
{
  v3 = [UTType typeWithIdentifier:type];
  if (v3)
  {
    v4 = +[CRLBoardItemImporter supportedImageFileUTTypes];
    v5 = +[CRLBoardItemImporter supportedMovieFileUTTypes];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v7 = +[CRLBoardItemImporter supportedFileUTTypes];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if ([v3 conformsToType:{*(*(&v16 + 1) + 8 * i), v16}])
          {
            v13 = +[CRLInfoImporterBoardItemProvider disallowedTypes];
            v14 = [v13 containsObject:v3];

            if (!v14)
            {
              LOBYTE(v10) = 1;
              goto LABEL_14;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (NSArray)disallowedTypes
{
  if (qword_101A34FD8 != -1)
  {
    sub_1013793E4();
  }

  v3 = qword_101A34FD0;

  return v3;
}

- (CRLInfoImporterBoardItemProvider)initWithData:(id)data type:(id)type boardItemFactory:(id)factory
{
  dataCopy = data;
  typeCopy = type;
  factoryCopy = factory;
  v19.receiver = self;
  v19.super_class = CRLInfoImporterBoardItemProvider;
  v12 = [(CRLInfoImporterBoardItemProvider *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    v14 = [typeCopy copy];
    type = v13->_type;
    v13->_type = v14;

    objc_storeStrong(&v13->_boardItemFactory, factory);
    v16 = objc_alloc_init(CRLScaledProgress);
    progress = v13->_progress;
    v13->_progress = v16;
  }

  return v13;
}

- (CRLInfoImporterBoardItemProvider)initWithURL:(id)l type:(id)type boardItemFactory:(id)factory
{
  lCopy = l;
  typeCopy = type;
  factoryCopy = factory;
  v29.receiver = self;
  v29.super_class = CRLInfoImporterBoardItemProvider;
  v11 = [(CRLInfoImporterBoardItemProvider *)&v29 init];
  if (v11)
  {
    v28 = 0;
    v12 = [[CRLTemporaryDirectory alloc] initWithSignature:@"ImporterBoardItemProvider" error:&v28];
    v13 = v28;
    temporaryDirectory = v11->_temporaryDirectory;
    v11->_temporaryDirectory = v12;

    if (!v13)
    {
      v15 = [(CRLTemporaryDirectory *)v11->_temporaryDirectory URL];
      lastPathComponent = [lCopy lastPathComponent];
      v17 = [v15 URLByAppendingPathComponent:lastPathComponent];
      dataURL = v11->_dataURL;
      v11->_dataURL = v17;

      v19 = +[NSFileManager defaultManager];
      v20 = v11->_dataURL;
      v27 = 0;
      [v19 copyItemAtURL:lCopy toURL:v20 error:&v27];
      v13 = v27;

      if (!v13)
      {
        v21 = [typeCopy copy];
        type = v11->_type;
        v11->_type = v21;

        v23 = objc_alloc_init(CRLScaledProgress);
        progress = v11->_progress;
        v11->_progress = v23;
      }
    }

    objc_storeStrong(&v11->_boardItemFactory, factory);
    if (v13)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_1013793F8();
      }

      v25 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_101379420(lCopy, v25, v13);
      }

      v11 = 0;
    }
  }

  return v11;
}

- (CRLInfoImporterBoardItemProvider)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101864DA0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLInfoImporterBoardItemProvider init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m";
    v18 = 1024;
    v19 = 124;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101864DC0);
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

  v7 = [NSString stringWithUTF8String:"[CRLInfoImporterBoardItemProvider init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:124 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLInfoImporterBoardItemProvider init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)provideBoardItemWithFactory:(id)factory completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [UTType typeWithIdentifier:self->_type];
  if (!v6)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101379528();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137953C(&self->_type, v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013795EC();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLInfoImporterBoardItemProvider provideBoardItemWithFactory:completionHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:132 isFatal:0 description:"Failed to create a UTType for %{public}@", self->_type];
  }

  preferredFilenameExtension = [v6 preferredFilenameExtension];
  v13 = +[CRLIngestionTypes supportedMovieUTTypes];
  v14 = [v6 crl_conformsToAnyUTType:v13];

  if (v14)
  {
    v15 = +[CRLBoardItemImporter defaultPastedMovieName];
    v16 = [NSString alloc];
    v17 = @"mov";
    if (preferredFilenameExtension)
    {
      v17 = preferredFilenameExtension;
    }

    v18 = [v16 initWithFormat:@"%@.%@", v15, v17];
    goto LABEL_21;
  }

  v19 = +[CRLIngestionTypes supportedImageUTTypes];
  v20 = [v6 crl_conformsToAnyUTType:v19];

  if (v20)
  {
    v15 = +[CRLBoardItemImporter defaultPastedImageName];
    v21 = [NSString alloc];
    v22 = @"png";
    if (preferredFilenameExtension)
    {
      v22 = preferredFilenameExtension;
    }

    v23 = [v21 initWithFormat:@"%@.%@", v15, v22];
    v24 = 1;
  }

  else
  {
    localizedDescription = [v6 localizedDescription];
    v15 = localizedDescription;
    if (preferredFilenameExtension)
    {
      v18 = [[NSString alloc] initWithFormat:@"%@.%@", localizedDescription, preferredFilenameExtension];
LABEL_21:
      v23 = v18;
      v24 = 0;
      goto LABEL_22;
    }

    v15 = localizedDescription;
    v24 = 0;
    v23 = v15;
  }

LABEL_22:

  if (self->_data)
  {
    v58 = handlerCopy;
    v26 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    data = self->_data;
    assetOwner = [(CRLBoardItemFactory *)self->_boardItemFactory assetOwner];
    v60 = 0;
    v29 = [(CRLPreinsertionAssetWrapper *)v26 initWithData:data filename:v23 owner:assetOwner error:&v60];
    v30 = v60;

    if (!v29)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013796F8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101379720();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013797B4();
      }

      handlerCopy = v58;
      v37 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v37);
      }

      v38 = [NSString stringWithUTF8String:"[CRLInfoImporterBoardItemProvider provideBoardItemWithFactory:completionHandler:]"];
      v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m"];
      [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:160 isFatal:0 description:"Error %@ creating pre-insertion asset wrapper for data.", v30];
      goto LABEL_41;
    }

    v31 = [[CRLBoardItemImporter alloc] initWithData:v29 boardItemFactory:self->_boardItemFactory];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v44 = +[CRLIngestionTypes supportedMovieUTTypes];
      v45 = [v6 crl_conformsToAnyUTType:v44];

      if (v45)
      {
        v34 = +[CRLBoardItemImporter defaultPastedMovieName];
        v35 = @"mov";
        goto LABEL_53;
      }
    }

    else if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = +[CRLIngestionTypes supportedImageUTTypes];
        v33 = [v6 crl_conformsToAnyUTType:v32];

        if (v33)
        {
          v34 = +[CRLBoardItemImporter defaultPastedImageName];
          v35 = @"png";
LABEL_53:
          v46 = [NSString alloc];
          if (preferredFilenameExtension)
          {
            v47 = preferredFilenameExtension;
          }

          else
          {
            v47 = v35;
          }

          v48 = [v46 initWithFormat:@"%@.%@", v34, v47];

          v49 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
          v50 = self->_data;
          assetOwner2 = [(CRLBoardItemFactory *)self->_boardItemFactory assetOwner];
          v59 = v30;
          v29 = [(CRLPreinsertionAssetWrapper *)v49 initWithData:v50 filename:v48 owner:assetOwner2 error:&v59];
          v52 = v59;

          if (v29)
          {
            v23 = v48;
            v30 = v52;
LABEL_59:

            v53 = [[CRLBoardItemImporter alloc] initWithData:v29 boardItemFactory:self->_boardItemFactory];
            infoImporter = self->_infoImporter;
            self->_infoImporter = v53;

            v30 = v29;
            handlerCopy = v58;
            goto LABEL_60;
          }

          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101379614();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10137963C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013796D0();
          }

          v57 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v57);
          }

          v38 = [NSString stringWithUTF8String:"[CRLInfoImporterBoardItemProvider provideBoardItemWithFactory:completionHandler:]"];
          v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m"];
          [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:185 isFatal:0 description:"Error %@ creating pre-insertion asset wrapper for data.", v52];
          v23 = v48;
          v30 = v52;
          handlerCopy = v58;
LABEL_41:

          goto LABEL_60;
        }
      }
    }

    goto LABEL_59;
  }

  if (self->_dataURL)
  {
    v36 = [[CRLBoardItemImporter alloc] initWithURL:self->_dataURL boardItemFactory:self->_boardItemFactory];
    v30 = self->_infoImporter;
    self->_infoImporter = v36;
  }

  else
  {
    v40 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013797DC();
    }

    v41 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101379804(v40, v41);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013798B0();
    }

    v42 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v42);
    }

    v30 = [NSString stringWithUTF8String:"[CRLInfoImporterBoardItemProvider provideBoardItemWithFactory:completionHandler:]"];
    v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInfoImporterBoardItemProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v43 lineNumber:191 isFatal:0 description:"No data or URL available. Unable to import."];
  }

LABEL_60:

  v55 = self->_infoImporter;
  if (v55)
  {
    progress = [(CRLBoardItemImporter *)v55 progress];
    [(CRLScaledProgress *)self->_progress setProgress:progress];
    [progress maxValue];
    [(CRLScaledProgress *)self->_progress setMaxValue:?];
    [(CRLBoardItemImporter *)self->_infoImporter setDelegate:self];
    [(CRLBoardItemImporter *)self->_infoImporter importBoardItemWithCompletionHandler:handlerCopy];
  }

  else
  {
    progress = [(CRLInfoImporterBoardItemProvider *)self delegate];
    if (progress && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [progress importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)boardItemImporter:(id)importer needsMediaCompatibilityFeedbackWithReasons:(int64_t)reasons forMediaType:(int64_t)type usingBlock:(id)block
{
  blockCopy = block;
  delegate = [(CRLInfoImporterBoardItemProvider *)self delegate];
  v11 = delegate;
  if (delegate)
  {
    [delegate importableBoardItemProvider:self needsMediaCompatibilityFeedbackWithReasons:reasons forMediaType:type usingBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy, 0, 1);
  }
}

- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)requirement
{
  delegate = [(CRLInfoImporterBoardItemProvider *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
    }
  }

  _objc_release_x2();
}

@end