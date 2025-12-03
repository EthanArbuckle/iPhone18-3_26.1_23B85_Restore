@interface CDXExtensionDataRequest
- (CDXExtensionDataRequest)initWithExtension:(id)extension queue:(id)queue;
- (CDXExtensionDataRequestDelegate)delegate;
- (void)_cancelWithError:(id)error;
- (void)addBlockingEntriesWithData:(id)data reply:(id)reply;
- (void)addIdentificationEntriesWithData:(id)data reply:(id)reply;
- (void)beginWithCompletion:(id)completion;
- (void)completeRequestWithReply:(id)reply;
- (void)isIncrementalLoadingAllowed:(id)allowed;
- (void)removeAllBlockingEntriesWithReply:(id)reply;
- (void)removeAllIdentificationEntriesWithReply:(id)reply;
- (void)removeBlockingEntriesWithData:(id)data reply:(id)reply;
- (void)removeIdentificationEntriesWithData:(id)data reply:(id)reply;
- (void)setDelegate:(id)delegate;
@end

@implementation CDXExtensionDataRequest

- (CDXExtensionDataRequest)initWithExtension:(id)extension queue:(id)queue
{
  extensionCopy = extension;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CDXExtensionDataRequest;
  v9 = [(CDXExtensionDataRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_extension, extension);
  }

  return v10;
}

- (CDXExtensionDataRequestDelegate)delegate
{
  queue = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  queue = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_storeWeak(&self->_delegate, obj);
}

- (void)beginWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CDXExtensionDataRequest *)self setCompletionHandler:completionCopy];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003890;
  v15[3] = &unk_100034A90;
  objc_copyWeak(&v16, &location);
  extension = [(CDXExtensionDataRequest *)self extension];
  [extension setRequestCompletionBlock:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A50;
  v13[3] = &unk_100034AE0;
  objc_copyWeak(&v14, &location);
  extension2 = [(CDXExtensionDataRequest *)self extension];
  [extension2 setRequestCancellationBlock:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003C64;
  v11[3] = &unk_100034B08;
  objc_copyWeak(&v12, &location);
  extension3 = [(CDXExtensionDataRequest *)self extension];
  [extension3 setRequestInterruptionBlock:v11];

  extension4 = [(CDXExtensionDataRequest *)self extension];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003DEC;
  v10[3] = &unk_100034B30;
  v10[4] = self;
  [extension4 beginExtensionRequestWithInputItems:0 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_cancelWithError:(id)error
{
  errorCopy = error;
  queue = [(CDXExtensionDataRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  requestIdentifier = [(CDXExtensionDataRequest *)self requestIdentifier];

  if (!requestIdentifier)
  {
    extension = [(CDXExtensionDataRequest *)self extension];

    v9 = sub_100001C1C();
    v15 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (extension)
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      selfCopy2 = self;
      v16 = "Requested to cancel data request %@ which has not yet begun";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      selfCopy2 = self;
      v16 = "Requested to cancel data request %@ which has already been completed or cancelled";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_13;
  }

  v7 = dispatch_semaphore_create(0);
  context = [(CDXExtensionDataRequest *)self context];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000427C;
  v17[3] = &unk_100034B58;
  v9 = v7;
  v18 = v9;
  [context requestFailedWithError:errorCopy completion:v17];

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

  [(CDXExtensionDataRequest *)self setHostCancellationError:errorCopy];
  extension2 = [(CDXExtensionDataRequest *)self extension];
  requestIdentifier2 = [(CDXExtensionDataRequest *)self requestIdentifier];
  [extension2 cancelExtensionRequestWithIdentifier:requestIdentifier2];

LABEL_13:
}

- (void)isIncrementalLoadingAllowed:(id)allowed
{
  allowedCopy = allowed;
  queue = [(CDXExtensionDataRequest *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004338;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = allowedCopy;
  v6 = allowedCopy;
  dispatch_sync(queue, v7);
}

- (void)addBlockingEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000044A0;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_sync(queue, block);
}

- (void)removeBlockingEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004600;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_sync(queue, block);
}

- (void)removeAllBlockingEntriesWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000473C;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_sync(queue, v7);
}

- (void)addIdentificationEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000489C;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_sync(queue, block);
}

- (void)removeIdentificationEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049FC;
  block[3] = &unk_100034BA8;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_sync(queue, block);
}

- (void)removeAllIdentificationEntriesWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004B38;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_sync(queue, v7);
}

- (void)completeRequestWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CDXExtensionDataRequest *)self queue];
  dispatch_async(queue, replyCopy);
}

@end