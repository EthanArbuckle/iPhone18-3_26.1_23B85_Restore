@interface VKToneGenerator
- (VKToneGenerator)initWithHapticEngineDelegate:(id)delegate;
- (VKWalkAssistHapticEngineDelegate)hapticEngineDelegate;
- (id)configureAudioEngineWithError:(id *)error;
- (void)configurePlayerWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop;
- (void)pause;
- (void)playOnePulse;
- (void)playSoundWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop;
- (void)setUsesSoundFeedback:(BOOL)feedback;
- (void)startPulse;
- (void)stopPulse;
@end

@implementation VKToneGenerator

- (void)setUsesSoundFeedback:(BOOL)feedback
{
  if (self->_usesSoundFeedback != feedback)
  {
    v10[5] = v3;
    v10[6] = v4;
    if (feedback)
    {
      v10[0] = 0;
      v6 = [(VKToneGenerator *)self configureAudioEngineWithError:v10];
      v7 = v10[0];
      audioEngine = self->_audioEngine;
      self->_audioEngine = v6;

      if (v7)
      {
        v9 = AXLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [VKToneGenerator setUsesSoundFeedback:];
        }
      }

      else
      {
        self->_usesSoundFeedback = 1;
      }
    }

    else
    {
      [(AVAudioEngine *)self->_audioEngine stop];
      self->_usesSoundFeedback = 0;
    }
  }
}

- (VKToneGenerator)initWithHapticEngineDelegate:(id)delegate
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = VKToneGenerator;
  v5 = [(VKToneGenerator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v5[8] = 0;
    __asm { FMOV            V0.4S, #1.0 }

    *(v5 + 12) = _Q0;
    v12 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v13 = [v12 URLForResource:@"3beacon" withExtension:@"aiff"];
    audioFileURL = v6->_audioFileURL;
    v6->_audioFileURL = v13;

    audioEngine = v6->_audioEngine;
    v6->_audioEngine = 0;

    timer = v6->_timer;
    v6->_timer = 0;

    objc_storeWeak(&v6->_hapticEngineDelegate, delegateCopy);
    v17 = v6;
  }

  return v6;
}

- (void)startPulse
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [(VKToneGenerator *)self stopPulse];
  }

  if (!self->_timer)
  {
    objc_initWeak(&location, self);
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy_;
    v16[4] = __Block_byref_object_dispose_;
    date = [MEMORY[0x29EDB8DB0] date];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0x3FC3333333333333;
    v3 = objc_alloc(MEMORY[0x29EDB8E68]);
    date2 = [MEMORY[0x29EDB8DB0] date];
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __29__VKToneGenerator_startPulse__block_invoke;
    v11 = &unk_29F3183F8;
    objc_copyWeak(&v14, &location);
    v12 = v16;
    v13 = v15;
    v5 = [v3 initWithFireDate:date2 interval:1 repeats:&v8 block:0.001];
    timer = self->_timer;
    self->_timer = v5;

    currentRunLoop = [MEMORY[0x29EDB8E48] currentRunLoop];
    [currentRunLoop addTimer:self->_timer forMode:*MEMORY[0x29EDB8CC0]];

    objc_destroyWeak(&v14);
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v16, 8);

    objc_destroyWeak(&location);
  }
}

void __29__VKToneGenerator_startPulse__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    [WeakRetained volume];
    if (v3 <= 0.0)
    {
      [v22 pause];
      v8 = [MEMORY[0x29EDB8DB0] date];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      [v22 maxPulseFrequency];
      v12 = v11;
      v13 = a1 + 40;
LABEL_14:
      *(*(*v13 + 8) + 24) = 1.0 / v12;
      WeakRetained = v22;
      goto LABEL_15;
    }

    [v22 minPulseFrequency];
    v5 = v4;
    [v22 pulseFrequency];
    if (v5 <= v6)
    {
      [v22 pulseFrequency];
    }

    else
    {
      [v22 minPulseFrequency];
    }

    v12 = 13.0;
    if (v7 <= 13.0)
    {
      [v22 minPulseFrequency];
      v15 = v14;
      [v22 pulseFrequency];
      if (v15 <= v16)
      {
        [v22 pulseFrequency];
      }

      else
      {
        [v22 minPulseFrequency];
      }

      v12 = v17;
    }

    [*(*(*(a1 + 32) + 8) + 40) timeIntervalSinceNow];
    v13 = a1 + 40;
    WeakRetained = v22;
    if (*(*(*(a1 + 40) + 8) + 24) <= -v18)
    {
      v19 = [MEMORY[0x29EDB8DB0] date];
      v20 = *(*(a1 + 32) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      [v22 playOnePulse];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)stopPulse
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
    v4 = self->_timer;
    self->_timer = 0;

    [(VKToneGenerator *)self pause];
  }
}

- (id)configureAudioEngineWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x29EDB8008]);
  v6 = objc_alloc_init(MEMORY[0x29EDB8030]);
  player = self->_player;
  self->_player = v6;

  mainMixerNode = [v5 mainMixerNode];
  mixer = self->_mixer;
  self->_mixer = mainMixerNode;

  [v5 attachNode:self->_player];
  if ([v5 startAndReturnError:error])
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)playOnePulse
{
  *&v4 = self->_rightBalance;
  *&v2 = self->_pitchFactor;
  *&v5 = self->_volume;
  *&v3 = self->_leftBalance;
  [(VKToneGenerator *)self playSoundWithPitchFactor:0 leftBalance:v2 rightBalance:v3 volume:v4 loop:v5];
  if (self->_shouldPlayHapticPulse)
  {
    hapticEngineDelegate = [(VKToneGenerator *)self hapticEngineDelegate];
    *&v7 = self->_volume;
    [hapticEngineDelegate playSingleHapticPulseWithIntensity:v7 duration:self->_pulseDuration];
  }
}

- (void)pause
{
  if (![(AVAudioEngine *)self->_audioEngine isRunning])
  {
    [(AVAudioEngine *)self->_audioEngine startAndReturnError:0];
  }

  player = self->_player;

  [(AVAudioPlayerNode *)player pause];
}

- (void)configurePlayerWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop
{
  if (self->_audioFileURL)
  {
    v12 = objc_alloc(MEMORY[0x29EDB8010]);
    audioFileURL = self->_audioFileURL;
    v58 = 0;
    v14 = [v12 initForReading:audioFileURL error:&v58];
    v15 = v58;
    if (v15)
    {
      v16 = v15;
      processingFormat = AXLogCommon();
      if (os_log_type_enabled(processingFormat, OS_LOG_TYPE_FAULT))
      {
        [VKToneGenerator configurePlayerWithPitchFactor:leftBalance:rightBalance:volume:loop:];
      }

      goto LABEL_35;
    }

    processingFormat = [v14 processingFormat];
    [(AVAudioEngine *)self->_audioEngine connect:self->_player to:self->_mixer format:processingFormat];
    [processingFormat sampleRate];
    v19 = v18;
    v20 = [v14 length];
    v21 = objc_alloc(MEMORY[0x29EDB8020]);
    processingFormat2 = [v14 processingFormat];
    v23 = [v21 initWithPCMFormat:processingFormat2 frameCapacity:v20];

    [v23 setFrameLength:v20];
    v57 = 0;
    [v14 readIntoBuffer:v23 error:&v57];
    v16 = v57;
    if (v16)
    {
      v24 = AXLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [VKToneGenerator configurePlayerWithPitchFactor:leftBalance:rightBalance:volume:loop:];
      }
    }

    else
    {
      v25 = v19;
      v26 = v20 / factor;
      v27 = v26;
      self->_pulseDuration = (v26 / v25);
      v28 = objc_alloc(MEMORY[0x29EDB8020]);
      processingFormat3 = [v14 processingFormat];
      v30 = [v28 initWithPCMFormat:processingFormat3 frameCapacity:v27];
      buffer = self->_buffer;
      self->_buffer = v30;

      [(AVAudioPCMBuffer *)self->_buffer setFrameLength:v27];
      channelCount = [processingFormat channelCount];
      if (channelCount)
      {
        v33 = channelCount;
        v34 = channelCount;
        floatChannelData = [v23 floatChannelData];
        floatChannelData2 = [(AVAudioPCMBuffer *)self->_buffer floatChannelData];
        v37 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
        if (v33 == 1)
        {
          if (balance <= rightBalance)
          {
            balanceCopy = rightBalance;
          }

          else
          {
            balanceCopy = balance;
          }

          *v37 = balanceCopy * volume;
        }

        else
        {
          v39 = (v34 + 3) & 0x1FFFFFFFCLL;
          v40 = vdupq_n_s64(v34 - 1);
          v41 = balance * volume;
          v42 = rightBalance * volume;
          v43 = xmmword_29C71B4F0;
          v44 = xmmword_29C71B500;
          v45 = v37 + 2;
          v46 = vdupq_n_s64(4uLL);
          do
          {
            v47 = vmovn_s64(vcgeq_u64(v40, v44));
            if (vuzp1_s16(v47, *v40.i8).u8[0])
            {
              *(v45 - 2) = v41;
            }

            if (vuzp1_s16(v47, *&v40).i8[2])
            {
              *(v45 - 1) = v42;
            }

            if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, *&v43))).i32[1])
            {
              *v45 = v41;
              v45[1] = v42;
            }

            v43 = vaddq_s64(v43, v46);
            v44 = vaddq_s64(v44, v46);
            v45 += 4;
            v39 -= 4;
          }

          while (v39);
        }

        v48 = 0;
        v49 = (v20 - 1);
        do
        {
          if (v27)
          {
            v50 = 0;
            v51 = v37[v48];
            v52 = *(floatChannelData + 8 * v48);
            v53 = floatChannelData2[v48];
            do
            {
              v54 = v50 * factor;
              if (v54 >= v49)
              {
                v56 = *(v52 + 4 * v49);
              }

              else
              {
                v55 = vcvtms_s32_f32(v54);
                v56 = *(v52 + 4 * v55) + ((*(v52 + 4 * vcvtps_s32_f32(v54)) - *(v52 + 4 * v55)) * (v54 - floorf(v54)));
              }

              v53[v50++] = v51 * v56;
            }

            while (v27 != v50);
          }

          ++v48;
        }

        while (v48 != v34);
        free(v37);
        goto LABEL_34;
      }

      v24 = AXLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [VKToneGenerator configurePlayerWithPitchFactor:v24 leftBalance:? rightBalance:? volume:? loop:?];
      }
    }

LABEL_34:
LABEL_35:
  }
}

- (void)playSoundWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop
{
  if (self->_usesSoundFeedback)
  {
    loopCopy = loop;
    [VKToneGenerator configurePlayerWithPitchFactor:"configurePlayerWithPitchFactor:leftBalance:rightBalance:volume:loop:" leftBalance:? rightBalance:? volume:? loop:?];
    if (self->_buffer)
    {
      if ([(AVAudioEngine *)self->_audioEngine isRunning])
      {
        if (loopCopy)
        {
          v9 = 5;
        }

        else
        {
          v9 = 4;
        }

        [(AVAudioPlayerNode *)self->_player scheduleBuffer:self->_buffer atTime:0 options:v9 completionHandler:&__block_literal_global_0];
        player = self->_player;

        [(AVAudioPlayerNode *)player play];
      }

      else
      {
        v15 = 0;
        v11 = [(VKToneGenerator *)self configureAudioEngineWithError:&v15];
        v12 = v15;
        audioEngine = self->_audioEngine;
        self->_audioEngine = v11;

        if (v12)
        {
          v14 = AXLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [VKToneGenerator setUsesSoundFeedback:];
          }
        }
      }
    }
  }
}

- (VKWalkAssistHapticEngineDelegate)hapticEngineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hapticEngineDelegate);

  return WeakRetained;
}

@end