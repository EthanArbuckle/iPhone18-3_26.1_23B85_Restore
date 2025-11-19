@interface CRLMultipleItemImporter
- (CRLMediaCompatibilityAlertPresenter)alertPresenter;
- (CRLMultipleItemImporter)init;
- (CRLMultipleItemImporter)initWithDataWrappers:(id)a3 boardItemFactory:(id)a4 importAnimatedGIFsAsImages:(BOOL)a5;
- (CRLMultipleItemImporter)initWithURLs:(id)a3 boardItemFactory:(id)a4 importAnimatedGIFsAsImages:(BOOL)a5;
- (NSString)localizedErrorDescription;
- (void)boardItemImporter:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6;
- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)a3;
- (void)cancel;
- (void)importBoardItemsWithCompletionHandler:(id)a3;
- (void)p_importerDidRequestMediaCompatibilityRequirement:(id)a3;
@end

@implementation CRLMultipleItemImporter

- (CRLMultipleItemImporter)initWithURLs:(id)a3 boardItemFactory:(id)a4 importAnimatedGIFsAsImages:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v35.receiver = self;
  v35.super_class = CRLMultipleItemImporter;
  v10 = [(CRLMultipleItemImporter *)&v35 init];
  v11 = v10;
  if (v10)
  {
    sub_10053978C(&v10->super.isa, v9);
    v28 = v8;
    v12 = [v8 copy];
    URLs = v11->_URLs;
    v11->_URLs = v12;

    v30 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v11->_URLs, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v11->_URLs;
    v14 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * v17);
          if (!v5 || ([*(*(&v31 + 1) + 8 * v17) crl_fileTypeIdentifierHandlingFileCoordinationPromises], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "identifier"), v20 = objc_claimAutoreleasedReturnValue(), v21 = +[CRLBoardItemImporter isSupportedAnimatedImageFileType:](CRLBoardItemImporter, "isSupportedAnimatedImageFileType:", v20), v20, v19, v22 = off_10182F880, (v21 & 1) == 0))
          {
            v22 = off_10182F748;
          }

          v23 = [objc_alloc(*v22) initWithURL:v18 boardItemFactory:v9];
          v24 = v23;
          if (v23)
          {
            [v23 setDelegate:v11];
            [v30 addObject:v24];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
    }

    sub_100539844(v11, v30);
    v25 = [[CRLMultipleImporterHelper alloc] initWithImporters:v30];
    importerHelper = v11->_importerHelper;
    v11->_importerHelper = v25;

    v8 = v28;
  }

  return v11;
}

- (CRLMultipleItemImporter)initWithDataWrappers:(id)a3 boardItemFactory:(id)a4 importAnimatedGIFsAsImages:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v34.receiver = self;
  v34.super_class = CRLMultipleItemImporter;
  v10 = [(CRLMultipleItemImporter *)&v34 init];
  v11 = v10;
  if (v10)
  {
    v28 = v9;
    sub_10053978C(&v10->super.isa, v9);
    URLs = v11->_URLs;
    v11->_URLs = &__NSArray0__struct;

    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          if (!v5 || ([*(*(&v30 + 1) + 8 * v18) type], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "identifier"), v21 = objc_claimAutoreleasedReturnValue(), v20, LOBYTE(v20) = +[CRLBoardItemImporter isSupportedAnimatedImageFileType:](CRLBoardItemImporter, "isSupportedAnimatedImageFileType:", v21), v21, v22 = off_10182F880, (v20 & 1) == 0))
          {
            v22 = off_10182F748;
          }

          v23 = [objc_alloc(*v22) initWithData:v19 boardItemFactory:v11->_boardItemFactory];
          v24 = v23;
          if (v23)
          {
            [v23 setDelegate:v11];
            [v13 addObject:v24];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    sub_100539844(v11, v13);
    v25 = [[CRLMultipleImporterHelper alloc] initWithImporters:v13];
    importerHelper = v11->_importerHelper;
    v11->_importerHelper = v25;

    v9 = v28;
    v8 = v29;
  }

  return v11;
}

- (CRLMultipleItemImporter)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D730);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLMultipleItemImporter init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMultipleItemImporter.m";
    v18 = 1024;
    v19 = 167;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D750);
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

  v7 = [NSString stringWithUTF8String:"[CRLMultipleItemImporter init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMultipleItemImporter.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:167 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLMultipleItemImporter init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)importBoardItemsWithCompletionHandler:(id)a3
{
  v13 = a3;
  v4 = dispatch_group_create();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(CRLMultipleImporterHelper *)self->_importerHelper importers];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        dispatch_group_enter(v4);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10053A0F4;
        v16[3] = &unk_10183AB38;
        v17 = v4;
        [v10 importBoardItemWithCompletionHandler:v16];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  importQueue = self->_importQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10053A0FC;
  block[3] = &unk_10183FC10;
  block[4] = self;
  v15 = v13;
  v12 = v13;
  dispatch_group_notify(v4, importQueue, block);
}

- (void)cancel
{
  importQueue = self->_importQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10053A504;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(importQueue, block);
}

- (NSString)localizedErrorDescription
{
  v2 = [(CRLMultipleItemImporter *)self errors];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [NSNumber numberWithUnsignedInteger:v3];
    v5 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:1];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"%@ files couldn’t be inserted." value:0 table:0];
    v3 = [NSString stringWithFormat:v7, v5];
  }

  return v3;
}

- (void)boardItemImporter:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  importQueue = self->_importQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10053A72C;
  block[3] = &unk_10186B038;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(importQueue, block);
}

- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)a3
{
  v4 = a3;
  importQueue = self->_importQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10053A80C;
  v7[3] = &unk_10183AE28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(importQueue, v7);
}

- (void)p_importerDidRequestMediaCompatibilityRequirement:(id)a3
{
  [(CRLMultipleImporterHelper *)self->_importerHelper mediaCompatibilityCheckHasBeenHandledForImporter:a3];
  if ([(CRLMultipleImporterHelper *)self->_importerHelper allImportersHaveGivenCompatibilityResponse]&& [(CRLMultipleImporterHelper *)self->_importerHelper numberOfImportersRequiringCompatibilityConversion])
  {
    v4 = [(CRLMultipleItemImporter *)self alertPresenter];
    importerHelper = self->_importerHelper;
    if (v4)
    {
      v6 = [(CRLMultipleImporterHelper *)importerHelper mediaTypeForConversion];
      if (!v6)
      {
        v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138F5C0();
        }

        v8 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138F5D4(v7, v8);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138F680();
        }

        v9 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EE10(v9, v7);
        }

        v10 = [NSString stringWithUTF8String:"[CRLMultipleItemImporter p_importerDidRequestMediaCompatibilityRequirement:]"];
        v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMultipleItemImporter.m"];
        [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:322 isFatal:0 description:"No media types were specified! Falling back to Mixed to have understandable strings."];

        v6 = 3;
      }

      v12 = [(CRLMultipleImporterHelper *)self->_importerHelper reasonsForMediaConversion];
      v13 = [(CRLMultipleImporterHelper *)self->_importerHelper numberOfImportersRequiringCompatibilityConversion]== 1;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10053AAAC;
      v14[3] = &unk_10186B0C8;
      v14[4] = self;
      [v4 presentMediaCompatibilityAlertWithReasons:v12 forMediaType:v6 forSingleMediaObject:v13 completionHandler:v14];
    }

    else
    {
      [(CRLMultipleImporterHelper *)importerHelper completeImportWithCompatibilityOnAllDevices:0 allowHEVCContent:1];
    }
  }
}

- (CRLMediaCompatibilityAlertPresenter)alertPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_alertPresenter);

  return WeakRetained;
}

@end