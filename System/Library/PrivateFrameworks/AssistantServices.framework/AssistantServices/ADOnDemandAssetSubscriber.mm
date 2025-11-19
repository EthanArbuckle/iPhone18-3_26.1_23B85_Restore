@interface ADOnDemandAssetSubscriber
- (ADOnDemandAssetSubscriber)initWithPreferences:(id)a3 invalidationHandler:(id)a4;
- (void)_invalidate;
- (void)_setupIfNecessary;
- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
@end

@implementation ADOnDemandAssetSubscriber

- (void)_invalidate
{
  v3 = +[ADRequestLifecycleObserver sharedObserver];
  [v3 removeListener:self];

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v9 = a4;
  v10 = a6;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008DB04;
  block[3] = &unk_10050FCE8;
  objc_copyWeak(v17, &location);
  v17[1] = a5;
  v15 = v10;
  v16 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_async(queue, block);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)_setupIfNecessary
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008DD0C;
  v4[3] = &unk_10051B5F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (ADOnDemandAssetSubscriber)initWithPreferences:(id)a3 invalidationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ADOnDemandAssetSubscriber;
  v9 = [(ADOnDemandAssetSubscriber *)&v16 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ADOnDemandAssetSubscriber", v10);

    queue = v9->_queue;
    v9->_queue = v11;

    v13 = objc_retainBlock(v8);
    invalidationHandler = v9->_invalidationHandler;
    v9->_invalidationHandler = v13;

    objc_storeStrong(&v9->_preferences, a3);
    [(ADOnDemandAssetSubscriber *)v9 _setupIfNecessary];
  }

  return v9;
}

@end