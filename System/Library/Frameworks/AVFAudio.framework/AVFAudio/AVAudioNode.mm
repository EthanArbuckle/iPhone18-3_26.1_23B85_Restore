@interface AVAudioNode
- (AUAudioUnit)AUAudioUnit;
- (AVAudio3DPoint)position;
- (AVAudioEngine)engine;
- (AVAudioFormat)inputFormatForBus:(AVAudioNodeBus)bus;
- (AVAudioFormat)outputFormatForBus:(AVAudioNodeBus)bus;
- (AVAudioNode)initWithImpl:(void *)a3;
- (AVAudioTime)lastRenderTime;
- (BOOL)resetImpl:(void *)a3;
- (BOOL)setInputFormat:(id)a3 forBus:(unint64_t)a4;
- (BOOL)setOutputFormat:(id)a3 forBus:(unint64_t)a4;
- (NSTimeInterval)latency;
- (NSTimeInterval)outputPresentationLatency;
- (NSUInteger)numberOfInputs;
- (NSUInteger)numberOfOutputs;
- (OpaqueAudioComponentInstance)audioUnit;
- (float)obstruction;
- (float)occlusion;
- (float)pan;
- (float)rate;
- (float)reverbBlend;
- (float)volume;
- (id)clock;
- (id)destinationForMixer:(id)a3 bus:(unint64_t)a4;
- (int64_t)pointSourceInHeadMode;
- (int64_t)renderingAlgorithm;
- (int64_t)sourceMode;
- (void)dealloc;
- (void)didAttachToEngine:(id)a3;
- (void)didDetachFromEngine:(id)a3 error:(id *)a4;
- (void)removeTapOnBus:(AVAudioNodeBus)bus;
- (void)reset;
- (void)setObstruction:(float)a3;
- (void)setOcclusion:(float)a3;
- (void)setPan:(float)a3;
- (void)setPointSourceInHeadMode:(int64_t)a3;
- (void)setPosition:(AVAudio3DPoint)a3;
- (void)setRate:(float)a3;
- (void)setRenderingAlgorithm:(int64_t)a3;
- (void)setReverbBlend:(float)a3;
- (void)setSourceMode:(int64_t)a3;
- (void)setVolume:(float)a3;
@end

@implementation AVAudioNode

- (float)occlusion
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 60);
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

- (void)setOcclusion:(float)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 104))(MixingImpl, a3);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = a3;
        [v9[6] setOcclusion:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (float)obstruction
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 56);
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

- (void)setObstruction:(float)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 96))(MixingImpl, a3);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = a3;
        [v9[6] setObstruction:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (AVAudio3DPoint)position
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  v4 = MixingImpl[11];
  v5 = MixingImpl[12];
  v6 = MixingImpl[13];
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

- (void)setPosition:(AVAudio3DPoint)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v19, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 88))(MixingImpl, x, y, z);
  v11 = *(self->_impl + 8);
  if (v11)
  {
    v14 = *v11;
    v12 = v11 + 1;
    v13 = v14;
    if (v14 != v12)
    {
      do
      {
        *&v8 = x;
        *&v9 = y;
        *&v10 = z;
        [v13[6] setPosition:{v8, v9, v10}];
        v15 = v13[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v13[2];
            v17 = *v16 == v13;
            v13 = v16;
          }

          while (!v17);
        }

        v13 = v16;
      }

      while (v16 != v12);
    }
  }

  if (v22 == 1)
  {
    std::recursive_mutex::unlock(v21);
  }

  if (v20 == 1)
  {
    v18 = v19;

    std::recursive_mutex::unlock(v18);
  }
}

- (float)reverbBlend
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 40);
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

- (void)setReverbBlend:(float)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 80))(MixingImpl, a3);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = a3;
        [v9[6] setReverbBlend:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 36);
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

- (void)setRate:(float)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 72))(MixingImpl, a3);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = a3;
        [v9[6] setRate:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (int64_t)pointSourceInHeadMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 32);
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

- (void)setPointSourceInHeadMode:(int64_t)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 64))(MixingImpl, a3);
  v6 = *(self->_impl + 8);
  if (v6)
  {
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        [v8[6] setPointSourceInHeadMode:a3];
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    v13 = v14;

    std::recursive_mutex::unlock(v13);
  }
}

- (int64_t)sourceMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 28);
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

- (void)setSourceMode:(int64_t)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 56))(MixingImpl, a3);
  v6 = *(self->_impl + 8);
  if (v6)
  {
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        [v8[6] setSourceMode:a3];
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    v13 = v14;

    std::recursive_mutex::unlock(v13);
  }
}

- (int64_t)renderingAlgorithm
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 24);
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

- (void)setRenderingAlgorithm:(int64_t)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 48))(MixingImpl, a3);
  v6 = *(self->_impl + 8);
  if (v6)
  {
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        [v8[6] setRenderingAlgorithm:a3];
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    v13 = v14;

    std::recursive_mutex::unlock(v13);
  }
}

- (float)pan
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 20);
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

- (void)setPan:(float)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 40))(MixingImpl, a3);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = a3;
        [v9[6] setPan:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (float)volume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 16);
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

- (void)setVolume:(float)a3
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 32))(MixingImpl, a3);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = a3;
        [v9[6] setVolume:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (id)destinationForMixer:(id)a3 bus:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  if (!a3)
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
      v25 = 230;
      v26 = 2080;
      v27 = "[AVAudioNode destinationForMixer:bus:]";
      v28 = 2080;
      v29 = "mixer";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "mixer"}];
  }

  impl = self->_impl;
  v9 = [a3 impl];
  v10 = (*(*v9 + 240))(v9, a4);
  MixingDestination = AVAudioNodeImplBase::GetMixingDestination(impl, a3, v10);
  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    std::recursive_mutex::unlock(v14);
  }

  v12 = *MEMORY[0x1E69E9840];
  return MixingDestination;
}

- (AUAudioUnit)AUAudioUnit
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 232))(self->_impl);
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

- (OpaqueAudioComponentInstance)audioUnit
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 224))(self->_impl);
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

- (void)removeTapOnBus:(AVAudioNodeBus)bus
{
  v24 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->_impl);
  v5 = [(AVAudioNode *)self engine];
  if (!v5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = "AVAudioNode.mm";
      v18 = 1024;
      v19 = 194;
      v20 = 2080;
      v21 = "[AVAudioNode removeTapOnBus:]";
      v22 = 2080;
      v23 = "NULL != engine";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "NULL != engine"}];
  }

  AVAudioEngineImpl::RemoveTapOnNode([(AVAudioEngine *)v5 implementation], self, bus);
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (NSUInteger)numberOfOutputs
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 104))(self->_impl);
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

- (NSUInteger)numberOfInputs
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 96))(self->_impl);
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

- (AVAudioEngine)engine
{
  v2 = *(self->_impl + 1);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

- (NSTimeInterval)outputPresentationLatency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 400))(self->_impl);
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

- (NSTimeInterval)latency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 384))(self->_impl);
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

- (AVAudioTime)lastRenderTime
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 360))(self->_impl);
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

- (id)clock
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 352))(self->_impl);
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

- (void)reset
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v4, self->_impl);
  (*(*self->_impl + 88))(self->_impl);
  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  if (v5 == 1)
  {
    v3 = v4;

    std::recursive_mutex::unlock(v3);
  }
}

- (void)didDetachFromEngine:(id)a3 error:(id *)a4
{
  v7 = [a3 implementation];
  impl = self->_impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (v7 + 112));
  v9 = AVAudioEngineGraph::RemoveNode(*(v7 + 8), self, a4);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 1530, "DestroyGraphNode", "_graph->RemoveNode(inNode, outErr)", v9, a4);
  (*(*self->_impl + 24))(self->_impl, a3);
  std::recursive_mutex::unlock((impl + 96));

  std::recursive_mutex::unlock((v7 + 112));
}

- (void)didAttachToEngine:(id)a3
{
  v5 = [a3 implementation];
  impl = self->_impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (v5 + 112));
  AVAudioEngineGraph::AddNode(*(v5 + 8), self);
  (*(*self->_impl + 16))(self->_impl, a3);
  std::recursive_mutex::unlock((impl + 96));

  std::recursive_mutex::unlock((v5 + 112));
}

- (BOOL)setInputFormat:(id)a3 forBus:(unint64_t)a4
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->_impl);
  v7 = (*(*self->_impl + 80))(self->_impl, a4, a3);
  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v7;
}

- (AVAudioFormat)inputFormatForBus:(AVAudioNodeBus)bus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->_impl);
  v5 = (*(*self->_impl + 72))(self->_impl, bus);
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (BOOL)setOutputFormat:(id)a3 forBus:(unint64_t)a4
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->_impl);
  v7 = (*(*self->_impl + 64))(self->_impl, a4, a3);
  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v7;
}

- (AVAudioFormat)outputFormatForBus:(AVAudioNodeBus)bus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->_impl);
  v5 = (*(*self->_impl + 48))(self->_impl, bus);
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = AVAudioNode;
  [(AVAudioNode *)&v4 dealloc];
}

- (BOOL)resetImpl:(void *)a3
{
  if (a3)
  {
    impl = self->_impl;
    if (impl != a3)
    {
      if (impl)
      {
        (*(*impl + 8))(impl, a2);
      }

      self->_impl = a3;
    }
  }

  return a3 != 0;
}

- (AVAudioNode)initWithImpl:(void *)a3
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = AVAudioNode;
    result = [(AVAudioNode *)&v5 init];
    if (result)
    {
      result->_impl = a3;
      return result;
    }

    (*(*a3 + 8))(a3);
  }

  else
  {
  }

  return 0;
}

@end