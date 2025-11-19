@interface AVInputContextDestinationChange
- (AVInputContextDestinationChange)init;
- (id)description;
- (int64_t)status;
- (void)_setStatus:(int64_t)a3;
- (void)changeToTerminalStatusBasedOnInputRouteChangeEndedReason:(__CFString *)a3;
- (void)changeToTerminalStatusBasedOnInputRouteConfigUpdatedReason:(__CFString *)a3;
- (void)dealloc;
@end

@implementation AVInputContextDestinationChange

- (void)changeToTerminalStatusBasedOnInputRouteChangeEndedReason:(__CFString *)a3
{
  v4 = *MEMORY[0x1E69AF450];
  if (FigCFEqual())
  {

    [(AVInputContextDestinationChange *)self markAsFinished];
  }

  else
  {
    v5 = *MEMORY[0x1E69AF448];
    FigCFEqual();

    [(AVInputContextDestinationChange *)self markAsFailed];
  }
}

- (void)changeToTerminalStatusBasedOnInputRouteConfigUpdatedReason:(__CFString *)a3
{
  v4 = *MEMORY[0x1E69AF3E8];
  if (FigCFEqual() || (v5 = *MEMORY[0x1E69AF3D0], !FigCFEqual()) && ((v6 = *MEMORY[0x1E69AF3E0], FigCFEqual()) || (v7 = *MEMORY[0x1E69AF3C8], FigCFEqual())))
  {

    [(AVInputContextDestinationChange *)self markAsFinished];
  }

  else
  {

    [(AVInputContextDestinationChange *)self markAsFailed];
  }
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    ivarAccessQueue = ivars->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      ivars = self->_ivars;
    }
  }

  v5.receiver = self;
  v5.super_class = AVInputContextDestinationChange;
  [(AVInputContextDestinationChange *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, status=%d>", NSStringFromClass(v4), self, -[AVInputContextDestinationChange status](self, "status")];
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVInputContextDestinationChange_status__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setStatus:(int64_t)a3
{
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVInputContextDestinationChange__setStatus___block_invoke;
  v4[3] = &unk_1E794ED50;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (AVInputContextDestinationChange)init
{
  v6.receiver = self;
  v6.super_class = AVInputContextDestinationChange;
  v2 = [(AVInputContextDestinationChange *)&v6 init];
  if (v2 && (v3 = objc_alloc_init(AVInputContextDestinationChangeInternal), (v2->_ivars = v3) != 0))
  {
    v2->_ivars->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.inputcontext.destinationchange");
    v2->_ivars->status = 0;
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end