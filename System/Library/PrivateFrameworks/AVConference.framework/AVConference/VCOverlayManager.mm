@interface VCOverlayManager
@end

@implementation VCOverlayManager

void *___VCOverlayManager_sharedOverlay_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v0;
      v8 = 2080;
      v9 = "_VCOverlayManager_sharedOverlay_block_invoke";
      v10 = 1024;
      v11 = 28;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] creating shared VCOverlayManager", &v6, 0x1Cu);
    }
  }

  result = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00404905ED03uLL);
  _VCOverlayManager_sharedOverlay__overlayManager = result;
  if (result)
  {
    *_VCOverlayManager_sharedOverlay__overlayManager = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCOverlayManager.stateQueue", 0, CustomRootQueue);
    v5 = _VCOverlayManager_sharedOverlay__overlayManager;
    *(_VCOverlayManager_sharedOverlay__overlayManager + 8) = v4;
    *(v5 + 20) = _VCOverlayManager_configurationFromCurrentDefaults();
    return VCRegisterSignalHandler("VCOverlayManager_handlerCode_reload", &__block_literal_global_30_0);
  }

  return result;
}

void __VCOverlayManager_registerOverlayForToken_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!CFDictionaryContainsKey(**(a1 + 48), *(a1 + 56)))
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(VCPixelBufferOverlay);
    v19 = xmmword_1DBD48FF8;
    v20 = xmmword_1DBD49008;
    v18[1] = xmmword_1DBD48FD8;
    v18[2] = xmmword_1DBD48FE8;
    v18[0] = xmmword_1DBD48FC8;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v7 = *(a1 + 32);
    v8 = *(*(v7 + 8) + 40);
    if (v8)
    {
      [v8 currentDetails];
      v7 = *(a1 + 32);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      memset(v18, 0, sizeof(v18));
    }

    *(v18 + 12) = *(*(a1 + 48) + 20);
    v9 = *(*(v7 + 8) + 40);
    *&v14[32] = v18[2];
    v15 = v19;
    v16 = v20;
    v17 = v21;
    *v14 = v18[0];
    *&v14[16] = v18[1];
    [v9 setCurrentDetails:v14];
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      CFDictionaryAddValue(**(a1 + 48), *(a1 + 56), *(a1 + 72));
      *(*(*(a1 + 40) + 8) + 24) = CFDictionaryContainsKey(**(a1 + 48), *(a1 + 56)) != 0;
      CFDictionaryAddValue(*(a1 + 72), @"vcpixelbufferoverlay", *(*(*(a1 + 32) + 8) + 40));
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = *(a1 + 64);
      *v14 = 136315906;
      *&v14[4] = v10;
      *&v14[12] = 2080;
      *&v14[14] = "VCOverlayManager_registerOverlayForToken_block_invoke";
      *&v14[22] = 1024;
      *&v14[24] = 135;
      *&v14[28] = 2048;
      *&v14[30] = v11;
      v5 = " [%s] %s:%d [VCOverlayManager] overlay created with token=%ld";
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v13 = *(a1 + 64);
      *v14 = 136315906;
      *&v14[4] = v12;
      *&v14[12] = 2080;
      *&v14[14] = "VCOverlayManager_registerOverlayForToken_block_invoke";
      *&v14[22] = 1024;
      *&v14[24] = 129;
      *&v14[28] = 2048;
      *&v14[30] = v13;
      v5 = " [%s] %s:%d [VCOverlayManager] unable to create VCPixelBufferOverlay for token=%ld";
    }

    v6 = v14;
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      LODWORD(v18[0]) = 136315906;
      *(v18 + 4) = v2;
      WORD6(v18[0]) = 2080;
      *(v18 + 14) = "VCOverlayManager_registerOverlayForToken_block_invoke";
      WORD3(v18[1]) = 1024;
      DWORD2(v18[1]) = 137;
      WORD6(v18[1]) = 2048;
      *(&v18[1] + 14) = v4;
      v5 = " [%s] %s:%d [VCOverlayManager] overlay already exists for token=%ld";
      v6 = v18;
LABEL_16:
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 0x26u);
    }
  }
}

void __VCOverlayManager_unregisterOverlayForToken_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, (a1 + 40));
  if (CFDictionaryContainsKey(**(a1 + 48), v2))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "VCOverlayManager_unregisterOverlayForToken_block_invoke";
        v10 = 1024;
        v11 = 155;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] releasing overlay with token=%ld", &v6, 0x26u);
      }
    }

    CFDictionaryRemoveValue(**(a1 + 48), v2);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __VCOverlayManager_createOverlaySourceForToken_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = _VCOverlayManager_AddSourceToDictionary(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        v23 = 136316162;
        v24 = v4;
        v25 = 2080;
        v26 = "VCOverlayManager_createOverlaySourceForToken_block_invoke";
        v27 = 1024;
        v28 = 182;
        v29 = 2048;
        v30 = v6;
        v31 = 1024;
        v32 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] source successfully added with token=%ld and type=%d", &v23, 0x2Cu);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(*(a1 + 40), *(a1 + 48));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      Value = CFDictionaryGetValue(*(a1 + 40), @"vcpixelbufferoverlay");
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315650;
          v24 = v9;
          v25 = 2080;
          v26 = "VCOverlayManager_createOverlaySourceForToken_block_invoke";
          v27 = 1024;
          v28 = 190;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] Adding source to overlay", &v23, 0x1Cu);
        }
      }

      if (Value && VCPixelBufferOverlay_updateSourceForType(Value, *(*(*(a1 + 32) + 8) + 24)))
      {
        CFRetain(*(*(*(a1 + 32) + 8) + 24));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 56);
            v14 = *(a1 + 64);
            v23 = 136316162;
            v24 = v11;
            v25 = 2080;
            v26 = "VCOverlayManager_createOverlaySourceForToken_block_invoke";
            v27 = 1024;
            v28 = 193;
            v29 = 2048;
            v30 = v13;
            v31 = 1024;
            v32 = v14;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] overlay successfully updated with token=%ld and type=%d", &v23, 0x2Cu);
          }
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v21 = *(a1 + 56);
            v22 = *(a1 + 64);
            v23 = 136316162;
            v24 = v19;
            v25 = 2080;
            v26 = "VCOverlayManager_createOverlaySourceForToken_block_invoke";
            v27 = 1024;
            v28 = 195;
            v29 = 2048;
            v30 = v21;
            v31 = 1024;
            v32 = v22;
            _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d [VCOverlayManager] failed to add source with token=%ld and type=%d", &v23, 0x2Cu);
          }
        }

        CFDictionaryRemoveValue(*(a1 + 40), *(a1 + 48));
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v23 = 136316162;
      v24 = v15;
      v25 = 2080;
      v26 = "VCOverlayManager_createOverlaySourceForToken_block_invoke";
      v27 = 1024;
      v28 = 179;
      v29 = 2048;
      v30 = v17;
      v31 = 1024;
      v32 = v18;
      _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d [VCOverlayManager] adding source to dictionary failed with token=%ld and type=%d", &v23, 0x2Cu);
    }
  }
}

void __VCOverlayManager_releaseOverlaySourceWithToken_block_invoke(uint64_t a1)
{
  if (CFDictionaryGetValue(*(a1 + 40), *(a1 + 48)))
  {
    CFDictionaryRemoveValue(*(a1 + 40), *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

@end