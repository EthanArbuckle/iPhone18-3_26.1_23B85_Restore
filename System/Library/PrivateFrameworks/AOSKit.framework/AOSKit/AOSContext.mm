@interface AOSContext
+ (id)contextWithAccount:(AOSAccount *)account andTransaction:(AOSTransactionC *)transaction;
- (AOSContext)init;
- (BOOL)scheduleCallback;
- (void)_performCallback;
- (void)dealloc;
- (void)finalize;
- (void)setAccount:(AOSAccount *)account;
- (void)setInfo:(id)info;
- (void)setTransaction:(AOSTransactionC *)transaction;
@end

@implementation AOSContext

+ (id)contextWithAccount:(AOSAccount *)account andTransaction:(AOSTransactionC *)transaction
{
  v6 = objc_alloc_init(AOSContext);
  v7 = v6;
  if (v6)
  {
    [(AOSContext *)v6 setAccount:account];
    [(AOSContext *)v7 setTransaction:transaction];
  }

  return v7;
}

- (AOSContext)init
{
  v5.receiver = self;
  v5.super_class = AOSContext;
  v2 = [(AOSContext *)&v5 init];
  if (v2)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    v2->_callbackThread = currentThread;
    if (currentThread)
    {
      CFRetain(currentThread);
    }
  }

  return v2;
}

- (void)dealloc
{
  account = self->_account;
  if (account)
  {
    CFRelease(account);
    self->_account = 0;
  }

  transaction = self->_transaction;
  if (transaction)
  {
    CFRelease(transaction);
    self->_transaction = 0;
  }

  info = self->_info;
  if (info)
  {
    CFRelease(info);
    self->_info = 0;
  }

  callbackThread = self->_callbackThread;
  if (callbackThread)
  {
    CFRelease(callbackThread);
    self->_callbackThread = 0;
  }

  v7.receiver = self;
  v7.super_class = AOSContext;
  [(AOSContext *)&v7 dealloc];
}

- (void)finalize
{
  account = self->_account;
  if (account)
  {
    CFRelease(account);
    self->_account = 0;
  }

  transaction = self->_transaction;
  if (transaction)
  {
    CFRelease(transaction);
    self->_transaction = 0;
  }

  info = self->_info;
  if (info)
  {
    CFRelease(info);
    self->_info = 0;
  }

  callbackThread = self->_callbackThread;
  if (callbackThread)
  {
    CFRelease(callbackThread);
    self->_callbackThread = 0;
  }

  v7.receiver = self;
  v7.super_class = AOSContext;
  [(AOSContext *)&v7 finalize];
}

- (void)setAccount:(AOSAccount *)account
{
  account = self->_account;
  if (account != account)
  {
    if (account)
    {
      CFRelease(account);
    }

    if (account)
    {
      v6 = CFRetain(account);
    }

    else
    {
      v6 = 0;
    }

    self->_account = v6;
  }
}

- (void)setTransaction:(AOSTransactionC *)transaction
{
  transaction = self->_transaction;
  if (transaction != transaction)
  {
    if (transaction)
    {
      CFRelease(transaction);
    }

    if (transaction)
    {
      v6 = CFRetain(transaction);
    }

    else
    {
      v6 = 0;
    }

    self->_transaction = v6;
  }
}

- (void)setInfo:(id)info
{
  info = self->_info;
  if (info != info)
  {
    if (info)
    {
      CFRelease(info);
    }

    if (info)
    {
      v6 = CFRetain(info);
    }

    else
    {
      v6 = 0;
    }

    self->_info = v6;
  }
}

- (BOOL)scheduleCallback
{
  if (self)
  {
    v2 = CFRetain(self);
    if (v2)
    {
      v3 = v2;
      transaction = [v2 transaction];
      v5 = transaction;
      if (!transaction)
      {
LABEL_16:
        CFRelease(v3);
        return v5;
      }

      CallbackFunction = AOSTransactionGetCallbackFunction(transaction);
      CallbackBlock = AOSTransactionGetCallbackBlock(v5);
      CallbackQueue = AOSTransactionGetCallbackQueue(v5);
      if (CallbackBlock && CallbackQueue)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__AOSContext_scheduleCallback__block_invoke;
        v13[3] = &unk_278BC60D8;
        v13[4] = CallbackBlock;
        v13[5] = v5;
        v9 = v13;
LABEL_11:
        dispatch_async(CallbackQueue, v9);
LABEL_12:
        LOBYTE(v5) = 1;
        goto LABEL_16;
      }

      if (CallbackFunction)
      {
        if (CallbackQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __30__AOSContext_scheduleCallback__block_invoke_2;
          block[3] = &__block_descriptor_48_e5_v8__0l;
          block[4] = CallbackFunction;
          block[5] = v5;
          v9 = block;
          goto LABEL_11;
        }

        _callbackThread = [v3 _callbackThread];
        if (_callbackThread)
        {
          [v3 performSelector:sel__performCallback onThread:_callbackThread withObject:0 waitUntilDone:0];
          goto LABEL_12;
        }
      }

      LOBYTE(v5) = 0;
      goto LABEL_16;
    }
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (void)_performCallback
{
  transaction = [(AOSContext *)self transaction];
  if (transaction)
  {
    v4 = transaction;
    CallbackFunction = AOSTransactionGetCallbackFunction(transaction);
    if (CallbackFunction)
    {
      CallbackFunction(v4);
    }
  }

  if (self)
  {

    CFRelease(self);
  }
}

@end