@interface SKProductsRequest
- (SKProductsRequest)init;
- (SKProductsRequest)initWithProductIdentifiers:(NSSet *)productIdentifiers;
- (void)_logEventWithPrimaryError:(id)error mappedError:(id)mappedError;
- (void)_start;
- (void)_startWithCompletionHandler:(id)handler;
@end

@implementation SKProductsRequest

- (SKProductsRequest)init
{
  v6.receiver = self;
  v6.super_class = SKProductsRequest;
  v2 = [(SKRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductsRequestInternal);
    productsRequestInternal = v2->_productsRequestInternal;
    v2->_productsRequestInternal = v3;
  }

  return v2;
}

- (SKProductsRequest)initWithProductIdentifiers:(NSSet *)productIdentifiers
{
  v4 = productIdentifiers;
  v5 = [(SKProductsRequest *)self init];
  if (v5)
  {
    v6 = [(NSSet *)v4 copy];
    productsRequestInternal = v5->_productsRequestInternal;
    v8 = productsRequestInternal[1];
    productsRequestInternal[1] = v6;
  }

  return v5;
}

- (void)_start
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SKProductsRequest__start__block_invoke;
  v3[3] = &unk_1E7B27A50;
  v3[4] = self;
  objc_copyWeak(&v4, &location);
  [(SKProductsRequest *)self _startWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __27__SKProductsRequest__start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!dyld_program_sdk_at_least())
  {
    v7 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = dispatch_get_global_queue(21, 0);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = _SKErrorFromNSError(v6);
  [*(a1 + 32) _logEventWithPrimaryError:v6 mappedError:v8];
LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SKProductsRequest__start__block_invoke_2;
  block[3] = &unk_1E7B27A28;
  objc_copyWeak(&v15, (a1 + 40));
  v13 = v8;
  v14 = v5;
  v10 = v5;
  v11 = v8;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
}

void __27__SKProductsRequest__start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  if (*(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 request:WeakRetained didFailWithError:*(a1 + 32)];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 productsRequest:WeakRetained didReceiveResponse:*(a1 + 40)];
    }

    if (objc_opt_respondsToSelector())
    {
      [v2 requestDidFinish:WeakRetained];
    }
  }

  [WeakRetained _shutdownRequest];
}

- (void)_logEventWithPrimaryError:(id)error mappedError:(id)mappedError
{
  mappedErrorCopy = mappedError;
  errorCopy = error;
  v7 = objc_alloc_init(SKOneErrorEvent);
  [(SKBaseErrorEvent *)v7 setUserAction:5];
  [(SKBaseErrorEvent *)v7 setPrimaryError:errorCopy];

  [(SKBaseErrorEvent *)v7 setMappedError:mappedErrorCopy];
  [SKAnalyticsManager sendEvent:v7];
}

- (void)_startWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1B251DDF8(&unk_1B2581E88, v5);
}

@end