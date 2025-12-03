@interface CRLTraceableResourceToken
+ (id)callStackDescriptionWithAction:(id)action callStackSymbols:(id)symbols index:(id)index;
+ (id)p_formattedDateStringFromTimeInterval:(double)interval;
- (BOOL)isTimeoutPaused;
- (CRLTraceableResourceToken)init;
- (CRLTraceableResourceToken)initWithIntent:(id)intent timeout:(unint64_t)timeout parent:(id)parent context:(id)context acquireCallStack:(id)stack acquireTime:(double)time logContext:(id)logContext;
- (NSArray)acquireCallStack;
- (NSArray)relinquishCallStack;
- (NSString)acquireCallStackDescription;
- (NSString)description;
- (NSString)relinquishCallStackDescription;
- (id)acquireCallStackDescriptionWithIndex:(id)index;
- (id)breadcrumbsDescriptionWithIndex:(id)index;
- (id)metadataDescriptionWithIndex:(id)index;
- (id)parentDescriptionWithIndex:(id)index;
- (unint64_t)hash;
- (void)addBreadcrumb:(id)breadcrumb;
- (void)dealloc;
- (void)didAcquire;
- (void)extendTimeout:(unint64_t)timeout updateParent:(BOOL)parent;
- (void)resumeTimeout;
- (void)setRelinquishCallStackIfNeeded:(id)needed relinquishTime:(double)time;
@end

@implementation CRLTraceableResourceToken

- (CRLTraceableResourceToken)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101869120);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLTraceableResourceToken init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m";
    v18 = 1024;
    v19 = 509;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101869140);
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

  v7 = [NSString stringWithUTF8String:"[CRLTraceableResourceToken init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:509 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLTraceableResourceToken init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLTraceableResourceToken)initWithIntent:(id)intent timeout:(unint64_t)timeout parent:(id)parent context:(id)context acquireCallStack:(id)stack acquireTime:(double)time logContext:(id)logContext
{
  intentCopy = intent;
  parentCopy = parent;
  contextCopy = context;
  stackCopy = stack;
  logContextCopy = logContext;
  v28.receiver = self;
  v28.super_class = CRLTraceableResourceToken;
  v20 = [(CRLTraceableResourceToken *)&v28 init];
  v21 = v20;
  if (v20)
  {
    atomic_store(0, &v20->_state);
    v22 = [intentCopy copy];
    intent = v21->_intent;
    v21->_intent = v22;

    objc_storeStrong(&v21->_parent, parent);
    atomic_store(timeout, &v21->_timeout);
    objc_storeStrong(&v21->_context, context);
    objc_storeStrong(&v21->_acquireCallStack, stack);
    v21->_acquireTime = time;
    v24 = objc_opt_new();
    breadcrumbs = v21->_breadcrumbs;
    v21->_breadcrumbs = v24;

    objc_storeStrong(&v21->_logContext, logContext);
  }

  return v21;
}

- (void)dealloc
{
  if (!self->_relinquishCallStack)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013849F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384A08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384A94();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLTraceableResourceToken dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:529 isFatal:0 description:"Token was deallocated without getting relinquished: %{public}@", self];
  }

  v6 = atomic_load(&self->_timeoutPauseCount);
  if (v6 >= 1)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384ABC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384AE4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384B70();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLTraceableResourceToken dealloc]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:530 isFatal:0 description:"Token was deallocated with paused timeout: %{public}@", self];
  }

  v10.receiver = self;
  v10.super_class = CRLTraceableResourceToken;
  [(CRLTraceableResourceToken *)&v10 dealloc];
}

- (BOOL)isTimeoutPaused
{
  __dmb(0xBu);
  v2 = atomic_load(&self->_timeoutPauseCount);
  return v2 > 0;
}

- (void)resumeTimeout
{
  add = atomic_fetch_add(&self->_timeoutPauseCount, 0xFFFFFFFF);
  if (add <= 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384B98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384BAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384C34();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLTraceableResourceToken resumeTimeout]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:553 isFatal:0 description:"Unbalanced -pauseTimeout and -resumeTimeout calls."];
  }

  else if (add == 1)
  {
    [(CRLTraceableResourceToken *)self extendTimeout:1 updateParent:0];
  }

  [(CRLTraceableResourceToken *)self->_parent resumeTimeout];
}

- (void)extendTimeout:(unint64_t)timeout updateParent:(BOOL)parent
{
  atomic_fetch_add(&self->_timeout, timeout);
  if (parent)
  {
    [(CRLTraceableResourceToken *)self->_parent extendTimeout:?];
  }
}

- (void)addBreadcrumb:(id)breadcrumb
{
  breadcrumbCopy = breadcrumb;
  if (qword_101AD5A48 != -1)
  {
    sub_101384C5C();
  }

  v5 = off_1019EDAA0;
  if (os_log_type_enabled(off_1019EDAA0, OS_LOG_TYPE_INFO))
  {
    logContext = self->_logContext;
    v7 = v5;
    publicString = [(CRLLogContext *)logContext publicString];
    privateString = [(CRLLogContext *)self->_logContext privateString];
    intent = [(CRLTraceableResourceToken *)self intent];
    v11 = 138544386;
    v12 = publicString;
    v13 = 2112;
    v14 = privateString;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = intent;
    v19 = 2114;
    v20 = breadcrumbCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@ %@ Resource %p with '%{public}@' intent added breadcrumb: %{public}@", &v11, 0x34u);
  }

  [(NSMutableArray *)self->_breadcrumbs addObject:breadcrumbCopy];
  [(CRLTraceableResourceToken *)self extendTimeout:1 updateParent:1];
}

- (NSArray)acquireCallStack
{
  copiedAcquireCallStack = self->_copiedAcquireCallStack;
  if (!copiedAcquireCallStack)
  {
    v4 = [(NSArray *)self->_acquireCallStack copy];
    v5 = self->_copiedAcquireCallStack;
    self->_copiedAcquireCallStack = v4;

    copiedAcquireCallStack = self->_copiedAcquireCallStack;
  }

  return copiedAcquireCallStack;
}

- (NSArray)relinquishCallStack
{
  copiedRelinquishCallStack = self->_copiedRelinquishCallStack;
  if (!copiedRelinquishCallStack)
  {
    v4 = [(NSArray *)self->_relinquishCallStack copy];
    v5 = self->_copiedRelinquishCallStack;
    self->_copiedRelinquishCallStack = v4;

    copiedRelinquishCallStack = self->_copiedRelinquishCallStack;
  }

  return copiedRelinquishCallStack;
}

- (void)didAcquire
{
  v10 = 0;
  atomic_compare_exchange_strong(&self->_state, &v10, 1uLL);
  if (v10)
  {
    v14 = v3;
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384C70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384C84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384D0C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLTraceableResourceToken didAcquire]", v7, v6, v5, v4, v14, v2, v8, v9];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:602 isFatal:0 description:"Unexpected state."];
  }
}

- (void)setRelinquishCallStackIfNeeded:(id)needed relinquishTime:(double)time
{
  neededCopy = needed;
  v8 = 1;
  atomic_compare_exchange_strong(&self->_state, &v8, 2uLL);
  if (v8 != 1)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384D34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384D48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384DD0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLTraceableResourceToken setRelinquishCallStackIfNeeded:relinquishTime:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:607 isFatal:0 description:"Unexpected state."];
  }

  if (!self->_relinquishCallStack)
  {
    objc_storeStrong(&self->_relinquishCallStack, needed);
    self->_relinquishTime = time;
  }
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CRLTraceableResourceToken;
  return [(CRLTraceableResourceToken *)&v3 hash];
}

+ (id)p_formattedDateStringFromTimeInterval:(double)interval
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:interval];
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = +[NSLocale currentLocale];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZ"];
  v6 = [v4 stringFromDate:v3];

  return v6;
}

- (id)metadataDescriptionWithIndex:(id)index
{
  indexCopy = index;
  v5 = objc_opt_class();
  [(CRLTraceableResourceToken *)self acquireTime];
  v6 = [v5 p_formattedDateStringFromTimeInterval:?];
  state = [(CRLTraceableResourceToken *)self state];
  v8 = @"WAITING";
  if (state == 1)
  {
    v8 = @"ACTIVE";
  }

  if (state == 2)
  {
    v8 = @"DONE";
  }

  v9 = v8;
  intent = [(CRLTraceableResourceToken *)self intent];
  v11 = intent;
  if (indexCopy)
  {
    [NSString stringWithFormat:@"[%@] %@ '%@' %@", indexCopy, v9, intent, v6];
  }

  else
  {
    [NSString stringWithFormat:@"'%@' %@ %@", v9, intent, v6, v14];
  }
  v12 = ;

  return v12;
}

- (NSString)acquireCallStackDescription
{
  v3 = objc_opt_class();
  acquireCallStack = [(CRLTraceableResourceToken *)self acquireCallStack];
  v5 = [v3 callStackDescriptionWithAction:&stru_1018BCA28 callStackSymbols:acquireCallStack index:0];

  return v5;
}

- (NSString)relinquishCallStackDescription
{
  v3 = objc_opt_class();
  relinquishCallStack = [(CRLTraceableResourceToken *)self relinquishCallStack];
  v5 = [v3 callStackDescriptionWithAction:&stru_1018BCA28 callStackSymbols:relinquishCallStack index:0];

  return v5;
}

- (id)acquireCallStackDescriptionWithIndex:(id)index
{
  indexCopy = index;
  v5 = objc_opt_class();
  acquireCallStack = [(CRLTraceableResourceToken *)self acquireCallStack];
  v7 = [v5 callStackDescriptionWithAction:&stru_1018BCA28 callStackSymbols:acquireCallStack index:indexCopy];

  return v7;
}

+ (id)callStackDescriptionWithAction:(id)action callStackSymbols:(id)symbols index:(id)index
{
  indexCopy = index;
  symbolsCopy = symbols;
  actionCopy = action;
  v10 = objc_opt_new();
  v11 = [actionCopy length];
  v12 = @" ";
  if (!v11)
  {
    v12 = &stru_1018BCA28;
  }

  if (indexCopy)
  {
    [v10 appendFormat:@"[%@] %@%@backtrace:", indexCopy, actionCopy, v12];
  }

  else
  {
    [v10 appendFormat:@"%@%@backtrace:", actionCopy, v12, v15];
  }

  v13 = [CRLAssertionHandler packedBacktraceStringWithReturnAddresses:symbolsCopy];

  [v10 appendFormat:@" %@", v13];

  return v10;
}

- (id)breadcrumbsDescriptionWithIndex:(id)index
{
  indexCopy = index;
  v5 = [(NSMutableArray *)self->_breadcrumbs count];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_new();
    v8 = v7;
    if (indexCopy)
    {
      objc_msgSend(v7, "appendFormat:", @"[%@] %tu breadcrumb(s): ("), indexCopy, v6;
    }

    else
    {
      objc_msgSend(v7, "appendFormat:", @"%tu breadcrumb(s): ("), v6, v12;
    }

    breadcrumbs = self->_breadcrumbs;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1004DA560;
    v13[3] = &unk_10183C078;
    v9 = v8;
    v14 = v9;
    [(NSMutableArray *)breadcrumbs enumerateObjectsWithOptions:2 usingBlock:v13];
    [(__CFString *)v9 appendString:@""]);
  }

  else
  {
    v9 = &stru_1018BCA28;
  }

  return v9;
}

- (id)parentDescriptionWithIndex:(id)index
{
  indexCopy = index;
  if (self->_parent)
  {
    v5 = [NSString alloc];
    parent = self->_parent;
    intent = [(CRLTraceableResourceToken *)parent intent];
    v8 = intent;
    if (indexCopy)
    {
      v9 = [v5 initWithFormat:@"[%@] parent: %p '%@'", indexCopy, parent, intent];
    }

    else
    {
      v9 = [v5 initWithFormat:@"parent: %p '%@'", parent, intent, v12];
    }

    v10 = v9;
  }

  else
  {
    v10 = &stru_1018BCA28;
  }

  return v10;
}

- (NSString)description
{
  relinquishCallStack = [(CRLTraceableResourceToken *)self relinquishCallStack];
  context = [(CRLTraceableResourceToken *)self context];
  v28 = context;
  if (context)
  {
    v5 = [context description];
    v27 = [NSString stringWithFormat:@"context: %@\n", v5];

    if (relinquishCallStack)
    {
LABEL_3:
      v6 = objc_opt_class();
      [(CRLTraceableResourceToken *)self acquireTime];
      v7 = [v6 p_formattedDateStringFromTimeInterval:?];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      acquireCallStack2 = [(CRLTraceableResourceToken *)self metadataDescriptionWithIndex:0];
      v11 = objc_opt_class();
      acquireCallStack = [(CRLTraceableResourceToken *)self acquireCallStack];
      v12 = [v11 callStackDescriptionWithAction:@"Acquire" callStackSymbols:acquireCallStack index:0];
      v13 = [objc_opt_class() callStackDescriptionWithAction:@"Relinquish" callStackSymbols:relinquishCallStack index:0];
      v14 = [(CRLTraceableResourceToken *)self breadcrumbsDescriptionWithIndex:0];
      [(CRLTraceableResourceToken *)self parentDescriptionWithIndex:0];
      v16 = v15 = relinquishCallStack;
      v17 = v27;
      selfCopy = self;
      v18 = v9;
      v19 = [NSString stringWithFormat:@"<%@: %p>\n%@%@\n%@\n%@\n%@\n%@\n%@", v9, selfCopy, v27, acquireCallStack2, v12, v7, v13, v14, v16];

      relinquishCallStack = v15;
      v20 = acquireCallStack;

      v21 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v27 = &stru_1018BCA28;
    if (relinquishCallStack)
    {
      goto LABEL_3;
    }
  }

  v22 = objc_opt_class();
  v7 = NSStringFromClass(v22);
  v21 = [(CRLTraceableResourceToken *)self metadataDescriptionWithIndex:0];
  v23 = objc_opt_class();
  acquireCallStack2 = [(CRLTraceableResourceToken *)self acquireCallStack];
  v20 = [v23 callStackDescriptionWithAction:@"Acquire" callStackSymbols:acquireCallStack2 index:0];
  v12 = [(CRLTraceableResourceToken *)self breadcrumbsDescriptionWithIndex:0];
  v13 = [(CRLTraceableResourceToken *)self parentDescriptionWithIndex:0];
  v17 = v27;
  v19 = [NSString stringWithFormat:@"<%@: %p>\n%@%@\n%@\n%@\n%@", v7, self, v27, v21, v20, v12, v13];
LABEL_6:

  return v19;
}

@end