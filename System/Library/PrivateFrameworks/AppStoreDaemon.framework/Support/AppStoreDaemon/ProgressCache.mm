@interface ProgressCache
- (LibraryCatalogObserver)observer;
- (ProgressCache)init;
- (void)executeQuery:(id)query excludingBundleIDs:(id)ds completionHandler:(id)handler;
@end

@implementation ProgressCache

- (ProgressCache)init
{
  v3 = sub_100003984();
  v4 = v3;
  if (self && (v19.receiver = self, v19.super_class = ProgressCache, (v5 = [(ProgressCache *)&v19 init]) != 0))
  {
    v6 = v5;
    objc_storeStrong(&v5->_notificationCenter, v3);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.ProgressCache", v7);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v8;

    v10 = objc_opt_new();
    placeholders = v6->_placeholders;
    v6->_placeholders = v10;

    v12 = objc_opt_new();
    progressStore = v6->_progressStore;
    v6->_progressStore = v12;

    v14 = v6->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100364BC0;
    block[3] = &unk_10051AF98;
    v15 = v6;
    v18 = v15;
    dispatch_async(v14, block);
  }

  else
  {

    return 0;
  }

  return v15;
}

- (void)executeQuery:(id)query excludingBundleIDs:(id)ds completionHandler:(id)handler
{
  queryCopy = query;
  dsCopy = ds;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100367AE8;
  v15[3] = &unk_10051C7A8;
  v15[4] = self;
  v16 = queryCopy;
  v17 = dsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dsCopy;
  v14 = queryCopy;
  dispatch_async(dispatchQueue, v15);
}

- (LibraryCatalogObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end