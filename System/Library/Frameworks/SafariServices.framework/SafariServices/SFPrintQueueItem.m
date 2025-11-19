@interface SFPrintQueueItem
- (SFPrintQueueItem)initWithFrameHandle:(id)a3 initiatedByWebContent:(BOOL)a4 completionHandler:(id)a5;
- (void)completeWithResult:(int64_t)a3;
- (void)dealloc;
@end

@implementation SFPrintQueueItem

- (SFPrintQueueItem)initWithFrameHandle:(id)a3 initiatedByWebContent:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SFPrintQueueItem;
  v9 = a5;
  v10 = [(SFPrintQueueItem *)&v16 init];
  frameHandle = v10->_frameHandle;
  v10->_frameHandle = v8;
  v12 = v8;

  v10->_initiatedByWebContent = a4;
  v13 = _Block_copy(v9);

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

- (void)completeWithResult:(int64_t)a3
{
  if (!self->_completed)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, a3);
    }

    self->_completed = 1;
  }
}

@end