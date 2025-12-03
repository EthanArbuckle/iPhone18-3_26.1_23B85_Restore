@interface OSLogSystemEnumerator
- (OSLogSystemEnumerator)initWithEventStream:(id)stream options:(unint64_t)options position:(id)position;
- (id)nextObject;
- (void)_handleEventProxy:(id)proxy;
- (void)_handleInvalidation;
- (void)dealloc;
@end

@implementation OSLogSystemEnumerator

- (void)_handleInvalidation
{
  self->_done = 1;
  dispatch_semaphore_signal(self->_pushDone);
  handlerDone = self->_handlerDone;

  dispatch_semaphore_signal(handlerDone);
}

- (void)_handleEventProxy:(id)proxy
{
  v4 = convertEventProxyToEntry(proxy);
  next = self->_next;
  self->_next = v4;

  MEMORY[0x2821F96F8]();
}

- (id)nextObject
{
  if (self->_done || (dispatch_semaphore_signal(self->_pushDone), dispatch_semaphore_wait(self->_handlerDone, 0xFFFFFFFFFFFFFFFFLL), self->_done))
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_next;
  }

  return v3;
}

- (void)dealloc
{
  [(OSLogEventStream *)self->_stream invalidate];
  v3.receiver = self;
  v3.super_class = OSLogSystemEnumerator;
  [(OSLogSystemEnumerator *)&v3 dealloc];
}

- (OSLogSystemEnumerator)initWithEventStream:(id)stream options:(unint64_t)options position:(id)position
{
  optionsCopy = options;
  streamCopy = stream;
  positionCopy = position;
  v30.receiver = self;
  v30.super_class = OSLogSystemEnumerator;
  v11 = [(OSLogSystemEnumerator *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stream, stream);
    v13 = dispatch_semaphore_create(0);
    pushDone = v12->_pushDone;
    v12->_pushDone = v13;

    v15 = dispatch_semaphore_create(0);
    handlerDone = v12->_handlerDone;
    v12->_handlerDone = v15;

    objc_initWeak(&location, v12);
    stream = v12->_stream;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__OSLogSystemEnumerator_initWithEventStream_options_position___block_invoke;
    v27[3] = &unk_278B462F8;
    objc_copyWeak(&v28, &location);
    [(OSLogEventStream *)stream setEventHandler:v27];
    v18 = v12->_stream;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__OSLogSystemEnumerator_initWithEventStream_options_position___block_invoke_2;
    v25[3] = &unk_278B46320;
    objc_copyWeak(&v26, &location);
    [(OSLogEventStream *)v18 setInvalidationHandler:v25];
    [(OSLogEventStream *)v12->_stream setFlags:39];
    if (optionsCopy)
    {
      [(OSLogEventStream *)v12->_stream setFlags:[(OSLogEventStream *)v12->_stream flags]| 8];
    }

    if (positionCopy)
    {
      if ([positionCopy precision] == 1)
      {
        v19 = v12->_stream;
        date = [positionCopy date];
        [(OSLogEventStream *)v19 activateStreamFromDate:date];
LABEL_10:

        goto LABEL_11;
      }

      if ([positionCopy precision] == 2)
      {
        v21 = v12->_stream;
        [positionCopy offset];
        [(OSLogEventStream *)v21 _activateStreamFromTimeIntervalSinceLastBoot:?];
LABEL_11:
        v23 = v12;
        objc_destroyWeak(&v26);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        goto LABEL_12;
      }
    }

    v22 = v12->_stream;
    date = [MEMORY[0x277CBEAA8] distantPast];
    [(OSLogEventStream *)v22 activateStreamFromDate:date];
    goto LABEL_10;
  }

LABEL_12:

  return v12;
}

void __62__OSLogSystemEnumerator_initWithEventStream_options_position___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = WeakRetained[4];
    v6 = WeakRetained[5];
    v7 = v5;

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 _handleEventProxy:v9];

    dispatch_semaphore_signal(v6);
  }
}

void __62__OSLogSystemEnumerator_initWithEventStream_options_position___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

@end