@interface AOSContext
+ (id)contextWithAccount:(AOSAccount *)a3 andTransaction:(AOSTransactionC *)a4;
- (AOSContext)init;
- (BOOL)scheduleCallback;
- (void)_performCallback;
- (void)dealloc;
- (void)finalize;
- (void)setAccount:(AOSAccount *)a3;
- (void)setInfo:(id)a3;
- (void)setTransaction:(AOSTransactionC *)a3;
@end

@implementation AOSContext

+ (id)contextWithAccount:(AOSAccount *)a3 andTransaction:(AOSTransactionC *)a4
{
  v6 = objc_alloc_init(AOSContext);
  v7 = v6;
  if (v6)
  {
    [(AOSContext *)v6 setAccount:a3];
    [(AOSContext *)v7 setTransaction:a4];
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
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v2->_callbackThread = v3;
    if (v3)
    {
      CFRetain(v3);
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

- (void)setAccount:(AOSAccount *)a3
{
  account = self->_account;
  if (account != a3)
  {
    if (account)
    {
      CFRelease(account);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_account = v6;
  }
}

- (void)setTransaction:(AOSTransactionC *)a3
{
  transaction = self->_transaction;
  if (transaction != a3)
  {
    if (transaction)
    {
      CFRelease(transaction);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_transaction = v6;
  }
}

- (void)setInfo:(id)a3
{
  info = self->_info;
  if (info != a3)
  {
    if (info)
    {
      CFRelease(info);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
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
      v4 = [v2 transaction];
      v5 = v4;
      if (!v4)
      {
LABEL_16:
        CFRelease(v3);
        return v5;
      }

      CallbackFunction = AOSTransactionGetCallbackFunction(v4);
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

        v10 = [v3 _callbackThread];
        if (v10)
        {
          [v3 performSelector:sel__performCallback onThread:v10 withObject:0 waitUntilDone:0];
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
  v3 = [(AOSContext *)self transaction];
  if (v3)
  {
    v4 = v3;
    CallbackFunction = AOSTransactionGetCallbackFunction(v3);
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