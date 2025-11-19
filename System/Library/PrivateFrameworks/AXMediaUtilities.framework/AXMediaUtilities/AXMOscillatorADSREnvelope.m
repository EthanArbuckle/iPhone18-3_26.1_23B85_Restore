@interface AXMOscillatorADSREnvelope
- (AXMOscillatorADSREnvelope)initWithParameters:(id)a3 parentSynth:(id)a4;
- (AXMSynth)parentSynth;
- (double)getNextSample;
- (double)sampleRate;
- (float)attackLevel;
- (float)attackMS;
- (float)decayMS;
- (float)releaseMS;
- (float)sustainLevel;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)setAttackLevel:(float)a3;
- (void)setAttackTime:(float)a3;
- (void)setDecayTime:(float)a3;
- (void)setReleaseTime:(float)a3;
- (void)setSustainLevel:(float)a3;
@end

@implementation AXMOscillatorADSREnvelope

- (AXMOscillatorADSREnvelope)initWithParameters:(id)a3 parentSynth:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AXMOscillatorADSREnvelope;
  v9 = [(AXMOscillatorADSREnvelope *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_parentSynth, v8);
    objc_storeStrong(&v10->_parameters, a3);
    v10->_currentSampleIndex = 0;
    v10->_sampleBuffer = malloc_type_malloc(0x8000uLL, 0x100004000313F17uLL);
    objc_storeStrong(&v10->_parameters, a3);
    v11 = [v8 parameters];
    [(AXMSynthEnvelopeParameters *)v10->_parameters setMainParameters:v11];
  }

  return v10;
}

- (void)dealloc
{
  free(self->_sampleBuffer);
  v3.receiver = self;
  v3.super_class = AXMOscillatorADSREnvelope;
  [(AXMOscillatorADSREnvelope *)&v3 dealloc];
}

- (void)activate
{
  [(AXMOscillatorADSREnvelope *)self sustainLevel];
  self->_shouldSustain = v3 > 0.0;
  self->_currentSampleIndex = 0;
}

- (void)deactivate
{
  self->_sustainEndTime = CFAbsoluteTimeGetCurrent();
  self->_shouldSustain = 0;
  self->_releasePhaseSampleIndex = 0;
}

- (double)getNextSample
{
  [(AXMOscillatorADSREnvelope *)self sampleRate];
  v4 = v3;
  [(AXMOscillatorADSREnvelope *)self attackMS];
  v6 = v5;
  v7 = v4;
  [(AXMOscillatorADSREnvelope *)self decayMS];
  v9 = v8;
  [(AXMOscillatorADSREnvelope *)self releaseMS];
  v11 = (v10 / 1000.0 * v7);
  releasePhaseSampleIndex = self->_releasePhaseSampleIndex;
  if (releasePhaseSampleIndex < v11 || (result = 0.0, self->_shouldSustain))
  {
    v14 = (v6 / 1000.0 * v7);
    currentSampleIndex = self->_currentSampleIndex;
    if (currentSampleIndex >= v14)
    {
      v18 = (v9 / 1000.0 * v7);
      if (currentSampleIndex >= v18 + v14)
      {
        if (!self->_shouldSustain)
        {
          result = 0.0;
          if (releasePhaseSampleIndex < v11)
          {
            v23 = releasePhaseSampleIndex;
            v24 = v11;
            [(AXMOscillatorADSREnvelope *)self sustainLevel];
            v26 = v25;
            [(AXMOscillatorADSREnvelope *)self sustainLevel];
            result = (v26 + ((-v23 / v24) * v27));
            ++self->_releasePhaseSampleIndex;
          }

          goto LABEL_10;
        }

        [(AXMOscillatorADSREnvelope *)self sustainLevel];
      }

      else
      {
        v19 = (currentSampleIndex - v14) / v18;
        [(AXMOscillatorADSREnvelope *)self attackLevel];
        v21 = v20;
        [(AXMOscillatorADSREnvelope *)self sustainLevel];
        v17 = v21 + (v19 * (v22 - v21));
      }
    }

    else
    {
      [(AXMOscillatorADSREnvelope *)self attackLevel];
      v17 = (v16 * self->_currentSampleIndex) / v14;
    }

    result = v17;
LABEL_10:
    ++self->_currentSampleIndex;
  }

  return result;
}

- (double)sampleRate
{
  v2 = [(AXMOscillatorADSREnvelope *)self parameters];
  [v2 sampleRate];
  v4 = v3;

  return v4;
}

- (float)attackMS
{
  v2 = [(AXMOscillatorADSREnvelope *)self parameters];
  [v2 attackMS];
  v4 = v3;

  return v4;
}

- (void)setAttackTime:(float)a3
{
  v5 = [(AXMOscillatorADSREnvelope *)self parameters];
  *&v4 = a3;
  [v5 setAttackMS:v4];
}

- (float)attackLevel
{
  v2 = [(AXMOscillatorADSREnvelope *)self parameters];
  [v2 attackLevel];
  v4 = v3;

  return v4;
}

- (void)setAttackLevel:(float)a3
{
  v5 = [(AXMOscillatorADSREnvelope *)self parameters];
  *&v4 = a3;
  [v5 setAttackLevel:v4];
}

- (float)decayMS
{
  v2 = [(AXMOscillatorADSREnvelope *)self parameters];
  [v2 decayMS];
  v4 = v3;

  return v4;
}

- (void)setDecayTime:(float)a3
{
  v5 = [(AXMOscillatorADSREnvelope *)self parameters];
  *&v4 = a3;
  [v5 setDecayMS:v4];
}

- (float)sustainLevel
{
  v2 = [(AXMOscillatorADSREnvelope *)self parameters];
  [v2 sustainLevel];
  v4 = v3;

  return v4;
}

- (void)setSustainLevel:(float)a3
{
  v5 = [(AXMOscillatorADSREnvelope *)self parameters];
  *&v4 = a3;
  [v5 setSustainLevel:v4];
}

- (float)releaseMS
{
  v2 = [(AXMOscillatorADSREnvelope *)self parameters];
  [v2 releaseMS];
  v4 = v3;

  return v4;
}

- (void)setReleaseTime:(float)a3
{
  v5 = [(AXMOscillatorADSREnvelope *)self parameters];
  *&v4 = a3;
  [v5 setReleaseMS:v4];
}

- (AXMSynth)parentSynth
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSynth);

  return WeakRetained;
}

@end