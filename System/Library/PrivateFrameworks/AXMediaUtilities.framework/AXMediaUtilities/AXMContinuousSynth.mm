@interface AXMContinuousSynth
- (AXMContinuousSynth)initWithSampleRate:(double)rate envelope:(id)envelope keyPitches:(id)pitches;
- (unint64_t)_bufferFrameForKeyPitch:(id)pitch;
- (void)renderInBuffer:(void *)buffer atFrame:(unint64_t)frame;
@end

@implementation AXMContinuousSynth

- (AXMContinuousSynth)initWithSampleRate:(double)rate envelope:(id)envelope keyPitches:(id)pitches
{
  pitchesCopy = pitches;
  v13.receiver = self;
  v13.super_class = AXMContinuousSynth;
  v10 = [(AXMSynth *)&v13 initWithSampleRate:envelope envelope:rate];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_keyPitches, pitches);
  }

  return v11;
}

- (void)renderInBuffer:(void *)buffer atFrame:(unint64_t)frame
{
  envelope = [(AXMSynth *)self envelope];
  [envelope lengthMS];
  v8 = v7;
  [(AXMSynth *)self sampleRate];
  v10 = frame + v8 / 1000.0 * v9;
  v11 = ((*(buffer + 1) - *buffer) >> 2);
  if (v10 < v11)
  {
    envelope2 = [(AXMSynth *)self envelope];
    [envelope2 lengthMS];
    v14 = v13;
    [(AXMSynth *)self sampleRate];
    v11 = frame + v14 / 1000.0 * v15;
  }

  v42 = [(NSArray *)self->_keyPitches mutableCopy];
  firstObject = [v42 firstObject];
  v17 = v42;
  if (firstObject)
  {
    [v42 removeObjectAtIndex:0];
    v17 = v42;
  }

  firstObject2 = [v17 firstObject];
  v19 = [(AXMContinuousSynth *)self _bufferFrameForKeyPitch:firstObject];
  v20 = [(AXMContinuousSynth *)self _bufferFrameForKeyPitch:firstObject2];
  [firstObject frequency];
  [(AXMSynth *)self setBaseFrequency:?];
  [(AXMSynth *)self bypassEnvelopes];
  mainOscillator = [(AXMSynth *)self mainOscillator];
  [mainOscillator updateCache];

  mainOscillator2 = [(AXMSynth *)self mainOscillator];
  isBypassed = [mainOscillator2 isBypassed];

  v24 = v11 - frame;
  if (v11 <= frame)
  {
    v25 = 1;
  }

  else
  {
    v25 = isBypassed;
  }

  if (v25)
  {
    v26 = firstObject;
  }

  else
  {
    v27 = 0;
    v28 = 4 * frame;
    v26 = firstObject;
    do
    {
      if (v27 == v20)
      {
        v29 = firstObject2;

        if (v29)
        {
          [v42 removeObjectAtIndex:0];
        }

        firstObject2 = [v42 firstObject];

        v30 = [(AXMContinuousSynth *)self _bufferFrameForKeyPitch:firstObject2];
        [v29 frequency];
        [(AXMSynth *)self setBaseFrequency:?];
        v19 = v20;
        v20 = v30;
        v26 = v29;
      }

      else
      {
        v31 = (v27 - v19) / (v20 - v19);
        if (v31 > 0.0)
        {
          [v26 frequency];
          v33 = v32;
          [firstObject2 frequency];
          v35 = v34;
          [v26 frequency];
          [(AXMSynth *)self setBaseFrequency:v33 + v31 * (v35 - v36)];
        }
      }

      mainOscillator3 = [(AXMSynth *)self mainOscillator];
      [mainOscillator3 getNextSample];
      v39 = v38;

      [(AXMSynth *)self gain];
      *(*buffer + v28 + 4 * v27++) += (v39 * 32500.0 * v40);
    }

    while (v24 != v27);
  }
}

- (unint64_t)_bufferFrameForKeyPitch:(id)pitch
{
  pitchCopy = pitch;
  [pitchCopy timeOffsetMS];
  v6 = v5;
  [(AXMSynth *)self sampleRate];
  v8 = (v6 / 1000.0 * v7);

  return v8;
}

@end