@interface APSKStreamVideo
- (APSKStreamVideo)initWithDelegate:(id)delegate delegateQueue:(id)queue options:(id)options;
- (BOOL)active;
- (int)displayHeight;
- (int)displayRefreshRate;
- (int)displayWidth;
- (int)enqueueFrame:(__CVBuffer *)frame forTime:(int64_t)time;
- (void)setDisplayWidth:(int)width height:(int)height refreshRate:(int)rate;
- (void)setError:(int)error;
- (void)setFrameSender:(id)sender;
@end

@implementation APSKStreamVideo

- (APSKStreamVideo)initWithDelegate:(id)delegate delegateQueue:(id)queue options:(id)options
{
  delegateCopy = delegate;
  queueCopy = queue;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = APSKStreamVideo;
  v11 = [(APSKStreamVideo *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_delegateQueue, queue);
    objc_storeStrong(&v12->_options, options);
    objc_storeWeak(&v12->_frameSender, 0);
    v13 = dispatch_queue_create("com.apple.apskstreamvideo.stateq", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    WeakRetained = objc_loadWeakRetained(&v12->_delegate);
    if (WeakRetained)
    {
      delegateQueue = v12->_delegateQueue;

      if (!delegateQueue)
      {
        v17 = dispatch_queue_create("com.apple.apskstreamvideo.delegateq", 0);
        v18 = v12->_delegateQueue;
        v12->_delegateQueue = v17;
      }
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      [APSKStreamVideo initWithDelegate:delegateQueue:options:];
    }
  }

  return v12;
}

- (int)enqueueFrame:(__CVBuffer *)frame forTime:(int64_t)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__APSKStreamVideo_enqueueFrame_forTime___block_invoke;
  v10[3] = &unk_278C65940;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(queue, v10);
  v7 = v12[5];
  if (v7)
  {
    v8 = [v7 sendFrame:frame forTime:time];
  }

  else
  {
    v8 = -6709;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __40__APSKStreamVideo_enqueueFrame_forTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)active
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__APSKStreamVideo_active__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __25__APSKStreamVideo_active__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != 0;
}

- (int)displayWidth
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__APSKStreamVideo_displayWidth__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)displayHeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__APSKStreamVideo_displayHeight__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)displayRefreshRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__APSKStreamVideo_displayRefreshRate__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setFrameSender:(id)sender
{
  senderCopy = sender;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__APSKStreamVideo_setFrameSender___block_invoke;
  v7[3] = &unk_278C65990;
  v8 = senderCopy;
  selfCopy = self;
  v6 = senderCopy;
  dispatch_sync(queue, v7);
}

void __34__APSKStreamVideo_setFrameSender___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v5 = WeakRetained;
  if (v3)
  {

    if (v5)
    {
      __34__APSKStreamVideo_setFrameSender___block_invoke_cold_1();
      return;
    }

    objc_storeWeak((*(a1 + 40) + 40), *(a1 + 32));
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      __34__APSKStreamVideo_setFrameSender___block_invoke_cold_2(v2);
    }

    v6 = objc_loadWeakRetained((*v2 + 8));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = *v2;
      v9 = *(*v2 + 16);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__APSKStreamVideo_setFrameSender___block_invoke_2;
      v15[3] = &unk_278C65968;
      v15[4] = v8;
      v10 = v15;
LABEL_14:
      dispatch_async(v9, v10);
    }
  }

  else
  {

    if (v5)
    {
      objc_storeWeak((*v2 + 40), 0);
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __34__APSKStreamVideo_setFrameSender___block_invoke_cold_3(v2);
      }

      v11 = objc_loadWeakRetained((*v2 + 8));
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = *v2;
        v9 = *(*v2 + 16);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __34__APSKStreamVideo_setFrameSender___block_invoke_3;
        v14[3] = &unk_278C65968;
        v14[4] = v13;
        v10 = v14;
        goto LABEL_14;
      }
    }
  }
}

void __34__APSKStreamVideo_setFrameSender___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained videoStreamDidStart:*(a1 + 32)];
}

void __34__APSKStreamVideo_setFrameSender___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained videoStreamDidStop:*(a1 + 32)];
}

- (void)setError:(int)error
{
  if (error)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__APSKStreamVideo_setError___block_invoke;
      block[3] = &unk_278C659B8;
      block[4] = self;
      errorCopy = error;
      dispatch_async(delegateQueue, block);
    }
  }
}

void __28__APSKStreamVideo_setError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained videoStreamDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)setDisplayWidth:(int)width height:(int)height refreshRate:(int)rate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__APSKStreamVideo_setDisplayWidth_height_refreshRate___block_invoke;
  block[3] = &unk_278C659E0;
  block[4] = self;
  widthCopy = width;
  heightCopy = height;
  rateCopy = rate;
  dispatch_sync(queue, block);
}

void __54__APSKStreamVideo_setDisplayWidth_height_refreshRate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[12] != v3 || v2[13] != *(a1 + 44) || v2[14] != *(a1 + 48))
  {
    v2[12] = v3;
    *(*(a1 + 32) + 52) = *(a1 + 44);
    *(*(a1 + 32) + 56) = *(a1 + 48);
    if (gLogCategory_AirPlaySenderKit > 50)
    {
      goto LABEL_8;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_8:
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v5 = objc_opt_respondsToSelector();

        if (v5)
        {
          v6 = *(a1 + 32);
          v7 = *(v6 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__APSKStreamVideo_setDisplayWidth_height_refreshRate___block_invoke_2;
          block[3] = &unk_278C65968;
          block[4] = v6;
          dispatch_async(v7, block);
        }

        return;
      }

      v8 = *(a1 + 48);
    }

    v11 = *(a1 + 44);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    LogPrintF();
    goto LABEL_8;
  }
}

void __54__APSKStreamVideo_setDisplayWidth_height_refreshRate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained videoStreamDisplayInfoDidUpdate:*(a1 + 32)];
}

@end