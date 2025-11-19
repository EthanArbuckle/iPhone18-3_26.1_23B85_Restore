@interface AXMLiveContinuousSynth
- (void)renderInBuffer:(void *)a3 atFrame:(unint64_t)a4 numSamples:(unint64_t)a5;
- (void)startRelease;
@end

@implementation AXMLiveContinuousSynth

- (void)renderInBuffer:(void *)a3 atFrame:(unint64_t)a4 numSamples:(unint64_t)a5
{
  [(AXMSynth *)self bypassEnvelopes];
  v9 = [(AXMSynth *)self mainOscillator];
  [v9 updateCache];

  v10 = [(AXMSynth *)self mainOscillator];
  v11 = [v10 isBypassed];

  if ((v11 & 1) == 0 && a5 + a4 > a4)
  {
    do
    {
      v12 = [(AXMSynth *)self mainOscillator];
      [v12 getNextSample];
      v14 = v13;

      v15 = [(AXMLiveContinuousSynth *)self framesRendered];
      [(AXMSynth *)self sampleRate];
      v17 = v16;
      v18 = [(AXMSynth *)self envelope];
      [v18 attackMS];
      v20 = v19;
      v21 = v15 / v17 * 1000.0;

      if (v21 < v20)
      {
        v22 = [(AXMSynth *)self envelope];
        [v22 levelForTime:v21];
        v14 = v14 * v23;
      }

      if ([(AXMLiveContinuousSynth *)self releasing])
      {
        v24 = [(AXMLiveContinuousSynth *)self framesRendered];
        v25 = [(AXMLiveContinuousSynth *)self releaseFrame];
        [(AXMSynth *)self sampleRate];
        v27 = v26;
        v28 = [(AXMSynth *)self envelope];
        [v28 releaseMS];
        v30 = v29;
        v31 = (v24 - v25) / v27 * 1000.0;

        v32 = 0.0;
        if (v31 <= v30)
        {
          v33 = [(AXMSynth *)self envelope];
          [v33 attackMS];
          v35 = v34;
          v36 = [(AXMSynth *)self envelope];
          [v36 decayMS];
          v38 = v37;
          v39 = [(AXMSynth *)self envelope];
          [v39 sustainMS];
          v41 = v35 + v38 + v40;

          v42 = [(AXMSynth *)self envelope];
          [v42 levelForTime:v31 + v41];
          v32 = v14 * v43;
        }
      }

      else if ([(AXMLiveContinuousSynth *)self muted])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v14;
      }

      v44 = a4 % ((*(a3 + 1) - *a3) >> 2);
      [(AXMSynth *)self gain];
      *(*a3 + 4 * v44) += (v32 * 32500.0 * v45);
      if (![(AXMLiveContinuousSynth *)self muted]|| [(AXMLiveContinuousSynth *)self releasing])
      {
        [(AXMLiveContinuousSynth *)self setFramesRendered:[(AXMLiveContinuousSynth *)self framesRendered]+ 1];
      }

      ++a4;
      --a5;
    }

    while (a5);
  }
}

- (void)startRelease
{
  if (![(AXMLiveContinuousSynth *)self muted])
  {
    self->_releaseFrame = [(AXMLiveContinuousSynth *)self framesRendered];
    self->_releasing = 1;
  }
}

@end