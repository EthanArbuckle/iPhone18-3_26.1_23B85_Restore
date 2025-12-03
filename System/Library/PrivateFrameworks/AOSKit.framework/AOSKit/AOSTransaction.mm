@interface AOSTransaction
- (AOSTransaction)init;
- (AOSTransaction)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)finalize;
@end

@implementation AOSTransaction

- (AOSTransaction)init
{
  v5.receiver = self;
  v5.super_class = AOSTransaction;
  v2 = [(AOSTransaction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->didSucceed = 0;
    *&v2->result = 0u;
    *&v2->callbackFunction = 0u;
    *&v2->callbackQueue = 0u;
    v2->contextRetain = 0;
    v2->contextRelease = 0;
    v2->waitLock = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  }

  return v3;
}

- (void)dealloc
{
  objc_sync_enter(self);
  result = self->result;
  if (result)
  {
    CFRelease(result);
    self->result = 0;
  }

  error = self->error;
  if (error)
  {
    CFRelease(error);
    self->error = 0;
  }

  waitLock = self->waitLock;
  if (waitLock)
  {
    CFRelease(waitLock);
    self->waitLock = 0;
  }

  if (self->context)
  {
    contextRelease = self->contextRelease;
    if (contextRelease)
    {
      contextRelease();
      self->context = 0;
    }
  }

  callbackBlock = self->callbackBlock;
  if (callbackBlock)
  {
    CFRelease(callbackBlock);
    v8 = self->callbackBlock;
  }

  else
  {
    v8 = 0;
  }

  self->callbackBlock = 0;
  callbackQueue = self->callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->callbackQueue = 0;
  }

  objc_sync_exit(self);
  v10.receiver = self;
  v10.super_class = AOSTransaction;
  [(AOSTransaction *)&v10 dealloc];
}

- (void)finalize
{
  objc_sync_enter(self);
  if (self->context)
  {
    contextRelease = self->contextRelease;
    if (contextRelease)
    {
      contextRelease();
      self->context = 0;
    }
  }

  callbackBlock = self->callbackBlock;
  if (callbackBlock)
  {
    CFRelease(callbackBlock);
    v5 = self->callbackBlock;
  }

  else
  {
    v5 = 0;
  }

  self->callbackBlock = 0;
  callbackQueue = self->callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->callbackQueue = 0;
  }

  objc_sync_exit(self);
  v7.receiver = self;
  v7.super_class = AOSTransaction;
  [(AOSTransaction *)&v7 finalize];
}

- (AOSTransaction)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AOSTransaction;
  v4 = [(AOSTransaction *)&v6 init];
  if (v4)
  {
    v4->didSucceed = [objc_msgSend(coder decodeObjectForKey:{@"didSucceed", "BOOLValue"}];
    v4->didFinish = [objc_msgSend(coder decodeObjectForKey:{@"didFinish", "BOOLValue"}];
    v4->result = [coder decodeObjectForKey:@"result"];
    v4->error = [coder decodeObjectForKey:@"error"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->didSucceed != 0), @"didSucceed"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->didFinish != 0), @"didFinish"}];
  result = self->result;
  if (result)
  {
    [coder encodeObject:result forKey:@"result"];
  }

  if (self->error)
  {

    [coder encodeObject:? forKey:?];
  }
}

@end