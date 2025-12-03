@interface AXMSinglePitchSynth
- (AXMSinglePitchSynth)initWithFrequency:(double)frequency sampleRate:(double)rate envelope:(id)envelope;
- (void)renderInBuffer:(void *)buffer atFrame:(unint64_t)frame;
@end

@implementation AXMSinglePitchSynth

- (AXMSinglePitchSynth)initWithFrequency:(double)frequency sampleRate:(double)rate envelope:(id)envelope
{
  envelopeCopy = envelope;
  v12.receiver = self;
  v12.super_class = AXMSinglePitchSynth;
  v9 = [(AXMSynth *)&v12 initWithSampleRate:envelopeCopy envelope:rate];
  v10 = v9;
  if (v9)
  {
    [(AXMSynth *)v9 setBaseFrequency:frequency];
  }

  return v10;
}

- (void)renderInBuffer:(void *)buffer atFrame:(unint64_t)frame
{
  envelope = [(AXMSynth *)self envelope];
  [envelope lengthMS];
  v9 = v8;
  [(AXMSynth *)self sampleRate];
  v11 = frame + v9 / 1000.0 * v10;
  v12 = ((*(buffer + 1) - *buffer) >> 2);
  if (v11 < v12)
  {
    envelope2 = [(AXMSynth *)self envelope];
    [envelope2 lengthMS];
    v15 = v14;
    [(AXMSynth *)self sampleRate];
    v12 = frame + v15 / 1000.0 * v16;
  }

  mainOscillator = [(AXMSynth *)self mainOscillator];
  [mainOscillator updateCache];

  mainOscillator2 = [(AXMSynth *)self mainOscillator];
  isBypassed = [mainOscillator2 isBypassed];
  v20 = v12;

  if (v12 <= frame)
  {
    v21 = 1;
  }

  else
  {
    v21 = isBypassed;
  }

  if ((v21 & 1) == 0)
  {
    do
    {
      mainOscillator3 = [(AXMSynth *)self mainOscillator];
      [mainOscillator3 getNextSample];
      v24 = v23;

      [(AXMSynth *)self gain];
      *(*buffer + 4 * frame++) += (v24 * 32500.0 * v25);
    }

    while (v20 != frame);
  }
}

@end