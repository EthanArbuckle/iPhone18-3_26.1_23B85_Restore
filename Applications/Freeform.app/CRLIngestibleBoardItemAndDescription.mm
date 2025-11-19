@interface CRLIngestibleBoardItemAndDescription
+ (CRLIngestibleBoardItemAndDescription)ingestibleBoardItemAndDescriptionWithBoardItem:(id)a3 description:(id)a4;
+ (CRLIngestibleBoardItemAndDescription)ingestibleBoardItemAndDescriptionWithBoardItems:(id)a3 descriptions:(id)a4;
- (CRLIngestibleBoardItemAndDescription)init;
- (CRLIngestibleBoardItemAndDescription)initWithBoardItem:(id)a3 description:(id)a4;
@end

@implementation CRLIngestibleBoardItemAndDescription

+ (CRLIngestibleBoardItemAndDescription)ingestibleBoardItemAndDescriptionWithBoardItem:(id)a3 description:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBoardItem:v7 description:v6];

  return v8;
}

+ (CRLIngestibleBoardItemAndDescription)ingestibleBoardItemAndDescriptionWithBoardItems:(id)a3 descriptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338760();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v19 = v9;
      *buf = 67110402;
      v21 = v8;
      v22 = 2082;
      v23 = "+[CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItems:descriptions:]";
      v24 = 2082;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLIngestibleBoardItemAndDescription.m";
      v26 = 1024;
      v27 = 27;
      v28 = 2048;
      v29 = [v5 count];
      v30 = 2048;
      v31 = [v6 count];
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must provide the same number of drawables (%lu) and descriptions (%lu).", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101338774();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v10, v8);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItems:descriptions:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLIngestibleBoardItemAndDescription.m"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 27, 0, "Must provide the same number of drawables (%lu) and descriptions (%lu).", [v5 count], objc_msgSend(v6, "count"));
  }

  v13 = +[NSMutableArray array];
  if ([v5 count])
  {
    v14 = 0;
    do
    {
      v15 = [v5 objectAtIndexedSubscript:v14];
      v16 = [v6 objectAtIndexedSubscript:v14];
      v17 = [CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItem:v15 description:v16];

      [v13 addObject:v17];
      ++v14;
    }

    while (v14 < [v5 count]);
  }

  return v13;
}

- (CRLIngestibleBoardItemAndDescription)initWithBoardItem:(id)a3 description:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLIngestibleBoardItemAndDescription;
  v9 = [(CRLIngestibleBoardItemAndDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_boardItem, a3);
    objc_storeStrong(&v10->_ingestibleDescription, a4);
  }

  return v10;
}

- (CRLIngestibleBoardItemAndDescription)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184B618);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLIngestibleBoardItemAndDescription init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLIngestibleBoardItemAndDescription.m";
    v18 = 1024;
    v19 = 46;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184B638);
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

  v7 = [NSString stringWithUTF8String:"[CRLIngestibleBoardItemAndDescription init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLIngestibleBoardItemAndDescription.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:46 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLIngestibleBoardItemAndDescription init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end