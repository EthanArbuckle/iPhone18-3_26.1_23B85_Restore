@interface PaymentPolygonCache
- (BOOL)cachedPolygonForLocation:(id)a3 withCompletion:(id)a4;
- (PaymentPolygonCache)init;
- (void)cachePolygon:(id)a3 forLocation:(id)a4;
@end

@implementation PaymentPolygonCache

- (PaymentPolygonCache)init
{
  v7.receiver = self;
  v7.super_class = PaymentPolygonCache;
  v2 = [(PaymentPolygonCache *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("PaymentPolygonCacheQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)cachePolygon:(id)a3 forLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100BC7B1C;
  v11[3] = &unk_101661480;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)cachedPolygonForLocation:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BC8108;
    block[3] = &unk_10165DEA0;
    objc_copyWeak(&v15, location);
    v14 = v7;
    v13 = v6;
    dispatch_async(queue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = sub_10003D020();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/PaymentPolygonCache.m";
      v17 = 1024;
      v18 = 82;
      v19 = 2082;
      v20 = "[PaymentPolygonCache cachedPolygonForLocation:withCompletion:]";
      v21 = 2082;
      v22 = "nil == location";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Location cannot be nil", location, 0x26u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/PaymentPolygonCache.m";
      v17 = 1024;
      v18 = 82;
      v19 = 2082;
      v20 = "[PaymentPolygonCache cachedPolygonForLocation:withCompletion:]";
      v21 = 2082;
      v22 = "nil == location";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Location cannot be nil", location, 0x26u);
    }
  }

  return v6 != 0;
}

@end