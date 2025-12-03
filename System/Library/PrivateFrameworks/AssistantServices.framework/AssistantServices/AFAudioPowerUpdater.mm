@interface AFAudioPowerUpdater
- (AFAudioPowerUpdater)initWithProvider:(id)provider queue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate;
- (BOOL)_createSharedMemory;
- (float)_unsafeAveragePower;
- (float)_unsafePeakPower;
- (id)_createNewXPCWrapper;
- (id)_createSharedMemoryXPCObject;
- (void)_beginUpdate;
- (void)_createNewXPCWrapperWithCompletion:(id)completion;
- (void)_destroySharedMemory;
- (void)_endUpdate;
- (void)_getPowerWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_updatePowerWithAveragePower:(float)power andPeakPower:(float)peakPower;
- (void)_writeSharedMemoryWithAveragePower:(float)power peakPower:(float)peakPower;
- (void)beginUpdate;
- (void)createNewXPCWrapperWithCompletion:(id)completion;
- (void)dealloc;
- (void)endUpdate;
- (void)getPowerWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation AFAudioPowerUpdater

void __35__AFAudioPowerUpdater__beginUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (float)_unsafePeakPower
{
  v4 = 0.0;
  v2 = [(AFAudioPowerProviding *)self->_provider getAveragePower:0 andPeakPower:&v4];
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (float)_unsafeAveragePower
{
  v4 = 0.0;
  v2 = [(AFAudioPowerProviding *)self->_provider getAveragePower:&v4 andPeakPower:0];
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (id)_createNewXPCWrapper
{
  _createSharedMemoryXPCObject = [(AFAudioPowerUpdater *)self _createSharedMemoryXPCObject];
  if (_createSharedMemoryXPCObject)
  {
    v3 = [[AFXPCWrapper alloc] initWithXPCObject:_createSharedMemoryXPCObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_createNewXPCWrapperWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    _createNewXPCWrapper = [(AFAudioPowerUpdater *)self _createNewXPCWrapper];
    (*(completion + 2))(completionCopy, _createNewXPCWrapper);
  }
}

- (void)_destroySharedMemory
{
  sharedMemory = self->_sharedMemory;
  if (sharedMemory)
  {
    munmap(sharedMemory, 8uLL);
    self->_sharedMemory = 0;
  }
}

- (void)_writeSharedMemoryWithAveragePower:(float)power peakPower:(float)peakPower
{
  sharedMemory = self->_sharedMemory;
  if (sharedMemory)
  {
    *sharedMemory = power;
    sharedMemory[1] = peakPower;
  }
}

- (id)_createSharedMemoryXPCObject
{
  [(AFAudioPowerUpdater *)self _createSharedMemory];
  sharedMemory = self->_sharedMemory;
  if (sharedMemory)
  {
    sharedMemory = xpc_shmem_create(sharedMemory, 8uLL);
  }

  return sharedMemory;
}

- (BOOL)_createSharedMemory
{
  if (self->_sharedMemory)
  {
    return 1;
  }

  self->_sharedMemory = mmap(0, 8uLL, 2, 4097, -1, 0);
  *&v4 = self->_averagePower;
  *&v5 = self->_peakPower;
  [(AFAudioPowerUpdater *)self _writeSharedMemoryWithAveragePower:v4 peakPower:v5];
  return self->_sharedMemory != 0;
}

- (void)_invalidate
{
  [(AFAudioPowerUpdater *)self _endUpdate];
  [(AFAudioPowerUpdater *)self _destroySharedMemory];
  provider = self->_provider;
  self->_provider = 0;

  objc_storeWeak(&self->_delegate, 0);
  *&self->_averagePower = 0;
}

- (void)_updatePowerWithAveragePower:(float)power andPeakPower:(float)peakPower
{
  self->_averagePower = power;
  self->_peakPower = peakPower;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    *&v9 = power;
    *&v10 = peakPower;
    [v11 audioPowerUpdaterDidUpdate:self averagePower:v9 peakPower:v10];
  }
}

- (void)_getPowerWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v12 = 0;
  if ([(AFAudioPowerProviding *)self->_provider getAveragePower:&v12 + 4 andPeakPower:&v12])
  {
    LODWORD(v5) = HIDWORD(v12);
    LODWORD(v6) = v12;
    [(AFAudioPowerUpdater *)self _updatePowerWithAveragePower:v5 andPeakPower:v6];
    LODWORD(v7) = HIDWORD(v12);
    LODWORD(v8) = v12;
    [(AFAudioPowerUpdater *)self _writeSharedMemoryWithAveragePower:v7 peakPower:v8];
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    provider = self->_provider;
    *buf = 136315394;
    v14 = "[AFAudioPowerUpdater _getPowerWithCompletion:]";
    v15 = 2112;
    v16 = provider;
    _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Unable to get average power and peak power from audio power provider %@.", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
LABEL_6:
    completionCopy[2](completionCopy, self->_averagePower, self->_peakPower);
  }

LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_endUpdate
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  provider = self->_provider;

  [(AFAudioPowerProviding *)provider didEndAccessPower];
}

- (void)_beginUpdate
{
  [(AFAudioPowerProviding *)self->_provider willBeginAccessPower];
  v3 = self->_frequency - 1;
  if (v3 <= 2 && !self->_timer)
  {
    v4 = qword_1914CFE68[v3];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v5;

    dispatch_source_set_timer(self->_timer, 0, v4, 0);
    objc_initWeak(&location, self);
    v7 = self->_timer;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__AFAudioPowerUpdater__beginUpdate__block_invoke;
    v8[3] = &unk_1E7348A80;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(v7, v8);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)createNewXPCWrapperWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AFAudioPowerUpdater_createNewXPCWrapperWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AFAudioPowerUpdater_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endUpdate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AFAudioPowerUpdater_endUpdate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getPowerWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AFAudioPowerUpdater_getPowerWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)beginUpdate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AFAudioPowerUpdater_beginUpdate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  [(AFAudioPowerUpdater *)self _invalidate];
  v3.receiver = self;
  v3.super_class = AFAudioPowerUpdater;
  [(AFAudioPowerUpdater *)&v3 dealloc];
}

- (AFAudioPowerUpdater)initWithProvider:(id)provider queue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate
{
  providerCopy = provider;
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = AFAudioPowerUpdater;
  v14 = [(AFAudioPowerUpdater *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_provider, provider);
    objc_storeStrong(&v15->_queue, queue);
    v15->_frequency = frequency;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v15->_sharedMemory = 0;
  }

  return v15;
}

@end