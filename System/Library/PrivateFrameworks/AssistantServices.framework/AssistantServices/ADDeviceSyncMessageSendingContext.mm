@interface ADDeviceSyncMessageSendingContext
- (ADDeviceSyncMessageSendingContext)initWithQueue:(id)queue deviceIdentifier:(id)identifier timeoutDuration:(double)duration completion:(id)completion;
- (void)_addError:(id)error;
- (void)_beginSendingWithMessageSender:(id)sender;
- (void)_cancelWatchdogTimer;
- (void)_endSendingWithMessageSender:(id)sender replyMessage:(id)message error:(id)error;
- (void)_finalizeWithError:(id)error;
- (void)_finalizeWithResponseMessage:(id)message;
- (void)_handleWatchdogTimeout;
- (void)beginSendingWithMessageSender:(id)sender;
- (void)dealloc;
- (void)endSendingWithMessageSender:(id)sender replyMessage:(id)message error:(id)error;
@end

@implementation ADDeviceSyncMessageSendingContext

- (void)_finalizeWithError:(id)error
{
  errorCopy = error;
  [(ADDeviceSyncMessageSendingContext *)self _cancelWatchdogTimer];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, 0, errorCopy);
    v5 = self->_completion;
    self->_completion = 0;
  }

  errors = self->_errors;
  self->_errors = 0;
}

- (void)_finalizeWithResponseMessage:(id)message
{
  messageCopy = message;
  [(ADDeviceSyncMessageSendingContext *)self _cancelWatchdogTimer];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, messageCopy, 0);
    v5 = self->_completion;
    self->_completion = 0;
  }

  errors = self->_errors;
  self->_errors = 0;
}

- (void)_addError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy && self->_completion)
  {
    errors = self->_errors;
    v9 = v5;
    if (!errors)
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = self->_errors;
      self->_errors = v7;

      errors = self->_errors;
    }

    errorCopy = [(NSMutableArray *)errors addObject:v9];
    v5 = v9;
  }

  _objc_release_x1(errorCopy, v5);
}

- (void)_cancelWatchdogTimer
{
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(AFWatchdogTimer *)watchdogTimer cancel];
    v4 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }
}

- (void)_handleWatchdogTimeout
{
  if (self->_completion)
  {
    v3 = [AFError errorWithCode:2406 description:@"Message sending timed out." underlyingErrors:self->_errors];
    [(ADDeviceSyncMessageSendingContext *)self _finalizeWithError:v3];
  }
}

- (void)_endSendingWithMessageSender:(id)sender replyMessage:(id)message error:(id)error
{
  senderCopy = sender;
  messageCopy = message;
  errorCopy = error;
  numberOfActiveMessageSenders = self->_numberOfActiveMessageSenders;
  if (numberOfActiveMessageSenders)
  {
    self->_numberOfActiveMessageSenders = numberOfActiveMessageSenders - 1;
  }

  if (self->_completion)
  {
    [(ADDeviceSyncMessageSendingContext *)self _addError:errorCopy];
    if (messageCopy)
    {
      [(ADDeviceSyncMessageSendingContext *)self _finalizeWithResponseMessage:messageCopy];
    }

    else if (!self->_numberOfActiveMessageSenders)
    {
      v11 = [AFError errorWithCode:2405 description:@"Message sending failed." underlyingErrors:self->_errors];
      [(ADDeviceSyncMessageSendingContext *)self _finalizeWithError:v11];
    }
  }
}

- (void)_beginSendingWithMessageSender:(id)sender
{
  numberOfActiveMessageSenders = self->_numberOfActiveMessageSenders;
  if (!numberOfActiveMessageSenders)
  {
    [(AFWatchdogTimer *)self->_watchdogTimer start];
    numberOfActiveMessageSenders = self->_numberOfActiveMessageSenders;
  }

  self->_numberOfActiveMessageSenders = numberOfActiveMessageSenders + 1;
}

- (void)endSendingWithMessageSender:(id)sender replyMessage:(id)message error:(id)error
{
  senderCopy = sender;
  messageCopy = message;
  errorCopy = error;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012A1B4;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = senderCopy;
  v17 = messageCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = messageCopy;
  v14 = senderCopy;
  dispatch_async(queue, v15);
}

- (void)beginSendingWithMessageSender:(id)sender
{
  senderCopy = sender;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012A25C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = senderCopy;
  v6 = senderCopy;
  dispatch_async(queue, v7);
}

- (ADDeviceSyncMessageSendingContext)initWithQueue:(id)queue deviceIdentifier:(id)identifier timeoutDuration:(double)duration completion:(id)completion
{
  queueCopy = queue;
  identifierCopy = identifier;
  completionCopy = completion;
  v28.receiver = self;
  v28.super_class = ADDeviceSyncMessageSendingContext;
  v14 = [(ADDeviceSyncMessageSendingContext *)&v28 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    v16 = [identifierCopy copy];
    deviceIdentifier = v15->_deviceIdentifier;
    v15->_deviceIdentifier = v16;

    v18 = objc_retainBlock(completionCopy);
    completion = v15->_completion;
    v15->_completion = v18;

    if (duration > 0.0)
    {
      objc_initWeak(&location, v15);
      v20 = [AFWatchdogTimer alloc];
      queue = v15->_queue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10012A40C;
      v25[3] = &unk_10051B5F0;
      objc_copyWeak(&v26, &location);
      v22 = [v20 initWithTimeoutInterval:queue onQueue:v25 timeoutHandler:duration];
      watchdogTimer = v15->_watchdogTimer;
      v15->_watchdogTimer = v22;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  return v15;
}

- (void)dealloc
{
  if (self->_completion)
  {
    v3 = [AFError errorWithCode:2405 description:@"Message sending failed." underlyingErrors:self->_errors];
    [(ADDeviceSyncMessageSendingContext *)self _finalizeWithError:v3];
  }

  v4.receiver = self;
  v4.super_class = ADDeviceSyncMessageSendingContext;
  [(ADDeviceSyncMessageSendingContext *)&v4 dealloc];
}

@end