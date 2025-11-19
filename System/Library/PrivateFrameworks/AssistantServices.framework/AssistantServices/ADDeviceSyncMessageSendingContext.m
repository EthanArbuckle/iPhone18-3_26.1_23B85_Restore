@interface ADDeviceSyncMessageSendingContext
- (ADDeviceSyncMessageSendingContext)initWithQueue:(id)a3 deviceIdentifier:(id)a4 timeoutDuration:(double)a5 completion:(id)a6;
- (void)_addError:(id)a3;
- (void)_beginSendingWithMessageSender:(id)a3;
- (void)_cancelWatchdogTimer;
- (void)_endSendingWithMessageSender:(id)a3 replyMessage:(id)a4 error:(id)a5;
- (void)_finalizeWithError:(id)a3;
- (void)_finalizeWithResponseMessage:(id)a3;
- (void)_handleWatchdogTimeout;
- (void)beginSendingWithMessageSender:(id)a3;
- (void)dealloc;
- (void)endSendingWithMessageSender:(id)a3 replyMessage:(id)a4 error:(id)a5;
@end

@implementation ADDeviceSyncMessageSendingContext

- (void)_finalizeWithError:(id)a3
{
  v7 = a3;
  [(ADDeviceSyncMessageSendingContext *)self _cancelWatchdogTimer];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, 0, v7);
    v5 = self->_completion;
    self->_completion = 0;
  }

  errors = self->_errors;
  self->_errors = 0;
}

- (void)_finalizeWithResponseMessage:(id)a3
{
  v7 = a3;
  [(ADDeviceSyncMessageSendingContext *)self _cancelWatchdogTimer];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v7, 0);
    v5 = self->_completion;
    self->_completion = 0;
  }

  errors = self->_errors;
  self->_errors = 0;
}

- (void)_addError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_completion)
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

    v4 = [(NSMutableArray *)errors addObject:v9];
    v5 = v9;
  }

  _objc_release_x1(v4, v5);
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

- (void)_endSendingWithMessageSender:(id)a3 replyMessage:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  numberOfActiveMessageSenders = self->_numberOfActiveMessageSenders;
  if (numberOfActiveMessageSenders)
  {
    self->_numberOfActiveMessageSenders = numberOfActiveMessageSenders - 1;
  }

  if (self->_completion)
  {
    [(ADDeviceSyncMessageSendingContext *)self _addError:v9];
    if (v8)
    {
      [(ADDeviceSyncMessageSendingContext *)self _finalizeWithResponseMessage:v8];
    }

    else if (!self->_numberOfActiveMessageSenders)
    {
      v11 = [AFError errorWithCode:2405 description:@"Message sending failed." underlyingErrors:self->_errors];
      [(ADDeviceSyncMessageSendingContext *)self _finalizeWithError:v11];
    }
  }
}

- (void)_beginSendingWithMessageSender:(id)a3
{
  numberOfActiveMessageSenders = self->_numberOfActiveMessageSenders;
  if (!numberOfActiveMessageSenders)
  {
    [(AFWatchdogTimer *)self->_watchdogTimer start];
    numberOfActiveMessageSenders = self->_numberOfActiveMessageSenders;
  }

  self->_numberOfActiveMessageSenders = numberOfActiveMessageSenders + 1;
}

- (void)endSendingWithMessageSender:(id)a3 replyMessage:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012A1B4;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)beginSendingWithMessageSender:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012A25C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (ADDeviceSyncMessageSendingContext)initWithQueue:(id)a3 deviceIdentifier:(id)a4 timeoutDuration:(double)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = ADDeviceSyncMessageSendingContext;
  v14 = [(ADDeviceSyncMessageSendingContext *)&v28 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a3);
    v16 = [v12 copy];
    deviceIdentifier = v15->_deviceIdentifier;
    v15->_deviceIdentifier = v16;

    v18 = objc_retainBlock(v13);
    completion = v15->_completion;
    v15->_completion = v18;

    if (a5 > 0.0)
    {
      objc_initWeak(&location, v15);
      v20 = [AFWatchdogTimer alloc];
      queue = v15->_queue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10012A40C;
      v25[3] = &unk_10051B5F0;
      objc_copyWeak(&v26, &location);
      v22 = [v20 initWithTimeoutInterval:queue onQueue:v25 timeoutHandler:a5];
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