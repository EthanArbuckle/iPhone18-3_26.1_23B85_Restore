@interface AXMSynthEnvelopeParameters
+ (id)defaultParameters;
- (AXMSynthMainParameters)mainParameters;
- (float)attackLevel;
- (float)attackMS;
- (float)decayMS;
- (float)releaseMS;
- (float)sampleRate;
- (float)sustainLevel;
- (void)addSupportedParameters;
- (void)setAttackLevel:(float)level;
- (void)setAttackTime:(float)time;
- (void)setDecayTime:(float)time;
- (void)setReleaseTime:(float)time;
- (void)setSustainLevel:(float)level;
@end

@implementation AXMSynthEnvelopeParameters

- (void)addSupportedParameters
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"kSynthParameterEnvelopeAttackTime";
  v5[1] = @"kSynthParameterEnvelopeAttackLevel";
  v5[2] = @"kSynthParameterEnvelopeDecayTime";
  v5[3] = @"kSynthParameterEnvelopeSustainLevel";
  v5[4] = @"kSynthParameterEnvelopeReleaseTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  supportedParameters = [(AXMSynthObservableParameters *)self supportedParameters];
  [supportedParameters addObjectsFromArray:v3];
}

+ (id)defaultParameters
{
  v2 = objc_alloc_init(AXMSynthEnvelopeParameters);
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1A0 forParameter:@"kSynthParameterEnvelopeAttackTime"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1B0 forParameter:@"kSynthParameterEnvelopeAttackLevel"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1C0 forParameter:@"kSynthParameterEnvelopeDecayTime"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1D0 forParameter:@"kSynthParameterEnvelopeSustainLevel"];
  [(AXMSynthObservableParameters *)v2 setValue:&unk_1F240B1C0 forParameter:@"kSynthParameterEnvelopeReleaseTime"];

  return v2;
}

- (float)sampleRate
{
  mainParameters = [(AXMSynthEnvelopeParameters *)self mainParameters];
  [mainParameters sampleRate];
  v4 = v3;

  return v4;
}

- (float)attackMS
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterEnvelopeAttackTime"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setAttackTime:(float)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)attackLevel
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterEnvelopeAttackLevel"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setAttackLevel:(float)level
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)decayMS
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterEnvelopeDecayTime"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setDecayTime:(float)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)sustainLevel
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterEnvelopeSustainLevel"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setSustainLevel:(float)level
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (float)releaseMS
{
  v2 = [(AXMSynthObservableParameters *)self getValueForParameter:@"kSynthParameterEnvelopeReleaseTime"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setReleaseTime:(float)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [AXMSynthObservableParameters setValue:"setValue:forParameter:" forParameter:?];
}

- (AXMSynthMainParameters)mainParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_mainParameters);

  return WeakRetained;
}

@end