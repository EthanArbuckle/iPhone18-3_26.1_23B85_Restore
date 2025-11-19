@interface CDXExtensionDataRequest
- (CDXExtensionDataRequest)initWithExtension:(id)a3 queue:(id)a4;
- (CDXExtensionDataRequestDelegate)delegate;
- (void)_cancelWithError:(id)a3;
- (void)addBlockingEntriesWithData:(id)a3 reply:(id)a4;
- (void)addIdentificationEntriesWithData:(id)a3 reply:(id)a4;
- (void)beginWithCompletion:(id)a3;
- (void)completeRequestWithReply:(id)a3;
- (void)isIncrementalLoadingAllowed:(id)a3;
- (void)removeAllBlockingEntriesWithReply:(id)a3;
- (void)removeAllIdentificationEntriesWithReply:(id)a3;
- (void)removeBlockingEntriesWithData:(id)a3 reply:(id)a4;
- (void)removeIdentificationEntriesWithData:(id)a3 reply:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation CDXExtensionDataRequest

- (CDXExtensionDataRequest)initWithExtension:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDXExtensionDataRequest;
  v9 = [(CDXExtensionDataRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_extension, a3);
  }

  return v10;
}

- (CDXExtensionDataRequestDelegate)delegate
{
  v3 = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(v3);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  v4 = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(v4);

  objc_storeWeak(&self->_delegate, obj);
}

- (void)beginWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CDXExtensionDataRequest *)self setCompletionHandler:v4];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003890;
  v15[3] = &unk_100034A90;
  objc_copyWeak(&v16, &location);
  v6 = [(CDXExtensionDataRequest *)self extension];
  [v6 setRequestCompletionBlock:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A50;
  v13[3] = &unk_100034AE0;
  objc_copyWeak(&v14, &location);
  v7 = [(CDXExtensionDataRequest *)self extension];
  [v7 setRequestCancellationBlock:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003C64;
  v11[3] = &unk_100034B08;
  objc_copyWeak(&v12, &location);
  v8 = [(CDXExtensionDataRequest *)self extension];
  [v8 setRequestInterruptionBlock:v11];

  v9 = [(CDXExtensionDataRequest *)self extension];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003DEC;
  v10[3] = &unk_100034B30;
  v10[4] = self;
  [v9 beginExtensionRequestWithInputItems:0 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_cancelWithError:(id)a3
{
  v4 = a3;
  v5 = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CDXExtensionDataRequest *)self requestIdentifier];

  if (!v6)
  {
    v14 = [(CDXExtensionDataRequest *)self extension];

    v9 = sub_100001C1C();
    v15 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v20 = self;
      v16 = "Requested to cancel data request %@ which has not yet begun";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v20 = self;
      v16 = "Requested to cancel data request %@ which has already been completed or cancelled";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_13;
  }

  v7 = dispatch_semaphore_create(0);
  v8 = [(CDXExtensionDataRequest *)self context];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000427C;
  v17[3] = &unk_100034B58;
  v9 = v7;
  v18 = v9;
  [v8 requestFailedWithError:v4 completion:v17];

  v10 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = sub_100001C1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out while notifying extension about request failure, proceeding to cancel extension request", buf, 2u);
    }
  }

  [(CDXExtensionDataRequest *)self setHostCancellationError:v4];
  v12 = [(CDXExtensionDataRequest *)self extension];
  v13 = [(CDXExtensionDataRequest *)self requestIdentifier];
  [v12 cancelExtensionRequestWithIdentifier:v13];

LABEL_13:
}

- (void)isIncrementalLoadingAllowed:(id)a3
{
  v4 = a3;
  v5 = [(CDXExtensionDataRequest *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004338;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addBlockingEntriesWithData:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000044A0;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)removeBlockingEntriesWithData:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004600;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)removeAllBlockingEntriesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDXExtensionDataRequest *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000473C;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addIdentificationEntriesWithData:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000489C;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)removeIdentificationEntriesWithData:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049FC;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)removeAllIdentificationEntriesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDXExtensionDataRequest *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004B38;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)completeRequestWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDXExtensionDataRequest *)self queue];
  dispatch_async(v5, v4);
}

@end