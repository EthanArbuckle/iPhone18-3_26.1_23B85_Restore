@interface FigNeroLayer
- (FigNeroLayer)init;
- (int)_start;
- (int)start;
- (int)stop;
- (void)_dispatchNotification:(id)a3 value:(id)a4;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
@end

@implementation FigNeroLayer

- (FigNeroLayer)init
{
  v4.receiver = self;
  v4.super_class = FigNeroLayer;
  v2 = [(FigNeroLayer *)&v4 init];
  if (v2)
  {
    v2->_neroQueue = dispatch_queue_create("FigNeroLayer", 0);
  }

  return v2;
}

- (void)dealloc
{
  [(FigNeroLayer *)self stop];
  neroQueue = self->_neroQueue;
  if (neroQueue)
  {
    dispatch_release(neroQueue);
    self->_neroQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = FigNeroLayer;
  [(FigNeroLayer *)&v4 dealloc];
}

- (int)start
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  neroQueue = self->_neroQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__FigNeroLayer_start__block_invoke;
  v5[3] = &unk_1E7483AF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(neroQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __21__FigNeroLayer_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _start];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __20__FigNeroLayer_stop__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 56))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigBytePumpGetFigBaseObject(*(*(a1 + 32) + 56));
    if (v2)
    {
      v3 = v2;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v5 = v4(v3);
      }

      else
      {
        v5 = -12782;
      }
    }

    else
    {
      v5 = -12780;
    }

    *(*(*(a1 + 40) + 8) + 24) = v5;
    v6 = *(*(a1 + 32) + 56);
    if (v6)
    {
      CFRelease(v6);
      *(*(a1 + 32) + 56) = 0;
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FigNeroLayer;
  [(FigNeroLayer *)&v6 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  neroQueue = self->_neroQueue;
  if (neroQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__FigNeroLayer_setBounds___block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_sync(neroQueue, block);
  }
}

void __26__FigNeroLayer_setBounds___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7])
  {
    [v2 bounds];
    v10.width = v3;
    v10.height = v4;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v10);
    FigBytePumpGetFigBaseObject(*(*(a1 + 32) + 56));
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(v7, 0x1F0B31798, DictionaryRepresentation);
    }

    if (DictionaryRepresentation)
    {

      CFRelease(DictionaryRepresentation);
    }
  }
}

- (void)_dispatchNotification:(id)a3 value:(id)a4
{
  if ([a3 isEqualToString:{0x1F0B47BD8, a4}])
  {
    if (objc_opt_respondsToSelector())
    {
      neroDelegate = self->_neroDelegate;

      [(FigNeroLayerDelegate *)neroDelegate neroLayerDidConnect:self];
    }
  }

  else if (([a3 isEqualToString:0x1F0B47BF8] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", 0x1F0B4A0B8))
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = self->_neroDelegate;

      [(FigNeroLayerDelegate *)v7 neroLayerDidDisconnect:self];
    }
  }

  else if ([a3 isEqualToString:0x1F0B47BB8] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = self->_neroDelegate;

    [(FigNeroLayerDelegate *)v8 neroLayerDidReceiveFirstFrame:self];
  }
}

- (int)_start
{
  if (self->_neroid)
  {
    return 0;
  }

  result = FigNeroidCreateRemote(*MEMORY[0x1E695E480], &self->_neroid);
  if (!result)
  {
    FigBytePumpGetFigBaseObject(self->_neroid);
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, 0x1F0B47B58, self);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    neroid = self->_neroid;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {

      return v8(neroid);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (int)stop
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  neroQueue = self->_neroQueue;
  if (neroQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __20__FigNeroLayer_stop__block_invoke;
    v5[3] = &unk_1E7483BE0;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(neroQueue, v5);
    v3 = *(v7 + 6);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

@end