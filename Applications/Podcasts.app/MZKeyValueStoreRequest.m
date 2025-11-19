@interface MZKeyValueStoreRequest
- (MZKeyValueStoreOperationDelegate)delegate;
- (MZKeyValueStoreRequest)initWithTransaction:(id)a3;
- (MZKeyValueStoreSerializer)serializer;
- (void)postData:(id)a3;
- (void)scheduleStoreURLRequest:(id)a3;
- (void)start;
@end

@implementation MZKeyValueStoreRequest

- (MZKeyValueStoreRequest)initWithTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MZKeyValueStoreRequest;
  v6 = [(MZKeyValueStoreRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
  }

  return v7;
}

- (void)start
{
  v3 = [(MZKeyValueStoreRequest *)self serializer];
  v4 = [v3 payload];

  [(MZKeyValueStoreRequest *)self postData:v4];
}

- (void)postData:(id)a3
{
  v10 = a3;
  if ([v10 length])
  {
    v4 = [NSMutableURLRequest alloc];
    v5 = [(MZKeyValueStoreRequest *)self transaction];
    v6 = [v5 URL];
    v7 = [v4 initWithURL:v6];

    [v7 setHTTPBody:v10];
    [v7 setHTTPMethod:@"POST"];
    [v7 setValue:kMZKeyValueStorePlistContentType forHTTPHeaderField:@"Content-Type"];
    if ([(MZKeyValueStoreRequest *)self shouldAuthenticate])
    {
      v8 = +[MTAccountController sharedInstance];
      [v8 promptAccountAuthenticationWithDebugReason:@"Podcasts Bookkeeper Sync" forced:0];

      v9 = [(MZKeyValueStoreRequest *)self delegate];
      [v9 keyValueStoreOperationOperationDidFinish:self];
    }

    else
    {
      [(MZKeyValueStoreRequest *)self scheduleStoreURLRequest:v7];
    }
  }

  else
  {
    v7 = [(MZKeyValueStoreRequest *)self delegate];
    [v7 keyValueStoreOperationOperationDidFinish:self];
  }
}

- (void)scheduleStoreURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreRequest *)self delegate];
  [v5 keyValueStoreOperation:self scheduleURLRequest:v4];
}

- (MZKeyValueStoreSerializer)serializer
{
  if (!self->_serializer)
  {
    v3 = [(MZKeyValueStoreRequest *)self transaction];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = off_1004D1A78;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = &off_1004D1BB0;
    }

    v6 = objc_alloc(*v5);
    v7 = [(MZKeyValueStoreRequest *)self transaction];
    v8 = [v6 initWithTransaction:v7];
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