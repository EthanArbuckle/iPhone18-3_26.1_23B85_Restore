@interface PHASEMixerDefinition
- (PHASEMixerDefinition)init;
- (id)initInternal;
- (void)setGain:(double)gain;
@end

@implementation PHASEMixerDefinition

- (PHASEMixerDefinition)init
{
  [(PHASEMixerDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = PHASEMixerDefinition;
  v2 = [(PHASEDefinition *)&v7 initInternal];
  v3 = v2;
  if (v2)
  {
    v2[2] = 0x3FF0000000000000;
    v4 = v2[3];
    v2[3] = 0;

    v5 = v3;
  }

  return v3;
}

- (void)setGain:(double)gain
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_gain = PHASEGetPropertyBounded<double>(v8, v7, gain, 0.0, 1.0);
}

@end