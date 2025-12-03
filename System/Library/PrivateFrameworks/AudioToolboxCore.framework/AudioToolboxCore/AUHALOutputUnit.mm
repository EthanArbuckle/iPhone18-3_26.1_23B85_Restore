@interface AUHALOutputUnit
- (AUHALOutputUnit)initWithAudioUnit:(OpaqueAudioComponentInstance *)unit description:(AudioComponentDescription *)description;
- (BOOL)canPerformInput;
- (BOOL)canPerformOutput;
- (BOOL)isInputEnabled;
- (BOOL)isOutputEnabled;
- (BOOL)isRunning;
- (BOOL)startHardwareAndReturnError:(id *)error;
- (id).cxx_construct;
- (id)_inputHandler;
- (id)outputProvider;
- (int64_t)tokenByAddingRenderObserver:(id)observer;
- (void)addRenderObserver:(void *)observer userData:(void *)data;
- (void)dealloc;
- (void)initAUHALOutputUnit;
- (void)removeRenderObserver:(int64_t)observer;
- (void)removeRenderObserver:(void *)observer userData:(void *)data;
- (void)setInputEnabled:(BOOL)enabled;
- (void)setInputHandler:(id)handler;
- (void)setOutputEnabled:(BOOL)enabled;
- (void)setOutputProvider:(id)provider;
- (void)stopHardware;
@end

@implementation AUHALOutputUnit

- (id).cxx_construct
{
  *(self + 44) = 0u;
  *(self + 45) = 0u;
  *(self + 184) = 1065353216;
  return self;
}

- (void)stopHardware
{
  audioUnit = [(AUAudioUnitV2Bridge *)self audioUnit];

  AudioOutputUnitStop(audioUnit);
}

- (BOOL)startHardwareAndReturnError:(id *)error
{
  v4 = AudioOutputUnitStart([(AUAudioUnitV2Bridge *)self audioUnit]);
  v5 = v4;
  if (error)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
      *error = v6;
    }

    else
    {
      *error = 0;
    }
  }

  return v5 == 0;
}

- (BOOL)isRunning
{
  outData = 0;
  ioDataSize = 4;
  if (AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D1u, 0, 0, &outData, &ioDataSize))
  {
    v2 = 1;
  }

  else
  {
    v2 = outData == 0;
  }

  return !v2;
}

- (void)setOutputEnabled:(BOOL)enabled
{
  inData = enabled;
  *(self + 697) = enabled;
  AudioUnitSetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D3u, 2u, 0, &inData, 4u);
}

- (void)setInputEnabled:(BOOL)enabled
{
  inData = enabled;
  *(self + 696) = enabled;
  AudioUnitSetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D3u, 1u, 1u, &inData, 4u);
}

- (BOOL)isOutputEnabled
{
  outData = 0;
  ioDataSize = 4;
  if (AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D3u, 2u, 0, &outData, &ioDataSize))
  {
    v2 = 1;
  }

  else
  {
    v2 = outData == 0;
  }

  return !v2;
}

- (BOOL)isInputEnabled
{
  outData = 0;
  ioDataSize = 4;
  if (AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D3u, 1u, 1u, &outData, &ioDataSize))
  {
    v2 = 1;
  }

  else
  {
    v2 = outData == 0;
  }

  return !v2;
}

- (BOOL)canPerformOutput
{
  outData = 0;
  ioDataSize = 4;
  Property = AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D6u, 2u, 0, &outData, &ioDataSize);
  if (Property)
  {
    return Property == -10879;
  }

  else
  {
    return outData != 0;
  }
}

- (BOOL)canPerformInput
{
  outData = 0;
  ioDataSize = 4;
  Property = AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7D6u, 1u, 1u, &outData, &ioDataSize);
  if (Property)
  {
    return Property == -10879;
  }

  else
  {
    return outData != 0;
  }
}

- (void)setInputHandler:(id)handler
{
  handlerCopy = handler;
  v5 = *(self + 86);
  if (v5 != handlerCopy)
  {
    *(self + 86) = 0;

    if (handlerCopy)
    {
      v6 = [handlerCopy copy];
      v7 = *(self + 86);
      *(self + 86) = v6;

      v8 = *(self + 86);
      v9 = AUHALOutputUnit_InputAvailableCallback;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    AudioUnitSetProperty([(AUAudioUnitV2Bridge *)self audioUnit:v9], 0x7D5u, 0, 0, &v9, 0x10u);
  }
}

- (void)setOutputProvider:(id)provider
{
  providerCopy = provider;
  v5 = *(self + 85);
  v8 = providerCopy;
  if (v5 != providerCopy)
  {
    *(self + 85) = 0;

    if (v8)
    {
      v6 = [v8 copy];
      v7 = *(self + 85);
      *(self + 85) = v6;
    }

    [(AUHALOutputUnit *)self enableBus:0 scope:1 enable:*(self + 85) != 0];
  }
}

- (id)_inputHandler
{
  v2 = _Block_copy(*(self + 86));

  return v2;
}

- (id)outputProvider
{
  v2 = _Block_copy(*(self + 85));

  return v2;
}

- (void)removeRenderObserver:(void *)observer userData:(void *)data
{
  audioUnit = [(AUAudioUnitV2Bridge *)self audioUnit];

  AudioUnitRemoveRenderNotify(audioUnit, observer, data);
}

- (void)addRenderObserver:(void *)observer userData:(void *)data
{
  audioUnit = [(AUAudioUnitV2Bridge *)self audioUnit];

  AudioUnitAddRenderNotify(audioUnit, observer, data);
}

- (void)removeRenderObserver:(int64_t)observer
{
  v3 = (self + 704);
  v4 = *(self + 89);
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      observerCopy = observer;
      if (v4 <= observer)
      {
        observerCopy = observer % v4;
      }
    }

    else
    {
      observerCopy = (v4 - 1) & observer;
    }

    v7 = *(*v3 + 8 * observerCopy);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == observer)
        {
          if (i[2] == observer)
          {
            AudioUnitRemoveRenderNotify([(AUAudioUnitV2Bridge *)self audioUnit], AUHALOutputUnit_RenderNotifyCallback, i[3]);
            v10 = v3[1];
            v11 = i[1];
            v12 = vcnt_s8(v10);
            v12.i16[0] = vaddlv_u8(v12);
            if (v12.u32[0] > 1uLL)
            {
              if (v11 >= *&v10)
              {
                v11 %= *&v10;
              }
            }

            else
            {
              v11 &= *&v10 - 1;
            }

            v13 = *(*v3 + 8 * v11);
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13 != i);
            if (v14 == v3 + 2)
            {
              goto LABEL_35;
            }

            v15 = v14[1];
            if (v12.u32[0] > 1uLL)
            {
              if (v15 >= *&v10)
              {
                v15 %= *&v10;
              }
            }

            else
            {
              v15 &= *&v10 - 1;
            }

            if (v15 != v11)
            {
LABEL_35:
              if (!*i)
              {
                goto LABEL_36;
              }

              v16 = *(*i + 8);
              if (v12.u32[0] > 1uLL)
              {
                if (v16 >= *&v10)
                {
                  v16 %= *&v10;
                }
              }

              else
              {
                v16 &= *&v10 - 1;
              }

              if (v16 != v11)
              {
LABEL_36:
                *(*v3 + 8 * v11) = 0;
              }
            }

            v17 = *i;
            if (*i)
            {
              v18 = v17[1];
              if (v12.u32[0] > 1uLL)
              {
                if (v18 >= *&v10)
                {
                  v18 %= *&v10;
                }
              }

              else
              {
                v18 &= *&v10 - 1;
              }

              if (v18 != v11)
              {
                *(*v3 + 8 * v18) = v14;
                v17 = *i;
              }
            }

            *v14 = v17;
            *i = 0;
            --v3[3];
            v19[0] = i;
            v19[1] = v3;
            v20 = 1;
            memset(v21, 0, sizeof(v21));
            std::unique_ptr<std::__hash_node<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,void *>>>>::~unique_ptr[abi:ne200100](v19);
            return;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= v4)
            {
              v9 %= v4;
            }
          }

          else
          {
            v9 &= v4 - 1;
          }

          if (v9 != observerCopy)
          {
            return;
          }
        }
      }
    }
  }
}

- (int64_t)tokenByAddingRenderObserver:(id)observer
{
  observerCopy = observer;
  v5 = [observerCopy copy];
  AudioUnitAddRenderNotify([(AUAudioUnitV2Bridge *)self audioUnit], AUHALOutputUnit_RenderNotifyCallback, v5);
  v6 = (atomic_fetch_add_explicit(self + 175, 1u, memory_order_relaxed) + 1);
  v7 = *(self + 712);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (*&v7 <= v6)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*(self + 88) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != v6)
  {
    goto LABEL_17;
  }

  return v6;
}

- (void)initAUHALOutputUnit
{
  *(self + 696) = 0;
  *(self + 697) = 1;
  *(self + 698) = 0;
  *(self + 175) = 2000;
}

- (void)dealloc
{
  v3 = *(self + 86);
  *(self + 86) = 0;

  v4 = *(self + 85);
  *(self + 85) = 0;

  if (*(self + 91))
  {
    std::__hash_table<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,std::__unordered_map_hasher<long,std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>>::__deallocate_node(*(self + 90));
    *(self + 90) = 0;
    v5 = *(self + 89);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(self + 88) + 8 * i) = 0;
      }
    }

    *(self + 91) = 0;
  }

  v7.receiver = self;
  v7.super_class = AUHALOutputUnit;
  [(AUAudioUnitV2Bridge *)&v7 dealloc];
}

- (AUHALOutputUnit)initWithAudioUnit:(OpaqueAudioComponentInstance *)unit description:(AudioComponentDescription *)description
{
  v8 = *description;
  v7.receiver = self;
  v7.super_class = AUHALOutputUnit;
  v4 = [(AUAudioUnitV2Bridge *)&v7 initWithAudioUnit:unit description:&v8];
  v5 = v4;
  if (v4)
  {
    [(AUHALOutputUnit *)v4 initAUHALOutputUnit];
  }

  return v5;
}

@end