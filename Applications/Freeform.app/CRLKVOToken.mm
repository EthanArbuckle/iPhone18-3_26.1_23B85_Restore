@interface CRLKVOToken
- (BOOL)isEqual:(id)equal;
- (CRLKVOToken)init;
- (CRLKVOToken)initWithObserver:(id)observer target:(id)target keyPath:(id)path context:(void *)context;
@end

@implementation CRLKVOToken

- (CRLKVOToken)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101852B28);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLKVOToken init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSObject_CRLAdditions.m";
    v18 = 1024;
    v19 = 246;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101852B48);
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

  v7 = [NSString stringWithUTF8String:"[CRLKVOToken init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSObject_CRLAdditions.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:246 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLKVOToken init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLKVOToken)initWithObserver:(id)observer target:(id)target keyPath:(id)path context:(void *)context
{
  observerCopy = observer;
  targetCopy = target;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = CRLKVOToken;
  v13 = [(CRLKVOToken *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_observer = observerCopy;
    v13->_target = targetCopy;
    v15 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v14->_context = context;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6 && (context = self->_context, context == [v6 context]))
  {
    observer = self->_observer;
    observer = [v6 observer];
    if (observer == observer)
    {
      keyPath = self->_keyPath;
      keyPath = [v6 keyPath];
      v8 = [(NSString *)keyPath isEqualToString:keyPath];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end