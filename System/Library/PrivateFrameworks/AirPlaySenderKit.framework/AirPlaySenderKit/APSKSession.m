@interface APSKSession
- (APSKSession)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (BOOL)active;
- (int)addAudioStream:(id)a3;
- (int)addVideoStream:(id)a3;
- (int)localSendAudioData:(id)a3;
- (int)localSendAudioDataWithTimestamps:(id)a3 forHostTime:(id *)a4 forSampleTime:(unint64_t)a5 forDiscontinuity:(BOOL)a6;
- (int)localSendFrame:(__CVBuffer *)a3 forTime:(int64_t)a4;
- (int)localSetAuthString:(id)a3;
- (int)localStartToDestination:(id)a3 withOptions:(id)a4;
- (int)remoteSendAudioData:(id)a3;
- (int)remoteSendAudioDataWithTimestamps:(id)a3 forHostTime:(id *)a4 forSampleTime:(unint64_t)a5 forDiscontinuity:(BOOL)a6;
- (int)remoteSendFrame:(__CVBuffer *)a3 forTime:(int64_t)a4;
- (int)remoteSetAuthString:(id)a3;
- (int)remoteStartToDestination:(id)a3 withOptions:(id)a4;
- (int)sendAudioData:(id)a3;
- (int)sendAudioDataWithTimestamps:(id)a3 forHostTime:(id *)a4 forSampleTime:(unint64_t)a5 forDiscontinuity:(BOOL)a6;
- (int)sendFrame:(__CVBuffer *)a3 forTime:(int64_t)a4;
- (int)setAuthString:(id)a3;
- (unsigned)usageModes;
- (void)dealloc;
- (void)handleAuthRequired:(int)a3;
- (void)handleFailure:(int)a3;
- (void)handleStartCompletion:(int)a3;
- (void)handleUpdatedDisplayWidth:(int)a3 height:(int)a4 refreshRate:(int)a5;
- (void)handleVideoStreamErrorNotification:(int)a3;
- (void)localStop;
- (void)remoteStop;
- (void)startToDestination:(id)a3 withOptions:(id)a4;
- (void)stop;
@end

@implementation APSKSession

- (APSKSession)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = APSKSession;
  v8 = [(APSKSession *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_delegateQueue, a4);
    v9->_state = 0;
    v9->_remote = 1;
    v10 = dispatch_queue_create("com.apple.apsksession.stateq", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_delegate);
    if (WeakRetained)
    {
      delegateQueue = v9->_delegateQueue;

      if (!delegateQueue)
      {
        v14 = dispatch_queue_create("com.apple.apsksession.delegateq", 0);
        v15 = v9->_delegateQueue;
        v9->_delegateQueue = v14;
      }
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      [APSKSession initWithDelegate:delegateQueue:];
    }
  }

  return v9;
}

- (void)dealloc
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    [APSKSession dealloc];
  }

  [(APSKSession *)self stop];
  v3.receiver = self;
  v3.super_class = APSKSession;
  [(APSKSession *)&v3 dealloc];
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
  v5[2] = __21__APSKSession_active__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)addVideoStream:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__APSKSession_addVideoStream___block_invoke;
  block[3] = &unk_278C65A10;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __30__APSKSession_addVideoStream___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    __30__APSKSession_addVideoStream___block_invoke_cold_1(a1);
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = (v2 + 32);
    if (v5)
    {
      __30__APSKSession_addVideoStream___block_invoke_cold_2(a1);
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      objc_storeStrong(v4, v7);
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __30__APSKSession_addVideoStream___block_invoke_cold_3(v3, v6);
      }
    }
  }
}

- (int)addAudioStream:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__APSKSession_addAudioStream___block_invoke;
  block[3] = &unk_278C65A10;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __30__APSKSession_addAudioStream___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    __30__APSKSession_addAudioStream___block_invoke_cold_1(a1);
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = (v2 + 40);
    if (v5)
    {
      __30__APSKSession_addAudioStream___block_invoke_cold_2(a1);
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      objc_storeStrong(v4, v7);
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __30__APSKSession_addAudioStream___block_invoke_cold_3(v3, v6);
      }
    }
  }
}

- (int)setAuthString:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (gLogCategory_AirPlaySenderKit <= 30 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__APSKSession_setAuthString___block_invoke;
  block[3] = &unk_278C65A38;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __29__APSKSession_setAuthString___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  if (v3 == 1)
  {
    v6 = a1[5];
    if (*(v2 + 60) == 1)
    {
      v7 = [v2 remoteSetAuthString:v6];
    }

    else
    {
      v7 = [v2 localSetAuthString:v6];
    }

    *(*(a1[6] + 8) + 24) = v7;
  }

  else if (v3)
  {
    *(*(a1[6] + 8) + 24) = -6709;
  }

  else
  {
    v4 = a1[5];
    v5 = (v2 + 48);

    objc_storeStrong(v5, v4);
  }
}

- (void)startToDestination:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__APSKSession_startToDestination_withOptions___block_invoke;
  block[3] = &unk_278C65A60;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

void __46__APSKSession_startToDestination_withOptions___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 56))
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit != -1)
      {
LABEL_4:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v15 = *v1;
        goto LABEL_4;
      }
    }
  }

  else
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:@"_UseLocal"];
    *(*(a1 + 32) + 60) = [v3 BOOLValue] ^ 1;

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = (a1 + 48);
    v6 = v8;
    if (v4[60] == 1)
    {
      v9 = [v4 remoteStartToDestination:v6 withOptions:v5];
    }

    else
    {
      v9 = [v4 localStartToDestination:v6 withOptions:v5];
    }

    v10 = v9;
    *(*v1 + 56) = 1;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      __46__APSKSession_startToDestination_withOptions___block_invoke_cold_1(v1, v7);
      if (!v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((*v1 + 8));
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = *v1;
      v14 = *(*v1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__APSKSession_startToDestination_withOptions___block_invoke_2;
      block[3] = &unk_278C659B8;
      block[4] = v13;
      v17 = v10;
      dispatch_async(v14, block);
    }
  }
}

void __46__APSKSession_startToDestination_withOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__APSKSession_stop__block_invoke;
  block[3] = &unk_278C65968;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __19__APSKSession_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setFrameSender:0];
  [*(*(a1 + 32) + 40) setAudioSender:0];
  v2 = *(a1 + 32);
  if (v2[60] == 1)
  {
    result = [v2 remoteStop];
  }

  else
  {
    result = [v2 localStop];
  }

  v4 = *(a1 + 32);
  if (*(v4 + 56))
  {
    if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1 || (result = _LogCategory_Initialize(), v4 = *(a1 + 32), result))
      {
        result = LogPrintF();
        v4 = *(a1 + 32);
      }
    }

    *(v4 + 56) = 0;
  }

  return result;
}

- (int)sendFrame:(__CVBuffer *)a3 forTime:(int64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__APSKSession_sendFrame_forTime___block_invoke;
  v7[3] = &unk_278C65A88;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(queue, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __33__APSKSession_sendFrame_forTime___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 32))
  {
    return __33__APSKSession_sendFrame_forTime___block_invoke_cold_2(a1);
  }

  if (*(v2 + 56) != 2)
  {
    return __33__APSKSession_sendFrame_forTime___block_invoke_cold_1(a1);
  }

  v3 = a1[6];
  v4 = a1[7];
  if (*(v2 + 60) == 1)
  {

    return [v2 remoteSendFrame:v3 forTime:v4];
  }

  else
  {

    return [v2 localSendFrame:v3 forTime:v4];
  }
}

- (int)sendAudioData:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__APSKSession_sendAudioData___block_invoke;
  block[3] = &unk_278C65A10;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __29__APSKSession_sendAudioData___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 40))
  {
    return __29__APSKSession_sendAudioData___block_invoke_cold_2(a1);
  }

  if (*(v2 + 56) != 2)
  {
    return __29__APSKSession_sendAudioData___block_invoke_cold_1(a1);
  }

  v3 = a1[5];
  if (*(v2 + 60) == 1)
  {
    result = [v2 remoteSendAudioData:v3];
  }

  else
  {
    result = [v2 localSendAudioData:v3];
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (int)sendAudioDataWithTimestamps:(id)a3 forHostTime:(id *)a4 forSampleTime:(unint64_t)a5 forDiscontinuity:(BOOL)a6
{
  v10 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke;
  v14[3] = &unk_278C65AB0;
  v14[4] = self;
  v15 = v10;
  v18 = *a4;
  v16 = &v20;
  v17 = a5;
  v19 = a6;
  v12 = v10;
  dispatch_sync(queue, v14);
  LODWORD(a5) = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return a5;
}

uint64_t __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    return __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_cold_2(a1);
  }

  if (*(v2 + 56) != 2)
  {
    return __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 88);
  if (*(v2 + 60) == 1)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    result = [v2 remoteSendAudioDataWithTimestamps:v3 forHostTime:&v7 forSampleTime:v4 forDiscontinuity:v5];
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    result = [v2 localSendAudioDataWithTimestamps:v3 forHostTime:&v7 forSampleTime:v4 forDiscontinuity:v5];
  }

  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unsigned)usageModes
{
  videoStream = self->_videoStream;
  v3 = videoStream == 0;
  v4 = videoStream != 0;
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (self->_audioStream)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)handleAuthRequired:(int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = a3 == 1;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__APSKSession_handleAuthRequired___block_invoke;
    block[3] = &unk_278C65AD8;
    block[4] = self;
    block[5] = v7;
    dispatch_async(delegateQueue, block);
  }
}

void __34__APSKSession_handleAuthRequired___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionAuthRequired:*(a1 + 32) forAuthType:*(a1 + 40)];
}

- (void)handleStartCompletion:(int)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__APSKSession_handleStartCompletion___block_invoke;
  v4[3] = &unk_278C659B8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

void __37__APSKSession_handleStartCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56) != 1)
  {
    if (gLogCategory_AirPlaySenderKit > 50)
    {
      return;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v3 = *(*(a1 + 32) + 56);
    }

    v13 = *(a1 + 40);
    LogPrintF();
    return;
  }

  if (*(a1 + 40))
  {
    if (gLogCategory_AirPlaySenderKit > 100)
    {
      goto LABEL_15;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
LABEL_15:
        WeakRetained = objc_loadWeakRetained((v2 + 8));
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = *(v7 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __37__APSKSession_handleStartCompletion___block_invoke_2;
          block[3] = &unk_278C659B8;
          block[4] = v7;
          v15 = *(a1 + 40);
          dispatch_async(v8, block);
        }

        return;
      }

      v11 = *(a1 + 40);
    }

    LogPrintF();
    v2 = *(a1 + 32);
    goto LABEL_15;
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (v9 = _LogCategory_Initialize(), v2 = *(a1 + 32), v9))
    {
      v12 = v2;
      LogPrintF();
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 56) = 2;
  [*(*(a1 + 32) + 40) setAudioSender:v12];
  v10 = *(*(a1 + 32) + 32);

  [v10 setFrameSender:?];
}

void __37__APSKSession_handleStartCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)handleFailure:(int)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__APSKSession_handleFailure___block_invoke;
  v4[3] = &unk_278C659B8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

void __29__APSKSession_handleFailure___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    if (gLogCategory_AirPlaySenderKit > 50)
    {
      return;
    }

    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v8 = *(*(a1 + 32) + 56);
    }

    v10 = *(a1 + 40);
    LogPrintF();
    return;
  }

  if (gLogCategory_AirPlaySenderKit <= 100)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
    {
      v9 = *(a1 + 40);
      LogPrintF();
      v2 = *(a1 + 32);
    }
  }

  WeakRetained = objc_loadWeakRetained((v2 + 8));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__APSKSession_handleFailure___block_invoke_2;
    block[3] = &unk_278C659B8;
    block[4] = v6;
    v12 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

void __29__APSKSession_handleFailure___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

- (void)handleUpdatedDisplayWidth:(int)a3 height:(int)a4 refreshRate:(int)a5
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__APSKSession_handleUpdatedDisplayWidth_height_refreshRate___block_invoke;
  block[3] = &unk_278C659E0;
  block[4] = self;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_sync(queue, block);
}

- (void)handleVideoStreamErrorNotification:(int)a3
{
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__APSKSession_handleVideoStreamErrorNotification___block_invoke;
  block[3] = &unk_278C659B8;
  block[4] = self;
  v7 = a3;
  dispatch_sync(queue, block);
}

- (int)localSetAuthString:(id)a3
{
  v4 = a3;
  sender = self->_sender;
  if (sender)
  {
    v6 = APMediaSenderSetAuthString(sender, v4);
    if (v6)
    {
      [APSKSession localSetAuthString:];
    }
  }

  else
  {
    [APSKSession localSetAuthString:];
    v6 = -6709;
  }

  return v6;
}

- (int)localStartToDestination:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSKSession *)self usageModes];
  v9 = [v7 objectForKeyedSubscript:@"APSKSessionOptionsKeyTimeoutSeconds"];
  v10 = [v9 intValue];

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke;
  aBlock[3] = &unk_278C65B00;
  objc_copyWeak(&v41, location);
  v31 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_2;
  v38[3] = &unk_278C65B00;
  objc_copyWeak(&v39, location);
  v11 = _Block_copy(v38);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_3;
  v36[3] = &unk_278C65B00;
  objc_copyWeak(&v37, location);
  v12 = _Block_copy(v36);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_4;
  v34[3] = &unk_278C65B28;
  objc_copyWeak(&v35, location);
  v30 = _Block_copy(v34);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__APSKSession_localStartToDestination_withOptions___block_invoke_5;
  v32[3] = &unk_278C65B50;
  objc_copyWeak(&v33, location);
  v13 = _Block_copy(v32);
  if (!v8)
  {
    updated = -6705;
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (self->_sender)
  {
    updated = -6709;
    APSLogErrorAt();
    goto LABEL_27;
  }

  sender = APMediaSenderCreate();
  self->_sender = sender;
  if (!sender)
  {
    updated = -6762;
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (v15 = _LogCategory_Initialize(), sender = self->_sender, v15))
    {
      v28 = self;
      v29 = sender;
      LogPrintF();
      sender = self->_sender;
    }
  }

  passcode = self->_passcode;
  if (!passcode)
  {
    goto LABEL_11;
  }

  updated = APMediaSenderSetAuthString(sender, passcode);
  if (!updated)
  {
    sender = self->_sender;
LABEL_11:
    updated = APMediaSenderSetAuthBlock(sender, v31);
    if (!updated)
    {
      updated = APMediaSenderSetFailureBlock(self->_sender, v12);
      if (!updated)
      {
        audioStream = self->_audioStream;
        if (!audioStream || (updated = APMediaSenderSetAudioDescription(self->_sender, [(APSKStreamAudio *)audioStream asbd], [(APSKStreamAudio *)self->_audioStream useVideoLatency])) == 0)
        {
          if (!self->_videoStream)
          {
LABEL_21:
            APMediaSenderStart(self->_sender, [v6 value], objc_msgSend(v6, "destinationType"), v8, v10, v11);
            updated = 0;
            goto LABEL_22;
          }

          updated = APMediaSenderSetDisplayInfoUpdateBlock(self->_sender, v30);
          if (!updated)
          {
            v19 = self->_sender;
            v20 = [v7 objectForKeyedSubscript:@"_VideoOverrides"];
            updated = APMediaSenderSetVideoOverrides(v19, v20);

            if (!updated)
            {
              v21 = [v7 objectForKeyedSubscript:@"_UseVideoPassthrough"];
              v22 = [v21 BOOLValue];

              if (!v22 || (updated = APMediaSenderSetVideoPassthroughMode(self->_sender)) == 0)
              {
                v23 = [MEMORY[0x277CCAB98] defaultCenter];
                v24 = [v23 addObserverForName:0x285143258 object:self->_sender queue:0 usingBlock:v13];
                senderNotifObserver = self->_senderNotifObserver;
                self->_senderNotifObserver = v24;

                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  APSLogErrorAt();
LABEL_27:
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v27 = self->_sender;
  if (v27)
  {
    CFRelease(v27);
    self->_sender = 0;
  }

LABEL_22:

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);

  return updated;
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAuthRequired:a2];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStartCompletion:a2];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFailure:a2];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedDisplayWidth:a2 height:a3 refreshRate:a4];
}

void __51__APSKSession_localStartToDestination_withOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:0x285143278];
  v6 = [v5 intValue];

  [WeakRetained handleVideoStreamErrorNotification:v6];
}

- (void)localStop
{
  if (self->_senderNotifObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_senderNotifObserver];

    senderNotifObserver = self->_senderNotifObserver;
    self->_senderNotifObserver = 0;
  }

  sender = self->_sender;
  if (sender)
  {
    APMediaSenderStop(sender);
    v6 = self->_sender;
    if (v6)
    {
      CFRelease(v6);
      self->_sender = 0;
    }
  }
}

- (int)localSendFrame:(__CVBuffer *)a3 forTime:(int64_t)a4
{
  sender = self->_sender;
  if (sender)
  {
    v5 = APMediaSenderSubmitPixelBuffer(sender, a3, a4);
    if (v5)
    {
      [APSKSession localSendFrame:forTime:];
    }
  }

  else
  {
    [APSKSession localSendFrame:forTime:];
    return -6709;
  }

  return v5;
}

- (int)localSendAudioData:(id)a3
{
  v4 = a3;
  sender = self->_sender;
  if (sender)
  {
    v6 = APMediaSenderEnqueueAudioData(sender, v4);
    if (v6)
    {
      [APSKSession localSendAudioData:];
    }
  }

  else
  {
    [APSKSession localSendAudioData:];
    v6 = -6709;
  }

  return v6;
}

- (int)localSendAudioDataWithTimestamps:(id)a3 forHostTime:(id *)a4 forSampleTime:(unint64_t)a5 forDiscontinuity:(BOOL)a6
{
  v10 = a3;
  sender = self->_sender;
  if (sender)
  {
    v14 = *&a4->var0;
    var3 = a4->var3;
    v12 = APMediaSenderEnqueueAudioDataWithTimestamps(sender, v10, &v14, a5, a6);
    if (v12)
    {
      [APSKSession localSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
    }
  }

  else
  {
    [APSKSession localSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
    v12 = -6709;
  }

  return v12;
}

- (int)remoteSetAuthString:(id)a3
{
  v4 = a3;
  if (self->_objectID && self->_client)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    if (v5)
    {
      [APSKSession remoteSetAuthString:];
    }

    else
    {
      if (v4)
      {
        xpc_dictionary_set_string(v6, kAPSKServiceMsgParamC2S_AuthString, [v4 UTF8String]);
      }

      client = self->_client;
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v5)
      {
        [APSKSession remoteSetAuthString:];
      }
    }
  }

  else
  {
    [APSKSession remoteSetAuthString:];
    v6 = 0;
    v5 = -6709;
  }

  FigXPCRelease();

  return v5;
}

- (int)remoteStartToDestination:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSKSession *)self usageModes];
  v9 = [v7 objectForKeyedSubscript:@"APSKSessionOptionsKeyTimeoutSeconds"];
  v10 = [v9 intValue];

  if (!v8)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v16 = 0;
    v13 = 0;
    v12 = -6705;
    goto LABEL_48;
  }

  if (self->_objectID)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v16 = 0;
    v13 = 0;
    v12 = -6709;
    goto LABEL_48;
  }

  os_unfair_lock_lock(&sRemoteClientLock);
  if (!sRemoteClient)
  {
    if (FigXPCRemoteClientCreateWithXPCService())
    {
      if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        [APSKSession remoteStartToDestination:withOptions:];
      }
    }

    else if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      [APSKSession remoteStartToDestination:withOptions:];
    }
  }

  os_unfair_lock_unlock(&sRemoteClientLock);
  v11 = sRemoteClient;
  self->_client = sRemoteClient;
  if (!v11)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v16 = 0;
    v13 = 0;
LABEL_42:
    v12 = -6762;
    goto LABEL_48;
  }

  v12 = FigXPCCreateBasicMessage();
  v13 = 0;
  if (v12)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    v16 = 0;
    goto LABEL_48;
  }

  client = self->_client;
  v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  v15 = 0;
  v16 = v15;
  if (v12)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    goto LABEL_48;
  }

  uint64 = xpc_dictionary_get_uint64(v15, *MEMORY[0x277CC0990]);
  if (!uint64)
  {
    [APSKSession remoteStartToDestination:withOptions:];
    goto LABEL_42;
  }

  v18 = uint64;
  v19 = self->_client;
  v20 = FigXPCRemoteClientAssociateObject();
  if (v20)
  {
    v12 = v20;
    [APSKSession remoteStartToDestination:withOptions:];
  }

  else
  {
    self->_objectID = v18;
    FigXPCRelease();

    objectID = self->_objectID;
    v12 = FigXPCCreateBasicMessage();
    v13 = 0;
    if (v12)
    {
      [APSKSession remoteStartToDestination:withOptions:];
    }

    else
    {
      [v6 value];
      v22 = FigXPCMessageSetCFObject();
      if (v22)
      {
        v12 = v22;
        [APSKSession remoteStartToDestination:withOptions:];
      }

      else
      {
        xpc_dictionary_set_uint64(v13, kAPSKServiceMsgParamC2S_DestinationType, [v6 destinationType]);
        xpc_dictionary_set_uint64(v13, kAPSKServiceMsgParamC2S_UsageModes, v8);
        xpc_dictionary_set_uint64(v13, kAPSKServiceMsgParamC2S_TimeoutSecs, v10);
        passcode = self->_passcode;
        if (passcode)
        {
          xpc_dictionary_set_string(v13, kAPSKServiceMsgParamC2S_AuthString, [(NSString *)passcode UTF8String]);
        }

        audioStream = self->_audioStream;
        if (audioStream)
        {
          xpc_dictionary_set_data(v13, kAPSKServiceMsgParamC2S_ASBD, [(APSKStreamAudio *)audioStream asbd], 0x28uLL);
          xpc_dictionary_set_BOOL(v13, kAPSKServiceMsgParamC2S_UseVideoLatency, [(APSKStreamAudio *)self->_audioStream useVideoLatency]);
        }

        if (self->_videoStream)
        {
          v25 = [v7 objectForKeyedSubscript:@"_VideoOverrides"];

          if (v25)
          {
            v26 = FigXPCMessageSetCFDictionary();
            if (v26)
            {
              v12 = v26;
              [APSKSession remoteStartToDestination:withOptions:];
              goto LABEL_48;
            }
          }

          v27 = [v7 objectForKeyedSubscript:@"_UseVideoPassthrough"];
          v28 = [v27 BOOLValue];

          if (v28)
          {
            xpc_dictionary_set_BOOL(v13, kAPSKServiceMsgParamC2S_VideoPassthru, 1);
          }
        }

        v29 = self->_client;
        v30 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v30)
        {
          if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
          {
            v32 = self->_objectID;
            LogPrintF();
          }

          v12 = 0;
          goto LABEL_31;
        }

        v12 = v30;
        [APSKSession remoteStartToDestination:withOptions:];
      }
    }
  }

LABEL_48:
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_31:
  FigXPCRelease();
  FigXPCRelease();

  return v12;
}

- (int)remoteSendFrame:(__CVBuffer *)a3 forTime:(int64_t)a4
{
  if (self->_objectID && self->_client)
  {
    v12[1] = 0;
    v7 = FigXPCCreateBasicMessage();
    v8 = 0;
    if (v7)
    {
      [APSKSession remoteSendFrame:forTime:];
      v9 = 0;
    }

    else
    {
      v12[0] = 0;
      v7 = APSKServiceSerializeFrame(a3, a4, v12);
      v9 = v12[0];
      if (v7)
      {
        [APSKSession remoteSendFrame:forTime:];
      }

      else
      {
        xpc_dictionary_set_value(v8, kAPSKServiceMsgParamC2S_Frame, v9);
        client = self->_client;
        v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v7)
        {
          [APSKSession remoteSendFrame:forTime:];
        }
      }
    }
  }

  else
  {
    [APSKSession remoteSendFrame:forTime:];
    v8 = 0;
    v9 = 0;
    v7 = -6709;
  }

  FigXPCRelease();
  FigXPCRelease();

  return v7;
}

- (int)remoteSendAudioData:(id)a3
{
  v4 = a3;
  if (self->_objectID && self->_client)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    if (v5)
    {
      [APSKSession remoteSendAudioData:];
    }

    else
    {
      if (v4)
      {
        xpc_dictionary_set_data(v6, kAPSKServiceMsgParamC2S_AudioData, [v4 bytes], objc_msgSend(v4, "length"));
      }

      client = self->_client;
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v5)
      {
        [APSKSession remoteSendAudioData:];
      }
    }
  }

  else
  {
    [APSKSession remoteSendAudioData:];
    v6 = 0;
    v5 = -6709;
  }

  FigXPCRelease();

  return v5;
}

- (int)remoteSendAudioDataWithTimestamps:(id)a3 forHostTime:(id *)a4 forSampleTime:(unint64_t)a5 forDiscontinuity:(BOOL)a6
{
  v10 = a3;
  if (self->_objectID && self->_client)
  {
    v11 = FigXPCCreateBasicMessage();
    v12 = 0;
    if (v11)
    {
      [APSKSession remoteSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
    }

    else
    {
      if (v10)
      {
        xpc_dictionary_set_data(v12, kAPSKServiceMsgParamC2S_AudioData, [v10 bytes], objc_msgSend(v10, "length"));
        v16 = *&a4->var0;
        var3 = a4->var3;
        v13 = FigXPCMessageSetCMTime();
        if (v13)
        {
          v11 = v13;
          [APSKSession remoteSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
          goto LABEL_9;
        }

        xpc_dictionary_set_uint64(v12, kAPSKServiceMsgParamC2S_AudioSampleTime, a5);
        xpc_dictionary_set_BOOL(v12, kAPSKServiceMsgParamC2S_AudioDiscontinuity, a6);
      }

      client = self->_client;
      v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v11)
      {
        [APSKSession remoteSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
      }
    }
  }

  else
  {
    [APSKSession remoteSendAudioDataWithTimestamps:forHostTime:forSampleTime:forDiscontinuity:];
    v12 = 0;
    v11 = -6709;
  }

LABEL_9:
  FigXPCRelease();

  return v11;
}

- (void)remoteStop
{
  if (self->_objectID)
  {
    if (self->_client)
    {
      v3 = FigXPCCreateBasicMessage();
      v4 = 0;
      if (v3 || (client = self->_client, FigXPCRemoteClientSendSyncMessageCreatingReply()))
      {
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      v4 = 0;
    }

    if (self->_objectID && self->_client)
    {
      FigXPCRemoteClientDisassociateObject();
    }
  }

  else
  {
    v4 = 0;
  }

  self->_client = 0;
  self->_objectID = 0;
  FigXPCRelease();
}

uint64_t __30__APSKSession_addVideoStream___block_invoke_cold_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = -6719;
  v1 = *(*(*(a1 + 48) + 8) + 24);
  return OUTLINED_FUNCTION_1();
}

uint64_t __30__APSKSession_addVideoStream___block_invoke_cold_3(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return OUTLINED_FUNCTION_4();
}

uint64_t __30__APSKSession_addAudioStream___block_invoke_cold_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = -6719;
  v1 = *(*(*(a1 + 48) + 8) + 24);
  return OUTLINED_FUNCTION_1();
}

uint64_t __30__APSKSession_addAudioStream___block_invoke_cold_3(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return OUTLINED_FUNCTION_4();
}

uint64_t __46__APSKSession_startToDestination_withOptions___block_invoke_cold_1(uint64_t *a1, id *a2)
{
  v3 = *a1;
  [*a2 value];
  return OUTLINED_FUNCTION_4();
}

uint64_t __33__APSKSession_sendFrame_forTime___block_invoke_cold_1(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = -6709;
  v1 = *(*(*(a1 + 40) + 8) + 24);
  return OUTLINED_FUNCTION_1();
}

uint64_t __33__APSKSession_sendFrame_forTime___block_invoke_cold_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = -6705;
  v1 = *(*(*(a1 + 40) + 8) + 24);
  return OUTLINED_FUNCTION_1();
}

uint64_t __29__APSKSession_sendAudioData___block_invoke_cold_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = -6705;
  v1 = *(*(*(a1 + 48) + 8) + 24);
  return OUTLINED_FUNCTION_1();
}

uint64_t __86__APSKSession_sendAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_cold_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = -6705;
  v1 = *(*(*(a1 + 48) + 8) + 24);
  return OUTLINED_FUNCTION_1();
}

@end