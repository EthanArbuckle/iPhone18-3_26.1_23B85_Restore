@interface AXMSynth
- (AXMSynth)initWithSampleRate:(double)rate envelope:(id)envelope;
- (double)baseFrequency;
- (double)getNextSample;
- (float)mainVolume;
- (id)oscillatorAndOperator;
- (id)oscillatorWithIdentifier:(id)identifier;
- (id)oscillatorsWithIdentifiers:(id)identifiers;
- (void)bypassAllOperatorsAndOscillators;
- (void)bypassEnvelopes;
- (void)enumerateOscillatorsWithBlock:(id)block;
- (void)loadPreset:(id)preset;
- (void)playNote:(float)note;
- (void)setBaseFrequency:(double)frequency;
- (void)setMainVolume:(float)volume;
- (void)setSampleRate:(double)rate;
@end

@implementation AXMSynth

- (AXMSynth)initWithSampleRate:(double)rate envelope:(id)envelope
{
  envelopeCopy = envelope;
  v23.receiver = self;
  v23.super_class = AXMSynth;
  v8 = [(AXMSynth *)&v23 init];
  if (v8)
  {
    v9 = +[AXMSynthMainParameters defaultParameters];
    parameters = v8->_parameters;
    v8->_parameters = v9;

    *&v11 = rate;
    [(AXMSynthMainParameters *)v8->_parameters setSampleRate:v11];
    objc_storeStrong(&v8->_envelope, envelope);
    v8->_gain = 0.707945784;
    v8->_sampleRate = rate;
    v12 = [AXMOscillator alloc];
    mainOsc1Params = [(AXMSynthMainParameters *)v8->_parameters mainOsc1Params];
    v14 = [(AXMOscillator *)v12 initWithParameters:mainOsc1Params parentSynth:v8];
    mainOscillator = v8->_mainOscillator;
    v8->_mainOscillator = v14;

    v16 = [AXMOscillator alloc];
    fmOperatorAParams = [(AXMSynthMainParameters *)v8->_parameters fmOperatorAParams];
    v18 = [(AXMOscillator *)v16 initWithParameters:fmOperatorAParams parentSynth:v8];
    mainOperator = v8->_mainOperator;
    v8->_mainOperator = v18;

    [(AXMOscillator *)v8->_mainOscillator setIsBypassed:0];
    [(AXMOscillator *)v8->_mainOscillator setWaveform:0];
    [(AXMOscillator *)v8->_mainOperator setIsBypassed:0];
    [(AXMOscillator *)v8->_mainOperator setWaveform:1];
    LODWORD(v20) = 0.5;
    [(AXMOscillator *)v8->_mainOperator setFrequencyRatio:v20];
    LODWORD(v21) = 1061997773;
    [(AXMOscillator *)v8->_mainOperator setGain:v21];
    [(AXMOscillator *)v8->_mainOperator routeTo:v8->_mainOscillator];
    v8->_sampleBuffer = malloc_type_malloc(0x8000uLL, 0x100004000313F17uLL);
  }

  return v8;
}

- (double)baseFrequency
{
  parameters = [(AXMSynth *)self parameters];
  v3 = [parameters getValueForParameter:@"kSynthParameterBaseFrequency"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setBaseFrequency:(double)frequency
{
  parameters = [(AXMSynth *)self parameters];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:frequency];
  [parameters setValue:v4 forParameter:@"kSynthParameterBaseFrequency"];
}

- (void)setSampleRate:(double)rate
{
  parameters = [(AXMSynth *)self parameters];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  [parameters setValue:v4 forParameter:@"kSynthParameterSampleRate"];
}

- (float)mainVolume
{
  parameters = [(AXMSynth *)self parameters];
  v3 = [parameters getValueForParameter:@"kSynthParameterMainVolume"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setMainVolume:(float)volume
{
  parameters = [(AXMSynth *)self parameters];
  *&v4 = volume;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [parameters setValue:v5 forParameter:@"kSynthParameterMainVolume"];
}

- (void)playNote:(float)note
{
  [(AXMSynth *)self setBaseFrequency:note];

  [(AXMSynth *)self enumerateOscillatorsWithBlock:&__block_literal_global_21];
}

- (void)enumerateOscillatorsWithBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  oscillatorAndOperator = [(AXMSynth *)self oscillatorAndOperator];
  v6 = [oscillatorAndOperator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(oscillatorAndOperator);
        }

        blockCopy[2](blockCopy, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [oscillatorAndOperator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)oscillatorAndOperator
{
  v5[2] = *MEMORY[0x1E69E9840];
  mainOperator = self->_mainOperator;
  v5[0] = self->_mainOscillator;
  v5[1] = mainOperator;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (id)oscillatorWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  oscillatorAndOperator = [(AXMSynth *)self oscillatorAndOperator];
  v6 = [oscillatorAndOperator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(oscillatorAndOperator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [oscillatorAndOperator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)oscillatorsWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  [(AXMSynth *)self oscillatorAndOperator];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifiersCopy containsObject:identifier];

        if (v12)
        {
          [array addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [array copy];

  return v13;
}

- (void)bypassAllOperatorsAndOscillators
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  oscillatorAndOperator = [(AXMSynth *)self oscillatorAndOperator];
  v3 = [oscillatorAndOperator countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(oscillatorAndOperator);
        }

        [*(*(&v6 + 1) + 8 * v5++) setIsBypassed:1];
      }

      while (v3 != v5);
      v3 = [oscillatorAndOperator countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)bypassEnvelopes
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  oscillatorAndOperator = [(AXMSynth *)self oscillatorAndOperator];
  v3 = [oscillatorAndOperator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(oscillatorAndOperator);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        envelope = [v6 envelope];
        [envelope setIsBypassed:1];

        [v6 updateCache];
      }

      v3 = [oscillatorAndOperator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (double)getNextSample
{
  [(AXMOscillator *)self->_mainOscillator getNextSample];
  if (v3 >= 1.0)
  {
    return 1.0;
  }

  mainOscillator = self->_mainOscillator;

  [(AXMOscillator *)mainOscillator getNextSample];
  return result;
}

- (void)loadPreset:(id)preset
{
  v24 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  v5 = [presetCopy objectForKeyedSubscript:@"kSynthParameterMainVolume"];
  [v5 floatValue];
  [(AXMSynth *)self setMainVolume:?];

  v6 = [presetCopy objectForKeyedSubscript:@"kSynthParameterBaseFrequency"];
  [v6 floatValue];
  [(AXMSynth *)self setBaseFrequency:v7];

  v8 = [presetCopy objectForKeyedSubscript:@"kSynthParameterSampleRate"];
  [v8 floatValue];
  [(AXMSynth *)self setSampleRate:v9];

  [(AXMSynth *)self bypassAllOperatorsAndOscillators];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [presetCopy objectForKeyedSubscript:{@"kSynthEnabledOscillators", 0}];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 valueForKey:@"kSynthParameterIdentifier"];
        v16 = [(AXMSynth *)self oscillatorWithIdentifier:v15];

        v17 = v16;
        v18 = [v17 initWithDictionary:v14];

        [v18 setIsBypassed:0];
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

@end