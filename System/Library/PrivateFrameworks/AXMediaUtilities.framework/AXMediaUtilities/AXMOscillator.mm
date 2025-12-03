@interface AXMOscillator
- (AXMOscillator)fmTarget;
- (AXMOscillator)initWithDictionary:(id)dictionary;
- (AXMOscillator)initWithParameters:(id)parameters parentSynth:(id)synth;
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
- (void)routeTo:(id)to;
- (void)setDetuning:(int64_t)detuning;
- (void)setFrequencyRatio:(float)ratio;
- (void)setGain:(float)gain;
- (void)setIdentifier:(id)identifier;
- (void)setIsBypassed:(BOOL)bypassed;
- (void)setWaveform:(int64_t)waveform;
- (void)start;
- (void)updateCache;
@end

@implementation AXMOscillator

- (void)updateCache
{
  v19 = *MEMORY[0x1E69E9840];
  fmOperators = [(AXMOscillator *)self fmOperators];
  cachedFMOperators = self->_cachedFMOperators;
  self->_cachedFMOperators = fmOperators;

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
  envelope = [(AXMOscillator *)self envelope];
  self->_cachedEnvelopeIsBypassed = [envelope isBypassed];

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

- (AXMOscillator)initWithParameters:(id)parameters parentSynth:(id)synth
{
  parametersCopy = parameters;
  synthCopy = synth;
  v16.receiver = self;
  v16.super_class = AXMOscillator;
  v9 = [(AXMOscillator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_parentSynth, synthCopy);
    objc_storeStrong(&v10->_parameters, parameters);
    v10->_sampleBuffer = malloc_type_malloc(0x8000uLL, 0x100004000313F17uLL);
    v11 = [AXMOscillatorADSREnvelope alloc];
    envelopeParameters = [parametersCopy envelopeParameters];
    v13 = [(AXMOscillatorADSREnvelope *)v11 initWithParameters:envelopeParameters parentSynth:synthCopy];
    envelope = v10->_envelope;
    v10->_envelope = v13;
  }

  return v10;
}

- (AXMOscillator)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterDetuning"];
  -[AXMOscillator setDetuning:](self, "setDetuning:", [v5 intValue]);

  v6 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterLowpassCutoff"];
  [v6 floatValue];
  [(AXMOscillator *)self setLowpassCutoff:?];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterFrequencyRatio"];
  [v7 floatValue];
  [(AXMOscillator *)self setFrequencyRatio:?];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterWaveform"];
  -[AXMOscillator setWaveform:](self, "setWaveform:", [v8 intValue]);

  v9 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterIdentifier"];
  stringValue = [v9 stringValue];
  [(AXMOscillator *)self setIdentifier:stringValue];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterBypass"];
  -[AXMOscillator setIsBypassed:](self, "setIsBypassed:", [v11 BOOLValue]);

  v12 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterADSREnvelope"];
  v13 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeAttackTime"];
  [v13 floatValue];
  v15 = v14;
  envelope = [(AXMOscillator *)self envelope];
  LODWORD(v17) = v15;
  [envelope setAttackMS:v17];

  v18 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeAttackLevel"];
  [v18 floatValue];
  v20 = v19;
  envelope2 = [(AXMOscillator *)self envelope];
  LODWORD(v22) = v20;
  [envelope2 setAttackLevel:v22];

  v23 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeReleaseTime"];
  [v23 floatValue];
  v25 = v24;
  envelope3 = [(AXMOscillator *)self envelope];
  LODWORD(v27) = v25;
  [envelope3 setReleaseMS:v27];

  v28 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeSustainLevel"];
  [v28 floatValue];
  v30 = v29;
  envelope4 = [(AXMOscillator *)self envelope];
  LODWORD(v32) = v30;
  [envelope4 setSustainLevel:v32];

  v33 = [v12 objectForKeyedSubscript:@"kSynthParameterEnvelopeDecayTime"];
  [v33 floatValue];
  v35 = v34;
  envelope5 = [(AXMOscillator *)self envelope];
  LODWORD(v37) = v35;
  [envelope5 setDecayMS:v37];

  v38 = [dictionaryCopy objectForKeyedSubscript:@"kSynthParameterFMOperatorIdentifiers"];
  if ([v38 count])
  {
    parentSynth = [(AXMOscillator *)self parentSynth];
    firstObject = [v38 firstObject];
    v41 = [parentSynth oscillatorWithIdentifier:firstObject];

    [v41 routeTo:self];
  }

  return self;
}

- (id)dictionaryRepresentation
{
  parameters = [(AXMOscillator *)self parameters];
  dictionaryRepresentation = [parameters dictionaryRepresentation];

  return dictionaryRepresentation;
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

- (void)routeTo:(id)to
{
  toCopy = to;
  parameters = [(AXMOscillator *)self parameters];
  parameters2 = [toCopy parameters];
  [parameters routeTo:parameters2];
}

- (NSArray)fmOperators
{
  parentSynth = [(AXMOscillator *)self parentSynth];
  fmOperatorIdentifiers = [(AXMOscillator *)self fmOperatorIdentifiers];
  v5 = [parentSynth oscillatorsWithIdentifiers:fmOperatorIdentifiers];

  return v5;
}

- (AXMOscillator)fmTarget
{
  parentSynth = [(AXMOscillator *)self parentSynth];
  fmTargetIdentifier = [(AXMOscillator *)self fmTargetIdentifier];
  v5 = [parentSynth oscillatorWithIdentifier:fmTargetIdentifier];

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
  parameters = [(AXMOscillator *)self parameters];
  fmTargetParameters = [parameters fmTargetParameters];

  if (fmTargetParameters)
  {
    do
    {
      [fmTargetParameters frequencyRatio];
      v8 = v7;
      v6FmTargetParameters = [fmTargetParameters fmTargetParameters];
      v4 = v4 * v8;

      fmTargetParameters = v6FmTargetParameters;
    }

    while (v6FmTargetParameters);
  }

  return v4;
}

- (NSString)identifier
{
  parameters = [(AXMOscillator *)self parameters];
  identifier = [parameters identifier];

  return identifier;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  parameters = [(AXMOscillator *)self parameters];
  [parameters setIdentifier:identifierCopy];
}

- (int64_t)waveform
{
  parameters = [(AXMOscillator *)self parameters];
  waveform = [parameters waveform];

  return waveform;
}

- (void)setWaveform:(int64_t)waveform
{
  parameters = [(AXMOscillator *)self parameters];
  [parameters setWaveform:waveform];
}

- (float)sampleRate
{
  parameters = [(AXMOscillator *)self parameters];
  [parameters sampleRate];
  v4 = v3;

  return v4;
}

- (float)baseFrequency
{
  parameters = [(AXMOscillator *)self parameters];
  [parameters baseFrequency];
  v4 = v3;

  return v4;
}

- (float)frequencyRatio
{
  parameters = [(AXMOscillator *)self parameters];
  [parameters frequencyRatio];
  v4 = v3;

  return v4;
}

- (void)setFrequencyRatio:(float)ratio
{
  parameters = [(AXMOscillator *)self parameters];
  *&v4 = ratio;
  [parameters setFrequencyRatio:v4];
}

- (NSArray)fmOperatorIdentifiers
{
  parameters = [(AXMOscillator *)self parameters];
  fmOperatorIdentifiers = [parameters fmOperatorIdentifiers];

  return fmOperatorIdentifiers;
}

- (NSString)fmTargetIdentifier
{
  parameters = [(AXMOscillator *)self parameters];
  fmTargetIdentifier = [parameters fmTargetIdentifier];

  return fmTargetIdentifier;
}

- (float)gain
{
  parameters = [(AXMOscillator *)self parameters];
  [parameters gain];
  v4 = v3;

  return v4;
}

- (void)setGain:(float)gain
{
  parameters = [(AXMOscillator *)self parameters];
  *&v4 = gain;
  [parameters setGain:v4];
}

- (int64_t)detuning
{
  parameters = [(AXMOscillator *)self parameters];
  detuning = [parameters detuning];

  return detuning;
}

- (void)setDetuning:(int64_t)detuning
{
  parameters = [(AXMOscillator *)self parameters];
  [parameters setDetuning:detuning];
}

- (BOOL)isBypassed
{
  parameters = [(AXMOscillator *)self parameters];
  isBypassed = [parameters isBypassed];

  return isBypassed;
}

- (void)setIsBypassed:(BOOL)bypassed
{
  bypassedCopy = bypassed;
  parameters = [(AXMOscillator *)self parameters];
  [parameters setIsBypassed:bypassedCopy];
}

- (NSString)displayName
{
  parameters = [(AXMOscillator *)self parameters];
  displayName = [parameters displayName];

  return displayName;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayName = [(AXMOscillator *)self displayName];
  v6 = [v3 stringWithFormat:@"<%@ %p name=%@>", v4, self, displayName];

  return v6;
}

- (AXMSynth)parentSynth
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSynth);

  return WeakRetained;
}

@end