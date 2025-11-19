@interface _LTAudioDecoder
+ (id)sharedInstance;
- (AudioStreamBasicDescription)get48khzPCMDescription;
- (OpaqueAudioConverter)_audioDecoderFrom:(AudioStreamBasicDescription *)a3 to:(AudioStreamBasicDescription *)a4;
- (id)beginChunkDecoderForStreamDescription:(AudioStreamBasicDescription *)a3;
- (id)beginChunkDecoderTo48KhzPCMForStreamDescription:(AudioStreamBasicDescription *)a3;
- (id)decodeChunk:(id)a3 outError:(id *)a4;
- (id)decodeChunks:(id)a3 from:(AudioStreamBasicDescription *)a4 to:(AudioStreamBasicDescription *)a5 outError:(id *)a6;
- (id)decodeTo48KHzPCMFromChunks:(id)a3 from:(AudioStreamBasicDescription *)a4 outError:(id *)a5;
- (id)extractAudioChunksFromOpusWithData:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5;
- (void)dealloc;
@end

@implementation _LTAudioDecoder

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_LTAudioDecoder sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

- (OpaqueAudioConverter)_audioDecoderFrom:(AudioStreamBasicDescription *)a3 to:(AudioStreamBasicDescription *)a4
{
  p_decoder = &self->_decoder;
  result = self->_decoder;
  if (!result)
  {
    v9 = AudioConverterNew(a3, a4, p_decoder);
    if (v9)
    {
      v10 = v9;
      v11 = _LTOSLogTTS();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_LTAudioDecoder _audioDecoderFrom:v11 to:v10];
      }

      return 0;
    }

    else
    {
      v12 = *&a3->mSampleRate;
      v13 = *&a3->mBytesPerPacket;
      *&self->_fromASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
      *&self->_fromASBD.mSampleRate = v12;
      *&self->_fromASBD.mBytesPerPacket = v13;
      v14 = *&a4->mSampleRate;
      v15 = *&a4->mBytesPerPacket;
      *&self->_toASBD.mBitsPerChannel = *&a4->mBitsPerChannel;
      *&self->_toASBD.mBytesPerPacket = v15;
      *&self->_toASBD.mSampleRate = v14;
      return self->_decoder;
    }
  }

  return result;
}

- (id)decodeChunks:(id)a3 from:(AudioStreamBasicDescription *)a4 to:(AudioStreamBasicDescription *)a5 outError:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = *&a5->mBitsPerChannel;
  v12 = *&a5->mBytesPerPacket;
  *&self->_toASBD.mSampleRate = *&a5->mSampleRate;
  *&self->_toASBD.mBytesPerPacket = v12;
  *&self->_toASBD.mBitsPerChannel = v11;
  v13 = *&a4->mBytesPerPacket;
  v38[0] = *&a4->mSampleRate;
  v38[1] = v13;
  v39 = *&a4->mBitsPerChannel;
  v14 = [(_LTAudioDecoder *)self beginChunkDecoderForStreamDescription:v38];
  v15 = v14;
  if (a6 && v14)
  {
    v16 = v14;
    v17 = 0;
    *a6 = v15;
  }

  else
  {
    mFramesPerPacket = a4->mFramesPerPacket;
    v19 = 2 * mFramesPerPacket * [v10 count];
    v17 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v19];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v32 = v10;
      v23 = *v35;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          v26 = [(_LTAudioDecoder *)self decodeChunk:v25 outError:&v33, v32];
          v27 = v33;
          if (v27)
          {
            v28 = v27;

            goto LABEL_14;
          }

          [v17 appendData:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v28 = 0;
LABEL_14:
      v10 = v32;
    }

    else
    {
      v28 = 0;
    }

    [(_LTAudioDecoder *)self endChunkDecoding];
    if (v28)
    {
      if (a6)
      {
        v29 = v28;
        *a6 = v28;
      }

      v17 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)decodeTo48KHzPCMFromChunks:(id)a3 from:(AudioStreamBasicDescription *)a4 outError:(id *)a5
{
  v8 = a3;
  [(_LTAudioDecoder *)self get48khzPCMDescription];
  v9 = *&a4->mBytesPerPacket;
  v12[0] = *&a4->mSampleRate;
  v12[1] = v9;
  v13 = *&a4->mBitsPerChannel;
  v10 = [(_LTAudioDecoder *)self decodeChunks:v8 from:v12 to:v14 outError:a5];

  return v10;
}

- (id)beginChunkDecoderForStreamDescription:(AudioStreamBasicDescription *)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = *&a3->mBytesPerPacket;
  v12[0] = *&a3->mSampleRate;
  v12[1] = v3;
  v13 = *&a3->mBitsPerChannel;
  v4 = *&self->_toASBD.mBytesPerPacket;
  v10[0] = *&self->_toASBD.mSampleRate;
  v10[1] = v4;
  v11 = *&self->_toASBD.mBitsPerChannel;
  if ([(_LTAudioDecoder *)self _audioDecoderFrom:v12 to:v10])
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA470];
    v15[0] = @"Failed to create opus decoder";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = [v6 errorWithDomain:@"TranslationErrorDomain" code:24 userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)beginChunkDecoderTo48KhzPCMForStreamDescription:(AudioStreamBasicDescription *)a3
{
  [(_LTAudioDecoder *)self get48khzPCMDescription];
  v5 = v10;
  *&self->_toASBD.mSampleRate = v9;
  *&self->_toASBD.mBytesPerPacket = v5;
  *&self->_toASBD.mBitsPerChannel = v11;
  v6 = *&a3->mBytesPerPacket;
  v9 = *&a3->mSampleRate;
  v10 = v6;
  v11 = *&a3->mBitsPerChannel;
  v7 = [(_LTAudioDecoder *)self beginChunkDecoderForStreamDescription:&v9];

  return v7;
}

- (id)decodeChunk:(id)a3 outError:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * self->_fromASBD.mFramesPerPacket];
  *&outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mData = [v7 mutableBytes];
  outOutputData.mBuffers[0].mNumberChannels = 1;
  outOutputData.mBuffers[0].mDataByteSize = [v7 length];
  ioOutputDataPacketSize = self->_fromASBD.mFramesPerPacket;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 1;
  decoder = self->_decoder;
  inInputDataProcUserData[0] = MEMORY[0x277D85DD0];
  inInputDataProcUserData[1] = 3221225472;
  inInputDataProcUserData[2] = __40___LTAudioDecoder_decodeChunk_outError___block_invoke;
  inInputDataProcUserData[3] = &unk_278B6C8D0;
  v26 = v29;
  v28 = &v38;
  v9 = v6;
  v25 = v9;
  v27 = v30;
  v10 = AudioConverterFillComplexBuffer(decoder, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  if (v10 != 1836086393 && v10)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v10];
    v14 = [v18 stringWithFormat:@"Could not finish decoding, res %@", v19];

    v20 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA470];
    v35 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v17 = [v20 errorWithDomain:@"TranslationErrorDomain" code:24 userInfo:v16];
  }

  else
  {
    v11 = 0;
    if (!ioOutputDataPacketSize)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 0;
    if (!outOutputData.mNumberBuffers)
    {
      goto LABEL_13;
    }

    v13 = 2 * ioOutputDataPacketSize;
    if (v13 <= outOutputData.mBuffers[0].mDataByteSize)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:outOutputData.mBuffers[0].mData length:?];
      v12 = 0;
      goto LABEL_13;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"decoder gave us %d bytes bytes but we really only expected %d", v13, outOutputData.mBuffers[0].mDataByteSize];
    v15 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA470];
    v37 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v17 = [v15 errorWithDomain:@"TranslationErrorDomain" code:24 userInfo:v16];
  }

  v12 = v17;

  v11 = 0;
  if (a4 && v12)
  {
    v21 = v12;
    v11 = 0;
    *a4 = v12;
  }

LABEL_13:

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  v4.receiver = self;
  v4.super_class = _LTAudioDecoder;
  [(_LTAudioDecoder *)&v4 dealloc];
}

- (AudioStreamBasicDescription)get48khzPCMDescription
{
  *&retstr->mSampleRate = xmmword_23AB4CED0;
  *&retstr->mBytesPerPacket = unk_23AB4CEE0;
  *&retstr->mBitsPerChannel = 16;
  return self;
}

- (id)extractAudioChunksFromOpusWithData:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 length];
  if (a4 && v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0;
    v18 = 0;
    if (a4 >= 1)
    {
      v11 = 0;
      do
      {
        [v8 getBytes:&v17 range:{v11, 16}];
        v12 = MEMORY[0x277CBEA90];
        v13 = [v7 bytes];
        v14 = [v12 dataWithBytes:v13 + v17 length:HIDWORD(v18)];
        [v10 addObject:v14];

        v11 += 16;
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    v15 = _LTOSLogTTS();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LTAudioDecoder extractAudioChunksFromOpusWithData:v15 packetCount:? packetDescriptions:?];
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)_audioDecoderFrom:(void *)a1 to:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 vs_stringFrom4CC:a2];
  v7 = 138543362;
  v8 = v5;
  _os_log_error_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_ERROR, "Could not create Opus decoder: %{public}@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end