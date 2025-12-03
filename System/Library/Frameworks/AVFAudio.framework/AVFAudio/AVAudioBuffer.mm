@interface AVAudioBuffer
- (AVAudioBuffer)initWithFormat:(id)format byteCapacity:(unsigned int)capacity;
- (AVAudioBuffer)initWithPCMFormat:(id)format byteCapacity:(unsigned int)capacity bufferListNoCopy:(const AudioBufferList *)copy deallocator:(id)deallocator;
- (AudioBufferList)mutableAudioBufferList;
- (const)audioBufferList;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unsigned)byteLength;
- (void)dealloc;
- (void)setByteLength:(unsigned int)length;
@end

@implementation AVAudioBuffer

- (AudioBufferList)mutableAudioBufferList
{
  impl = self->_impl;
  if ((*(impl + 88) & 1) == 0)
  {
    if (*(impl + 56) == 1)
    {
      v5 = (*(impl + 6) + 48);
    }

    else
    {
      v5 = *(impl + 12);
    }

    v12 = *v5;
    std::vector<char>::vector[abi:ne200100](&__p);
  }

  if (*(impl + 56) == 1)
  {
    v4 = (*(impl + 6) + 48);
  }

  else
  {
    v4 = *(impl + 12);
  }

  v6 = (16 * *v4) | 8;
  v7 = *(impl + 8);
  v8 = *(impl + 9);
  v9 = v6 - (v8 - v7);
  if (v6 <= v8 - v7)
  {
    if (v6 < v8 - v7)
    {
      v8 = &v7[v6];
      *(impl + 9) = &v7[v6];
    }
  }

  else
  {
    v10 = *(impl + 10);
    if (v10 - v8 < v9)
    {
      if (2 * (v10 - v7) <= v6)
      {
        v11 = (16 * *v4) | 8;
      }

      operator new();
    }

    v13 = &v7[v6];
    bzero(*(impl + 9), v9);
    *(impl + 9) = v13;
    v8 += v9;
    v7 = *(impl + 8);
  }

  memcpy(v7, v4, v8 - v7);
  return *(self->_impl + 8);
}

- (const)audioBufferList
{
  impl = self->_impl;
  if (*(impl + 56) == 1)
  {
    return (*(impl + 6) + 48);
  }

  else
  {
    return *(impl + 12);
  }
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {

    v4 = self->_impl;
    if (*(v4 + 56) == 1)
    {
      v5 = v4[6];
      ExtendedAudioBufferList_Destroy();
      *(v4 + 56) = 0;
    }

    else if (self->_deallocator)
    {
      v6 = *v4[12];
      std::vector<char>::vector[abi:ne200100](&__p);
    }

    free(*(self->_impl + 1));
    free(*(self->_impl + 16));
    v7 = self->_impl;
    if (*(v7 + 88) == 1)
    {
      v8 = *(v7 + 8);
      v9 = self->_impl;
      if (v8)
      {
        *(v7 + 9) = v8;
        operator delete(v8);
        v9 = self->_impl;
      }

      *(v7 + 88) = 0;
      v7 = v9;
    }

    if (*(v7 + 144) == 1)
    {
      unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(v7 + 17);
      *(v7 + 144) = 0;
      v7 = self->_impl;
      if (!v7)
      {
        goto LABEL_23;
      }

      if (*(v7 + 144))
      {
        unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(v7 + 17);
      }
    }

    if (*(v7 + 120) == 1)
    {
      v10 = *(v7 + 12);
      if (v10)
      {
        *(v7 + 13) = v10;
        operator delete(v10);
      }
    }

    if (*(v7 + 88) == 1)
    {
      v11 = *(v7 + 8);
      if (v11)
      {
        *(v7 + 9) = v11;
        operator delete(v11);
      }
    }

    if (*(v7 + 56) == 1)
    {
      v12 = *(v7 + 6);
      ExtendedAudioBufferList_Destroy();
    }

    MEMORY[0x1BFAF5800](v7, 0x10B2C40D4A92739);
  }

LABEL_23:
  v13.receiver = self;
  v13.super_class = AVAudioBuffer;
  [(AVAudioBuffer *)&v13 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[AVAudioBuffer allocWithZone:?]byteCapacity:"initWithFormat:byteCapacity:", *self->_impl, *(self->_impl + 10)];
  impl = v4->_impl;
  v6 = self->_impl;
  if (*(v6 + 56) == 1)
  {
    v7 = (v6[6] + 48);
  }

  else
  {
    v7 = v6[12];
  }

  if (*(impl + 56) == 1)
  {
    v8 = impl[6] + 48;
  }

  else
  {
    v8 = impl[12];
  }

  if (*v7)
  {
    v9 = 0;
    v10 = (v8 + 16);
    v11 = (v7 + 4);
    do
    {
      v12 = *(v11 - 1);
      *(v10 - 1) = v12;
      v14 = *v10;
      v10 += 2;
      v13 = v14;
      v15 = *v11;
      v11 += 2;
      memcpy(v13, v15, v12);
      ++v9;
    }

    while (v9 < *v7);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@@%p: %d/%d bytes>", NSStringFromClass(v4), self, -[AVAudioBuffer byteLength](self, "byteLength"), -[AVAudioBuffer byteCapacity](self, "byteCapacity")];
}

- (void)setByteLength:(unsigned int)length
{
  v29 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl[10] < length)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAudioBuffer.mm";
      v23 = 1024;
      v24 = 203;
      v25 = 2080;
      v26 = "[AVAudioBuffer setByteLength:]";
      v27 = 2080;
      v28 = "length <= _imp->_byteCapacity";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "length <= _imp->_byteCapacity"}];
    impl = self->_impl;
  }

  if (*(impl + 56) == 1)
  {
    v7 = (*(impl + 6) + 48);
  }

  else
  {
    v7 = *(impl + 12);
  }

  v8 = *v7;
  if (v8)
  {
    v9 = (v8 + 3) & 0x1FFFFFFFCLL;
    v10 = vdupq_n_s64(v8 - 1);
    v11 = xmmword_1BA6CF300;
    v12 = xmmword_1BA6CF310;
    v13 = v7 + 11;
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 8) = length;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 4) = length;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = length;
        v13[4] = length;
      }

      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 16;
      v9 -= 4;
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unsigned)byteLength
{
  impl = self->_impl;
  if (*(impl + 56) == 1)
  {
    v3 = impl[6] + 48;
  }

  else
  {
    v3 = impl[12];
  }

  return *(v3 + 12);
}

- (AVAudioBuffer)initWithPCMFormat:(id)format byteCapacity:(unsigned int)capacity bufferListNoCopy:(const AudioBufferList *)copy deallocator:(id)deallocator
{
  v31 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AVAudioBuffer;
  if ([(AVAudioBuffer *)&v19 init])
  {
    streamDescription = [format streamDescription];
    v9 = *(streamDescription + 16);
    v16 = *streamDescription;
    v17 = v9;
    v18 = *(streamDescription + 32);
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v10 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v21 = 1024;
        v22 = 71;
        v23 = 2080;
        v24 = "AVAudioBuffer.mm";
        v25 = 1024;
        v26 = 157;
        v27 = 2080;
        v28 = "[AVAudioBuffer initWithPCMFormat:byteCapacity:bufferListNoCopy:deallocator:]";
        v29 = 2080;
        v30 = "isPCMFormat(fmt)";
        _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
    }

    if ((BYTE12(v16) & 0x20) != 0)
    {
      v11 = HIDWORD(v17);
    }

    else
    {
      v11 = 1;
    }

    if (!copy)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v12 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v21 = 1024;
        v22 = 71;
        v23 = 2080;
        v24 = "AVAudioBuffer.mm";
        v25 = 1024;
        v26 = 159;
        v27 = 2080;
        v28 = "[AVAudioBuffer initWithPCMFormat:byteCapacity:bufferListNoCopy:deallocator:]";
        v29 = 2080;
        v30 = "bufferList != nullptr";
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferList != nullptr"}];
    }

    if (copy->mNumberBuffers != v11)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v21 = 1024;
        v22 = 71;
        v23 = 2080;
        v24 = "AVAudioBuffer.mm";
        v25 = 1024;
        v26 = 160;
        v27 = 2080;
        v28 = "[AVAudioBuffer initWithPCMFormat:byteCapacity:bufferListNoCopy:deallocator:]";
        v29 = 2080;
        v30 = "bufferList->mNumberBuffers == numBuffers";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferList->mNumberBuffers == numBuffers"}];
    }

    operator new();
  }

  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

- (AVAudioBuffer)initWithFormat:(id)format byteCapacity:(unsigned int)capacity
{
  v9.receiver = self;
  v9.super_class = AVAudioBuffer;
  if ([(AVAudioBuffer *)&v9 init])
  {
    streamDescription = [format streamDescription];
    v6 = streamDescription[2];
    if ((streamDescription[3] & 0x20) != 0)
    {
      v7 = streamDescription[7];
    }

    operator new();
  }

  return 0;
}

@end