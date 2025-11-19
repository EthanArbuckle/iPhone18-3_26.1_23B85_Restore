@interface AVAudioMixerNode
- (AVAudioNodeBus)nextAvailableInputBus;
- (float)outputVolume;
- (void)didAttachToEngine:(id)a3;
- (void)inputConnected:(unint64_t)a3;
- (void)setInputPan:(float)a3 bus:(unint64_t)a4;
- (void)setInputVolume:(float)a3 bus:(unint64_t)a4;
- (void)setOutputVolume:(float)outputVolume;
@end

@implementation AVAudioMixerNode

- (void)didAttachToEngine:(id)a3
{
  v5 = [a3 implementation];
  impl = self->super._impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (v5 + 112));
  v7.receiver = self;
  v7.super_class = AVAudioMixerNode;
  [(AVAudioNode *)&v7 didAttachToEngine:a3];
  (*(*self->super._impl + 128))(self->super._impl, 0, 2, 0, 1.0);
  std::recursive_mutex::unlock((impl + 96));
  std::recursive_mutex::unlock((v5 + 112));
}

- (AVAudioNodeBus)nextAvailableInputBus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super._impl);
  impl = self->super._impl;
  v4 = impl[4];
  if (v4)
  {
    v5 = 0;
    v6 = impl[3];
    while (((*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) != 0)
    {
      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  return v5;
}

- (void)inputConnected:(unint64_t)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super._impl);
  (*(*self->super._impl + 128))(self->super._impl, 0, 1, a3, 1.0);
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

- (void)setInputPan:(float)a3 bus:(unint64_t)a4
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super._impl);
  (*(*self->super._impl + 128))(self->super._impl, 2, 1, a4, a3);
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

- (void)setInputVolume:(float)a3 bus:(unint64_t)a4
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super._impl);
  (*(*self->super._impl + 128))(self->super._impl, 0, 1, a4, a3);
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

- (float)outputVolume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super._impl);
  v5 = 0.0;
  (*(*self->super._impl + 136))(self->super._impl, 0, 2, 0, &v5);
  v3 = v5;
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v3;
}

- (void)setOutputVolume:(float)outputVolume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super._impl);
  (*(*self->super._impl + 128))(self->super._impl, 0, 2, 0, outputVolume);
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

@end