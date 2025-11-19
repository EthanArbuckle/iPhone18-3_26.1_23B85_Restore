@interface APSTTLCollection
+ (id)suppressedTTRTopics;
- (APSTTLCollection)initWithQueue:(id)a3 ttlInSeconds:(double)a4;
- (APSTTLCollectionDelegate)delegate;
- (void)_performEvictionSweep;
- (void)_startEvictionTimerIfNeeded;
- (void)_stopEvictionTimer;
- (void)_stopEvictionTimerIfEmpty;
- (void)addItem:(id)a3;
- (void)dealloc;
- (void)removeItem:(id)a3 withFlag:(unsigned int)a4;
@end

@implementation APSTTLCollection

+ (id)suppressedTTRTopics
{
  if (qword_1001BF6E8 != -1)
  {
    sub_100108CFC();
  }

  v3 = qword_1001BF6E0;

  return v3;
}

- (APSTTLCollection)initWithQueue:(id)a3 ttlInSeconds:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = APSTTLCollection;
  v8 = [(APSTTLCollection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v10 = objc_alloc_init(NSMutableDictionary);
    backingStore = v9->_backingStore;
    v9->_backingStore = v10;

    v9->_ttlInSeconds = a4;
  }

  return v9;
}

- (void)addItem:(id)a3
{
  if (a3)
  {
    [APSTTLCollection addItem:"addItem:withInitialState:" withInitialState:?];
  }
}

- (void)removeItem:(id)a3 withFlag:(unsigned int)a4
{
  v6 = a3;
  if (v6)
  {
    v10 = v6;
    v7 = [(NSMutableDictionary *)self->_backingStore objectForKey:v6];
    LODWORD(v8) = [v7 itemState];

    if ((v8 & a4) != 0)
    {
      v8 = v8 ^ a4;
      v9 = [(NSMutableDictionary *)self->_backingStore objectForKey:v10];
      [v9 setItemState:v8];
    }

    if (!v8)
    {
      [(NSMutableDictionary *)self->_backingStore removeObjectForKey:v10];
      [(APSTTLCollection *)self _stopEvictionTimerIfEmpty];
    }
  }

  _objc_release_x1();
}

- (void)dealloc
{
  [(APSTTLCollection *)self _stopEvictionTimer];
  v3.receiver = self;
  v3.super_class = APSTTLCollection;
  [(APSTTLCollection *)&v3 dealloc];
}

- (void)_startEvictionTimerIfNeeded
{
  if ([(NSMutableDictionary *)self->_backingStore count])
  {
    if (!self->_evictionTimer)
    {
      ttlInSeconds = self->_ttlInSeconds;
      v4 = ttlInSeconds * 1.2;
      v5 = ttlInSeconds * 0.1;
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      evictionTimer = self->_evictionTimer;
      self->_evictionTimer = v6;

      dispatch_source_set_timer(self->_evictionTimer, 0, (v4 * 1000000000.0), (v5 * 1000000000.0));
      v8 = [CUTWeakReference weakRefWithObject:self];
      v9 = self->_evictionTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100033ECC;
      handler[3] = &unk_100186D90;
      v12 = v8;
      v10 = v8;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(self->_evictionTimer);
    }
  }
}

- (void)_stopEvictionTimer
{
  evictionTimer = self->_evictionTimer;
  if (evictionTimer)
  {
    dispatch_source_cancel(evictionTimer);
    v4 = self->_evictionTimer;
    self->_evictionTimer = 0;
  }
}

- (void)_stopEvictionTimerIfEmpty
{
  if (![(NSMutableDictionary *)self->_backingStore count])
  {

    [(APSTTLCollection *)self _stopEvictionTimer];
  }
}

- (void)_performEvictionSweep
{
  v3 = +[NSDate date];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  backingStore = self->_backingStore;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100034298;
  v23 = &unk_100186DB8;
  v8 = v3;
  v24 = v8;
  v9 = v6;
  v25 = v9;
  v10 = v4;
  v26 = v10;
  v11 = v5;
  v27 = v11;
  [(NSMutableDictionary *)backingStore enumerateKeysAndObjectsUsingBlock:&v20];
  if ([v10 count])
  {
    v12 = +[APSLog ttlCollection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = self;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Timed out waiting for tracing enabled acks. Invoking TTR. {ttlCollection:%@; Guids:%@; States:%@}", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_backingStore removeObjectsForKeys:v10];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 ttlCollection:self itemsDidExpire:v10];
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 ttlCollection:self itemsDidExpire:v10 withStates:v11];
    }
  }

  if ([v9 count])
  {
    v19 = +[APSLog ttlCollection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = self;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Timed out waiting for tracing enabled. {ttlCollection:%@; suppressedTopicItems:%@}", buf, 0x16u);
    }

    [(NSMutableDictionary *)self->_backingStore removeObjectsForKeys:v9];
  }

  [(APSTTLCollection *)self _stopEvictionTimerIfEmpty];
  [(APSTTLCollection *)self _startEvictionTimerIfNeeded];
}

- (APSTTLCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end