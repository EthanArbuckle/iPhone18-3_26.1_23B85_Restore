@interface AXMSynthOscillatorParameters
+ (id)defaultParameters;
- (AXMSynthMainParameters)mainParameters;
- (AXMSynthOscillatorParameters)fmTargetParameters;
- (AXMSynthOscillatorParameters)init;
- (BOOL)isBypassed;
- (NSString)displayName;
- (float)baseFrequency;
- (float)frequencyRatio;
- (float)gain;
- (float)sampleRate;
- (id)description;
- (int64_t)detuning;
- (int64_t)waveform;
- (void)addFmOperatorIdentifier:(id)identifier;
- (void)addSupportedParameters;
- (void)removeFmOperatorIdentifier:(id)identifier;
- (void)routeTo:(id)to;
- (void)setBaseFrequency:(float)frequency;
- (void)setDetuning:(int64_t)detuning;
- (void)setFrequencyRatio:(float)ratio;
- (void)setGain:(float)gain;
- (void)setIsBypassed:(BOOL)bypassed;
- (void)setWaveform:(int64_t)waveform;
@end

@implementation AXMSynthOscillatorParameters

- (AXMSynthOscillatorParameters)init
{
  v7.receiver = self;
  v7.super_class = AXMSynthOscillatorParameters;
  v2 = [(AXMSynthObservableParameters *)&v7 init];
  if (v2)
  {
    v3 = +[AXMSynthEnvelopeParameters defaultParameters];
    envelopeParameters = v2->_envelopeParameters;
    v2->_envelopeParameters = v3;

    mainParameters = [(AXMSynthOscillatorParameters *)v2 mainParameters];
    [(AXMSynthEnvelopeParameters *)v2->_envelopeParameters setMainParameters:mainParameters];
  }

  return v2;
}

- (void)addFmOperatorIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterFMOperatorIdentifiers"];
  if (([v4 containsObject:identifierCopy] & 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:identifierCopy];
    [(AXMSynthObservableParameters *)self setValue:v5 forParameter:@"kSynthParameterFMOperatorIdentifiers"];
    mainParameters = [(AXMSynthOscillatorParameters *)self mainParameters];
    v7 = [mainParameters oscillatorParametersWithIdentifier:identifierCopy];

    identifier = [(AXMSynthOscillatorParameters *)self identifier];
    [v7 setValue:identifier forParameter:@"kSynthParameterFMTargetIdentifier"];
  }
}

- (void)removeFmOperatorIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterFMOperatorIdentifiers"];
  if ([v4 containsObject:identifierCopy])
  {
    v5 = [v4 mutableCopy];
    [v5 removeObject:identifierCopy];
    v6 = [v5 copy];
    [(AXMSynthObservableParameters *)self setValue:v6 forParameter:@"kSynthParameterFMOperatorIdentifiers"];

    mainParameters = [(AXMSynthOscillatorParameters *)self mainParameters];
    v8 = [mainParameters oscillatorParametersWithIdentifier:identifierCopy];

    [v8 setValue:0 forParameter:@"kSynthParameterFMTargetIdentifier"];
  }
}

- (AXMSynthOscillatorParameters)fmTargetParameters
{
  fmTargetIdentifier = [(AXMSynthOscillatorParameters *)self fmTargetIdentifier];

  if (fmTargetIdentifier)
  {
    mainParameters = [(AXMSynthOscillatorParameters *)self mainParameters];
    fmTargetIdentifier2 = [(AXMSynthOscillatorParameters *)self fmTargetIdentifier];
    v6 = [mainParameters oscillatorParametersWithIdentifier:fmTargetIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)routeTo:(id)to
{
  toCopy = to;
  fmTargetParameters = [(AXMSynthOscillatorParameters *)self fmTargetParameters];
  identifier = [(AXMSynthOscillatorParameters *)self identifier];
  [fmTargetParameters removeFmOperatorIdentifier:identifier];

  identifier2 = [(AXMSynthOscillatorParameters *)self identifier];
  [toCopy addFmOperatorIdentifier:identifier2];
}

- (NSString)displayName
{
  fmTargetIdentifier = [(AXMSynthOscillatorParameters *)self fmTargetIdentifier];
  v4 = @"Operator";
  if (!fmTargetIdentifier)
  {
    v4 = @"Oscillator";
  }

  v5 = v4;

  v6 = MEMORY[0x1E696AEC0];
  identifier = [(AXMSynthOscillatorParameters *)self identifier];
  v8 = [v6 stringWithFormat:@"%@ %@", v5, identifier];

  return v8;
}

- (int64_t)waveform
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterWaveform"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setWaveform:(int64_t)waveform
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:waveform];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)sampleRate
{
  mainParameters = [(AXMSynthOscillatorParameters *)self mainParameters];
  v3 = [mainParameters getValueForParameter:@"kSynthParameterSampleRate"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)baseFrequency
{
  mainParameters = [(AXMSynthOscillatorParameters *)self mainParameters];
  v3 = [mainParameters getValueForParameter:@"kSynthParameterBaseFrequency"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setBaseFrequency:(float)frequency
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)frequencyRatio
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterFrequencyRatio"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setFrequencyRatio:(float)ratio
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)gain
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterGain"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGain:(float)gain
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (int64_t)detuning
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterDetuning"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setDetuning:(int64_t)detuning
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:detuning];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (BOOL)isBypassed
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterBypass"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsBypassed:(BOOL)bypassed
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:bypassed];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (void)addSupportedParameters
{
  v5[10] = *MEMORY[0x1E69E9840];
  v5[0] = @"kSynthParameterIdentifier";
  v5[1] = @"kSynthParameterGain";
  v5[2] = @"kSynthParameterWaveform";
  v5[3] = @"kSynthParameterFrequencyRatio";
  v5[4] = @"kSynthParameterDetuning";
  v5[5] = @"kSynthParameterFMOperatorIdentifiers";
  v5[6] = @"kSynthParameterFMTargetIdentifier";
  v5[7] = @"kSynthParameterBypass";
  v5[8] = @"kSynthParameterADSREnvelope";
  v5[9] = @"kSynthParameterLowpassCutoff";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  supportedParameters = [(AXMSynthObservableParameters *)self supportedParameters];
  [supportedParameters addObjectsFromArray:v3];
}

+ (id)defaultParameters
{
  v2 = objc_alloc_init(AXMSynthOscillatorParameters);
  [(AXMSynthObservableParameters *)v2 setValue:&stru_1F23EA908 forParameter:@"kSynthParameterIdentifier"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1E0 forParameter:@"kSynthParameterGain"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240AA38 forParameter:@"kSynthParameterWaveform"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1F0 forParameter:@"kSynthParameterFrequencyRatio"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240AA50 forParameter:@"kSynthParameterDetuning"];
  [(AXMSynthObservableParameters *)v2 setValue:MEMORY[0x1E695E0F0] forParameter:@"kSynthParameterFMOperatorIdentifiers"];
  [(AXMSynthObservableParameters *)v2 setValue:0 forParameter:@"kSynthParameterFMTargetIdentifier"];
  [(AXMSynthObservableParameters *)v2 setValue:MEMORY[0x1E695E118] forParameter:@"kSynthParameterBypass"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B200 forParameter:@"kSynthParameterLowpassCutoff"];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(AXMSynthOscillatorParameters *)self identifier];
  [(AXMSynthOscillatorParameters *)self gain];
  v7 = v6;
  [(AXMSynthOscillatorParameters *)self baseFrequency];
  v9 = v8;
  [(AXMSynthOscillatorParameters *)self frequencyRatio];
  v11 = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMSynthOscillatorParameters waveform](self, "waveform")}];
  isBypassed = [(AXMSynthOscillatorParameters *)self isBypassed];
  v14 = &stru_1F23EA908;
  if (isBypassed)
  {
    v14 = @"bypassed";
  }

  v15 = [v3 stringWithFormat:@"<%@ %p id=%@ gain=%.2f frq=%.1f wf=%@ %@>", v4, self, identifier, v7, (v9 * v11), v12, v14];

  return v15;
}

- (AXMSynthMainParameters)mainParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_mainParameters);

  return WeakRetained;
}

@end