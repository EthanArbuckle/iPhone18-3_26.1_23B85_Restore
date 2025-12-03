@interface APSKStreamAudio
- (APSKStreamAudio)initWithAudioDescription:(const AudioStreamBasicDescription *)description delegate:(id)delegate delegateQueue:(id)queue options:(id)options;
- (BOOL)active;
- (BOOL)useVideoLatency;
- (id)enqueueAudioDataBlock;
- (int)enqueueAudioData:(id)data;
- (void)setAudioSender:(id)sender;
- (void)setUseVideoLatency:(BOOL)latency;
@end

@implementation APSKStreamAudio

- (APSKStreamAudio)initWithAudioDescription:(const AudioStreamBasicDescription *)description delegate:(id)delegate delegateQueue:(id)queue options:(id)options
{
  delegateCopy = delegate;
  queueCopy = queue;
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = APSKStreamAudio;
  v13 = [(APSKStreamAudio *)&v29 init];
  v14 = v13;
  if (v13)
  {
    if (description->mFormatID == 1819304813 && description->mSampleRate > 0.0 && description->mBytesPerPacket)
    {
      v15 = *&description->mSampleRate;
      v16 = *&description->mBytesPerPacket;
      *(v13 + 5) = *&description->mBitsPerChannel;
      *(v13 + 24) = v16;
      *(v13 + 8) = v15;
      objc_storeWeak(v13 + 6, delegateCopy);
      objc_storeStrong(v14 + 7, queue);
      objc_storeStrong(v14 + 9, options);
      objc_storeWeak(v14 + 10, 0);
      *(v14 + 44) = 0;
      v17 = dispatch_queue_create("com.apple.apskstreamaudio.stateq", 0);
      v18 = v14[8];
      v14[8] = v17;

      if (v14[8])
      {
        WeakRetained = objc_loadWeakRetained(v14 + 6);
        if (!WeakRetained || (v20 = v14[7], WeakRetained, v20) || (v21 = dispatch_queue_create("com.apple.apskstreamaudio.delegateq", 0), v22 = v14[7], v14[7] = v21, v22, v14[7]))
        {
          v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
          v24 = dispatch_queue_create("com.apple.apskstreamaudio.dataq", v23);
          v25 = v14[13];
          v14[13] = v24;

          if (v14[13])
          {
            if (FigCFWeakReferenceHolderCreateWithReferencedObject())
            {
              v26 = v14[13];
              if (APSRealTimeSignalCreate())
              {
                [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
              }

              else
              {
                if (!APSRingBufferCreate())
                {
                  *(v14 + 30) = 0;
                  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  goto LABEL_17;
                }

                [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
              }
            }

            else
            {
              [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
            }
          }

          else
          {
            [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
          }
        }

        else
        {
          [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
        }
      }

      else
      {
        [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
      }
    }

    else
    {
      [APSKStreamAudio initWithAudioDescription:delegate:delegateQueue:options:];
    }

    v27 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v27 = v14;
LABEL_18:

  return v27;
}

- (int)enqueueAudioData:(id)data
{
  dataCopy = data;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__APSKStreamAudio_enqueueAudioData___block_invoke;
  block[3] = &unk_278C65940;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(queue, block);
  v6 = v14[5];
  if (v6)
  {
    v7 = [v6 sendAudioData:dataCopy];
    if (v7)
    {
      v8 = self->_queue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __36__APSKStreamAudio_enqueueAudioData___block_invoke_2;
      v10[3] = &unk_278C659B8;
      v10[4] = self;
      v11 = v7;
      dispatch_sync(v8, v10);
    }
  }

  else
  {
    v7 = -6709;
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __36__APSKStreamAudio_enqueueAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __36__APSKStreamAudio_enqueueAudioData___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((*(v1 + 89) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 80));

    if (WeakRetained)
    {
      if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __36__APSKStreamAudio_enqueueAudioData___block_invoke_2_cold_1(v2, a1);
      }

      v5 = objc_loadWeakRetained((*v2 + 48));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 56);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __36__APSKStreamAudio_enqueueAudioData___block_invoke_3;
        v9[3] = &unk_278C659B8;
        v9[4] = v7;
        v10 = *(a1 + 40);
        dispatch_async(v8, v9);
      }

      *(*v2 + 89) = 1;
    }
  }
}

void __36__APSKStreamAudio_enqueueAudioData___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained audioStreamDidFail:*(a1 + 32) withError:*(a1 + 40)];
}

uint64_t __93__APSKStreamAudio_enqueueAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __93__APSKStreamAudio_enqueueAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((*(v1 + 89) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 80));

    if (WeakRetained)
    {
      if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __93__APSKStreamAudio_enqueueAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_2_cold_1(v2, a1);
      }

      v5 = objc_loadWeakRetained((*v2 + 48));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 56);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __93__APSKStreamAudio_enqueueAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_3;
        v9[3] = &unk_278C659B8;
        v9[4] = v7;
        v10 = *(a1 + 40);
        dispatch_async(v8, v9);
      }

      *(*v2 + 89) = 1;
    }
  }
}

void __93__APSKStreamAudio_enqueueAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained audioStreamDidFail:*(a1 + 32) withError:*(a1 + 40)];
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
  v5[2] = __25__APSKStreamAudio_active__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __25__APSKStreamAudio_active__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != 0;
}

- (BOOL)useVideoLatency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__APSKStreamAudio_useVideoLatency__block_invoke;
  v5[3] = &unk_278C65940;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setUseVideoLatency:(BOOL)latency
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__APSKStreamAudio_setUseVideoLatency___block_invoke;
  v4[3] = &unk_278C65E38;
  v4[4] = self;
  latencyCopy = latency;
  dispatch_sync(queue, v4);
}

- (id)enqueueAudioDataBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__APSKStreamAudio_enqueueAudioDataBlock__block_invoke;
  aBlock[3] = &unk_278C65E60;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (void)setAudioSender:(id)sender
{
  senderCopy = sender;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__APSKStreamAudio_setAudioSender___block_invoke;
  v7[3] = &unk_278C65990;
  v8 = senderCopy;
  selfCopy = self;
  v6 = senderCopy;
  dispatch_sync(queue, v7);
}

void __34__APSKStreamAudio_setAudioSender___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
  v5 = WeakRetained;
  if (v3)
  {

    if (v5)
    {
      __34__APSKStreamAudio_setAudioSender___block_invoke_cold_1();
      return;
    }

    objc_storeWeak((*(a1 + 40) + 80), *(a1 + 32));
    *(*(a1 + 40) + 89) = 0;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      __34__APSKStreamAudio_setAudioSender___block_invoke_cold_2(v2);
    }

    v6 = objc_loadWeakRetained((*v2 + 48));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = *v2;
      v9 = *(*v2 + 56);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__APSKStreamAudio_setAudioSender___block_invoke_2;
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
      objc_storeWeak((*v2 + 80), 0);
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __34__APSKStreamAudio_setAudioSender___block_invoke_cold_3(v2);
      }

      v11 = objc_loadWeakRetained((*v2 + 48));
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = *v2;
        v9 = *(*v2 + 56);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __34__APSKStreamAudio_setAudioSender___block_invoke_3;
        v14[3] = &unk_278C65968;
        v14[4] = v13;
        v10 = v14;
        goto LABEL_14;
      }
    }
  }
}

void __34__APSKStreamAudio_setAudioSender___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained audioStreamDidStart:*(a1 + 32)];
}

void __34__APSKStreamAudio_setAudioSender___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained audioStreamDidStop:*(a1 + 32)];
}

uint64_t __40__APSKStreamAudio_enqueueAudioDataBlock__block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, CMTime *a4, uint64_t a5, char a6)
{
  v18 = 0;
  v15 = *a4;
  v16 = CMClockConvertHostTimeToSystemUnits(&v15);
  v17 = a5;
  LODWORD(v18) = a3;
  BYTE4(v18) = a6;
  v10 = *(*(a1 + 32) + 96);
  if (a3 + 24 > APSRingBufferGetBytesFree())
  {
    return 4294960557;
  }

  v11 = *(*(a1 + 32) + 96);
  result = APSRingBufferEnqueueBytes();
  if (!result)
  {
    v13 = *(*(a1 + 32) + 96);
    result = APSRingBufferEnqueueBytes();
    if (!result)
    {
      atomic_fetch_add((*(a1 + 32) + 120), 1u);
      v14 = *(*(a1 + 32) + 112);
      APSRealTimeSignalRaise();
      return 0;
    }
  }

  return result;
}

uint64_t __36__APSKStreamAudio_enqueueAudioData___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  return LogPrintF();
}

uint64_t __93__APSKStreamAudio_enqueueAudioDataWithTimestamps_forHostTime_forSampleTime_forDiscontinuity___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  return LogPrintF();
}

@end