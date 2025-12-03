@interface CRLWPInteriorTextWrapController
+ (id)sharedInteriorTextWrapController;
- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info;
- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info;
- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables;
- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info;
@end

@implementation CRLWPInteriorTextWrapController

+ (id)sharedInteriorTextWrapController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003AF3DC;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A34DB0 != -1)
  {
    dispatch_once(&qword_101A34DB0, block);
  }

  v2 = qword_101A34DA8;

  return v2;
}

- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables
{
  targetCopy = target;
  columnCopy = column;
  v11 = objc_alloc_init(CRLWPInteriorCookie);
  [(CRLWPInteriorCookie *)v11 setLayout:targetCopy];
  [(CRLWPInteriorCookie *)v11 setColumn:columnCopy];

  v12 = *&p->c;
  *&v16.a = *&p->a;
  *&v16.c = v12;
  *&v16.tx = *&p->tx;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformInvert(&v17, &v16);
  interiorWrapSegments = [targetCopy interiorWrapSegments];

  v16 = v17;
  v14 = [interiorWrapSegments wrapSegmentsByApplyingAffineTransform:&v16];
  [(CRLWPInteriorCookie *)v11 setInteriorWrapSegmentsInWrapSpace:v14];

  *wrappables = 1;

  return v11;
}

- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  rectsCopy = rects;
  *hint = 1.0;
  infoCopy = info;
  v16 = objc_opt_class();
  v17 = sub_100014370(v16, infoCopy);

  if (v17)
  {
    interiorWrapSegmentsInWrapSpace = [v17 interiorWrapSegmentsInWrapSpace];
    [CRLWPTextWrapper splitLine:rectsCopy lineSegmentRects:interiorWrapSegmentsInWrapSpace wrapSegments:0 type:0 skipHint:x, y, width, height];
  }
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info
{
  attachmentsCopy = attachments;
  infoCopy = info;
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

- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info
{
  attachmentsCopy = attachments;
  infoCopy = info;
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