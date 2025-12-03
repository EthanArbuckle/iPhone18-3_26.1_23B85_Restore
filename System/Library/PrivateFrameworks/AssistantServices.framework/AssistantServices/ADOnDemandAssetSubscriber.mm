@interface ADOnDemandAssetSubscriber
- (ADOnDemandAssetSubscriber)initWithPreferences:(id)preferences invalidationHandler:(id)handler;
- (void)_invalidate;
- (void)_setupIfNecessary;
- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client;
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

- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  infoCopy = info;
  clientCopy = client;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008DB04;
  block[3] = &unk_10050FCE8;
  objc_copyWeak(v17, &location);
  v17[1] = origin;
  v15 = clientCopy;
  v16 = infoCopy;
  v12 = infoCopy;
  v13 = clientCopy;
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

- (ADOnDemandAssetSubscriber)initWithPreferences:(id)preferences invalidationHandler:(id)handler
{
  preferencesCopy = preferences;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = ADOnDemandAssetSubscriber;
  v9 = [(ADOnDemandAssetSubscriber *)&v16 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ADOnDemandAssetSubscriber", v10);

    queue = v9->_queue;
    v9->_queue = v11;

    v13 = objc_retainBlock(handlerCopy);
    invalidationHandler = v9->_invalidationHandler;
    v9->_invalidationHandler = v13;

    objc_storeStrong(&v9->_preferences, preferences);
    [(ADOnDemandAssetSubscriber *)v9 _setupIfNecessary];
  }

  return v9;
}

@end