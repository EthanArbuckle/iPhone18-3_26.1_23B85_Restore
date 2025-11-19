@interface AVAudioDeviceTestService
- (AVAudioDeviceTestService)init;
- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)a3;
- (BOOL)isMixerOutputEnabled;
- (BOOL)isOutputRouteBluetooth:(id)a3 session:(id)a4;
- (BOOL)isPlaybackForTestEnabled;
- (BOOL)setVolume:(id)a3;
- (BOOL)setVolume:(id)a3 session:(id)a4;
- (double)calculateCrossCorrelationPeakRelativeToSource:(id)a3 capture:(id)a4;
- (id)convertBufferFor:(id)a3 sourceBuffer:(id)a4;
- (id)stringForInterruptionReason:(unint64_t)a3;
- (id)stringForRouteChangeReason:(unint64_t)a3;
- (void)cancel;
- (void)checkSequenceValidity:(id)a3 completion:(id)a4;
- (void)cleanUp;
- (void)cleanUpObservers;
- (void)configureDataSources:(id)a3 session:(id)a4;
- (void)configureMultiChannelMixerForOutputChannel:(int64_t)a3 totalChannels:(int64_t)a4;
- (void)createAudioEngineAndProcessingChain:(id)a3 session:(id)a4 sourceNodeBlock:(id)a5;
- (void)dealloc;
- (void)passExtensionToken:(id)a3;
- (void)playback:(id)a3 filePath:(id)a4 completion:(id)a5;
- (void)playbackTone:(id)a3 completion:(id)a4;
- (void)removeSystemVolumeObserver;
- (void)resetVolume:(float)a3;
- (void)setupAudioEngineFor:(id)a3 sourceNodeBlock:(id)a4;
- (void)setupAudioSessionFor:(id)a3 playbackOnly:(BOOL)a4 completion:(id)a5;
- (void)setupAudioSessionForHearingTest:(id)a3;
- (void)setupAudioSessionForHearingTestWithStatus:(id)a3 success:(id)a4;
- (void)setupMultiChannelMixerForOutputChannel:(id)a3 completion:(id)a4;
- (void)setupObservers:(id)a3;
- (void)setupVolumeObserverForVolume:(float)a3 completion:(id)a4;
- (void)startRecording:(id)a3 filePath:(id)a4 completion:(id)a5;
- (void)startWithSequence:(id)a3 completion:(id)a4;
- (void)stopAudioSession:(id)a3;
- (void)stopPlayback;
- (void)stopRecording:(id)a3;
@end

@implementation AVAudioDeviceTestService

- (void)cancel
{
  v2 = [(AVAudioDeviceTestService *)self engine];
  [v2 stop];

  exit(0);
}

- (void)cleanUp
{
  v3 = [(AVAudioDeviceTestService *)self sourceNode];

  if (v3)
  {
    v4 = [(AVAudioDeviceTestService *)self sourceNode];
    [v4 reset];

    [(AVAudioDeviceTestService *)self setSourceNode:0];
  }

  v5 = [(AVAudioDeviceTestService *)self player];

  if (v5)
  {
    v6 = [(AVAudioDeviceTestService *)self player];
    [v6 stop];

    [(AVAudioDeviceTestService *)self setPlayer:0];
  }

  v7 = [(AVAudioDeviceTestService *)self engine];
  if (v7)
  {
    v8 = v7;
    v9 = [(AVAudioDeviceTestService *)self engine];
    v10 = [v9 isRunning];

    if (v10)
    {
      v11 = [(AVAudioDeviceTestService *)self engine];
      [v11 stop];

      v12 = [(AVAudioDeviceTestService *)self engine];
      [v12 reset];

      [(AVAudioDeviceTestService *)self setEngine:0];
    }
  }

  ptr = self->mPulseToneHandler.__ptr_;
  p_mPulseToneHandler = &self->mPulseToneHandler;
  if (ptr)
  {

    std::unique_ptr<PulseTone>::reset[abi:ne200100](p_mPulseToneHandler, 0);
  }
}

- (void)removeSystemVolumeObserver
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(AVAudioDeviceTestService *)self systemVolumeObserver];

  if (v3)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "AVAudioDeviceTestService.mm";
      v10 = 1024;
      v11 = 1893;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Removing systemVolumeObserver", &v8, 0x12u);
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = [(AVAudioDeviceTestService *)self systemVolumeObserver];
    [v5 removeObserver:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpObservers
{
  v34 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v3 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "AVAudioDeviceTestService.mm";
    v30 = 1024;
    v31 = 1861;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d cleaning up observers", buf, 0x12u);
  }

  v4 = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v5 = v4 == 0;

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [v6 removeObserver:v7];
  }

  v8 = [(AVAudioDeviceTestService *)self interruptionObserver];
  v9 = v8 == 0;

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [v10 removeObserver:v11];
  }

  v12 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [v14 removeObserver:v15];
  }

  v16 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [v18 removeObserver:v19];
  }

  [(AVAudioDeviceTestService *)self removeSystemVolumeObserver];
  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 removeObserver:self];

  v21 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v22 = *MEMORY[0x1E69AECE0];
  v27 = 0;
  [v21 setAttribute:0 forKey:v22 error:&v27];
  v23 = v27;

  if (v23)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v23 localizedDescription];
      *buf = 136315650;
      v29 = "AVAudioDeviceTestService.mm";
      v30 = 1024;
      v31 = 1886;
      v32 = 2114;
      v33 = v25;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to unsubscribe from AVSystemController volume notification. { error=%{public}@ }", buf, 0x1Cu);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)stringForRouteChangeReason:(unint64_t)a3
{
  if (a3 > 8)
  {
    return &stru_1F384E730;
  }

  else
  {
    return off_1E7EF5958[a3];
  }
}

- (id)stringForInterruptionReason:(unint64_t)a3
{
  if (a3 > 2)
  {
    return &stru_1F384E730;
  }

  else
  {
    return off_1E7EF5940[a3];
  }
}

- (void)setupObservers:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v5 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v48 = "AVAudioDeviceTestService.mm";
    v49 = 1024;
    v50 = 1721;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting up observers", buf, 0x12u);
  }

  v6 = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [v8 removeObserver:v9];
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = *MEMORY[0x1E698D6C8];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __43__AVAudioDeviceTestService_setupObservers___block_invoke;
  v45[3] = &unk_1E7EF5908;
  v45[4] = self;
  v12 = v4;
  v46 = v12;
  v13 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v45];
  [(AVAudioDeviceTestService *)self setRouteChangeObserver:v13];

  v14 = [(AVAudioDeviceTestService *)self interruptionObserver];
  LOBYTE(v10) = v14 == 0;

  if ((v10 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [v15 removeObserver:v16];
  }

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  v18 = *MEMORY[0x1E698D550];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __43__AVAudioDeviceTestService_setupObservers___block_invoke_178;
  v43[3] = &unk_1E7EF5908;
  v19 = v12;
  v43[4] = self;
  v44 = v19;
  v20 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v43];
  [(AVAudioDeviceTestService *)self setInterruptionObserver:v20];

  v21 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  LOBYTE(v17) = v21 == 0;

  if ((v17 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [v22 removeObserver:v23];
  }

  v24 = [MEMORY[0x1E696AD88] defaultCenter];
  v25 = *MEMORY[0x1E698D5A8];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __43__AVAudioDeviceTestService_setupObservers___block_invoke_179;
  v41[3] = &unk_1E7EF5758;
  v26 = v19;
  v42 = v26;
  v27 = [v24 addObserverForName:v25 object:0 queue:0 usingBlock:v41];
  [(AVAudioDeviceTestService *)self setMediaservicesLostObserver:v27];

  v28 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  LOBYTE(v24) = v28 == 0;

  if ((v24 & 1) == 0)
  {
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    v30 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [v29 removeObserver:v30];
  }

  v31 = [MEMORY[0x1E696AD88] defaultCenter];
  v32 = *MEMORY[0x1E698D5B8];
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __43__AVAudioDeviceTestService_setupObservers___block_invoke_180;
  v39 = &unk_1E7EF5758;
  v33 = v26;
  v40 = v33;
  v34 = [v31 addObserverForName:v32 object:0 queue:0 usingBlock:&v36];
  [(AVAudioDeviceTestService *)self setMediaservicesResetObserver:v34, v36, v37, v38, v39];

  v35 = *MEMORY[0x1E69E9840];
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698D6E0]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) stringForRouteChangeReason:v6];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v8 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 userInfo];
    v12 = 136315906;
    v13 = "AVAudioDeviceTestService.mm";
    v14 = 1024;
    v15 = 1731;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route change (%@) - %@", &v12, 0x26u);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-2 userInfo:0];
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke_178(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698D580]];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698D578]];
    v9 = [v8 unsignedIntegerValue];

    v10 = [*(a1 + 32) stringForInterruptionReason:v9];
    if (v6)
    {
      if (v6 == 1)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v11 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 userInfo];
          v19 = 136315906;
          v20 = "AVAudioDeviceTestService.mm";
          v21 = 1024;
          v22 = 1765;
          v23 = 2114;
          v24 = v10;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption began (%{public}@) - %{public}@", &v19, 0x26u);
        }

        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-16 userInfo:0];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v17 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315394;
          v20 = "AVAudioDeviceTestService.mm";
          v21 = 1024;
          v22 = 1784;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled interruption type", &v19, 0x12u);
        }

        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-3 userInfo:0];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v15 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 userInfo];
        v19 = 136315906;
        v20 = "AVAudioDeviceTestService.mm";
        v21 = 1024;
        v22 = 1775;
        v23 = 2114;
        v24 = v10;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption ended (%{public}@) - %{public}@", &v19, 0x26u);
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-17 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 1749;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No AVAudioSessionInterruptionTypeKey. note: %@", &v19, 0x1Cu);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-3 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke_179(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = generateAudioSelfTestError(-4);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 1799;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd/audiomxd died (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-4 userInfo:0];
  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke_180(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = generateAudioSelfTestError(-5);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 1810;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd/audiomxd was reset (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-5 userInfo:0];
  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureMultiChannelMixerForOutputChannel:(int64_t)a3 totalChannels:(int64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v9 = [v8 outputFormatForBus:0];
  v10 = [v9 channelCount];

  if (v10 <= a3)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"AVAudioDeviceTestService.mm" lineNumber:1695 description:@"the desired channel must not be greater than the number of channels"];
  }

  v11 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v12 = [v11 inputFormatForBus:0];
  v13 = [v12 channelCount];

  if (v13 != 1)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"AVAudioDeviceTestService.mm" lineNumber:1696 description:@"input format doesn't contain 1 channel"];
  }

  v14 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v15 = [v14 inputFormatForBus:0];
  v16 = [v15 channelCount];
  v17 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v18 = [v17 outputFormatForBus:0];
  v19 = [v18 channelCount] * v16;

  *buf = 0;
  std::vector<float>::vector[abi:ne200100](__b, v19);
  if (a4 == 1)
  {
    *(__b[0] + a3) = 1065353216;
  }

  else if (a4 >= 1)
  {
    memset_pattern16(__b[0], &unk_1BA6CF4D0, 4 * a4);
  }

  v20 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v21 = [v20 audioUnit];
  v22 = AudioUnitSetProperty(v21, 0xBBEu, 1u, 0, __b[0], 4 * v19);

  if (v22)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v23 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "AVAudioDeviceTestService.mm";
      v30 = 1024;
      v31 = 1715;
      v32 = 1024;
      v33 = v22;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %i", buf, 0x18u);
    }
  }

  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)setupMultiChannelMixerForOutputChannel:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v9 = [v8 outputFormatForBus:0];
  v10 = [v9 channelCount];

  v11 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v12 = [v11 inputFormatForBus:0];
  v13 = [v12 channelCount];

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v14 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(AVAudioDeviceTestService *)self multichannelMixer];
    v16 = [v15 inputFormatForBus:0];
    *buf = 136315906;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1669;
    v34 = 1024;
    v35 = [v16 channelCount];
    v36 = 1024;
    v37 = v10;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mixer dimension %d x %d", buf, 0x1Eu);
  }

  v17 = (v13 * v10);
  *v28 = 0;
  std::vector<float>::vector[abi:ne200100](buf, v17);
  if (v6)
  {
    for (i = 0; [v6 count] > i; ++i)
    {
      v19 = [v6 objectAtIndexedSubscript:i];
      v20 = [v19 intValue];

      if (v20 < v17)
      {
        v21 = *buf;
        do
        {
          *(v21 + 4 * v20) = 1065353216;
          v20 += v10;
        }

        while (v20 < v17);
      }
    }
  }

  else if (v17)
  {
    memset_pattern16(*buf, &unk_1BA6CF4D0, 4 * v17);
  }

  v22 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v23 = [v22 audioUnit];
  v24 = AudioUnitSetProperty(v23, 0xBBEu, 1u, 0, *buf, 4 * v17);

  if (v24)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v25 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315650;
      *&v28[4] = "AVAudioDeviceTestService.mm";
      v29 = 1024;
      v30 = 1688;
      v31 = 1024;
      v32 = v24;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %i", v28, 0x18u);
    }

    v26 = generateAudioSelfTestError(-10);
    v7[2](v7, v26);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v3 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1646;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d cleaning up observers and invalidating process assertion", buf, 0x12u);
  }

  [(AVAudioDeviceTestService *)self extensionHandle];
  if (sandbox_extension_release())
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 136315650;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 1650;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't release extension %i", buf, 0x18u);
    }
  }

  v6 = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
    [v8 floatValue];
    [(AVAudioDeviceTestService *)self resetVolume:?];
  }

  [(AVAudioDeviceTestService *)self cleanUpObservers];
  v9 = [(AVAudioDeviceTestService *)self transaction];
  v10 = v9 == 0;

  if (!v10)
  {
    [(AVAudioDeviceTestService *)self setTransaction:0];
  }

  v12.receiver = self;
  v12.super_class = AVAudioDeviceTestService;
  [(AVAudioDeviceTestService *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (id)convertBufferFor:(id)a3 sourceBuffer:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v30 = a4;
  v6 = [AVAudioFormat alloc];
  v7 = [v32 processingFormat];
  v8 = [v7 settings];
  v9 = [(AVAudioFormat *)v6 initWithSettings:v8];

  v31 = v9;
  v10 = [(AVAudioFormat *)v9 settings];
  v11 = [v10 mutableCopy];

  v12 = MEMORY[0x1E696AD98];
  v13 = [(AVAudioDeviceTestService *)self engine];
  v14 = [v13 inputNode];
  v15 = [v14 inputFormatForBus:0];
  [v15 sampleRate];
  v16 = [v12 numberWithDouble:?];
  [v11 setObject:v16 forKeyedSubscript:@"AVSampleRateKey"];

  [v11 setObject:&unk_1F385A2B8 forKeyedSubscript:@"AVNumberOfChannelsKey"];
  v17 = [[AVAudioFormat alloc] initWithSettings:v11];
  v18 = -[AVAudioPCMBuffer initWithPCMFormat:frameCapacity:]([AVAudioPCMBuffer alloc], "initWithPCMFormat:frameCapacity:", v17, [v32 length]);
  v19 = [[AVAudioConverter alloc] initFromFormat:v31 toFormat:v17];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__AVAudioDeviceTestService_convertBufferFor_sourceBuffer___block_invoke;
  aBlock[3] = &unk_1E7EF5780;
  v20 = v30;
  v35 = v20;
  v21 = _Block_copy(aBlock);
  v33 = 0;
  v22 = [(AVAudioConverter *)v19 convertToBuffer:v18 error:&v33 withInputFromBlock:v21];
  v23 = v33;
  if (v22 == 3)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v23 localizedDescription];
      v26 = generateAudioSelfTestError(-6);
      v27 = [v26 code];
      *buf = 136315906;
      v37 = "AVAudioDeviceTestService.mm";
      v38 = 1024;
      v39 = 1638;
      v40 = 2112;
      v41 = v25;
      v42 = 2048;
      v43 = v27;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setupAudioEngineFor:(id)a3 sourceNodeBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698D708] sharedInstance];
  [(AVAudioDeviceTestService *)self createAudioEngineAndProcessingChain:v8 session:v7 sourceNodeBlock:v6];
}

- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v5 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 1582;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating engine and tone handler", &v14, 0x12u);
  }

  if (!v4)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v14 = 136315394;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 1584;
    v11 = "%25s:%-5d Unable to create pulse tone from nil sequence";
LABEL_21:
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 0x12u);
    goto LABEL_22;
  }

  v6 = objc_opt_new();
  [(AVAudioDeviceTestService *)self setEngine:v6];

  if (!v6)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v14 = 136315394;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 1602;
    v11 = "%25s:%-5d Unable to create instance of AVAudioEngine";
    goto LABEL_21;
  }

  v7 = [(AVAudioDeviceTestService *)self engine];
  v8 = [v7 outputNode];
  v9 = [v8 outputFormatForBus:0];

  if (v9)
  {
    [v9 sampleRate];
    [v4 frequency];
    [v4 soundLevel];
    [v4 numberOfPulses];
    [v4 pulseDuration];
    [v4 pauseDuration];
    [v4 rampDuration];
    [v4 startDelay];
    operator new();
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v10 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 1599;
    v11 = "%25s:%-5d Unable to get output format for bus 0";
    goto LABEL_21;
  }

LABEL_22:

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)setupAudioSessionFor:(id)a3 playbackOnly:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E698D708] sharedInstance];
  v11 = v10;
  if (v6)
  {
    v12 = [v10 category];
    v13 = *MEMORY[0x1E698D520];

    if (v12 == v13)
    {
      v22 = 0;
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v14 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v69 = "AVAudioDeviceTestService.mm";
        v70 = 1024;
        v71 = 1493;
        _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating current audio session category to playback only.", buf, 0x12u);
      }

      v67 = 0;
      v15 = [v11 setCategory:v13 error:&v67];
      v16 = v67;
      if ((v15 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v17 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v16 localizedDescription];
          *buf = 136315650;
          v69 = "AVAudioDeviceTestService.mm";
          v70 = 1024;
          v71 = 1496;
          v72 = 2112;
          v73 = v18;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session category. { error=%@ }", buf, 0x1Cu);
        }

        v19 = generateAudioSelfTestError(-1);
        v9[2](v9, v19);
      }

      v20 = *MEMORY[0x1E698D5F0];
      v66 = v16;
      v21 = [v11 setMode:v20 error:&v66];
      v22 = v66;

      if ((v21 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v23 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [v22 localizedDescription];
          *buf = 136315650;
          v69 = "AVAudioDeviceTestService.mm";
          v70 = 1024;
          v71 = 1501;
          v72 = 2112;
          v73 = v24;
          _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session mode. { error=%@ }", buf, 0x1Cu);
        }

        v25 = generateAudioSelfTestError(-1);
        v9[2](v9, v25);
LABEL_73:
      }
    }
  }

  else
  {
    v26 = [v10 allowAllBuiltInDataSources];
    if ((v26 & 1) == 0)
    {
      [v11 setAllowAllBuiltInDataSources:1];
    }

    if (![v8 requiresBluetoothOutput] || (objc_msgSend(v11, "categoryOptions") & 0x20) != 0)
    {
      v27 = v26 ^ 1;
      if ([v8 outputMode] == 1)
      {
        v29 = [v11 categoryOptions] & 8;
        v28 = v29 ^ 8;
        v27 |= v29 == 0;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v27 = 1;
      v28 = 32;
    }

    v30 = [v11 category];
    v31 = *MEMORY[0x1E698D518];

    if (v30 == v31)
    {
      v22 = 0;
    }

    else
    {
      v65 = 0;
      v32 = [v11 setCategory:v31 withOptions:v28 error:&v65];
      v22 = v65;
      if ((v32 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v33 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = [v22 code];
          *buf = 136315650;
          v69 = "AVAudioDeviceTestService.mm";
          v70 = 1024;
          v71 = 1527;
          v72 = 2048;
          v73 = v34;
          _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
        }

        v35 = generateAudioSelfTestError(-1);
        v9[2](v9, v35);
      }

      v27 = 1;
    }

    if ([v11 preferredIOBufferFrameSize] != 4096)
    {
      v64 = v22;
      v36 = [v11 setPreferredIOBufferFrameSize:4096 error:&v64];
      v37 = v64;

      if ((v36 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v38 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [v37 code];
          v40 = generateAudioSelfTestError(-1);
          v41 = [v40 code];
          *buf = 136315906;
          v69 = "AVAudioDeviceTestService.mm";
          v70 = 1024;
          v71 = 1544;
          v72 = 2048;
          v73 = v39;
          v74 = 2048;
          v75 = v41;
          _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v27 = 1;
      v22 = v37;
    }

    v42 = [v8 mode];
    if (!v42)
    {
      goto LABEL_55;
    }

    v43 = [v11 mode];
    v44 = [v8 mode];
    v45 = v43 == v44;

    if (v45)
    {
LABEL_55:
      if (v27 & 1) == 0 && ([v11 isActive])
      {
        goto LABEL_74;
      }
    }

    else
    {
      v46 = [v8 mode];
      v63 = v22;
      v47 = [v11 setMode:v46 error:&v63];
      v48 = v63;

      if ((v47 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v49 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [v48 code];
          v51 = generateAudioSelfTestError(-1);
          v52 = [v51 code];
          *buf = 136315906;
          v69 = "AVAudioDeviceTestService.mm";
          v70 = 1024;
          v71 = 1552;
          v72 = 2048;
          v73 = v50;
          v74 = 2048;
          v75 = v52;
          _os_log_impl(&dword_1BA5AC000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v22 = v48;
    }

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v53 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v69 = "AVAudioDeviceTestService.mm";
      v70 = 1024;
      v71 = 1559;
      _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_INFO, "%25s:%-5d Audio session has changed, setting active.", buf, 0x12u);
    }

    v62 = v22;
    v54 = [v11 setActive:1 error:&v62];
    v55 = v62;

    v22 = v55;
    if ((v54 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v56 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = [v55 code];
        v58 = generateAudioSelfTestError(-11);
        v59 = [v58 code];
        *buf = 136315906;
        v69 = "AVAudioDeviceTestService.mm";
        v70 = 1024;
        v71 = 1562;
        v72 = 2048;
        v73 = v57;
        v74 = 2048;
        v75 = v59;
        _os_log_impl(&dword_1BA5AC000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
      }

      if ([v22 code] == 561145203)
      {
        [(AVAudioDeviceTestService *)self setTestServiceSupportedOnHardware:0];
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v60 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v69 = "AVAudioDeviceTestService.mm";
          v70 = 1024;
          v71 = 1566;
          _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d running test on platform with inadequate hardware", buf, 0x12u);
        }

        v25 = generateAudioSelfTestError(-8);
        v9[2](v9, v25);
      }

      else
      {
        v25 = generateAudioSelfTestError(-11);
        v9[2](v9, v25);
      }

      goto LABEL_73;
    }

    [(AVAudioDeviceTestService *)self configureDataSources:v8 session:v11];
  }

LABEL_74:

  v61 = *MEMORY[0x1E69E9840];
}

- (void)checkSequenceValidity:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    [v7 frequency];
    if (v8 != 0.0 || ([v7 soundLevel], v9 != 0.0) || (objc_msgSend(v7, "duration"), v10 != 0.0))
    {
      v11 = [v7 stimulusURL];

      if (v11)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v12 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315394;
          v23 = "AVAudioDeviceTestService.mm";
          v24 = 1024;
          v25 = 1468;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot set playback URL and tone on the same sequence", &v22, 0x12u);
        }

        v13 = generateAudioSelfTestError(-7);
        v6[2](v6, v13);
      }
    }

    [v7 frequency];
    if (v14 == 0.0 || ([v7 soundLevel], v15 == 0.0) || (objc_msgSend(v7, "duration"), v16 == 0.0))
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v17 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315394;
        v23 = "AVAudioDeviceTestService.mm";
        v24 = 1024;
        v25 = 1473;
        _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot perform tone playback without setting all required parameters (frequency, soundLevel, and duration)", &v22, 0x12u);
      }

      v18 = generateAudioSelfTestError(-7);
      v6[2](v6, v18);
    }
  }

  if ([v5 requiresBluetoothOutput] && objc_msgSend(v5, "outputMode") == 1)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v19 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "AVAudioDeviceTestService.mm";
      v24 = 1024;
      v25 = 1479;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot request speaker output on Bluetooth route", &v22, 0x12u);
    }

    v20 = generateAudioSelfTestError(-7);
    v6[2](v6, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)resetVolume:(float)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  v4 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v14 = 0;
  [v4 getActiveCategoryVolume:&v15 andName:&v14];
  v5 = v14;

  v6 = vabds_f32(v15, a3);
  v7 = fabsf(v15 + a3);
  v8 = (v7 * 0.00000011921) + (v7 * 0.00000011921);
  if (v6 >= 1.1755e-38 && v6 > v8)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = "AVAudioDeviceTestService.mm";
      v18 = 1024;
      v19 = 1456;
      v20 = 2048;
      v21 = v15;
      v22 = 2048;
      v23 = a3;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current volume is not as expected, updating volume. { current=%f, expected=%f, name=%@ }", buf, 0x30u);
    }

    v11 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    *&v12 = a3;
    [v11 setActiveCategoryVolumeTo:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setupVolumeObserverForVolume:(float)a3 completion:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v8 = MEMORY[0x1E69AECF0];
  v28[0] = *MEMORY[0x1E69AECF0];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v10 = *MEMORY[0x1E69AECE0];
  v21 = 0;
  [v7 setAttribute:v9 forKey:v10 error:&v21];
  v11 = v21;

  if (v11)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v12 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 localizedDescription];
      *buf = 136315650;
      v23 = "AVAudioDeviceTestService.mm";
      v24 = 1024;
      v25 = 1433;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to subscribe to system volume notification. { error=%@ }", buf, 0x1Cu);
    }

    v6[2](v6, v11);
  }

  else
  {
    [(AVAudioDeviceTestService *)self removeSystemVolumeObserver];
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "AVAudioDeviceTestService.mm";
      v24 = 1024;
      v25 = 1440;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] setting up systemVolumeObserver", buf, 0x12u);
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *v8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__AVAudioDeviceTestService_setupVolumeObserverForVolume_completion___block_invoke;
    v19[3] = &__block_descriptor_36_e24_v16__0__NSNotification_8l;
    v20 = a3;
    v17 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v19];
    [(AVAudioDeviceTestService *)self setSystemVolumeObserver:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __68__AVAudioDeviceTestService_setupVolumeObserverForVolume_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69AEA20]];

  [v5 floatValue];
  v6 = *(a1 + 32);
  v8 = vabds_f32(v7, v6);
  v9 = fabsf(v7 + v6);
  v10 = (v9 * 0.00000011921) + (v9 * 0.00000011921);
  if (v8 >= 1.1755e-38 && v8 > v10)
  {
    v12 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    LODWORD(v13) = *(a1 + 32);
    [v12 setActiveCategoryVolumeTo:v13];

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [v5 floatValue];
      v15 = *(a1 + 32);
      v18 = 136315906;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1445;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v15;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume not as expected, updating volume. { current=%f, expected=%f }", &v18, 0x26u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPlaybackForTestEnabled
{
  v2 = CFPreferencesCopyAppValue(@"playback_for_test", @"com.apple.coreaudio.avaudiodevicetest");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x1E695E4D0];
  CFRelease(v2);
  return v3;
}

- (BOOL)isMixerOutputEnabled
{
  v2 = CFPreferencesCopyAppValue(@"mixer_output_enable", @"com.apple.coreaudio.avaudiodevicetest");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x1E695E4D0];
  CFRelease(v2);
  return v3;
}

- (void)stopAudioSession:(id)a3
{
  v4 = a3;
  v5 = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AVAudioDeviceTestService_stopAudioSession___block_invoke;
  v7[3] = &unk_1E7EF6710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__AVAudioDeviceTestService_stopAudioSession___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "AVAudioDeviceTestService.mm";
    v21 = 1024;
    v22 = 1378;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to stop audio session for HearingTest.", buf, 0x12u);
  }

  v3 = [*(a1 + 32) hearingTestSession];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) hearingTestSession];
  if (v4)
  {
    v5 = [*(a1 + 32) hearingTestSession];
    v6 = [v5 isActive];

    if ((v6 & 1) == 0)
    {
LABEL_8:
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v7 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "AVAudioDeviceTestService.mm";
        v21 = 1024;
        v22 = 1383;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hearing test audio session is not active, cannot de-activate it.", buf, 0x12u);
      }

      v8 = 0;
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }
  }

  else
  {
  }

  v9 = [*(a1 + 32) hearingTestSession];
  v18 = 0;
  [v9 setActive:0 error:&v18];
  v10 = v18;

  if (v10)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v11 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136315650;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 1390;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed de-activate audio session. { error=%{public}@ }", buf, 0x1Cu);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-14 userInfo:0];

    v8 = v13;
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 1393;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d De-activated audio session.", buf, 0x12u);
    }

    v8 = 0;
  }

  v15 = *(a1 + 32);
  v16 = [v15 userVolumeBeforeHearingTest];
  [v16 floatValue];
  [v15 resetVolume:?];

  [*(a1 + 32) cleanUpObservers];
  (*(*(a1 + 40) + 16))();
LABEL_26:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setupAudioSessionForHearingTestWithStatus:(id)a3 success:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVAudioDeviceTestService_setupAudioSessionForHearingTestWithStatus_success___block_invoke;
  block[3] = &unk_1E7EF58C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __78__AVAudioDeviceTestService_setupAudioSessionForHearingTestWithStatus_success___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "AVAudioDeviceTestService.mm";
    v39 = 1024;
    v40 = 1327;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting up audio session with Playback category for HearingTest.", buf, 0x12u);
  }

  v3 = [MEMORY[0x1E698D708] sharedInstance];
  [*(a1 + 32) setHearingTestSession:v3];

  v4 = [*(a1 + 32) hearingTestSession];
  v5 = *MEMORY[0x1E698D520];
  v36 = 0;
  v6 = [v4 setCategory:v5 error:&v36];
  v7 = v36;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = [*(a1 + 32) hearingTestSession];
    v10 = *MEMORY[0x1E698D5F0];
    v35 = 0;
    v11 = [v9 setMode:v10 error:&v35];
    v12 = v35;

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = [*(a1 + 32) hearingTestSession];
      v34 = 0;
      v15 = [v14 setEligibleForBTSmartRoutingConsideration:0 error:&v34];
      v16 = v34;

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = [*(a1 + 32) hearingTestSession];
        v33 = 0;
        v19 = [v18 setActive:1 error:&v33];
        v20 = v33;

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v22 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v38 = "AVAudioDeviceTestService.mm";
            v39 = 1024;
            v40 = 1367;
            _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setup and activated audio session for HearingTest.", buf, 0x12u);
          }

          [*(a1 + 32) setupObservers:*(a1 + 40)];
          (*(*(a1 + 48) + 16))();
          v23 = 0;
        }

        else
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v30 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [v20 localizedDescription];
            *buf = 136315650;
            v38 = "AVAudioDeviceTestService.mm";
            v39 = 1024;
            v40 = 1361;
            v41 = 2114;
            v42 = v31;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set active. { error=%{public}@ }", buf, 0x1Cu);
          }

          v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v28 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v16 localizedDescription];
          *buf = 136315650;
          v38 = "AVAudioDeviceTestService.mm";
          v39 = 1024;
          v40 = 1352;
          v41 = 2114;
          v42 = v29;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disable smart routing. { error=%{public}@ }", buf, 0x1Cu);
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v26 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v12 localizedDescription];
        *buf = 136315650;
        v38 = "AVAudioDeviceTestService.mm";
        v39 = 1024;
        v40 = 1343;
        v41 = 2114;
        v42 = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode. { error=%{public}@ }", buf, 0x1Cu);
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v7 localizedDescription];
      *buf = 136315650;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1335;
      v41 = 2114;
      v42 = v25;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set category. { error=%{public}@ }", buf, 0x1Cu);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)setupAudioSessionForHearingTest:(id)a3
{
  v4 = a3;
  v5 = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AVAudioDeviceTestService_setupAudioSessionForHearingTest___block_invoke;
  v7[3] = &unk_1E7EF6710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__AVAudioDeviceTestService_setupAudioSessionForHearingTest___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "AVAudioDeviceTestService.mm";
    v39 = 1024;
    v40 = 1277;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting up audio session with Playback category for HearingTest.", buf, 0x12u);
  }

  v3 = [MEMORY[0x1E698D708] sharedInstance];
  [*(a1 + 32) setHearingTestSession:v3];

  v4 = [*(a1 + 32) hearingTestSession];
  v5 = *MEMORY[0x1E698D520];
  v36 = 0;
  v6 = [v4 setCategory:v5 error:&v36];
  v7 = v36;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = [*(a1 + 32) hearingTestSession];
    v10 = *MEMORY[0x1E698D5F0];
    v35 = 0;
    v11 = [v9 setMode:v10 error:&v35];
    v12 = v35;

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = [*(a1 + 32) hearingTestSession];
      v34 = 0;
      v15 = [v14 setEligibleForBTSmartRoutingConsideration:0 error:&v34];
      v16 = v34;

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = [*(a1 + 32) hearingTestSession];
        v33 = 0;
        v19 = [v18 setActive:1 error:&v33];
        v20 = v33;

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v22 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v38 = "AVAudioDeviceTestService.mm";
            v39 = 1024;
            v40 = 1317;
            _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setup and activated audio session for HearingTest.", buf, 0x12u);
          }

          [*(a1 + 32) setupObservers:*(a1 + 40)];
          v23 = 0;
        }

        else
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v30 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [v20 localizedDescription];
            *buf = 136315650;
            v38 = "AVAudioDeviceTestService.mm";
            v39 = 1024;
            v40 = 1311;
            v41 = 2114;
            v42 = v31;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set active. { error=%{public}@ }", buf, 0x1Cu);
          }

          v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v28 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v16 localizedDescription];
          *buf = 136315650;
          v38 = "AVAudioDeviceTestService.mm";
          v39 = 1024;
          v40 = 1302;
          v41 = 2114;
          v42 = v29;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disable smart routing. { error=%{public}@ }", buf, 0x1Cu);
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v26 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v12 localizedDescription];
        *buf = 136315650;
        v38 = "AVAudioDeviceTestService.mm";
        v39 = 1024;
        v40 = 1293;
        v41 = 2114;
        v42 = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode. { error=%{public}@ }", buf, 0x1Cu);
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v7 localizedDescription];
      *buf = 136315650;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1285;
      v41 = 2114;
      v42 = v25;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set category. { error=%{public}@ }", buf, 0x1Cu);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)stopRecording:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  [v5 removeTapOnBus:0];

  v6 = [(AVAudioDeviceTestService *)self engine];
  v7 = [v6 isRunning];

  if (v7)
  {
    v8 = [(AVAudioDeviceTestService *)self engine];
    [v8 stop];
  }

  v9 = [MEMORY[0x1E698D708] sharedInstance];
  v37 = 0;
  v10 = [v9 setActive:0 error:&v37];
  v11 = v37;

  if ((v10 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v12 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 code];
      v14 = generateAudioSelfTestError(-11);
      v15 = [v14 code];
      *buf = 136315906;
      v39 = "AVAudioDeviceTestService.mm";
      v40 = 1024;
      v41 = 1249;
      v42 = 2048;
      v43 = v13;
      v44 = 2048;
      v45 = *&v15;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
    }
  }

  v16 = [MEMORY[0x1E698D708] sharedInstance];
  v36 = v11;
  [v16 setActive:0 error:&v36];
  v17 = v36;

  v18 = v17;
  if (v17)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v19 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 localizedDescription];
      *buf = 136315650;
      v39 = "AVAudioDeviceTestService.mm";
      v40 = 1024;
      v41 = 1254;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to reset audio session %@", buf, 0x1Cu);
    }
  }

  v21 = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVAudioDeviceTestService_stopRecording___block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  dispatch_sync(v21, block);

  v22 = [(AVAudioDeviceTestService *)self inputTapFile];
  v23 = [v22 length] == 0;

  if (v23)
  {
    v32 = generateAudioSelfTestError(-13);
    v4[2](v4, v32);
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(AVAudioDeviceTestService *)self inputTapFile];
      v25 = [v34 url];
      v26 = [v25 path];
      v27 = [(AVAudioDeviceTestService *)self inputTapFile];
      v28 = [v27 length];
      v29 = [(AVAudioDeviceTestService *)self inputTapFile];
      v30 = [v29 fileFormat];
      [v30 sampleRate];
      *buf = 136315906;
      v39 = "AVAudioDeviceTestService.mm";
      v40 = 1024;
      v41 = 1266;
      v42 = 2114;
      v43 = v26;
      v44 = 2048;
      v45 = v28 / v31;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped recording on server side %{public}@ (%f s)", buf, 0x26u);
    }

    [(AVAudioDeviceTestService *)self setInputTapFile:0];
    v4[2](v4, 0);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)startRecording:(id)a3 filePath:(id)a4 completion:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = a4;
  v9 = a5;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:v8 completion:v9];
  [(AVAudioDeviceTestService *)self setupAudioSessionFor:v8 playbackOnly:0 completion:v9];
  [(AVAudioDeviceTestService *)self setupAudioEngineFor:v8 sourceNodeBlock:0];
  v10 = [(AVAudioDeviceTestService *)self engine];
  v11 = [v10 inputNode];
  v12 = [v11 inputFormatForBus:0];

  v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v36];
  v13 = [AVAudioFile alloc];
  v14 = [v12 settings];
  v40 = 0;
  v15 = [(AVAudioFile *)v13 initForWriting:v34 settings:v14 error:&v40];
  v16 = v40;
  [(AVAudioDeviceTestService *)self setInputTapFile:v15];

  if (v16)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v17 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v16 localizedDescription];
      *buf = 136315650;
      v42 = "AVAudioDeviceTestService.mm";
      v43 = 1024;
      v44 = 1216;
      v45 = 2112;
      v46 = v18;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
    }
  }

  v19 = [(AVAudioDeviceTestService *)self inputFilter];
  if (v19)
  {
    v20 = [(AVAudioDeviceTestService *)self inputFilter];
    v21 = v20;
  }

  else
  {
    v21 = [(AVAudioDeviceTestService *)self engine];
    v20 = [v21 inputNode];
  }

  [(AVAudioDeviceTestService *)self setNodeToCaptureData:v20];
  if (!v19)
  {
  }

  v22 = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __63__AVAudioDeviceTestService_startRecording_filePath_completion___block_invoke;
  v38[3] = &unk_1E7EF5898;
  v38[4] = self;
  v23 = v16;
  v39 = v23;
  [v22 installTapOnBus:0 bufferSize:4096 format:v12 block:v38];

  v24 = [(AVAudioDeviceTestService *)self engine];
  v37 = v23;
  v25 = [v24 startAndReturnError:&v37];
  v26 = v37;

  if ((v25 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v29 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v26 localizedDescription];
      v31 = generateAudioSelfTestError(-10);
      v32 = [v31 code];
      *buf = 136315906;
      v42 = "AVAudioDeviceTestService.mm";
      v43 = 1024;
      v44 = 1229;
      v45 = 2112;
      v46 = v30;
      v47 = 2048;
      v48 = v32;
      _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
    }

    v33 = generateAudioSelfTestError(-10);
    v9[2](v9, v33);

    exit(-1);
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v27 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v42 = "AVAudioDeviceTestService.mm";
    v43 = 1024;
    v44 = 1234;
    v45 = 2112;
    v46 = v36;
    _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started recording on server side %@", buf, 0x1Cu);
  }

  v9[2](v9, 0);

  v28 = *MEMORY[0x1E69E9840];
}

void __63__AVAudioDeviceTestService_startRecording_filePath_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) inputTapFile];
  v10 = 0;
  v5 = [v4 writeFromBuffer:v3 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) localizedDescription];
      *buf = 136315650;
      v12 = "AVAudioDeviceTestService.mm";
      v13 = 1024;
      v14 = 1224;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing debug file %@", buf, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stopPlayback
{
  v13 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v3 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 1157;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requesting to stop tone playback.", buf, 0x12u);
  }

  if (self->mPulseToneHandler.__ptr_)
  {
    v4 = [(AVAudioDeviceTestService *)self toneQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVAudioDeviceTestService_stopPlayback__block_invoke;
    block[3] = &unk_1E7EF6628;
    block[4] = self;
    dispatch_async(v4, block);
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v5 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "AVAudioDeviceTestService.mm";
      v11 = 1024;
      v12 = 1179;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Stop tone playback requested, tone has already been stopped.", buf, 0x12u);
    }

    v4 = [(AVAudioDeviceTestService *)self toneQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__AVAudioDeviceTestService_stopPlayback__block_invoke_152;
    v7[3] = &unk_1E7EF6628;
    v7[4] = self;
    dispatch_sync(v4, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __40__AVAudioDeviceTestService_stopPlayback__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 1161;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Stop tone playback requested.", &v14, 0x12u);
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    *v3 = 1;
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v14 = 136315650;
      v15 = "AVAudioDeviceTestService.mm";
      v16 = 1024;
      v17 = 1165;
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Tone has been stopped. { frequency=%f }", &v14, 0x1Cu);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:*(*(*(a1 + 32) + 8) + 8)];
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v6 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "AVAudioDeviceTestService.mm";
      v16 = 1024;
      v17 = 1168;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Tone stop requested but, pulse tone handler is nil", &v14, 0x12u);
    }
  }

  v7 = *(a1 + 32);
  v8 = [v7 userVolumeBeforeHearingTest];
  [v8 floatValue];
  [v7 resetVolume:?];

  [*(a1 + 32) removeSystemVolumeObserver];
  v9 = AVAudioDeviceTestServiceSignPost();
  v10 = TonePlaybackSignpostID();
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BA5AC000, v9, OS_SIGNPOST_INTERVAL_END, v11, "AVF tone playback", "user tap", &v14, 2u);
    }
  }

  result = [*(a1 + 32) cleanUp];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)playback:(id)a3 filePath:(id)a4 completion:(id)a5
{
  v114 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v95 = a4;
  v97 = v8;
  v94 = a5;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:v8 completion:?];
  v9 = [(AVAudioDeviceTestService *)self hearingTestSession];

  if (!v9)
  {
    [(AVAudioDeviceTestService *)self setupAudioSessionFor:v8 playbackOnly:0 completion:v94];
  }

  [(AVAudioDeviceTestService *)self setupAudioEngineFor:v8 sourceNodeBlock:0];
  if (![(AVAudioDeviceTestService *)self setVolume:v8])
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v8 volume];
      v12 = v11;
      v13 = generateAudioSelfTestError(-7);
      *buf = 136315906;
      v107 = "AVAudioDeviceTestService.mm";
      v108 = 1024;
      v109 = 1045;
      v110 = 2048;
      v111 = v12;
      v112 = 2048;
      v113 = [v13 code];
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f (%li)", buf, 0x26u);
    }

    v14 = generateAudioSelfTestError(-7);
    v94[2](v94, v14);
  }

  v15 = [AVAudioFile alloc];
  v16 = [v97 stimulusURL];
  v105 = 0;
  v96 = [(AVAudioFile *)v15 initForReading:v16 error:&v105];
  v17 = v105;

  if (!v96 && v17)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v82 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      [v17 localizedDescription];
      v83 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v84 = generateAudioSelfTestError(-9);
      v85 = [v84 code];
      *buf = 136315906;
      v107 = "AVAudioDeviceTestService.mm";
      v108 = 1024;
      v109 = 1054;
      v110 = 2112;
      v111 = v83;
      v112 = 2048;
      v113 = v85;
      _os_log_impl(&dword_1BA5AC000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
    }

    v86 = generateAudioSelfTestError(-9);
    v94[2](v94, v86);

    exit(-9);
  }

  v18 = [AVAudioPCMBuffer alloc];
  v19 = [(AVAudioFile *)v96 processingFormat];
  v20 = [(AVAudioPCMBuffer *)v18 initWithPCMFormat:v19 frameCapacity:[(AVAudioFile *)v96 length]];

  v104 = v17;
  LOBYTE(v18) = [(AVAudioFile *)v96 readIntoBuffer:v20 error:&v104];
  v21 = v104;

  if ((v18 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v22 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 localizedDescription];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v107 = "AVAudioDeviceTestService.mm";
      v108 = 1024;
      v109 = 1061;
      v110 = 2112;
      v111 = v23;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
    }

    v20 = 0;
  }

  v24 = [(AVAudioBuffer *)v20 format];
  v25 = [v24 channelCount] > 1;

  if (!v25)
  {
    v30 = v20;
    goto LABEL_38;
  }

  v26 = [v97 microphone];
  v27 = v26 == 0;

  if (!v27)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v28 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      [v97 microphone];
      v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v107 = "AVAudioDeviceTestService.mm";
      v108 = 1024;
      v109 = 1068;
      v110 = 2114;
      v111 = v29;
      _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Multichannel file provided, will split into single channel buffers. { requestedMic=%{public}@ }", buf, 0x1Cu);
    }

    v30 = [(AVAudioPCMBuffer *)v20 splitIntoSingleChannelBuffers];
    v31 = [v97 microphone];
    v32 = [v31 isEqualToString:@"LeftBottom"];

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v37 = [v97 microphone];
      v38 = [v37 isEqualToString:@"Front"];

      if (v38)
      {
        v33 = 1;
      }

      else
      {
        v39 = [v97 microphone];
        v40 = [v39 isEqualToString:@"Back"];

        if (v40)
        {
          v33 = 2;
        }

        else
        {
          v41 = [v97 microphone];
          v42 = [v41 isEqualToString:@"RightBottom"];

          if (!v42)
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v80 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              [v97 microphone];
              v81 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136315650;
              v107 = "AVAudioDeviceTestService.mm";
              v108 = 1024;
              v109 = 1081;
              v110 = 2114;
              v111 = v81;
              _os_log_impl(&dword_1BA5AC000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid mic channel name. { providedName=%{public}@ }", buf, 0x1Cu);
            }

            v58 = generateAudioSelfTestError(-7);
            v94[2](v94, v58);
            v36 = v21;
            goto LABEL_66;
          }

          v33 = 3;
        }
      }
    }

    v43 = [(AVAudioPCMBuffer *)v30 objectAtIndexedSubscript:v33];

    v30 = v43;
LABEL_38:
    if (v95)
    {
      v44 = [(AVAudioBuffer *)v20 format];
      v45 = [v44 channelCount] == 1;

      if (v45)
      {
        v46 = [(AVAudioFile *)v96 processingFormat];
        [v46 sampleRate];
        v48 = v47;
        v49 = [(AVAudioDeviceTestService *)self engine];
        v50 = [v49 inputNode];
        v51 = [v50 inputFormatForBus:0];
        [v51 sampleRate];
        v53 = v48 != v52;

        if (v53)
        {
          v54 = [(AVAudioDeviceTestService *)self convertBufferFor:v96 sourceBuffer:v20];
        }

        else
        {
          v54 = 0;
        }

        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v20;
        }

        v56 = v55;

        v30 = v56;
      }
    }

    v93 = dispatch_semaphore_create(0);
    v57 = [(AVAudioDeviceTestService *)self player];
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke;
    v101[3] = &unk_1E7EF6710;
    v92 = v94;
    v103 = v92;
    v58 = v93;
    v102 = v58;
    [v57 scheduleBuffer:v30 atTime:0 options:2 completionHandler:v101];

    if (v95)
    {
      v59 = [(AVAudioDeviceTestService *)self inputFilter];
      if (v59)
      {
        v60 = [(AVAudioDeviceTestService *)self inputFilter];
        v61 = v60;
      }

      else
      {
        v61 = [(AVAudioDeviceTestService *)self engine];
        v60 = [v61 inputNode];
      }

      [(AVAudioDeviceTestService *)self setNodeToCaptureData:v60];
      if (!v59)
      {
      }

      v62 = [(AVAudioDeviceTestService *)self engine];
      v63 = [v62 inputNode];
      v64 = [v63 inputFormatForBus:0];

      v65 = [MEMORY[0x1E695DFF8] fileURLWithPath:v95];
      v66 = [AVAudioFile alloc];
      v67 = [v64 settings];
      v100 = v21;
      v68 = [(AVAudioFile *)v66 initForWriting:v65 settings:v67 error:&v100];
      v69 = v100;

      v21 = v69;
      [(AVAudioDeviceTestService *)self setInputTapFile:v68];

      if (v69)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v70 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [v69 localizedDescription];
          v71 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136315650;
          v107 = "AVAudioDeviceTestService.mm";
          v108 = 1024;
          v109 = 1127;
          v110 = 2112;
          v111 = v71;
          _os_log_impl(&dword_1BA5AC000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
        }
      }

      v72 = [(AVAudioDeviceTestService *)self nodeToCaptureData];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke_151;
      v99[3] = &unk_1E7EF5848;
      v99[4] = self;
      [v72 installTapOnBus:0 bufferSize:4096 format:v64 block:v99];
    }

    v73 = [(AVAudioDeviceTestService *)self engine];
    [v73 prepare];

    v74 = [(AVAudioDeviceTestService *)self engine];
    v98 = v21;
    v75 = [v74 startAndReturnError:&v98];
    v36 = v98;

    if ((v75 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v87 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        [v36 localizedDescription];
        v88 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v89 = generateAudioSelfTestError(-10);
        v90 = [v89 code];
        *buf = 136315906;
        v107 = "AVAudioDeviceTestService.mm";
        v108 = 1024;
        v109 = 1141;
        v110 = 2112;
        v111 = v88;
        v112 = 2048;
        v113 = v90;
        _os_log_impl(&dword_1BA5AC000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
      }

      v91 = generateAudioSelfTestError(-10);
      v92[2](v92, v91);

      exit(-1);
    }

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v76 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      [(AVAudioDeviceTestService *)self engine];
      v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v107 = "AVAudioDeviceTestService.mm";
      v108 = 1024;
      v109 = 1146;
      v110 = 2112;
      v111 = v77;
      _os_log_impl(&dword_1BA5AC000, v76, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", buf, 0x1Cu);
    }

    v78 = [(AVAudioDeviceTestService *)self player];
    [v78 play];

    dispatch_semaphore_wait(v58, 0xFFFFFFFFFFFFFFFFLL);
    [(AVAudioDeviceTestService *)self stopPlayback];

LABEL_66:
    goto LABEL_67;
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v34 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v107 = "AVAudioDeviceTestService.mm";
    v108 = 1024;
    v109 = 1086;
    _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid setup, cannot provide multichannel playback file without specifying mic channel.", buf, 0x12u);
  }

  v35 = generateAudioSelfTestError(-7);
  v94[2](v94, v35);
  v30 = v35;
  v36 = v21;
LABEL_67:

  v79 = *MEMORY[0x1E69E9840];
}

intptr_t __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "AVAudioDeviceTestService.mm";
    v7 = 1024;
    v8 = 1112;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d player finished", &v5, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  result = dispatch_semaphore_signal(*(a1 + 32));
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke_151(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) inputTapFile];
  v10 = 0;
  v5 = [v4 writeFromBuffer:v3 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      *buf = 136315650;
      v12 = "AVAudioDeviceTestService.mm";
      v13 = 1024;
      v14 = 1133;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing debug file %@", buf, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)playbackTone:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke;
  block[3] = &unk_1E7EF6878;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke(id *a1)
{
  v118 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [a1[4] frequency];
    v4 = v3;
    [a1[4] volume];
    v6 = v5;
    [a1[4] duration];
    *buf = 136316162;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 892;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    *&buf[38] = 2048;
    v117 = v7;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Playback tone request. { frequency=%f, volume=%f, duration=%f }", buf, 0x30u);
  }

  v9 = a1[4];
  v8 = a1[5];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_131;
  v106[3] = &unk_1E7EF66C0;
  v107 = a1[6];
  [v8 checkSequenceValidity:v9 completion:v106];
  v10 = [a1[5] hearingTestSession];
  LODWORD(v8) = v10 == 0;

  if (v8)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v11 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 901;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d HearingTest session not set, falling back to default playback session.", buf, 0x12u);
    }

    v13 = a1[4];
    v12 = a1[5];
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_133;
    v104[3] = &unk_1E7EF66C0;
    v105 = a1[6];
    [v12 setupAudioSessionFor:v13 playbackOnly:1 completion:v104];
  }

  v14 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v103 = 0.0;
  if (([v14 getActiveCategoryVolume:&v103 andName:0] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v15 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 913;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting current volume", buf, 0x12u);
    }
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v16 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 916;
    *&buf[18] = 2048;
    *&buf[20] = v103;
    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] CurrentVolume=%f", buf, 0x1Cu);
  }

  v17 = [a1[5] userVolumeBeforeHearingTest];
  v18 = v17 == 0;

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v20 = v103;
    v21 = [v19 initWithFloat:v20];
    [a1[5] setUserVolumeBeforeHearingTest:v21];
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v22 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [a1[5] userVolumeBeforeHearingTest];
    [v23 doubleValue];
    *buf = 136315650;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 922;
    *&buf[18] = 2048;
    *&buf[20] = v24;
    _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] userVolumeBeforeHearingTest=%f", buf, 0x1Cu);
  }

  [a1[4] volume];
  v26 = vabds_f32(v103, v25);
  if (v26 >= 1.1755e-38)
  {
    v27 = fabsf(v25 + v103);
    if (v26 > ((v27 * 0.00000011921) + (v27 * 0.00000011921)))
    {
      [a1[4] volume];
      if (([v14 setActiveCategoryVolumeTo:?] & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v28 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [a1[4] volume];
          *buf = 136315650;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 925;
          *&buf[18] = 2048;
          *&buf[20] = v29;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to set category volume to %f", buf, 0x1Cu);
        }

        v30 = a1[6];
        v31 = generateAudioSelfTestError(-15);
        v30[2](v30, 0, v31);
      }
    }
  }

  v32 = a1[5];
  [a1[4] volume];
  v34 = v33;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_134;
  v101[3] = &unk_1E7EF66C0;
  v102 = a1[6];
  LODWORD(v35) = v34;
  [v32 setupVolumeObserverForVolume:v101 completion:v35];
  if (([a1[5] createAudioEngineAndPulseToneHandlerFor:a1[4]] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v36 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 937;
      _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to create pulse tone handler", buf, 0x12u);
    }

    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-10 userInfo:0];
    (*(a1[6] + 2))();
  }

  v38 = [a1[5] hearingTestSession];
  v39 = v38 == 0;

  if (v39)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v40 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 943;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No session already created.", buf, 0x12u);
    }

    v41 = a1[5];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_139;
    v99[3] = &unk_1E7EF6850;
    v99[4] = v41;
    v100 = a1[6];
    [v41 setupObservers:v99];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3457;
  *&buf[32] = __Block_byref_object_dispose__3458;
  v117 = [*(*(a1[5] + 1) + 16) copy];
  v43 = a1[4];
  v42 = a1[5];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_140;
  v98[3] = &unk_1E7EF5820;
  v98[4] = v42;
  [v42 setupAudioEngineFor:v43 sourceNodeBlock:v98];
  v44 = a1[5];
  v45 = [a1[4] micBufferNumbers];
  v46 = [v45 count];
  if (v46)
  {
    v47 = [a1[4] micBufferNumbers];
  }

  else
  {
    v47 = 0;
  }

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_2;
  v96[3] = &unk_1E7EF66C0;
  v97 = a1[6];
  [v44 setupMultiChannelMixerForOutputChannel:v47 completion:v96];
  if (v46)
  {
  }

  v48 = AVAudioDeviceTestServiceSignPost();
  v49 = TonePlaybackSignpostID();
  if ((v49 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v50 = v49;
    if (os_signpost_enabled(v48))
    {
      [a1[4] frequency];
      v52 = v51;
      [a1[4] soundLevel];
      *v108 = 134218240;
      v109 = v52;
      v110 = 2048;
      *v111 = v53;
      _os_signpost_emit_with_name_impl(&dword_1BA5AC000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v50, "AVF tone playback", "freq=%f, lvl=%f", v108, 0x16u);
    }
  }

  v54 = [a1[5] engine];
  [v54 prepare];

  if ([a1[5] isMixerOutputEnabled])
  {
    v55 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/multichannel_mixer_out.caf"];
    v56 = [AVAudioFile alloc];
    v57 = [a1[5] engine];
    v58 = [v57 outputNode];
    v59 = [v58 outputFormatForBus:0];
    v60 = [v59 settings];
    v95 = 0;
    v61 = [(AVAudioFile *)v56 initForWriting:v55 settings:v60 error:&v95];
    v62 = v95;

    if (v62)
    {
      (*(a1[6] + 2))();
    }

    v63 = [a1[5] multichannelMixer];
    v64 = [a1[5] multichannelMixer];
    v65 = [v64 outputFormatForBus:0];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_146;
    v93[3] = &unk_1E7EF5848;
    v66 = v61;
    v94 = v66;
    [v63 installTapOnBus:0 bufferSize:1024 format:v65 block:v93];
  }

  else
  {
    v62 = 0;
  }

  v67 = [a1[5] engine];
  v92 = v62;
  v68 = [v67 startAndReturnError:&v92];
  v69 = v92;

  if ((v68 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v81 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = [v69 localizedDescription];
      v83 = generateAudioSelfTestError(-10);
      v84 = COERCE_DOUBLE([v83 code]);
      *v108 = 136315906;
      v109 = "AVAudioDeviceTestService.mm";
      v110 = 1024;
      *v111 = 990;
      *&v111[4] = 2112;
      *&v111[6] = v82;
      v112 = 2048;
      v113 = v84;
      _os_log_impl(&dword_1BA5AC000, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", v108, 0x26u);
    }

    v85 = a1[6];
    v86 = generateAudioSelfTestError(-10);
    v85[2](v85, 0, v86);

    exit(-1);
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v70 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    [a1[4] frequency];
    v72 = v71;
    [a1[4] volume];
    v74 = v73;
    [a1[4] duration];
    *v108 = 136316162;
    v109 = "AVAudioDeviceTestService.mm";
    v110 = 1024;
    *v111 = 995;
    *&v111[4] = 2048;
    *&v111[6] = v72;
    v112 = 2048;
    v113 = v74;
    v114 = 2048;
    v115 = v75;
    _os_log_impl(&dword_1BA5AC000, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Started playing back tone. { frequency=%f, volume=%f, duration=%f }", v108, 0x30u);
  }

  [a1[4] duration];
  v77 = dispatch_time(0, (v76 * 1000000000.0));
  v78 = [a1[5] toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_149;
  block[3] = &unk_1E7EF5870;
  v87 = *(a1 + 2);
  v79 = v87.i64[0];
  v89 = vextq_s8(v87, v87, 8uLL);
  v91 = buf;
  v90 = a1[6];
  dispatch_after(v77, v78, block);

  _Block_object_dispose(buf, 8);
  v80 = *MEMORY[0x1E69E9840];
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_131(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_139(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "AVAudioDeviceTestService.mm";
      v8 = 1024;
      v9 = 946;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption detected, resetting observers.", &v6, 0x12u);
    }

    [*(a1 + 32) cleanUpObservers];
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_140(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  v5 = *(*(a1 + 32) + 8);
  if (v5 && a4)
  {
    v6 = 0;
    v7 = a5 + 4;
    v8 = *a5;
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = *(v5 + 80);
    v12 = a4;
    v13 = *(v5 + 24) / *(v5 + 72);
    do
    {
      ++v9;
      v14 = v10 + 1;
      v15 = 0.0;
      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v16 = *(v5 + 52);
        if (v16)
        {
          if (v10 < 0)
          {
            v11 = *v5;
            *(v5 + 80) = *v5;
          }

          else
          {
            v17 = sin((v13 * v9 + v13 * v9) * 3.14159265) * *(v5 + 32);
            v18 = *(v5 + 56);
            if (v10 >= v18)
            {
              v20 = *(v5 + 60);
              if (v20 || *v5 == 1)
              {
                v21 = *(v5 + 64);
                v22 = v21 + v18;
                if (v22 <= v14)
                {
                  v14 = -(v20 - v21);
                  *(v5 + 52) = (v16 & ~(v16 >> 31)) - 1;
                  v11 = *v5;
                  *(v5 + 80) = *v5;
                  v17 = 0.0;
                }

                else
                {
                  v11 = 0;
                  v17 = v17 * ((v22 - v14) / v21);
                }
              }

              else
              {
                v11 = 0;
                v14 = *(v5 + 56);
              }
            }

            else
            {
              v19 = *(v5 + 64);
              v11 = 0;
              if (v19 > v14)
              {
                v17 = v17 * (v14 / v19);
              }
            }

            v15 = v17;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      v10 = v14;
      v23 = v7;
      v24 = v8;
      if (v8)
      {
        do
        {
          v25 = *v23;
          v23 += 4;
          *(v25 + 4 * v6) = v15;
          --v24;
        }

        while (v24);
      }

      ++v6;
    }

    while (v6 != v12);
    *(v5 + 40) = v9;
    *(v5 + 48) = v14;
  }

  return 0;
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9 = 0;
  v8 = [v7 writeFromBuffer:v5 error:&v9];
  if (v9)
  {
    __assert_rtn("[AVAudioDeviceTestService playbackTone:completion:]_block_invoke", "AVAudioDeviceTestService.mm", 984, "err == nil");
  }

  if ((v8 & 1) == 0)
  {
    __assert_rtn("[AVAudioDeviceTestService playbackTone:completion:]_block_invoke", "AVAudioDeviceTestService.mm", 985, "didWrite");
  }
}

uint64_t __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_149(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    [*(a1 + 40) frequency];
    v14 = v13;
    [*(a1 + 40) volume];
    v16 = v15;
    [*(a1 + 40) duration];
    *v32 = 136316162;
    *&v32[4] = "AVAudioDeviceTestService.mm";
    *&v32[12] = 1024;
    *&v32[14] = 999;
    *&v32[18] = 2048;
    *&v32[20] = v14;
    *&v32[28] = 2048;
    *&v32[30] = v16;
    *&v32[38] = 2048;
    v33 = v17;
    v18 = "%25s:%-5d [AVAT Server] Duration timer called, tone has already been stopped, pulse tone handler is nil { frequency=%f, volume=%f, duration=%f }";
    v19 = v10;
    v20 = 48;
LABEL_20:
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, v18, v32, v20);
LABEL_21:

    goto LABEL_22;
  }

  if (([*(v2 + 16) isEqualToString:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    [*(a1 + 40) frequency];
    v22 = v21;
    [*(a1 + 40) volume];
    v24 = v23;
    [*(a1 + 40) duration];
    v25 = *(*(*(a1 + 56) + 8) + 40);
    v26 = *(*(*(a1 + 32) + 8) + 16);
    *v32 = 136316674;
    *&v32[4] = "AVAudioDeviceTestService.mm";
    *&v32[12] = 1024;
    *&v32[14] = 1001;
    *&v32[18] = 2048;
    *&v32[20] = v22;
    *&v32[28] = 2048;
    *&v32[30] = v24;
    *&v32[38] = 2048;
    v33 = v27;
    *v34 = 2112;
    *&v34[2] = v25;
    *&v34[10] = 2112;
    *&v34[12] = v26;
    v18 = "%25s:%-5d [AVAT Server] Duration timer called, tone has already been stopped, pulse tone IDs do not match. { frequency=%f, volume=%f, duration=%f, pulseToneID=%@, currID=%@ }";
    v19 = v10;
    v20 = 68;
    goto LABEL_20;
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3 && [*(v3 + 16) isEqualToString:*(*(*(a1 + 56) + 8) + 40)])
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) frequency];
      v6 = v5;
      [*(a1 + 40) volume];
      v8 = v7;
      [*(a1 + 40) duration];
      *v32 = 136316162;
      *&v32[4] = "AVAudioDeviceTestService.mm";
      *&v32[12] = 1024;
      *&v32[14] = 1003;
      *&v32[18] = 2048;
      *&v32[20] = v6;
      *&v32[28] = 2048;
      *&v32[30] = v8;
      *&v32[38] = 2048;
      v33 = v9;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Duration timer called, stopping tone. { frequency=%f, volume=%f, duration=%f }", v32, 0x30u);
    }

    **(*(a1 + 32) + 8) = 1;
    [MEMORY[0x1E696AF00] sleepForTimeInterval:*(*(*(a1 + 32) + 8) + 8)];
    [*(a1 + 32) cleanUp];
    (*(*(a1 + 48) + 16))();
    v10 = AVAudioDeviceTestServiceSignPost();
    v11 = TonePlaybackSignpostID();
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v32 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BA5AC000, v10, OS_SIGNPOST_INTERVAL_END, v12, "AVF tone playback", "duration timer", v32, 2u);
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  v28 = *(a1 + 32);
  v29 = [v28 userVolumeBeforeHearingTest];
  [v29 floatValue];
  [v28 resetVolume:?];

  result = [*(a1 + 32) removeSystemVolumeObserver];
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)calculateCrossCorrelationPeakRelativeToSource:(id)a3 capture:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 format];
  if ([v7 channelCount] == 1)
  {
    v8 = [v6 format];
    v9 = [v8 channelCount];

    if (v9 == 1)
    {
      v10 = [v5 frameLength];
      v11 = *[v5 floatChannelData];
      v12 = malloc_type_malloc(8 * v10, 0x100004052888210uLL);
      bzero(v12, 8 * v10);
      v13 = 3 * v10 - 1;
      v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
      bzero(v14, 4 * v13);
      if (v13 <= [v6 frameLength])
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v18 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = generateAudioSelfTestError(-12);
          v22 = 4.8152e-34;
          v23 = "AVAudioDeviceTestService.mm";
          v24 = 1024;
          v25 = 868;
          v26 = 2048;
          v27 = [v19 code];
          _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d the length of the captured buffer needs to be greater (%li)", &v22, 0x1Cu);
        }
      }

      else
      {
        memcpy(v14, *[v6 floatChannelData], 4 * objc_msgSend(v6, "frameLength"));
      }

      vDSP_conv(v14, 1, v11, 1, v12, 1, 2 * v10, v10);
      v22 = 0.0;
      vDSP_maxv(v12, 1, &v22, 2 * v10);
      free(v14);
      free(v12);
      v17 = (log10f(v22) * 10.0);
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v15 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = generateAudioSelfTestError(-12);
    v22 = 4.8152e-34;
    v23 = "AVAudioDeviceTestService.mm";
    v24 = 1024;
    v25 = 881;
    v26 = 2048;
    v27 = [v16 code];
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d the source file or captured buffers aren't signal channel files (%li)", &v22, 0x1Cu);
  }

  v17 = 0.0;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)startWithSequence:(id)a3 completion:(id)a4
{
  v247 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v211 = a4;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v7 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 449;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d entering sequence", buf, 0x12u);
  }

  v8 = self;
  objc_sync_enter(v8);
  *v244 = 0;
  *&v244[8] = v244;
  *&v244[16] = 0x2020000000;
  p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
  v10 = getMSNMonitorBeginExceptionSymbolLoc(void)::ptr;
  *&v244[24] = getMSNMonitorBeginExceptionSymbolLoc(void)::ptr;
  if (!getMSNMonitorBeginExceptionSymbolLoc(void)::ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL36getMSNMonitorBeginExceptionSymbolLocv_block_invoke;
    *&buf[24] = &unk_1E7EF6988;
    *&buf[32] = v244;
    v11 = MediaSafetyNetLibrary();
    v12 = dlsym(v11, "MSNMonitorBeginException");
    *(*(*&buf[32] + 8) + 24) = v12;
    getMSNMonitorBeginExceptionSymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
    v10 = *(*&v244[8] + 24);
  }

  _Block_object_dispose(v244, 8);
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MSNMonitorBeginException_soft(const char *)"];
    [v14 handleFailureInFunction:v188 file:@"AVAudioDeviceTestService.mm" lineNumber:47 description:{@"%s", dlerror()}];

    goto LABEL_173;
  }

  v10("audiotesting");
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v13 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 457;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting sequence", buf, 0x12u);
  }

  v14 = [MEMORY[0x1E698D708] sharedInstance];
  [v14 setAllowAllBuiltInDataSources:1];
  if ([v6 priority])
  {
    v15 = [v6 priority];
  }

  else
  {
    v15 = 10;
  }

  v243 = 0;
  v16 = [v14 setInterruptionPriority:v15 error:&v243];
  p_opt_class_meths = v243;
  if (v16)
  {
    goto LABEL_20;
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    goto LABEL_174;
  }

  while (1)
  {
    v17 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [p_opt_class_meths code];
      *buf = 136315650;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 467;
      *&buf[18] = 2048;
      *&buf[20] = v18;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d error setInterruptionPriority %li", buf, 0x1Cu);
    }

    v19 = generateAudioSelfTestError(-3);
    v211[2](v211, 0, v19);

LABEL_20:
    if ([v6 requiresBluetoothOutput])
    {
      v20 = 33;
    }

    else
    {
      v20 = 1;
    }

    v21 = *MEMORY[0x1E698D518];
    v22 = *MEMORY[0x1E698D5F0];
    v242 = p_opt_class_meths;
    v23 = [v14 setCategory:v21 mode:v22 options:v20 error:&v242];
    v24 = v242;

    v25 = v24;
    if ((v23 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v26 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v24 code];
        *buf = 136315650;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 477;
        *&buf[18] = 2048;
        *&buf[20] = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
      }

      v28 = generateAudioSelfTestError(-1);
      v211[2](v211, 0, v28);
    }

    v241 = v24;
    v29 = [v14 setActive:1 error:&v241];
    v30 = v241;

    v31 = v30;
    if (v29)
    {
      v240 = v30;
      v32 = [v14 setPreferredIOBufferFrameSize:4096 error:&v240];
      v33 = v240;

      if ((v32 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v34 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [v33 code];
          v36 = generateAudioSelfTestError(-1);
          v37 = [v36 code];
          *buf = 136315906;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 504;
          *&buf[18] = 2048;
          *&buf[20] = v35;
          *&buf[28] = 2048;
          *&buf[30] = v37;
          _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v209 = dispatch_semaphore_create(0);
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v38 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 509;
        _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configuring sequence", buf, 0x12u);
      }

      v39 = [v6 mode];
      v40 = v39 == 0;

      if (!v40)
      {
        v41 = [v6 mode];
        v239 = v33;
        v42 = [v14 setMode:v41 error:&v239];
        v43 = v239;

        if ((v42 & 1) == 0)
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v44 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = [v43 code];
            v46 = generateAudioSelfTestError(-1);
            v47 = [v46 code];
            *buf = 136315906;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 513;
            *&buf[18] = 2048;
            *&buf[20] = v45;
            *&buf[28] = 2048;
            *&buf[30] = v47;
            _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
          }
        }

        v33 = v43;
      }

      [(AVAudioDeviceTestService *)v8 configureDataSources:v6 session:v14];
      [(AVAudioDeviceTestService *)v8 createAudioEngineAndProcessingChain:v6 session:v14 sourceNodeBlock:0];
      if ([v6 numberOfChannels])
      {
        v48 = [v6 outputID];
        v49 = [v6 numberOfChannels];
      }

      else
      {
        v48 = [v6 outputID];
        v49 = 1;
      }

      [(AVAudioDeviceTestService *)v8 configureMultiChannelMixerForOutputChannel:v48 totalChannels:v49];
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v57 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [v6 requiresBluetoothOutput];
        v59 = [(AVAudioDeviceTestService *)v8 isOutputRouteBluetooth:v6 session:v14];
        *buf = 136315906;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 529;
        *&buf[18] = 1024;
        *&buf[20] = v58;
        *&buf[24] = 1024;
        *&buf[26] = v59;
        _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth setting: %d, Output route: %d", buf, 0x1Eu);
      }

      if ([v6 requiresBluetoothOutput] && !-[AVAudioDeviceTestService isOutputRouteBluetooth:session:](v8, "isOutputRouteBluetooth:session:", v6, v14))
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v97 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 532;
          _os_log_impl(&dword_1BA5AC000, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d Output route is not a bluetooth speaker", buf, 0x12u);
        }

        v98 = generateAudioSelfTestError(-7);
        v211[2](v211, 0, v98);
      }

      else
      {
        if ([(AVAudioDeviceTestService *)v8 setVolume:v6 session:v14])
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v60 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 543;
            _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting up observers", buf, 0x12u);
          }

          v61 = [(AVAudioDeviceTestService *)v8 routeChangeObserver];
          v62 = v61 == 0;

          if (!v62)
          {
            v63 = [MEMORY[0x1E696AD88] defaultCenter];
            v64 = [(AVAudioDeviceTestService *)v8 routeChangeObserver];
            [v63 removeObserver:v64];
          }

          v65 = [MEMORY[0x1E696AD88] defaultCenter];
          v66 = *MEMORY[0x1E698D6C8];
          v238[0] = MEMORY[0x1E69E9820];
          v238[1] = 3221225472;
          v238[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke;
          v238[3] = &unk_1E7EF5730;
          v238[4] = v8;
          v67 = [v65 addObserverForName:v66 object:v14 queue:0 usingBlock:v238];
          [(AVAudioDeviceTestService *)v8 setRouteChangeObserver:v67];

          v68 = [(AVAudioDeviceTestService *)v8 interruptionObserver];
          v69 = v68 == 0;

          if (!v69)
          {
            v70 = [MEMORY[0x1E696AD88] defaultCenter];
            v71 = [(AVAudioDeviceTestService *)v8 interruptionObserver];
            [v70 removeObserver:v71];
          }

          v72 = [MEMORY[0x1E696AD88] defaultCenter];
          v73 = *MEMORY[0x1E698D550];
          v236[0] = MEMORY[0x1E69E9820];
          v236[1] = 3221225472;
          v236[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_110;
          v236[3] = &unk_1E7EF5758;
          v74 = v211;
          v237 = v74;
          v75 = [v72 addObserverForName:v73 object:v14 queue:0 usingBlock:v236];
          [(AVAudioDeviceTestService *)v8 setInterruptionObserver:v75];

          v76 = [(AVAudioDeviceTestService *)v8 mediaservicesLostObserver];
          LOBYTE(v73) = v76 == 0;

          if ((v73 & 1) == 0)
          {
            v77 = [MEMORY[0x1E696AD88] defaultCenter];
            v78 = [(AVAudioDeviceTestService *)v8 mediaservicesLostObserver];
            [v77 removeObserver:v78];
          }

          v79 = [MEMORY[0x1E696AD88] defaultCenter];
          v80 = *MEMORY[0x1E698D5A8];
          v234[0] = MEMORY[0x1E69E9820];
          v234[1] = 3221225472;
          v234[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_111;
          v234[3] = &unk_1E7EF5758;
          v204 = v74;
          v235 = v204;
          v81 = [v79 addObserverForName:v80 object:v14 queue:0 usingBlock:v234];
          [(AVAudioDeviceTestService *)v8 setMediaservicesLostObserver:v81];

          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v82 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 576;
            _os_log_impl(&dword_1BA5AC000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d preparing for test", buf, 0x12u);
          }

          v83 = [AVAudioFile alloc];
          v84 = [v6 stimulusURL];
          v233 = v33;
          v210 = [(AVAudioFile *)v83 initForReading:v84 error:&v233];
          v85 = v233;

          if (!v210 && v85)
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v190 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
            {
              v191 = [v85 localizedDescription];
              v192 = generateAudioSelfTestError(-9);
              v193 = [v192 code];
              *buf = 136315906;
              *&buf[4] = "AVAudioDeviceTestService.mm";
              *&buf[12] = 1024;
              *&buf[14] = 581;
              *&buf[18] = 2112;
              *&buf[20] = v191;
              *&buf[28] = 2048;
              *&buf[30] = v193;
              _os_log_impl(&dword_1BA5AC000, v190, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
            }

            v194 = generateAudioSelfTestError(-9);
            v204[2](v204, 0, v194);

            exit(-9);
          }

          v86 = [AVAudioPCMBuffer alloc];
          v87 = [(AVAudioFile *)v210 processingFormat];
          v207 = [(AVAudioPCMBuffer *)v86 initWithPCMFormat:v87 frameCapacity:[(AVAudioFile *)v210 length]];

          v232 = v85;
          LOBYTE(v87) = [(AVAudioFile *)v210 readIntoBuffer:v207 error:&v232];
          v88 = v232;

          v31 = v88;
          if (v87)
          {
            v89 = v207;
          }

          else
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v99 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v100 = [v88 localizedDescription];
              *buf = 136315650;
              *&buf[4] = "AVAudioDeviceTestService.mm";
              *&buf[12] = 1024;
              *&buf[14] = 588;
              *&buf[18] = 2112;
              *&buf[20] = v100;
              _os_log_impl(&dword_1BA5AC000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
            }

            v89 = 0;
          }

          v208 = v89;
          v101 = [(AVAudioBuffer *)v89 format];
          v102 = [v101 channelCount] > 1;

          if (v102)
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v103 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = generateAudioSelfTestError(-6);
              v105 = [v104 code];
              *buf = 136315650;
              *&buf[4] = "AVAudioDeviceTestService.mm";
              *&buf[12] = 1024;
              *&buf[14] = 593;
              *&buf[18] = 2048;
              *&buf[20] = v105;
              _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d invalid stimulus buffer format %li", buf, 0x1Cu);
            }

            v106 = generateAudioSelfTestError(-6);
            v204[2](v204, 0, v106);
            v56 = 1;
          }

          else
          {
            v201 = v208;
            v107 = [(AVAudioFile *)v210 processingFormat];
            [v107 sampleRate];
            v109 = v108;
            v110 = [(AVAudioDeviceTestService *)v8 engine];
            v111 = [v110 inputNode];
            v112 = [v111 inputFormatForBus:0];
            [v112 sampleRate];
            v114 = v109 != v113;

            if (v114)
            {
              v115 = [AVAudioFormat alloc];
              v116 = [(AVAudioFile *)v210 processingFormat];
              v117 = [v116 settings];
              v202 = [(AVAudioFormat *)v115 initWithSettings:v117];

              v118 = [(AVAudioFormat *)v202 settings];
              v205 = [v118 mutableCopy];

              v119 = MEMORY[0x1E696AD98];
              v120 = [(AVAudioDeviceTestService *)v8 engine];
              v121 = [v120 inputNode];
              v122 = [v121 inputFormatForBus:0];
              [v122 sampleRate];
              v123 = [v119 numberWithDouble:?];
              [v205 setObject:v123 forKeyedSubscript:@"AVSampleRateKey"];

              [v205 setObject:&unk_1F385A2B8 forKeyedSubscript:@"AVNumberOfChannelsKey"];
              v124 = [[AVAudioFormat alloc] initWithSettings:v205];
              v125 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v124 frameCapacity:[(AVAudioFile *)v210 length]];
              v126 = [[AVAudioConverter alloc] initFromFormat:v202 toFormat:v124];
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_117;
              aBlock[3] = &unk_1E7EF5780;
              v231 = v201;
              v127 = _Block_copy(aBlock);
              v229 = v31;
              v128 = [(AVAudioConverter *)v126 convertToBuffer:v125 error:&v229 withInputFromBlock:v127];
              v200 = v229;

              if (!v128)
              {
                if (AVAudioDeviceTestServiceLog(void)::once != -1)
                {
                  dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
                }

                v129 = *AVAudioDeviceTestServiceLog(void)::category;
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  v130 = [v200 localizedDescription];
                  v131 = generateAudioSelfTestError(-6);
                  v132 = [v131 code];
                  *buf = 136315906;
                  *&buf[4] = "AVAudioDeviceTestService.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 621;
                  *&buf[18] = 2112;
                  *&buf[20] = v130;
                  *&buf[28] = 2048;
                  *&buf[30] = v132;
                  _os_log_impl(&dword_1BA5AC000, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
                }
              }

              v31 = v200;
              v133 = v125;
            }

            else
            {
              v133 = 0;
            }

            v134 = v133;
            if (!v133)
            {
              v133 = v201;
            }

            v206 = v133;

            v225 = 0;
            v226 = &v225;
            v227 = 0x2020000000;
            v135 = [(AVAudioPCMBuffer *)v206 frameLength];
            [v14 outputSampleRate];
            v137 = v136;
            v138 = [(AVAudioBuffer *)v206 format];
            [v138 sampleRate];
            v140 = v139;
            [v14 outputLatency];
            v142 = v141;
            [v14 outputSampleRate];
            v144 = v143;
            [v14 outputSampleRate];
            v146 = v145;

            v228 = ((v137 / v140 * v135) + v142 * v144 + v146 * 0.5);
            v147 = [(AVAudioDeviceTestService *)v8 engine];
            v148 = [v147 inputNode];
            v203 = [v148 inputFormatForBus:0];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = __Block_byref_object_copy__3457;
            *&buf[32] = __Block_byref_object_dispose__3458;
            v149 = [AVAudioPCMBuffer alloc];
            v246 = [(AVAudioPCMBuffer *)v149 initWithPCMFormat:v203 frameCapacity:*(v226 + 6)];
            [*(*&buf[8] + 40) setFrameLength:0];
            v150 = [(AVAudioDeviceTestService *)v8 inputFilter];
            if (v150)
            {
              v151 = [(AVAudioDeviceTestService *)v8 inputFilter];
              v152 = v151;
            }

            else
            {
              v152 = [(AVAudioDeviceTestService *)v8 engine];
              v151 = [v152 inputNode];
            }

            [(AVAudioDeviceTestService *)v8 setNodeToCaptureData:v151];
            if (!v150)
            {
            }

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v153 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v154 = *(v226 + 6);
              *v244 = 136315650;
              *&v244[4] = "AVAudioDeviceTestService.mm";
              *&v244[12] = 1024;
              *&v244[14] = 639;
              *&v244[18] = 1024;
              *&v244[20] = v154;
              _os_log_impl(&dword_1BA5AC000, v153, OS_LOG_TYPE_DEFAULT, "%25s:%-5d test length %i frames", v244, 0x18u);
            }

            v155 = [(AVAudioDeviceTestService *)v8 nodeToCaptureData];
            v220[0] = MEMORY[0x1E69E9820];
            v220[1] = 3221225472;
            v220[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_119;
            v220[3] = &unk_1E7EF57A8;
            v223 = buf;
            v156 = v204;
            v222 = v156;
            v224 = &v225;
            v157 = v209;
            v221 = v157;
            [v155 installTapOnBus:0 bufferSize:4096 format:v203 block:v220];

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v158 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
            {
              *v244 = 136315394;
              *&v244[4] = "AVAudioDeviceTestService.mm";
              *&v244[12] = 1024;
              *&v244[14] = 711;
              _os_log_impl(&dword_1BA5AC000, v158, OS_LOG_TYPE_DEFAULT, "%25s:%-5d scheduling stimulus file", v244, 0x12u);
            }

            v159 = [(AVAudioDeviceTestService *)v8 player];
            [v159 scheduleBuffer:v206 atTime:0 options:2 completionHandler:&__block_literal_global_123];

            v160 = [(AVAudioDeviceTestService *)v8 engine];
            [v160 prepare];

            v161 = [(AVAudioDeviceTestService *)v8 engine];
            v219 = v31;
            LOBYTE(v160) = [v161 startAndReturnError:&v219];
            v162 = v219;

            v163 = v162;
            if ((v160 & 1) == 0)
            {
              if (AVAudioDeviceTestServiceLog(void)::once != -1)
              {
                dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
              }

              v195 = *AVAudioDeviceTestServiceLog(void)::category;
              if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                v196 = [v162 localizedDescription];
                v197 = generateAudioSelfTestError(-10);
                v198 = [v197 code];
                *v244 = 136315906;
                *&v244[4] = "AVAudioDeviceTestService.mm";
                *&v244[12] = 1024;
                *&v244[14] = 724;
                *&v244[18] = 2112;
                *&v244[20] = v196;
                *&v244[28] = 2048;
                *&v244[30] = v198;
                _os_log_impl(&dword_1BA5AC000, v195, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", v244, 0x26u);
              }

              v199 = generateAudioSelfTestError(-10);
              v156[2](v156, 0, v199);

              exit(-1);
            }

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v164 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
            {
              v165 = [(AVAudioDeviceTestService *)v8 engine];
              *v244 = 136315650;
              *&v244[4] = "AVAudioDeviceTestService.mm";
              *&v244[12] = 1024;
              *&v244[14] = 729;
              *&v244[18] = 2112;
              *&v244[20] = v165;
              _os_log_impl(&dword_1BA5AC000, v164, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", v244, 0x1Cu);
            }

            v166 = [(AVAudioDeviceTestService *)v8 player];
            [v166 play];

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v167 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
            {
              *v244 = 136315394;
              *&v244[4] = "AVAudioDeviceTestService.mm";
              *&v244[12] = 1024;
              *&v244[14] = 733;
              _os_log_impl(&dword_1BA5AC000, v167, OS_LOG_TYPE_DEFAULT, "%25s:%-5d waiting for sequence to finish", v244, 0x12u);
            }

            dispatch_semaphore_wait(v157, 0xFFFFFFFFFFFFFFFFLL);
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v168 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
            {
              *v244 = 136315394;
              *&v244[4] = "AVAudioDeviceTestService.mm";
              *&v244[12] = 1024;
              *&v244[14] = 737;
              _os_log_impl(&dword_1BA5AC000, v168, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sequence finished", v244, 0x12u);
            }

            v169 = [(AVAudioDeviceTestService *)v8 nodeToCaptureData];
            [v169 removeTapOnBus:0];

            v170 = [(AVAudioDeviceTestService *)v8 engine];
            v171 = [v170 isRunning];

            if (v171)
            {
              v172 = [(AVAudioDeviceTestService *)v8 player];
              [v172 stop];

              v173 = [(AVAudioDeviceTestService *)v8 engine];
              [v173 stop];
            }

            v218 = v163;
            v174 = [v14 setActive:0 error:&v218];
            v175 = v218;

            v31 = v175;
            if ((v174 & 1) == 0)
            {
              if (AVAudioDeviceTestServiceLog(void)::once != -1)
              {
                dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
              }

              v176 = *AVAudioDeviceTestServiceLog(void)::category;
              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                v177 = [v175 code];
                v178 = generateAudioSelfTestError(-11);
                v179 = [v178 code];
                *v244 = 136315906;
                *&v244[4] = "AVAudioDeviceTestService.mm";
                *&v244[12] = 1024;
                *&v244[14] = 751;
                *&v244[18] = 2048;
                *&v244[20] = v177;
                *&v244[28] = 2048;
                *&v244[30] = v179;
                _os_log_impl(&dword_1BA5AC000, v176, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", v244, 0x26u);
              }
            }

            [(AVAudioDeviceTestService *)v8 cleanUpObservers];
            v212[0] = MEMORY[0x1E69E9820];
            v212[1] = 3221225472;
            v212[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_124;
            v212[3] = &unk_1E7EF57F8;
            v217 = buf;
            v180 = v6;
            v213 = v180;
            v214 = v8;
            v106 = v206;
            v215 = v106;
            v216 = v156;
            v181 = _Block_copy(v212);
            if ([v180 processSequenceAsynchronously])
            {
              v182 = dispatch_get_global_queue(2, 0);
              dispatch_async(v182, v181);
            }

            else
            {
              v181[2](v181);
            }

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v225, 8);

            v56 = 0;
          }

          goto LABEL_160;
        }

        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v90 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          [v6 volume];
          v92 = v91;
          v93 = [v14 category];
          v94 = generateAudioSelfTestError(-7);
          v95 = [v94 code];
          *buf = 136316162;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 538;
          *&buf[18] = 2048;
          *&buf[20] = v92;
          *&buf[28] = 2112;
          *&buf[30] = v93;
          *&buf[38] = 2048;
          v246 = v95;
          _os_log_impl(&dword_1BA5AC000, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f for category %@ - (%li)", buf, 0x30u);
        }

        v96 = generateAudioSelfTestError(-7);
        v211[2](v211, 0, v96);
      }

      v56 = 1;
      v31 = v33;
LABEL_160:
      v55 = v209;
      goto LABEL_161;
    }

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v50 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [v30 code];
      v52 = generateAudioSelfTestError(-11);
      v53 = [v52 code];
      *buf = 136315906;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 488;
      *&buf[18] = 2048;
      *&buf[20] = v51;
      *&buf[28] = 2048;
      *&buf[30] = v53;
      _os_log_impl(&dword_1BA5AC000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
    }

    if ([v30 code] == 561145203)
    {
      [(AVAudioDeviceTestService *)v8 setTestServiceSupportedOnHardware:0];
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v54 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 492;
        _os_log_impl(&dword_1BA5AC000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d running test on platform with inadequate hardware", buf, 0x12u);
      }

      v55 = generateAudioSelfTestError(-8);
      v211[2](v211, 0, v55);
    }

    else
    {
      v55 = generateAudioSelfTestError(-11);
      v211[2](v211, 0, v55);
    }

    v56 = 1;
LABEL_161:

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v183 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 844;
      _os_log_impl(&dword_1BA5AC000, v183, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sequence completed", buf, 0x12u);
    }

    if ((v56 | 2) != 2)
    {
      goto LABEL_170;
    }

    *v244 = 0;
    *&v244[8] = v244;
    *&v244[16] = 0x2020000000;
    p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
    v184 = getMSNMonitorEndExceptionSymbolLoc(void)::ptr;
    *&v244[24] = getMSNMonitorEndExceptionSymbolLoc(void)::ptr;
    if (!getMSNMonitorEndExceptionSymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL34getMSNMonitorEndExceptionSymbolLocv_block_invoke;
      *&buf[24] = &unk_1E7EF6988;
      *&buf[32] = v244;
      v185 = MediaSafetyNetLibrary();
      v186 = dlsym(v185, "MSNMonitorEndException");
      *(*(*&buf[32] + 8) + 24) = v186;
      getMSNMonitorEndExceptionSymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
      v184 = *(*&v244[8] + 24);
    }

    _Block_object_dispose(v244, 8);
    if (v184)
    {
      break;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v189 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MSNMonitorEndException_soft(const char *)"];
    [v14 handleFailureInFunction:v189 file:@"AVAudioDeviceTestService.mm" lineNumber:48 description:{@"%s", dlerror()}];

LABEL_173:
    __break(1u);
LABEL_174:
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v184("audiotesting");
LABEL_170:
  objc_sync_exit(v8);

  v187 = *MEMORY[0x1E69E9840];
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698D6E0]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) stringForRouteChangeReason:v6];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v8 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "AVAudioDeviceTestService.mm";
    v12 = 1024;
    v13 = 553;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route change (%@)", &v10, 0x1Cu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_110(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 object];
    v6 = generateAudioSelfTestError(-3);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 561;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d interruption (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = generateAudioSelfTestError(-3);
  (*(v7 + 16))(v7, 0, v8);

  exit(-3);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_111(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 object];
    v6 = generateAudioSelfTestError(-4);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 571;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd died (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = generateAudioSelfTestError(-4);
  (*(v7 + 16))(v7, 0, v8);

  exit(-4);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v7 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 averagePowerPerChannel];
    v15 = 136315650;
    v16 = "AVAudioDeviceTestService.mm";
    v17 = 1024;
    v18 = 655;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d collecting input tap data %@", &v15, 0x1Cu);
  }

  if (([*(*(*(a1 + 48) + 8) + 40) appendDataFromBuffer:v5] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v9 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = generateAudioSelfTestError(-10);
      v11 = [v10 code];
      v15 = 136315650;
      v16 = "AVAudioDeviceTestService.mm";
      v17 = 1024;
      v18 = 658;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to read in from buffer - test error %li", &v15, 0x1Cu);
    }

    v12 = *(a1 + 40);
    v13 = generateAudioSelfTestError(-10);
    (*(v12 + 16))(v12, 0, v13);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) frameLength] >= *(*(*(a1 + 56) + 8) + 24))
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_124(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 771;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d processing xcorr", buf, 0x12u);
  }

  group = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, -1);
  v24 = dispatch_queue_create("com.apple.avfaudio.xcorr_queue", v3);

  v28 = [*(*(*(a1 + 64) + 8) + 40) splitIntoSingleChannelBuffers];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__3457;
  v42 = __Block_byref_object_dispose__3458;
  v43 = objc_opt_new();
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [*(a1 + 32) micBufferNumbers];
  if (!v4 || ([*(a1 + 32) micBufferNumbers], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count") == 0, v5, v4, v6))
  {
    for (i = 0; [v28 count] > i; ++i)
    {
      v23 = [MEMORY[0x1E696AD98] numberWithInt:i];
      [obj addObject:v23];
    }
  }

  else
  {
    v7 = [*(a1 + 32) micBufferNumbers];
    v8 = [v7 copy];

    obj = v8;
  }

  for (j = 0; [obj count] > j; ++j)
  {
    v10 = *(*&buf[8] + 40);
    v11 = [MEMORY[0x1E695DFB0] null];
    [v10 addObject:v11];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obja = obj;
  v12 = [obja countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (k = 0; k != v12; ++k)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obja);
        }

        v15 = *(*(&v35 + 1) + 8 * k);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_128;
        aBlock[3] = &unk_1E7EF57D0;
        aBlock[4] = v15;
        v30 = v28;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v31 = v16;
        v32 = v17;
        v33 = v18;
        v34 = buf;
        v19 = _Block_copy(aBlock);
        if ([*(a1 + 32) parallelCrossCorrelationCalculation])
        {
          dispatch_group_async(group, v24, v19);
        }

        else
        {
          v19[2](v19);
        }
      }

      v12 = [obja countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  if ([*(a1 + 32) parallelCrossCorrelationCalculation])
  {
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  }

  v20 = *(*&buf[8] + 40);
  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x1E69E9840];
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_128(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) intValue];
  v3 = [*(a1 + 40) objectAtIndex:v2];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*(objc_msgSend(v3 length:{"audioBufferList") + 16), *(objc_msgSend(v3, "audioBufferList") + 12)}];
  if ([*(a1 + 48) calculateCrossCorrelationPeak])
  {
    [*(a1 + 56) calculateCrossCorrelationPeakRelativeToSource:*(a1 + 64) capture:v3];
    v6 = v5;
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "AVAudioDeviceTestService.mm";
      v16 = 1024;
      v17 = 802;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d db %f", &v14, 0x1Cu);
    }
  }

  v8 = [AVAudioDeviceTestResult alloc];
  v9 = [*(a1 + 48) outputID];
  v10 = [v3 format];
  [v10 sampleRate];
  v11 = [AVAudioDeviceTestResult initWithData:v8 inputID:"initWithData:inputID:outputID:sampleRate:correlationValue:" outputID:v4 sampleRate:v2 correlationValue:v9];

  v12 = *(*(*(a1 + 72) + 8) + 40);
  objc_sync_enter(v12);
  [*(*(*(a1 + 72) + 8) + 40) setObject:v11 atIndexedSubscript:v2];
  objc_sync_exit(v12);

  v13 = *MEMORY[0x1E69E9840];
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_121()
{
  v6 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v0 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "AVAudioDeviceTestService.mm";
    v4 = 1024;
    v5 = 715;
    _os_log_impl(&dword_1BA5AC000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d player finished", &v2, 0x12u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (BOOL)isOutputRouteBluetooth:(id)a3 session:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v6 = [v4 category];
  v7 = [v5 routeForCategory:v6];
  v8 = [v7 isEqualToString:@"HeadphonesBT"];

  return v8;
}

- (void)passExtensionToken:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v9)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v6 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AVAudioDeviceTestService.mm";
      v12 = 1024;
      v13 = 436;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d extension token is null", buf, 0x12u);
    }

LABEL_15:
    exit(-9);
  }

  [v9 UTF8String];
  [(AVAudioDeviceTestService *)v4 setExtensionHandle:sandbox_extension_consume()];
  if ([(AVAudioDeviceTestService *)v4 extensionHandle]< 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *buf = 136315650;
      v11 = "AVAudioDeviceTestService.mm";
      v12 = 1024;
      v13 = 430;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to consume extension: %i", buf, 0x18u);
    }

    goto LABEL_15;
  }

  objc_sync_exit(v4);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)configureDataSources:(id)a3 session:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v46 = a4;
  [v46 availableInputs];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v6 = v51 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v7)
  {
    v8 = *v51;
    v9 = *MEMORY[0x1E698D660];
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v11 portType];
        v13 = [v12 isEqualToString:v9];

        if (v13)
        {
          v7 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = 0;
  for (j = 0; ; j = v20)
  {
    v16 = [v7 dataSources];
    v17 = [v16 count] > v14;

    if (!v17)
    {
      break;
    }

    v18 = [v7 dataSources];
    v19 = [v18 objectAtIndexedSubscript:v14];

    v20 = v19;
    v21 = [v5 microphone];
    if (v21)
    {
    }

    else
    {
      v22 = [v20 dataSourceID];
      v23 = [v22 intValue] == 1634495520;

      if (v23)
      {
        goto LABEL_31;
      }
    }

    v24 = [v5 microphone];
    v25 = v24 == 0;

    if (v25)
    {
      goto LABEL_29;
    }

    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 3)
        {
          v28 = [v5 microphone];
          v29 = [v28 isEqualToString:@"RightBottom"];

          if (v29)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_29;
      }

      v26 = [v5 microphone];
      v27 = [v26 isEqualToString:@"Back"];
    }

    else if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_29;
      }

      v26 = [v5 microphone];
      v27 = [v26 isEqualToString:@"Front"];
    }

    else
    {
      v26 = [v5 microphone];
      v27 = [v26 isEqualToString:@"LeftBottom"];
    }

    if (v27)
    {

LABEL_31:
      j = v20;
      break;
    }

LABEL_29:
    ++v14;
  }

  v49 = 0;
  v30 = [v7 setPreferredDataSource:j error:&v49];
  v31 = v49;
  if (v30)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v32 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v55 = "AVAudioDeviceTestService.mm";
      v56 = 1024;
      v57 = 404;
      v58 = 2112;
      v59 = j;
      _os_log_impl(&dword_1BA5AC000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using data source %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v33 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v31 code];
      *buf = 136315650;
      v55 = "AVAudioDeviceTestService.mm";
      v56 = 1024;
      v57 = 402;
      v58 = 2048;
      v59 = v34;
      _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredDataSource %li", buf, 0x1Cu);
    }
  }

  v48 = v31;
  v35 = [v46 setPreferredInput:v7 error:&v48];
  v36 = v48;

  if (v35)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v37 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v55 = "AVAudioDeviceTestService.mm";
      v56 = 1024;
      v57 = 411;
      v58 = 2112;
      v59 = v7;
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using port %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v38 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [v36 code];
      *buf = 136315650;
      v55 = "AVAudioDeviceTestService.mm";
      v56 = 1024;
      v57 = 409;
      v58 = 2048;
      v59 = v39;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredInput %li", buf, 0x1Cu);
    }
  }

  if ([v5 outputMode] == 1)
  {
    v40 = 1936747378;
  }

  else
  {
    v40 = 0;
  }

  v47 = v36;
  v41 = [v46 overrideOutputAudioPort:v40 error:&v47];
  v42 = v47;

  if ((v41 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v43 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [v42 code];
      *buf = 136315650;
      v55 = "AVAudioDeviceTestService.mm";
      v56 = 1024;
      v57 = 417;
      v58 = 2048;
      v59 = v44;
      _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideOutputAudioPort %li", buf, 0x1Cu);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (BOOL)setVolume:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [v3 volume];
    v10 = 136315650;
    v11 = "AVAudioDeviceTestService.mm";
    v12 = 1024;
    v13 = 353;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume to %.2f", &v10, 0x1Cu);
  }

  v6 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v3 volume];
  v7 = [v6 setActiveCategoryVolumeTo:?];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)setVolume:(id)a3 session:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 outputMode])
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v5 volume];
      v9 = v8;
      v10 = [v6 category];
      v20 = 136316162;
      v21 = "AVAudioDeviceTestService.mm";
      v22 = 1024;
      v23 = 346;
      v24 = 2048;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = @"Audio/Video";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v20, 0x30u);
    }

    v11 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    [v5 volume];
    v12 = [v11 setVolumeTo:@"Audio/Video" forCategory:?];
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v13 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [v5 volume];
      v15 = v14;
      v16 = [v6 category];
      v20 = 136316162;
      v21 = "AVAudioDeviceTestService.mm";
      v22 = 1024;
      v23 = 342;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = @"PlayAndRecord";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v20, 0x30u);
    }

    v11 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    [v5 volume];
    v12 = [v11 setVolumeTo:@"PlayAndRecord" forCategory:?];
  }

  v17 = v12;

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)createAudioEngineAndProcessingChain:(id)a3 session:(id)a4 sourceNodeBlock:(id)a5
{
  v137 = *MEMORY[0x1E69E9840];
  v128 = a3;
  v129 = a4;
  v127 = a5;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v8 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 184;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating audio engine and processing chain", buf, 0x12u);
  }

  v9 = objc_opt_new();
  [(AVAudioDeviceTestService *)self setEngine:v9];

  if (v127)
  {
    v10 = [[AVAudioSourceNode alloc] initWithRenderBlock:v127];
    [(AVAudioDeviceTestService *)self setSourceNode:v10];
  }

  v11 = [(AVAudioDeviceTestService *)self sourceNode];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = objc_opt_new();
    [(AVAudioDeviceTestService *)self setPlayer:v13];
  }

  if (!v129 || ([MEMORY[0x1E698D708] sharedInstance], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == v129, v14, v15))
  {
    v22 = 0;
  }

  else
  {
    inData = [v129 opaqueSessionID];
    v16 = [(AVAudioDeviceTestService *)self engine];
    v17 = [v16 outputNode];
    v18 = AudioUnitSetProperty([v17 audioUnit], 0x7E7u, 0, 0, &inData, 4u) == 0;

    if (!v18)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v19 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 210;
        _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to set session on engine", buf, 0x12u);
      }
    }

    v20 = [MEMORY[0x1E698D708] sharedInstance];
    v133 = 0;
    v21 = [v20 setActive:0 error:&v133];
    v22 = v133;

    if ((v21 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v23 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v22 code];
        *buf = 136315650;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 215;
        *&buf[18] = 2048;
        v136 = v24;
        _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d sharedInstance setActive %li", buf, 0x1Cu);
      }
    }
  }

  v25 = [v128 inputProcessingChain];
  v26 = v25 == 0;

  if (!v26)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v27 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting input processing chain", buf, 0x12u);
    }

    v28 = [[AVAudioUnitEQ alloc] initWithNumberOfBands:1];
    [(AVAudioDeviceTestService *)self setInputFilter:v28];

    v29 = [(AVAudioDeviceTestService *)self inputFilter];
    v30 = [v29 bands];
    v31 = [v30 objectAtIndexedSubscript:0];
    [v31 setFilterType:5];

    v32 = [(AVAudioDeviceTestService *)self inputFilter];
    v33 = [v32 bands];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setBypass:0];

    v35 = [(AVAudioDeviceTestService *)self inputFilter];
    v36 = [v35 bands];
    v37 = [v36 objectAtIndexedSubscript:0];
    LODWORD(v38) = 1157234688;
    [v37 setFrequency:v38];

    v39 = [(AVAudioDeviceTestService *)self inputFilter];
    v40 = [v39 bands];
    v41 = [v40 objectAtIndexedSubscript:0];
    LODWORD(v42) = 4.0;
    [v41 setBandwidth:v42];
  }

  v43 = [v128 outputProcessingChain];
  v44 = v43 == 0;

  if (!v44)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v45 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 238;
      _os_log_impl(&dword_1BA5AC000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting output processing chain", buf, 0x12u);
    }

    v46 = [[AVAudioUnitEQ alloc] initWithNumberOfBands:1];
    [(AVAudioDeviceTestService *)self setOutputFilter:v46];

    v47 = [(AVAudioDeviceTestService *)self outputFilter];
    v48 = [v47 bands];
    v49 = [v48 objectAtIndexedSubscript:0];
    [v49 setFilterType:5];

    v50 = [(AVAudioDeviceTestService *)self outputFilter];
    v51 = [v50 bands];
    v52 = [v51 objectAtIndexedSubscript:0];
    [v52 setBypass:0];

    v53 = [(AVAudioDeviceTestService *)self outputFilter];
    v54 = [v53 bands];
    v55 = [v54 objectAtIndexedSubscript:0];
    LODWORD(v56) = 1157234688;
    [v55 setFrequency:v56];

    v57 = [(AVAudioDeviceTestService *)self outputFilter];
    v58 = [v57 bands];
    v59 = [v58 objectAtIndexedSubscript:0];
    LODWORD(v60) = 4.0;
    [v59 setBandwidth:v60];
  }

  v61 = dispatch_semaphore_create(0);
  *buf = *"xmuaxmcmlppa";
  *&buf[16] = 0;
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __88__AVAudioDeviceTestService_createAudioEngineAndProcessingChain_session_sourceNodeBlock___block_invoke;
  v130[3] = &unk_1E7EF5708;
  v62 = v61;
  v131 = v62;
  v132 = self;
  [AVAudioUnit instantiateWithComponentDescription:buf options:0 completionHandler:v130];
  if (dispatch_semaphore_wait(v62, 0x3B9ACA00uLL))
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v63 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 270;
      v64 = "%25s:%-5d Creating multichannel mixer took too long";
LABEL_41:
      _os_log_impl(&dword_1BA5AC000, v63, OS_LOG_TYPE_ERROR, v64, buf, 0x12u);
      goto LABEL_117;
    }

    goto LABEL_117;
  }

  v65 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v66 = v65 == 0;

  if (!v66)
  {
    v67 = [(AVAudioDeviceTestService *)self sourceNode];
    v68 = v67 == 0;

    if (v68)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v72 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 284;
        _os_log_impl(&dword_1BA5AC000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching player to engine", buf, 0x12u);
      }

      v70 = [(AVAudioDeviceTestService *)self engine];
      v71 = [(AVAudioDeviceTestService *)self player];
      [v70 attachNode:v71];
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v69 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 281;
        _os_log_impl(&dword_1BA5AC000, v69, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching sourceNode to engine", buf, 0x12u);
      }

      v70 = [(AVAudioDeviceTestService *)self engine];
      v71 = [(AVAudioDeviceTestService *)self sourceNode];
      [v70 attachNode:v71];
    }

    v73 = [(AVAudioDeviceTestService *)self inputFilter];
    v74 = v73 == 0;

    if (!v74)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v75 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 289;
        _os_log_impl(&dword_1BA5AC000, v75, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching inputFilter to engine", buf, 0x12u);
      }

      v76 = [(AVAudioDeviceTestService *)self engine];
      v77 = [(AVAudioDeviceTestService *)self inputFilter];
      [v76 attachNode:v77];
    }

    v78 = [(AVAudioDeviceTestService *)self outputFilter];
    v79 = v78 == 0;

    if (!v79)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v80 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 294;
        _os_log_impl(&dword_1BA5AC000, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching outputFilter to engine", buf, 0x12u);
      }

      v81 = [(AVAudioDeviceTestService *)self engine];
      v82 = [(AVAudioDeviceTestService *)self outputFilter];
      [v81 attachNode:v82];
    }

    v83 = [(AVAudioDeviceTestService *)self engine];
    v84 = [v83 outputNode];
    v85 = [v84 outputFormatForBus:0];
    [v85 sampleRate];
    v87 = v86;

    if (v87 <= 0.0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v88 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 300;
        _os_log_impl(&dword_1BA5AC000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d sampleRate for engine outputNode was <= 0. Setting to 44100", buf, 0x12u);
      }

      v87 = 44100.0;
    }

    v125 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:1 channels:v87];
    if (!v125)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v89 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 306;
        _os_log_impl(&dword_1BA5AC000, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create internal format from engine output node", buf, 0x12u);
      }
    }

    v90 = [(AVAudioDeviceTestService *)self inputFilter];
    v91 = v90 == 0;

    if (!v91)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v92 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 311;
        _os_log_impl(&dword_1BA5AC000, v92, OS_LOG_TYPE_DEFAULT, "%25s:%-5d connecting inputFilter to inputNode", buf, 0x12u);
      }

      v93 = [(AVAudioDeviceTestService *)self engine];
      v94 = [(AVAudioDeviceTestService *)self engine];
      v95 = [v94 inputNode];
      v96 = [(AVAudioDeviceTestService *)self inputFilter];
      [v93 connect:v95 to:v96 format:0];
    }

    v97 = [(AVAudioDeviceTestService *)self sourceNode];
    v98 = v97 == 0;

    if (!v98)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v99 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 316;
        _os_log_impl(&dword_1BA5AC000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting sourceNode to channel mixer", buf, 0x12u);
      }

      v100 = [(AVAudioDeviceTestService *)self engine];
      v101 = [(AVAudioDeviceTestService *)self sourceNode];
      v102 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [v100 connect:v101 to:v102 format:v126];
    }

    v103 = [(AVAudioDeviceTestService *)self engine];
    v104 = [(AVAudioDeviceTestService *)self multichannelMixer];
    v105 = [(AVAudioDeviceTestService *)self engine];
    v106 = [v105 outputNode];
    v107 = [(AVAudioDeviceTestService *)self engine];
    v108 = [v107 outputNode];
    v109 = [v108 outputFormatForBus:0];
    [v103 connect:v104 to:v106 format:v109];

    v110 = [(AVAudioDeviceTestService *)self outputFilter];
    LOBYTE(v108) = v110 == 0;

    if (v108)
    {
      v120 = [(AVAudioDeviceTestService *)self sourceNode];
      v121 = v120 == 0;

      if (!v121)
      {
LABEL_112:
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v123 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 336;
          _os_log_impl(&dword_1BA5AC000, v123, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Finished creating audio engine and processing chain", buf, 0x12u);
        }

        goto LABEL_117;
      }

      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v122 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 333;
        _os_log_impl(&dword_1BA5AC000, v122, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting player to channel mixer", buf, 0x12u);
      }

      v117 = [(AVAudioDeviceTestService *)self engine];
      v118 = [(AVAudioDeviceTestService *)self player];
      v119 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [v117 connect:v118 to:v119 format:v126];
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v111 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 325;
        _os_log_impl(&dword_1BA5AC000, v111, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting outputFilter to channel mixer", buf, 0x12u);
      }

      v112 = [(AVAudioDeviceTestService *)self engine];
      v113 = [(AVAudioDeviceTestService *)self outputFilter];
      v114 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [v112 connect:v113 to:v114 format:v126];

      v115 = [(AVAudioDeviceTestService *)self player];
      LOBYTE(v113) = v115 == 0;

      if (v113)
      {
        goto LABEL_112;
      }

      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v116 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 329;
        _os_log_impl(&dword_1BA5AC000, v116, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting player to output filter", buf, 0x12u);
      }

      v117 = [(AVAudioDeviceTestService *)self engine];
      v118 = [(AVAudioDeviceTestService *)self player];
      v119 = [(AVAudioDeviceTestService *)self outputFilter];
      [v117 connect:v118 to:v119 format:v126];
    }

    goto LABEL_112;
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v63 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 274;
    v64 = "%25s:%-5d Failed to create multichannel mixer";
    goto LABEL_41;
  }

LABEL_117:

  v124 = *MEMORY[0x1E69E9840];
}

void __88__AVAudioDeviceTestService_createAudioEngineAndProcessingChain_session_sourceNodeBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      v12 = 136315650;
      v13 = "AVAudioDeviceTestService.mm";
      v14 = 1024;
      v15 = 262;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error instantiating AVAudioUnit: %@", &v12, 0x1Cu);
    }
  }

  else
  {
    [*(a1 + 40) setMultichannelMixer:v5];
    v9 = [*(a1 + 40) engine];
    v10 = [*(a1 + 40) multichannelMixer];
    [v9 attachNode:v10];
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x1E69E9840];
}

- (AVAudioDeviceTestService)init
{
  v8.receiver = self;
  v8.super_class = AVAudioDeviceTestService;
  v2 = [(AVAudioDeviceTestService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(AVAudioDeviceTestService *)v2 setTestServiceSupportedOnHardware:1];
    [(AVAudioDeviceTestService *)v3 setExtensionHandle:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.avaudiodevietestservice.tones", v4);
    [(AVAudioDeviceTestService *)v3 setToneQueue:v5];

    v6 = os_transaction_create();
    [(AVAudioDeviceTestService *)v3 setTransaction:v6];
  }

  return v3;
}

@end