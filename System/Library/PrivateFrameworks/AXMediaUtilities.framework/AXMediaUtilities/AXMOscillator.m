@interface AXMOscillator
- (AXMOscillator)fmTarget;
- (AXMOscillator)initWithDictionary:(id)a3;
- (AXMOscillator)initWithParameters:(id)a3 parentSynth:(id)a4;
- (AXMSynth)parentSynth;
- (BOOL)isBypassed;
- (NSArray)fmOperatorIdentifiers;
- (NSArray)fmOperators;
- (NSString)description;
- (NSString)displayName;
- (NSString)fmTargetIdentifier;
- (NSString)identifier;
- (double)getNextSample;
- (float)baseFrequency;
- (float)fmRootFrequencyRatio;
- (float)frequencyRatio;
- (float)gain;
- (float)sampleRate;
- (id)dictionaryRepresentation;
- (int64_t)detuning;
- (int64_t)waveform;
- (void)dealloc;
- (void)routeTo:(id)a3;
- (void)setDetuning:(int64_t)a3;
- (void)setFrequencyRatio:(float)a3;
- (void)setGain:(float)a3;
- (void)setIdentifier:(id)a3;
- (void)setIsBypassed:(BOOL)a3;
- (void)setWaveform:(int64_t)a3;
- (void)start;
- (void)updateCache;
@end

@implementation AXMOscillator

- (void)updateCache
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(AXMOscillator *)self fmOperators];
  cachedFMOperators = self->_cachedFMOperators;
  self->_cachedFMOperators = v3;

  [(AXMOscillator *)self sampleRate];
  self->_cachedSampleRate = v5;
  [(AXMOscillator *)self gain];
  self->_cachedGain = v6;
  [(AXMOscillator *)self baseFrequency];
  self->_cachedBaseFrequency = v7;
  [(AXMOscillator *)self frequencyRatio];
  self->_cachedFrequencyRatio = v8;
  self->_cachedWaveform = [(AXMOscillator *)self waveform];
  self->_cachedIsBypassed = [(AXMOscillator *)self isBypassed];
  v9 = [(AXMOscillator *)self envelope];
  self->_cachedEnvelopeIsBypassed = [v9 isBypassed];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = self->_cachedFMOperators;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v14 + 1) + 8 * v13++) updateCache];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (AXMOscillator)initWithParameters:(id)a3 parentSynth:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = AXMOscillator;
  v9 = [(AXMOscillator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_parentSynth, v8);
    objc_storeStrong(&v10->_parameters, a3);
    v10->_sampleBuffer = malloc_type_malloc(0x8000uLL, 0x100004000313F17uLL);
    v11 = [AXMOscillatorADSREnvelope alloc];
    v12 = [v7 envelopeParameters];
    v13 = [(AXMOscillatorADSREnvelope *)v11 initWithParameters:v12 parentSynth:v8];
    envelope = v10->_envelope;
    v10->_envelope = v13;
  }

  return v10;
}

- (AXMOscillator)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kSynthParameterDetuning"];
  -[AXMOscillator setDetuning:](self, "setDetuning:", [v5 intValue]);

  v6 = [v4 objectForKeyedSubscript:@"kSynthParameterLowpassCutoff"];
  [v6 floatValue];
  [(AXMOscillator *)self setLowpassCutoff:?];

  v7 = [v4 objectForKeyedSubscript:@"kSynthParameterFrequencyRatio"];
  [v7 floatValue];
  [(AXMOscillator *)self setFrequencyRatio:?];

  v8 = [v4 objectForKeyedSubscript:@"kSynthParameterWaveform"];
  -[AXMOscillator setWaveform:](self, "setWaveform:", [v8 intValue]);

  v9 = [v4 objectForKeyedSubscript:@"kSynthParameterIdentifier"];
  v10 = [v9 stringValue];
  [(AXMOscillator *)self setIdentifier:v10];

  v11 = [v4 objectForKeyedSubscript:@"kSynthParameterBypass"];
  -[AXMOscillator setIsBypassed:](self, "setIsBypassed:", [v11 BOOLValue]);

  v12 = [v4 objectForKeyedSubscript:@"kSynthParameterADSREnvelope"];
  v13 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeAttackTime"];
  [v13 floatValue];
  v15 = v14;
  v16 = [(AXMOscillator *)self envelope];
  LODWORD(v17) = v15;
  [v16 setAttackMS:v17];

  v18 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeAttackLevel"];
  [v18 floatValue];
  v20 = v19;
  v21 = [(AXMOscillator *)self envelope];
  LODWORD(v22) = v20;
  [v21 setAttackLevel:v22];

  v23 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeReleaseTime"];
  [v23 floatValue];
  v25 = v24;
  v26 = [(AXMOscillator *)self envelope];
  LODWORD(v27) = v25;
  [v26 setReleaseMS:v27];

  v28 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeSustainLevel"];
  [v28 floatValue];
  v30 = v29;
  v31 = [(AXMOscillator *)self envelope];
  LODWORD(v32) = v30;
  [v31 setSustainLevel:v32];

  v33 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeDecayTime"];
  [v33 floatValue];
  v35 = v34;
  v36 = [(AXMOscillator *)self envelope];
  LODWORD(v37) = v35;
  [v36 setDecayMS:v37];

  v38 = [v4 objectForKeyedSubscript:@"kSynthParameterFMOperatorIdentifiers"];
  if ([v38 count])
  {
    v39 = [(AXMOscillator *)self parentSynth];
    v40 = [v38 firstObject];
    v41 = [v39 oscillatorWithIdentifier:v40];

    [v41 routeTo:self];
  }

  return self;
}

- (id)dictionaryRepresentation
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (void)dealloc
{
  free(self->_sampleBuffer);
  v3.receiver = self;
  v3.super_class = AXMOscillator;
  [(AXMOscillator *)&v3 dealloc];
}

- (void)start
{
  self->_startTime = CFAbsoluteTimeGetCurrent();
  envelope = self->_envelope;

  [(AXMOscillatorADSREnvelope *)envelope activate];
}

- (void)routeTo:(id)a3
{
  v6 = a3;
  v4 = [(AXMOscillator *)self parameters];
  v5 = [v6 parameters];
  [v4 routeTo:v5];
}

- (NSArray)fmOperators
{
  v3 = [(AXMOscillator *)self parentSynth];
  v4 = [(AXMOscillator *)self fmOperatorIdentifiers];
  v5 = [v3 oscillatorsWithIdentifiers:v4];

  return v5;
}

- (AXMOscillator)fmTarget
{
  v3 = [(AXMOscillator *)self parentSynth];
  v4 = [(AXMOscillator *)self fmTargetIdentifier];
  v5 = [v3 oscillatorWithIdentifier:v4];

  return v5;
}

- (double)getNextSample
{
  v33 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (self->_cachedIsBypassed)
  {
    return result;
  }

  v4 = self->_cachedFMOperators;
  v5 = [(NSArray *)v4 count];
  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = *v29;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v28 + 1) + 8 * i) getNextSample];
          v9 = v11 + v9;
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
      v12 = v9;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = 0.0;
  }

  [(AXMOscillator *)self baseFrequency];
  v14 = v13;
  [(AXMOscillator *)self fmRootFrequencyRatio];
  *v16.i32 = v14 * *v16.i32;
  if (v5)
  {
    v17 = *v16.i32 + v12 * 1000.0;
    v18 = v17;
  }

  else
  {
    v18 = *v16.i32;
  }

  cachedSampleRate = self->_cachedSampleRate;
  cachedGain = self->_cachedGain;
  cachedWaveform = self->_cachedWaveform;
  v22 = 0.0;
  if (cachedWaveform > 1)
  {
    if (cachedWaveform != 2)
    {
      if (cachedWaveform != 3)
      {
        if (cachedWaveform == 4)
        {
          v22 = cachedGain * vcvts_n_f32_s32(rand(), 0x1FuLL);
        }

        goto LABEL_32;
      }

      *v16.i64 = self->_currentPhase;
      *v15.i64 = *v16.i64 - trunc(*v16.i64);
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      *v16.i64 = *vbslq_s8(vnegq_f64(v24), v15, v16).i64 * cachedGain;
      goto LABEL_31;
    }

    v16.i64[0] = 1.0;
    if (self->_currentPhase > 0.5)
    {
      *v16.i64 = 0.0;
    }

LABEL_30:
    *v16.i64 = *v16.i64 * cachedGain;
LABEL_31:
    v22 = *v16.i64;
    goto LABEL_32;
  }

  if (!cachedWaveform)
  {
    *v16.i64 = sin(self->_currentPhase * 6.28318531);
    goto LABEL_30;
  }

  if (cachedWaveform == 1)
  {
    *v16.i64 = self->_currentPhase;
    *v15.i64 = *v16.i64 - trunc(*v16.i64);
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    *v16.i64 = fabs(*vbslq_s8(vnegq_f64(v23), v15, v16).i64 * 2.0 + -1.0) * 2.0 + -1.0;
    goto LABEL_30;
  }

LABEL_32:
  v25 = 1.0 / cachedSampleRate * v18;
  v26 = self->_currentPhase + v25;
  if (v26 > 1.0)
  {
    v26 = v26 + -1.0;
  }

  self->_currentPhase = v26;
  if (!self->_cachedEnvelopeIsBypassed)
  {
    [(AXMOscillatorADSREnvelope *)self->_envelope getNextSample];
    v22 = v27 * v22;
  }

  return v22;
}

- (float)fmRootFrequencyRatio
{
  [(AXMOscillator *)self frequencyRatio];
  v4 = v3;
  v5 = [(AXMOscillator *)self parameters];
  v6 = [v5 fmTargetParameters];

  if (v6)
  {
    do
    {
      [v6 frequencyRatio];
      v8 = v7;
      v9 = [v6 fmTargetParameters];
      v4 = v4 * v8;

      v6 = v9;
    }

    while (v9);
  }

  return v4;
}

- (NSString)identifier
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 identifier];

  return v3;
}

- (void)setIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(AXMOscillator *)self parameters];
  [v4 setIdentifier:v5];
}

- (int64_t)waveform
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 waveform];

  return v3;
}

- (void)setWaveform:(int64_t)a3
{
  v4 = [(AXMOscillator *)self parameters];
  [v4 setWaveform:a3];
}

- (float)sampleRate
{
  v2 = [(AXMOscillator *)self parameters];
  [v2 sampleRate];
  v4 = v3;

  return v4;
}

- (float)baseFrequency
{
  v2 = [(AXMOscillator *)self parameters];
  [v2 baseFrequency];
  v4 = v3;

  return v4;
}

- (float)frequencyRatio
{
  v2 = [(AXMOscillator *)self parameters];
  [v2 frequencyRatio];
  v4 = v3;

  return v4;
}

- (void)setFrequencyRatio:(float)a3
{
  v5 = [(AXMOscillator *)self parameters];
  *&v4 = a3;
  [v5 setFrequencyRatio:v4];
}

- (NSArray)fmOperatorIdentifiers
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 fmOperatorIdentifiers];

  return v3;
}

- (NSString)fmTargetIdentifier
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 fmTargetIdentifier];

  return v3;
}

- (float)gain
{
  v2 = [(AXMOscillator *)self parameters];
  [v2 gain];
  v4 = v3;

  return v4;
}

- (void)setGain:(float)a3
{
  v5 = [(AXMOscillator *)self parameters];
  *&v4 = a3;
  [v5 setGain:v4];
}

- (int64_t)detuning
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 detuning];

  return v3;
}

- (void)setDetuning:(int64_t)a3
{
  v4 = [(AXMOscillator *)self parameters];
  [v4 setDetuning:a3];
}

- (BOOL)isBypassed
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 isBypassed];

  return v3;
}

- (void)setIsBypassed:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXMOscillator *)self parameters];
  [v4 setIsBypassed:v3];
}

- (NSString)displayName
{
  v2 = [(AXMOscillator *)self parameters];
  v3 = [v2 displayName];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXMOscillator *)self displayName];
  v6 = [v3 stringWithFormat:@"<%@ %p name=%@>", v4, self, v5];

  return v6;
}

- (AXMSynth)parentSynth
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSynth);

  return WeakRetained;
}

@end