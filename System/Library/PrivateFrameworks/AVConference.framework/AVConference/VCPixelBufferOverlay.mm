@interface VCPixelBufferOverlay
- (VCPixelBufferOverlay)init;
- (void)dealloc;
- (void)init;
@end

@implementation VCPixelBufferOverlay

- (VCPixelBufferOverlay)init
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCPixelBufferOverlay;
  v2 = [(VCObject *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v2->_transform.a = *MEMORY[0x1E695EFD0];
    *&v2->_transform.c = v5;
    *&v2->_transform.tx = *(v4 + 32);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 16);
    v2->_textFrame.origin = *MEMORY[0x1E695F058];
    v2->_textFrame.size = v10;
    v2->_stringAttributes = 0;
    v2->_mutableDisplayText = CFStringCreateMutable(*MEMORY[0x1E695E480], 1000);
    v8 = *MEMORY[0x1E695F060];
    v3->_currentVRADimensions = *MEMORY[0x1E695F060];
    v3->_currentLongestLine = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    *&v14[48] = unk_1DBD4F0F0;
    *v14 = xmmword_1DBD4F0C0;
    memset(&v14[16], 255, 32);
    v13 = xmmword_1DBD4F0B0;
    [(VCPixelBufferOverlay *)v3 currentDetails];
    LOWORD(v13) = 257;
    *(&v13 + 4) = 0;
    *&v14[24] = v10;
    *&v14[8] = v9;
    *&v14[40] = v8;
    *&v14[56] = 0;
    v11[2] = *&v14[16];
    v11[3] = *&v14[32];
    v11[4] = *(&v8 + 1);
    v12 = v15;
    v11[0] = v13;
    v11[1] = *v14;
    [(VCPixelBufferOverlay *)v3 setCurrentDetails:v11];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v3->_stateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCPixelBufferOverlay.stateQueue", 0, CustomRootQueue);
  }

  else
  {
    [VCPixelBufferOverlay init];
  }

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  stringAttributes = self->_stringAttributes;
  if (stringAttributes)
  {
    CFRelease(stringAttributes);
  }

  mutableDisplayText = self->_mutableDisplayText;
  if (mutableDisplayText)
  {
    CFRelease(mutableDisplayText);
  }

  audioInfo = self->_audioInfo;
  if (audioInfo)
  {
    CFRelease(audioInfo);
  }

  videoInfo = self->_videoInfo;
  if (videoInfo)
  {
    CFRelease(videoInfo);
  }

  networkInfo = self->_networkInfo;
  if (networkInfo)
  {
    CFRelease(networkInfo);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v9.receiver = self;
  v9.super_class = VCPixelBufferOverlay;
  [(VCObject *)&v9 dealloc];
}

void __VCPixelBufferOverlay_updateSourceForType_block_invoke(uint64_t a1)
{
  CFRetain(*(a1 + 48));
  v2 = *(a1 + 48);
  v3 = *(v2 + 28);
  if (v3 == 2)
  {
    v4 = *(a1 + 32);
    v5 = 200;
    if (*(v4 + 200))
    {
      CFRelease(*(v4 + 200));
      v2 = *(a1 + 48);
      v4 = *(a1 + 32);
      v5 = 200;
    }

    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 192))
    {
      CFRelease(*(v6 + 192));
      v2 = *(a1 + 48);
      v6 = *(a1 + 32);
    }

    *(v6 + 176) = *(v2 + 16);
    *(*(a1 + 32) + 192) = v2;
  }

  else
  {
    if (!*(v2 + 28))
    {
      v4 = *(a1 + 32);
      v5 = 184;
      if (*(v4 + 184))
      {
        CFRelease(*(v4 + 184));
        v2 = *(a1 + 48);
        v4 = *(a1 + 32);
        v5 = 184;
      }

LABEL_11:
      *(v4 + v5) = v2;
      return;
    }

    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 62;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to initialize VCPixelBufferOverlay", &v2, 0x1Cu);
    }
  }
}

@end