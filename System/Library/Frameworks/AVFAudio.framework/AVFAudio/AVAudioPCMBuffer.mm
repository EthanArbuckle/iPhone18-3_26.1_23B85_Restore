@interface AVAudioPCMBuffer
- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format bufferListNoCopy:(const AudioBufferList *)bufferList deallocator:(void *)deallocator;
- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format frameCapacity:(AVAudioFrameCount)frameCapacity;
- (BOOL)appendDataFromBuffer:(id)a3 channel:(int64_t)a4;
- (float)calculatePower:(unint64_t)a3 forFloatData:(float *)a4 stride:(int64_t)a5 frameLength:(unsigned int)a6;
- (float)floatChannelData;
- (id)calculatePower:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)splitIntoSingleChannelBuffers;
- (int16_t)int16ChannelData;
- (int32_t)int32ChannelData;
- (void)_initChannelPtrs;
- (void)setByteLength:(unsigned int)a3;
- (void)setFrameLength:(AVAudioFrameCount)frameLength;
@end

@implementation AVAudioPCMBuffer

- (void)_initChannelPtrs
{
  v3 = [*self->super._impl streamDescription];
  v4 = *(v3 + 28);
  if (v4)
  {
    v5 = *(v3 + 12);
    *(self->super._impl + 1) = malloc_type_calloc(*(v3 + 28), 8uLL, 0x80040B8603338uLL);
    if ((v5 & 0x20) != 0)
    {
      v8 = 0;
      v9 = 16;
      do
      {
        impl = self->super._impl;
        if (*(impl + 56) == 1)
        {
          v11 = impl[6] + 48;
        }

        else
        {
          v11 = impl[12];
        }

        *(impl[1] + v8) = *(v11 + v9);
        v8 += 8;
        v9 += 16;
      }

      while (8 * v4 != v8);
    }

    else
    {
      v6 = self->super._impl;
      if (*(v6 + 56) == 1)
      {
        v7 = v6[6] + 48;
      }

      else
      {
        v7 = v6[12];
      }

      v12 = *(v6 + 6);
      *v6[1] = *(v7 + 16);
      if (v4 != 1)
      {
        v13 = 0;
        v14 = v12 / v4;
        do
        {
          v15 = (*(self->super._impl + 1) + 8 * v13);
          v15[1] = *v15 + v14;
          ++v13;
        }

        while (v4 - 1 != v13);
      }
    }
  }
}

- (int16_t)int16ChannelData
{
  impl = self->super._impl;
  if (*(impl + 8) != 1)
  {
    return 0;
  }

  result = *(impl + 1);
  if (!result)
  {
    [(AVAudioPCMBuffer *)self _initChannelPtrs];
    return *(self->super._impl + 1);
  }

  return result;
}

- (float)calculatePower:(unint64_t)a3 forFloatData:(float *)a4 stride:(int64_t)a5 frameLength:(unsigned int)a6
{
  if (a3 == 1)
  {
    v8 = 0.0;
    vDSP_rmsqv(a4, a5, &v8, a6);
    v7 = v8;
  }

  else
  {
    if (a3)
    {
      return result;
    }

    __C = 0.0;
    vDSP_maxv(a4, a5, &__C, a6);
    v7 = __C;
  }

  if (v7 < 0.00000001)
  {
    v7 = 0.00000001;
  }

  return log10f(v7) * 20.0;
}

- (id)calculatePower:(unint64_t)a3
{
  v5 = objc_opt_new();
  if (![(AVAudioPCMBuffer *)self floatChannelData])
  {
    if ([(AVAudioPCMBuffer *)self int16ChannelData])
    {
      v8 = malloc_type_malloc(4 * [(AVAudioPCMBuffer *)self frameLength], 0x100004052888210uLL);
      if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
      {
        v9 = 0;
        do
        {
          vDSP_vflt16([(AVAudioPCMBuffer *)self int16ChannelData][8 * v9], [(AVAudioPCMBuffer *)self stride], v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          __B = 32767.0;
          vDSP_vsdiv(v8, [(AVAudioPCMBuffer *)self stride], &__B, v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          v10 = MEMORY[0x1E696AD98];
          [(AVAudioPCMBuffer *)self calculatePower:a3 forFloatData:v8 stride:[(AVAudioPCMBuffer *)self stride] frameLength:[(AVAudioPCMBuffer *)self frameLength]];
          [v5 addObject:{objc_msgSend(v10, "numberWithFloat:")}];
          ++v9;
        }

        while (v9 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
      }
    }

    else
    {
      if (![(AVAudioPCMBuffer *)self int32ChannelData])
      {
        return v5;
      }

      v8 = malloc_type_malloc(4 * [(AVAudioPCMBuffer *)self frameLength], 0x100004052888210uLL);
      if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
      {
        v11 = 0;
        do
        {
          vDSP_vflt32([(AVAudioPCMBuffer *)self int32ChannelData][8 * v11], [(AVAudioPCMBuffer *)self stride], v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          v14 = 2147500000.0;
          vDSP_vsdiv(v8, [(AVAudioPCMBuffer *)self stride], &v14, v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          v12 = MEMORY[0x1E696AD98];
          [(AVAudioPCMBuffer *)self calculatePower:a3 forFloatData:v8 stride:[(AVAudioPCMBuffer *)self stride] frameLength:[(AVAudioPCMBuffer *)self frameLength]];
          [v5 addObject:{objc_msgSend(v12, "numberWithFloat:")}];
          ++v11;
        }

        while (v11 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
      }
    }

    free(v8);
    return v5;
  }

  if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
  {
    v6 = 0;
    do
    {
      v7 = MEMORY[0x1E696AD98];
      [(AVAudioPCMBuffer *)self calculatePower:a3 forFloatData:[(AVAudioPCMBuffer *)self floatChannelData][8 * v6] stride:[(AVAudioPCMBuffer *)self stride] frameLength:[(AVAudioPCMBuffer *)self frameLength]];
      [v5 addObject:{objc_msgSend(v7, "numberWithFloat:")}];
      ++v6;
    }

    while (v6 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
  }

  return v5;
}

- (id)splitIntoSingleChannelBuffers
{
  if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]< 2 || [(AVAudioFormat *)[(AVAudioBuffer *)self format] isInterleaved])
  {
    return 0;
  }

  v3 = objc_opt_new();
  if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
  {
    v5 = 0;
    do
    {
      v6 = [AVAudioFormat alloc];
      [(AVAudioFormat *)[(AVAudioBuffer *)self format] sampleRate];
      v7 = [(AVAudioFormat *)v6 initStandardFormatWithSampleRate:1 channels:?];
      v8 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v7 frameCapacity:[(AVAudioPCMBuffer *)self frameLength]];

      [(AVAudioPCMBuffer *)v8 appendDataFromBuffer:self channel:v5];
      [v3 addObject:v8];

      ++v5;
    }

    while (v5 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
  }

  return v3;
}

- (BOOL)appendDataFromBuffer:(id)a3 channel:(int64_t)a4
{
  impl = self->super._impl;
  if (*(impl + 56) == 1)
  {
    v8 = impl[6] + 48;
  }

  else
  {
    v8 = impl[12];
  }

  v9 = [a3 audioBufferList];
  v10 = [(AVAudioPCMBuffer *)self frameLength];
  v11 = *(self->super._impl + 6);
  v12 = [(AVAudioPCMBuffer *)self frameCapacity];
  v13 = v12 - [(AVAudioPCMBuffer *)self frameLength];
  v14 = [(AVAudioPCMBuffer *)self frameLength];
  v15 = [a3 frameLength] + v14;
  v16 = v13;
  if (v15 <= [(AVAudioPCMBuffer *)self frameCapacity])
  {
    v16 = [a3 frameLength];
  }

  v17 = v11 * v10;
  if (-[AVAudioFormat isEqual:](-[AVAudioBuffer format](self, "format"), "isEqual:", [a3 format]) || (v27 = -[AVAudioFormat channelCount](-[AVAudioBuffer format](self, "format"), "channelCount"), v27 == objc_msgSend(objc_msgSend(a3, "format"), "channelCount")) && (-[AVAudioFormat sampleRate](-[AVAudioBuffer format](self, "format"), "sampleRate"), v29 = v28, objc_msgSend(objc_msgSend(a3, "format"), "sampleRate"), v29 == v30) && (v31 = -[AVAudioFormat streamDescription](-[AVAudioBuffer format](self, "format"), "streamDescription")[8], v31 == *(objc_msgSend(objc_msgSend(a3, "format"), "streamDescription") + 8)))
  {
    if (*v9)
    {
      v18 = 0;
      v19 = (v9 + 4);
      v20 = (v8 + 16);
      do
      {
        v21 = [(AVAudioPCMBuffer *)self frameLength];
        v22 = [a3 frameLength] + v21;
        if (v22 <= [(AVAudioPCMBuffer *)self frameCapacity])
        {
          v23 = *(v19 - 1);
        }

        else
        {
          v23 = *(self->super._impl + 6) * v13;
        }

        v25 = *v20;
        v20 += 2;
        v24 = v25;
        v26 = *v19;
        v19 += 2;
        memcpy((v24 + v17), v26, v23);
        ++v18;
      }

      while (v18 < *v9);
    }

    goto LABEL_25;
  }

  v32 = [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount];
  if ((a4 & 0x8000000000000000) == 0 && v32 == 1 && [objc_msgSend(a3 "format")] > a4)
  {
    v33 = [(AVAudioPCMBuffer *)self frameLength];
    v34 = [a3 frameLength] + v33;
    v35 = [(AVAudioPCMBuffer *)self frameCapacity];
    v36 = &v9[4 * a4];
    if (v34 <= v35)
    {
      v37 = *(v36 + 3);
    }

    else
    {
      v37 = *(self->super._impl + 6) * v13;
    }

    memcpy((*(v8 + 16) + v17), v36[2], v37);
LABEL_25:
    v38 = [(AVAudioPCMBuffer *)self frameLength]+ v16;
    v39 = 1;
    goto LABEL_26;
  }

  v38 = [(AVAudioPCMBuffer *)self frameLength];
  v39 = 0;
LABEL_26:
  [(AVAudioPCMBuffer *)self setFrameLength:v38];
  return v39;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[AVAudioPCMBuffer allocWithZone:?]frameCapacity:"initWithPCMFormat:frameCapacity:", *self->super._impl, *(self->super._impl + 10)];
  impl = v4->super._impl;
  v6 = self->super._impl;
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
    v6 = self->super._impl;
  }

  *(impl + 4) = *(v6 + 4);
  return v4;
}

- (int32_t)int32ChannelData
{
  impl = self->super._impl;
  if (*(impl + 8) != 2)
  {
    return 0;
  }

  result = *(impl + 1);
  if (!result)
  {
    [(AVAudioPCMBuffer *)self _initChannelPtrs];
    return *(self->super._impl + 1);
  }

  return result;
}

- (float)floatChannelData
{
  impl = self->super._impl;
  if (*(impl + 8))
  {
    return 0;
  }

  result = *(impl + 1);
  if (!result)
  {
    [(AVAudioPCMBuffer *)self _initChannelPtrs];
    return *(self->super._impl + 1);
  }

  return result;
}

- (void)setFrameLength:(AVAudioFrameCount)frameLength
{
  v22 = *MEMORY[0x1E69E9840];
  impl = self->super._impl;
  if (impl[5] < frameLength)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioBuffer.mm";
      v16 = 1024;
      v17 = 389;
      v18 = 2080;
      v19 = "[AVAudioPCMBuffer setFrameLength:]";
      v20 = 2080;
      v21 = "length <= _imp->_frameCapacity";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "length <= _imp->_frameCapacity"}];
    impl = self->super._impl;
  }

  v7 = impl[6] * frameLength;
  v9.receiver = self;
  v9.super_class = AVAudioPCMBuffer;
  [(AVAudioBuffer *)&v9 setByteLength:v7];
  *(self->super._impl + 4) = frameLength;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setByteLength:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = AVAudioPCMBuffer;
  [(AVAudioBuffer *)&v5 setByteLength:?];
  *(self->super._impl + 4) = a3 / *(self->super._impl + 6);
}

- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format bufferListNoCopy:(const AudioBufferList *)bufferList deallocator:(void *)deallocator
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = [(AVAudioFormat *)format streamDescription];
  v10 = *&v9->mBytesPerPacket;
  v40 = *&v9->mSampleRate;
  v41 = v10;
  v42 = *&v9->mBitsPerChannel;
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v44 = "AVAEInternal.h";
      v45 = 1024;
      v46 = 71;
      v47 = 2080;
      *v48 = "AVAudioBuffer.mm";
      *&v48[8] = 1024;
      *v49 = 345;
      *&v49[4] = 2080;
      v50 = "[AVAudioPCMBuffer initWithPCMFormat:bufferListNoCopy:deallocator:]";
      v51 = 2080;
      v52 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  if (!bufferList)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v44 = "AVAEInternal.h";
      v45 = 1024;
      v46 = 71;
      v47 = 2080;
      *v48 = "AVAudioBuffer.mm";
      *&v48[8] = 1024;
      *v49 = 346;
      *&v49[4] = 2080;
      v50 = "[AVAudioPCMBuffer initWithPCMFormat:bufferListNoCopy:deallocator:]";
      v51 = 2080;
      v52 = "bufferList != nullptr";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferList != nullptr"}];
  }

  v13 = DWORD2(v41);
  if (!DWORD2(v41))
  {
    v26 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136315394;
    v44 = "AVAudioBuffer.mm";
    v45 = 1024;
    v46 = 349;
    v27 = "%25s:%-5d format has zero bytes per frame";
    goto LABEL_37;
  }

  mNumberBuffers = bufferList->mNumberBuffers;
  if (!mNumberBuffers)
  {
    v26 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136315394;
    v44 = "AVAudioBuffer.mm";
    v45 = 1024;
    v46 = 267;
    v27 = "%25s:%-5d the number of buffers is 0";
LABEL_37:
    v28 = v26;
    v29 = 18;
    goto LABEL_47;
  }

  if ((BYTE12(v40) & 0x20) != 0)
  {
    v15 = HIDWORD(v41);
  }

  else
  {
    v15 = 1;
  }

  if (mNumberBuffers != v15)
  {
    v30 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v31 = bufferList->mNumberBuffers;
    *buf = 136315906;
    v44 = "AVAudioBuffer.mm";
    v45 = 1024;
    v46 = 274;
    v47 = 1024;
    *v48 = v31;
    *&v48[4] = 1024;
    *&v48[6] = v15;
    v27 = "%25s:%-5d the number of buffers (%u) does not match the format's number of channel streams (%u)";
    v28 = v30;
    v29 = 30;
LABEL_47:
    _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
    goto LABEL_48;
  }

  mDataByteSize = bufferList->mBuffers[0].mDataByteSize;
  if (mDataByteSize)
  {
    v17 = 0;
    v18 = 0;
    if ((BYTE12(v40) & 0x20) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = HIDWORD(v41);
    }

    v20 = 16 * mNumberBuffers;
    while (1)
    {
      if (v17)
      {
        v21 = bufferList + v17;
        if (bufferList->mBuffers[v17 / 0x10].mDataByteSize != mDataByteSize)
        {
          break;
        }
      }

      v22 = bufferList + v17;
      if (bufferList->mBuffers[v17 / 0x10].mNumberChannels != v19)
      {
        v33 = gAVAudioBufferLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v34 = *(v22 + 2);
        *buf = 136316162;
        v44 = "AVAudioBuffer.mm";
        v45 = 1024;
        v46 = 296;
        v47 = 1024;
        *v48 = v18;
        *&v48[4] = 1024;
        *&v48[6] = v34;
        *v49 = 1024;
        *&v49[2] = v19;
        v27 = "%25s:%-5d mBuffers[%d].mNumberChannels (%u) does not match the format's number of interleaved channels (%u)";
        v28 = v33;
        v29 = 36;
        goto LABEL_47;
      }

      if (!*(v22 + 2))
      {
        v32 = gAVAudioBufferLog();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        *buf = 136315650;
        v44 = "AVAudioBuffer.mm";
        v45 = 1024;
        v46 = 299;
        v47 = 1024;
        *v48 = v18;
        v27 = "%25s:%-5d mBuffers[%u].mData is null";
        goto LABEL_46;
      }

      ++v18;
      v17 += 16;
      if (v20 == v17)
      {
        v39.receiver = self;
        v39.super_class = AVAudioPCMBuffer;
        v23 = [(AVAudioBuffer *)&v39 initWithPCMFormat:format byteCapacity:mDataByteSize bufferListNoCopy:bufferList deallocator:deallocator];
        v24 = v23;
        if (v23)
        {
          *(v23->super._impl + 1) = 0;
          *(v23->super._impl + 6) = v13;
          *(v23->super._impl + 5) = mDataByteSize / v13;
          *(v23->super._impl + 4) = mDataByteSize / v13;
          *(v23->super._impl + 7) = v19;
          impl = v24->super._impl;
          if ((impl[56] & 1) != 0 || (impl[120] & 1) == 0)
          {
            __assert_rtn("[AVAudioPCMBuffer initWithPCMFormat:bufferListNoCopy:deallocator:]", "AVAudioBuffer.mm", 372, "!_imp->OwnsMemory() && _imp->_externalABL.has_value()");
          }
        }

        goto LABEL_49;
      }
    }

    v37 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v38 = *(v21 + 3);
    *buf = 136316418;
    v44 = "AVAudioBuffer.mm";
    v45 = 1024;
    v46 = 291;
    v47 = 1024;
    *v48 = v18;
    *&v48[4] = 1024;
    *&v48[6] = v38;
    *v49 = 1024;
    *&v49[2] = v18 - 1;
    LOWORD(v50) = 1024;
    *(&v50 + 2) = mDataByteSize;
    v27 = "%25s:%-5d mBuffers[%u].mDataByteSize (%u) does not match the previous mBuffers[%u].mDataByteSize (%u)";
    v28 = v37;
    v29 = 42;
    goto LABEL_47;
  }

  v32 = gAVAudioBufferLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v44 = "AVAudioBuffer.mm";
    v45 = 1024;
    v46 = 281;
    v47 = 1024;
    *v48 = 0;
    v27 = "%25s:%-5d mBuffers[0].mDataByteSize (%u) should be non-zero";
LABEL_46:
    v28 = v32;
    v29 = 24;
    goto LABEL_47;
  }

LABEL_48:

  v24 = 0;
LABEL_49:
  v35 = *MEMORY[0x1E69E9840];
  return v24;
}

- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format frameCapacity:(AVAudioFrameCount)frameCapacity
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = [(AVAudioFormat *)format streamDescription];
  v8 = *&v7->mBytesPerPacket;
  v20 = *&v7->mSampleRate;
  v21 = v8;
  v22 = *&v7->mBitsPerChannel;
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v24 = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioBuffer.mm";
      v29 = 1024;
      v30 = 312;
      v31 = 2080;
      v32 = "[AVAudioPCMBuffer initWithPCMFormat:frameCapacity:]";
      v33 = 2080;
      v34 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  v10 = DWORD2(v21);
  if (!DWORD2(v21))
  {
    v11 = gAVAudioBufferLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "AVAudioBuffer.mm";
      v25 = 1024;
      v26 = 315;
      v12 = "%25s:%-5d format has zero bytes per frame";
      goto LABEL_13;
    }

LABEL_14:

    v13 = 0;
    goto LABEL_21;
  }

  if (((DWORD2(v21) * frameCapacity) & 0xFFFFFFFF00000000) != 0)
  {
    v11 = gAVAudioBufferLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "AVAudioBuffer.mm";
      v25 = 1024;
      v26 = 322;
      v12 = "%25s:%-5d buffer byte capacity cannot be represented by an uint32_t";
LABEL_13:
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v19.receiver = self;
  v19.super_class = AVAudioPCMBuffer;
  v14 = [(AVAudioBuffer *)&v19 initWithFormat:format byteCapacity:DWORD2(v21) * frameCapacity];
  v13 = v14;
  if (v14)
  {
    *(v14->super._impl + 1) = 0;
    *(v14->super._impl + 6) = v10;
    *(v14->super._impl + 5) = frameCapacity;
    *(v14->super._impl + 4) = 0;
    if ((BYTE12(v20) & 0x20) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = HIDWORD(v21);
    }

    *(v14->super._impl + 7) = v15;
    impl = v13->super._impl;
    if (impl[56] != 1 || impl[120] == 1)
    {
      __assert_rtn("[AVAudioPCMBuffer initWithPCMFormat:frameCapacity:]", "AVAudioBuffer.mm", 337, "_imp->OwnsMemory() && !_imp->_externalABL.has_value()");
    }
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

@end