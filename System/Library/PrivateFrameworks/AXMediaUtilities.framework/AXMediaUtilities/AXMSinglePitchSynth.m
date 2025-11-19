@interface AXMSinglePitchSynth
- (AXMSinglePitchSynth)initWithFrequency:(double)a3 sampleRate:(double)a4 envelope:(id)a5;
- (void)renderInBuffer:(void *)a3 atFrame:(unint64_t)a4;
@end

@implementation AXMSinglePitchSynth

- (AXMSinglePitchSynth)initWithFrequency:(double)a3 sampleRate:(double)a4 envelope:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = AXMSinglePitchSynth;
  v9 = [(AXMSynth *)&v12 initWithSampleRate:v8 envelope:a4];
  v10 = v9;
  if (v9)
  {
    [(AXMSynth *)v9 setBaseFrequency:a3];
  }

  return v10;
}

- (void)renderInBuffer:(void *)a3 atFrame:(unint64_t)a4
{
  v7 = [(AXMSynth *)self envelope];
  [v7 lengthMS];
  v9 = v8;
  [(AXMSynth *)self sampleRate];
  v11 = a4 + v9 / 1000.0 * v10;
  v12 = ((*(a3 + 1) - *a3) >> 2);
  if (v11 < v12)
  {
    v13 = [(AXMSynth *)self envelope];
    [v13 lengthMS];
    v15 = v14;
    [(AXMSynth *)self sampleRate];
    v12 = a4 + v15 / 1000.0 * v16;
  }

  v17 = [(AXMSynth *)self mainOscillator];
  [v17 updateCache];

  v18 = [(AXMSynth *)self mainOscillator];
  v19 = [v18 isBypassed];
  v20 = v12;

  if (v12 <= a4)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  if ((v21 & 1) == 0)
  {
    do
    {
      v22 = [(AXMSynth *)self mainOscillator];
      [v22 getNextSample];
      v24 = v23;

      [(AXMSynth *)self gain];
      *(*a3 + 4 * a4++) += (v24 * 32500.0 * v25);
    }

    while (v20 != a4);
  }
}

@end