@interface PHASEWaterProcedureNodeDefinition
- (PHASEWaterProcedureNodeDefinition)init;
- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)definition maxPolyphony:(int)polyphony voiceStealingType:(int64_t)type;
- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)definition maxPolyphony:(int)polyphony voiceStealingType:(int64_t)type identifier:(id)identifier;
- (void)setAverageDropDiameter:(double)diameter;
- (void)setBaseFrequencyMultiplier:(double)multiplier;
- (void)setBubbleGain:(double)gain;
- (void)setChirpRiseRate:(double)rate;
- (void)setFallRate:(double)rate;
- (void)setImpulseGain:(double)gain;
- (void)setImpulseGainExponent:(double)exponent;
- (void)setImpulseShape:(double)shape;
- (void)setMaxDropDiameter:(double)diameter;
@end

@implementation PHASEWaterProcedureNodeDefinition

- (PHASEWaterProcedureNodeDefinition)init
{
  [(PHASEWaterProcedureNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)definition maxPolyphony:(int)polyphony voiceStealingType:(int64_t)type identifier:(id)identifier
{
  v8 = *&polyphony;
  definitionCopy = definition;
  identifierCopy = identifier;
  v12 = [(PHASEWaterProcedureNodeDefinition *)self initWithMixerDefinition:definitionCopy maxPolyphony:v8 voiceStealingType:type];
  v13 = v12;
  if (v12)
  {
    [(PHASEDefinition *)v12 setIdentifier:identifierCopy];
  }

  return v13;
}

- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)definition maxPolyphony:(int)polyphony voiceStealingType:(int64_t)type
{
  v17.receiver = self;
  v17.super_class = PHASEWaterProcedureNodeDefinition;
  v5 = [(PHASEProcedureNodeDefinition *)&v17 initInternal:definition maxPolyphony:*&polyphony voiceStealingType:type];
  v6 = v5;
  if (v5)
  {
    v5->_fallRate = 1000.0;
    v5->_averageDropDiameter = 1.0;
    v5->_maxDropDiameter = 5.0;
    v5->_impulseShape = 1.0;
    v5->_impulseGainExponent = 4.0;
    v5->_impulseGain = 1.0;
    v5->_chirpRiseRate = 0.1;
    v5->_baseFrequencyMultiplier = 3.0;
    v5->_bubbleGain = 1.0;
    fallRateMetaParameterDefinition = v5->_fallRateMetaParameterDefinition;
    v5->_fallRateMetaParameterDefinition = 0;

    averageDropDiameterMetaParameterDefinition = v6->_averageDropDiameterMetaParameterDefinition;
    v6->_averageDropDiameterMetaParameterDefinition = 0;

    maxDropDiameterMetaParameterDefinition = v6->_maxDropDiameterMetaParameterDefinition;
    v6->_maxDropDiameterMetaParameterDefinition = 0;

    impulseShapeMetaParameterDefinition = v6->_impulseShapeMetaParameterDefinition;
    v6->_impulseShapeMetaParameterDefinition = 0;

    impulseGainExponentMetaParameterDefinition = v6->_impulseGainExponentMetaParameterDefinition;
    v6->_impulseGainExponentMetaParameterDefinition = 0;

    impulseGainMetaParameterDefinition = v6->_impulseGainMetaParameterDefinition;
    v6->_impulseGainMetaParameterDefinition = 0;

    chirpRiseRateMetaParameterDefinition = v6->_chirpRiseRateMetaParameterDefinition;
    v6->_chirpRiseRateMetaParameterDefinition = 0;

    baseFrequencyMultiplierMetaParameterDefinition = v6->_baseFrequencyMultiplierMetaParameterDefinition;
    v6->_baseFrequencyMultiplierMetaParameterDefinition = 0;

    bubbleGainMetaParameterDefinition = v6->_bubbleGainMetaParameterDefinition;
    v6->_bubbleGainMetaParameterDefinition = 0;
  }

  return v6;
}

- (void)setFallRate:(double)rate
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_fallRate = PHASEGetPropertyBounded<double>(v8, v7, rate, 0.1, 48000.0);
}

- (void)setAverageDropDiameter:(double)diameter
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_averageDropDiameter = PHASEGetPropertyBounded<double>(v8, v7, diameter, 0.1, 5.0);
}

- (void)setMaxDropDiameter:(double)diameter
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_maxDropDiameter = PHASEGetPropertyBounded<double>(v8, v7, diameter, 5.0, 20.0);
}

- (void)setImpulseShape:(double)shape
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_impulseShape = PHASEGetPropertyBounded<double>(v8, v7, shape, 0.1, 10.0);
}

- (void)setImpulseGainExponent:(double)exponent
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_impulseGainExponent = PHASEGetPropertyBounded<double>(v8, v7, exponent, 4.0, 7.0);
}

- (void)setImpulseGain:(double)gain
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_impulseGain = PHASEGetPropertyBounded<double>(v8, v7, gain, 0.0, 1.0);
}

- (void)setChirpRiseRate:(double)rate
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_chirpRiseRate = PHASEGetPropertyBounded<double>(v8, v7, rate, 0.01, 10.0);
}

- (void)setBaseFrequencyMultiplier:(double)multiplier
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_baseFrequencyMultiplier = PHASEGetPropertyBounded<double>(v8, v7, multiplier, 0.1, 10.0);
}

- (void)setBubbleGain:(double)gain
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_bubbleGain = PHASEGetPropertyBounded<double>(v8, v7, gain, 0.0, 1.0);
}

@end