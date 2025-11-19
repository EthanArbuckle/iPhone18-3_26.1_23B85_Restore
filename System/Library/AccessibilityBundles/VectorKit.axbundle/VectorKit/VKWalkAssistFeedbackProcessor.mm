@interface VKWalkAssistFeedbackProcessor
+ (id)fourPitchesThresholdArray;
- (VKWalkAssistFeedbackProcessor)initWithToneGenerator:(id)a3;
- (void)_updateProximityThresholdsIfNeededForDistance:(int)a3;
- (void)_voiceOverStatusChanged;
- (void)dealloc;
- (void)processPulseFeedbackForDistance:(int)a3 shouldProcessHapticPulse:(BOOL)a4;
- (void)setShouldPlayAudio:(BOOL)a3;
@end

@implementation VKWalkAssistFeedbackProcessor

+ (id)fourPitchesThresholdArray
{
  v8[4] = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA070] numberWithDouble:15.0];
  v3 = [MEMORY[0x29EDBA070] numberWithDouble:20.0];
  v4 = [MEMORY[0x29EDBA070] numberWithDouble:25.0];
  v5 = [MEMORY[0x29EDBA070] numberWithDouble:30.0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:4];

  return v6;
}

- (VKWalkAssistFeedbackProcessor)initWithToneGenerator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VKWalkAssistFeedbackProcessor;
  v6 = [(VKWalkAssistFeedbackProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_minProximityThreshold = 0.0;
    v6->_maxProximityThreshold = 0.0;
    objc_storeStrong(&v6->_toneGenerator, a3);
    [(VKToneGenerator *)v7->_toneGenerator setUsesSoundFeedback:1];
    v7->_pitchMode = 2;
    v8 = [MEMORY[0x29EDBA068] defaultCenter];
    [v8 addObserver:v7 selector:sel__voiceOverStatusChanged name:*MEMORY[0x29EDC8000] object:0];

    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  toneGenerator = self->_toneGenerator;
  self->_toneGenerator = 0;

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = VKWalkAssistFeedbackProcessor;
  [(VKWalkAssistFeedbackProcessor *)&v5 dealloc];
}

- (void)setShouldPlayAudio:(BOOL)a3
{
  self->_shouldPlayAudio = a3;
  if (!a3)
  {
    [(VKToneGenerator *)self->_toneGenerator stopPulse];
  }
}

- (void)processPulseFeedbackForDistance:(int)a3 shouldProcessHapticPulse:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  [(VKWalkAssistFeedbackProcessor *)self _updateProximityThresholdsIfNeededForDistance:?];
  v7 = [(VKWalkAssistFeedbackProcessor *)self _mmFromMeters:v5];
  v24 = [(VKWalkAssistFeedbackProcessor *)self toneGenerator];
  v8 = [VKPulseFrequencyGenerator alloc];
  [v24 minPulseFrequency];
  v10 = v9;
  [v24 maxPulseFrequency];
  v12 = [(VKPulseFrequencyGenerator *)v8 initWithMinPulseFrequency:self->_minProximityThreshold maxPulseFrequency:self->_maxProximityThreshold minDepth:v10 maxDepth:v11];
  [v24 setShouldPlayHapticPulse:v4];
  [(VKPulseFrequencyGenerator *)v12 frequencyForDepth:v7];
  [v24 setPulseFrequency:?];
  v13 = objc_alloc_init(VKVolumeGenerator);
  [(VKVolumeGenerator *)v13 volumeForDepth:v7 minDistanceThreshold:self->_minProximityThreshold maxDistanceThreshold:self->_maxProximityThreshold];
  [v24 setVolume:?];
  pitchMode = self->_pitchMode;
  if (!pitchMode)
  {
    v18 = MEMORY[0x29EDBA070];
    [v24 maxPitchFactor];
    v16 = [v18 numberWithFloat:?];
    v19 = MEMORY[0x29EDBA070];
    [v24 maxPitchFactor];
    v20 = [v19 numberWithFloat:?];
    v21 = [MEMORY[0x29EDBA070] numberWithInt:self->_minProximityThreshold];
    v22 = [MEMORY[0x29EDBA070] numberWithInt:self->_maxProximityThreshold];
    v17 = [[VKPitchGenerator alloc] initWithMinPitch:v16 maxPitch:v20 minDepth:v21 maxDepth:v22];

LABEL_7:
    goto LABEL_9;
  }

  if (pitchMode != 1)
  {
    if (pitchMode != 2)
    {
      v17 = 0;
      goto LABEL_9;
    }

    v15 = [VKPitchGenerator alloc];
    v16 = +[VKWalkAssistFeedbackProcessor fourPitchesThresholdArray];
    v17 = [(VKPitchGenerator *)v15 initWithFourPitchesThresholdArray:v16];
    goto LABEL_7;
  }

  v17 = [[VKPitchGenerator alloc] initWithTwoPitchesThreshold:&unk_2A239BA78];
LABEL_9:
  v23 = [(VKPitchGenerator *)v17 fileForDepthInUnit:v5];
  [v24 setAudioFileURL:v23];

  [(VKPitchGenerator *)v17 pitchForDepth:v7];
  [v24 setPitchFactor:?];
  if ([v24 usesSoundFeedback] && self->_shouldPlayAudio)
  {
    [v24 startPulse];
  }

  else
  {
    [v24 stopPulse];
  }
}

- (void)_updateProximityThresholdsIfNeededForDistance:(int)a3
{
  v4 = [(VKWalkAssistFeedbackProcessor *)self _mmFromMeters:*&a3];
  if (self->_minProximityThreshold == 0.0)
  {
    self->_minProximityThreshold = [(VKWalkAssistFeedbackProcessor *)self _mmFromMeters:8.0];
  }

  v5 = v4;
  if (self->_maxProximityThreshold < v4)
  {
    self->_maxProximityThreshold = v5;
    pitchMode = self->_pitchMode;
    if (pitchMode >= 2)
    {
      if (pitchMode == 2)
      {
        v9 = +[VKWalkAssistFeedbackProcessor fourPitchesThresholdArray];
        v14 = [v9 lastObject];

        v10 = v14;
        if (v14)
        {
          maxProximityThreshold = self->_maxProximityThreshold;
          [v14 doubleValue];
          v10 = v14;
          if (maxProximityThreshold < v12)
          {
            [v14 doubleValue];
            v10 = v14;
            self->_maxProximityThreshold = v13;
          }
        }
      }
    }

    else
    {
      [&unk_2A239BA78 doubleValue];
      if (v7 > v5)
      {
        [&unk_2A239BA78 doubleValue];
        self->_maxProximityThreshold = v8;
      }
    }
  }
}

- (void)_voiceOverStatusChanged
{
  if (UIAccessibilityIsVoiceOverRunning() && self->_shouldPlayAudio)
  {
    v3 = [(VKWalkAssistFeedbackProcessor *)self toneGenerator];
    [v3 startPulse];
  }

  else
  {
    v3 = [(VKWalkAssistFeedbackProcessor *)self toneGenerator];
    [v3 stopPulse];
  }
}

@end