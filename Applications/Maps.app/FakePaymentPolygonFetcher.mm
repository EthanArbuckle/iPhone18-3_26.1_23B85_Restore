@interface FakePaymentPolygonFetcher
- (BOOL)paymentPolygonsAtLocation:(id)location completion:(id)completion;
- (FakePaymentPolygonFetcher)initWithTestCallback:(id)callback;
@end

@implementation FakePaymentPolygonFetcher

- (BOOL)paymentPolygonsAtLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    v12 = sub_10003D020();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/FakePaymentPolygonFetcher.m";
      v20 = 1024;
      v21 = 35;
      v22 = 2082;
      v23 = "[FakePaymentPolygonFetcher paymentPolygonsAtLocation:completion:]";
      v24 = 2082;
      v25 = "nil == completion";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Completion handler cannot be nil", buf, 0x26u);
    }

    v11 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 136446978;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/FakePaymentPolygonFetcher.m";
    v20 = 1024;
    v21 = 35;
    v22 = 2082;
    v23 = "[FakePaymentPolygonFetcher paymentPolygonsAtLocation:completion:]";
    v24 = 2082;
    v25 = "nil == completion";
    v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Completion handler cannot be nil";
    goto LABEL_12;
  }

  if (!locationCopy)
  {
    v14 = sub_10003D020();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/FakePaymentPolygonFetcher.m";
      v20 = 1024;
      v21 = 36;
      v22 = 2082;
      v23 = "[FakePaymentPolygonFetcher paymentPolygonsAtLocation:completion:]";
      v24 = 2082;
      v25 = "nil == location";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Location cannot be nil", buf, 0x26u);
    }

    v11 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 136446978;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/Sources/FakePaymentPolygonFetcher.m";
    v20 = 1024;
    v21 = 36;
    v22 = 2082;
    v23 = "[FakePaymentPolygonFetcher paymentPolygonsAtLocation:completion:]";
    v24 = 2082;
    v25 = "nil == location";
    v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Location cannot be nil";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v13, buf, 0x26u);
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100A6ECE0;
  v16[3] = &unk_101661090;
  v16[4] = self;
  v17 = completionCopy;
  dispatch_async(queue, v16);
  v10 = 1;
  v11 = v17;
LABEL_14:

  return v10;
}

- (FakePaymentPolygonFetcher)initWithTestCallback:(id)callback
{
  callbackCopy = callback;
  v12.receiver = self;
  v12.super_class = FakePaymentPolygonFetcher;
  v5 = [(FakePaymentPolygonFetcher *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.Maps.fakeFetcherQueue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_retainBlock(callbackCopy);
    testCallback = v5->_testCallback;
    v5->_testCallback = v9;
  }

  return v5;
}

@end