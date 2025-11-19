@interface AVAudioEnvironmentReverbParameters
- (AVAudioEnvironmentReverbParameters)initWithEnvironment:(void *)a3;
- (AVAudioUnitEQFilterParameters)filterParameters;
- (BOOL)enable;
- (float)level;
- (void)dealloc;
- (void)loadFactoryReverbPreset:(AVAudioUnitReverbPreset)preset;
- (void)setEnable:(BOOL)enable;
- (void)setLevel:(float)level;
@end

@implementation AVAudioEnvironmentReverbParameters

- (void)dealloc
{
  self->_impl = 0;
  v2.receiver = self;
  v2.super_class = AVAudioEnvironmentReverbParameters;
  [(AVAudioEnvironmentReverbParameters *)&v2 dealloc];
}

- (void)loadFactoryReverbPreset:(AVAudioUnitReverbPreset)preset
{
  v3 = preset;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->_impl);
  impl = self->_impl;
  v10 = v3;
  if (v3 <= 0xC)
  {
    (*(*impl + 144))(impl, 10, 0, 0, &v10, 4);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (AVAudioUnitEQFilterParameters)filterParameters
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(self->_impl + 45);
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

- (float)level
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(self->_impl + 93);
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

- (void)setLevel:(float)level
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->_impl);
  impl = self->_impl;
  if (impl[93] != level)
  {
    v6 = 40.0;
    if (level < 40.0)
    {
      v6 = level;
    }

    if (level <= -40.0)
    {
      v6 = -40.0;
    }

    impl[93] = v6;
    (*(*impl + 128))(impl, 9, 0, 0);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    v7 = v8;

    std::recursive_mutex::unlock(v7);
  }
}

- (BOOL)enable
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(self->_impl + 368);
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

- (void)setEnable:(BOOL)enable
{
  v3 = enable;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->_impl);
  impl = self->_impl;
  if (impl[368] != v3)
  {
    impl[368] = v3;
    v10 = v3;
    (*(*impl + 144))(impl, 1005, 0, 0, &v10, 4);
    AVAudioEnvironmentNodeImpl::ResetRenderingFlags(impl);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (AVAudioEnvironmentReverbParameters)initWithEnvironment:(void *)a3
{
  v5.receiver = self;
  v5.super_class = AVAudioEnvironmentReverbParameters;
  result = [(AVAudioEnvironmentReverbParameters *)&v5 init];
  if (result)
  {
    result->_impl = a3;
  }

  return result;
}

@end