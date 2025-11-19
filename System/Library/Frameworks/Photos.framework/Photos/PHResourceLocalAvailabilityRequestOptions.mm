@interface PHResourceLocalAvailabilityRequestOptions
- (OS_dispatch_queue)resultHandlerQueue;
@end

@implementation PHResourceLocalAvailabilityRequestOptions

- (OS_dispatch_queue)resultHandlerQueue
{
  resultHandlerQueue = self->_resultHandlerQueue;
  if (resultHandlerQueue)
  {
    v3 = resultHandlerQueue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

@end