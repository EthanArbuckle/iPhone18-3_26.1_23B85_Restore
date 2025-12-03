@interface AXMSynthMainParameters
+ (id)defaultParameters;
- (AXMSynthMainParameters)init;
- (NSArray)allOperatorParameters;
- (NSArray)allOscillatorParameters;
- (float)baseFrequency;
- (float)mainVolume;
- (float)sampleRate;
- (id)description;
- (id)dictionaryRepresentation;
- (id)oscillatorParametersWithIdentifier:(id)identifier;
- (id)oscillatorParametersWithIdentifiers:(id)identifiers;
- (void)addSupportedParameters;
- (void)setBaseFrequency:(float)frequency;
- (void)setMainVolume:(float)volume;
- (void)setSampleRate:(float)rate;
@end

@implementation AXMSynthMainParameters

- (AXMSynthMainParameters)init
{
  v18.receiver = self;
  v18.super_class = AXMSynthMainParameters;
  v2 = [(AXMSynthObservableParameters *)&v18 init];
  if (v2)
  {
    v3 = +[AXMSynthOscillatorParameters defaultParameters];
    mainOsc1Params = v2->_mainOsc1Params;
    v2->_mainOsc1Params = v3;

    v5 = +[AXMSynthOscillatorParameters defaultParameters];
    mainOsc2Params = v2->_mainOsc2Params;
    v2->_mainOsc2Params = v5;

    v7 = +[AXMSynthOscillatorParameters defaultParameters];
    mainOsc3Params = v2->_mainOsc3Params;
    v2->_mainOsc3Params = v7;

    v9 = +[AXMSynthOscillatorParameters defaultParameters];
    fmOperatorAParams = v2->_fmOperatorAParams;
    v2->_fmOperatorAParams = v9;

    v11 = +[AXMSynthOscillatorParameters defaultParameters];
    fmOperatorBParams = v2->_fmOperatorBParams;
    v2->_fmOperatorBParams = v11;

    v13 = +[AXMSynthOscillatorParameters defaultParameters];
    fmOperatorCParams = v2->_fmOperatorCParams;
    v2->_fmOperatorCParams = v13;

    v15 = +[AXMSynthOscillatorParameters defaultParameters];
    fmOperatorDParams = v2->_fmOperatorDParams;
    v2->_fmOperatorDParams = v15;

    [(AXMSynthOscillatorParameters *)v2->_mainOsc1Params setIdentifier:@"1"];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc2Params setIdentifier:@"2"];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc3Params setIdentifier:@"3"];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorAParams setIdentifier:@"A"];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorBParams setIdentifier:@"B"];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorCParams setIdentifier:@"C"];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorDParams setIdentifier:@"D"];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc1Params setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc2Params setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc3Params setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorAParams setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorBParams setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorCParams setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_fmOperatorDParams setMainParameters:v2];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc3Params setGain:0.0];
    [(AXMSynthOscillatorParameters *)v2->_mainOsc2Params setGain:0.0];
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AXMSynthMainParameters;
  dictionaryRepresentation = [(AXMSynthObservableParameters *)&v18 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allOscillatorParameters = [(AXMSynthMainParameters *)self allOscillatorParameters];
  v6 = [allOscillatorParameters countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allOscillatorParameters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        dictionaryRepresentation2 = [v9 dictionaryRepresentation];
        identifier = [v9 identifier];
        [v4 setObject:dictionaryRepresentation2 forKeyedSubscript:identifier];
      }

      v6 = [allOscillatorParameters countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v4 copy];

  return v12;
}

- (NSArray)allOscillatorParameters
{
  v5[3] = *MEMORY[0x1E69E9840];
  mainOsc2Params = self->_mainOsc2Params;
  v5[0] = self->_mainOsc1Params;
  v5[1] = mainOsc2Params;
  v5[2] = self->_mainOsc3Params;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (NSArray)allOperatorParameters
{
  v6[4] = *MEMORY[0x1E69E9840];
  fmOperatorBParams = self->_fmOperatorBParams;
  v6[0] = self->_fmOperatorAParams;
  v6[1] = fmOperatorBParams;
  fmOperatorDParams = self->_fmOperatorDParams;
  v6[2] = self->_fmOperatorCParams;
  v6[3] = fmOperatorDParams;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

- (id)oscillatorParametersWithIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9[0] = identifierCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(AXMSynthMainParameters *)self oscillatorParametersWithIdentifiers:v5];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)oscillatorParametersWithIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isEqualToString:@"1"])
        {
          mainOsc1Params = [(AXMSynthMainParameters *)self mainOsc1Params];
          [array addObject:mainOsc1Params];
        }

        else if ([v9 isEqualToString:@"2"])
        {
          mainOsc1Params = [(AXMSynthMainParameters *)self mainOsc2Params];
          [array addObject:mainOsc1Params];
        }

        else if ([v9 isEqualToString:@"3"])
        {
          mainOsc1Params = [(AXMSynthMainParameters *)self mainOsc3Params];
          [array addObject:mainOsc1Params];
        }

        else if ([v9 isEqualToString:@"A"])
        {
          mainOsc1Params = [(AXMSynthMainParameters *)self fmOperatorAParams];
          [array addObject:mainOsc1Params];
        }

        else if ([v9 isEqualToString:@"B"])
        {
          mainOsc1Params = [(AXMSynthMainParameters *)self fmOperatorBParams];
          [array addObject:mainOsc1Params];
        }

        else if ([v9 isEqualToString:@"C"])
        {
          mainOsc1Params = [(AXMSynthMainParameters *)self fmOperatorCParams];
          [array addObject:mainOsc1Params];
        }

        else
        {
          if (![v9 isEqualToString:@"D"])
          {
            continue;
          }

          mainOsc1Params = [(AXMSynthMainParameters *)self fmOperatorDParams];
          [array addObject:mainOsc1Params];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (float)sampleRate
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterSampleRate"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setSampleRate:(float)rate
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)baseFrequency
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterBaseFrequency"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setBaseFrequency:(float)frequency
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)mainVolume
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterMainVolume"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setMainVolume:(float)volume
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (void)addSupportedParameters
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"kSynthParameterSampleRate";
  v4[1] = @"kSynthParameterMainVolume";
  v4[2] = @"kSynthParameterBaseFrequency";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  [(AXMSynthObservableParameters *)self addSupportedParameters:v3];
}

+ (id)defaultParameters
{
  v2 = objc_alloc_init(AXMSynthMainParameters);
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B330 forParameter:@"kSynthParameterMainVolume"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B340 forParameter:@"kSynthParameterBaseFrequency"];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(AXMSynthMainParameters *)self mainVolume];
  return [v3 stringWithFormat:@"<%@ %p gain=%.2f\n\toscillators:\n\t\t%@\n\t\t%@\n\t\t%@\n\toperators:\n\t\t%@\n\t\t%@\n\t\t%@\n\t\t%@\n>", v4, self, v5, self->_mainOsc1Params, self->_mainOsc2Params, self->_mainOsc3Params, self->_fmOperatorAParams, self->_fmOperatorBParams, self->_fmOperatorCParams, self->_fmOperatorDParams];
}

@end