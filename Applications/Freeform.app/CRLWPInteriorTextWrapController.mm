@interface CRLWPInteriorTextWrapController
+ (id)sharedInteriorTextWrapController;
- (BOOL)checkForUnobstructedSpan:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5;
- (double)nextUnobstructedSpanStartingAt:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5;
- (id)beginWrappingToColumn:(id)a3 columnTransformFromWP:(CGAffineTransform *)a4 target:(id)a5 hasWrappables:(BOOL *)a6;
- (void)splitLine:(CGRect)a3 lineSegmentRects:(id)a4 wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 canvasCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9;
@end

@implementation CRLWPInteriorTextWrapController

+ (id)sharedInteriorTextWrapController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003AF3DC;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34DB0 != -1)
  {
    dispatch_once(&qword_101A34DB0, block);
  }

  v2 = qword_101A34DA8;

  return v2;
}

- (id)beginWrappingToColumn:(id)a3 columnTransformFromWP:(CGAffineTransform *)a4 target:(id)a5 hasWrappables:(BOOL *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(CRLWPInteriorCookie);
  [(CRLWPInteriorCookie *)v11 setLayout:v9];
  [(CRLWPInteriorCookie *)v11 setColumn:v10];

  v12 = *&a4->c;
  *&v16.a = *&a4->a;
  *&v16.c = v12;
  *&v16.tx = *&a4->tx;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformInvert(&v17, &v16);
  v13 = [v9 interiorWrapSegments];

  v16 = v17;
  v14 = [v13 wrapSegmentsByApplyingAffineTransform:&v16];
  [(CRLWPInteriorCookie *)v11 setInteriorWrapSegmentsInWrapSpace:v14];

  *a6 = 1;

  return v11;
}

- (void)splitLine:(CGRect)a3 lineSegmentRects:(id)a4 wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 canvasCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a4;
  *a8 = 1.0;
  v15 = a9;
  v16 = objc_opt_class();
  v17 = sub_100014370(v16, v15);

  if (v17)
  {
    v18 = [v17 interiorWrapSegmentsInWrapSpace];
    [CRLWPTextWrapper splitLine:v19 lineSegmentRects:v18 wrapSegments:0 type:0 skipHint:x, y, width, height];
  }
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C1E0);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v19 = v8;
    v20 = 2082;
    v21 = "[CRLWPInteriorTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPInteriorTextWrapController.m";
    v24 = 1024;
    v25 = 76;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C200);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v19 = v8;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"[CRLWPInteriorTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPInteriorTextWrapController.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:76 isFatal:0 description:"Do not call method"];

  v15 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLWPInteriorTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]"];
  v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)checkForUnobstructedSpan:(CGRect)a3 wrappableAttachments:(id)a4 userInfo:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C220);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v19 = v8;
    v20 = 2082;
    v21 = "[CRLWPInteriorTextWrapController checkForUnobstructedSpan:wrappableAttachments:userInfo:]";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPInteriorTextWrapController.m";
    v24 = 1024;
    v25 = 82;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C240);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v19 = v8;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"[CRLWPInteriorTextWrapController checkForUnobstructedSpan:wrappableAttachments:userInfo:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPInteriorTextWrapController.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:82 isFatal:0 description:"Do not call method"];

  v15 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLWPInteriorTextWrapController checkForUnobstructedSpan:wrappableAttachments:userInfo:]"];
  v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

@end