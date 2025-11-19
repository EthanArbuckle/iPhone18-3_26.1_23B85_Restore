@interface CRLStyleMappingBoardItemProvider
- (CRLStyleMappingBoardItemProvider)init;
- (CRLStyleMappingBoardItemProvider)initWithIngestibleBoardItem:(id)a3;
- (id)imageData;
- (id)thumbnailImageData;
- (void)provideBoardItemWithFactory:(id)a3 completionHandler:(id)a4;
@end

@implementation CRLStyleMappingBoardItemProvider

- (CRLStyleMappingBoardItemProvider)initWithIngestibleBoardItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLStyleMappingBoardItemProvider;
  v6 = [(CRLStyleMappingBoardItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ingestibleItemDrawable, a3);
  }

  return v7;
}

- (CRLStyleMappingBoardItemProvider)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101846430);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLStyleMappingBoardItemProvider init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLStyleMappingBoardItemProvider.m";
    v18 = 1024;
    v19 = 27;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101846450);
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

  v7 = [NSString stringWithUTF8String:"[CRLStyleMappingBoardItemProvider init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLStyleMappingBoardItemProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:27 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLStyleMappingBoardItemProvider init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)imageData
{
  v2 = [(CRLIngestibleBoardItemAndDescription *)self->_ingestibleItemDrawable boardItem];
  v9 = sub_1003035DC(v2, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLPasteboardImageDataProvider);

  v10 = [v9 imageData];

  return v10;
}

- (id)thumbnailImageData
{
  v2 = [(CRLIngestibleBoardItemAndDescription *)self->_ingestibleItemDrawable boardItem];
  v9 = sub_1003035DC(v2, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLPasteboardImageDataProvider);

  v10 = [v9 thumbnailImageData];

  return v10;
}

- (void)provideBoardItemWithFactory:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = [(CRLStyleMappingBoardItemProvider *)self newBoardItemWithFactory:a3 bakedSize:0];
  boardItem = self->_boardItem;
  self->_boardItem = v6;

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

@end