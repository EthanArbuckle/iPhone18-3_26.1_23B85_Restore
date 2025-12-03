@interface AVAudioSharedPCMBuffer
- (AVAudioSharedBufferToken)sharedBufferToken;
- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format frameCapacity:(unsigned int)capacity;
- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format sharedBufferToken:(id)token;
@end

@implementation AVAudioSharedPCMBuffer

- (AVAudioSharedBufferToken)sharedBufferToken
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [AVAudioSharedBufferToken alloc];
  v4 = *(self->super.super._impl + 17);
  token = 0;
  v5 = task_create_identity_token(*MEMORY[0x1E69E9A60], &token);
  if (v5)
  {
    if (AVSharedMemoryLog(void)::once != -1)
    {
      dispatch_once(&AVSharedMemoryLog(void)::once, &__block_literal_global_1092);
    }

    v6 = *AVSharedMemoryLog(void)::category;
    if (os_log_type_enabled(*AVSharedMemoryLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "unilaterally_billed_shared_memory.mm";
      v15 = 1024;
      v16 = 131;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on task_create_identity_token: %u", buf, 0x18u);
    }

    v7 = 0;
  }

  else
  {
    v7 = token;
  }

  v11 = 0;
  v8 = [(AVAudioSharedBufferToken *)v3 initWithSurface:v4 taskToken:v7];
  caulk::mach::mach_port::~mach_port(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format sharedBufferToken:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  streamDescription = [format streamDescription];
  v5 = *(streamDescription + 16);
  v9[0] = *streamDescription;
  v9[1] = v5;
  v10 = *(streamDescription + 32);
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioBuffer.mm";
      v17 = 1024;
      v18 = 706;
      v19 = 2080;
      v20 = "[AVAudioSharedPCMBuffer initWithPCMFormat:sharedBufferToken:]";
      v21 = 2080;
      v22 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  buf[0] = 0;
  std::vector<char>::vector[abi:ne200100](&__p);
}

- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format frameCapacity:(unsigned int)capacity
{
  v22 = *MEMORY[0x1E69E9840];
  streamDescription = [format streamDescription];
  v5 = *(streamDescription + 16);
  v8[0] = *streamDescription;
  v8[1] = v5;
  v9 = *(streamDescription + 32);
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioBuffer.mm";
      v16 = 1024;
      v17 = 671;
      v18 = 2080;
      v19 = "[AVAudioSharedPCMBuffer initWithPCMFormat:frameCapacity:]";
      v20 = 2080;
      v21 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  v10[0] = 0;
  std::vector<char>::vector[abi:ne200100](buf);
}

@end