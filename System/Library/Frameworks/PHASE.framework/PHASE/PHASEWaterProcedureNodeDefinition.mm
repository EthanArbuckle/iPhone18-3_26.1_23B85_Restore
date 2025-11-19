@interface PHASEWaterProcedureNodeDefinition
- (PHASEWaterProcedureNodeDefinition)init;
- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)a3 maxPolyphony:(int)a4 voiceStealingType:(int64_t)a5;
- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)a3 maxPolyphony:(int)a4 voiceStealingType:(int64_t)a5 identifier:(id)a6;
- (void)setAverageDropDiameter:(double)a3;
- (void)setBaseFrequencyMultiplier:(double)a3;
- (void)setBubbleGain:(double)a3;
- (void)setChirpRiseRate:(double)a3;
- (void)setFallRate:(double)a3;
- (void)setImpulseGain:(double)a3;
- (void)setImpulseGainExponent:(double)a3;
- (void)setImpulseShape:(double)a3;
- (void)setMaxDropDiameter:(double)a3;
@end

@implementation PHASEWaterProcedureNodeDefinition

- (PHASEWaterProcedureNodeDefinition)init
{
  [(PHASEWaterProcedureNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)a3 maxPolyphony:(int)a4 voiceStealingType:(int64_t)a5 identifier:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a6;
  v12 = [(PHASEWaterProcedureNodeDefinition *)self initWithMixerDefinition:v10 maxPolyphony:v8 voiceStealingType:a5];
  v13 = v12;
  if (v12)
  {
    [(PHASEDefinition *)v12 setIdentifier:v11];
  }

  return v13;
}

- (PHASEWaterProcedureNodeDefinition)initWithMixerDefinition:(id)a3 maxPolyphony:(int)a4 voiceStealingType:(int64_t)a5
{
  v17.receiver = self;
  v17.super_class = PHASEWaterProcedureNodeDefinition;
  v5 = [(PHASEProcedureNodeDefinition *)&v17 initInternal:a3 maxPolyphony:*&a4 voiceStealingType:a5];
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

- (void)setFallRate:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_fallRate = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.1, 48000.0);
}

- (void)setAverageDropDiameter:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_averageDropDiameter = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.1, 5.0);
}

- (void)setMaxDropDiameter:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_maxDropDiameter = PHASEGetPropertyBounded<double>(v8, v7, a3, 5.0, 20.0);
}

- (void)setImpulseShape:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_impulseShape = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.1, 10.0);
}

- (void)setImpulseGainExponent:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_impulseGainExponent = PHASEGetPropertyBounded<double>(v8, v7, a3, 4.0, 7.0);
}

- (void)setImpulseGain:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_impulseGain = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.0, 1.0);
}

- (void)setChirpRiseRate:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_chirpRiseRate = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.01, 10.0);
}

- (void)setBaseFrequencyMultiplier:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_baseFrequencyMultiplier = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.1, 10.0);
}

- (void)setBubbleGain:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_bubbleGain = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.0, 1.0);
}

@end