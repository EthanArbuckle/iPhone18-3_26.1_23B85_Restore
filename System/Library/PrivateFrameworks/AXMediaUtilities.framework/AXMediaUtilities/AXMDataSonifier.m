@interface AXMDataSonifier
+ (id)sharedInstance;
- (AXMDataSeriesDescriptor)currentSeries;
- (AXMDataSonifier)init;
- (AudioStreamBasicDescription)_audioFormat;
- (BOOL)_playAudioPlayer;
- (BOOL)_startAudioEngineIfNeeded;
- (BOOL)containsMultipleSeries;
- (BOOL)series:(id)a3 hasContinuousPitchDataForTimePosition:(double)a4;
- (BOOL)shouldIncrementToPitch:(double)a3 by:(double)a4;
- (BOOL)shouldPlayInStereo;
- (double)currentContinuousPlaybackPosition;
- (double)currentDiscretePlaybackPosition;
- (double)currentPlaybackPosition;
- (double)durationForDurationEncodingValue:(double)a3;
- (double)frequencyForPitchEncodingValue:(double)a3;
- (double)interpolatedPitchValueForNormalizedTimePosition:(double)a3 inSeries:(id)a4;
- (double)masterVolume;
- (double)normalizedTimeEncodingValueForValue:(id)a3;
- (double)playbackDuration;
- (double)timeOffsetForTimeEncodingValue:(id)a3;
- (double)volumeForVolumeEncodingValue:(double)a3;
- (id)_keyPitchesForContinuousSeries:(id)a3;
- (id)_newContinuousToneEnvelope;
- (id)keyPitchForTime:(double)a3;
- (void)_initializeAXMAudioDataSources;
- (void)_initializeAudioChain;
- (void)_initializeAudioPlayerNode;
- (void)_initializeAudioSourceNode;
- (void)_initializeLimiter;
- (void)_initializeLiveToneDataSource;
- (void)_initializePitchShifter;
- (void)_initializeStereoPanner;
- (void)_peakNormalizeBuffer:(void *)a3 length:(unint64_t)a4 level:(double)a5;
- (void)_regenerateTimeEncodingValuesForDataPoints;
- (void)_renderContinuousAudioForMultiSeries:(id)a3;
- (void)_renderDiscreteAudioForSeries:(id)a3;
- (void)_renderSeries:(id)a3;
- (void)_setPanning:(float)a3;
- (void)_setupAudioPlayerBasedAudioChain;
- (void)_setupFMBasedAudioChain;
- (void)addPlaybackObserver:(id)a3;
- (void)beginContinuousPlayback;
- (void)beginLiveContinuousToneSession;
- (void)beginScrubbing;
- (void)dealloc;
- (void)endLiveContinuousToneSession;
- (void)endScrubbing;
- (void)pause;
- (void)play;
- (void)playFrequencyAtTime:(double)a3;
- (void)removePlaybackObserver:(id)a3;
- (void)renderSonification;
- (void)scrubToPlaybackFrame:(unint64_t)a3;
- (void)setContinuousPlaybackPosition:(double)a3;
- (void)setCurrentChartDescriptor:(id)a3;
- (void)setCurrentSeriesIndex:(int64_t)a3;
- (void)setDiscretePlaybackPosition:(double)a3;
- (void)setLiveContinuousToneNormalizedFrequency:(double)a3;
- (void)setMasterVolume:(double)a3;
- (void)setMasterVolume:(double)a3 fadeDuration:(double)a4;
- (void)setPlaybackPosition:(double)a3;
- (void)stopPlaying;
- (void)stopScrubbing;
@end

@implementation AXMDataSonifier

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AXMDataSonifier_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[AXMDataSonifier sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[AXMDataSonifier sharedInstance]::onceToken, block);
  }

  v2 = +[AXMDataSonifier sharedInstance]::singleton;

  return v2;
}

void __33__AXMDataSonifier_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[AXMDataSonifier sharedInstance]::singleton;
  +[AXMDataSonifier sharedInstance]::singleton = v1;
}

- (AXMDataSonifier)init
{
  v25.receiver = self;
  v25.super_class = AXMDataSonifier;
  v2 = [(AXMDataSonifier *)&v25 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 72) = xmmword_1AE451CE0;
    v2[56] = 1;
    v4 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v5 = *(v3 + 25);
    *(v3 + 25) = v4;

    v6 = [[AXMAudioDataSourceMixer alloc] initWithName:@"PlaybackMixer" sampleRate:0 circular:44100.0];
    v7 = *(v3 + 16);
    *(v3 + 16) = v6;

    v8 = [[AXMAudioDataSource alloc] initWithName:@"PlaybackChartData" sampleRate:0 circular:44100.0];
    v9 = *(v3 + 17);
    *(v3 + 17) = v8;

    v10 = [[AXMAudioDataSource alloc] initWithName:@"PlaybackTrendline" sampleRate:0 circular:44100.0];
    v11 = *(v3 + 18);
    *(v3 + 18) = v10;

    [*(v3 + 16) addDataSource:*(v3 + 17)];
    v12 = [[AXMAudioDataSourceMixer alloc] initWithName:@"ScrubbingMixer" sampleRate:1 circular:44100.0];
    v13 = *(v3 + 19);
    *(v3 + 19) = v12;

    v14 = [[AXMAudioDataSource alloc] initWithName:@"ScrubbingDiscreteData" sampleRate:1 circular:44100.0];
    v15 = *(v3 + 20);
    *(v3 + 20) = v14;

    v16 = [[AXMAudioDataSource alloc] initWithName:@"ScrubbingContinuousData" sampleRate:1 circular:44100.0];
    v17 = *(v3 + 21);
    *(v3 + 21) = v16;

    v18 = [[AXMAudioDataSource alloc] initWithName:@"ScrubbingTrendline" sampleRate:1 circular:44100.0];
    v19 = *(v3 + 22);
    *(v3 + 22) = v18;

    [*(v3 + 19) addDataSource:*(v3 + 21)];
    v20 = [[AXMAudioDataSourceMixer alloc] initWithName:@"LiveToneMixer" sampleRate:1 circular:44100.0];
    v21 = *(v3 + 23);
    *(v3 + 23) = v20;

    v22 = [[AXMAudioDataSource alloc] initWithName:@"LiveContinuousData" sampleRate:1 circular:44100.0];
    v23 = *(v3 + 24);
    *(v3 + 24) = v22;

    [*(v3 + 23) addDataSource:*(v3 + 24)];
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  scrubbingDiscreteDataRenderingContext = self->_scrubbingDiscreteDataRenderingContext;
  if (scrubbingDiscreteDataRenderingContext)
  {
    v4 = *scrubbingDiscreteDataRenderingContext;
    if (*scrubbingDiscreteDataRenderingContext)
    {
      scrubbingDiscreteDataRenderingContext[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x1B2700150](scrubbingDiscreteDataRenderingContext, 0x10C402FEFCB83);
  }

  scrubbingPlaybackCallbackRenderingContext = self->_scrubbingPlaybackCallbackRenderingContext;
  if (scrubbingPlaybackCallbackRenderingContext)
  {
    v6 = *scrubbingPlaybackCallbackRenderingContext;
    if (*scrubbingPlaybackCallbackRenderingContext)
    {
      scrubbingPlaybackCallbackRenderingContext[1] = v6;
      operator delete(v6);
    }

    MEMORY[0x1B2700150](scrubbingPlaybackCallbackRenderingContext, 0x10C402FEFCB83);
  }

  liveTonePlaybackCallbackRenderingContext = self->_liveTonePlaybackCallbackRenderingContext;
  if (liveTonePlaybackCallbackRenderingContext)
  {
    v8 = *liveTonePlaybackCallbackRenderingContext;
    if (*liveTonePlaybackCallbackRenderingContext)
    {
      liveTonePlaybackCallbackRenderingContext[1] = v8;
      operator delete(v8);
    }

    MEMORY[0x1B2700150](liveTonePlaybackCallbackRenderingContext, 0x10C402FEFCB83);
  }

  v9.receiver = self;
  v9.super_class = AXMDataSonifier;
  [(AXMDataSonifier *)&v9 dealloc];
}

- (void)_initializeAXMAudioDataSources
{
  [(AXMDataSonifier *)self stopPlaying];
  [(AXMDataSonifier *)self playbackDuration];
  self->_playbackSampleCount = ((v3 + 200.0) * 44100.0 / 1000.0);
  v4 = [(AXMDataSonifier *)self playbackMixerDataSource];
  [v4 setLength:{-[AXMDataSonifier playbackSampleCount](self, "playbackSampleCount")}];

  v5 = [(AXMDataSonifier *)self playbackChartDataAudioDataSource];
  [v5 setLength:{-[AXMDataSonifier playbackSampleCount](self, "playbackSampleCount")}];

  v6 = [(AXMDataSonifier *)self playbackTrendlineAudioDataSource];
  [v6 setLength:{-[AXMDataSonifier playbackSampleCount](self, "playbackSampleCount")}];

  v7 = [(AXMDataSonifier *)self scrubbingMixerDataSource];
  [v7 setLength:88200];

  v8 = [(AXMDataSonifier *)self scrubbingDiscreteAudioDataSource];
  [v8 setLength:88200];

  v9 = [(AXMDataSonifier *)self scrubbingContinuousAudioDataSource];
  [v9 setLength:88200];

  v10 = [(AXMDataSonifier *)self scrubbingTrendlineAudioDataSource];
  [v10 setLength:88200];

  v11 = [(AXMDataSonifier *)self scrubbingDiscreteDataRenderingContext];
  v11[1] = *v11;
  std::vector<int>::resize([(AXMDataSonifier *)self scrubbingDiscreteDataRenderingContext], 0x15888uLL);
  v12 = *[(AXMDataSonifier *)self scrubbingDiscreteDataRenderingContext];
  v13 = *([(AXMDataSonifier *)self scrubbingDiscreteDataRenderingContext]+ 8) - v12;
  if (v13 >= 1)
  {

    bzero(v12, v13);
  }
}

- (double)currentPlaybackPosition
{
  v3 = [(AXMDataSonifier *)self currentSeries];
  if ([v3 isContinuous])
  {
    [(AXMDataSonifier *)self currentContinuousPlaybackPosition];
  }

  else
  {
    [(AXMDataSonifier *)self currentDiscretePlaybackPosition];
  }

  v5 = v4;

  return v5;
}

- (double)currentDiscretePlaybackPosition
{
  v3 = [(AXMDataSonifier *)self playbackMixerDataSource];
  v4 = [v3 length];

  v5 = [(AXMDataSonifier *)self playbackMixerDataSource];
  v6 = [v5 currentSampleIndex];

  v7 = 0.0;
  if (v4 && v6 <= v4)
  {
    v8 = [(AXMDataSonifier *)self playbackMixerDataSource];
    v7 = [v8 currentSampleIndex] / v4;
  }

  return v7;
}

- (double)currentContinuousPlaybackPosition
{
  currentPlaybackTime = self->_currentPlaybackTime;
  audiographPlaybackDuration = self->audiographPlaybackDuration;
  v4 = audiographPlaybackDuration <= 0.0 || currentPlaybackTime > audiographPlaybackDuration;
  result = currentPlaybackTime / audiographPlaybackDuration;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

- (void)setMasterVolume:(double)a3
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v4 = fmax(a3, 0.0);
  v6 = [(AXMDataSonifier *)self playbackMixerDataSource];
  [v6 setLevel:v4];

  v7 = [(AXMDataSonifier *)self scrubbingMixerDataSource];
  [v7 setLevel:v4];

  v8 = [(AXMDataSonifier *)self liveContinuousMixerDataSource];
  [v8 setLevel:v4];

  v9 = [(AXMDataSonifier *)self player];
  *&v4 = v4;
  LODWORD(v5) = LODWORD(v4);
  [v9 setVolume:v5];
}

- (double)masterVolume
{
  v2 = [(AXMDataSonifier *)self playbackMixerDataSource];
  [v2 level];
  v4 = v3;

  return v4;
}

- (void)setMasterVolume:(double)a3 fadeDuration:(double)a4
{
  [AXMDataSonifier setMasterVolume:fadeDuration:]::fadeDuration = *&a4;
  [AXMDataSonifier setMasterVolume:fadeDuration:]::fadeStart = CFAbsoluteTimeGetCurrent();
  [(AXMDataSonifier *)self masterVolume];
  [AXMDataSonifier setMasterVolume:fadeDuration:]::startVolume = v6;
  [AXMDataSonifier setMasterVolume:fadeDuration:]::targetVolume = *&a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AXMDataSonifier_setMasterVolume_fadeDuration___block_invoke;
  v9[3] = &unk_1E7A1DF88;
  v9[4] = self;
  v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v9 block:0.0];
  v8 = [AXMDataSonifier setMasterVolume:fadeDuration:]::fadeTimer;
  [AXMDataSonifier setMasterVolume:fadeDuration:]::fadeTimer = v7;
}

void __48__AXMDataSonifier_setMasterVolume_fadeDuration___block_invoke(uint64_t a1)
{
  v2 = (CFAbsoluteTimeGetCurrent() - *&[AXMDataSonifier setMasterVolume:fadeDuration:]::fadeStart) / *&[AXMDataSonifier setMasterVolume:fadeDuration:]::fadeDuration;
  if (v2 < 1.0)
  {
    v2 = 1.0;
  }

  v3 = *&[AXMDataSonifier setMasterVolume:fadeDuration:]::startVolume + (*&[AXMDataSonifier setMasterVolume:fadeDuration:]::targetVolume - *&[AXMDataSonifier setMasterVolume:fadeDuration:]::startVolume) * v2;
  [*(a1 + 32) setMasterVolume:v3];
  if (v3 == *&[AXMDataSonifier setMasterVolume:fadeDuration:]::targetVolume)
  {
    [-[AXMDataSonifier setMasterVolume:fadeDuration:]::fadeTimer invalidate];
    v4 = [AXMDataSonifier setMasterVolume:fadeDuration:]::fadeTimer;
    [AXMDataSonifier setMasterVolume:fadeDuration:]::fadeTimer = 0;
  }
}

- (void)play
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(AXMDataSonifier *)self isPlaying])
  {
    if (self->_needsRenderSonification)
    {
      [(AXMDataSonifier *)self renderSonification];
    }

    [(AXMDataSonifier *)self _initializeAudioChain];
    self->_playing = 1;
    [(AXMDataSonifier *)self _startAudioEngineIfNeeded];
    v3 = [(AXMDataSonifier *)self currentSeries];
    if ([v3 isContinuous] && !-[AXMDataSonifier containsMultipleSeries](self, "containsMultipleSeries"))
    {
      v18 = [(AXMDataSonifier *)self _playAudioPlayer];

      if (v18)
      {
        [(AXMDataSonifier *)self beginContinuousPlayback];
      }
    }

    else
    {
    }

    if ([(AXMDataSonifier *)self isPaused])
    {
      v24 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v21 = 0uLL;
      v4 = [(AXMDataSonifier *)self playbackObservers];
      v5 = [v4 allObjects];

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v6)
      {
        v7 = *v22;
        v8 = MEMORY[0x1E69E96A0];
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __23__AXMDataSonifier_play__block_invoke_2;
              block[3] = &unk_1E7A1DFB0;
              block[4] = v10;
              block[5] = self;
              dispatch_async(v8, block);
              self->_paused = 0;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v11 = [(AXMDataSonifier *)self playbackObservers];
      v5 = [v11 allObjects];

      v12 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v12)
      {
        v13 = *v27;
        v14 = MEMORY[0x1E69E96A0];
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v5);
            }

            v16 = *(*(&v26 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __23__AXMDataSonifier_play__block_invoke;
              v25[3] = &unk_1E7A1DFB0;
              v25[4] = v16;
              v25[5] = self;
              dispatch_async(v14, v25);
            }
          }

          v12 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v12);
      }
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __23__AXMDataSonifier_play__block_invoke_3;
    v19[3] = &unk_1E7A1DF88;
    v19[4] = self;
    v17 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v19 block:0.0];
    [(AXMDataSonifier *)self setPlaybackObserverUpdateTimer:v17];
  }
}

uint64_t __23__AXMDataSonifier_play__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];

  return [v1 dataSonifierPlaybackDidBeginAtPosition:?];
}

uint64_t __23__AXMDataSonifier_play__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];

  return [v1 dataSonifierPlaybackDidResumeAtPosition:?];
}

void __23__AXMDataSonifier_play__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) playbackObservers];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = MEMORY[0x1E69E96A0];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __23__AXMDataSonifier_play__block_invoke_4;
          v10[3] = &unk_1E7A1DFB0;
          v9 = *(a1 + 32);
          v10[4] = v8;
          v10[5] = v9;
          dispatch_async(v6, v10);
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

uint64_t __23__AXMDataSonifier_play__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];
  v3 = v2 * 1000.0;

  return [v1 dataSonifierPlaybackProgressDidChange:v3];
}

- (void)pause
{
  v18 = *MEMORY[0x1E69E9840];
  [(AVAudioEngine *)self->_engine pause];
  *&self->_playing = 256;
  v3 = [(AXMDataSonifier *)self playbackObserverUpdateTimer];
  [v3 invalidate];

  v4 = [(AXMDataSonifier *)self keyPitchUpdateTimer];
  [v4 invalidate];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AXMDataSonifier *)self playbackObservers];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    v9 = MEMORY[0x1E69E96A0];
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __24__AXMDataSonifier_pause__block_invoke;
          v12[3] = &unk_1E7A1DFB0;
          v12[4] = v11;
          v12[5] = self;
          dispatch_async(v9, v12);
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

uint64_t __24__AXMDataSonifier_pause__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];

  return [v1 dataSonifierPlaybackDidPauseAtPosition:?];
}

- (void)stopPlaying
{
  v20 = *MEMORY[0x1E69E9840];
  [(AVAudioEngine *)self->_engine stop];
  [(AVAudioPlayerNode *)self->_player stop];
  playing = self->_playing;
  *&self->_playing = 0;
  if (playing)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(AXMDataSonifier *)self playbackObservers];
    v5 = [v4 allObjects];

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      v8 = MEMORY[0x1E69E96A0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __30__AXMDataSonifier_stopPlaying__block_invoke;
            block[3] = &unk_1E7A1DFB0;
            block[4] = v10;
            block[5] = self;
            dispatch_async(v8, block);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v11 = [(AXMDataSonifier *)self playbackObserverUpdateTimer];
    [v11 invalidate];
  }

  else
  {
    v11 = AXMediaLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_DEFAULT, "Error stopping audio playback", v13, 2u);
    }
  }

  v12 = [(AXMDataSonifier *)self playbackMixerDataSource];
  [v12 setCurrentSampleIndex:0];
}

uint64_t __30__AXMDataSonifier_stopPlaying__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];

  return [v1 dataSonifierPlaybackDidEndAtPosition:?];
}

- (BOOL)shouldPlayInStereo
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(AXMDataSonifier *)self usesBinauralPanning])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [MEMORY[0x1E6958460] sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    v7 = *MEMORY[0x1E6958210];
    v8 = *MEMORY[0x1E69581A8];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 portType];
        v12 = v11;
        if (v11 == v7)
        {

LABEL_15:
          v15 = 1;
          goto LABEL_16;
        }

        v13 = [v10 portType];
        v14 = v13 == v8;

        if (v14)
        {
          goto LABEL_15;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (void)beginContinuousPlayback
{
  if ([(NSArray *)self->_keyPitches count])
  {
    objc_initWeak(&location, self);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__8;
    v25 = __Block_byref_object_dispose__8;
    v26 = [(NSArray *)self->_keyPitches mutableCopy];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8;
    v19 = __Block_byref_object_dispose__8;
    v20 = [v22[5] firstObject];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    pitchShifter = self->_pitchShifter;
    [v16[5] frequency];
    [(AXMDataSonifier *)self _centsForFrequency:?];
    *&v4 = v4;
    [(AVAudioUnitTimePitch *)pitchShifter setPitch:v4];
    v5 = CACurrentMediaTime();
    v6 = [(NSArray *)self->_keyPitches lastObject];
    [v6 timeOffsetMS];
    v8 = v7;

    [(NSTimer *)self->_keyPitchUpdateTimer invalidate];
    v9 = MEMORY[0x1E695DFF0];
    v12[1] = 3221225472;
    v12[0] = MEMORY[0x1E69E9820];
    v12[2] = __42__AXMDataSonifier_beginContinuousPlayback__block_invoke;
    v12[3] = &unk_1E7A1DFD8;
    v12[4] = &v21;
    objc_copyWeak(v13, &location);
    v13[1] = *&v5;
    *&v13[2] = v8 / 1000.0;
    v12[5] = &v15;
    v12[6] = v14;
    v10 = [v9 scheduledTimerWithTimeInterval:1 repeats:v12 block:0.0];
    keyPitchUpdateTimer = self->_keyPitchUpdateTimer;
    self->_keyPitchUpdateTimer = v10;

    objc_destroyWeak(v13);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    objc_destroyWeak(&location);
  }

  else
  {

    [(AXMDataSonifier *)self stopPlaying];
  }
}

void __42__AXMDataSonifier_beginContinuousPlayback__block_invoke(uint64_t a1, void *a2)
{
  v48 = a2;
  if (![*(*(*(a1 + 32) + 8) + 40) count])
  {
    [v48 invalidate];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained stopPlaying];
    goto LABEL_6;
  }

  v3 = CACurrentMediaTime() - *(a1 + 64);
  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 setCurrentPlaybackTime:v3];

  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 currentPlaybackTime];
  v7 = v6;
  v8 = objc_loadWeakRetained((a1 + 56));
  v9 = [v8 playbackMixerDataSource];
  [v9 setCurrentSampleIndex:v7];

  v10 = v3 / *(a1 + 72) * 2.0 + -1.0;
  v11 = objc_loadWeakRetained((a1 + 56));
  *&v12 = v10;
  [v11 _setPanning:v12];

  v13 = objc_loadWeakRetained((a1 + 56));
  [v13 currentPlaybackTime];
  v15 = v14;
  [*(*(*(a1 + 40) + 8) + 40) timeOffsetMS];
  v17 = v16 / 1000.0;

  v18 = *(*(*(a1 + 32) + 8) + 40);
  if (v15 <= v17)
  {
    if ([v18 count] < 2)
    {
      goto LABEL_10;
    }

    v39 = objc_loadWeakRetained((a1 + 56));
    v40 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:1];
    [v40 frequency];
    [v39 _centsForFrequency:?];
    v42 = v41;

    v43 = objc_loadWeakRetained((a1 + 56));
    LODWORD(v40) = [v43 shouldIncrementToPitch:v42 by:*(*(*(a1 + 48) + 8) + 24)];

    if (!v40)
    {
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v44 = [WeakRetained pitchShifter];
    v45 = *(*(a1 + 48) + 8);
    [v44 pitch];
    v47 = *(v45 + 24) + v46;
    *&v47 = v47;
    [v44 setPitch:v47];

LABEL_6:
    goto LABEL_10;
  }

  [v18 removeObjectAtIndex:0];
  v19 = [*(*(*(a1 + 32) + 8) + 40) firstObject];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = objc_loadWeakRetained((a1 + 56));
  [*(*(*(a1 + 40) + 8) + 40) frequency];
  [v22 _centsForFrequency:?];
  v24 = v23;

  v25 = objc_loadWeakRetained((a1 + 56));
  v26 = [v25 pitchShifter];
  *&v27 = v24;
  [v26 setPitch:v27];

  if ([*(*(*(a1 + 32) + 8) + 40) count] >= 2)
  {
    v28 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:1];
    [v28 timeOffsetMS];
    v30 = v29;
    v31 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:0];
    [v31 timeOffsetMS];
    v33 = v32;

    v34 = objc_loadWeakRetained((a1 + 56));
    v35 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:1];
    [v35 frequency];
    [v34 _centsForFrequency:?];
    v37 = v36 - v24;

    *(*(*(a1 + 48) + 8) + 24) = v37 / (v30 - v33);
  }

LABEL_10:
}

- (double)playbackDuration
{
  userDefinedPlaybackDuration = self->_userDefinedPlaybackDuration;
  if (userDefinedPlaybackDuration <= 0.0)
  {
    v4 = [(AXMDataSonifier *)self currentChartDescriptor];
    v5 = [v4 xAxis];

    v6 = [(AXMDataSonifier *)self currentSeries];
    v7 = [v5 isCategoricalAxis];
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8 == 1)
    {
      v9 = [v6 dataPoints];
      userDefinedPlaybackDuration = 10000.0;
      if ([v9 count] * 800.0 <= 10000.0)
      {
        v10 = [v6 dataPoints];
        userDefinedPlaybackDuration = [v10 count] * 800.0;
      }
    }

    else
    {
      userDefinedPlaybackDuration = 10000.0;
    }
  }

  return userDefinedPlaybackDuration;
}

- (void)addPlaybackObserver:(id)a3
{
  v5 = a3;
  v4 = [(AXMDataSonifier *)self playbackObservers];
  [v4 addPointer:v5];
}

- (void)removePlaybackObserver:(id)a3
{
  v8 = a3;
  v4 = [(AXMDataSonifier *)self playbackObservers];
  v5 = [v4 allObjects];
  v6 = [v5 indexOfObject:v8];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(AXMDataSonifier *)self playbackObservers];
    [v7 removePointerAtIndex:v6];
  }
}

- (void)setPlaybackPosition:(double)a3
{
  v5 = [(AXMDataSonifier *)self currentSeries];
  if ([v5 isContinuous])
  {
    [(AXMDataSonifier *)self setContinuousPlaybackPosition:a3];
  }

  else
  {
    [(AXMDataSonifier *)self setDiscretePlaybackPosition:a3];
  }
}

- (void)setDiscretePlaybackPosition:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    v6 = [(AXMDataSonifier *)self playbackMixerDataSource];
    v7 = ([v6 length] * a3);

    if ([(AXMDataSonifier *)self isScrubbing])
    {

      [(AXMDataSonifier *)self scrubToPlaybackFrame:v7];
    }

    else
    {
      v8 = [(AXMDataSonifier *)self playbackMixerDataSource];
      [v8 setCurrentSampleIndex:v7];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [(AXMDataSonifier *)self playbackObservers];
      v10 = [v9 allObjects];

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = *v18;
        v13 = MEMORY[0x1E69E96A0];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v16[0] = MEMORY[0x1E69E9820];
              v16[1] = 3221225472;
              v16[2] = __47__AXMDataSonifier_setDiscretePlaybackPosition___block_invoke;
              v16[3] = &unk_1E7A1E000;
              v16[4] = v15;
              *&v16[5] = a3;
              dispatch_async(v13, v16);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)setContinuousPlaybackPosition:(double)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    v6 = self->audiographPlaybackDuration * a3;
    if ([(AXMDataSonifier *)self isScrubbing])
    {

      [(AXMDataSonifier *)self playFrequencyAtTime:v6];
    }

    else
    {
      v7 = [(AXMDataSonifier *)self playbackMixerDataSource];
      [v7 setCurrentSampleIndex:v6];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [(AXMDataSonifier *)self playbackObservers];
      v9 = [v8 allObjects];

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = *v17;
        v12 = MEMORY[0x1E69E96A0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v15[0] = MEMORY[0x1E69E9820];
              v15[1] = 3221225472;
              v15[2] = __49__AXMDataSonifier_setContinuousPlaybackPosition___block_invoke;
              v15[3] = &unk_1E7A1E000;
              v15[4] = v14;
              *&v15[5] = a3;
              dispatch_async(v12, v15);
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)beginScrubbing
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_needsRenderSonification)
  {
    [(AXMDataSonifier *)self renderSonification];
  }

  v3 = [(AXMDataSonifier *)self trendlineFunction];

  v4 = [(AXMDataSonifier *)self scrubbingDiscreteAudioDataSource];
  [v4 setLevel:dbl_1AE451D10[v3 == 0]];

  v5 = [(AXMDataSonifier *)self scrubbingMixerDataSource];
  v6 = [(AXMDataSonifier *)self scrubbingDiscreteAudioDataSource];
  [v5 addDataSource:v6];
  v7 = v3 == 0;

  v8 = [(AXMDataSonifier *)self scrubbingContinuousAudioDataSource];
  [v8 setLevel:dbl_1AE451D20[v7]];

  v9 = [AXMLiveContinuousSynth alloc];
  v10 = [(AXMDataSonifier *)self _newContinuousToneEnvelope];
  v11 = [(AXMSynth *)v9 initWithSampleRate:v10 envelope:44100.0];
  continuousScrubbingTone = self->_continuousScrubbingTone;
  self->_continuousScrubbingTone = v11;

  v13 = [(AXMDataSonifier *)self scrubbingMixerDataSource];
  v14 = [(AXMDataSonifier *)self scrubbingContinuousAudioDataSource];
  [v13 addDataSource:v14];

  v15 = [(AXMDataSonifier *)self trendlineFunction];

  if (v15)
  {
    v16 = [(AXMDataSonifier *)self scrubbingTrendlineAudioDataSource];
    [v16 setLevel:0.354813389];

    v17 = [AXMLiveContinuousSynth alloc];
    v18 = [(AXMDataSonifier *)self _newContinuousToneEnvelope];
    v19 = [(AXMSynth *)v17 initWithSampleRate:v18 envelope:44100.0];
    trendlineScrubbingTone = self->_trendlineScrubbingTone;
    self->_trendlineScrubbingTone = v19;

    v21 = [(AXMDataSonifier *)self scrubbingMixerDataSource];
    v22 = [(AXMDataSonifier *)self scrubbingTrendlineAudioDataSource];
    [v21 addDataSource:v22];
  }

  if ([(AXMDataSonifier *)self isPlaying])
  {
    [(AXMDataSonifier *)self pause];
  }

  if ([(AXMDataSonifier *)self isEndingScrubbing])
  {
    [(AXMDataSonifier *)self stopScrubbing];
  }

  [(AVAudioEngine *)self->_engine startAndReturnError:0];
  self->_scrubbing = 1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = [(AXMDataSonifier *)self playbackObservers];
  v24 = [v23 allObjects];

  v25 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v25)
  {
    v26 = *v32;
    v27 = MEMORY[0x1E69E96A0];
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v31 + 1) + 8 * v28);
        if (objc_opt_respondsToSelector())
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __33__AXMDataSonifier_beginScrubbing__block_invoke;
          v30[3] = &unk_1E7A1DFB0;
          v30[4] = v29;
          v30[5] = self;
          dispatch_async(v27, v30);
        }

        ++v28;
      }

      while (v25 != v28);
      v25 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v25);
  }
}

uint64_t __33__AXMDataSonifier_beginScrubbing__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];

  return [v1 dataSonifierScrubbingDidBeginAtPosition:?];
}

- (id)keyPitchForTime:(double)a3
{
  v5 = [(NSArray *)self->_keyPitches count];
  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_keyPitches objectAtIndexedSubscript:(v7 + v5) >> 1];
      [v8 timeOffsetMS];
      if (v9 <= a3)
      {
        v10 = v8;

        v7 = ((v7 + v5) >> 1) + 1;
        v6 = v10;
      }

      else
      {
        v5 = (v7 + v5) >> 1;
      }
    }

    while (v7 < v5);
  }

  return v6;
}

- (void)endScrubbing
{
  v20 = *MEMORY[0x1E69E9840];
  self->_isEndingScrubbing = 1;
  v2 = [(AXMDataSonifier *)self continuousScrubbingTone];
  [v2 startRelease];

  v3 = [(AXMDataSonifier *)self trendlineScrubbingTone];
  [v3 startRelease];

  v4 = dispatch_time(0, 60000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AXMDataSonifier_endScrubbing__block_invoke;
  block[3] = &unk_1E7A1E028;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AXMDataSonifier *)self playbackObservers];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    v9 = MEMORY[0x1E69E96A0];
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __31__AXMDataSonifier_endScrubbing__block_invoke_2;
          v13[3] = &unk_1E7A1DFB0;
          v13[4] = v11;
          v13[5] = self;
          dispatch_async(v9, v13);
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

uint64_t __31__AXMDataSonifier_endScrubbing__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) currentPlaybackPosition];

  return [v1 dataSonifierScrubbingDidEndAtPosition:?];
}

- (void)stopScrubbing
{
  v3 = [(AXMDataSonifier *)self scrubbingMixerDataSource];
  [v3 removeAllDataSources];

  self->_scrubbing = 0;
  continuousScrubbingTone = self->_continuousScrubbingTone;
  self->_continuousScrubbingTone = 0;

  self->_isEndingScrubbing = 0;

  [(AXMDataSonifier *)self stopPlaying];
}

- (void)playFrequencyAtTime:(double)a3
{
  if (vabdd_f64(self->_currentPlaybackTime, a3) >= 0.025)
  {
    self->_currentPlaybackTime = a3;
    v11 = [(AXMDataSonifier *)self keyPitchForTime:a3];
    [(AXMDataSonifier *)self _startAudioEngineIfNeeded];
    [(AXMDataSonifier *)self _playAudioPlayer];
    pitchShifter = self->_pitchShifter;
    [v11 frequency];
    *&v6 = v6;
    [(AVAudioUnitTimePitch *)pitchShifter setPitch:v6];
    v7 = [(NSArray *)self->_keyPitches lastObject];
    [v7 timeOffsetMS];
    v9 = v8;

    v10 = a3 / v9 * 2.0 + -1.0;
    *&v10 = v10;
    [(AXMDataSonifier *)self _setPanning:v10];
  }
}

- (BOOL)_playAudioPlayer
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(AVAudioPlayerNode *)self->_player isPlaying])
  {
    v3 = AXMediaLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to play audio player while currently playing", v5, 2u);
    }
  }

  else
  {
    [(AVAudioPlayerNode *)self->_player scheduleBuffer:self->buffer atTime:0 options:1 completionHandler:0];
    [(AVAudioPlayerNode *)self->_player play];
  }

  return 1;
}

- (void)scrubToPlaybackFrame:(unint64_t)a3
{
  v119[1] = *MEMORY[0x1E69E9840];
  v4 = [(AXMDataSonifier *)self playbackMixerDataSource];
  v95 = [v4 currentSampleIndex];

  v5 = [(AXMDataSonifier *)self currentSeriesIndex]== 0;
  v6 = [(AXMDataSonifier *)self currentChartDescriptor];
  [v6 series];
  if (v5)
    v9 = {;
  }

  else
    v7 = {;
    v8 = [v7 objectAtIndexedSubscript:{-[AXMDataSonifier currentSeriesIndex](self, "currentSeriesIndex") - 1}];
    v119[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v9;
  v99 = [obj countByEnumeratingWithState:&v112 objects:v118 count:16];
  if (v99)
  {
    v98 = *v113;
    v10 = a3;
    v94 = 1000.0;
    v93 = 0.01;
    do
    {
      for (i = 0; i != v99; ++i)
      {
        if (*v113 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v112 + 1) + 8 * i);
        if ([v11 isContinuous])
        {
          v12 = [(AXMDataSonifier *)self playbackMixerDataSource];
          v13 = [v12 length];

          if ([(AXMDataSonifier *)self series:v11 hasContinuousPitchDataForTimePosition:v10 / v13])
          {
            v14 = [(AXMDataSonifier *)self continuousScrubbingTone];
            [v14 setMuted:0];

            [(AXMDataSonifier *)self interpolatedPitchValueForNormalizedTimePosition:v11 inSeries:v10 / v13];
            [(AXMDataSonifier *)self frequencyForPitchEncodingValue:?];
            v16 = v15;
            v17 = [(AXMDataSonifier *)self continuousScrubbingTone];
            [v17 setBaseFrequency:v16];
          }

          else
          {
            v17 = [(AXMDataSonifier *)self continuousScrubbingTone];
            [v17 setMuted:1];
          }
        }

        else
        {
          v18 = [(AXMDataSonifier *)self playbackMixerDataSource];
          v19 = [v18 length];

          v20 = [(AXMDataSonifier *)self playbackMixerDataSource];
          v21 = [v20 length];
          if (v95 <= a3)
          {
            v22 = v95 / v19;
            v23 = a3;
          }

          else
          {
            v22 = v10 / v19;
            v23 = v95;
          }

          v101 = [MEMORY[0x1E695DF70] array];
          v24 = 0;
          v25 = v23 / v21;
          while (1)
          {
            v26 = [v11 dataPoints];
            v27 = v24 < [v26 count];

            if (!v27)
            {
              break;
            }

            v28 = [v11 dataPoints];
            v29 = [v28 objectAtIndexedSubscript:v24];

            v30 = [v29 timeEncodingValue];
            [(AXMDataSonifier *)self normalizedTimeEncodingValueForValue:v30];
            v32 = v31;

            if (v22 <= v32 && v32 < v25)
            {
              v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
              [v101 addObject:v33];
            }

            ++v24;
          }

          v34 = [(AXMDataSonifier *)self scrubbingDiscreteDataRenderingContext];
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v17 = v101;
          v35 = 0;
          v36 = [v17 countByEnumeratingWithState:&v108 objects:v117 count:16];
          if (v36)
          {
            v37 = *v109;
            do
            {
              v38 = 0;
              v39 = v35;
              do
              {
                if (*v109 != v37)
                {
                  objc_enumerationMutation(v17);
                }

                v40 = *(*(&v108 + 1) + 8 * v38);
                v41 = [v11 dataPoints];
                v42 = [v41 objectAtIndexedSubscript:{objc_msgSend(v40, "intValue")}];

                v43 = [v42 pitchEncodingValue];
                [v43 doubleValue];
                [(AXMDataSonifier *)self frequencyForPitchEncodingValue:?];
                v45 = v44;

                v46 = [v42 durationEncodingValue];
                [v46 doubleValue];
                [(AXMDataSonifier *)self durationForDurationEncodingValue:?];
                v48 = v47;

                v49 = [v42 volumeEncodingValue];
                [v49 doubleValue];
                [(AXMDataSonifier *)self volumeForVolumeEncodingValue:?];
                v51 = v50;

                v35 = [[AXMADSREnvelope alloc] initWithAttackDuration:20.0 attackLevel:v51 decayDuration:v48 / 5.0 sustainDuration:0.0 sustainLevel:0.0 releaseDuration:10.0];
                v52 = [[AXMSinglePitchSynth alloc] initWithFrequency:v35 sampleRate:v45 envelope:44100.0];
                [(AXMSinglePitchSynth *)v52 renderInBuffer:v34 atFrame:0];

                ++v38;
                v39 = v35;
              }

              while (v36 != v38);
              v36 = [v17 countByEnumeratingWithState:&v108 objects:v117 count:16];
            }

            while (v36);
          }

          if ([v17 count])
          {
            [(AXMADSREnvelope *)v35 lengthMS];
            v54 = v53;
            v55 = [v17 count];
            v56 = [v17 count];
            v57 = ((v55 - 1) + v54 / v94 * 44100.0);
            v58 = v93 / vabdd_f64(v25, v22);
            if (v58 > 1.0)
            {
              v58 = 1.0;
            }

            [(AXMDataSonifier *)self _peakNormalizeBuffer:v34 length:v57 level:v58 * (1.0 / v56)];
            v59 = [(AXMDataSonifier *)self scrubbingDiscreteAudioDataSource];
            v60 = [v59 currentSampleIndex];

            v61 = [(AXMDataSonifier *)self scrubbingDiscreteAudioDataSource];
            v62 = [v61 sampleBuffer];

            if (v57)
            {
              v63 = 0;
              v64 = *v34;
              v65 = *v62;
              v66 = (v62[1] - *v62) >> 2;
              do
              {
                *(v65 + 4 * ((v60 + 882 + v63) % v66)) += v64[v63];
                ++v63;
              }

              while (v57 != v63);
              if (v57 >= 1)
              {
                bzero(v64, 4 * v57);
              }
            }
          }
        }
      }

      v99 = [obj countByEnumeratingWithState:&v112 objects:v118 count:16];
    }

    while (v99);
  }

  v67 = [(AXMDataSonifier *)self trendlineFunction];
  v68 = v67 == 0;

  if (!v68)
  {
    v69 = [(AXMDataSonifier *)self playbackMixerDataSource];
    v70 = [v69 length];

    v71 = [(AXMDataSonifier *)self currentChartDescriptor];
    v72 = [v71 timeAxisDescriptor];

    [v72 lowerBound];
    v74 = v73;
    [v72 upperBound];
    [(AXMDataSonifier *)self valueFromNormalizedValue:a3 / v70 min:v74 max:v75];
    v77 = v76;
    v78 = [(AXMDataSonifier *)self trendlineFunction];
    v79 = v78[2](v77);

    [(AXMDataSonifier *)self frequencyForPitchEncodingValue:v79];
    v81 = v80;
    v82 = [(AXMDataSonifier *)self trendlineScrubbingTone];
    [v82 setBaseFrequency:v81];
  }

  v83 = [(AXMDataSonifier *)self playbackMixerDataSource];
  [v83 setCurrentSampleIndex:a3];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v84 = [(AXMDataSonifier *)self playbackObservers];
  v102 = [v84 allObjects];

  v85 = [v102 countByEnumeratingWithState:&v104 objects:v116 count:16];
  if (v85)
  {
    v86 = *v105;
    do
    {
      for (j = 0; j != v85; ++j)
      {
        if (*v105 != v86)
        {
          objc_enumerationMutation(v102);
        }

        v88 = *(*(&v104 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v89 = [(AXMDataSonifier *)self playbackMixerDataSource];
          v90 = [v89 currentSampleIndex];
          v91 = [(AXMDataSonifier *)self playbackMixerDataSource];
          v92 = [v91 length];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__AXMDataSonifier_scrubToPlaybackFrame___block_invoke;
          block[3] = &unk_1E7A1E000;
          block[4] = v88;
          *&block[5] = v90 / v92;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }
      }

      v85 = [v102 countByEnumeratingWithState:&v104 objects:v116 count:16];
    }

    while (v85);
  }
}

- (void)setCurrentChartDescriptor:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = a3;
  objc_storeStrong(&self->_currentChartDescriptor, a3);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v18 series];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v8 dataPoints];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = *v21;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v20 + 1) + 8 * j);
              v14 = [v13 zCategoryAxisValue];
              v15 = v14 == 0;

              if (!v15)
              {
                v16 = [(AXMDataSonifier *)self dataCategories];
                v17 = [v13 zCategoryAxisValue];
                [v16 addObject:v17];
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  self->_needsRenderSonification = 1;
}

- (void)setCurrentSeriesIndex:(int64_t)a3
{
  [(AXMDataSonifier *)self stopPlaying];
  [(AXMDataSonifier *)self stopScrubbing];
  self->_currentSeriesIndex = a3;
  if (a3)
  {
    v5 = [(AXMDataSonifier *)self currentChartDescriptor];
    v6 = [v5 series];
    self->_currentSeriesIndex = a3 % ([v6 count] + 1);
  }

  [(AXMDataSonifier *)self renderSonification];
}

- (void)renderSonification
{
  v20 = *MEMORY[0x1E69E9840];
  self->_needsRenderSonification = 0;
  v3 = [(AXMDataSonifier *)self currentChartDescriptor];
  v4 = [v3 series];
  v5 = [v4 count];

  if (v5)
  {
    self->_dataMode = 0;
    [(AXMDataSonifier *)self _initializeAXMAudioDataSources];
    [(AXMDataSonifier *)self _regenerateTimeEncodingValuesForDataPoints];
    if ([(AXMDataSonifier *)self currentSeriesIndex])
    {
      v6 = [(AXMDataSonifier *)self currentChartDescriptor];
      v7 = [v6 series];
      v8 = [v7 objectAtIndexedSubscript:{-[AXMDataSonifier currentSeriesIndex](self, "currentSeriesIndex") - 1}];

      [(AXMDataSonifier *)self _renderSeries:v8];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = [(AXMDataSonifier *)self currentChartDescriptor];
      v11 = [v10 series];

      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v12)
      {
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [(AXMDataSonifier *)self _renderSeries:*(*(&v15 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }

    [(AXMDataSonifier *)self _initializeAudioChain];
    v9 = [(AXMDataSonifier *)self playbackChartDataAudioDataSource];
    [v9 normalizeAudio];
  }

  else
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXMDataSonifier *)v9 renderSonification];
    }
  }
}

- (void)_renderSeries:(id)a3
{
  v12 = a3;
  if ([v12 isContinuous])
  {
    v4 = [(AXMDataSonifier *)self _keyPitchesForContinuousSeries:v12];
    keyPitches = self->_keyPitches;
    self->_keyPitches = v4;

    if ([(NSArray *)self->_keyPitches count])
    {
      v6 = [(NSArray *)self->_keyPitches firstObject];
      [v6 timeOffsetMS];
      v8 = v7;

      v9 = [(NSArray *)self->_keyPitches lastObject];
      [v9 timeOffsetMS];
      v11 = v10;

      self->audiographPlaybackDuration = v11 - v8;
    }

    if ([(AXMDataSonifier *)self containsMultipleSeries])
    {
      [(AXMDataSonifier *)self _renderContinuousAudioForMultiSeries:v12];
    }
  }

  else
  {
    [(AXMDataSonifier *)self _renderDiscreteAudioForSeries:v12];
  }
}

- (void)_renderDiscreteAudioForSeries:(id)a3
{
  v22 = a3;
  for (i = 0; ; ++i)
  {
    v5 = [v22 dataPoints];
    v6 = [v5 count];

    if (i >= v6)
    {
      break;
    }

    v7 = [v22 dataPoints];
    v8 = [v7 objectAtIndexedSubscript:i];

    [v8 playbackTimeOffsetMS];
    v9 = [(AXMDataSonifier *)self sampleIndexForTimeOffset:?];
    v10 = [v8 pitchEncodingValue];
    [v10 doubleValue];
    [(AXMDataSonifier *)self frequencyForPitchEncodingValue:?];
    v12 = v11;

    v13 = [v8 durationEncodingValue];
    [v13 doubleValue];
    [(AXMDataSonifier *)self durationForDurationEncodingValue:?];
    v15 = v14;

    v16 = [v8 volumeEncodingValue];
    [v16 doubleValue];
    [(AXMDataSonifier *)self volumeForVolumeEncodingValue:?];
    v18 = v17;

    v19 = [[AXMADSREnvelope alloc] initWithAttackDuration:20.0 attackLevel:v18 decayDuration:v15 / 5.0 sustainDuration:20.0 sustainLevel:0.3 releaseDuration:10.0];
    v20 = [[AXMSinglePitchSynth alloc] initWithFrequency:v19 sampleRate:v12 envelope:44100.0];
    v21 = [(AXMDataSonifier *)self playbackChartDataAudioDataSource];
    -[AXMSinglePitchSynth renderInBuffer:atFrame:](v20, "renderInBuffer:atFrame:", [v21 sampleBuffer], v9);
  }
}

- (id)_keyPitchesForContinuousSeries:(id)a3
{
  v4 = a3;
  v5 = [(AXMDataSonifier *)self currentChartDescriptor];
  v6 = [v5 series];
  v7 = [v6 indexOfObject:v4];

  if ([v4 isContinuous])
  {
    v8 = [v4 dataPoints];
    v9 = [v8 count];

    v10 = 0;
    if (v9 && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = [v4 dataPoints];
      v12 = [v11 objectAtIndexedSubscript:0];
      [v12 playbackTimeOffsetMS];
      v14 = v13;

      v15 = 0;
      *&self->maxFrequency = xmmword_1AE451D30;
      while (1)
      {
        v16 = [v4 dataPoints];
        v17 = [v16 count];

        if (v15 >= v17)
        {
          break;
        }

        v18 = [v4 dataPoints];
        v19 = [v18 objectAtIndexedSubscript:v15];

        [v19 playbackTimeOffsetMS];
        v21 = v20;
        v22 = [v19 pitchEncodingValue];
        [v22 doubleValue];
        [(AXMDataSonifier *)self frequencyForPitchEncodingValue:?];
        v24 = v23;

        v25 = [v19 volumeEncodingValue];
        [v25 doubleValue];
        [(AXMDataSonifier *)self volumeForVolumeEncodingValue:?];
        v27 = v26;

        v28 = [[KeyPitch alloc] initWithFrequency:v24 volume:v27 timeOffset:v21 - v14];
        if (![v10 count] || (objc_msgSend(v10, "lastObject"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "timeOffsetMS"), v31 = v30, -[KeyPitch timeOffsetMS](v28, "timeOffsetMS"), v33 = v32, v29, v31 < v33))
        {
          [v10 addObject:v28];
          v34 = fmin(self->minFrequency, v24);
          self->maxFrequency = fmax(self->maxFrequency, v24);
          self->minFrequency = v34;
        }

        ++v15;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_renderContinuousAudioForMultiSeries:(id)a3
{
  v4 = [a3 dataPoints];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 playbackTimeOffsetMS];
  v7 = v6;

  v8 = [(AXMDataSonifier *)self sampleIndexForTimeOffset:v7];
  v9 = [AXMADSREnvelope alloc];
  v10 = [(NSArray *)self->_keyPitches lastObject];
  [v10 timeOffsetMS];
  v14 = [(AXMADSREnvelope *)v9 initWithAttackDuration:30.0 attackLevel:0.8 decayDuration:0.0 sustainDuration:v11 sustainLevel:0.8 releaseDuration:75.0];

  v12 = [[AXMContinuousSynth alloc] initWithSampleRate:v14 envelope:self->_keyPitches keyPitches:44100.0];
  v13 = [(AXMDataSonifier *)self playbackChartDataAudioDataSource];
  -[AXMContinuousSynth renderInBuffer:atFrame:](v12, "renderInBuffer:atFrame:", [v13 sampleBuffer], v8);
}

- (void)_initializeAudioChain
{
  v3 = objc_alloc_init(MEMORY[0x1E69583F8]);
  [(AXMDataSonifier *)self setEngine:v3];

  [(AXMDataSonifier *)self _initializeStereoPanner];
  if ([(AXMDataSonifier *)self containsMultipleSeries])
  {
    [(AXMDataSonifier *)self _setupFMBasedAudioChain];
  }

  else
  {
    [(AXMDataSonifier *)self _setupAudioPlayerBasedAudioChain];
  }

  v4 = [(AVAudioEngine *)self->_engine mainMixerNode];
  LODWORD(v5) = 1.0;
  [v4 setOutputVolume:v5];

  maximumToneVolume = self->_maximumToneVolume;
  fadeDuration = self->_fadeDuration;

  [(AXMDataSonifier *)self setMasterVolume:maximumToneVolume fadeDuration:fadeDuration];
}

- (void)_setupAudioPlayerBasedAudioChain
{
  v6 = [(AXMDataSonifier *)self currentSeries];
  if (v6 && (-[AXMDataSonifier currentSeries](self, "currentSeries"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isContinuous], v3, v6, (v4 & 1) == 0))
  {

    [(AXMDataSonifier *)self _setupFMBasedAudioChain];
  }

  else
  {
    [(AXMDataSonifier *)self _initializePitchShifter];
    [(AXMDataSonifier *)self _initializeAudioPlayerNode];
    v7 = [(AVAudioEngine *)self->_engine mainMixerNode];
    v5 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:2 channels:44100.0];
    [(AVAudioEngine *)self->_engine connect:self->_player to:self->_pitchShifter fromBus:0 toBus:0 format:v5];
    [(AVAudioEngine *)self->_engine connect:self->_pitchShifter to:self->_stereoPanner fromBus:0 toBus:0 format:v5];
    -[AVAudioEngine connect:to:fromBus:toBus:format:](self->_engine, "connect:to:fromBus:toBus:format:", self->_stereoPanner, v7, 0, [v7 nextAvailableInputBus], v5);
  }
}

- (void)_setupFMBasedAudioChain
{
  [(AXMDataSonifier *)self _initializeAudioSourceNode];
  [(AXMDataSonifier *)self _initializeLimiter];
  v4 = [(AVAudioEngine *)self->_engine mainMixerNode];
  v3 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:2 channels:44100.0];
  [(AVAudioEngine *)self->_engine connect:self->_audioSourceNode to:self->_stereoPanner fromBus:0 toBus:0 format:v3];
  [(AVAudioEngine *)self->_engine connect:self->_stereoPanner to:self->_limiter fromBus:0 toBus:0 format:v3];
  -[AVAudioEngine connect:to:fromBus:toBus:format:](self->_engine, "connect:to:fromBus:toBus:format:", self->_limiter, v4, 0, [v4 nextAvailableInputBus], v3);
}

- (void)_initializeAudioPlayerNode
{
  v3 = objc_alloc_init(MEMORY[0x1E6958458]);
  player = self->_player;
  self->_player = v3;

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:@"bassTone" ofType:@"wav"];

  v7 = objc_alloc(MEMORY[0x1E6958408]);
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v9 = [v7 initForReading:v8 error:0];

  v10 = objc_alloc(MEMORY[0x1E6958440]);
  v11 = [v9 processingFormat];
  v12 = [v10 initWithPCMFormat:v11 frameCapacity:objc_msgSend(v9, "length")];
  buffer = self->buffer;
  self->buffer = v12;

  v14 = self->buffer;
  v16 = 0;
  [v9 readIntoBuffer:v14 error:&v16];
  v15 = v16;
  [(AVAudioEngine *)self->_engine attachNode:self->_player];
}

- (void)_initializePitchShifter
{
  v3 = objc_alloc_init(MEMORY[0x1E69584D8]);
  pitchShifter = self->_pitchShifter;
  self->_pitchShifter = v3;

  [(AVAudioUnitTimePitch *)self->_pitchShifter setPitch:0.0];
  [(AVAudioUnitTimePitch *)self->_pitchShifter setOverlap:8589936700.0];
  [(AVAudioUnitTimePitch *)self->_pitchShifter setBypass:0];
  engine = self->_engine;
  v6 = self->_pitchShifter;

  [(AVAudioEngine *)engine attachNode:v6];
}

- (void)_initializeAudioSourceNode
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(AXMDataSonifier *)self _audioFormat];
  v3 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:v13];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E6958490]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__AXMDataSonifier__initializeAudioSourceNode__block_invoke;
  v10 = &unk_1E7A1E078;
  objc_copyWeak(&v11, &location);
  v5 = [v4 initWithFormat:v3 renderBlock:&v7];
  audioSourceNode = self->_audioSourceNode;
  self->_audioSourceNode = v5;

  [(AVAudioEngine *)self->_engine attachNode:self->_audioSourceNode, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __45__AXMDataSonifier__initializeAudioSourceNode__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained playbackMixerDataSource];
  v8 = [v7 currentSampleIndex];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 playbackMixerDataSource];
  v11 = v8 / [v10 length];

  v12 = objc_loadWeakRetained((a1 + 32));
  *&v13 = v11 * 2.0 + -1.0;
  [v12 _setPanning:v13];

  v14 = objc_loadWeakRetained((a1 + 32));
  LODWORD(v7) = [v14 isPlaying];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = v15;
  if (v7)
  {
    v17 = [v15 playbackMixerDataSource];
    v79 = [v17 sampleBuffer];

    if (!*a5)
    {
      return 0;
    }

    v18 = 0;
    for (i = (a5 + 4); ; i += 2)
    {
      v20 = objc_loadWeakRetained((a1 + 32));
      v21 = [v20 playbackMixerDataSource];
      v22 = [v21 currentSampleIndex];

      v23 = *(i - 1);
      v24 = objc_loadWeakRetained((a1 + 32));
      v25 = [v24 playbackMixerDataSource];
      v26 = v23 >> 2;
      [v25 prepareNextSamples:v23 >> 2];

      v27 = objc_loadWeakRetained((a1 + 32));
      v28 = [v27 playbackMixerDataSource];
      v29 = [v28 length];

      v30 = v29 - v22;
      if (v29 == v22)
      {
        v31 = *i;
        v32 = *(i - 1);
      }

      else
      {
        v33 = *i;
        v34 = objc_loadWeakRetained((a1 + 32));
        v35 = v34;
        if (v26 <= v30)
        {
          v39 = [v34 playbackMixerDataSource];
          memcpy(v33, (*v79 + 4 * [v39 currentSampleIndex]), 4 * v26);

          v40 = objc_loadWeakRetained((a1 + 32));
          v41 = [v40 playbackMixerDataSource];
          [v41 setCurrentSampleIndex:{objc_msgSend(v41, "currentSampleIndex") + v26}];

          goto LABEL_10;
        }

        v36 = [v34 playbackMixerDataSource];
        memcpy(v33, (*v79 + 4 * [v36 currentSampleIndex]), 4 * v30);

        v37 = objc_loadWeakRetained((a1 + 32));
        v38 = [v37 playbackMixerDataSource];
        [v38 setCurrentSampleIndex:{objc_msgSend(v38, "currentSampleIndex") + v30}];

        v32 = 4 * (v26 - v30);
        v31 = *i + 4 * v30;
      }

      bzero(v31, v32);
LABEL_10:
      if (++v18 >= *a5)
      {
        if (v22 + v26 >= (v79[1] - *v79) >> 2)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __45__AXMDataSonifier__initializeAudioSourceNode__block_invoke_2;
          block[3] = &unk_1E7A1E050;
          objc_copyWeak(&v84, (a1 + 32));
          dispatch_async(MEMORY[0x1E69E96A0], block);
          objc_destroyWeak(&v84);
        }

        return 0;
      }
    }
  }

  v42 = [v15 isScrubbing];

  if (v42)
  {
    v43 = objc_loadWeakRetained((a1 + 32));
    v44 = [v43 scrubbingMixerDataSource];
    v45 = [v44 sampleBuffer];

    v46 = objc_loadWeakRetained((a1 + 32));
    v47 = [v46 scrubbingTrendlineAudioDataSource];
    v77 = [v47 sampleBuffer];

    if (*a5)
    {
      v48 = 0;
      do
      {
        v49 = &a5[4 * v48 + 2];
        v50 = *(v49 + 4);
        v51 = objc_loadWeakRetained((a1 + 32));
        v52 = [v51 scrubbingMixerDataSource];
        v53 = [v52 length];
        v80 = v48;

        v54 = objc_loadWeakRetained((a1 + 32));
        v55 = [v54 scrubbingPlaybackCallbackRenderingContext];
        v56 = v50 >> 2;

        if (v50 >> 2 != v55->__end_ - v55->__begin_)
        {
          std::vector<int>::resize(v55, v50 >> 2);
        }

        v57 = objc_loadWeakRetained((a1 + 32));
        v58 = [v57 trendlineFunction];

        if (v58)
        {
          v78 = v50;
          v50 = v49;
          v59 = objc_loadWeakRetained((a1 + 32));
          v60 = [v59 trendlineScrubbingTone];
          v61 = objc_loadWeakRetained((a1 + 32));
          v62 = [v61 scrubbingTrendlineAudioDataSource];
          [v60 renderInBuffer:v77 atFrame:objc_msgSend(v62 numSamples:{"currentSampleIndex"), v56}];

          v49 = v50;
          LODWORD(v50) = v78;
        }

        v63 = objc_loadWeakRetained((a1 + 32));
        v64 = [v63 scrubbingMixerDataSource];
        [v64 prepareNextSamples:v56];

        if (v50 >= 4)
        {
          v66 = 0;
          do
          {
            v67 = objc_loadWeakRetained((a1 + 32));
            v68 = [v67 scrubbingMixerDataSource];
            v69 = (v66 + [v68 currentSampleIndex]) % v53;

            begin = v55->__begin_;
            v55->__begin_[v66++] = *(*v45 + 4 * v69);
          }

          while (v56 != v66);
        }

        else
        {
          begin = v55->__begin_;
        }

        memcpy(*(v49 + 8), begin, 4 * v56);
        v70 = objc_loadWeakRetained((a1 + 32));
        v71 = [v70 scrubbingMixerDataSource];
        v72 = [v71 currentSampleIndex];
        v73 = objc_loadWeakRetained((a1 + 32));
        v74 = [v73 scrubbingMixerDataSource];
        [v74 setCurrentSampleIndex:(v72 + v56) % v53];

        v48 = v80 + 1;
      }

      while (v80 + 1 < *a5);
    }
  }

  else
  {
    v75 = AXMediaLogCommon();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v75, OS_LOG_TYPE_DEFAULT, "Error: IO audio unit is running but we aren't in a scrubbing or playback session -- investigate.", buf, 2u);
    }
  }

  return 0;
}

void __45__AXMDataSonifier__initializeAudioSourceNode__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopPlaying];
}

- (AudioStreamBasicDescription)_audioFormat
{
  retstr->mSampleRate = 44100.0;
  retstr->mBitsPerChannel = 16;
  *&retstr->mFormatID = xmmword_1AE451D40;
  *&retstr->mBytesPerFrame = 0x200000004;
  return self;
}

- (void)_initializeStereoPanner
{
  v3 = objc_alloc_init(MEMORY[0x1E6958400]);
  stereoPanner = self->_stereoPanner;
  self->_stereoPanner = v3;

  engine = self->_engine;
  v6 = self->_stereoPanner;

  [(AVAudioEngine *)engine attachNode:v6];
}

- (void)_setPanning:(float)a3
{
  stereoPanner = self->_stereoPanner;
  v5 = [(AXMDataSonifier *)self shouldPlayInStereo];
  v6 = 0.0;
  if (v5)
  {
    *&v6 = a3;
  }

  [(AVAudioEnvironmentNode *)stereoPanner setPan:v6];
}

- (void)_initializeLimiter
{
  v5 = *"xfuartmllppa";
  v6 = 0;
  v3 = [objc_alloc(MEMORY[0x1E69584C8]) initWithAudioComponentDescription:&v5];
  limiter = self->_limiter;
  self->_limiter = v3;

  [(AVAudioUnitEffect *)self->_limiter setBypass:0];
  AudioUnitSetParameter([(AVAudioUnitEffect *)self->_limiter audioUnit], 1u, 0, 0, 2.0, 0);
  [(AVAudioEngine *)self->_engine attachNode:self->_limiter];
}

- (double)normalizedTimeEncodingValueForValue:(id)a3
{
  v4 = a3;
  v5 = [(AXMDataSonifier *)self currentChartDescriptor];
  v6 = [v5 timeNumericAxisDescriptor];

  if (v6)
  {
    v7 = [(AXMDataSonifier *)self currentChartDescriptor];
    v8 = [v7 timeNumericAxisDescriptor];

    [v4 number];
    v10 = v9;
    [v8 lowerBound];
    v12 = v11;
    [v8 upperBound];
    [(AXMDataSonifier *)self normalizedValueForValue:v10 min:v12 max:v13];
    v15 = v14;
  }

  else
  {
    v17 = [(AXMDataSonifier *)self currentChartDescriptor];
    v18 = [v17 timeCategoricalAxisDescriptor];

    if (!v18)
    {
      v15 = 0.0;
      goto LABEL_4;
    }

    v19 = [(AXMDataSonifier *)self currentChartDescriptor];
    v8 = [v19 timeCategoricalAxisDescriptor];

    v20 = [v8 categoryOrder];
    v21 = [v4 category];
    v22 = [v20 indexOfObject:v21];

    v15 = 0.0;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v8 categoryOrder];
      v15 = v22 / [v23 count];
    }
  }

LABEL_4:
  return v15;
}

- (double)interpolatedPitchValueForNormalizedTimePosition:(double)a3 inSeries:(id)a4
{
  v6 = a4;
  v7 = [(AXMDataSonifier *)self currentChartDescriptor];
  v8 = [v7 timeAxisDescriptor];

  v9 = [v8 isCategoricalAxis];
  if (v9)
  {
    v10 = [v6 dataPoints];
    v11 = [v10 count];

    v12 = 0.0;
  }

  else
  {
    [v8 lowerBound];
    v12 = v13;
    [v8 upperBound];
    v11 = v14;
  }

  [(AXMDataSonifier *)self valueFromNormalizedValue:a3 min:v12 max:v11];
  v16 = v15;
  v17 = [v6 dataPoints];
  for (i = 1; ; ++i)
  {
    if (i >= [v17 count])
    {
      v24 = 0.0;
      goto LABEL_14;
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    v19 = i;
    if (v16 < i)
    {
      v25 = i - 1;
      v26 = (i - 1);
      goto LABEL_13;
    }

LABEL_10:
    ;
  }

  v20 = [v17 objectAtIndexedSubscript:i];
  v21 = [v20 timeEncodingValue];
  [v21 number];
  v23 = v22;

  if (v23 <= v16)
  {
    goto LABEL_10;
  }

  v25 = i - 1;
  v27 = [v17 objectAtIndexedSubscript:i - 1];
  v28 = [v27 timeEncodingValue];
  [v28 number];
  v26 = v29;

  v30 = [v17 objectAtIndexedSubscript:i];
  v31 = [v30 timeEncodingValue];
  [v31 number];
  v19 = v32;

LABEL_13:
  v33 = [v17 objectAtIndexedSubscript:v25];
  v34 = [v33 pitchEncodingValue];
  [v34 doubleValue];
  v36 = v35;

  v37 = [v17 objectAtIndexedSubscript:i];
  v38 = [v37 pitchEncodingValue];
  [v38 doubleValue];
  v40 = v39;

  v24 = v36 + (v16 - v26) / (v19 - v26) * (v40 - v36);
LABEL_14:

  return v24;
}

- (double)timeOffsetForTimeEncodingValue:(id)a3
{
  v4 = a3;
  [(AXMDataSonifier *)self normalizedTimeEncodingValueForValue:v4];
  v6 = v5;
  [(AXMDataSonifier *)self playbackDuration];
  v8 = v6 * v7;

  return v8;
}

- (double)frequencyForPitchEncodingValue:(double)a3
{
  [(AXMDataSonifier *)self minimumPlaybackFrequency];
  v6 = log2(v5);
  [(AXMDataSonifier *)self maximumPlaybackFrequency];
  v8 = log2(v7);
  v9 = [(AXMDataSonifier *)self currentChartDescriptor];
  v10 = [v9 pitchAxisDescriptor];

  [v10 lowerBound];
  v12 = v11;
  [v10 upperBound];
  [(AXMDataSonifier *)self normalizedValueForValue:a3 min:v12 max:v13];
  v15 = exp2(v6 + v14 * (v8 - v6));
  [(AXMDataSonifier *)self minimumPlaybackFrequency];
  v17 = v16;
  [(AXMDataSonifier *)self maximumPlaybackFrequency];
  v19 = AXMClampDouble(v15, v17, v18);

  return v19;
}

- (double)volumeForVolumeEncodingValue:(double)a3
{
  v5 = [(AXMDataSonifier *)self currentChartDescriptor];
  v6 = [v5 volumeAxisDescriptor];

  if (v6)
  {
    [(AXMDataSonifier *)self maximumToneVolume];
    v8 = v7;
    [(AXMDataSonifier *)self minimumToneVolume];
    v10 = v9;
    [v6 lowerBound];
    v12 = v11;
    [v6 upperBound];
    [(AXMDataSonifier *)self normalizedValueForValue:a3 min:v12 max:v13];
    v15 = v14;
    [(AXMDataSonifier *)self minimumToneVolume];
    v17 = v16;
    [(AXMDataSonifier *)self minimumToneVolume];
    v19 = v18;
    [(AXMDataSonifier *)self maximumToneVolume];
    v21 = AXMClampDouble(v17 + v15 * (v8 - v10), v19, v20);
  }

  else
  {
    v21 = 1.0;
  }

  return v21;
}

- (double)durationForDurationEncodingValue:(double)a3
{
  v5 = [(AXMDataSonifier *)self currentChartDescriptor];
  v6 = [v5 durationAxisDescriptor];

  [v6 lowerBound];
  v8 = v7;
  [v6 upperBound];
  [(AXMDataSonifier *)self normalizedValueForValue:a3 min:v8 max:v9];
  v11 = v10;
  [(AXMDataSonifier *)self maximumDiscreteToneLength];
  v13 = v12;
  [(AXMDataSonifier *)self minimumDiscreteToneLength];
  v15 = v14;
  [(AXMDataSonifier *)self minimumDiscreteToneLength];
  v17 = v16;
  [(AXMDataSonifier *)self minimumDiscreteToneLength];
  v19 = v18;
  [(AXMDataSonifier *)self maximumDiscreteToneLength];
  v21 = AXMClampDouble(v11 * ((v13 - v15) * 1000.0) + v17 * 1000.0, v19 * 1000.0, v20 * 1000.0);

  return v21;
}

- (BOOL)series:(id)a3 hasContinuousPitchDataForTimePosition:(double)a4
{
  v6 = a3;
  v7 = [(AXMDataSonifier *)self currentChartDescriptor];
  v8 = [v7 timeAxisDescriptor];

  if ([v8 isCategoricalAxis])
  {
    v9 = 1;
  }

  else
  {
    [v8 lowerBound];
    v11 = v10;
    [v8 upperBound];
    [(AXMDataSonifier *)self valueFromNormalizedValue:a4 min:v11 max:v12];
    v14 = v13;
    if ([v6 isContinuous])
    {
      [v6 minimumDataValueOnTimeAxis];
      v16 = v15;
      [v6 maximumDataValueOnTimeAxis];
      v9 = v14 <= v17 && v16 <= v14;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)beginLiveContinuousToneSession
{
  if ([(AXMDataSonifier *)self isPlaying])
  {
    [(AXMDataSonifier *)self stopPlaying];
  }

  if ([(AXMDataSonifier *)self isScrubbing])
  {
    [(AXMDataSonifier *)self stopScrubbing];
  }

  [(AXMDataSonifier *)self setMasterVolume:self->_maximumToneVolume fadeDuration:self->_fadeDuration];
  [(AXMDataSonifier *)self _startAudioEngineIfNeeded];
  [(AXMDataSonifier *)self _playAudioPlayer];
  self->_isInLiveContinuousToneSession = 1;
}

- (void)endLiveContinuousToneSession
{
  v3 = [(AXMDataSonifier *)self liveContinuousMixerDataSource];
  [v3 removeAllDataSources];

  self->_isInLiveContinuousToneSession = 0;

  [(AXMDataSonifier *)self stopPlaying];
}

- (void)setLiveContinuousToneNormalizedFrequency:(double)a3
{
  [(AXMDataSonifier *)self _centsForNormalizedFrequency:a3];
  *&v4 = v4;
  pitchShifter = self->_pitchShifter;

  [(AVAudioUnitTimePitch *)pitchShifter setPitch:v4];
}

- (void)_peakNormalizeBuffer:(void *)a3 length:(unint64_t)a4 level:(double)a5
{
  v5 = *a3;
  v6 = *(a3 + 1) - *a3;
  if (v6)
  {
    v7 = 0;
    v8 = v6 >> 2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = *a3;
    v10 = v8;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (v12 > v7)
      {
        v7 = v11;
      }

      --v10;
    }

    while (v10);
    do
    {
      *v5 = ((*v5 / (v7 / 32500.0)) * a5);
      ++v5;
      --v8;
    }

    while (v8);
  }
}

- (id)_newContinuousToneEnvelope
{
  v2 = [AXMADSREnvelope alloc];

  return [(AXMADSREnvelope *)v2 initWithAttackDuration:500.0 attackLevel:1.0 decayDuration:0.0 sustainDuration:1.0 sustainLevel:1.0 releaseDuration:50.0];
}

- (void)_regenerateTimeEncodingValuesForDataPoints
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(AXMDataSonifier *)self currentChartDescriptor];
  v4 = [v3 timeCategoricalAxisDescriptor];

  v5 = [(AXMDataSonifier *)self currentChartDescriptor];
  v37 = [v5 timeNumericAxisDescriptor];

  v6 = [v4 categoryOrder];
  v7 = [v6 count];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [(AXMDataSonifier *)self currentChartDescriptor];
  v9 = [v8 series];

  obj = v9;
  v34 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v34)
  {
    v33 = *v43;
    v10 = v7;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v36 = [v11 dataPoints];
        v12 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v12)
        {
          v13 = *v39;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v39 != v13)
              {
                objc_enumerationMutation(v36);
              }

              v15 = *(*(&v38 + 1) + 8 * j);
              if (v4)
              {
                v16 = [v4 categoryOrder];
                v17 = [v15 timeEncodingValue];
                v18 = [v17 category];
                v19 = [v16 indexOfObject:v18];

                if (v19 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(AXMDataSonifier *)self normalizedValueForValue:v19 min:0.0 max:v10];
                  v21 = v20;
                  [(AXMDataSonifier *)self playbackDuration];
                  [v15 setPlaybackTimeOffsetMS:v21 * v22];
                }
              }

              else
              {
                v23 = [*(*(&v38 + 1) + 8 * j) timeEncodingValue];
                [v23 number];
                v25 = v24;

                [v37 lowerBound];
                v27 = v26;
                [v37 upperBound];
                [(AXMDataSonifier *)self normalizedValueForValue:v25 min:v27 max:v28];
                v30 = v29;
                [(AXMDataSonifier *)self playbackDuration];
                [v15 setPlaybackTimeOffsetMS:v30 * v31];
              }
            }

            v12 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v12);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v34);
  }
}

- (BOOL)_startAudioEngineIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    v3 = AXMediaLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_DEFAULT, "Attempted to start audio engine while engine is currently running", buf, 2u);
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  engine = self->_engine;
  v9 = 0;
  v5 = [(AVAudioEngine *)engine startAndReturnError:&v9];
  v3 = v9;
  v6 = v3 == 0 && v5;
  if (!v6)
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "Failed to start audio engine: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

- (void)_initializeLiveToneDataSource
{
  [(AXMDataSonifier *)self stopPlaying];
  v3 = [(AXMDataSonifier *)self liveContinuousMixerDataSource];
  [v3 setLength:88200];

  v4 = [(AXMDataSonifier *)self liveContinuousAudioDataSource];
  [v4 setLength:88200];
}

- (AXMDataSeriesDescriptor)currentSeries
{
  if ([(AXMDataSonifier *)self currentSeriesIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v4 = [(AXMDataSonifier *)self currentSeriesIndex];
  v5 = [(AXMDataSonifier *)self currentChartDescriptor];
  v6 = [v5 series];
  v7 = [v6 count];

  if (v4 >= v7)
  {
    v11 = [(AXMDataSonifier *)self currentSeriesIndex];
    v12 = [(AXMDataSonifier *)self currentChartDescriptor];
    v13 = [v12 series];
    v14 = [v13 count];

    if (v11 != v14)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_8;
    }

    v8 = [(AXMDataSonifier *)self currentChartDescriptor];
    v9 = [v8 series];
    v10 = [v9 lastObject];
  }

  else
  {
    v8 = [(AXMDataSonifier *)self currentChartDescriptor];
    v9 = [v8 series];
    v10 = [v9 objectAtIndexedSubscript:{-[AXMDataSonifier currentSeriesIndex](self, "currentSeriesIndex")}];
  }

  v3 = v10;

LABEL_8:

  return v3;
}

- (BOOL)containsMultipleSeries
{
  v2 = [(AXMDataSonifier *)self currentChartDescriptor];
  v3 = [v2 series];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)shouldIncrementToPitch:(double)a3 by:(double)a4
{
  [(AVAudioUnitTimePitch *)self->_pitchShifter pitch];
  v7 = v6 + a4;
  if (a4 >= 0.0)
  {
    return v7 < a3 + a4;
  }

  else
  {
    return v7 > a3 + a4;
  }
}

@end