@interface AVAudioCompressedBuffer
- (AVAudioCompressedBuffer)initWithFormat:(AVAudioFormat *)format packetCapacity:(AVAudioPacketCount)packetCapacity maximumPacketSize:(NSInteger)maximumPacketSize;
- (void)data;
- (void)setPacketCount:(AVAudioPacketCount)packetCount;
@end

@implementation AVAudioCompressedBuffer

- (void)setPacketCount:(AVAudioPacketCount)packetCount
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->super._impl;
  if (impl[5] < packetCount)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 71;
      v12 = 2080;
      v13 = "AVAudioBuffer.mm";
      v14 = 1024;
      v15 = 637;
      v16 = 2080;
      v17 = "[AVAudioCompressedBuffer setPacketCount:]";
      v18 = 2080;
      v19 = "length <= _imp->_packetCapacity";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "length <= _imp->_packetCapacity"}];
    impl = self->super._impl;
  }

  impl[4] = packetCount;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)data
{
  impl = self->super._impl;
  if (*(impl + 56) == 1)
  {
    v3 = impl[6] + 48;
  }

  else
  {
    v3 = impl[12];
  }

  return *(v3 + 16);
}

- (AVAudioCompressedBuffer)initWithFormat:(AVAudioFormat *)format packetCapacity:(AVAudioPacketCount)packetCapacity maximumPacketSize:(NSInteger)maximumPacketSize
{
  v41 = *MEMORY[0x1E69E9840];
  streamDescription = [(AVAudioFormat *)format streamDescription];
  v10 = *&streamDescription->mBitsPerChannel;
  v11 = *&streamDescription->mBytesPerPacket;
  inSpecifier = *&streamDescription->mSampleRate;
  v26 = v11;
  v27 = v10;
  if (DWORD2(inSpecifier) == 1634492791 || DWORD2(inSpecifier) == 1970037111 || DWORD2(inSpecifier) == 1819304813)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v30 = "AVAEInternal.h";
      v31 = 1024;
      v32 = 71;
      v33 = 2080;
      v34 = "AVAudioBuffer.mm";
      v35 = 1024;
      v36 = 595;
      v37 = 2080;
      v38 = "[AVAudioCompressedBuffer initWithFormat:packetCapacity:maximumPacketSize:]";
      v39 = 2080;
      v40 = "!(fmt.IsLinearPCM() || fmt.mFormatID == kAudioFormatALaw || fmt.mFormatID == kAudioFormatULaw)";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!(fmt.IsLinearPCM() || fmt.mFormatID == kAudioFormatALaw || fmt.mFormatID == kAudioFormatULaw)"}];
  }

  v15 = v26;
  if (v26)
  {
    v16 = v26;
  }

  else
  {
    v16 = maximumPacketSize;
  }

  if (!v16)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v30 = "AVAEInternal.h";
      v31 = 1024;
      v32 = 71;
      v33 = 2080;
      v34 = "AVAudioBuffer.mm";
      v35 = 1024;
      v36 = 599;
      v37 = 2080;
      v38 = "[AVAudioCompressedBuffer initWithFormat:packetCapacity:maximumPacketSize:]";
      v39 = 2080;
      v40 = "maximumPacketSize != 0";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "maximumPacketSize != 0"}];
  }

  v24.receiver = self;
  v24.super_class = AVAudioCompressedBuffer;
  packetCapacity = [(AVAudioBuffer *)&v24 initWithFormat:format byteCapacity:v16 * packetCapacity];
  v19 = packetCapacity;
  if (packetCapacity)
  {
    *(packetCapacity->super._impl + 6) = v16;
    *(packetCapacity->super._impl + 5) = packetCapacity;
    *(packetCapacity->super._impl + 4) = 0;
    if (v15)
    {
      v20 = 0;
      v21 = 8;
LABEL_29:
      *(v19->super._impl + v21) = v20;
      goto LABEL_30;
    }

    *(packetCapacity->super._impl + 1) = malloc_type_calloc(packetCapacity, 0x10uLL, 0x1000040451B5BE8uLL);
    ioPropertyDataSize = 4;
    *buf = 0;
    if (!AudioFormatGetProperty(0x66646570u, 0x28u, &inSpecifier, &ioPropertyDataSize, buf) && *buf)
    {
      v20 = malloc_type_calloc(packetCapacity, 0x10uLL, 0x1000040451B5BE8uLL);
      v21 = 128;
      goto LABEL_29;
    }
  }

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

@end