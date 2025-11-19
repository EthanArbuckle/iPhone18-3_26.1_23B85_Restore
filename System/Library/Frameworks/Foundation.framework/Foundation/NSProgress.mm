@interface NSProgress
+ (NSProgress)currentProgress;
+ (NSProgress)discreteProgressWithTotalUnitCount:(int64_t)unitCount;
+ (NSProgress)progressWithTotalUnitCount:(int64_t)unitCount;
+ (NSProgress)progressWithTotalUnitCount:(int64_t)unitCount parent:(NSProgress *)parent pendingUnitCount:(int64_t)portionOfParentTotalUnitCount;
+ (id)_addSubscriberForCategory:(id)a3 usingPublishingHandler:(id)a4;
+ (id)_publisherInterface;
+ (id)_registrarInterface;
+ (id)_serverConnection;
+ (id)_subscriberInterface;
+ (id)addSubscriberForFileURL:(NSURL *)url withPublishingHandler:(NSProgressPublishingHandler)publishingHandler;
- (BOOL)isCancellable;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isIndeterminate;
- (BOOL)isPausable;
- (BOOL)isPaused;
- (BOOL)isPrioritizable;
- (NSDictionary)userInfo;
- (NSNumber)estimatedTimeRemaining;
- (NSNumber)fileCompletedCount;
- (NSNumber)fileTotalCount;
- (NSNumber)throughput;
- (NSProgress)initWithParent:(NSProgress *)parentProgressOrNil userInfo:(NSDictionary *)userInfoOrNil;
- (NSProgressFileOperationKind)fileOperationKind;
- (NSProgressKind)kind;
- (NSString)localizedAdditionalDescription;
- (NSString)localizedDescription;
- (NSURL)fileURL;
- (double)fractionCompleted;
- (id)_indentedDescription:(unint64_t)a3;
- (id)_initWithValues:(id)a3;
- (id)acknowledgementHandlerForAppBundleIdentifier:(id)a3;
- (id)byteCompletedCount;
- (id)byteTotalCount;
- (id)ownedDictionaryKeyEnumerator;
- (id)ownedDictionaryObjectForKey:(id)a3;
- (id)prioritizationHandler;
- (int64_t)completedUnitCount;
- (int64_t)totalUnitCount;
- (unint64_t)ownedDictionaryCount;
- (void)_addCompletedUnitCount:(int64_t)a3;
- (void)_addImplicitChild:(id)a3;
- (void)_notifyRemoteObserversOfUserInfoValueForKey:(id)a3;
- (void)_notifyRemoteObserversOfValueForKeys:(id)a3;
- (void)_receiveProgressMessage:(void *)result forSequence:(xpc_object_t)xdict;
- (void)_setCancellable:(BOOL)a3 fromChild:(BOOL)a4;
- (void)_setCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4;
- (void)_setParent:(id)a3 portion:(int64_t)a4;
- (void)_setPausable:(BOOL)a3 fromChild:(BOOL)a4;
- (void)_setRemoteValues:(id)a3 forKeys:(id)a4;
- (void)_setUserInfoValue:(id)a3 forKey:(id)a4 fromChild:(BOOL)a5;
- (void)_setValueForKeys:(id)a3 settingBlock:(id)a4;
- (void)_updateChild:(id)a3 fraction:(_NSProgressFractionTuple *)a4 portion:(int64_t)a5;
- (void)_updateFractionCompleted:(_NSProgressFractionTuple *)a3;
- (void)addChild:(NSProgress *)child withPendingUnitCount:(int64_t)inUnitCount;
- (void)appWithBundleID:(id)a3 didAcknowledgeWithSuccess:(BOOL)a4;
- (void)becomeCurrentWithPendingUnitCount:(int64_t)unitCount;
- (void)cancel;
- (void)cancellationHandler;
- (void)dealloc;
- (void)pause;
- (void)pausingHandler;
- (void)performAsCurrentWithPendingUnitCount:(int64_t)unitCount usingBlock:(void *)work;
- (void)prioritize;
- (void)publish;
- (void)resignCurrent;
- (void)resume;
- (void)resumingHandler;
- (void)setAcknowledgementHandler:(id)a3 forAppBundleIdentifier:(id)a4;
- (void)setCancellable:(BOOL)cancellable;
- (void)setCancellationHandler:(void *)cancellationHandler;
- (void)setCompletedUnitCount:(int64_t)completedUnitCount;
- (void)setKind:(NSProgressKind)kind;
- (void)setLocalizedAdditionalDescription:(NSString *)localizedAdditionalDescription;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setPausable:(BOOL)pausable;
- (void)setPausingHandler:(void *)pausingHandler;
- (void)setPrioritizable:(BOOL)a3;
- (void)setPrioritizationHandler:(id)a3;
- (void)setResumingHandler:(void *)resumingHandler;
- (void)setTotalUnitCount:(int64_t)totalUnitCount;
- (void)set_adoptChildUserInfo:(BOOL)a3;
- (void)unpublish;
@end

@implementation NSProgress

+ (NSProgress)currentProgress
{
  result = _CFGetTSD();
  if (result)
  {
    v3 = result->super.isa;

    return v3;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_parent, 0);
  [(NSOwnedDictionaryProxy *)self->_userInfoProxy superRelease];

  v3.receiver = self;
  v3.super_class = NSProgress;
  [(NSProgress *)&v3 dealloc];
}

- (BOOL)isCancelled
{
  [(NSLock *)self->_lock lock];
  isCancelled = self->_values->_isCancelled;
  [(NSLock *)self->_lock unlock];
  return isCancelled;
}

- (BOOL)isPaused
{
  [(NSLock *)self->_lock lock];
  isPaused = self->_values->_isPaused;
  [(NSLock *)self->_lock unlock];
  return isPaused;
}

- (int64_t)totalUnitCount
{
  [(NSLock *)self->_lock lock];
  total = self->_values->_selfFraction.total;
  [(NSLock *)self->_lock unlock];
  return total;
}

- (BOOL)isCancellable
{
  [(NSLock *)self->_lock lock];
  isCancellable = self->_values->_isCancellable;
  [(NSLock *)self->_lock unlock];
  return isCancellable;
}

- (BOOL)isPausable
{
  [(NSLock *)self->_lock lock];
  isPausable = self->_values->_isPausable;
  [(NSLock *)self->_lock unlock];
  return isPausable;
}

- (int64_t)completedUnitCount
{
  [(NSLock *)self->_lock lock];
  completed = self->_values->_selfFraction.completed;
  [(NSLock *)self->_lock unlock];
  return completed;
}

- (NSDictionary)userInfo
{
  [(NSLock *)self->_lock lock];
  userInfoProxy = self->_userInfoProxy;
  if (!userInfoProxy)
  {
    userInfoProxy = [[NSOwnedDictionaryProxy alloc] initWithOwner:self];
    self->_userInfoProxy = userInfoProxy;
  }

  v4 = userInfoProxy;
  [(NSLock *)self->_lock unlock];
  return v4;
}

- (BOOL)isIndeterminate
{
  [(NSLock *)self->_lock lock];
  values = self->_values;
  completed = values->_selfFraction.completed;
  if (completed < 0)
  {
    v7 = 1;
  }

  else
  {
    total = values->_selfFraction.total;
    v6 = (total | completed) == 0;
    v7 = total < 0 || v6;
  }

  [(NSLock *)self->_lock unlock];
  return v7;
}

- (NSProgressKind)kind
{
  [(NSLock *)self->_lock lock];
  v3 = self->_values->_kind;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (unint64_t)ownedDictionaryCount
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_values->_userInfo count];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (id)ownedDictionaryKeyEnumerator
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  values = self->_values;
  userInfo = values->_userInfo;
  if (!userInfo)
  {
    userInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
    values->_userInfo = userInfo;
  }

  v5 = [(NSMutableDictionary *)userInfo allKeys];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__35;
  v15 = __Block_byref_object_dispose__35;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__NSProgress_ownedDictionaryKeyEnumerator__block_invoke;
  v10[3] = &unk_1E69F44F8;
  v10[4] = v5;
  v10[5] = &v11;
  [v5 enumerateObjectsUsingBlock:v10];
  v6 = v12[5];
  if (v6)
  {
    v7 = [v6 objectEnumerator];
  }

  else
  {
    v7 = [(NSMutableDictionary *)values->_userInfo keyEnumerator];
  }

  [(NSLock *)self->_lock unlock];
  v8 = v7;
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)resignCurrent
{
  v4 = _CFGetTSD();
  if (!v4 || (v5 = v4, *v4 != self))
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NSProgress was not the current progress on this thread %@", _NSMethodExceptionProem(self, a2), +[NSThread currentThread](NSThread, "currentThread")), 0}];
    objc_exception_throw(v6);
  }

  pthread_self();
  if ((v5[3] & 1) == 0)
  {
    [(NSProgress *)self _addCompletedUnitCount:v5[2]];
  }

  _CFSetTSD();

  free(v5);
}

- (BOOL)isFinished
{
  [(NSLock *)self->_lock lock];
  values = self->_values;
  completed = values->_selfFraction.completed;
  total = values->_selfFraction.total;
  v7 = completed > 0 && total == 0;
  v10 = completed >= 1 && completed >= total && total > 0 || v7;
  [(NSLock *)self->_lock unlock];
  return v10;
}

- (double)fractionCompleted
{
  [(NSLock *)self->_lock lock];
  [(NSProgressValues *)self->_values fractionCompleted];
  v4 = v3;
  [(NSLock *)self->_lock unlock];
  return v4;
}

- (void)cancel
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSProgress *)self _setValueForKeys:&__block_literal_global_391 settingBlock:&__block_literal_global_396];
  [(NSLock *)self->_lock lock];
  cancellationHandler = self->_cancellationHandler;
  if (cancellationHandler)
  {
    v4 = cancellationHandler;
    v5 = qos_class_self();
    global_queue = dispatch_get_global_queue(v5, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __20__NSProgress_cancel__block_invoke_3;
    block[3] = &unk_1E69F40C0;
    block[4] = v4;
    dispatch_async(global_queue, block);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = self->_children;
  v8 = [(NSMutableSet *)children countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v14 + 1) + 8 * i) cancel];
      }

      v9 = [(NSMutableSet *)children countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }

  [(NSLock *)self->_lock unlock];
}

void *__20__NSProgress_cancel__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 106))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A080;
  }
}

+ (id)_publisherInterface
{
  if (qword_1ED43F0D0 != -1)
  {
    dispatch_once(&qword_1ED43F0D0, &__block_literal_global_433);
  }

  return qword_1ED43F0D8;
}

uint64_t __34__NSProgress__subscriberInterface__block_invoke(uint64_t a1)
{
  qword_1ED43F0E8 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF64DE8];
  [qword_1ED43F0E8 setInterface:objc_msgSend(*(a1 + 32) forSelector:"_publisherInterface") argumentIndex:sel_addPublisher_forID_withValues_isOld_ ofReply:{0, 0}];
  [qword_1ED43F0E8 setClasses:+[NSProgressValues decodableClasses](NSProgressValues forSelector:"decodableClasses") argumentIndex:sel_observePublisherForID_values_forKeys_ ofReply:{1, 0}];
  v2 = qword_1ED43F0E8;
  v3 = +[NSProgressValues decodableClasses];

  return [v2 setClasses:v3 forSelector:sel_observePublisherUserInfoForID_value_forKey_ argumentIndex:1 ofReply:0];
}

uint64_t __31__NSProgress__serverConnection__block_invoke()
{
  qword_1ED43F100 = +[NSFileCoordinator _createConnectionToProgressRegistrar];
  [qword_1ED43F100 setRemoteObjectInterface:{+[NSProgress _registrarInterface](NSProgress, "_registrarInterface")}];
  [qword_1ED43F100 setOptions:4096];
  v0 = qword_1ED43F100;

  return [v0 resume];
}

+ (id)_registrarInterface
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__NSProgress__registrarInterface__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (qword_1ED43F0F0 != -1)
  {
    dispatch_once(&qword_1ED43F0F0, v3);
  }

  return qword_1ED43F0F8;
}

uint64_t __33__NSProgress__registrarInterface__block_invoke(uint64_t a1)
{
  qword_1ED43F0F8 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF65058];
  [qword_1ED43F0F8 setInterface:objc_msgSend(*(a1 + 32) forSelector:"_publisherInterface") argumentIndex:sel_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler_ ofReply:{0, 0}];
  v2 = qword_1ED43F0F8;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{objc_opt_class(), 0), sel_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler_, 2, 0}];
  v5 = qword_1ED43F0F8;
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  [v5 setClasses:objc_msgSend(v6 forSelector:"setWithObjects:" argumentIndex:v7 ofReply:{objc_opt_class(), 0), sel_addPublisher_forID_acknowledgementAppBundleIDs_category_fileURL_initialValues_completionHandler_, 0, 1}];
  [qword_1ED43F0F8 setClasses:+[NSProgressValues decodableClasses](NSProgressValues forSelector:"decodableClasses") argumentIndex:sel_observePublisherForID_values_forKeys_ ofReply:{1, 0}];
  [qword_1ED43F0F8 setClasses:+[NSProgressValues decodableClasses](NSProgressValues forSelector:"decodableClasses") argumentIndex:sel_observePublisherUserInfoForID_value_forKey_ ofReply:{1, 0}];
  [qword_1ED43F0F8 setInterface:objc_msgSend(*(a1 + 32) forSelector:"_subscriberInterface") argumentIndex:sel_addSubscriber_forID_appBundleID_category_completionHandler_ ofReply:{0, 0}];
  v8 = qword_1ED43F0F8;
  v9 = [*(a1 + 32) _subscriberInterface];

  return [v8 setInterface:v9 forSelector:sel_addSubscriber_forID_appBundleID_fileURL_completionHandler_ argumentIndex:0 ofReply:0];
}

NSXPCInterface *__33__NSProgress__publisherInterface__block_invoke()
{
  result = [NSXPCInterface interfaceWithProtocol:&unk_1EEF64B70];
  qword_1ED43F0D8 = result;
  return result;
}

+ (id)_subscriberInterface
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__NSProgress__subscriberInterface__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (qword_1ED43F0E0 != -1)
  {
    dispatch_once(&qword_1ED43F0E0, v3);
  }

  return qword_1ED43F0E8;
}

+ (id)_serverConnection
{
  if (qword_1ED43F108 != -1)
  {
    dispatch_once(&qword_1ED43F108, &__block_literal_global_508);
  }

  return qword_1ED43F100;
}

- (void)publish
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (self->_publisherID)
  {
    [(NSLock *)self->_lock unlock];
    v16 = [NSString stringWithFormat:@"[%p publish]: this instance of NSProgress has already been published and can't be published again.", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  self->_publisherID = [+[NSUUID UUID](NSUUID UUIDString];
  userInfo = self->_values->_userInfo;
  v4 = [(NSMutableDictionary *)userInfo objectForKey:@"NSProgressCategoryKey"];
  v5 = [(NSMutableDictionary *)userInfo objectForKey:@"NSProgressFileURLKey"];
  acknowledgementHandlersByLowercaseBundleID = self->_acknowledgementHandlersByLowercaseBundleID;
  if (acknowledgementHandlersByLowercaseBundleID)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:{-[NSMutableDictionary allKeys](acknowledgementHandlersByLowercaseBundleID, "allKeys")}];
  }

  else
  {
    v7 = 0;
  }

  if (qword_1ED43F0A8 != -1)
  {
    dispatch_once(&qword_1ED43F0A8, &__block_literal_global_91);
  }

  if (os_log_type_enabled(_MergedGlobals_25_0, OS_LOG_TYPE_DEBUG))
  {
    v10 = _MergedGlobals_25_0;
    if (os_log_type_enabled(_MergedGlobals_25_0, OS_LOG_TYPE_DEBUG))
    {
      publisherID = self->_publisherID;
      *buf = 134218755;
      v19 = self;
      v20 = 2113;
      v21 = v5;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = publisherID;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "<NSProgress %p> Publishing for URL %{private}@ in category %{public}@ with ID %{public}@", buf, 0x2Au);
    }
  }

  v11 = [+[NSProgress _serverConnection](NSProgress _serverConnection];
  v12 = self->_publisherID;
  v13 = [v4 lowercaseString];
  values = self->_values;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __21__NSProgress_publish__block_invoke;
  v17[3] = &unk_1E69FA880;
  v17[4] = self;
  [v11 addPublisher:self forID:v12 acknowledgementAppBundleIDs:v7 category:v13 fileURL:v5 initialValues:values completionHandler:v17];
  [(NSLock *)self->_lock unlock];
}

uint64_t __21__NSProgress_publish__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) appWithBundleID:*(*(&v9 + 1) + 8 * v7++) didAcknowledgeWithSuccess:0];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

+ (NSProgress)progressWithTotalUnitCount:(int64_t)unitCount
{
  v4 = [[a1 alloc] initWithParent:objc_msgSend(a1 userInfo:{"currentProgress"), 0}];
  [v4 setTotalUnitCount:unitCount];

  return v4;
}

+ (NSProgress)discreteProgressWithTotalUnitCount:(int64_t)unitCount
{
  v4 = [[a1 alloc] initWithParent:0 userInfo:0];
  [v4 setTotalUnitCount:unitCount];

  return v4;
}

- (NSProgress)initWithParent:(NSProgress *)parentProgressOrNil userInfo:(NSDictionary *)userInfoOrNil
{
  v12 = *MEMORY[0x1E69E9840];
  if (parentProgressOrNil && [objc_opt_class() currentProgress] != parentProgressOrNil)
  {
    v10 = [NSString stringWithFormat:@"%@: The parent of an NSProgress object must be the currentProgress.", _NSMethodExceptionProem(self, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = NSProgress;
  v8 = [(NSProgress *)&v11 init];
  if (v8)
  {
    v8->_lock = objc_opt_new();
    v8->_values = objc_alloc_init(NSProgressValues);
    v8->_values->_userInfo = [(NSDictionary *)userInfoOrNil mutableCopy];
    if (parentProgressOrNil)
    {
      [(NSProgress *)parentProgressOrNil _addImplicitChild:v8];
    }
  }

  return v8;
}

- (void)becomeCurrentWithPendingUnitCount:(int64_t)unitCount
{
  v6 = _CFGetTSD();
  v7 = v6;
  if (v6 && *v6 == self)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NSProgress object is already current on this thread %@", _NSMethodExceptionProem(self, a2), +[NSThread currentThread](NSThread, "currentThread")), 0}];
    objc_exception_throw(v10);
  }

  pthread_self();
  v8 = malloc_default_zone();
  v9 = malloc_type_zone_calloc(v8, 1uLL, 0x20uLL, 0x2C221C3EuLL);
  *v9 = 0u;
  v9[1] = 0u;
  *v9 = self;
  *(v9 + 1) = v7;
  *(v9 + 2) = unitCount;

  _CFSetTSD();
}

- (void)_setParent:(id)a3 portion:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  objc_storeWeak(&self->_parent, a3);
  self->_values->_portionOfParent = a4;
  v11 = 0uLL;
  *v12 = 0;
  values = self->_values;
  if (values)
  {
    [(NSProgressValues *)values overallFraction];
  }

  else
  {
    v8 = 0uLL;
    *&v9 = 0;
  }

  *&v12[8] = v8;
  *&v12[24] = v9;
  [(NSLock *)self->_lock unlock:v8];
  v8 = v11;
  v9 = *v12;
  v10 = *&v12[16];
  [a3 _updateChild:self fraction:&v8 portion:a4];
}

- (void)addChild:(NSProgress *)child withPendingUnitCount:(int64_t)inUnitCount
{
  v8 = [(NSProgress *)child _parent];
  if (v8)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NSProgress %p was already the child of another progress %p", _NSMethodExceptionProem(self, a2), child, v8), 0}];
    objc_exception_throw(v10);
  }

  [(NSLock *)self->_lock lock];
  children = self->_children;
  if (!children)
  {
    children = [MEMORY[0x1E695DFA8] set];
    self->_children = children;
  }

  [(NSMutableSet *)children addObject:child];
  [(NSLock *)self->_lock unlock];
  [(NSProgress *)child _setParent:self portion:inUnitCount];
  if ([(NSProgress *)self isCancelled])
  {
    [(NSProgress *)child cancel];
  }

  if ([(NSProgress *)self isPaused])
  {

    [(NSProgress *)child pause];
  }
}

+ (NSProgress)progressWithTotalUnitCount:(int64_t)unitCount parent:(NSProgress *)parent pendingUnitCount:(int64_t)portionOfParentTotalUnitCount
{
  v8 = [[NSProgress alloc] initWithParent:0 userInfo:0];
  [(NSProgress *)v8 setTotalUnitCount:unitCount];
  [(NSProgress *)parent addChild:v8 withPendingUnitCount:portionOfParentTotalUnitCount];

  return v8;
}

- (void)_addImplicitChild:(id)a3
{
  v5 = _CFGetTSD();
  if ((*(v5 + 24) & 1) == 0)
  {
    v6 = v5;
    [(NSProgress *)self addChild:a3 withPendingUnitCount:*(v5 + 16)];
    *(v6 + 24) = 1;
  }
}

- (void)performAsCurrentWithPendingUnitCount:(int64_t)unitCount usingBlock:(void *)work
{
  [(NSProgress *)self becomeCurrentWithPendingUnitCount:unitCount];
  (*(work + 2))(work);

  [(NSProgress *)self resignCurrent];
}

- (void)set_adoptChildUserInfo:(BOOL)a3
{
  if (a3)
  {
    v3 = self->_flags | 2;
  }

  else
  {
    v3 = -3;
  }

  self->_flags = v3;
}

- (void)_notifyRemoteObserversOfUserInfoValueForKey:(id)a3
{
  if (self->_publisherID)
  {
    v5 = [(NSMutableDictionary *)self->_values->_userInfo objectForKey:?];
    if (objc_lookUpClass("NSImage") && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = [v5 performSelector:sel_TIFFRepresentation];
      a3 = [a3 stringByAppendingString:@".data"];
    }

    v7 = [+[NSProgress _serverConnection](NSProgress _serverConnection];
    publisherID = self->_publisherID;

    [v7 observePublisherUserInfoForID:publisherID value:v5 forKey:a3];
  }
}

- (void)_notifyRemoteObserversOfValueForKeys:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_publisherID)
  {
    v24 = [MEMORY[0x1E695DF70] array];
    v23 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = [a3 countByEnumeratingWithState:&v32 objects:v31 count:16];
    if (v4)
    {
      v6 = v4;
      v26 = *v33;
      *&v5 = 134218242;
      v22 = v5;
      do
      {
        v7 = 0;
        do
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(a3);
          }

          v8 = *(*(&v32 + 1) + 8 * v7);
          lastNotificationTimesByKey = self->_lastNotificationTimesByKey;
          if (!lastNotificationTimesByKey)
          {
            lastNotificationTimesByKey = objc_alloc_init(MEMORY[0x1E695DF90]);
            self->_lastNotificationTimesByKey = lastNotificationTimesByKey;
          }

          [-[NSMutableDictionary objectForKeyedSubscript:](lastNotificationTimesByKey objectForKeyedSubscript:{v8, v22), "doubleValue"}];
          v11 = v10;
          [+[NSProcessInfo processInfo](NSProcessInfo systemUptime];
          v13 = v12;
          if (qword_1ED43F0C0 != -1)
          {
            dispatch_once(&qword_1ED43F0C0, &__block_literal_global_320);
          }

          v14 = [qword_1ED43F0C8 containsObject:v8];
          values = self->_values;
          completed = values->_selfFraction.completed;
          if (completed && (v13 - v11 <= 0.0166666667 ? (v17 = completed == values->_selfFraction.total) : (v17 = 1), !v17 ? (v18 = 0) : (v18 = 1), ((v18 | v14) & 1) == 0))
          {
            if (qword_1ED43F0A8 != -1)
            {
              dispatch_once(&qword_1ED43F0A8, &__block_literal_global_91);
            }

            v21 = _MergedGlobals_25_0;
            if (os_log_type_enabled(_MergedGlobals_25_0, OS_LOG_TYPE_DEBUG))
            {
              *buf = v22;
              v28 = self;
              v29 = 2114;
              v30 = v8;
              _os_log_debug_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEBUG, "<NSProgress %p> Dropped remote update for key %{public}@ due to throttling", buf, 0x16u);
            }
          }

          else
          {
            v19 = [(NSProgressValues *)values valueForKey:v8];
            if (v19)
            {
              [v24 addObject:{v19, v20}];
              [v23 addObject:v8];
              [(NSMutableDictionary *)lastNotificationTimesByKey setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:v13], v8];
            }
          }

          ++v7;
        }

        while (v6 != v7);
        v6 = [a3 countByEnumeratingWithState:&v32 objects:v31 count:16];
      }

      while (v6);
    }

    if ([v24 count])
    {
      [objc_msgSend(+[NSProgress _serverConnection](NSProgress "_serverConnection")];
    }
  }
}

id __51__NSProgress__notifyRemoteObserversOfValueForKeys___block_invoke()
{
  result = +[NSProgressValues _importantKeys];
  qword_1ED43F0C8 = result;
  return result;
}

- (void)_setValueForKeys:(id)a3 settingBlock:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v7 = (*(a3 + 2))(a3, self->_values);
  [(NSLock *)self->_lock unlock];
  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSProgress *)self willChangeValueForKey:*(*(&v14 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }

    [(NSLock *)self->_lock lock];
    (*(a4 + 2))(a4, self->_values);
    [(NSProgress *)self _notifyRemoteObserversOfValueForKeys:v7];
    [(NSLock *)self->_lock unlock];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__NSProgress__setValueForKeys_settingBlock___block_invoke;
  v12[3] = &unk_1E69F8640;
  v12[4] = self;
  [v7 enumerateObjectsWithOptions:2 usingBlock:v12];
}

- (void)_updateFractionCompleted:(_NSProgressFractionTuple *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_NSProgressFractionIsEqual(&a3->var0.completed, &a3->var1.completed) & 1) == 0)
  {
    v5 = [(NSProgress *)self _parent];
    portionOfParent = self->_values->_portionOfParent;
    v7 = *&a3->var0.overflowed;
    v8[0] = *&a3->var0.completed;
    v8[1] = v7;
    v8[2] = *&a3->var1.total;
    [v5 _updateChild:self fraction:v8 portion:portionOfParent];
  }
}

- (void)setTotalUnitCount:(int64_t)totalUnitCount
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x5010000000;
  v15 = &unk_181543D8B;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__NSProgress_setTotalUnitCount___block_invoke;
  v7[3] = &unk_1E69FA6C8;
  v7[4] = self;
  v7[5] = totalUnitCount;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__NSProgress_setTotalUnitCount___block_invoke_2;
  v6[3] = &unk_1E69FA6F0;
  v6[5] = &v8;
  v6[6] = totalUnitCount;
  v6[4] = &v12;
  [(NSProgress *)self _setValueForKeys:v7 settingBlock:v6];
  if (*(v9 + 24) == 1)
  {
    v4 = *(v13 + 3);
    v5[0] = *(v13 + 2);
    v5[1] = v4;
    v5[2] = *(v13 + 4);
    [(NSProgress *)self _updateFractionCompleted:v5];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

double __32__NSProgress_setTotalUnitCount___block_invoke_2(void *a1, int64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  [a2 overallFraction];
  v4 = *(a1[4] + 8);
  *(v4 + 48) = v14;
  *(v4 + 32) = v13;
  v5 = a2[3];
  v6 = a1[6];
  if (v5 >= 1 && v5 != v6)
  {
    v12[1] = a1[6];
    v12[2] = 0;
    v12[0] = v5;
    _NSProgressFractionMultiplyByFraction(a2 + 5, v12);
    v6 = a1[6];
  }

  a2[3] = v6;
  [a2 overallFraction];
  v8 = *(a1[4] + 8);
  result = *&v10;
  *(v8 + 56) = v10;
  *(v8 + 72) = v11;
  *(*(a1[5] + 8) + 24) = 1;
  return result;
}

- (void)setCompletedUnitCount:(int64_t)completedUnitCount
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x5010000000;
  v15 = &unk_181543D8B;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSProgress_setCompletedUnitCount___block_invoke;
  v7[3] = &unk_1E69FA6C8;
  v7[4] = self;
  v7[5] = completedUnitCount;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSProgress_setCompletedUnitCount___block_invoke_2;
  v6[3] = &unk_1E69FA6F0;
  v6[5] = &v8;
  v6[6] = completedUnitCount;
  v6[4] = &v12;
  [(NSProgress *)self _setValueForKeys:v7 settingBlock:v6];
  if (*(v9 + 24) == 1)
  {
    v4 = *(v13 + 3);
    v5[0] = *(v13 + 2);
    v5[1] = v4;
    v5[2] = *(v13 + 4);
    [(NSProgress *)self _updateFractionCompleted:v5];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

double __36__NSProgress_setCompletedUnitCount___block_invoke_2(void *a1, void *a2)
{
  [a2 overallFraction];
  v4 = *(a1[4] + 8);
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  a2[2] = a1[6];
  [a2 overallFraction];
  v5 = *(a1[4] + 8);
  result = *&v7;
  *(v5 + 56) = v7;
  *(v5 + 72) = v8;
  *(*(a1[5] + 8) + 24) = 1;
  return result;
}

- (void)_addCompletedUnitCount:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x5010000000;
  v15 = &unk_181543D8B;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__NSProgress__addCompletedUnitCount___block_invoke;
  v7[3] = &unk_1E69FA6C8;
  v7[4] = self;
  v7[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__NSProgress__addCompletedUnitCount___block_invoke_2;
  v6[3] = &unk_1E69FA6F0;
  v6[5] = &v8;
  v6[6] = a3;
  v6[4] = &v12;
  [(NSProgress *)self _setValueForKeys:v7 settingBlock:v6];
  if (*(v9 + 24) == 1)
  {
    v4 = *(v13 + 3);
    v5[0] = *(v13 + 2);
    v5[1] = v4;
    v5[2] = *(v13 + 4);
    [(NSProgress *)self _updateFractionCompleted:v5];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

double __37__NSProgress__addCompletedUnitCount___block_invoke_2(void *a1, void *a2)
{
  [a2 overallFraction];
  v4 = *(a1[4] + 8);
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  a2[2] += a1[6];
  [a2 overallFraction];
  v5 = *(a1[4] + 8);
  result = *&v7;
  *(v5 + 56) = v7;
  *(v5 + 72) = v8;
  *(*(a1[5] + 8) + 24) = 1;
  return result;
}

- (void)_setCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x5010000000;
  v16 = &unk_181543D8B;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__NSProgress__setCompletedUnitCount_totalUnitCount___block_invoke;
  v8[3] = &unk_1E69FA718;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__NSProgress__setCompletedUnitCount_totalUnitCount___block_invoke_2;
  v7[3] = &unk_1E69FA740;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = &v13;
  v7[5] = &v9;
  [(NSProgress *)self _setValueForKeys:v8 settingBlock:v7];
  if (*(v10 + 24) == 1)
  {
    v5 = *(v14 + 3);
    v6[0] = *(v14 + 2);
    v6[1] = v5;
    v6[2] = *(v14 + 4);
    [(NSProgress *)self _updateFractionCompleted:v6];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

double __52__NSProgress__setCompletedUnitCount_totalUnitCount___block_invoke_2(void *a1, void *a2)
{
  [a2 overallFraction];
  v4 = *(a1[4] + 8);
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  a2[2] = a1[6];
  a2[3] = a1[7];
  [a2 overallFraction];
  v5 = *(a1[4] + 8);
  result = *&v7;
  *(v5 + 56) = v7;
  *(v5 + 72) = v8;
  *(*(a1[5] + 8) + 24) = 1;
  return result;
}

- (void)_updateChild:(id)a3 fraction:(_NSProgressFractionTuple *)a4 portion:(int64_t)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x5010000000;
  v27 = &unk_181543D8B;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__NSProgress__updateChild_fraction_portion___block_invoke;
  v16[3] = &__block_descriptor_88_e35___NSArray_16__0__NSProgressValues_8l;
  v16[4] = a5;
  v6 = *&a4->var0.completed;
  v7 = *&a4->var1.total;
  v18 = *&a4->var0.overflowed;
  v19 = v7;
  v17 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__NSProgress__updateChild_fraction_portion___block_invoke_2;
  v12[3] = &unk_1E69FA788;
  v12[7] = &v20;
  v12[8] = a5;
  v8 = *&a4->var0.completed;
  v9 = *&a4->var0.overflowed;
  v15 = *&a4->var1.total;
  v14 = v9;
  v13 = v8;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = &v24;
  [(NSProgress *)self _setValueForKeys:v16 settingBlock:v12];
  if (*(v21 + 24) == 1)
  {
    v10 = *(v25 + 3);
    v11[0] = *(v25 + 2);
    v11[1] = v10;
    v11[2] = *(v25 + 4);
    [(NSProgress *)self _updateFractionCompleted:v11];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void *__44__NSProgress__updateChild_fraction_portion___block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v30 = *(a2 + 40);
  v31 = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = *(a1 + 40);
  v29[0] = *(a1 + 32);
  v29[1] = v5;
  v29[2] = 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 48);
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 | v6)
      {
        *(&v27 + 1) = *(a1 + 48);
        v28 = 0;
        *&v27 = v6;
        LOBYTE(v28) = *(a1 + 56);
        _NSProgressFractionMultiplyByFraction(&v27, v29);
        _NSProgressFractionSubtractFraction(&v30, &v27);
      }
    }
  }

  v8 = *(a1 + 64);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = *(a1 + 72);
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 | v8)
      {
        *(&v27 + 1) = *(a1 + 72);
        v28 = 0;
        *&v27 = v8;
        LOBYTE(v28) = *(a1 + 80);
        _NSProgressFractionMultiplyByFraction(&v27, v29);
        _NSProgressFractionAddFraction(&v30, &v27);
      }
    }
  }

  v27 = v30;
  v28 = v31;
  _NSProgressFractionAddFraction(&v27, (a2 + 16));
  memset(v26, 0, sizeof(v26));
  [a2 overallFraction];
  if ((_NSProgressFractionIsFractionCompletedEqual(&v27, v26) & 1) == 0)
  {
    [v4 addObject:@"fractionCompleted"];
  }

  v10 = *(a1 + 64);
  v11 = *(&v10 + 1) > 0 && v10 >= *(&v10 + 1);
  if (!*(&v10 + 1))
  {
    v11 = 1;
  }

  if (v10 >= 1 && v11)
  {
    v24 = *(a2 + 16);
    v25 = *(a2 + 32);
    v12 = *(a1 + 32);
    if (v12)
    {
      *&v24 = v24 + v12;
      [v4 addObject:@"completedUnitCount"];
      v10 = *(a1 + 64);
    }

    v23 = 0;
    v22 = v10;
    LOBYTE(v23) = *(a1 + 80);
    _NSProgressFractionMultiplyByFraction(&v22, v29);
    v20 = v30;
    v21 = v31;
    _NSProgressFractionSubtractFraction(&v20, &v22);
    _NSProgressFractionAddFraction(&v24, &v20);
    v13 = v24 >= 1 && v24 >= *(&v24 + 1) && *(&v24 + 1) > 0 || v24 > 0 && *(&v24 + 1) == 0;
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    if (v15 >= 1 && v15 >= v16 && v16 >= 1)
    {
      if (v13)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v19 = v15 > 0 && v16 == 0;
    if (v13 != v19)
    {
LABEL_34:
      [v4 addObject:@"finished"];
    }
  }

LABEL_35:
  if ([v4 count])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double __44__NSProgress__updateChild_fraction_portion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  [a2 overallFraction];
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = v24;
  *(v4 + 48) = v25;
  v5 = a2[3];
  *&v22 = *(a1 + 64);
  *(&v22 + 1) = v5;
  v23 = 0;
  v21 = 0;
  v20 = *(a1 + 72);
  LOBYTE(v21) = *(a1 + 88);
  _NSProgressFractionMultiplyByFraction(&v20, &v22);
  v6 = *(a1 + 72);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 80);
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 | v6)
      {
        _NSProgressFractionSubtractFraction((a2 + 5), &v20);
      }
    }
  }

  v8 = *(a1 + 96);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = *(a1 + 104);
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 | v8)
      {
        *(&v18 + 1) = *(a1 + 104);
        v19 = 0;
        *&v18 = v8;
        LOBYTE(v19) = *(a1 + 112);
        _NSProgressFractionMultiplyByFraction(&v18, &v22);
        _NSProgressFractionAddFraction((a2 + 5), &v18);
        v8 = *(a1 + 96);
      }
    }
  }

  v10 = *(a1 + 104);
  v11 = v10 == 0;
  v12 = v10 > 0 && v8 >= v10;
  if (v11)
  {
    v12 = 1;
  }

  if (v8 >= 1 && v12)
  {
    [*(*(a1 + 32) + 96) removeObject:*(a1 + 40)];
    v13 = *(a1 + 64);
    if (v13)
    {
      a2[2] += v13;
      v18 = v22;
      v19 = v23;
      _NSProgressFractionMultiplyByFraction(&v18, (a1 + 96));
      _NSProgressFractionSubtractFraction((a2 + 5), &v18);
    }
  }

  [a2 overallFraction];
  v14 = *(*(a1 + 48) + 8);
  result = *&v16;
  *(v14 + 56) = v16;
  *(v14 + 72) = v17;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[4] = localizedDescription;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__NSProgress_setLocalizedDescription___block_invoke;
  v4[3] = &unk_1E69FA7B0;
  v4[4] = localizedDescription;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__NSProgress_setLocalizedDescription___block_invoke_2;
  v3[3] = &unk_1E69FA7D8;
  [(NSProgress *)self _setValueForKeys:v4 settingBlock:v3];
}

void *__38__NSProgress_setLocalizedDescription___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 72))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A020;
  }
}

uint64_t __38__NSProgress_setLocalizedDescription___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) copy];
  *(a2 + 72) = result;
  return result;
}

- (NSString)localizedDescription
{
  v33[1] = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  values = self->_values;
  v4 = values->_localizedDescription;
  if (!v4)
  {
    if (![(NSString *)values->_kind isEqualToString:@"NSProgressKindFile"])
    {
      completed = values->_selfFraction.completed;
      if (completed < 0 || ((total = values->_selfFraction.total, v14 = total | completed, total >= 1) ? (v15 = v14 == 0) : (v15 = 1), v15))
      {
        [(NSLock *)self->_lock unlock];
        return &stru_1EEEFDF90;
      }

      [(NSProgressValues *)values fractionCompleted];
      v20 = v19;
      v21 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressLocalizedDescriptionPercentCompleteFormatterKey"];
      if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (qword_1ED43F110 != -1)
        {
          dispatch_once(&qword_1ED43F110, &__block_literal_global_809);
        }

        v22 = qword_1ED43F118;
      }

      v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ completed" value:&stru_1EEEFDF90 table:@"Progress"], objc_msgSend(v22, "stringFromNumber:", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v20)), v32);
      goto LABEL_60;
    }

    v6 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileDisplayNameKey"];
    v33[0] = v6;
    if ((_NSIsNSString() & 1) == 0)
    {
      v6 = 0;
      v33[0] = 0;
    }

    if (![v6 length])
    {
      v6 = 0;
      v33[0] = 0;
    }

    v7 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileTotalCountKey"];
    if (_NSIsNSNumber())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileURLKey"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
    }

    if (!v8 || [v8 longLongValue] <= 1)
    {
      if (!v6)
      {
        v7 = v8;
        if (!v9)
        {
          goto LABEL_17;
        }

        if (([v9 getResourceValue:v33 forKey:*MEMORY[0x1E695DC10] error:0] & 1) == 0)
        {
          v33[0] = 0;
        }
      }

      v7 = &off_1EEF57EA8;
    }

LABEL_17:
    v10 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressUseItemDescriptionKey"];
    if (_NSIsNSNumber())
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    v16 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileOperationKindKey"];
    if ([v16 isEqualToString:@"NSProgressFileOperationKindDownloading"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Downloading";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindUploading"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Uploading";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindDecompressingAfterDownloading"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"DecompressingAfterDownloading";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindReceiving"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Receiving";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindCopying"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Copying";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindDuplicating"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Duplicating";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindCompressing"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Compressing";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindDecompressing"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Decompressing";
    }

    else if ([v16 isEqualToString:@"NSProgressFileOperationKindArchiving"])
    {
      v17 = _NSFoundationBundle();
      v18 = @"Archiving";
    }

    else
    {
      v24 = [v16 isEqualToString:@"NSProgressFileOperationKindUnarchiving"];
      v17 = _NSFoundationBundle();
      if (v24)
      {
        v18 = @"Unarchiving";
      }

      else
      {
        v18 = @"Processing";
      }
    }

    v25 = [v17 localizedStringForKey:v18 value:&stru_1EEEFDF90 table:@"Progress"];
    if (v33[0])
    {
      v26 = [_NSFoundationBundle() localizedStringForKey:@"%@ \\U201C%@\\U201D\\U2026" value:&stru_1EEEFDF90 table:@"Progress"];
      v32 = v33[0];
LABEL_59:
      v23 = [NSString stringWithFormat:v26, v25, v32];
      goto LABEL_60;
    }

    if (!v7)
    {
      v30 = _NSFoundationBundle();
      if (v11)
      {
        v31 = @"%@ items\\U2026";
      }

      else
      {
        v31 = @"%@ files\\U2026";
      }

      v26 = [v30 localizedStringForKey:v31 value:&stru_1EEEFDF90 table:@"Progress"];
      goto LABEL_59;
    }

    v28 = _NSFoundationBundle();
    if (v11)
    {
      v29 = @"%@ %lld items…";
    }

    else
    {
      v29 = @"%@ %lld files…";
    }

    v23 = +[NSString localizedStringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "localizedStringWithValidatedFormat:validFormatSpecifiers:error:", [v28 localizedStringForKey:v29 value:&stru_1EEEFDF90 table:@"Progress"], @"%lld %@", 0, objc_msgSend(v7, "longLongValue"), v25);
LABEL_60:
    v5 = v23;
    [(NSLock *)self->_lock unlock];
    if (v5)
    {
      return v5;
    }

    return &stru_1EEEFDF90;
  }

  v5 = v4;
  [(NSLock *)self->_lock unlock];
  return v5;
}

- (void)setLocalizedAdditionalDescription:(NSString *)localizedAdditionalDescription
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[4] = localizedAdditionalDescription;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__NSProgress_setLocalizedAdditionalDescription___block_invoke;
  v4[3] = &unk_1E69FA7B0;
  v4[4] = localizedAdditionalDescription;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__NSProgress_setLocalizedAdditionalDescription___block_invoke_2;
  v3[3] = &unk_1E69FA7D8;
  [(NSProgress *)self _setValueForKeys:v4 settingBlock:v3];
}

void *__48__NSProgress_setLocalizedAdditionalDescription___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 80))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A038;
  }
}

uint64_t __48__NSProgress_setLocalizedAdditionalDescription___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) copy];
  *(a2 + 80) = result;
  return result;
}

- (NSString)localizedAdditionalDescription
{
  [(NSLock *)self->_lock lock];
  values = self->_values;
  v4 = values->_localizedAdditionalDescription;
  if (v4)
  {
    v5 = v4;
LABEL_3:
    [(NSLock *)self->_lock unlock];
    return v5;
  }

  v7 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressByteTotalCountKey"];
  v8 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressByteCompletedCountKey"];
  if ([(NSString *)values->_kind isEqualToString:@"NSProgressKindFile"]|| (v8 ? (v9 = v7 == 0) : (v9 = 1), !v9))
  {
    locked = _lockedLocalizedTimeRemaining(values);
    v11 = _localizedAppendedTimeRemaining(locked);
    v12 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressUseItemDescriptionKey"];
    if (_NSIsNSNumber())
    {
      v13 = [v12 BOOLValue];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressLocalizedDescriptionFileSizeFormatterOptionsKey"];
    if (v14 && (v15 = v14, _NSIsNSNumber()))
    {
      v16 = [v15 unsignedLongLongValue];
    }

    else
    {
      v16 = 0x1000000;
    }

    if ([(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressThroughputKey"]&& (v17 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressThroughputKey"], _NSIsNSNumber()))
    {
      v18 = [v17 unsignedLongLongValue];
      v19 = locked;
      v20 = v11;
      v21 = v13;
      v22 = [_NSFoundationBundle() localizedStringForKey:@"%@/s" value:&stru_1EEEFDF90 table:@"Progress"];
      v23 = NSLocalizedFileSizeDescription(v18, 0, v16);
      v24 = v22;
      v13 = v21;
      v11 = v20;
      locked = v19;
      v5 = [NSString stringWithFormat:v24, v23];
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0;
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    if (v8)
    {
      total = [v7 longLongValue];
      completed = [v8 longLongValue];
LABEL_25:
      v27 = 0;
      v28 = 0;
      if (total && completed <= total)
      {
        v28 = NSLocalizedFileSizeDescription(completed, 0, v16);
        v27 = NSLocalizedFileSizeDescription(total, 0, v16);
      }

      v29 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileOperationKindKey"];
      if ([v29 isEqualToString:@"NSProgressFileOperationKindDownloading"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"NSProgressFileOperationKindUploading"))
      {
        if (!v28)
        {
          goto LABEL_43;
        }
      }

      else if (![v29 isEqualToString:@"NSProgressFileOperationKindReceiving"] || !v28)
      {
        goto LABEL_38;
      }

      if (v27 && v5)
      {
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ of %@ (%@)" value:&stru_1EEEFDF90 table:@"Progress"], v28, v27, v5);
        if (!v11)
        {
          goto LABEL_59;
        }

        v30 = [NSString stringWithFormat:@"%@%@", v5, v11];
LABEL_58:
        v5 = v30;
LABEL_59:
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_60;
      }

LABEL_38:
      if (v28 && v27)
      {
        v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ of %@" value:&stru_1EEEFDF90 table:@"Progress"], v28, v27);
        if (v31)
        {
          goto LABEL_41;
        }

        goto LABEL_49;
      }

LABEL_43:
      v32 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileCompletedCountKey"];
      v33 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileTotalCountKey"];
      if (!v32)
      {
LABEL_48:
        v31 = 0;
        goto LABEL_49;
      }

      v34 = v33;
      v35 = _NSIsNSNumber();
      v31 = 0;
      if (v35 && v34)
      {
        if (!_NSIsNSNumber())
        {
          goto LABEL_48;
        }

        v36 = [v32 longLongValue];
        v37 = [v34 longLongValue];
        if (v36 > v37)
        {
          goto LABEL_48;
        }

        v48 = v37;
        v49 = _NSFoundationBundle();
        if (v13)
        {
          v50 = @"%lld of %lld items";
        }

        else
        {
          v50 = @"%lld of %lld files";
        }

        v31 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", [v49 localizedStringForKey:v50 value:&stru_1EEEFDF90 table:@"Progress"], v48, v36);
        if (!v31)
        {
          goto LABEL_49;
        }

LABEL_41:
        if (v11)
        {
          v31 = [NSString stringWithFormat:@"%@%@", v31, v11];
        }
      }

LABEL_49:
      if (v31)
      {
        v38 = 1;
      }

      else
      {
        v38 = v5 == 0;
      }

      v39 = !v38;
      if (!locked || !v39)
      {
        if (v39)
        {
          goto LABEL_3;
        }

        v46 = v31 || locked == 0;
        v5 = v46 ? v31 : locked;
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_60;
      }

      v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ (%@)" value:&stru_1EEEFDF90 table:@"Progress"], locked, v5);
      goto LABEL_58;
    }

LABEL_24:
    completed = values->_selfFraction.completed;
    total = values->_selfFraction.total;
    goto LABEL_25;
  }

LABEL_60:
  v5 = _lockedLocalizedTimeRemaining(values);
  v40 = _localizedAppendedTimeRemaining(v5);
  v41 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressSuppressUnitCountInAdditionalDescriptionKey"];
  if (v41 && (v42 = v41, _NSIsNSNumber()) && ([v42 BOOLValue] & 1) != 0 || values->_selfFraction.total < 1 || values->_selfFraction.completed < 0)
  {
    if (!v40)
    {
      [(NSLock *)self->_lock unlock];
      goto LABEL_85;
    }
  }

  else
  {
    v43 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressLocalizedDescriptionUnitCountFormatterKey"];
    if (v43 && (v44 = v43, (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = [v44 stringFromNumber:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", values->_selfFraction.completed)}];
    }

    else
    {
      if (qword_1ED43F130 != -1)
      {
        dispatch_once(&qword_1ED43F130, &__block_literal_global_842);
      }

      v45 = [qword_1ED43F138 stringFromNumber:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", values->_selfFraction.completed)}];
      v44 = qword_1ED43F138;
    }

    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ of %@" value:&stru_1EEEFDF90 table:@"Progress"], v45, objc_msgSend(v44, "stringFromNumber:", +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", values->_selfFraction.total)));
    if (v40)
    {
      v5 = [NSString stringWithFormat:@"%@%@", v5, v40];
    }
  }

  [(NSLock *)self->_lock unlock];
  if (v5)
  {
    return v5;
  }

LABEL_85:
  v47 = &stru_1EEEFDF90;

  return v47;
}

- (void)setCancellable:(BOOL)cancellable
{
  v3 = cancellable;
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__NSProgress_setCancellable___block_invoke;
  v7[3] = &__block_descriptor_33_e35___NSArray_16__0__NSProgressValues_8l;
  v8 = cancellable;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__NSProgress_setCancellable___block_invoke_2;
  v5[3] = &__block_descriptor_33_e26_v16__0__NSProgressValues_8l;
  v6 = cancellable;
  [(NSProgress *)self _setValueForKeys:v7 settingBlock:v5];
  [objc_loadWeak(&self->_parent) _setCancellable:v3 fromChild:1];
}

void *__29__NSProgress_setCancellable___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A050;
  }
}

- (void)_setCancellable:(BOOL)a3 fromChild:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(NSLock *)self->_lock lock];
  if (!v4 || (self->_flags & 2) != 0)
  {
    [(NSLock *)self->_lock unlock];
    Weak = objc_loadWeak(&self->_parent);

    [Weak _setCancellable:v5 fromChild:1];
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setPausable:(BOOL)pausable
{
  v3 = pausable;
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__NSProgress_setPausable___block_invoke;
  v7[3] = &__block_descriptor_33_e35___NSArray_16__0__NSProgressValues_8l;
  v8 = pausable;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__NSProgress_setPausable___block_invoke_2;
  v5[3] = &__block_descriptor_33_e26_v16__0__NSProgressValues_8l;
  v6 = pausable;
  [(NSProgress *)self _setValueForKeys:v7 settingBlock:v5];
  [objc_loadWeak(&self->_parent) _setPausable:v3 fromChild:1];
}

void *__26__NSProgress_setPausable___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 105) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A068;
  }
}

- (void)_setPausable:(BOOL)a3 fromChild:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(NSLock *)self->_lock lock];
  if (!v4 || (self->_flags & 2) != 0)
  {
    [(NSLock *)self->_lock unlock];
    Weak = objc_loadWeak(&self->_parent);

    [Weak _setPausable:v5 fromChild:1];
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setCancellationHandler:(void *)cancellationHandler
{
  [(NSLock *)self->_lock lock];
  v5 = self->_cancellationHandler;
  if (v5 != cancellationHandler)
  {

    cancellationHandler = [cancellationHandler copy];
    self->_cancellationHandler = cancellationHandler;
  }

  if (self->_values->_isCancelled && cancellationHandler != 0)
  {
    v7 = qos_class_self();
    global_queue = dispatch_get_global_queue(v7, 0);
    dispatch_async(global_queue, self->_cancellationHandler);
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)cancellationHandler
{
  [(NSLock *)self->_lock lock];
  v3 = self->_cancellationHandler;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setPausingHandler:(void *)pausingHandler
{
  [(NSLock *)self->_lock lock];
  v5 = self->_pausingHandler;
  if (v5 != pausingHandler)
  {

    pausingHandler = [pausingHandler copy];
    self->_pausingHandler = pausingHandler;
  }

  if (self->_values->_isPaused && pausingHandler != 0)
  {
    v7 = qos_class_self();
    global_queue = dispatch_get_global_queue(v7, 0);
    dispatch_async(global_queue, self->_pausingHandler);
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)pausingHandler
{
  [(NSLock *)self->_lock lock];
  v3 = self->_pausingHandler;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setResumingHandler:(void *)resumingHandler
{
  [(NSLock *)self->_lock lock];
  v5 = self->_resumingHandler;
  if (v5 != resumingHandler)
  {

    self->_resumingHandler = [resumingHandler copy];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)resumingHandler
{
  [(NSLock *)self->_lock lock];
  v3 = self->_resumingHandler;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)_setUserInfoValue:(id)a3 forKey:(id)a4 fromChild:(BOOL)a5
{
  v5 = a5;
  [(NSLock *)self->_lock lock];
  if (v5 && (self->_flags & 2) == 0)
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
    return;
  }

  v13 = self->_userInfoProxy;
  [(NSLock *)self->_lock unlock];
  v10 = a4;
  if ([a4 hasSuffix:@".data"])
  {
    v10 = [a4 substringToIndex:{objc_msgSend(a4, "length") - 5}];
  }

  [(NSOwnedDictionaryProxy *)v13 willChangeValueForKey:v10];
  [(NSLock *)self->_lock lock];
  values = self->_values;
  userInfo = values->_userInfo;
  if (!userInfo)
  {
    userInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
    values->_userInfo = userInfo;
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_12:
    [(NSMutableDictionary *)userInfo removeObjectForKey:a4];
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_10:
  [(NSMutableDictionary *)userInfo setObject:a3 forKey:a4];
LABEL_13:
  [(NSProgress *)self _notifyRemoteObserversOfUserInfoValueForKey:a4];
  [(NSLock *)self->_lock unlock];
  [-[NSProgress _parent](self "_parent")];
  [(NSOwnedDictionaryProxy *)v13 didChangeValueForKey:v10];
}

- (id)_indentedDescription:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = +[(NSString *)NSMutableString];
  if (a3)
  {
    v6 = a3;
    do
    {
      [(NSString *)v5 appendString:@"  "];
      --v6;
    }

    while (v6);
  }

  values = self->_values;
  v8 = +[(NSString *)NSMutableString];
  v21.receiver = self;
  v21.super_class = NSProgress;
  v9 = [(NSProgress *)&v21 description];
  v10 = [(NSProgress *)self _parent];
  portionOfParent = values->_portionOfParent;
  [(NSProgressValues *)values fractionCompleted];
  v13 = "";
  if (values->_isCancelled)
  {
    v14 = "CANCELLED";
  }

  else
  {
    v14 = "";
  }

  if (values->_isPaused)
  {
    v13 = "PAUSED";
  }

  [(NSString *)v8 appendFormat:@"%@%@ : Parent: %p (portion: %lld) / Fraction completed: %0.4f / Completed: %lld of %lld %s %s", v5, v9, v10, portionOfParent, v12, values->_selfFraction.completed, values->_selfFraction.total, v14, v13];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  children = self->_children;
  v16 = [(NSMutableSet *)children countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(children);
        }

        -[NSString appendFormat:](v8, "appendFormat:", @"\n%@", [*(*(&v23 + 1) + 8 * i) _indentedDescription:a3 + 1]);
      }

      v17 = [(NSMutableSet *)children countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v17);
  }

  return v8;
}

void __20__NSProgress_cancel__block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);
}

- (void)pause
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSProgress *)self _setValueForKeys:&__block_literal_global_398 settingBlock:&__block_literal_global_403_0];
  [(NSLock *)self->_lock lock];
  if (self->_pausingHandler)
  {
    v3 = qos_class_self();
    global_queue = dispatch_get_global_queue(v3, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __19__NSProgress_pause__block_invoke_3;
    block[3] = &unk_1E69F2C00;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = self->_children;
  v6 = [(NSMutableSet *)children countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v12 + 1) + 8 * i) pause];
      }

      v7 = [(NSMutableSet *)children countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_lock unlock];
}

void *__19__NSProgress_pause__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 107))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A098;
  }
}

- (void)resume
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSProgress *)self _setValueForKeys:&__block_literal_global_405 settingBlock:&__block_literal_global_410];
  [(NSLock *)self->_lock lock];
  if (self->_resumingHandler)
  {
    v3 = qos_class_self();
    global_queue = dispatch_get_global_queue(v3, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __20__NSProgress_resume__block_invoke_3;
    block[3] = &unk_1E69F2C00;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = self->_children;
  v6 = [(NSMutableSet *)children countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v12 + 1) + 8 * i) resume];
      }

      v7 = [(NSMutableSet *)children countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_lock unlock];
}

void *__20__NSProgress_resume__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 107))
  {
    return &unk_1EEF5A0B0;
  }

  else
  {
    return 0;
  }
}

void *__42__NSProgress_ownedDictionaryKeyEnumerator__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if ([a2 hasSuffix:@".data"])
  {
    v4 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 5}];
    result = *(*(*(a1 + 40) + 8) + 40);
    if (!result)
    {
      *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(*(a1 + 32) subarrayWithRange:{0, a3), "mutableCopy"}];
      result = *(*(*(a1 + 40) + 8) + 40);
    }
  }

  else
  {
    result = *(*(*(a1 + 40) + 8) + 40);
    if (!result)
    {
      return result;
    }
  }

  return [result addObject:v4];
}

- (id)ownedDictionaryObjectForKey:(id)a3
{
  [(NSLock *)self->_lock lock];
  values = self->_values;
  v6 = [(NSMutableDictionary *)values->_userInfo objectForKey:a3];
  if (!v6)
  {
    if ([a3 isEqualToString:@"NSProgressPhysicalFileURLKey"])
    {
      v7 = [(NSMutableDictionary *)values->_userInfo objectForKey:@"NSProgressFileURLKey"];
LABEL_7:
      v6 = v7;
      goto LABEL_9;
    }

    v8 = -[NSMutableDictionary objectForKey:](values->_userInfo, "objectForKey:", [a3 stringByAppendingString:@".data"]);
    if (v8)
    {
      v9 = v8;
      if (_NSIsNSData())
      {
        v7 = [objc_alloc(objc_lookUpClass("NSImage")) performSelector:sel_initWithData_ withObject:v9];
        goto LABEL_7;
      }
    }

    v6 = 0;
  }

LABEL_9:
  [(NSLock *)self->_lock unlock];

  return v6;
}

- (NSNumber)estimatedTimeRemaining
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressEstimatedTimeRemainingKey"];
}

- (NSNumber)throughput
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressThroughputKey"];
}

- (NSProgressFileOperationKind)fileOperationKind
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressFileOperationKindKey"];
}

- (NSURL)fileURL
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressFileURLKey"];
}

- (NSNumber)fileTotalCount
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressFileTotalCountKey"];
}

- (NSNumber)fileCompletedCount
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressFileCompletedCountKey"];
}

- (id)byteTotalCount
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressByteTotalCountKey"];
}

- (id)byteCompletedCount
{
  v2 = [(NSProgress *)self userInfo];

  return [(NSDictionary *)v2 objectForKey:@"NSProgressByteCompletedCountKey"];
}

- (void)setKind:(NSProgressKind)kind
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[4] = kind;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__NSProgress_setKind___block_invoke;
  v4[3] = &unk_1E69FA7B0;
  v4[4] = kind;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__NSProgress_setKind___block_invoke_2;
  v3[3] = &unk_1E69FA7D8;
  [(NSProgress *)self _setValueForKeys:v4 settingBlock:v3];
}

void *__22__NSProgress_setKind___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 88))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A0C8;
  }
}

uint64_t __22__NSProgress_setKind___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) copy];
  *(a2 + 88) = result;
  return result;
}

- (void)unpublish
{
  v9 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (qword_1ED43F0A8 != -1)
  {
    dispatch_once(&qword_1ED43F0A8, &__block_literal_global_91);
  }

  if (os_log_type_enabled(_MergedGlobals_25_0, OS_LOG_TYPE_DEBUG))
  {
    v3 = _MergedGlobals_25_0;
    if (os_log_type_enabled(_MergedGlobals_25_0, OS_LOG_TYPE_DEBUG))
    {
      publisherID = self->_publisherID;
      v5 = 134218242;
      v6 = self;
      v7 = 2114;
      v8 = publisherID;
      _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "<NSProgress %p> Unpublishing %{public}@", &v5, 0x16u);
    }
  }

  [(NSProgress *)self _notifyRemoteObserversOfValueForKeys:&unk_1EEF5A0E0];
  [objc_msgSend(+[NSProgress _serverConnection](NSProgress "_serverConnection")];
  [(NSLock *)self->_lock unlock];
}

- (void)setAcknowledgementHandler:(id)a3 forAppBundleIdentifier:(id)a4
{
  [(NSLock *)self->_lock lock];
  if (!self->_acknowledgementHandlersByLowercaseBundleID)
  {
    self->_acknowledgementHandlersByLowercaseBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [a3 copy];
  -[NSMutableDictionary setObject:forKey:](self->_acknowledgementHandlersByLowercaseBundleID, "setObject:forKey:", v7, [a4 lowercaseString]);

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)acknowledgementHandlerForAppBundleIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  v5 = -[NSMutableDictionary objectForKey:](self->_acknowledgementHandlersByLowercaseBundleID, "objectForKey:", [a3 lowercaseString]);
  [(NSLock *)self->_lock unlock];

  return v5;
}

- (void)appWithBundleID:(id)a3 didAcknowledgeWithSuccess:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v7 = [a3 lowercaseString];
  v8 = [(NSMutableDictionary *)self->_acknowledgementHandlersByLowercaseBundleID objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    v10 = qos_class_self();
    global_queue = dispatch_get_global_queue(v10, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NSProgress_appWithBundleID_didAcknowledgeWithSuccess___block_invoke;
    block[3] = &unk_1E69F9080;
    block[4] = v9;
    v13 = a4;
    dispatch_async(global_queue, block);
    [(NSMutableDictionary *)self->_acknowledgementHandlersByLowercaseBundleID removeObjectForKey:v7];
  }

  [(NSLock *)self->_lock unlock];
}

+ (id)addSubscriberForFileURL:(NSURL *)url withPublishingHandler:(NSProgressPublishingHandler)publishingHandler
{
  v5 = [[_NSProgressSubscriber alloc] initWithPublishingHandler:publishingHandler];
  [(_NSProgressSubscriber *)v5 startForFileURL:url];

  return v5;
}

+ (id)_addSubscriberForCategory:(id)a3 usingPublishingHandler:(id)a4
{
  v5 = [[_NSProgressSubscriber alloc] initWithPublishingHandler:a4];
  [(_NSProgressSubscriber *)v5 startForCategory:a3];

  return v5;
}

- (void)setPrioritizable:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__NSProgress_setPrioritizable___block_invoke;
  v5[3] = &__block_descriptor_33_e35___NSArray_16__0__NSProgressValues_8l;
  v6 = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__NSProgress_setPrioritizable___block_invoke_2;
  v3[3] = &__block_descriptor_33_e26_v16__0__NSProgressValues_8l;
  v4 = a3;
  [(NSProgress *)self _setValueForKeys:v5 settingBlock:v3];
}

void *__31__NSProgress_setPrioritizable___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 109) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return &unk_1EEF5A0F8;
  }
}

- (BOOL)isPrioritizable
{
  [(NSLock *)self->_lock lock];
  isPrioritizable = self->_values->_isPrioritizable;
  [(NSLock *)self->_lock unlock];
  return isPrioritizable;
}

- (void)setPrioritizationHandler:(id)a3
{
  [(NSLock *)self->_lock lock];
  prioritizationHandler = self->_prioritizationHandler;
  if (prioritizationHandler != a3)
  {

    self->_prioritizationHandler = [a3 copy];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)prioritizationHandler
{
  [(NSLock *)self->_lock lock];
  v3 = self->_prioritizationHandler;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)prioritize
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (self->_prioritizationHandler)
  {
    v3 = qos_class_self();
    global_queue = dispatch_get_global_queue(v3, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__NSProgress_prioritize__block_invoke;
    block[3] = &unk_1E69F2C00;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = self->_children;
  v6 = [(NSMutableSet *)children countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v12 + 1) + 8 * i) prioritize];
      }

      v7 = [(NSMutableSet *)children countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_lock unlock];
}

- (id)_initWithValues:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSProgress;
  v4 = [(NSProgress *)&v8 init];
  if (v4)
  {
    v5 = [a3 copy];
    v4->_values = v5;
    [(NSProgressValues *)v5 fractionCompleted];
    v4->_values->_remoteFractionCompleted = v6;
  }

  return v4;
}

- (void)_setRemoteValues:(id)a3 forKeys:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  if ([a4 count] == v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__NSProgress__setRemoteValues_forKeys___block_invoke;
    v10[3] = &unk_1E69FA8A8;
    v10[5] = a4;
    v10[6] = v7;
    v10[4] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__NSProgress__setRemoteValues_forKeys___block_invoke_2;
    v9[3] = &unk_1E69FA8D0;
    v9[4] = a3;
    v9[5] = a4;
    v9[6] = self;
    v9[7] = v7;
    [(NSProgress *)self _setValueForKeys:v10 settingBlock:v9];
  }

  else
  {
    if (qword_1ED43F0A8 != -1)
    {
      dispatch_once(&qword_1ED43F0A8, &__block_literal_global_91);
    }

    v8 = _MergedGlobals_25_0;
    if (os_log_type_enabled(_MergedGlobals_25_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "mismatched count of values and keys from remote progress KVO update", buf, 2u);
    }
  }
}

uint64_t __39__NSProgress__setRemoteValues_forKeys___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 48))
  {
    v5 = 0;
    do
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:v5];
      if (!-[__CFString isEqualToString:](v7, "isEqualToString:", @"fractionCompleted") || (v8 = *(a2 + 64), [v6 doubleValue], v8 == v9))
      {
        v10 = v4;
        v11 = v7;
      }

      else
      {
        v10 = v4;
        v11 = @"fractionCompleted";
      }

      [v10 addObject:v11];
      ++v5;
    }

    while (v5 < *(a1 + 48));
  }

  return v4;
}

uint64_t __39__NSProgress__setRemoteValues_forKeys___block_invoke_2(uint64_t result, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(result + 56))
  {
    v3 = result;
    for (i = 0; i < *(v3 + 56); ++i)
    {
      v5 = [*(v3 + 32) objectAtIndexedSubscript:i];
      v6 = [*(v3 + 40) objectAtIndexedSubscript:i];
      if ([v6 isEqualToString:@"fractionCompleted"])
      {
        result = [v5 doubleValue];
        a2[8] = v7;
      }

      else
      {
        if ([v6 isEqualToString:@"completedUnitCount"])
        {
          [a2 overallFraction];
          v18 = v16;
          *v19 = v17;
          a2[2] = [v5 longLongValue];
          [a2 overallFraction];
          *&v19[24] = v15;
          v8 = v14[3];
        }

        else
        {
          if (![v6 isEqualToString:@"totalUnitCount"])
          {
            result = [a2 setValue:v5 forKey:v6];
            continue;
          }

          [a2 overallFraction];
          v18 = v12;
          *v19 = v13;
          a2[3] = [v5 longLongValue];
          [a2 overallFraction];
          *&v19[24] = v11;
          v8 = v10;
        }

        *&v19[8] = v8;
        v9 = *(v3 + 48);
        v14[0] = v18;
        v14[1] = *v19;
        v14[2] = *&v19[16];
        result = [v9 _updateFractionCompleted:v14];
      }
    }
  }

  return result;
}

- (void)_receiveProgressMessage:(void *)result forSequence:(xpc_object_t)xdict
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (xpc_dictionary_get_BOOL(xdict, "isUserInfo"))
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "userInfoKey");
    if ((uint64 & 0xFFFFFFFFFFFFFFFBLL) - 1 > 1)
    {
      if ((uint64 - 3) > 1)
      {
        if (uint64 == 8)
        {
          uint64 = [v3 setPausable:{xpc_dictionary_get_BOOL(xdict, "isPausable")}];
        }

        else if (uint64 == 7)
        {
          uint64 = [v3 setCancellable:{xpc_dictionary_get_BOOL(xdict, "isCancellable")}];
        }

        v10 = 0;
        goto LABEL_30;
      }

      v8 = @"_NSProgressRemoteLocalizedAdditionalDescriptionKey";
      if (uint64 != 4)
      {
        v8 = 0;
      }

      if (uint64 == 3)
      {
        v5 = @"_NSProgressRemoteLocalizedDescriptionKey";
      }

      else
      {
        v5 = v8;
      }

      string = xpc_dictionary_get_string(xdict, "userInfoVal");
      uint64 = xpc_dictionary_get_BOOL(xdict, "userInfoValNil");
      v10 = 0;
      if (!string || (uint64 & 1) != 0)
      {
LABEL_26:
        if (v5)
        {
          v11 = v10;
          uint64 = [v3 setUserInfoObject:v10 forKey:v5];
          v10 = v11;
        }

LABEL_30:

        return MEMORY[0x1EEE66BB8](uint64, v10);
      }

      uint64 = [[NSString alloc] initWithUTF8String:string];
    }

    else
    {
      if ((uint64 - 1) > 5)
      {
        v5 = 0;
      }

      else
      {
        v5 = off_1E69FA8F0[uint64 - 1];
      }

      uint64 = xpc_dictionary_get_BOOL(xdict, "userInfoValNil");
      if (uint64)
      {
        v10 = 0;
        goto LABEL_26;
      }

      uint64 = [[NSNumber alloc] initWithUnsignedInteger:xpc_dictionary_get_uint64(xdict, "userInfoVal")];
    }

    v10 = uint64;
    goto LABEL_26;
  }

  v6 = xpc_dictionary_get_uint64(xdict, "totalCount");
  v7 = xpc_dictionary_get_uint64(xdict, "completedCount");

  return [v3 _setCompletedUnitCount:v7 totalUnitCount:v6];
}

@end