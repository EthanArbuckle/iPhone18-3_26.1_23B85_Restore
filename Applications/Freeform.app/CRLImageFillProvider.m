@interface CRLImageFillProvider
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (void)makeCompatibleImageDataFromURL:(id)a3 forAssetOwner:(id)a4 modalOperationPresenter:(id)a5 compatibilityAlertPresenter:(id)a6 completionHandler:(id)a7;
+ (void)makeCompatibleImageFillDataFromURL:(id)a3 forAssetOwner:(id)a4 modalOperationPresenter:(id)a5 compatibilityAlertPresenter:(id)a6 completionHandler:(id)a7;
+ (void)p_makeCompatibleImageFillDataForFill:(BOOL)a3 withFillProvider:(id)a4 forAssetOwner:(id)a5 modalOperationPresenter:(id)a6 compatibilityAlertPresenter:(id)a7 completionHandler:(id)a8;
- (CRLImageFillProvider)init;
- (CRLImageFillProvider)initWithData:(id)a3 type:(id)a4;
- (CRLImageFillProvider)initWithURL:(id)a3;
- (void)p_continueWorkOnMainThreadWithModalOperationPresenter:(id)a3 usingBlock:(id)a4;
- (void)p_convertImageData:(id)a3 toCompatibilityLevel:(int64_t)a4 assetOwner:(id)a5 completionHandler:(id)a6;
- (void)p_provideImageDataForAssetOwner:(id)a3 data:(id)a4 modalOperationPresenter:(id)a5 compatibilityAlertPresenter:(id)a6 completionHandler:(id)a7;
- (void)provideImageDataForAssetOwner:(id)a3 modalOperationPresenter:(id)a4 compatibilityAlertPresenter:(id)a5 completionHandler:(id)a6;
@end

@implementation CRLImageFillProvider

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[CRLBoardItemImporter supportedImageFileTypes];
  v11 = [v9 crl_conformsToAnyUTI:v10];

  if (v11)
  {
    a5 = [[a1 alloc] initWithData:v8 type:v9];
  }

  else if (a5)
  {
    v17[0] = NSLocalizedDescriptionKey;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"The image type is not supported on this device." value:0 table:0];
    v17[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
    v18[0] = v13;
    v18[1] = &off_1018E2E08;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v15 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:103 userInfo:v14];
    *a5 = v15;

    a5 = 0;
  }

  return a5;
}

- (CRLImageFillProvider)initWithData:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CRLImageFillProvider;
  v9 = [(CRLImageFillProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    v11 = [v8 copy];
    type = v10->_type;
    v10->_type = v11;

    v13 = objc_alloc_init(CRLScaledProgress);
    progress = v10->_progress;
    v10->_progress = v13;
  }

  return v10;
}

- (CRLImageFillProvider)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLImageFillProvider;
  v5 = [(CRLImageFillProvider *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(CRLScaledProgress);
    progress = v5->_progress;
    v5->_progress = v8;
  }

  return v5;
}

- (CRLImageFillProvider)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018621A0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLImageFillProvider init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m";
    v18 = 1024;
    v19 = 79;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018621C0);
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

  v7 = [NSString stringWithUTF8String:"[CRLImageFillProvider init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:79 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLImageFillProvider init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)p_continueWorkOnMainThreadWithModalOperationPresenter:(id)a3 usingBlock:(id)a4
{
  if (a3)
  {
    [a3 continueAsynchronousWorkOnMainThreadUsingBlock:a4];
  }

  else
  {
    dispatch_async(&_dispatch_main_q, a4);
  }
}

- (void)provideImageDataForAssetOwner:(id)a3 modalOperationPresenter:(id)a4 compatibilityAlertPresenter:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v30 = a4;
  v11 = a5;
  v12 = a6;
  if (+[NSThread isMainThread])
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101371AA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101371AB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371B48();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLImageFillProvider provideImageDataForAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:107 isFatal:0 description:"This operation must only be performed on the main thread."];

    if (v12)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101371B70();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101371B98();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101371C34();
  }

  v16 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v16);
  }

  v17 = [NSString stringWithUTF8String:"[CRLImageFillProvider provideImageDataForAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]"];
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:108 isFatal:0 description:"invalid nil value for '%{public}s'", "completionHandler"];

  if (!v11)
  {
LABEL_23:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101371C5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101371C84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371D20();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = [NSString stringWithUTF8String:"[CRLImageFillProvider provideImageDataForAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:109 isFatal:0 description:"invalid nil value for '%{public}s'", "alertPresenter"];
  }

LABEL_32:
  v22 = [UTType typeWithIdentifier:self->_type];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 preferredFilenameExtension];
  }

  else
  {
    v24 = @"png";
  }

  v25 = +[CRLBoardItemImporter defaultPastedImageName];
  v26 = [[NSString alloc] initWithFormat:@"%@.%@", v25, v24];
  if (self->_data)
  {
    v27 = [[_TtC8Freeform27CRLPreinsertionAssetWrapper alloc] initWithData:self->_data filename:v26 owner:v10 error:0];
  }

  else
  {
    if (!self->_url)
    {
LABEL_41:
      v29 = v30;
      [(CRLImageFillProvider *)self p_provideImageDataForAssetOwner:v10 data:0 modalOperationPresenter:v30 compatibilityAlertPresenter:v11 completionHandler:v12];
      goto LABEL_42;
    }

    v27 = [[_TtC8Freeform27CRLPreinsertionAssetWrapper alloc] initWithUrl:self->_url owner:v10];
  }

  v28 = v27;
  if (!v27)
  {
    goto LABEL_41;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10042FA70;
  v31[3] = &unk_1018622A8;
  v31[4] = self;
  v32 = v10;
  v29 = v30;
  v33 = v30;
  v34 = v11;
  v35 = v12;
  [(CRLPreinsertionAssetWrapper *)v28 createAssetWithCompletionHandler:v31];

LABEL_42:
}

- (void)p_provideImageDataForAssetOwner:(id)a3 data:(id)a4 modalOperationPresenter:(id)a5 compatibilityAlertPresenter:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101371D48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101371D5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371DEC();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLImageFillProvider p_provideImageDataForAssetOwner:data:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:152 isFatal:0 description:"Cannot make image data to provide a fill!"];
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10042FDF4;
  v36[3] = &unk_101862338;
  v36[4] = self;
  v20 = v14;
  v37 = v20;
  v38 = v16;
  v21 = v16;
  v22 = objc_retainBlock(v36);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10042FF80;
  v29[3] = &unk_101862388;
  v29[4] = self;
  v30 = v20;
  v31 = [[CRLImageCompatibilityChecker alloc] initWithImageData:v13];
  v32 = v13;
  v34 = v15;
  v35 = v22;
  v33 = v12;
  v23 = v15;
  v24 = v12;
  v25 = v22;
  v26 = v13;
  v27 = v31;
  v28 = v20;
  [(CRLImageCompatibilityChecker *)v27 checkCompatibilityUpToLevel:4 completionHandler:v29];
}

- (void)p_convertImageData:(id)a3 toCompatibilityLevel:(int64_t)a4 assetOwner:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[CRLImageCompatibilityConverter alloc] initWithImageData:v12 desiredCompatibilityLevel:a4 assetOwner:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10043062C;
  v16[3] = &unk_1018623F0;
  v18 = self;
  v19 = v10;
  v17 = v13;
  v14 = v10;
  v15 = v13;
  [(CRLImageCompatibilityConverter *)v15 convertMediaWithCompletionHandler:v16];
}

+ (void)makeCompatibleImageDataFromURL:(id)a3 forAssetOwner:(id)a4 modalOperationPresenter:(id)a5 compatibilityAlertPresenter:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[CRLImageFillProvider alloc] initWithURL:v16];

  [a1 p_makeCompatibleImageFillDataForFill:0 withFillProvider:v17 forAssetOwner:v15 modalOperationPresenter:v14 compatibilityAlertPresenter:v13 completionHandler:v12];
}

+ (void)makeCompatibleImageFillDataFromURL:(id)a3 forAssetOwner:(id)a4 modalOperationPresenter:(id)a5 compatibilityAlertPresenter:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[CRLImageFillProvider alloc] initWithURL:v16];

  [a1 p_makeCompatibleImageFillDataForFill:1 withFillProvider:v17 forAssetOwner:v15 modalOperationPresenter:v14 compatibilityAlertPresenter:v13 completionHandler:v12];
}

+ (void)p_makeCompatibleImageFillDataForFill:(BOOL)a3 withFillProvider:(id)a4 forAssetOwner:(id)a5 modalOperationPresenter:(id)a6 compatibilityAlertPresenter:(id)a7 completionHandler:(id)a8
{
  v39 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (+[NSThread isMainThread])
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101371EE0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101371EF4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101371F84();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101371FAC(v17);
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImageFillProvider p_makeCompatibleImageFillDataForFill:withFillProvider:forAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:321 isFatal:0 description:"This operation must only be performed on the main thread."];

    if (v12)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101372054();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137207C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101372118();
  }

  v20 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101372140(v20);
  }

  v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImageFillProvider p_makeCompatibleImageFillDataForFill:withFillProvider:forAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]");
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:322 isFatal:0 description:"invalid nil value for '%{public}s'", "fillProvider"];

  if (v15)
  {
LABEL_4:
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_25:
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013721E8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101372210();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013722AC();
  }

  v23 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013722D4(v23);
  }

  v24 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImageFillProvider p_makeCompatibleImageFillDataForFill:withFillProvider:forAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]");
  v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:323 isFatal:0 description:"invalid nil value for '%{public}s'", "alertPresenter"];

  if (v14)
  {
LABEL_5:
    if (v16)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

LABEL_34:
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137237C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013723A4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101372440();
  }

  v26 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101372468(v26);
  }

  v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImageFillProvider p_makeCompatibleImageFillDataForFill:withFillProvider:forAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]");
  v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:324 isFatal:0 description:"invalid nil value for '%{public}s'", "modalOperationPresenter"];

  if (!v16)
  {
LABEL_43:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372510();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372538();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013725D4();
    }

    v29 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013725FC(v29);
    }

    v30 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImageFillProvider p_makeCompatibleImageFillDataForFill:withFillProvider:forAssetOwner:modalOperationPresenter:compatibilityAlertPresenter:completionHandler:]");
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFillProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:325 isFatal:0 description:"invalid nil value for '%{public}s'", "completionHandler"];
  }

LABEL_52:
  v32 = [[CRLBasicProgress alloc] initWithMaxValue:1.0];
  [(CRLBasicProgress *)v32 setIndeterminate:1];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v33 = +[NSBundle mainBundle];
  if (v39)
  {
    [v33 localizedStringForKey:@"Inserting image fill" value:0 table:0];
  }

  else
  {
    [v33 localizedStringForKey:@"Inserting image" value:0 table:0];
  }
  v34 = ;

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1004315F0;
  v45[3] = &unk_101839FF8;
  v47 = v48;
  v35 = v12;
  v46 = v35;
  v36 = [v14 beginModalOperationWithLocalizedMessage:v34 progress:v32 cancelHandler:v45];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100431608;
  v40[3] = &unk_101862580;
  v37 = v14;
  v41 = v37;
  v42 = v36;
  v38 = v16;
  v43 = v38;
  v44 = v48;
  [v35 provideImageDataForAssetOwner:v13 modalOperationPresenter:v37 compatibilityAlertPresenter:v15 completionHandler:v40];

  _Block_object_dispose(v48, 8);
}

@end