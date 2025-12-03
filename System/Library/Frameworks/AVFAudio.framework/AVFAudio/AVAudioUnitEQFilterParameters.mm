@interface AVAudioUnitEQFilterParameters
- (AVAudioUnitEQFilterParameters)initWithImpl:(AVAudioUnitEQFilterParametersImpl *)impl;
- (AVAudioUnitEQFilterType)filterType;
- (BOOL)bypass;
- (float)bandwidth;
- (float)frequency;
- (float)gain;
- (void)dealloc;
- (void)setBandwidth:(float)bandwidth;
- (void)setFilterType:(AVAudioUnitEQFilterType)filterType;
- (void)setFrequency:(float)frequency;
- (void)setGain:(float)gain;
@end

@implementation AVAudioUnitEQFilterParameters

- (BOOL)bypass
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = (*(*self->_impl + 88))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (float)gain
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = (*(*self->_impl + 80))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setGain:(float)gain
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 40))(self->_impl, gain);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (float)bandwidth
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = (*(*self->_impl + 72))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setBandwidth:(float)bandwidth
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 32))(self->_impl, bandwidth);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (float)frequency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = (*(*self->_impl + 64))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setFrequency:(float)frequency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 24))(self->_impl, frequency);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (AVAudioUnitEQFilterType)filterType
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = (*(*self->_impl + 56))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setFilterType:(AVAudioUnitEQFilterType)filterType
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 16))(self->_impl, filterType);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  self->_impl = 0;
  v4.receiver = self;
  v4.super_class = AVAudioUnitEQFilterParameters;
  [(AVAudioUnitEQFilterParameters *)&v4 dealloc];
}

- (AVAudioUnitEQFilterParameters)initWithImpl:(AVAudioUnitEQFilterParametersImpl *)impl
{
  v5.receiver = self;
  v5.super_class = AVAudioUnitEQFilterParameters;
  result = [(AVAudioUnitEQFilterParameters *)&v5 init];
  if (result)
  {
    result->_impl = impl;
  }

  return result;
}

@end