@interface AXMContinuousSynth
- (AXMContinuousSynth)initWithSampleRate:(double)a3 envelope:(id)a4 keyPitches:(id)a5;
- (unint64_t)_bufferFrameForKeyPitch:(id)a3;
- (void)renderInBuffer:(void *)a3 atFrame:(unint64_t)a4;
@end

@implementation AXMContinuousSynth

- (AXMContinuousSynth)initWithSampleRate:(double)a3 envelope:(id)a4 keyPitches:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AXMContinuousSynth;
  v10 = [(AXMSynth *)&v13 initWithSampleRate:a4 envelope:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_keyPitches, a5);
  }

  return v11;
}

- (void)renderInBuffer:(void *)a3 atFrame:(unint64_t)a4
{
  v41 = [(AXMSynth *)self envelope];
  [v41 lengthMS];
  v8 = v7;
  [(AXMSynth *)self sampleRate];
  v10 = a4 + v8 / 1000.0 * v9;
  v11 = ((*(a3 + 1) - *a3) >> 2);
  if (v10 < v11)
  {
    v12 = [(AXMSynth *)self envelope];
    [v12 lengthMS];
    v14 = v13;
    [(AXMSynth *)self sampleRate];
    v11 = a4 + v14 / 1000.0 * v15;
  }

  v42 = [(NSArray *)self->_keyPitches mutableCopy];
  v16 = [v42 firstObject];
  v17 = v42;
  if (v16)
  {
    [v42 removeObjectAtIndex:0];
    v17 = v42;
  }

  v18 = [v17 firstObject];
  v19 = [(AXMContinuousSynth *)self _bufferFrameForKeyPitch:v16];
  v20 = [(AXMContinuousSynth *)self _bufferFrameForKeyPitch:v18];
  [v16 frequency];
  [(AXMSynth *)self setBaseFrequency:?];
  [(AXMSynth *)self bypassEnvelopes];
  v21 = [(AXMSynth *)self mainOscillator];
  [v21 updateCache];

  v22 = [(AXMSynth *)self mainOscillator];
  v23 = [v22 isBypassed];

  v24 = v11 - a4;
  if (v11 <= a4)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    v26 = v16;
  }

  else
  {
    v27 = 0;
    v28 = 4 * a4;
    v26 = v16;
    do
    {
      if (v27 == v20)
      {
        v29 = v18;

        if (v29)
        {
          [v42 removeObjectAtIndex:0];
        }

        v18 = [v42 firstObject];

        v30 = [(AXMContinuousSynth *)self _bufferFrameForKeyPitch:v18];
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
          [v18 frequency];
          v35 = v34;
          [v26 frequency];
          [(AXMSynth *)self setBaseFrequency:v33 + v31 * (v35 - v36)];
        }
      }

      v37 = [(AXMSynth *)self mainOscillator];
      [v37 getNextSample];
      v39 = v38;

      [(AXMSynth *)self gain];
      *(*a3 + v28 + 4 * v27++) += (v39 * 32500.0 * v40);
    }

    while (v24 != v27);
  }
}

- (unint64_t)_bufferFrameForKeyPitch:(id)a3
{
  v4 = a3;
  [v4 timeOffsetMS];
  v6 = v5;
  [(AXMSynth *)self sampleRate];
  v8 = (v6 / 1000.0 * v7);

  return v8;
}

@end