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
- (void)addFmOperatorIdentifier:(id)a3;
- (void)addSupportedParameters;
- (void)removeFmOperatorIdentifier:(id)a3;
- (void)routeTo:(id)a3;
- (void)setBaseFrequency:(float)a3;
- (void)setDetuning:(int64_t)a3;
- (void)setFrequencyRatio:(float)a3;
- (void)setGain:(float)a3;
- (void)setIsBypassed:(BOOL)a3;
- (void)setWaveform:(int64_t)a3;
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

    v5 = [(AXMSynthOscillatorParameters *)v2 mainParameters];
    [(AXMSynthEnvelopeParameters *)v2->_envelopeParameters setMainParameters:v5];
  }

  return v2;
}

- (void)addFmOperatorIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterFMOperatorIdentifiers"];
  if (([v4 containsObject:v9] & 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:v9];
    [(AXMSynthObservableParameters *)self setValue:v5 forParameter:@"kSynthParameterFMOperatorIdentifiers"];
    v6 = [(AXMSynthOscillatorParameters *)self mainParameters];
    v7 = [v6 oscillatorParametersWithIdentifier:v9];

    v8 = [(AXMSynthOscillatorParameters *)self identifier];
    [v7 setValue:v8 forParameter:@"kSynthParameterFMTargetIdentifier"];
  }
}

- (void)removeFmOperatorIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterFMOperatorIdentifiers"];
  if ([v4 containsObject:v9])
  {
    v5 = [v4 mutableCopy];
    [v5 removeObject:v9];
    v6 = [v5 copy];
    [(AXMSynthObservableParameters *)self setValue:v6 forParameter:@"kSynthParameterFMOperatorIdentifiers"];

    v7 = [(AXMSynthOscillatorParameters *)self mainParameters];
    v8 = [v7 oscillatorParametersWithIdentifier:v9];

    [v8 setValue:0 forParameter:@"kSynthParameterFMTargetIdentifier"];
  }
}

- (AXMSynthOscillatorParameters)fmTargetParameters
{
  v3 = [(AXMSynthOscillatorParameters *)self fmTargetIdentifier];

  if (v3)
  {
    v4 = [(AXMSynthOscillatorParameters *)self mainParameters];
    v5 = [(AXMSynthOscillatorParameters *)self fmTargetIdentifier];
    v6 = [v4 oscillatorParametersWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)routeTo:(id)a3
{
  v7 = a3;
  v4 = [(AXMSynthOscillatorParameters *)self fmTargetParameters];
  v5 = [(AXMSynthOscillatorParameters *)self identifier];
  [v4 removeFmOperatorIdentifier:v5];

  v6 = [(AXMSynthOscillatorParameters *)self identifier];
  [v7 addFmOperatorIdentifier:v6];
}

- (NSString)displayName
{
  v3 = [(AXMSynthOscillatorParameters *)self fmTargetIdentifier];
  v4 = @"Operator";
  if (!v3)
  {
    v4 = @"Oscillator";
  }

  v5 = v4;

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(AXMSynthOscillatorParameters *)self identifier];
  v8 = [v6 stringWithFormat:@"%@ %@", v5, v7];

  return v8;
}

- (int64_t)waveform
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterWaveform"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setWaveform:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)sampleRate
{
  v2 = [(AXMSynthOscillatorParameters *)self mainParameters];
  v3 = [v2 getValueForParameter:@"kSynthParameterSampleRate"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)baseFrequency
{
  v2 = [(AXMSynthOscillatorParameters *)self mainParameters];
  v3 = [v2 getValueForParameter:@"kSynthParameterBaseFrequency"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setBaseFrequency:(float)a3
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

- (void)setFrequencyRatio:(float)a3
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

- (void)setGain:(float)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (int64_t)detuning
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterDetuning"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setDetuning:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (BOOL)isBypassed
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterBypass"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsBypassed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
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
  v4 = [(AXMSynthObservableParameters *)self supportedParameters];
  [v4 addObjectsFromArray:v3];
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
  v5 = [(AXMSynthOscillatorParameters *)self identifier];
  [(AXMSynthOscillatorParameters *)self gain];
  v7 = v6;
  [(AXMSynthOscillatorParameters *)self baseFrequency];
  v9 = v8;
  [(AXMSynthOscillatorParameters *)self frequencyRatio];
  v11 = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMSynthOscillatorParameters waveform](self, "waveform")}];
  v13 = [(AXMSynthOscillatorParameters *)self isBypassed];
  v14 = &stru_1F23EA908;
  if (v13)
  {
    v14 = @"bypassed";
  }

  v15 = [v3 stringWithFormat:@"<%@ %p id=%@ gain=%.2f frq=%.1f wf=%@ %@>", v4, self, v5, v7, (v9 * v11), v12, v14];

  return v15;
}

- (AXMSynthMainParameters)mainParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_mainParameters);

  return WeakRetained;
}

@end