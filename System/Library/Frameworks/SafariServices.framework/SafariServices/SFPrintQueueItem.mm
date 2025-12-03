@interface SFPrintQueueItem
- (SFPrintQueueItem)initWithFrameHandle:(id)handle initiatedByWebContent:(BOOL)content completionHandler:(id)handler;
- (void)completeWithResult:(int64_t)result;
- (void)dealloc;
@end

@implementation SFPrintQueueItem

- (SFPrintQueueItem)initWithFrameHandle:(id)handle initiatedByWebContent:(BOOL)content completionHandler:(id)handler
{
  handleCopy = handle;
  v16.receiver = self;
  v16.super_class = SFPrintQueueItem;
  handlerCopy = handler;
  v10 = [(SFPrintQueueItem *)&v16 init];
  frameHandle = v10->_frameHandle;
  v10->_frameHandle = handleCopy;
  v12 = handleCopy;

  v10->_initiatedByWebContent = content;
  v13 = _Block_copy(handlerCopy);

  completionHandler = v10->_completionHandler;
  v10->_completionHandler = v13;

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFPrintQueueItem;
  [(SFPrintQueueItem *)&v2 dealloc];
}

- (void)completeWithResult:(int64_t)result
{
  if (!self->_completed)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, result);
    }

    self->_completed = 1;
  }
}

@end