@interface AVCaptureInput
- (id)initSubclass;
- (void)attachToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)performFigCaptureSessionOperationSafelyUsingBlock:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation AVCaptureInput

- (id)initSubclass
{
  v5.receiver = self;
  v5.super_class = AVCaptureInput;
  v2 = [(AVCaptureInput *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureInputInternal);
    v2->_inputInternal = v3;
    if (!v3)
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureInput;
  [(AVCaptureInput *)&v3 dealloc];
}

- (void)setSession:(id)a3
{
  inputInternal = self->_inputInternal;
  if (inputInternal->session != a3)
  {
    v6 = [a3 isEqual:?];
    inputInternal = self->_inputInternal;
    if ((v6 & 1) == 0)
    {
      v7 = [(AVCaptureSession *)inputInternal->session isRunning];
      inputInternal = self->_inputInternal;
      if (!v7)
      {
        v8 = [(AVCaptureSession *)inputInternal->session isBeingConfigured];
        inputInternal = self->_inputInternal;
        if (!v8)
        {
          if (inputInternal->figCaptureSession)
          {
            [(AVCaptureInput *)self detachFromFigCaptureSession:?];
            inputInternal = self->_inputInternal;
          }
        }
      }
    }
  }

  inputInternal->session = a3;
}

- (void)attachToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  figCaptureSessionSyncQueue = self->_inputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AVCaptureInput_attachToFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

const void *__44__AVCaptureInput_attachToFigCaptureSession___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (result != v4)
  {
    if (v4)
    {
      __44__AVCaptureInput_attachToFigCaptureSession___block_invoke_cold_1();
    }

    *(v3 + 24) = result;
    if (result)
    {
      CFRetain(result);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 attachSafelyToFigCaptureSession:v6];
  }

  return result;
}

- (void)detachFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  figCaptureSessionSyncQueue = self->_inputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVCaptureInput_detachFromFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

const void *__46__AVCaptureInput_detachFromFigCaptureSession___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    if (*(a1 + 40) != result)
    {
      __46__AVCaptureInput_detachFromFigCaptureSession___block_invoke_cold_1();
    }

    CFRelease(result);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 detachSafelyFromFigCaptureSession:v4];
  }

  return result;
}

- (void)performFigCaptureSessionOperationSafelyUsingBlock:(id)a3
{
  figCaptureSessionSyncQueue = self->_inputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVCaptureInput_performFigCaptureSessionOperationSafelyUsingBlock___block_invoke;
  v4[3] = &unk_1E786F078;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

@end