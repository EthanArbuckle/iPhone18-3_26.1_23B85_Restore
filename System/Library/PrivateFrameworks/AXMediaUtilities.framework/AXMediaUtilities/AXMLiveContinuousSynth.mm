@interface AXMLiveContinuousSynth
- (void)renderInBuffer:(void *)buffer atFrame:(unint64_t)frame numSamples:(unint64_t)samples;
- (void)startRelease;
@end

@implementation AXMLiveContinuousSynth

- (void)renderInBuffer:(void *)buffer atFrame:(unint64_t)frame numSamples:(unint64_t)samples
{
  [(AXMSynth *)self bypassEnvelopes];
  mainOscillator = [(AXMSynth *)self mainOscillator];
  [mainOscillator updateCache];

  mainOscillator2 = [(AXMSynth *)self mainOscillator];
  isBypassed = [mainOscillator2 isBypassed];

  if ((isBypassed & 1) == 0 && samples + frame > frame)
  {
    do
    {
      mainOscillator3 = [(AXMSynth *)self mainOscillator];
      [mainOscillator3 getNextSample];
      v14 = v13;

      framesRendered = [(AXMLiveContinuousSynth *)self framesRendered];
      [(AXMSynth *)self sampleRate];
      v17 = v16;
      envelope = [(AXMSynth *)self envelope];
      [envelope attackMS];
      v20 = v19;
      v21 = framesRendered / v17 * 1000.0;

      if (v21 < v20)
      {
        envelope2 = [(AXMSynth *)self envelope];
        [envelope2 levelForTime:v21];
        v14 = v14 * v23;
      }

      if ([(AXMLiveContinuousSynth *)self releasing])
      {
        framesRendered2 = [(AXMLiveContinuousSynth *)self framesRendered];
        releaseFrame = [(AXMLiveContinuousSynth *)self releaseFrame];
        [(AXMSynth *)self sampleRate];
        v27 = v26;
        envelope3 = [(AXMSynth *)self envelope];
        [envelope3 releaseMS];
        v30 = v29;
        v31 = (framesRendered2 - releaseFrame) / v27 * 1000.0;

        v32 = 0.0;
        if (v31 <= v30)
        {
          envelope4 = [(AXMSynth *)self envelope];
          [envelope4 attackMS];
          v35 = v34;
          envelope5 = [(AXMSynth *)self envelope];
          [envelope5 decayMS];
          v38 = v37;
          envelope6 = [(AXMSynth *)self envelope];
          [envelope6 sustainMS];
          v41 = v35 + v38 + v40;

          envelope7 = [(AXMSynth *)self envelope];
          [envelope7 levelForTime:v31 + v41];
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

      v44 = frame % ((*(buffer + 1) - *buffer) >> 2);
      [(AXMSynth *)self gain];
      *(*buffer + 4 * v44) += (v32 * 32500.0 * v45);
      if (![(AXMLiveContinuousSynth *)self muted]|| [(AXMLiveContinuousSynth *)self releasing])
      {
        [(AXMLiveContinuousSynth *)self setFramesRendered:[(AXMLiveContinuousSynth *)self framesRendered]+ 1];
      }

      ++frame;
      --samples;
    }

    while (samples);
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