@interface CPDistributedMessagingAsyncOperation
- (CPDistributedMessagingAsyncOperation)initWithCenter:(id)center messageName:(id)name userInfoData:(id)data oolKey:(id)key oolData:(id)oolData target:(id)target selector:(SEL)selector context:(void *)self0 makeServer:(BOOL)self1;
- (void)_performCallout;
- (void)_releaseSendingData;
- (void)dealloc;
- (void)main;
@end

@implementation CPDistributedMessagingAsyncOperation

- (CPDistributedMessagingAsyncOperation)initWithCenter:(id)center messageName:(id)name userInfoData:(id)data oolKey:(id)key oolData:(id)oolData target:(id)target selector:(SEL)selector context:(void *)self0 makeServer:(BOOL)self1
{
  v20.receiver = self;
  v20.super_class = CPDistributedMessagingAsyncOperation;
  v17 = [(CPDistributedMessagingAsyncOperation *)&v20 init];
  if (v17)
  {
    v17->_center = center;
    v17->_name = [name copy];
    v17->_userInfoData = [data copy];
    v17->_oolKey = [key copy];
    v17->_oolData = oolData;
    v17->_target = target;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v17->_selector = selectorCopy;
    v17->_context = context;
    v17->_calloutThread = [MEMORY[0x1E696AF00] currentThread];
    v17->_makeServer = server;
  }

  return v17;
}

- (void)dealloc
{
  [(CPDistributedMessagingAsyncOperation *)self _releaseSendingData];

  v3.receiver = self;
  v3.super_class = CPDistributedMessagingAsyncOperation;
  [(CPDistributedMessagingAsyncOperation *)&v3 dealloc];
}

- (void)_releaseSendingData
{
  userInfoData = self->_userInfoData;
  if (userInfoData)
  {

    self->_userInfoData = 0;
  }

  oolKey = self->_oolKey;
  if (oolKey)
  {

    self->_oolKey = 0;
  }

  oolData = self->_oolData;
  if (oolData)
  {

    self->_oolData = 0;
  }
}

- (void)main
{
  p_error = &self->_error;
  LOBYTE(v8) = 0;
  [(CPDistributedMessagingCenter *)self->_center _sendMessage:self->_name userInfoData:self->_userInfoData oolKey:self->_oolKey oolData:self->_oolData makeServer:self->_makeServer receiveReply:&self->_reply nonBlocking:v8 error:&self->_error];
  reply = self->_reply;
  if (reply)
  {
    v5 = reply;
  }

  if (*p_error)
  {
    v6 = *p_error;
  }

  [(CPDistributedMessagingAsyncOperation *)self _releaseSendingData];
  calloutThread = self->_calloutThread;

  [(CPDistributedMessagingAsyncOperation *)self performSelector:sel__performCallout onThread:calloutThread withObject:0 waitUntilDone:0];
}

- (void)_performCallout
{
  target = self->_target;
  selector = self->_selector;
  if (selector)
  {
    v4 = self->_selector;
    [target selector];
  }

  else
  {
    [target 0];
  }
}

@end