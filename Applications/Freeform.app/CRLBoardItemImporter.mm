@interface CRLBoardItemImporter
+ (BOOL)isSupportedAnimatedImageFileType:(id)type;
+ (CRLBoardItemImporter)allocWithZone:(_NSZone *)zone;
+ (Class)p_subclassForPreinsertionAssetWrapper:(id)wrapper;
+ (Class)p_subclassForURL:(id)l;
+ (NSArray)supportedFileTypes;
+ (NSArray)supportedFileUTTypes;
+ (NSArray)supportedRemoteURLSchemes;
+ (NSString)defaultPastedImageName;
+ (NSString)defaultPastedMovieName;
+ (void)p_enumerateRegisteredSubclassesUsingBlock:(id)block;
+ (void)p_registerDefaultSubclassesIfNeeded;
+ (void)registerSubclass:(Class)subclass;
- (CRLBoardItemImporter)initWithData:(id)data boardItemFactory:(id)factory;
- (CRLBoardItemImporter)initWithURL:(id)l boardItemFactory:(id)factory;
- (CRLBoardItemImporterDelegate)delegate;
- (CRLProgress)progress;
- (NSError)error;
- (_TtC8Freeform12CRLBoardItem)boardItem;
- (id)p_placeholderInit;
- (unint64_t)embeddedDataLength;
- (unint64_t)uploadDataLength;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)handler;
@end

@implementation CRLBoardItemImporter

+ (void)p_registerDefaultSubclassesIfNeeded
{
  if (!qword_101A34F78 && qword_101A34F80 != -1)
  {
    sub_101374538();
  }
}

+ (void)registerSubclass:(Class)subclass
{
  if (subclass != self && ([(objc_class *)subclass isSubclassOfClass:self]& 1) != 0)
  {
    goto LABEL_16;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137454C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101374560();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013745F4();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v5);
  }

  v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBoardItemImporter registerSubclass:]");
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:68 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "(importerSubclass != self) && [importerSubclass isSubclassOfClass:self]"];

  if (subclass != self)
  {
LABEL_16:
    if ([(objc_class *)subclass isSubclassOfClass:self])
    {
      [self p_registerDefaultSubclassesIfNeeded];
      [qword_101A34F78 addObject:subclass];
    }
  }
}

+ (void)p_enumerateRegisteredSubclassesUsingBlock:(id)block
{
  blockCopy = block;
  [self p_registerDefaultSubclassesIfNeeded];
  v5 = qword_101A34F78;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10043C398;
  v7[3] = &unk_101862F70;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v7];
}

+ (NSArray)supportedFileTypes
{
  +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10043C470;
  v7 = v6[3] = &unk_101862F98;
  v3 = v7;
  [self p_enumerateRegisteredSubclassesUsingBlock:v6];
  allObjects = [v3 allObjects];

  return allObjects;
}

+ (NSArray)supportedFileUTTypes
{
  +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10043C594;
  v7 = v6[3] = &unk_101862F98;
  v3 = v7;
  [self p_enumerateRegisteredSubclassesUsingBlock:v6];
  allObjects = [v3 allObjects];

  return allObjects;
}

+ (BOOL)isSupportedAnimatedImageFileType:(id)type
{
  typeCopy = type;
  v5 = +[NSMutableSet set];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10043C6EC;
  v9[3] = &unk_101862F98;
  v9[4] = v5;
  [self p_enumerateRegisteredSubclassesUsingBlock:v9];
  allObjects = [v5 allObjects];
  v7 = [typeCopy crl_conformsToAnyUTI:allObjects];

  return v7;
}

+ (NSArray)supportedRemoteURLSchemes
{
  +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10043C810;
  v7 = v6[3] = &unk_101862F98;
  v3 = v7;
  [self p_enumerateRegisteredSubclassesUsingBlock:v6];
  allObjects = [v3 allObjects];

  return allObjects;
}

+ (Class)p_subclassForURL:(id)l
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v20 = 0;
  isFileURL = [lCopy isFileURL];
  v6 = isFileURL;
  if (isFileURL)
  {
    crl_fileTypeIdentifierHandlingFileCoordinationPromises = [lCopy crl_fileTypeIdentifierHandlingFileCoordinationPromises];
  }

  else
  {
    crl_fileTypeIdentifierHandlingFileCoordinationPromises = 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10043CA28;
  v12[3] = &unk_101862FC0;
  v16 = v6;
  v8 = crl_fileTypeIdentifierHandlingFileCoordinationPromises;
  v13 = v8;
  v9 = lCopy;
  v14 = v9;
  v15 = &v17;
  [self p_enumerateRegisteredSubclassesUsingBlock:v12];
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);

  return v10;
}

+ (Class)p_subclassForPreinsertionAssetWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v15 = 0;
  type = [wrapperCopy type];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10043CD30;
  v9[3] = &unk_101862FE8;
  v9[4] = type;
  v6 = wrapperCopy;
  v10 = v6;
  v11 = &v12;
  [self p_enumerateRegisteredSubclassesUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (CRLBoardItemImporter)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [CRLBoardItemImporterPlaceholder allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___CRLBoardItemImporter;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
  }
}

- (CRLBoardItemImporter)initWithURL:(id)l boardItemFactory:(id)factory
{
  lCopy = l;
  factoryCopy = factory;
  if (!lCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137461C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374630();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013746C4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLBoardItemImporter initWithURL:boardItemFactory:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:264 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "URL != nil"];
  }

  v15.receiver = self;
  v15.super_class = CRLBoardItemImporter;
  v11 = [(CRLBoardItemImporter *)&v15 init];
  if (v11)
  {
    v12 = [lCopy copy];
    URL = v11->_URL;
    v11->_URL = v12;

    objc_storeStrong(&v11->_boardItemFactory, factory);
  }

  return v11;
}

- (CRLBoardItemImporter)initWithData:(id)data boardItemFactory:(id)factory
{
  dataCopy = data;
  factoryCopy = factory;
  if (!dataCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013746EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374700();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374794();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter initWithData:boardItemFactory:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:277 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "assetWrapper != nil"];
  }

  v15.receiver = self;
  v15.super_class = CRLBoardItemImporter;
  v12 = [(CRLBoardItemImporter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preinsertionAsset, data);
    objc_storeStrong(&v13->_boardItemFactory, factory);
  }

  return v13;
}

- (id)p_placeholderInit
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013747BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013747D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374870();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLBoardItemImporter p_placeholderInit]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:293 isFatal:0 description:"Do not call method"];

    v8 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLBoardItemImporter p_placeholderInit]"];
    v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v11.receiver = self;
  v11.super_class = CRLBoardItemImporter;
  return [(CRLBoardItemImporter *)&v11 init];
}

- (void)importBoardItemWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018630C8);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLBoardItemImporter importBoardItemWithCompletionHandler:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v27 = 1024;
    v28 = 300;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018630E8);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLBoardItemImporter importBoardItemWithCompletionHandler:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:300 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLBoardItemImporter importBoardItemWithCompletionHandler:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (void)cancel
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863108);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLBoardItemImporter cancel]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v25 = 1024;
    v26 = 304;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863128);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter cancel]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:304 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLBoardItemImporter cancel]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (CRLProgress)progress
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863148);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLBoardItemImporter progress]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v25 = 1024;
    v26 = 312;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863168);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter progress]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:312 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLBoardItemImporter progress]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (_TtC8Freeform12CRLBoardItem)boardItem
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863188);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLBoardItemImporter boardItem]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v25 = 1024;
    v26 = 318;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018631A8);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter boardItem]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:318 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLBoardItemImporter boardItem]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (NSError)error
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018631C8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLBoardItemImporter error]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v25 = 1024;
    v26 = 324;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018631E8);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter error]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:324 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLBoardItemImporter error]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (unint64_t)uploadDataLength
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863208);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLBoardItemImporter uploadDataLength]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v25 = 1024;
    v26 = 330;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863228);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter uploadDataLength]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:330 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLBoardItemImporter uploadDataLength]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (unint64_t)embeddedDataLength
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863248);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLBoardItemImporter embeddedDataLength]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m";
    v25 = 1024;
    v26 = 336;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863268);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporter embeddedDataLength]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:336 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLBoardItemImporter embeddedDataLength]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

+ (NSString)defaultPastedImageName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"pasted-image" value:0 table:0];

  return v3;
}

+ (NSString)defaultPastedMovieName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"pasted-movie" value:0 table:0];

  return v3;
}

- (CRLBoardItemImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end