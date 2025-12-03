@interface VKWalkAssistFeedbackProcessor
+ (id)fourPitchesThresholdArray;
- (VKWalkAssistFeedbackProcessor)initWithToneGenerator:(id)generator;
- (void)_updateProximityThresholdsIfNeededForDistance:(int)distance;
- (void)_voiceOverStatusChanged;
- (void)dealloc;
- (void)processPulseFeedbackForDistance:(int)distance shouldProcessHapticPulse:(BOOL)pulse;
- (void)setShouldPlayAudio:(BOOL)audio;
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

- (VKWalkAssistFeedbackProcessor)initWithToneGenerator:(id)generator
{
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = VKWalkAssistFeedbackProcessor;
  v6 = [(VKWalkAssistFeedbackProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_minProximityThreshold = 0.0;
    v6->_maxProximityThreshold = 0.0;
    objc_storeStrong(&v6->_toneGenerator, generator);
    [(VKToneGenerator *)v7->_toneGenerator setUsesSoundFeedback:1];
    v7->_pitchMode = 2;
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__voiceOverStatusChanged name:*MEMORY[0x29EDC8000] object:0];

    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  toneGenerator = self->_toneGenerator;
  self->_toneGenerator = 0;

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = VKWalkAssistFeedbackProcessor;
  [(VKWalkAssistFeedbackProcessor *)&v5 dealloc];
}

- (void)setShouldPlayAudio:(BOOL)audio
{
  self->_shouldPlayAudio = audio;
  if (!audio)
  {
    [(VKToneGenerator *)self->_toneGenerator stopPulse];
  }
}

- (void)processPulseFeedbackForDistance:(int)distance shouldProcessHapticPulse:(BOOL)pulse
{
  pulseCopy = pulse;
  v5 = *&distance;
  [(VKWalkAssistFeedbackProcessor *)self _updateProximityThresholdsIfNeededForDistance:?];
  v7 = [(VKWalkAssistFeedbackProcessor *)self _mmFromMeters:v5];
  toneGenerator = [(VKWalkAssistFeedbackProcessor *)self toneGenerator];
  v8 = [VKPulseFrequencyGenerator alloc];
  [toneGenerator minPulseFrequency];
  v10 = v9;
  [toneGenerator maxPulseFrequency];
  v12 = [(VKPulseFrequencyGenerator *)v8 initWithMinPulseFrequency:self->_minProximityThreshold maxPulseFrequency:self->_maxProximityThreshold minDepth:v10 maxDepth:v11];
  [toneGenerator setShouldPlayHapticPulse:pulseCopy];
  [(VKPulseFrequencyGenerator *)v12 frequencyForDepth:v7];
  [toneGenerator setPulseFrequency:?];
  v13 = objc_alloc_init(VKVolumeGenerator);
  [(VKVolumeGenerator *)v13 volumeForDepth:v7 minDistanceThreshold:self->_minProximityThreshold maxDistanceThreshold:self->_maxProximityThreshold];
  [toneGenerator setVolume:?];
  pitchMode = self->_pitchMode;
  if (!pitchMode)
  {
    v18 = MEMORY[0x29EDBA070];
    [toneGenerator maxPitchFactor];
    v16 = [v18 numberWithFloat:?];
    v19 = MEMORY[0x29EDBA070];
    [toneGenerator maxPitchFactor];
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
  [toneGenerator setAudioFileURL:v23];

  [(VKPitchGenerator *)v17 pitchForDepth:v7];
  [toneGenerator setPitchFactor:?];
  if ([toneGenerator usesSoundFeedback] && self->_shouldPlayAudio)
  {
    [toneGenerator startPulse];
  }

  else
  {
    [toneGenerator stopPulse];
  }
}

- (void)_updateProximityThresholdsIfNeededForDistance:(int)distance
{
  v4 = [(VKWalkAssistFeedbackProcessor *)self _mmFromMeters:*&distance];
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
        lastObject = [v9 lastObject];

        v10 = lastObject;
        if (lastObject)
        {
          maxProximityThreshold = self->_maxProximityThreshold;
          [lastObject doubleValue];
          v10 = lastObject;
          if (maxProximityThreshold < v12)
          {
            [lastObject doubleValue];
            v10 = lastObject;
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
    toneGenerator = [(VKWalkAssistFeedbackProcessor *)self toneGenerator];
    [toneGenerator startPulse];
  }

  else
  {
    toneGenerator = [(VKWalkAssistFeedbackProcessor *)self toneGenerator];
    [toneGenerator stopPulse];
  }
}

@end