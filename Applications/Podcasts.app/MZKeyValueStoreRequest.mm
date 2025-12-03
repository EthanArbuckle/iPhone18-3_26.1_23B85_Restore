@interface MZKeyValueStoreRequest
- (MZKeyValueStoreOperationDelegate)delegate;
- (MZKeyValueStoreRequest)initWithTransaction:(id)transaction;
- (MZKeyValueStoreSerializer)serializer;
- (void)postData:(id)data;
- (void)scheduleStoreURLRequest:(id)request;
- (void)start;
@end

@implementation MZKeyValueStoreRequest

- (MZKeyValueStoreRequest)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = MZKeyValueStoreRequest;
  v6 = [(MZKeyValueStoreRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
  }

  return v7;
}

- (void)start
{
  serializer = [(MZKeyValueStoreRequest *)self serializer];
  payload = [serializer payload];

  [(MZKeyValueStoreRequest *)self postData:payload];
}

- (void)postData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = [NSMutableURLRequest alloc];
    transaction = [(MZKeyValueStoreRequest *)self transaction];
    v6 = [transaction URL];
    delegate2 = [v4 initWithURL:v6];

    [delegate2 setHTTPBody:dataCopy];
    [delegate2 setHTTPMethod:@"POST"];
    [delegate2 setValue:kMZKeyValueStorePlistContentType forHTTPHeaderField:@"Content-Type"];
    if ([(MZKeyValueStoreRequest *)self shouldAuthenticate])
    {
      v8 = +[MTAccountController sharedInstance];
      [v8 promptAccountAuthenticationWithDebugReason:@"Podcasts Bookkeeper Sync" forced:0];

      delegate = [(MZKeyValueStoreRequest *)self delegate];
      [delegate keyValueStoreOperationOperationDidFinish:self];
    }

    else
    {
      [(MZKeyValueStoreRequest *)self scheduleStoreURLRequest:delegate2];
    }
  }

  else
  {
    delegate2 = [(MZKeyValueStoreRequest *)self delegate];
    [delegate2 keyValueStoreOperationOperationDidFinish:self];
  }
}

- (void)scheduleStoreURLRequest:(id)request
{
  requestCopy = request;
  delegate = [(MZKeyValueStoreRequest *)self delegate];
  [delegate keyValueStoreOperation:self scheduleURLRequest:requestCopy];
}

- (MZKeyValueStoreSerializer)serializer
{
  if (!self->_serializer)
  {
    transaction = [(MZKeyValueStoreRequest *)self transaction];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = off_1004D1A78;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = &off_1004D1BB0;
    }

    v6 = objc_alloc(*v5);
    transaction2 = [(MZKeyValueStoreRequest *)self transaction];
    v8 = [v6 initWithTransaction:transaction2];
    serializer = self->_serializer;
    self->_serializer = v8;
  }

  v10 = self->_serializer;

  return v10;
}

- (MZKeyValueStoreOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end