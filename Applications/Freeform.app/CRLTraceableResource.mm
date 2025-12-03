@interface CRLTraceableResource
- (CRLTraceableResource)init;
- (CRLTraceableResource)initWithName:(id)name logContext:(id)context;
- (id)description;
- (id)p_tokenSerializationDescriptionFromQueue;
- (id)tokenSerializationDescription;
- (id)willAcquireResourceWithIntent:(id)intent timeout:(unint64_t)timeout parent:(id)parent context:(id)context;
- (void)addToken:(id)token isForTemporaryRelinquish:(BOOL)relinquish;
- (void)didAcquireResourceWithToken:(id)token;
- (void)didRelinquishResourceWithToken:(id)token;
- (void)logSerializationAsErrorWithPrefix:(id)prefix;
- (void)p_logDebugTokenSerializationDescriptionFromQueue;
- (void)p_logErrorTokenSerializationDescriptionFromQueueWithPrefix:(id)prefix;
- (void)removeToken:(id)token isForTemporaryRelinquish:(BOOL)relinquish;
- (void)scheduleRelinquishTimeoutForToken:(id)token timeout:(unint64_t)timeout isForTemporaryRelinquish:(BOOL)relinquish;
- (void)temporarilyRelinquishForToken:(id)token usingBlock:(id)block;
@end

@implementation CRLTraceableResource

- (CRLTraceableResource)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101868CB0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLTraceableResource init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m";
    v18 = 1024;
    v19 = 103;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101868CD0);
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

  v7 = [NSString stringWithUTF8String:"[CRLTraceableResource init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:103 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLTraceableResource init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLTraceableResource)initWithName:(id)name logContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = CRLTraceableResource;
  v8 = [(CRLTraceableResource *)&v22 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v8->_printTimeoutAsError = 1;
    objc_storeStrong(&v8->_logContext, context);
    v11 = objc_alloc_init(NSMutableArray);
    tokens = v8->_tokens;
    v8->_tokens = v11;

    v13 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    timeoutBlocksMap = v8->_timeoutBlocksMap;
    v8->_timeoutBlocksMap = v13;

    nameCopy = [[NSString alloc] initWithFormat:@"CRLTraceableResource.[%@]", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    queue = v8->_queue;
    v8->_queue = v18;

    v20 = +[CRLTraceableResourceManager sharedManager];
    [v20 registerTraceableResource:v8];
  }

  return v8;
}

- (id)willAcquireResourceWithIntent:(id)intent timeout:(unint64_t)timeout parent:(id)parent context:(id)context
{
  contextCopy = context;
  parentCopy = parent;
  intentCopy = intent;
  v13 = +[NSThread callStackReturnAddresses];
  +[NSDate timeIntervalSinceReferenceDate];
  v15 = [[CRLTraceableResourceToken alloc] initWithIntent:intentCopy timeout:timeout parent:parentCopy context:contextCopy acquireCallStack:v13 acquireTime:self->_logContext logContext:v14];

  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1004D59A0;
  v21[3] = &unk_10183AE28;
  v21[4] = self;
  v17 = v15;
  v22 = v17;
  dispatch_async(queue, v21);
  v18 = v22;
  v19 = v17;

  return v17;
}

- (void)didAcquireResourceWithToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383D48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101383D5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383DE4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Token cannot be nil.", v8, v9, v10, v11, v12, v13, v14, "[CRLTraceableResource didAcquireResourceWithToken:]");
    v15 = [NSString stringWithUTF8String:"[CRLTraceableResource didAcquireResourceWithToken:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:149 isFatal:1 description:"Token cannot be nil."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v18);
    abort();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D5C48;
  block[3] = &unk_10183AB38;
  v20 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(queue, block);
}

- (void)didRelinquishResourceWithToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383E0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101383E20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383EA8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Token cannot be nil.", v12, v13, v14, v15, v16, v17, v18, "[CRLTraceableResource didRelinquishResourceWithToken:]");
    v19 = [NSString stringWithUTF8String:"[CRLTraceableResource didRelinquishResourceWithToken:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:157 isFatal:1 description:"Token cannot be nil."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v21, v22);
    abort();
  }

  v5 = tokenCopy;
  v6 = +[NSThread callStackReturnAddresses];
  +[NSDate timeIntervalSinceReferenceDate];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D5ED8;
  block[3] = &unk_10185B8F8;
  v24 = v5;
  v25 = v6;
  v27 = v8;
  selfCopy = self;
  v9 = v6;
  v10 = v5;
  dispatch_async(queue, block);
}

- (void)temporarilyRelinquishForToken:(id)token usingBlock:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  if (!tokenCopy)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384098();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013840AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384134();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138415C(v14);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Token cannot be nil.", v15, v16, v17, v18, v19, v20, v21, "[CRLTraceableResource temporarilyRelinquishForToken:usingBlock:]");
    v22 = [NSString stringWithUTF8String:"[CRLTraceableResource temporarilyRelinquishForToken:usingBlock:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:180 isFatal:1 description:"Token cannot be nil."];

LABEL_22:
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v24, *&v25);
    abort();
  }

  v8 = blockCopy;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D66C4;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(queue, block);
  if (([(NSMutableArray *)self->_tokens containsObject:tokenCopy]& 1) == 0)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383F0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101383F34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383FC0();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101383FE8(v27);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Attempted to temporarily relinquish token that has already been relinquished: %{public}@", v28, v29, v30, v31, v32, v33, v34, "[CRLTraceableResource temporarilyRelinquishForToken:usingBlock:]");
    v35 = [NSString stringWithUTF8String:"[CRLTraceableResource temporarilyRelinquishForToken:usingBlock:]"];
    v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:187 isFatal:1 description:"Attempted to temporarily relinquish token that has already been relinquished: %{public}@", tokenCopy, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m", 187, tokenCopy];

    goto LABEL_22;
  }

  v10 = [(NSMutableArray *)self->_tokens copy];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1004D6758;
  v44[3] = &unk_101868E38;
  v44[4] = self;
  [v10 enumerateObjectsWithOptions:2 usingBlock:v44];
  v11 = objc_alloc_init(CRLTraceableResourceTemporaryRelinquishToken);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1004D6768;
  v37[3] = &unk_101868EA0;
  v41 = v42;
  v12 = v10;
  v38 = v12;
  selfCopy = self;
  v13 = v11;
  v40 = v13;
  (v8)[2](v8, v37);

  _Block_object_dispose(v42, 8);
}

- (void)addToken:(id)token isForTemporaryRelinquish:(BOOL)relinquish
{
  [(NSMutableArray *)self->_tokens addObject:token];
  if (!relinquish)
  {
    firstObject = [(NSMutableArray *)self->_tokens firstObject];
    if (firstObject)
    {
      v7 = firstObject;
      -[CRLTraceableResource scheduleRelinquishTimeoutForToken:timeout:isForTemporaryRelinquish:](self, "scheduleRelinquishTimeoutForToken:timeout:isForTemporaryRelinquish:", firstObject, [firstObject timeout], 0);
      firstObject = v7;
    }
  }
}

- (void)removeToken:(id)token isForTemporaryRelinquish:(BOOL)relinquish
{
  tokens = self->_tokens;
  tokenCopy = token;
  [(NSMutableArray *)tokens removeObject:tokenCopy];
  v8 = [(NSMapTable *)self->_timeoutBlocksMap objectForKey:tokenCopy];
  [(NSMapTable *)self->_timeoutBlocksMap removeObjectForKey:tokenCopy];

  if (v8)
  {
    dispatch_block_cancel(v8);
  }

  if (!relinquish)
  {
    firstObject = [(NSMutableArray *)self->_tokens firstObject];
    v10 = firstObject;
    if (firstObject)
    {
      -[CRLTraceableResource scheduleRelinquishTimeoutForToken:timeout:isForTemporaryRelinquish:](self, "scheduleRelinquishTimeoutForToken:timeout:isForTemporaryRelinquish:", firstObject, [firstObject timeout], 0);
    }
  }

  if (![(NSMutableArray *)self->_tokens count]&& [(NSMapTable *)self->_timeoutBlocksMap count])
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013842D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013842E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138436C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLTraceableResource removeToken:isForTemporaryRelinquish:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:254 isFatal:0 description:"Removing all tokens should also cancel all timeout blocks."];
  }
}

- (void)scheduleRelinquishTimeoutForToken:(id)token timeout:(unint64_t)timeout isForTemporaryRelinquish:(BOOL)relinquish
{
  tokenCopy = token;
  v9 = [(NSMapTable *)self->_timeoutBlocksMap objectForKey:tokenCopy];

  if (!v9)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1004D6E60;
    v18 = &unk_101848F08;
    selfCopy = self;
    v10 = tokenCopy;
    v20 = v10;
    timeoutCopy = timeout;
    relinquishCopy = relinquish;
    v11 = dispatch_block_create(0, &v15);
    timeoutBlocksMap = self->_timeoutBlocksMap;
    v13 = objc_retainBlock(v11);
    [(NSMapTable *)timeoutBlocksMap setObject:v13 forKey:v10, v15, v16, v17, v18, selfCopy];

    v14 = dispatch_time(0, 1000000000 * timeout);
    dispatch_after(v14, self->_queue, v11);
  }
}

- (id)tokenSerializationDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1004D727C;
  v10 = sub_1004D728C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004D7294;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)logSerializationAsErrorWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004D7384;
  v7[3] = &unk_10183AE28;
  v7[4] = self;
  v8 = prefixCopy;
  v6 = prefixCopy;
  dispatch_sync(queue, v7);
}

- (void)p_logErrorTokenSerializationDescriptionFromQueueWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  add = atomic_fetch_add(&qword_101A35210, 1uLL);
  if (qword_101AD5A08 != -1)
  {
    sub_101384510();
  }

  v3 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    logContext = self->_logContext;
    v36 = v3;
    publicString = [(CRLLogContext *)logContext publicString];
    privateString = [(CRLLogContext *)self->_logContext privateString];
    name = self->_name;
    v40 = [(NSMutableArray *)self->_tokens count];
    *buf = 138544642;
    v59 = publicString;
    v60 = 2112;
    v61 = privateString;
    v62 = 2114;
    v63 = prefixCopy;
    v64 = 2048;
    v65 = add;
    v66 = 2112;
    v67 = name;
    v68 = 2048;
    v69 = v40;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@ %@ %{public}@┏ %llx '%@' pending resource requests (%tu total)", buf, 0x3Eu);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = self->_tokens;
  v52 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v52)
  {
    v5 = 0;
    v51 = *v54;
    v47 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v54 != v51)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v53 + 1) + 8 * v6);
        if (qword_101AD5A08 != -1)
        {
          sub_101384524();
        }

        v8 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          v16 = self->_logContext;
          v17 = v8;
          publicString2 = [(CRLLogContext *)v16 publicString];
          privateString2 = [(CRLLogContext *)self->_logContext privateString];
          v20 = [NSNumber numberWithUnsignedInteger:v5];
          v21 = [v7 metadataDescriptionWithIndex:v20];
          *buf = 138544642;
          v59 = publicString2;
          v60 = 2112;
          v61 = privateString2;
          v62 = 2114;
          v63 = prefixCopy;
          v64 = 2048;
          v65 = add;
          v66 = 2048;
          v67 = v7;
          v68 = 2114;
          v69 = v21;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ %@ %{public}@  %llx %p %{public}@", buf, 0x3Eu);

          v4 = v47;
        }

        if (qword_101AD5A08 != -1)
        {
          sub_10138454C();
        }

        v9 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          v22 = self->_logContext;
          v23 = v9;
          publicString3 = [(CRLLogContext *)v22 publicString];
          privateString3 = [(CRLLogContext *)self->_logContext privateString];
          v26 = [NSNumber numberWithUnsignedInteger:v5];
          v27 = [v7 acquireCallStackDescriptionWithIndex:v26];
          *buf = 138544642;
          v59 = publicString3;
          v60 = 2112;
          v61 = privateString3;
          v62 = 2114;
          v63 = prefixCopy;
          v64 = 2048;
          v65 = add;
          v66 = 2048;
          v67 = v7;
          v68 = 2114;
          v69 = v27;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ %@ %{public}@  %llx %p %{public}@", buf, 0x3Eu);

          v4 = v47;
        }

        v10 = [NSNumber numberWithUnsignedInteger:v5];
        v11 = [v7 breadcrumbsDescriptionWithIndex:v10];

        if ([v11 length])
        {
          if (qword_101AD5A08 != -1)
          {
            sub_101384574();
          }

          v12 = off_1019EDA60;
          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
          {
            v28 = self->_logContext;
            v29 = v12;
            publicString4 = [(CRLLogContext *)v28 publicString];
            privateString4 = [(CRLLogContext *)self->_logContext privateString];
            *buf = 138544642;
            v59 = publicString4;
            v60 = 2112;
            v61 = privateString4;
            v62 = 2114;
            v63 = prefixCopy;
            v64 = 2048;
            v65 = add;
            v66 = 2048;
            v67 = v7;
            v68 = 2114;
            v69 = v11;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@ %@ %{public}@  %llx %p %{public}@", buf, 0x3Eu);

            v4 = v47;
          }
        }

        v13 = [NSNumber numberWithUnsignedInteger:v5];
        v14 = [v7 parentDescriptionWithIndex:v13];

        if ([v14 length])
        {
          if (qword_101AD5A08 != -1)
          {
            sub_10138459C();
          }

          v15 = off_1019EDA60;
          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
          {
            v32 = self->_logContext;
            log = v15;
            publicString5 = [(CRLLogContext *)v32 publicString];
            v4 = v47;
            privateString5 = [(CRLLogContext *)self->_logContext privateString];
            *buf = 138544642;
            v59 = publicString5;
            v60 = 2112;
            v61 = privateString5;
            v62 = 2114;
            v63 = prefixCopy;
            v64 = 2048;
            v65 = add;
            v66 = 2048;
            v67 = v7;
            v68 = 2114;
            v69 = v14;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@ %@ %{public}@  %llx %p %{public}@", buf, 0x3Eu);
          }
        }

        ++v5;

        v6 = v6 + 1;
      }

      while (v52 != v6);
      v52 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v52);
  }

  if (qword_101AD5A08 != -1)
  {
    sub_1013845C4();
  }

  v34 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    v41 = self->_logContext;
    v42 = v34;
    publicString6 = [(CRLLogContext *)v41 publicString];
    privateString6 = [(CRLLogContext *)self->_logContext privateString];
    *buf = 138544130;
    v59 = publicString6;
    v60 = 2112;
    v61 = privateString6;
    v62 = 2114;
    v63 = prefixCopy;
    v64 = 2048;
    v65 = add;
    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@ %@ %{public}@┗ %llx", buf, 0x2Au);
  }
}

- (void)p_logDebugTokenSerializationDescriptionFromQueue
{
  add = atomic_fetch_add(&qword_101A35210, 1uLL);
  if (qword_101AD5A08 != -1)
  {
    sub_1013845EC();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
  {
    sub_101384600(self, v2, add);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = self->_tokens;
  v40 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v40)
  {
    v4 = 0;
    v39 = *v42;
    v36 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v41 + 1) + 8 * v5);
        if (qword_101AD5A08 != -1)
        {
          sub_101384708();
        }

        v7 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
        {
          logContext = self->_logContext;
          v16 = v7;
          publicString = [(CRLLogContext *)logContext publicString];
          privateString = [(CRLLogContext *)self->_logContext privateString];
          v19 = [NSNumber numberWithUnsignedInteger:v4];
          v20 = [v6 metadataDescriptionWithIndex:v19];
          *buf = 138544386;
          v46 = publicString;
          v47 = 2112;
          v48 = privateString;
          v49 = 2048;
          v50 = add;
          v51 = 2048;
          v52 = v6;
          v53 = 2114;
          v54 = v20;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@ %@   %llx %p %{public}@", buf, 0x34u);

          v3 = v36;
        }

        if (qword_101AD5A08 != -1)
        {
          sub_101384730();
        }

        v8 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
        {
          v21 = self->_logContext;
          v22 = v8;
          publicString2 = [(CRLLogContext *)v21 publicString];
          privateString2 = [(CRLLogContext *)self->_logContext privateString];
          v25 = [NSNumber numberWithUnsignedInteger:v4];
          v26 = [v6 acquireCallStackDescriptionWithIndex:v25];
          *buf = 138544386;
          v46 = publicString2;
          v47 = 2112;
          v48 = privateString2;
          v49 = 2048;
          v50 = add;
          v51 = 2048;
          v52 = v6;
          v53 = 2114;
          v54 = v26;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@ %@   %llx %p %{public}@", buf, 0x34u);

          v3 = v36;
        }

        v9 = [NSNumber numberWithUnsignedInteger:v4];
        v10 = [v6 breadcrumbsDescriptionWithIndex:v9];

        if ([v10 length])
        {
          if (qword_101AD5A08 != -1)
          {
            sub_101384758();
          }

          v11 = off_1019EDA60;
          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
          {
            v27 = self->_logContext;
            v28 = v11;
            publicString3 = [(CRLLogContext *)v27 publicString];
            privateString3 = [(CRLLogContext *)self->_logContext privateString];
            *buf = 138544386;
            v46 = publicString3;
            v47 = 2112;
            v48 = privateString3;
            v49 = 2048;
            v50 = add;
            v51 = 2048;
            v52 = v6;
            v53 = 2114;
            v54 = v10;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}@ %@   %llx %p %{public}@", buf, 0x34u);

            v3 = v36;
          }
        }

        v12 = [NSNumber numberWithUnsignedInteger:v4];
        v13 = [v6 parentDescriptionWithIndex:v12];

        if ([v13 length])
        {
          if (qword_101AD5A08 != -1)
          {
            sub_101384780();
          }

          v14 = off_1019EDA60;
          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
          {
            v31 = self->_logContext;
            log = v14;
            publicString4 = [(CRLLogContext *)v31 publicString];
            v3 = v36;
            privateString4 = [(CRLLogContext *)self->_logContext privateString];
            *buf = 138544386;
            v46 = publicString4;
            v47 = 2112;
            v48 = privateString4;
            v49 = 2048;
            v50 = add;
            v51 = 2048;
            v52 = v6;
            v53 = 2114;
            v54 = v13;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@ %@   %llx %p %{public}@", buf, 0x34u);
          }
        }

        ++v4;

        v5 = v5 + 1;
      }

      while (v40 != v5);
      v40 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v40);
  }

  if (qword_101AD5A08 != -1)
  {
    sub_1013847A8();
  }

  v33 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
  {
    sub_1013847D0(self, v33, add);
  }
}

- (id)p_tokenSerializationDescriptionFromQueue
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"'%@' pending resource requests (%tu total)", self->_name, -[NSMutableArray count](self->_tokens, "count")];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_tokens;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v20 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        [v3 appendString:@"\n"];
        v9 = v8;
        v10 = [NSNumber numberWithUnsignedInteger:v6];
        v11 = [v9 metadataDescriptionWithIndex:v10];
        [v3 appendString:v11];

        [v3 appendString:@"\n"];
        v12 = [NSNumber numberWithUnsignedInteger:v6];
        v13 = [v9 acquireCallStackDescriptionWithIndex:v12];
        [v3 appendString:v13];

        v14 = [NSNumber numberWithUnsignedInteger:v6];
        v15 = [v9 breadcrumbsDescriptionWithIndex:v14];

        if ([v15 length])
        {
          [v3 appendString:@"\n"];
          [v3 appendString:v15];
        }

        v16 = [NSNumber numberWithUnsignedInteger:v6];
        v17 = [v9 parentDescriptionWithIndex:v16];

        if ([v17 length])
        {
          [v3 appendString:@"\n"];
          [v3 appendString:v17];
        }

        ++v6;
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(CRLTraceableResource *)self name];
  tokenSerializationDescription = [(CRLTraceableResource *)self tokenSerializationDescription];
  v7 = [NSString stringWithFormat:@"<%@: %p name='%@'>\n%@", v4, self, name, tokenSerializationDescription];

  return v7;
}

@end