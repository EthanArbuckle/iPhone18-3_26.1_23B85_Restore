@interface AVAudioClock
- (AVAudioClock)init;
- (AVAudioClock)initWithNode:(void *)node;
- (AVAudioTime)currentTime;
- (id)awaitIOCycle:(unsigned int *)cycle;
- (void)dealloc;
@end

@implementation AVAudioClock

- (id)awaitIOCycle:(unsigned int *)cycle
{
  v14 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = *impl;
  if (*impl && (*(v5 + 72) & 1) == 0 && (v6 = *(v5 + 8)) != 0 && *v6 && ([*v6 isInManualRenderingMode] & 1) == 0)
  {
    v11 = impl[49];
    if (!v11)
    {
      operator new();
    }

    *&v13[0] = impl[49];
    v12 = (*(*v11 + 16))(v11);
    BYTE8(v13[0]) = v12;
    *(impl + 400) = 1;
    v7 = (*(*v11 + 64))(v11, 5000000000);
    *(impl + 400) = 0;
    if (v12)
    {
      (*(*v11 + 24))(v11);
    }
  }

  else
  {
    v7 = 0;
  }

  if (cycle)
  {
    v8 = atomic_load(impl + 96);
    *cycle = v8;
  }

  if (v7)
  {
    result = 0;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::load(v13, impl + 16);
    result = [AVAudioTime timeWithAudioTimeStamp:v13 sampleRate:*(impl + 1)];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (AVAudioTime)currentTime
{
  impl = self->_impl;
  memset(v4, 0, sizeof(v4));
  caulk::concurrent::atomic_value<AudioTimeStamp,2,6>::load(v4, impl + 16);
  return [AVAudioTime timeWithAudioTimeStamp:v4 sampleRate:*(impl + 1)];
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v4 = *impl;
    if (*impl)
    {
      v9[0] = AVAudioClockImpl::RenderCallback;
      v9[1] = impl;
      (*(*v4 + 176))(v4, v9);
      v5 = *impl;
      v8[0] = AVAudioClockImpl::StreamFormatListener;
      v8[1] = impl;
      (*(*v5 + 208))(v5, v8);
    }

    v6 = impl[49];
    if (v6)
    {
      (*(*v6 + 8))(v6, a2);
    }

    MEMORY[0x1BFAF57F0](impl, 64);
  }

  v7.receiver = self;
  v7.super_class = AVAudioClock;
  [(AVAudioClock *)&v7 dealloc];
}

- (AVAudioClock)initWithNode:(void *)node
{
  v7.receiver = self;
  v7.super_class = AVAudioClock;
  v4 = [(AVAudioClock *)&v7 init];
  if (v4)
  {
    v5 = operator new(0x1C0uLL, 0x40uLL);
    AVAudioClockImpl::AVAudioClockImpl(v5, node);
    v4->_impl = v5;
  }

  return v4;
}

- (AVAudioClock)init
{
  v5.receiver = self;
  v5.super_class = AVAudioClock;
  v2 = [(AVAudioClock *)&v5 init];
  if (v2)
  {
    v3 = operator new(0x1C0uLL, 0x40uLL);
    AVAudioClockImpl::AVAudioClockImpl(v3, 0);
    v2->_impl = v3;
  }

  return v2;
}

@end