@interface _NSProgressSubscriber
- (_NSProgressSubscriber)initWithPublishingHandler:(id)handler;
- (void)addPublisher:(id)publisher forID:(id)d withValues:(id)values isOld:(BOOL)old;
- (void)dealloc;
- (void)observePublisherForID:(id)d values:(id)values forKeys:(id)keys;
- (void)observePublisherUserInfoForID:(id)d value:(id)value forKey:(id)key;
- (void)removePublisherForID:(id)d;
- (void)startForCategory:(id)category;
- (void)startForFileURL:(id)l;
- (void)stop;
@end

@implementation _NSProgressSubscriber

- (_NSProgressSubscriber)initWithPublishingHandler:(id)handler
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSProgressSubscriber;
  v4 = [(_NSProgressSubscriber *)&v6 init];
  if (v4)
  {
    v4->_publishingHandler = [handler copy];
    v4->_subscriberID = [+[NSUUID UUID](NSUUID UUIDString];
    v4->_proxiesByPublisherID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_lock = objc_opt_new();
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSProgress: you invoked +[NSProgress addSubscriber...] but then didn't pass the result to +[NSProgress removeSubscriber:] before it was released. Not allowed." userInfo:0]);
  }

  v3.receiver = self;
  v3.super_class = _NSProgressSubscriber;
  [(_NSProgressSubscriber *)&v3 dealloc];
}

- (void)startForCategory:(id)category
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (!self->_started)
  {
    self->_started = 1;
    bundleIdentifier = [+[NSBundle mainBundle](NSBundle bundleIdentifier];
    v6 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = _NSProgressIPCDebugLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        subscriberID = self->_subscriberID;
        v10 = 134218498;
        selfCopy = self;
        v12 = 2114;
        v13 = subscriberID;
        v14 = 2114;
        categoryCopy = category;
        _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriber %p> Start for ID %{public}@ category %{public}@", &v10, 0x20u);
      }
    }

    [objc_msgSend(+[NSProgress _serverConnection](NSProgress _serverConnection];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)startForFileURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (!self->_started)
  {
    self->_started = 1;
    bundleIdentifier = [+[NSBundle mainBundle](NSBundle bundleIdentifier];
    v6 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = _NSProgressIPCDebugLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        subscriberID = self->_subscriberID;
        v10 = 134218499;
        selfCopy = self;
        v12 = 2114;
        v13 = subscriberID;
        v14 = 2113;
        lCopy = l;
        _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriber %p> Start for ID %{public}@ URL %{private}@", &v10, 0x20u);
      }
    }

    [objc_msgSend(+[NSProgress _serverConnection](NSProgress _serverConnection];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)stop
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      subscriberID = self->_subscriberID;
      v6 = 134218242;
      selfCopy = self;
      v8 = 2114;
      v9 = subscriberID;
      _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriber %p> Stop for ID %{public}@", &v6, 0x16u);
    }
  }

  [(NSLock *)self->_lock lock];
  [(NSMutableDictionary *)self->_proxiesByPublisherID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_21_0];
  [(NSMutableDictionary *)self->_proxiesByPublisherID removeAllObjects];
  [objc_msgSend(+[NSProgress _serverConnection](NSProgress "_serverConnection")];
  self->_started = 0;
  [(NSLock *)self->_lock unlock];
}

- (void)addPublisher:(id)publisher forID:(id)d withValues:(id)values isOld:(BOOL)old
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = [[_NSProgressProxy alloc] _initWithForwarder:publisher values:values isOld:old];
  [(NSLock *)self->_lock lock];
  started = self->_started;
  if (started)
  {
    [(NSMutableDictionary *)self->_proxiesByPublisherID setObject:v9 forKey:d];
  }

  [(NSLock *)self->_lock unlock];
  v11 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = _NSProgressIPCDebugLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (started)
    {
      if (v13)
      {
        *buf = 134218498;
        selfCopy2 = self;
        v17 = 2048;
        publisherCopy2 = publisher;
        v19 = 2114;
        dCopy2 = d;
        _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriber %p> Add publisher %p forID: %{public}@", buf, 0x20u);
      }

      goto LABEL_8;
    }

    if (v13)
    {
      *buf = 134218498;
      selfCopy2 = self;
      v17 = 2048;
      publisherCopy2 = publisher;
      v19 = 2114;
      dCopy2 = d;
      _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriber %p> Ignoring add publisher %p forID: %{public}@, because subscriber is stopped", buf, 0x20u);
    }
  }

  else if (started)
  {
LABEL_8:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___NSProgressSubscriber_addPublisher_forID_withValues_isOld___block_invoke;
    v14[3] = &unk_1E69FA948;
    v14[4] = self;
    v14[5] = d;
    [v9 _invokePublishingHandler:v14];
  }
}

- (void)observePublisherUserInfoForID:(id)d value:(id)value forKey:(id)key
{
  [(NSLock *)self->_lock lock];
  v9 = [(NSMutableDictionary *)self->_proxiesByPublisherID objectForKey:d];
  [(NSLock *)self->_lock unlock];
  [v9 _setRemoteUserInfoValue:value forKey:key];
}

- (void)observePublisherForID:(id)d values:(id)values forKeys:(id)keys
{
  [(NSLock *)self->_lock lock];
  v9 = [(NSMutableDictionary *)self->_proxiesByPublisherID objectForKey:d];
  [(NSLock *)self->_lock unlock];
  [v9 _setRemoteValues:values forKeys:keys];
}

- (void)removePublisherForID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_proxiesByPublisherID objectForKey:d];
  v6 = _NSProgressIPCDebugLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = _NSProgressIPCDebugLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218242;
      selfCopy = self;
      v10 = 2114;
      dCopy = d;
      _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "<NSProgressSubscriber %p> Remove publisher forID: %{public}@", &v8, 0x16u);
    }
  }

  [v5 _invokeUnpublishingHandler];
  [(NSMutableDictionary *)self->_proxiesByPublisherID removeObjectForKey:d];
  [(NSLock *)self->_lock unlock];
}

@end