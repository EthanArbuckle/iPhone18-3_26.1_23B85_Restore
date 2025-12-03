@interface SKRequest
- (SKPaymentQueueClient)paymentQueueClient;
- (SKRequest)init;
- (id)delegate;
- (id)errorFromCFObject:(id)object;
- (void)_beginBackgroundTask;
- (void)_endBackgroundTask;
- (void)_start;
- (void)cancel;
- (void)setPaymentQueueClient:(id)client;
- (void)start;
@end

@implementation SKRequest

- (SKRequest)init
{
  v6.receiver = self;
  v6.super_class = SKRequest;
  v2 = [(SKRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKRequestInternal);
    requestInternal = v2->_requestInternal;
    v2->_requestInternal = v3;
  }

  return v2;
}

- (void)cancel
{
  requestInternal = self->_requestInternal;
  if (requestInternal[4] == 1)
  {
    requestInternal[4] = 2;
  }

  [(SKRequest *)self _endBackgroundTask];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(self->_requestInternal + 3);

  return WeakRetained;
}

- (void)start
{
  requestInternal = self->_requestInternal;
  if (requestInternal[4])
  {
    NSLog(&cfstr_IgnoringStartA.isa, a2, self);
  }

  else
  {
    requestInternal[4] = 1;
    [(SKRequest *)self _beginBackgroundTask];

    [(SKRequest *)self _start];
  }
}

- (SKPaymentQueueClient)paymentQueueClient
{
  v2 = [*(self->_requestInternal + 2) copy];

  return v2;
}

- (void)setPaymentQueueClient:(id)client
{
  requestInternal = self->_requestInternal;
  if (requestInternal[2] != client)
  {
    v7 = requestInternal;
    v5 = [client copy];
    v6 = requestInternal[2];
    requestInternal[2] = v5;
  }
}

- (id)errorFromCFObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:0 userInfo:0];

      objectCopy = v4;
    }
  }

  return objectCopy;
}

- (void)_start
{
  requestInternal = self->_requestInternal;
  requestInternal[4] = 3;
  v4 = requestInternal;
  delegate = [(SKRequest *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SKRequest *)self delegate];
    [delegate2 requestDidFinish:self];
  }

  [(SKRequest *)self _endBackgroundTask];
}

- (void)_beginBackgroundTask
{
  if (MGGetSInt32Answer() != 4)
  {
    v3 = MEMORY[0x1E69DC668];
    v4 = self->_requestInternal;
    sharedApplication = [v3 sharedApplication];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__SKRequest__beginBackgroundTask__block_invoke;
    v8[3] = &unk_1E7B27980;
    v8[4] = self;
    v4[1] = [sharedApplication beginBackgroundTaskWithName:v7 expirationHandler:v8];
  }
}

uint64_t __33__SKRequest__beginBackgroundTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 32);

  return [v2 _endBackgroundTask];
}

- (void)_endBackgroundTask
{
  requestInternal = self->_requestInternal;
  v3 = requestInternal[1];
  if (v3 != *MEMORY[0x1E69DDBE8])
  {
    requestInternal[1] = *MEMORY[0x1E69DDBE8];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] endBackgroundTask:v3];
  }
}

@end