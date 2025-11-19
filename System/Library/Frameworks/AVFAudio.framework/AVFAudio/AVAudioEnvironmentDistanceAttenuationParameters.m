@interface AVAudioEnvironmentDistanceAttenuationParameters
- (AVAudioEnvironmentDistanceAttenuationParameters)initWithEnvironment:(void *)a3;
- (void)dealloc;
- (void)setDistanceAttenuationModel:(AVAudioEnvironmentDistanceAttenuationModel)distanceAttenuationModel;
- (void)setMaximumDistance:(float)maximumDistance;
- (void)setReferenceDistance:(float)referenceDistance;
- (void)setRolloffFactor:(float)rolloffFactor;
@end

@implementation AVAudioEnvironmentDistanceAttenuationParameters

- (void)dealloc
{
  self->_impl = 0;
  v2.receiver = self;
  v2.super_class = AVAudioEnvironmentDistanceAttenuationParameters;
  [(AVAudioEnvironmentDistanceAttenuationParameters *)&v2 dealloc];
}

- (void)setRolloffFactor:(float)rolloffFactor
{
  impl = self->_impl;
  if (impl[87] != rolloffFactor)
  {
    impl[87] = rolloffFactor;
    AVAudioEnvironmentNodeImpl::SetMixerDistanceParameters(impl);
  }
}

- (void)setReferenceDistance:(float)referenceDistance
{
  impl = self->_impl;
  if (impl[86] != referenceDistance)
  {
    impl[86] = referenceDistance;
    AVAudioEnvironmentNodeImpl::SetMixerDistanceParameters(impl);
  }
}

- (void)setMaximumDistance:(float)maximumDistance
{
  impl = self->_impl;
  if (impl[85] != maximumDistance)
  {
    impl[85] = maximumDistance;
    AVAudioEnvironmentNodeImpl::SetMixerDistanceParameters(impl);
  }
}

- (void)setDistanceAttenuationModel:(AVAudioEnvironmentDistanceAttenuationModel)distanceAttenuationModel
{
  impl = self->_impl;
  v9 = distanceAttenuationModel;
  if (impl[84] != distanceAttenuationModel && (distanceAttenuationModel - 1) <= 2)
  {
    impl[84] = distanceAttenuationModel;
    v5 = *(impl + 38);
    if (v5 != (impl + 78))
    {
      do
      {
        (*(*impl + 144))(impl, 3013, 1, *(v5 + 10), &v9, 4);
        v6 = v5[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != (impl + 78));
    }

    AVAudioEnvironmentNodeImpl::SetMixerDistanceParameters(impl);
  }
}

- (AVAudioEnvironmentDistanceAttenuationParameters)initWithEnvironment:(void *)a3
{
  v5.receiver = self;
  v5.super_class = AVAudioEnvironmentDistanceAttenuationParameters;
  result = [(AVAudioEnvironmentDistanceAttenuationParameters *)&v5 init];
  if (result)
  {
    result->_impl = a3;
  }

  return result;
}

@end