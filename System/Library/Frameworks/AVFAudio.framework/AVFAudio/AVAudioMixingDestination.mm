@interface AVAudioMixingDestination
- (AVAudio3DPoint)position;
- (AVAudioConnectionPoint)connectionPoint;
- (AVAudioMixingDestination)initWithImpl:(AVAudioMixingImpl *)impl;
- (float)obstruction;
- (float)occlusion;
- (float)pan;
- (float)rate;
- (float)reverbBlend;
- (float)volume;
- (id)destinationForMixer:(id)mixer bus:(unint64_t)bus;
- (int64_t)pointSourceInHeadMode;
- (int64_t)renderingAlgorithm;
- (int64_t)sourceMode;
- (void)dealloc;
- (void)setObstruction:(float)obstruction;
- (void)setOcclusion:(float)occlusion;
- (void)setPan:(float)pan;
- (void)setPointSourceInHeadMode:(int64_t)mode;
- (void)setPosition:(AVAudio3DPoint)position;
- (void)setRate:(float)rate;
- (void)setRenderingAlgorithm:(int64_t)algorithm;
- (void)setReverbBlend:(float)blend;
- (void)setSourceMode:(int64_t)mode;
- (void)setVolume:(float)volume;
@end

@implementation AVAudioMixingDestination

- (float)occlusion
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 15);
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

- (void)setOcclusion:(float)occlusion
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 104))(self->_impl, occlusion);
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

- (float)obstruction
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 14);
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

- (void)setObstruction:(float)obstruction
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 96))(self->_impl, obstruction);
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

- (AVAudio3DPoint)position
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, *(self->_impl + 1));
  impl = self->_impl;
  v4 = impl[11];
  v5 = impl[12];
  v6 = impl[13];
  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  result.z = v9;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setPosition:(AVAudio3DPoint)position
{
  z = position.z;
  y = position.y;
  x = position.x;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, *(self->_impl + 1));
  (*(*self->_impl + 88))(self->_impl, x, y, z);
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

- (float)reverbBlend
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 10);
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

- (void)setReverbBlend:(float)blend
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 80))(self->_impl, blend);
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

- (float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 9);
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

- (void)setRate:(float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 72))(self->_impl, rate);
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

- (int64_t)pointSourceInHeadMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 8);
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

- (void)setPointSourceInHeadMode:(int64_t)mode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 64))(self->_impl, mode);
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

- (int64_t)sourceMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 7);
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

- (void)setSourceMode:(int64_t)mode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 56))(self->_impl, mode);
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

- (int64_t)renderingAlgorithm
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 6);
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

- (void)setRenderingAlgorithm:(int64_t)algorithm
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 48))(self->_impl, algorithm);
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

- (float)pan
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 5);
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

- (void)setPan:(float)pan
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 40))(self->_impl, pan);
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

- (float)volume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = *(self->_impl + 4);
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

- (void)setVolume:(float)volume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, *(self->_impl + 1));
  (*(*self->_impl + 32))(self->_impl, volume);
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

- (AVAudioConnectionPoint)connectionPoint
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, *(self->_impl + 1));
  v3 = (*(*self->_impl + 24))(self->_impl);
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

- (id)destinationForMixer:(id)mixer bus:(unint64_t)bus
{
  v30 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, *(self->_impl + 1));
  if (!mixer)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "AVAudioNode.mm";
      v24 = 1024;
      v25 = 492;
      v26 = 2080;
      v27 = "[AVAudioMixingDestination destinationForMixer:bus:]";
      v28 = 2080;
      v29 = "mixer";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "mixer"}];
  }

  impl = self->_impl;
  impl = [mixer impl];
  v10 = (*(*impl + 240))(impl, bus);
  v11 = (*(*impl + 16))(impl, mixer, v10);
  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    std::recursive_mutex::unlock(v14);
  }

  if (v11)
  {
    result = self;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = AVAudioMixingDestination;
  [(AVAudioMixingDestination *)&v4 dealloc];
}

- (AVAudioMixingDestination)initWithImpl:(AVAudioMixingImpl *)impl
{
  v7.receiver = self;
  v7.super_class = AVAudioMixingDestination;
  v4 = [(AVAudioMixingDestination *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_impl = impl;
  }

  else if (impl)
  {
    (*(impl->var0 + 1))(impl);
  }

  return v5;
}

@end