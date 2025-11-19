@interface AVOutputContextDestinationChange
- (AVOutputContextDestinationChange)init;
- (NSString)cancellationReason;
- (id)description;
- (int64_t)status;
- (void)_setStatus:(int64_t)a3 cancellationReason:(id)a4;
- (void)changeToTerminalStatusBasedOnRouteChangeEndedReason:(__CFString *)a3;
- (void)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:(__CFString *)a3;
- (void)dealloc;
@end

@implementation AVOutputContextDestinationChange

- (void)changeToTerminalStatusBasedOnRouteChangeEndedReason:(__CFString *)a3
{
  v4 = *MEMORY[0x1E69AF450];
  if (FigCFEqual())
  {

    [(AVOutputContextDestinationChange *)self markAsFinished];
    return;
  }

  v5 = *MEMORY[0x1E69AF448];
  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  v6 = *MEMORY[0x1E69AF460];
  if (!FigCFEqual())
  {
    v9 = *MEMORY[0x1E69AF458];
    if (FigCFEqual())
    {
      v8 = @"AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped";
      v7 = self;
      goto LABEL_13;
    }

    v10 = *MEMORY[0x1E69AF440];
    if (!FigCFEqual())
    {
LABEL_6:

      [(AVOutputContextDestinationChange *)self markAsFailed];
      return;
    }
  }

  v7 = self;
  v8 = 0;
LABEL_13:

  [(AVOutputContextDestinationChange *)v7 markAsCancelledWithReason:v8];
}

- (void)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:(__CFString *)a3
{
  v4 = *MEMORY[0x1E69AF3E8];
  if (FigCFEqual())
  {
LABEL_2:

    [(AVOutputContextDestinationChange *)self markAsFinished];
    return;
  }

  v5 = *MEMORY[0x1E69AF3D0];
  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  v6 = *MEMORY[0x1E69AF400];
  if (FigCFEqual())
  {
    v7 = self;
    v8 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E69AF3F8];
    if (!FigCFEqual())
    {
      v10 = *MEMORY[0x1E69AF3E0];
      if (FigCFEqual())
      {
        goto LABEL_2;
      }

      v11 = *MEMORY[0x1E69AF3C8];
      if (FigCFEqual())
      {
        goto LABEL_2;
      }

      v12 = *MEMORY[0x1E69AF3C0];
      if (FigCFEqual())
      {
        goto LABEL_2;
      }

LABEL_6:

      [(AVOutputContextDestinationChange *)self markAsFailed];
      return;
    }

    v8 = @"AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped";
    v7 = self;
  }

  [(AVOutputContextDestinationChange *)v7 markAsCancelledWithReason:v8];
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

    ivars = self->_ivars;
  }

  v5.receiver = self;
  v5.super_class = AVOutputContextDestinationChange;
  [(AVOutputContextDestinationChange *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, status=%d, cancellationReason=%@>", NSStringFromClass(v4), self, -[AVOutputContextDestinationChange status](self, "status"), -[AVOutputContextDestinationChange cancellationReason](self, "cancellationReason")];
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
  v5[2] = __42__AVOutputContextDestinationChange_status__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)cancellationReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVOutputContextDestinationChange_cancellationReason__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__AVOutputContextDestinationChange_cancellationReason__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 24) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setStatus:(int64_t)a3 cancellationReason:(id)a4
{
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVOutputContextDestinationChange__setStatus_cancellationReason___block_invoke;
  block[3] = &unk_1E794E908;
  block[5] = a4;
  block[6] = a3;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
}

uint64_t __66__AVOutputContextDestinationChange__setStatus_cancellationReason___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 16) = *(a1 + 48);
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (AVOutputContextDestinationChange)init
{
  v8.receiver = self;
  v8.super_class = AVOutputContextDestinationChange;
  v2 = [(AVOutputContextDestinationChange *)&v8 init];
  if (v2 && (v3 = objc_alloc_init(AVOutputContextDestinationChangeInternal), (v2->_ivars = v3) != 0))
  {
    v4 = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputcontext.destinationchange");
    OUTLINED_FUNCTION_0_3(v4);
    *(v5 + 16) = 0;
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end