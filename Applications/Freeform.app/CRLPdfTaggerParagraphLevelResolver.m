@interface CRLPdfTaggerParagraphLevelResolver
- (BOOL)paragraphInfo:(id)a3 matchesParagraphInfo:(id)a4 level:(int)a5;
- (CRLPdfTagger)tagger;
- (CRLPdfTaggerParagraphLevelResolver)initWithTagger:(id)a3;
- (int)levelOfCurrentParagraph:(id *)a3;
- (int)tagType;
@end

@implementation CRLPdfTaggerParagraphLevelResolver

- (CRLPdfTaggerParagraphLevelResolver)initWithTagger:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLPdfTaggerParagraphLevelResolver;
  v5 = [(CRLPdfTaggerParagraphLevelResolver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tagger, v4);
  }

  return v6;
}

- (int)tagType
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D0B0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v18 = v2;
    v19 = 2082;
    v20 = "[CRLPdfTaggerParagraphLevelResolver tagType]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm";
    v23 = 1024;
    v24 = 605;
    v25 = 2114;
    v26 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D0D0);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v18 = v2;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v8 = [NSString stringWithUTF8String:"[CRLPdfTaggerParagraphLevelResolver tagType]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:605 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "[CRLPdfTaggerParagraphLevelResolver tagType]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (int)levelOfCurrentParagraph:(id *)a3
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D0F0);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v19 = v3;
    v20 = 2082;
    v21 = "[CRLPdfTaggerParagraphLevelResolver levelOfCurrentParagraph:]";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm";
    v24 = 1024;
    v25 = 610;
    v26 = 2114;
    v27 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D110);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v19 = v3;
    v20 = 2114;
    v21 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v9 = [NSString stringWithUTF8String:"[CRLPdfTaggerParagraphLevelResolver levelOfCurrentParagraph:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:610 isFatal:0 description:"Abstract method not overridden by %{public}@", v12];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v14, "[CRLPdfTaggerParagraphLevelResolver levelOfCurrentParagraph:]"];
  v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)paragraphInfo:(id)a3 matchesParagraphInfo:(id)a4 level:(int)a5
{
  v6 = a3;
  v7 = a4;
  v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D130);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 67110146;
    v24 = v8;
    v25 = 2082;
    v26 = "[CRLPdfTaggerParagraphLevelResolver paragraphInfo:matchesParagraphInfo:level:]";
    v27 = 2082;
    v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm";
    v29 = 1024;
    v30 = 615;
    v31 = 2114;
    v32 = v11;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186D150);
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v24 = v8;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v14 = [NSString stringWithUTF8String:"[CRLPdfTaggerParagraphLevelResolver paragraphInfo:matchesParagraphInfo:level:]"];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPdfTagger.mm"];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:615 isFatal:0 description:"Abstract method not overridden by %{public}@", v17];

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v19, "[CRLPdfTaggerParagraphLevelResolver paragraphInfo:matchesParagraphInfo:level:]"];
  v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v20 userInfo:0];
  v22 = v21;

  objc_exception_throw(v21);
}

- (CRLPdfTagger)tagger
{
  WeakRetained = objc_loadWeakRetained(&self->_tagger);

  return WeakRetained;
}

@end