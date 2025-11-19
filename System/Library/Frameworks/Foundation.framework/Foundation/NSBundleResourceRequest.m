@interface NSBundleResourceRequest
+ (id)_assetPackBundleForBundle:(id)a3 withAssetPackID:(id)a4;
+ (id)_connection;
+ (id)_extensionEndpointForMainBundleOfHostApplication:(id)a3;
+ (id)_manifestWithBundle:(id)a3 error:(id *)a4;
+ (void)_addExtensionEndpoint:(id)a3;
+ (void)_flushCacheForBundle:(id)a3;
+ (void)_setConnection:(id)a3;
- (NSBundle)bundle;
- (NSBundleResourceRequest)initWithTag:(id)a3;
- (NSBundleResourceRequest)initWithTags:(NSSet *)tags;
- (NSBundleResourceRequest)initWithTags:(NSSet *)tags bundle:(NSBundle *)bundle;
- (NSProgress)progress;
- (NSSet)tags;
- (void)beginAccessingResourcesWithCompletionHandler:(void *)completionHandler;
- (void)conditionallyBeginAccessingResourcesWithCompletionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)endAccessingResources;
- (void)setLoadingPriority:(double)loadingPriority;
@end

@implementation NSBundleResourceRequest

+ (id)_connection
{
  result = qword_1ED439AC8;
  if (!qword_1ED439AC8)
  {
    if (qword_1ED439AD8 != -1)
    {
      dispatch_once(&qword_1ED439AD8, &__block_literal_global_241);
    }

    return qword_1ED439AD0;
  }

  return result;
}

void __38__NSBundleResourceRequest__connection__block_invoke()
{
  v0 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ondemandd.client" options:0];
  qword_1ED439AD0 = v0;

  _setupConnection(v0);
}

+ (void)_setConnection:(id)a3
{
  if (qword_1ED439AC8)
  {
    [qword_1ED439AC8 invalidate];
  }

  v4 = a3;
  qword_1ED439AC8 = v4;
  if (a3)
  {

    _setupConnection(v4);
  }
}

+ (void)_flushCacheForBundle:(id)a3
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_1_0);
  if (qword_1ED439AA8)
  {
    [qword_1ED439AA8 removeObjectForKey:a3];
  }

  os_unfair_lock_unlock(&_MergedGlobals_1_0);
}

- (NSBundleResourceRequest)initWithTag:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = +[NSBundle mainBundle];

  return [(NSBundleResourceRequest *)self initWithTags:v4 bundle:v5];
}

- (NSBundleResourceRequest)initWithTags:(NSSet *)tags
{
  v5 = +[NSBundle mainBundle];

  return [(NSBundleResourceRequest *)self initWithTags:tags bundle:v5];
}

- (NSBundleResourceRequest)initWithTags:(NSSet *)tags bundle:(NSBundle *)bundle
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSBundleResourceRequest;
  v6 = [(NSBundleResourceRequest *)&v9 init];
  if (v6)
  {
    v6->_tags = [(NSSet *)tags copy];
    v6->_priority = 0.5;
    v6->_bundle = bundle;
    v7 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    v6->_progress = v7;
    [(NSProgress *)v7 set_adoptChildUserInfo:1];
    [(NSProgress *)v6->_progress setTotalUnitCount:1];
    [(NSProgress *)v6->_progress setUserInfoObject:@"NSProgressFileOperationKindDownloading" forKey:@"NSProgressFileOperationKindKey"];
    v6->_fetchState = 0;
  }

  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  fetchState = self->_fetchState;
  if ((fetchState - 3) >= 2)
  {
    if (fetchState == 2)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"There appears to have been an overrelease of the NSBundleResourceRequest object" userInfo:0]);
    }
  }

  else
  {
    [(NSBundleResourceRequest *)self endAccessingResources];
  }

  v4.receiver = self;
  v4.super_class = NSBundleResourceRequest;
  [(NSBundleResourceRequest *)&v4 dealloc];
}

+ (id)_assetPackBundleForBundle:(id)a3 withAssetPackID:(id)a4
{
  v6 = [_NSBundleODRDataForApplications dataForBundle:a3 createIfRequired:0];
  if (!v6 || (v7 = v6, [(NSLock *)v6->super._lock lock], v8 = [(NSMutableDictionary *)v7->super._assetPackToURL objectForKey:a4], [(NSLock *)v7->super._lock unlock], !v8))
  {
    v9 = [_NSBundleODRDataForExtensions dataForBundle:a3 createIfRequired:0];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    [(NSLock *)v9->super._lock lock];
    v8 = [(NSMutableDictionary *)v10->super._assetPackToURL objectForKey:a4];
    [(NSLock *)v10->super._lock unlock];
    if (!v8)
    {
      return 0;
    }
  }

  return [NSBundle bundleWithURL:v8];
}

+ (id)_manifestWithBundle:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The bundle was nil" userInfo:0]);
  }

  v5 = [a3 URLForResource:@"OnDemandResources.plist" withExtension:0];
  if (!v5)
  {
    if (a4)
    {
      v8 = 100;
      v9 = 0;
LABEL_13:
      v6 = 0;
      *a4 = [NSError errorWithDomain:@"_NSBundleResourceRequestErrorDomain" code:v8 userInfo:v9];
      return v6;
    }

    return 0;
  }

  v15[0] = 0;
  if (![MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:0 error:v15])
  {
    if (a4)
    {
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15[0] forKey:@"NSUnderlyingError"];
      v8 = 101;
      goto LABEL_13;
    }

    return 0;
  }

  v13[5] = 0;
  v14 = 0;
  [MEMORY[0x1E695DFD8] setWithObject:@"NSBundleResourceRequestTags"];
  if ((_CFPropertyListCreateFiltered() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v10 = MEMORY[0x1E695DF20];
      v11 = @"Manifest is not a dictionary";
LABEL_18:
      *a4 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"_NSBundleResourceRequestErrorDomain", 101, [v10 dictionaryWithObject:v11 forKey:@"NSDebugDescription"]);
    }

LABEL_19:

    return 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v14 objectForKey:@"NSBundleResourceRequestTags"];
  if (!v7)
  {
    if (a4)
    {
      v10 = MEMORY[0x1E695DF20];
      v11 = @"Manifest has no tags";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__NSBundleResourceRequest__manifestWithBundle_error___block_invoke;
  v13[3] = &unk_1E69F6178;
  v13[4] = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  return v6;
}

uint64_t __53__NSBundleResourceRequest__manifestWithBundle_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKey:@"NSAssetPacks"];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DEC8] array];
  }

  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKey:a2];
}

- (NSProgress)progress
{
  v2 = self->_progress;

  return v2;
}

- (void)setLoadingPriority:(double)loadingPriority
{
  if (self->_priority != loadingPriority)
  {
    v4 = 1.0;
    if (loadingPriority == 1.79769313e308 || loadingPriority <= 1.0)
    {
      v4 = loadingPriority;
    }

    v6 = loadingPriority < 0.0;
    v7 = 0.0;
    if (!v6)
    {
      v7 = v4;
    }

    self->_priority = v7;
    if (self->_fetchState == 2)
    {
      v8 = [+[NSBundleResourceRequest _connection](NSBundleResourceRequest "_connection")];
      priority = self->_priority;
      tags = self->_tags;
      v11 = [(NSBundle *)self->_bundle bundleURL];

      [v8 setLoadingPriority:tags forTags:v11 inBundle:priority];
    }
  }
}

- (NSSet)tags
{
  v2 = [(NSSet *)self->_tags copy];

  return v2;
}

- (NSBundle)bundle
{
  v2 = self->_bundle;

  return v2;
}

- (void)beginAccessingResourcesWithCompletionHandler:(void *)completionHandler
{
  v4 = 0;
  v26 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong_explicit(&self->_fetchState, &v4, 2uLL, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"beginAccessingResources was called more than once or at the wrong time (%ld)", self->_fetchState), 0}]);
  }

  if (qword_1ED439B00 != -1)
  {
    dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
  }

  v6 = qword_1ED439AF8;
  if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
  {
    bundle = self->_bundle;
    v17 = [(NSArray *)[(NSSet *)self->_tags allObjects] componentsJoinedByString:@", "];
    *buf = 134218498;
    v21 = self;
    v22 = 2048;
    v23 = bundle;
    v24 = 2114;
    v25 = v17;
    _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "Begin: Request 0x%p / Bundle 0x%p / Tags: %{public}@", buf, 0x20u);
  }

  v7 = [_NSBundleODRDataForApplications dataForBundle:1 createIfRequired:?];
  v8 = +[NSBundleResourceRequest _connection];
  if (v7)
  {
    initialStateGroup = v7->_initialStateGroup;
    v10 = dispatch_time(0, 3000000000);
    dispatch_group_wait(initialStateGroup, v10);
  }

  v11 = [NSProgress progressWithTotalUnitCount:1 parent:self->_progress pendingUnitCount:1];
  [(NSProgress *)v11 set_adoptChildUserInfo:1];
  [(NSProgress *)v11 becomeCurrentWithPendingUnitCount:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__NSBundleResourceRequest_beginAccessingResourcesWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E69F61A0;
  v19[4] = self;
  v19[5] = completionHandler;
  v12 = [v8 remoteObjectProxyWithErrorHandler:v19];
  tags = self->_tags;
  v14 = [(NSBundle *)self->_bundle bundleURL];
  priority = self->_priority;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__NSBundleResourceRequest_beginAccessingResourcesWithCompletionHandler___block_invoke_283;
  v18[3] = &unk_1E69F61C8;
  v18[4] = v7;
  v18[5] = self;
  v18[6] = completionHandler;
  [v12 pinTags:tags inBundle:v14 priority:v18 completionHandler:priority];
  [(NSProgress *)v11 resignCurrent];
}

uint64_t __72__NSBundleResourceRequest_beginAccessingResourcesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 2;
  atomic_compare_exchange_strong_explicit((*(a1 + 32) + 40), &v2, 4uLL, memory_order_relaxed, memory_order_relaxed);
  if (v2 != 2)
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v3 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 40);
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_18075C000, v3, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of beginAccessingResourcesWithCompletionHandler (error handler) (%lld)", &v6, 0xCu);
    }

    *(*(a1 + 32) + 40) = 4;
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __72__NSBundleResourceRequest_beginAccessingResourcesWithCompletionHandler___block_invoke_283(uint64_t a1, void *a2, NSError *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    [*(v6 + 16) lock];
    v7 = *(v6 + 56);
    [*(v6 + 16) unlock];
    if (v7)
    {
      v8 = 2;
      atomic_compare_exchange_strong_explicit((*(a1 + 40) + 40), &v8, 4uLL, memory_order_relaxed, memory_order_relaxed);
      if (v8 != 2)
      {
        if (qword_1ED439B00 != -1)
        {
          dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
        }

        v9 = qword_1ED439AF8;
        if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
        {
          v29 = *(*(a1 + 40) + 40);
          *buf = 134217984;
          *&buf[4] = v29;
          _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of beginAccessingResourcesWithCompletionHandler (error case) (%lld)", buf, 0xCu);
        }

        *(*(a1 + 40) + 40) = 4;
      }

      v10 = *(*(a1 + 48) + 16);
      return v10();
    }
  }

  v11 = (*(a1 + 40) + 40);
  if (a3)
  {
    v12 = 2;
    atomic_compare_exchange_strong_explicit(v11, &v12, 4uLL, memory_order_relaxed, memory_order_relaxed);
    if (v12 != 2)
    {
      if (qword_1ED439B00 != -1)
      {
        dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
      }

      v13 = qword_1ED439AF8;
      if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
      {
        v33 = *(*(a1 + 40) + 40);
        *buf = 134217984;
        *&buf[4] = v33;
        _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of beginAccessingResourcesWithCompletionHandler (error case) (%lld)", buf, 0xCu);
      }

      *(*(a1 + 40) + 40) = 4;
    }

    if ([(NSString *)[(NSError *)a3 domain] isEqualToString:@"NSCocoaErrorDomain"]&& [(NSError *)a3 code]== 3072)
    {
      if (qword_1ED439B00 != -1)
      {
        dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
      }

      v14 = qword_1ED439AF8;
      if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 40);
        *buf = 134218242;
        *&buf[4] = v15;
        v36 = 2112;
        v37 = a3;
        _os_log_debug_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEBUG, "Begin: Request 0x%p was cancelled (error: %@)", buf, 0x16u);
      }
    }

    else
    {
      if (qword_1ED439B00 != -1)
      {
        dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
      }

      v16 = qword_1ED439AF8;
      if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 40);
        *buf = 134218242;
        *&buf[4] = v30;
        v36 = 2112;
        v37 = a3;
        _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, "Begin: Request 0x%p response: Error: %@", buf, 0x16u);
      }
    }

    if ([(NSString *)[(NSError *)a3 domain] isEqualToString:@"_NSBundleResourceRequestErrorDomain"]&& [(NSError *)a3 code]== 101)
    {
      v17 = [NSString stringWithFormat:@"At least one of the set of tags was not found in your application: %@", *(*(a1 + 40) + 8)];
      a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4994, [MEMORY[0x1E695DF20] dictionaryWithObject:v17 forKey:*MEMORY[0x1E695E618]]);
    }

    if ([(NSString *)[(NSError *)a3 domain] isEqualToString:@"NSCocoaErrorDomain"])
    {
      if ([(NSError *)a3 code]== 4995)
      {
        v18 = [-[NSDictionary objectForKey:](-[NSError userInfo](a3 "userInfo")];
        if (v18)
        {
          v19 = v18;
          v20 = objc_opt_new();
          [v20 setSecond:v19];
          v21 = objc_opt_new();
          [v21 setUnitsStyle:3];
          [v21 setAllowedUnits:240];
          v22 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"DetailedRecoverySuggestion4995" value:@"Try again in %@." table:@"FoundationErrors"], objc_msgSend(v21, "stringFromDateComponents:", v20));

          +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4995, [MEMORY[0x1E695DF20] dictionaryWithObject:v22 forKey:@"NSLocalizedRecoverySuggestion"]);
        }
      }
    }

    v10 = *(*(a1 + 48) + 16);
    return v10();
  }

  v24 = 2;
  atomic_compare_exchange_strong_explicit(v11, &v24, 3uLL, memory_order_relaxed, memory_order_relaxed);
  v25 = qword_1ED439B00;
  if (v24 != 2)
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v26 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      v34 = *(*(a1 + 40) + 40);
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_18075C000, v26, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of beginAccessingResourcesWithCompletionHandler (success case) (%lld)", buf, 0xCu);
      v25 = qword_1ED439B00;
    }

    else
    {
      v25 = -1;
    }

    *(*(a1 + 40) + 40) = 3;
  }

  if (v25 != -1)
  {
    dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
  }

  v27 = qword_1ED439AF8;
  if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 40);
    v32 = [a2 count];
    *buf = 134218240;
    *&buf[4] = v31;
    v36 = 2048;
    v37 = v32;
    _os_log_debug_impl(&dword_18075C000, v27, OS_LOG_TYPE_DEBUG, "Begin: Request 0x%p response: %lu packs now available", buf, 0x16u);
  }

  *buf = 0;
  if ([*(a1 + 32) assetPacksBecameAvailable:a2 error:buf])
  {
    v28 = 0;
  }

  else
  {
    v28 = *buf;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), v28);
}

- (void)conditionallyBeginAccessingResourcesWithCompletionHandler:(void *)completionHandler
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [_NSBundleODRDataForApplications dataForBundle:1 createIfRequired:?];
  v6 = 0;
  atomic_compare_exchange_strong_explicit(&self->_fetchState, &v6, 1uLL, memory_order_relaxed, memory_order_relaxed);
  if (v6)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"beginAccessingResources was called more than once or at the wrong time (%ld)", self->_fetchState), 0}]);
  }

  v7 = v5;
  if (qword_1ED439B00 != -1)
  {
    dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
  }

  v8 = qword_1ED439AF8;
  if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
  {
    bundle = self->_bundle;
    v14 = [(NSArray *)[(NSSet *)self->_tags allObjects] componentsJoinedByString:@", "];
    *buf = 134218498;
    v18 = self;
    v19 = 2048;
    v20 = bundle;
    v21 = 2114;
    v22 = v14;
    _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "Begin: Request (Conditional) 0x%p / Bundle 0x%p / Tags: %{public}@", buf, 0x20u);
  }

  v9 = +[NSBundleResourceRequest _connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__NSBundleResourceRequest_conditionallyBeginAccessingResourcesWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E69F61A0;
  v16[4] = self;
  v16[5] = completionHandler;
  v10 = [v9 remoteObjectProxyWithErrorHandler:v16];
  tags = self->_tags;
  v12 = [(NSBundle *)self->_bundle bundleURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__NSBundleResourceRequest_conditionallyBeginAccessingResourcesWithCompletionHandler___block_invoke_298;
  v15[3] = &unk_1E69F61F0;
  v15[5] = v7;
  v15[6] = completionHandler;
  v15[4] = self;
  [v10 conditionallyPinTags:tags inBundle:v12 completionHandler:v15];
}

uint64_t __85__NSBundleResourceRequest_conditionallyBeginAccessingResourcesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong_explicit((*(a1 + 32) + 40), &v2, 0, memory_order_relaxed, memory_order_relaxed);
  if (v2 != 1)
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v3 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 40);
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_18075C000, v3, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of conditionallyBeginAccessingResourcesWithCompletionHandler (error handler) (%lld)", &v6, 0xCu);
    }

    *(*(a1 + 32) + 40) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __85__NSBundleResourceRequest_conditionallyBeginAccessingResourcesWithCompletionHandler___block_invoke_298(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1ED439B00 != -1)
  {
    dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
  }

  v6 = qword_1ED439AF8;
  if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    if (a2)
    {
      v14 = [a3 count];
    }

    else
    {
      v14 = 0;
    }

    v17 = 134218496;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 1024;
    v22 = a2;
    _os_log_debug_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEBUG, "Begin: Request (Conditional) 0x%p response: Available %lu : %d packs", &v17, 0x1Cu);
  }

  v7 = (*(a1 + 32) + 40);
  if (a2)
  {
    v8 = 1;
    atomic_compare_exchange_strong_explicit(v7, &v8, 3uLL, memory_order_relaxed, memory_order_relaxed);
    if (v8 != 1)
    {
      if (qword_1ED439B00 != -1)
      {
        dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
      }

      v9 = qword_1ED439AF8;
      if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1 + 32) + 40);
        v17 = 134217984;
        v18 = v15;
        _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of conditionallyBeginAccessingResourcesWithCompletionHandler (available case) (%lld)", &v17, 0xCu);
      }

      *(*(a1 + 32) + 40) = 3;
    }

    [*(a1 + 40) assetPacksBecameAvailable:a3 error:0];
  }

  else
  {
    v10 = 1;
    atomic_compare_exchange_strong_explicit(v7, &v10, 0, memory_order_relaxed, memory_order_relaxed);
    if (v10 != 1)
    {
      if (qword_1ED439B00 != -1)
      {
        dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
      }

      v11 = qword_1ED439AF8;
      if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1 + 32) + 40);
        v17 = 134217984;
        v18 = v16;
        _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "Unexpected state upon completion of conditionallyBeginAccessingResourcesWithCompletionHandler (unavailable case) (%lld)", &v17, 0xCu);
      }

      *(*(a1 + 32) + 40) = 0;
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)endAccessingResources
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED439B00 != -1)
  {
    dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
  }

  v3 = qword_1ED439AF8;
  if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "End: Request 0x%p", &buf, 0xCu);
  }

  v4 = 3;
  atomic_compare_exchange_strong_explicit(&self->_fetchState, &v4, 5uLL, memory_order_relaxed, memory_order_relaxed);
  if (v4 == 3)
  {
    tags = self->_tags;
    bundle = self->_bundle;
    v7 = tags;
    v8 = bundle;
    v9 = [_NSBundleODRDataForApplications dataForBundle:1 createIfRequired:?];
    v10 = +[NSBundleResourceRequest _connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___endAccessingResources_block_invoke;
    v13[3] = &unk_1E69F6240;
    v13[4] = tags;
    v13[5] = bundle;
    v11 = [v10 remoteObjectProxyWithErrorHandler:v13];
    v12 = [(NSBundle *)bundle bundleURL];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = ___endAccessingResources_block_invoke_2;
    v16 = &unk_1E69F6268;
    v17 = v9;
    v18 = v10;
    v19 = tags;
    v20 = bundle;
    [v11 unpinTags:tags inBundle:v12 completionHandler:&buf];
  }
}

+ (id)_extensionEndpointForMainBundleOfHostApplication:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __123__NSBundleResourceRequest__NSBundleResourceRequestAppExtensionAdditions___extensionEndpointForMainBundleOfHostApplication___block_invoke;
  v7 = &unk_1E69F2C00;
  v8 = a3;
  if (qword_1ED439AF0 != -1)
  {
    dispatch_once(&qword_1ED439AF0, &v4);
  }

  return [qword_1ED439AE0 endpoint];
}

uint64_t __123__NSBundleResourceRequest__NSBundleResourceRequestAppExtensionAdditions___extensionEndpointForMainBundleOfHostApplication___block_invoke(uint64_t a1)
{
  qword_1ED439AE0 = +[NSXPCListener anonymousListener];
  qword_1ED439AE8 = [_NSBundleODRDataForExtensions dataForBundle:1 createIfRequired:?];
  [qword_1ED439AE0 setDelegate:qword_1ED439AE8];
  v2 = qword_1ED439AE0;

  return [v2 resume];
}

+ (void)_addExtensionEndpoint:(id)a3
{
  v9[6] = *MEMORY[0x1E69E9840];
  v4 = +[_NSBundleODRDataForApplications dataForBundle:createIfRequired:](_NSBundleODRDataForApplications, +[NSBundle mainBundle], 1);
  if (v4)
  {
    v5 = v4;
    v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:a3];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:_appExtensionInterface()];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56___NSBundleODRDataForApplications_addExtensionEndpoint___block_invoke;
    v9[3] = &unk_1E69F2080;
    v9[4] = v5;
    v9[5] = v6;
    [(NSXPCConnection *)v6 setInvalidationHandler:v9];
    [(NSXPCConnection *)v6 resume];
    [(NSLock *)v5->super._lock lock];
    extensionConnections = v5->_extensionConnections;
    if (!extensionConnections)
    {
      extensionConnections = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v5->_extensionConnections = extensionConnections;
    }

    [(NSMutableSet *)extensionConnections addObject:v6];
    rootSandboxPath = v5->_rootSandboxPath;
    if (rootSandboxPath)
    {
      [(NSString *)rootSandboxPath UTF8String];
      [-[NSXPCConnection remoteObjectProxy](v6 "remoteObjectProxy")];
    }

    [(NSLock *)v5->super._lock unlock];
  }
}

@end