uint64_t AUIOCloseHandle()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v2 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v3;
      v19 = 2080;
      v20 = "AUIOCloseHandle";
      v21 = 1024;
      v22 = 1206;
      v23 = 2048;
      v24 = v0;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Destroying AUIO=%p", &v17, 0x26u);
    }
  }

  if (!v0)
  {
    return 2149253122;
  }

  CheckOutHandleDebug();
  VCAudioToolbox_AudioComponentInstanceDispose();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v0 + 48);
      v17 = 136316162;
      v18 = v5;
      v19 = 2080;
      v20 = "AUIOCloseHandle";
      v21 = 1024;
      v22 = 1236;
      v23 = 2048;
      v24 = v0;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Disposed AUIO=%p unit=%p", &v17, 0x30u);
    }
  }

  pthread_mutex_destroy((v0 + 264));
  v8 = *(v0 + 400);
  if (v8)
  {
    free(v8);
  }

  VCAudioBufferList_Destroy((v0 + 248));
  VCAudioBufferList_Destroy((v0 + 240));
  v9 = *(v0 + 336);
  if (v9)
  {
    MEMORY[0x1E128B440](v9, 0x1000C407AA769CALL);
  }

  v10 = *(v0 + 360);
  if (v10)
  {
    MEMORY[0x1E128B440](v10, 0x1000C407AA769CALL);
  }

  v11 = *(v0 + 480);
  if (v11)
  {
    PacketThread_Destroy(v11);
  }

  v12 = *(v0 + 576);
  if (v12)
  {
    dispatch_source_cancel(v12);
    v13 = *(v0 + 576);
    if (v13)
    {
      dispatch_release(v13);
      *(v0 + 576) = 0;
    }
  }

  *(v0 + 488) = 0;
  if (VCDefaults_GetBoolValueForKey(@"forceEnableAudioMockInputPathForAppleTV", 0))
  {
    [+[VCAudioToolboxAudioComponentMock sharedInstance](VCAudioToolboxAudioComponentMock stop];
    [+[VCCoreAudio_AudioUnitMock sharedInstance](VCCoreAudio_AudioUnitMock stop];
  }

  free(*(v0 + 456));
  free(v0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v2;
    result = os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v17 = 136315650;
    v18 = v14;
    v19 = 2080;
    v20 = "AUIOCloseHandle";
    v21 = 1024;
    v22 = 1276;
    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO Closed Handle.", &v17, 0x1Cu);
  }

  return 0;
}

uint64_t AUIOSuspend(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = 2149253142;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 264));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v6;
        v22 = 2080;
        v23 = "AUIOSuspend";
        v24 = 1024;
        v25 = 1751;
        v26 = 2048;
        v27 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Stopping the audio unit.", &v20, 0x26u);
      }
    }

    if (!*(v5 + 48))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AUIOSuspend_cold_3();
        }
      }

      goto LABEL_34;
    }

    if (*(v5 + 233))
    {
      v8 = VCAudioUnit_AudioOutputUnitStop();
      if (v8)
      {
        v9 = v8;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSuspend_cold_1();
          }
        }

        v3 = v9 | 0xA01B0000;
LABEL_34:
        pthread_mutex_unlock((v5 + 264));
        CheckOutHandleDebug();
        return v3;
      }

      v13 = *(v5 + 480);
      if (v13)
      {
        PacketThread_Destroy(v13);
        *(v5 + 480) = 0;
      }

      *(v5 + 233) = 0;
      if (!a2)
      {
LABEL_30:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v5 + 48);
            v20 = 136316162;
            v21 = v16;
            v22 = 2080;
            v23 = "AUIOSuspend";
            v24 = 1024;
            v25 = 1780;
            v26 = 2048;
            v27 = v5;
            v28 = 2048;
            v29 = v18;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p unit=%p uninitialized", &v20, 0x30u);
          }
        }

        v3 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v5 + 48);
          v20 = 136316162;
          v21 = v10;
          v22 = 2080;
          v23 = "AUIOSuspend";
          v24 = 1024;
          v25 = 1768;
          v26 = 2048;
          v27 = v5;
          v28 = 2048;
          v29 = v12;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p unit=%p stopped", &v20, 0x30u);
        }
      }

      if (!a2)
      {
        goto LABEL_30;
      }
    }

    if (*(v5 + 232))
    {
      v14 = VCAudioUnit_AudioUnitUninitialize();
      if (v14)
      {
        v15 = v14;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSuspend_cold_2();
          }
        }

        v3 = v15 | 0xA01B0000;
      }

      else
      {
        v3 = 0;
        *(v5 + 232) = 0;
      }

      goto LABEL_34;
    }

    goto LABEL_30;
  }

  return 2149253122;
}

uint64_t AUIOResume()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = 2149253122;
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    pthread_mutex_lock((v1 + 264));
    if (*(v2 + 232))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(v2 + 233);
          v13 = 136316162;
          v14 = v3;
          v15 = 2080;
          v16 = "AUIOResume";
          v17 = 1024;
          v18 = 1801;
          v19 = 2048;
          v20 = v2;
          v21 = 1024;
          v22 = v5;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p AUIO resume pAUIO->audioUnitIsStarted=%d", &v13, 0x2Cu);
        }
      }

      if (*(v2 + 233))
      {
        v0 = 0;
      }

      else
      {
        v7 = _AUIOStartPacketThread(v2);
        if (v7 < 0)
        {
          AUIOResume_cold_2(v7, &v13);
          v0 = v13;
        }

        else
        {
          *(v2 + 464) = 0x7FEFFFFFFFFFFFFFLL;
          v8 = VCAudioUnit_AudioOutputUnitStart();
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (v8)
          {
            if (ErrorLogLevelForModule >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                AUIOResume_cold_1();
              }
            }

            v0 = v8 | 0xA01B0000;
            v10 = *(v2 + 480);
            if (v10)
            {
              PacketThread_Destroy(v10);
              *(v2 + 480) = 0;
            }
          }

          else
          {
            if (ErrorLogLevelForModule >= 7)
            {
              v11 = VRTraceErrorLogLevelToCSTR();
              v12 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v13 = 136315906;
                v14 = v11;
                v15 = 2080;
                v16 = "AUIOResume";
                v17 = 1024;
                v18 = 1815;
                v19 = 1024;
                LODWORD(v20) = 1815;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AUIO/AUIO.mm:%d: AudioOutputUnitStart completed", &v13, 0x22u);
              }
            }

            v0 = 0;
            *(v2 + 233) = 1;
          }
        }
      }
    }

    else
    {
      v0 = 2149253176;
    }

    pthread_mutex_unlock((v2 + 264));
    CheckOutHandleDebug();
  }

  return v0;
}

uint64_t _AUIOStartPacketThread(uint64_t a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 472))
  {
    return 0;
  }

  if (*(a1 + 480))
  {
    v2 = 2149253121;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AUIOStartPacketThread();
      }
    }

    return v2;
  }

  SerializedSize = VCAudioBufferList_GetSerializedSize(*(a1 + 240));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZL22_AUIOStartPacketThreadP7tagAUIO_block_invoke;
  v6[3] = &__block_descriptor_40_e15_v28__0_v8_16I24l;
  v6[4] = a1;
  v4 = PacketThread_Create(SerializedSize, 0, 0x10u, 19, "com.apple.AVConference.auio", v6);
  *(a1 + 480) = v4;
  if (v4)
  {
    return 0;
  }

  v2 = 2149253121;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _AUIOStartPacketThread();
    }
  }

  return v2;
}

uint64_t AUIOSetupFormats(double a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9)
{
  v174 = *MEMORY[0x1E69E9840];
  v17 = 2149253123;
  v18 = CheckInHandleDebug();
  if (v18)
  {
    v19 = v18;
    v158 = a6;
    pthread_mutex_lock((v18 + 264));
    v162 = a8;
    v163 = a7;
    keyExistsAndHasValidFormat = 0;
    v159 = [*(v19 + 616) audioSessionId];
    v21 = *(a3 + 16);
    v20 = *(a3 + 32);
    *(v19 + 136) = *a3;
    *(v19 + 152) = v21;
    *(v19 + 168) = v20;
    if (a4)
    {
      v22 = *a4;
      v23 = a4[1];
      *(v19 + 216) = a4[2];
      *(v19 + 200) = v23;
      *(v19 + 184) = v22;
    }

    v161 = -1431655766;
    if (*(v19 + 235))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "AUIOSetupMic";
          *&buf[22] = 1024;
          *&buf[24] = 1303;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          *&buf[38] = 1024;
          *&buf[40] = 0;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Setting up mic reinitialize=%d", buf, 0x2Cu);
        }
      }

      v26 = *(v19 + 240);
      v27 = *(v19 + 152);
      *(v19 + 96) = *(v19 + 136);
      *(v19 + 112) = v27;
      *(v19 + 128) = *(v19 + 168);
      if (v26)
      {
        VCAudioBufferList_Destroy((v19 + 240));
      }

      v28 = *(v19 + 112);
      *buf = *(v19 + 96);
      *&buf[16] = v28;
      *&buf[32] = *(v19 + 128);
      if (!VCAudioBufferList_Allocate(buf, 5 * *(v19 + 176), (v19 + 240)))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSetupFormats_cold_1();
          }
        }

        goto LABEL_191;
      }

      v156 = a9;
      v157 = a3;
      v29 = a5;
      v30 = *(v19 + 256);
      v31 = *(v19 + 408);
      v32 = *(v19 + 400);
      v33 = 5 * *(v19 + 176);
      *(v19 + 256) = v33;
      v34 = (*(v19 + 120) * v33);
      *(v19 + 408) = v34;
      *(v19 + 400) = malloc_type_realloc(v32, v34, 0x100004077774924uLL);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(v19 + 256);
          v38 = *(v19 + 408);
          v39 = *(v19 + 400);
          v40 = *(v19 + 412);
          *buf = 136317698;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = "_AUIOReallocBufferedMicSamples";
          *&buf[22] = 1024;
          *&buf[24] = 1290;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          *&buf[38] = 1024;
          *&buf[40] = v30;
          *&buf[44] = 1024;
          *&buf[46] = v37;
          *&buf[50] = 1024;
          *&buf[52] = v31;
          v166 = 1024;
          v167 = v38;
          v168 = 2048;
          v169 = v32;
          v170 = 2048;
          v171 = v39;
          v172 = 1024;
          v173 = v40;
          _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Reallocated the buffered mic sample buffer. prevMaxSampleSize=%d maxSampleSize=%d prevMaxByteSize=%u maxByteSize=%u prevBufferedMicSamples=0x%lx bufferedMicSamples=%p sampleCount=%d", buf, 0x58u);
        }
      }

      if (!*(v19 + 400))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSetupFormats_cold_2();
          }
        }

        goto LABEL_191;
      }

      FileUtil_PrintBasicDesc("MicOutFmt:", (v19 + 96));
      v41 = VCAudioUnit_AudioUnitSetProperty();
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v41)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v43;
            *&buf[12] = 2080;
            *&buf[14] = "AUIOSetupMic";
            *&buf[22] = 1024;
            *&buf[24] = 1348;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            *&buf[38] = 1024;
            *&buf[40] = v41;
            _os_log_error_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AUIO=%p AudioUnitSetProperty(MicOut) StreamFormat failed(%d)", buf, 0x2Cu);
          }
        }

        v17 = v41 | 0xA01B0000;
        goto LABEL_191;
      }

      a5 = v29;
      a3 = v157;
      a9 = v156;
      if (ErrorLogLevelForModule >= 7)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v45;
          *&buf[12] = 2080;
          *&buf[14] = "AUIOSetupMic";
          *&buf[22] = 1024;
          *&buf[24] = 1351;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioUnitProperty_StreamFormat kAudioUnitScope_Output set succeeded", buf, 0x26u);
        }
      }
    }

    if (*(v19 + 585) != 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v53;
          *&buf[12] = 2080;
          *&buf[14] = "AUIOSetupSpeaker";
          *&buf[22] = 1024;
          *&buf[24] = 1367;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          *&buf[38] = 1024;
          *&buf[40] = 0;
          _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Setting up speaker reinitialize=%d", buf, 0x2Cu);
        }
      }

      v55 = *(v19 + 248);
      v56 = *(v19 + 200);
      *(v19 + 56) = *(v19 + 184);
      *(v19 + 72) = v56;
      *(v19 + 88) = *(v19 + 216);
      if (v55)
      {
        VCAudioBufferList_Destroy((v19 + 248));
      }

      v57 = *(v19 + 72);
      *buf = *(v19 + 56);
      *&buf[16] = v57;
      *&buf[32] = *(v19 + 88);
      if (!VCAudioBufferList_Allocate(buf, *(v19 + 224), (v19 + 248)))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSetupFormats_cold_3();
          }
        }

        goto LABEL_191;
      }

      FileUtil_PrintBasicDesc("SpkrIn:", (v19 + 56));
      v58 = VCAudioUnit_AudioUnitSetProperty();
      v59 = VRTraceGetErrorLogLevelForModule();
      if (v58)
      {
        if (v59 >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSetupFormats_cold_4();
          }
        }

        goto LABEL_141;
      }

      if (v59 >= 7)
      {
        v60 = VRTraceErrorLogLevelToCSTR();
        v61 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v60;
          *&buf[12] = 2080;
          *&buf[14] = "AUIOSetupSpeaker";
          *&buf[22] = 1024;
          *&buf[24] = 1415;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAudioUnitProperty_StreamFormat kAudioUnitScope_Input set succeeded", buf, 0x26u);
        }
      }
    }

    if (!*(v19 + 584) && *(v19 + 585) != 1)
    {
      v161 = VCAudioUnit_AudioUnitSetProperty();
      v47 = VRTraceGetErrorLogLevelForModule();
      if (v161)
      {
        if (v47 < 5)
        {
          goto LABEL_57;
        }

        v48 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        *buf = 136316674;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "_AUIOSetPropertiesAndInitialize";
        *&buf[22] = 1024;
        *&buf[24] = 1572;
        *&buf[28] = 1024;
        *&buf[30] = v159;
        *&buf[34] = 1024;
        *&buf[36] = v161;
        *&buf[40] = 1040;
        *&buf[42] = 4;
        *&buf[46] = 2080;
        *&buf[48] = &v161;
        v50 = "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAudioOutputUnitProperty_AudioSessionID %d %d %.4s";
        v51 = v49;
        v52 = 56;
      }

      else
      {
        if (v47 < 7)
        {
          goto LABEL_57;
        }

        v62 = VRTraceErrorLogLevelToCSTR();
        v63 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        v64 = *(v19 + 48);
        *buf = 136316162;
        *&buf[4] = v62;
        *&buf[12] = 2080;
        *&buf[14] = "_AUIOSetPropertiesAndInitialize";
        *&buf[22] = 1024;
        *&buf[24] = 1574;
        *&buf[28] = 2048;
        *&buf[30] = v64;
        *&buf[38] = 1024;
        *&buf[40] = v159;
        v50 = "AUIO [%s] %s:%d Setting id of audio unit %p to %d";
        v51 = v63;
        v52 = 44;
      }

      _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);
    }

LABEL_57:
    v65 = v158;
    if (!*(v19 + 235))
    {
      goto LABEL_79;
    }

    if (*(v19 + 584))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v67 = VRTraceErrorLogLevelToCSTR();
        v68 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v67;
          *&buf[12] = 2080;
          *&buf[14] = "_AUIOSetPropertiesAndInitialize";
          *&buf[22] = 1024;
          *&buf[24] = 1627;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p setting up AudioInput and using BasebandIO", buf, 0x26u);
        }
      }

      LODWORD(v66) = *(a3 + 40);
      *&v69 = v66 / *a3;
      v164 = v69;
      v70 = VCAudioUnit_AudioUnitSetProperty();
      v161 = v70;
      v71 = VRTraceGetErrorLogLevelForModule();
      if (v70)
      {
        if (v71 >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSetupFormats_cold_5();
          }
        }

LABEL_103:
        v17 = v161 | 0xA01B0000;
LABEL_191:
        pthread_mutex_unlock((v19 + 264));
        CheckOutHandleDebug();
        return v17;
      }

      if (v71 < 7)
      {
        goto LABEL_78;
      }

      v76 = VRTraceErrorLogLevelToCSTR();
      v77 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *buf = 136315906;
      *&buf[4] = v76;
      *&buf[12] = 2080;
      *&buf[14] = "_AUIOSetPropertiesAndInitialize";
      *&buf[22] = 1024;
      *&buf[24] = 1634;
      *&buf[28] = 2048;
      *&buf[30] = v19;
      v78 = "AUIO [%s] %s:%d AUIO=%p kAudioOutputUnitProperty_IOBufferDuration kAudioUnitScope_Global succeeded";
      goto LABEL_77;
    }

    if (*(v19 + 585) == 1)
    {
LABEL_79:
      v79 = [+[VCDefaults sharedInstance](VCDefaults audioRecordingEnabled];
      if (!v65 || !v79)
      {
LABEL_91:
        if (*(v19 + 235))
        {
          _AUIOSetRemoteCodecProperties(v19, a9, a1);
        }

        goto LABEL_93;
      }

      if (!*(v19 + 235))
      {
LABEL_93:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v91 = VRTraceErrorLogLevelToCSTR();
          v92 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v91;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1694;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            _os_log_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Trying to setup AUIO", buf, 0x26u);
          }
        }

        v93 = VCAudioUnit_AudioUnitInitialize();
        v161 = v93;
        v94 = VRTraceGetErrorLogLevelForModule();
        if (v93)
        {
          if (v94 >= 5)
          {
            v95 = VRTraceErrorLogLevelToCSTR();
            v96 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v97 = v161;
              v98 = FourccToCStr(v161);
              *buf = 136316418;
              *&buf[4] = v95;
              *&buf[12] = 2080;
              *&buf[14] = "_AUIOSetPropertiesAndInitialize";
              *&buf[22] = 1024;
              *&buf[24] = 1697;
              *&buf[28] = 1024;
              *&buf[30] = v97;
              *&buf[34] = 2080;
              *&buf[36] = v98;
              *&buf[44] = 1024;
              *&buf[46] = 0;
              _os_log_impl(&dword_1DB56E000, v96, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AudioUnitInitialize failed. err=%d (%s) attempt %d", buf, 0x32u);
            }
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v99 = VRTraceErrorLogLevelToCSTR();
            v100 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              AUIOSetupFormats_cold_8(v99, &v161, v100);
            }
          }

          goto LABEL_103;
        }

        if (v94 >= 7)
        {
          v101 = VRTraceErrorLogLevelToCSTR();
          v102 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v101;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1705;
            _os_log_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AudioUnitInitialize succeeded", buf, 0x1Cu);
          }
        }

        *(v19 + 232) = 1;
        if (!a5 || *(v19 + 584))
        {
          goto LABEL_109;
        }

        v107 = *(v19 + 585);
        if (v107 == 2)
        {
          goto LABEL_120;
        }

        if (v107 == 1)
        {
          goto LABEL_109;
        }

        if (!*(v19 + 585))
        {
LABEL_120:
          if (!*(v19 + 235))
          {
            goto LABEL_165;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v108 = VRTraceErrorLogLevelToCSTR();
          v109 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v108;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1713;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            *&buf[38] = 2080;
            *&buf[40] = a5 + 64;
            _os_log_impl(&dword_1DB56E000, v109, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p VoiceIO Remote OS Version = %s", buf, 0x30u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v110 = VRTraceErrorLogLevelToCSTR();
          v111 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v110;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1714;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            *&buf[38] = 2080;
            *&buf[40] = a5;
            _os_log_impl(&dword_1DB56E000, v111, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p VoiceIO Remote HW Model = %s", buf, 0x30u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v112 = VRTraceErrorLogLevelToCSTR();
          v113 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v114 = *(a5 + 128);
            *buf = 136316162;
            *&buf[4] = v112;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1715;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            *&buf[38] = 1024;
            *&buf[40] = v114;
            _os_log_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p VoiceIO Remote AU Version = %u", buf, 0x2Cu);
          }
        }

        v115 = VCAudioUnit_AudioUnitSetProperty();
        v161 = v115;
        v116 = VRTraceGetErrorLogLevelForModule();
        if (v115)
        {
          if (v116 >= 5)
          {
            v117 = VRTraceErrorLogLevelToCSTR();
            v118 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v117;
              *&buf[12] = 2080;
              *&buf[14] = "_AUIOSetPropertiesAndInitialize";
              *&buf[22] = 1024;
              *&buf[24] = 1723;
              *&buf[28] = 1024;
              *&buf[30] = v161;
              *&buf[34] = 1024;
              *&buf[36] = v161;
              v119 = "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property FarEndVersionInfo with error %08x %d";
              v120 = v118;
              v121 = 40;
LABEL_160:
              _os_log_impl(&dword_1DB56E000, v120, OS_LOG_TYPE_DEFAULT, v119, buf, v121);
            }
          }
        }

        else if (v116 >= 7)
        {
          v135 = VRTraceErrorLogLevelToCSTR();
          v136 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v135;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1725;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            v119 = "AUIO [%s] %s:%d AUIO=%p kAUVoiceIOProperty_FarEndVersionInfo kAudioUnitScope_Global succeeded";
            v120 = v136;
            v121 = 38;
            goto LABEL_160;
          }
        }

LABEL_109:
        if (*(v19 + 235) && !*(v19 + 584) && *(v19 + 585) != 1)
        {
          v164 = 4;
          Property = VCAudioUnit_AudioUnitGetProperty();
          v104 = VRTraceGetErrorLogLevelForModule();
          if (Property)
          {
            if (v104 >= 3)
            {
              v105 = VRTraceErrorLogLevelToCSTR();
              v106 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = v105;
                *&buf[12] = 2080;
                *&buf[14] = "_AUIOPostInitialization";
                *&buf[22] = 1024;
                *&buf[24] = 1900;
                *&buf[28] = 2048;
                *&buf[30] = v19;
                *&buf[38] = 1024;
                *&buf[40] = Property;
                _os_log_error_impl(&dword_1DB56E000, v106, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AUIO=%p AudioUnitGetProperty(MaximumMetadataByteSize) failed error=%d", buf, 0x2Cu);
              }
            }

            *(v19 + 448) = 128;
          }

          else if (v104 >= 7)
          {
            v137 = VRTraceErrorLogLevelToCSTR();
            v138 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v137;
              *&buf[12] = 2080;
              *&buf[14] = "_AUIOPostInitialization";
              *&buf[22] = 1024;
              *&buf[24] = 1904;
              *&buf[28] = 2048;
              *&buf[30] = v19;
              _os_log_impl(&dword_1DB56E000, v138, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAUVoiceIOProperty_MaximumMetadataByteSize kAudioUnitScope_Output get succeeded", buf, 0x26u);
            }
          }

          *(v19 + 456) = malloc_type_realloc(*(v19 + 456), *(v19 + 448), 0x100004077774924uLL);
        }

LABEL_165:

        *(v19 + 488) = 0;
        v139 = *(v19 + 592);
        if (v139 && [v139 length])
        {
          v140 = 1;
        }

        else
        {
          if (!*(v19 + 586))
          {
            v142 = 0;
LABEL_187:

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v150 = VRTraceErrorLogLevelToCSTR();
              v151 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v150;
                *&buf[12] = 2080;
                *&buf[14] = "_AUIOSetPropertiesAndInitialize";
                *&buf[22] = 1024;
                *&buf[24] = 1735;
                *&buf[28] = 2048;
                *&buf[30] = v19;
                _os_log_impl(&dword_1DB56E000, v151, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d succeeded AUIO=%p", buf, 0x26u);
              }
            }

            v17 = 0;
            goto LABEL_191;
          }

          v140 = 0;
        }

        *(v19 + 496) = VCDefaults_GetBoolValueForKey(@"forceCannedAudioVoiceActive", v140);
        v141 = objc_alloc_init(VCAudioInjectorConfig);
        if (!v141)
        {
          AUIOSetupFormats_cold_10(buf);
LABEL_204:
          v142 = *buf;
          goto LABEL_187;
        }

        v142 = v141;
        v143 = *(a3 + 16);
        *buf = *a3;
        *&buf[16] = v143;
        *&buf[32] = *(a3 + 32);
        [(VCAudioInjectorConfig *)v141 setAudioFormat:buf];
        if (*(v19 + 586))
        {
          v144 = 1;
        }

        else
        {
          v144 = *(v19 + 496);
        }

        [(VCAudioInjectorConfig *)v142 setForceVoiceActive:v144 & 1];
        if (*(v19 + 586))
        {
          [(VCAudioInjectorConfig *)v142 setSineWaveFrequencyHz:2000];
          [(VCAudioInjectorConfig *)v142 setSineWaveAmplitude:0.05];
          [(VCAudioInjectorConfig *)v142 setStartHostTime:0.0];
          v145 = 1.0;
        }

        else
        {
          buf[0] = 0;
          AppBooleanValue = CFPreferencesGetAppBooleanValue(@"cannedReplayFromBeginning", @"com.apple.VideoConference", buf);
          [(VCAudioInjectorConfig *)v142 setPath:*(v19 + 592)];
          if (AppBooleanValue || *(v19 + 608) < 0.0)
          {
            if (AppBooleanValue)
            {
              v147 = buf[0] == 0;
            }

            else
            {
              v147 = 1;
            }

            v148 = !v147;
            [(VCAudioInjectorConfig *)v142 setFromBeginning:v148];
            goto LABEL_186;
          }

          [(VCAudioInjectorConfig *)v142 setStartHostTime:?];
          v145 = *(v19 + 600);
        }

        [(VCAudioInjectorConfig *)v142 setLoopLength:v145];
LABEL_186:
        v149 = [[VCAudioInjector alloc] initWithConfig:v142];
        *(v19 + 488) = v149;
        if (v149)
        {
          goto LABEL_187;
        }

        AUIOSetupFormats_cold_9(v142, buf);
        goto LABEL_204;
      }

      v80 = a9;
      v81 = a5;
      v164 = v65;
      v82 = VCAudioUnit_AudioUnitSetProperty();
      v161 = v82;
      v83 = VRTraceGetErrorLogLevelForModule();
      if (v82)
      {
        if (v83 < 5)
        {
          goto LABEL_90;
        }

        v84 = VRTraceErrorLogLevelToCSTR();
        v85 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_90;
        }

        *buf = 136316162;
        *&buf[4] = v84;
        *&buf[12] = 2080;
        *&buf[14] = "_AUIOSetPropertiesAndInitialize";
        *&buf[22] = 1024;
        *&buf[24] = 1676;
        *&buf[28] = 1024;
        *&buf[30] = v161;
        *&buf[34] = 1024;
        *&buf[36] = v161;
        v86 = "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_EnableRecording with error %08x %d";
        v87 = v85;
        v88 = 40;
      }

      else
      {
        if (v83 < 5)
        {
          goto LABEL_90;
        }

        v89 = VRTraceErrorLogLevelToCSTR();
        v90 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_90;
        }

        *buf = 136315650;
        *&buf[4] = v89;
        *&buf[12] = 2080;
        *&buf[14] = "_AUIOSetPropertiesAndInitialize";
        *&buf[22] = 1024;
        *&buf[24] = 1678;
        v86 = "AUIO [%s] %s:%d allowAudioRecording and kAUVoiceIOProperty_EnableRecording set to YES";
        v87 = v90;
        v88 = 28;
      }

      _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, v86, buf, v88);
LABEL_90:
      a5 = v81;
      a9 = v80;
      goto LABEL_91;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v72 = VRTraceErrorLogLevelToCSTR();
      v73 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v72;
        *&buf[12] = 2080;
        *&buf[14] = "_AUIOSetPropertiesAndInitialize";
        *&buf[22] = 1024;
        *&buf[24] = 1580;
        *&buf[28] = 2048;
        *&buf[30] = v19;
        _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p setting up AudioInput but not using BasebandIO", buf, 0x26u);
      }
    }

    v164 = 1;
    v74 = VCAudioUnit_AudioUnitSetProperty();
    v161 = v74;
    v75 = VRTraceGetErrorLogLevelForModule();
    if (v74)
    {
      if (v75 >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AUIOSetupFormats_cold_6();
        }
      }

      goto LABEL_140;
    }

    if (v75 >= 7)
    {
      v122 = VRTraceErrorLogLevelToCSTR();
      v123 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v122;
        *&buf[12] = 2080;
        *&buf[14] = "_AUIOSetPropertiesAndInitialize";
        *&buf[22] = 1024;
        *&buf[24] = 1589;
        *&buf[28] = 2048;
        *&buf[30] = v19;
        _os_log_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAUVoiceIOProperty_RequestMetadata kAudioUnitScope_Global succeeded", buf, 0x26u);
      }
    }

    v124 = VCAudioUnit_AudioUnitSetProperty();
    v161 = v124;
    v125 = VRTraceGetErrorLogLevelForModule();
    if (v124)
    {
      if (v125 < 3)
      {
        goto LABEL_140;
      }

      v126 = VRTraceErrorLogLevelToCSTR();
      v127 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_140;
      }

      *buf = 136316674;
      *&buf[4] = v126;
      *&buf[12] = 2080;
      *&buf[14] = "_AUIOSetPropertiesAndInitialize";
      *&buf[22] = 1024;
      *&buf[24] = 1595;
      *&buf[28] = 1024;
      *&buf[30] = v163;
      *&buf[34] = 1024;
      *&buf[36] = v161;
      *&buf[40] = 1040;
      *&buf[42] = 4;
      *&buf[46] = 2080;
      *&buf[48] = &v161;
      v154 = "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_OperationMode %d %d %.4s";
    }

    else
    {
      if (v125 >= 7)
      {
        v128 = VRTraceErrorLogLevelToCSTR();
        v129 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v128;
          *&buf[12] = 2080;
          *&buf[14] = "_AUIOSetPropertiesAndInitialize";
          *&buf[22] = 1024;
          *&buf[24] = 1598;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          _os_log_impl(&dword_1DB56E000, v129, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAUVoiceIOProperty_OperationMode kAudioUnitScope_Global succeeded", buf, 0x26u);
        }
      }

      v130 = VCAudioUnit_AudioUnitSetProperty();
      v161 = v130;
      if (v130 == -10876 || !v130 || v130 == 561406316)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v131 = VRTraceErrorLogLevelToCSTR();
          v132 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v131;
            *&buf[12] = 2080;
            *&buf[14] = "_AUIOSetPropertiesAndInitialize";
            *&buf[22] = 1024;
            *&buf[24] = 1606;
            *&buf[28] = 2048;
            *&buf[30] = v19;
            _os_log_impl(&dword_1DB56E000, v132, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p kAUVoiceIOProperty_EnableSpatialChat kAudioUnitScope_Global succeeded", buf, 0x26u);
          }
        }

        v133 = CFPreferencesGetAppBooleanValue(@"forceMute", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
        if (!keyExistsAndHasValidFormat || !v133)
        {
          goto LABEL_78;
        }

        *(v19 + 328) = 0x100000001;
        v58 = VCAudioUnit_AudioUnitSetProperty();
        v134 = VRTraceGetErrorLogLevelForModule();
        if (!v58)
        {
          if (v134 < 7)
          {
            goto LABEL_78;
          }

          v155 = VRTraceErrorLogLevelToCSTR();
          v77 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_78;
          }

          *buf = 136315906;
          *&buf[4] = v155;
          *&buf[12] = 2080;
          *&buf[14] = "_AUIOSetPropertiesAndInitialize";
          *&buf[22] = 1024;
          *&buf[24] = 1620;
          *&buf[28] = 2048;
          *&buf[30] = v19;
          v78 = "AUIO [%s] %s:%d AUIO=%p kAUVoiceIOProperty_MuteOutput kAudioUnitScope_Global succeeded";
LABEL_77:
          _os_log_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEFAULT, v78, buf, 0x26u);
LABEL_78:
          v65 = v158;
          goto LABEL_79;
        }

        if (v134 >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            AUIOSetupFormats_cold_7();
          }
        }

LABEL_141:
        v17 = v58 | 0xA01B0000;
        goto LABEL_191;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v153 = VRTraceErrorLogLevelToCSTR(), v127 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_140:
        v58 = v161;
        goto LABEL_141;
      }

      *buf = 136316674;
      *&buf[4] = v153;
      *&buf[12] = 2080;
      *&buf[14] = "_AUIOSetPropertiesAndInitialize";
      *&buf[22] = 1024;
      *&buf[24] = 1603;
      *&buf[28] = 1024;
      *&buf[30] = v162;
      *&buf[34] = 1024;
      *&buf[36] = v161;
      *&buf[40] = 1040;
      *&buf[42] = 4;
      *&buf[46] = 2080;
      *&buf[48] = &v161;
      v154 = "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_EnableSpatialChat %d %d %.4s";
    }

    _os_log_error_impl(&dword_1DB56E000, v127, OS_LOG_TYPE_ERROR, v154, buf, 0x38u);
    goto LABEL_140;
  }

  return 2149253122;
}

uint64_t AUIOReceiverIsReady()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149253122;
  }

  *(v0 + 234) = 1;
  PacketThread_ReceiverIsReady(*(v0 + 480));
  CheckOutHandleDebug();
  return 0;
}

void _AUIOHealthPrintCallback(tagHANDLE *a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    v23 = 0uLL;
    v24 = 0;
    if (*(v1 + 472))
    {
      pthread_mutex_lock((v1 + 264));
      PacketThread_Statistics(*(v2 + 480), &v23);
      pthread_mutex_unlock((v2 + 264));
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 234);
        v6 = *(v2 + 504);
        v7 = *(v2 + 512);
        v8 = *(v2 + 520);
        v9 = *(v2 + 560);
        v10 = *(v2 + 568);
        v11 = *(v2 + 348);
        v12 = *(v2 + 352);
        v13 = *(v2 + 372);
        v14 = *(v2 + 416);
        v15 = *(v2 + 424);
        v16 = *(v2 + 540);
        v17 = *(v2 + 544);
        v18 = *(v2 + 552);
        v19 = *(v2 + 472);
        v20 = *(v2 + 384);
        *buf = 136321538;
        v26 = v3;
        v27 = 2080;
        v28 = "_AUIOHealthPrintCallback";
        v29 = 1024;
        v30 = 2006;
        v31 = 2048;
        v32 = v2;
        v33 = 2048;
        v34 = v6;
        v35 = 1024;
        v36 = v5;
        v37 = 2048;
        v38 = v7;
        v39 = 2048;
        v40 = v23.n128_u32[0];
        v41 = 2048;
        v42 = v8;
        v43 = 2048;
        v44 = v9;
        v45 = 2048;
        v46 = v10;
        v47 = 2048;
        v48 = v11;
        v49 = 2048;
        v50 = v12;
        v51 = 2048;
        v52 = v13;
        v53 = 1024;
        v54 = v14;
        v55 = 2048;
        v56 = v15;
        v57 = 1024;
        v58 = v16;
        v59 = 1024;
        v60 = v17;
        v61 = 1024;
        v62 = v18;
        v63 = 2048;
        v64 = v23.n128_u32[1];
        v65 = 2048;
        v66 = v24;
        v67 = 2048;
        v68 = v23.n128_u32[2];
        v69 = 2048;
        v70 = v23.n128_u32[3];
        v71 = 2048;
        v72 = HIDWORD(v24);
        v73 = 1024;
        v74 = v19;
        v75 = 2048;
        v76 = v20;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d @=@ Health: AudioIO (%p) micProcsCalled=%ld, ready=%d, micProcsReturned=%ld, packetsSent=%ld, voiceActivityCount=%ld, speakerProcsCalled=%ld, speakerProcsReturned=%ld, averageInputPower=%f, inputPowerMovingAverage=%f, averageOutputPower=%f, latestMicTimeStamp=%u, latestMicHostTime=%f, micShenanigans=%d, speakerShenanigans=%d, swapCount=%d packetsStored=%ld packetsDropped=[%ld, %ld, %ld, %ld] internalThreading=%d, outputPowerMovingAverage=%f", buf, 0xEAu);
      }
    }

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = v21;
      v27 = 2080;
      v28 = "_AUIOHealthPrintCallback";
      v29 = 1024;
      v30 = 1973;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d IO Proc health monitor called with invalid HANDLE", buf, 0x1Cu);
    }
  }
}

uint64_t AUIOStart(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = 2149253122;
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    pthread_mutex_lock((v3 + 264));
    if (*(v4 + 232))
    {
      if (!*(v4 + 233))
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AUIOStart-AudioUnitStarting");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v24 = v5;
            v25 = 2080;
            v26 = "AUIOStart";
            v27 = 1024;
            v28 = 2025;
            v29 = 2048;
            *v30 = v4;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d @:@ AUIOStart-AudioUnitStarting AUIO=%p AUIO Starting...", buf, 0x26u);
          }
        }

        *(v4 + 416) = 0;
        *(v4 + 424) = 0;
        *(v4 + 528) = 0x7FF8000000000000;
        *(v4 + 536) = 0;
        *(v4 + 464) = 0x7FEFFFFFFFFFFFFFLL;
        *(v4 + 352) = 2143289344;
        *(v4 + 384) = 2143289344;
        *(v4 + 664) = 0x7FF8000000000000;
        v7 = VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement();
        v8 = 5.0;
        if (v7)
        {
          v8 = 0.0;
        }

        *(v4 + 672) = v8;
        v9 = _AUIOStartPacketThread(v4);
        if (v9 < 0)
        {
          AUIOStart_cold_1(v4, v9, buf);
          v2 = *buf;
          goto LABEL_17;
        }

        v10 = VCAudioUnit_AudioOutputUnitStart();
        if (v10)
        {
          v18 = v10;
          v2 = v10 | 0xA01B0000;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v24 = v19;
              v25 = 2080;
              v26 = "AUIOStart";
              v27 = 1024;
              v28 = 2041;
              v29 = 1024;
              *v30 = 2041;
              *&v30[4] = 2048;
              *&v30[6] = v4;
              v31 = 1024;
              v32 = v18;
              _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AUIO/AUIO.mm:%d: AUIO=%p ERROR AudioOutputUnitStart returned %d", buf, 0x32u);
            }
          }

          v21 = *(v4 + 480);
          if (v21)
          {
            PacketThread_Destroy(v21);
            *(v4 + 480) = 0;
          }

          goto LABEL_17;
        }

        *(v4 + 233) = 1;
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AUIOStart-AudioUnitStarted");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v24 = v11;
            v25 = 2080;
            v26 = "AUIOStart";
            v27 = 1024;
            v28 = 2044;
            v29 = 2048;
            *v30 = v4;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d @:@ AUIOStart-AudioUnitStarted AUIO=%p AudioOutputUnitStart() completed", buf, 0x26u);
          }
        }

        global_queue = dispatch_get_global_queue(0, 0);
        v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
        *(v4 + 576) = v14;
        if (v14)
        {
          v15 = v14;
          v16 = dispatch_walltime(0, 0);
          dispatch_source_set_timer(v15, v16, 0x12A05F200uLL, 0x23C34600uLL);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __AUIOStart_block_invoke;
          handler[3] = &__block_descriptor_40_e5_v8__0l;
          handler[4] = a1;
          dispatch_source_set_event_handler(*(v4 + 576), handler);
          dispatch_source_set_cancel_handler(*(v4 + 576), handler);
          dispatch_resume(*(v4 + 576));
        }
      }

      v2 = 0;
    }

    else
    {
      v2 = 2149253176;
    }

LABEL_17:
    pthread_mutex_unlock((v4 + 264));
    CheckOutHandleDebug();
  }

  return v2;
}

uint64_t AUIOStop()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = 2149253122;
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    pthread_mutex_lock((v1 + 264));
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v4 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = v5;
        v14 = 2080;
        v15 = "AUIOStop";
        v16 = 1024;
        v17 = 2082;
        v18 = 2048;
        v19 = v2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Stopping the audio unit.", &v12, 0x26u);
      }
    }

    if (*(v2 + 232))
    {
      AUIOStop_cold_1(v2, &v12);
      v0 = v12;
    }

    else
    {
      v0 = 2149253176;
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = v7;
        v14 = 2080;
        v15 = "AUIOStop";
        v16 = 1024;
        v17 = 2101;
        v18 = 2048;
        v19 = v2;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p Stopped the audio unit.", &v12, 0x26u);
      }
    }

    pthread_mutex_unlock((v2 + 264));
    CheckOutHandleDebug();
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v9;
        v14 = 2080;
        v15 = "AUIOStop";
        v16 = 1024;
        v17 = 2105;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO Stop!", &v12, 0x1Cu);
      }
    }
  }

  return v0;
}

uint64_t AUIOSetInputMeterEnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149253122;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 264));
  if (a2)
  {
    if (!*(v4 + 344))
    {
      *(v4 + 344) = a2;
      operator new();
    }
  }

  else
  {
    v6 = *(v4 + 336);
    if (v6)
    {
      *(v4 + 344) = 0;
      MEMORY[0x1E128B440](v6, 0x1000C407AA769CALL);
      *(v4 + 336) = 0;
    }
  }

  pthread_mutex_unlock((v4 + 264));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AUIOSetOutputMeterEnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149253122;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 264));
  *(v4 + 368) = a2;
  pthread_mutex_unlock((v4 + 264));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AUIOSetAudioTranslationConfiguration(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149253122;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 264));
  v13 = a2;
  v5 = VCAudioUnit_AudioUnitSetProperty();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v15 = v7;
        v16 = 2080;
        v17 = "AUIOSetAudioTranslationConfiguration";
        v18 = 1024;
        v19 = 2197;
        v20 = 2112;
        v21 = v13;
        v22 = 1024;
        v23 = v5;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_TranslationConfiguration to value=%@ with error=%d", buf, 0x2Cu);
      }
    }

    v9 = v5 | 0xA01B0000;
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v10;
        v16 = 2080;
        v17 = "AUIOSetAudioTranslationConfiguration";
        v18 = 1024;
        v19 = 2200;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d kAUVoiceIOProperty_TranslationConfiguration set to %@", buf, 0x26u);
      }
    }

    v9 = 0;
  }

  pthread_mutex_unlock((v4 + 264));
  CheckOutHandleDebug();
  return v9;
}

uint64_t AUIOSetMute(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149253122;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 264));
  if (*(v4 + 328) || *(v4 + 584))
  {
    goto LABEL_4;
  }

  v7 = *(v4 + 585);
  if (v7 == 2)
  {
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    goto LABEL_4;
  }

  if (!*(v4 + 585))
  {
LABEL_11:
    if (!*(v4 + 235))
    {
      goto LABEL_4;
    }
  }

  *(v4 + 332) = a2;
  v14 = a2;
  v8 = VCAudioUnit_AudioUnitSetProperty();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v8)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = v10;
        v17 = 2080;
        v18 = "AUIOSetMute";
        v19 = 1024;
        v20 = 2226;
        v21 = 1024;
        v22 = v14;
        v23 = 1024;
        v24 = v8;
        v25 = 1024;
        v26 = v8;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_MuteOutput to %u with error %08x %d", buf, 0x2Eu);
      }
    }

    v5 = v8 | 0xA01B0000;
    goto LABEL_5;
  }

  if (ErrorLogLevelForModule >= 5)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "AUIOSetMute";
      v19 = 1024;
      v20 = 2229;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Changed mute to %u", buf, 0x22u);
    }
  }

LABEL_4:
  v5 = 0;
LABEL_5:
  pthread_mutex_unlock((v4 + 264));
  CheckOutHandleDebug();
  return v5;
}

uint64_t AUIOSetVoiceMixingMedia(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149253122;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 264));
  if (!*(v4 + 584) && *(v4 + 585) != 1)
  {
    v13 = a2;
    v7 = VCAudioUnit_AudioUnitSetProperty();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v15 = v9;
          v16 = 2080;
          v17 = "AUIOSetVoiceMixingMedia";
          v18 = 1024;
          v19 = 2259;
          v20 = 1024;
          v21 = v13;
          v22 = 1024;
          v23 = v7;
          v24 = 1024;
          v25 = v7;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_EnableMediaChat to %u with error %08x %d", buf, 0x2Eu);
        }
      }

      v5 = v7 | 0xA01B0000;
      goto LABEL_5;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v11;
        v16 = 2080;
        v17 = "AUIOSetVoiceMixingMedia";
        v18 = 1024;
        v19 = 2262;
        v20 = 1024;
        v21 = v13;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Changed kAUVoiceIOProperty_EnableMediaChat to %u", buf, 0x22u);
      }
    }
  }

  v5 = 0;
LABEL_5:
  pthread_mutex_unlock((v4 + 264));
  CheckOutHandleDebug();
  return v5;
}

uint64_t AUIOSetMediaPlaybackOnExternalDevice(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149253122;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 264));
  if (!*(v4 + 584) && *(v4 + 585) != 1)
  {
    v13 = a2;
    v7 = VCAudioUnit_AudioUnitSetProperty();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v15 = v9;
          v16 = 2080;
          v17 = "AUIOSetMediaPlaybackOnExternalDevice";
          v18 = 1024;
          v19 = 2286;
          v20 = 1024;
          v21 = v13;
          v22 = 1024;
          v23 = v7;
          v24 = 2080;
          v25 = FourccToCStr(v7);
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_MediaPlaybackOnExternalDevice to value=%u with error=%08x (fourcc=%s)", buf, 0x32u);
        }
      }

      v5 = v7 | 0xA01B0000;
      goto LABEL_5;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v11;
        v16 = 2080;
        v17 = "AUIOSetMediaPlaybackOnExternalDevice";
        v18 = 1024;
        v19 = 2284;
        v20 = 1024;
        v21 = v13;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Changed kAUVoiceIOProperty_MediaPlaybackOnExternalDevice to value=%u", buf, 0x22u);
      }
    }
  }

  v5 = 0;
LABEL_5:
  pthread_mutex_unlock((v4 + 264));
  CheckOutHandleDebug();
  return v5;
}

uint64_t AUIOGetAUNumber(UInt32 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = 2149253121;
  if (a1)
  {
    *&v5.componentType = xmmword_1DBD505F0;
    v5.componentFlagsMask = 0;
    Next = AudioComponentFindNext(0, &v5);
    if (Next)
    {
      return AudioComponentGetVersion(Next, a1);
    }

    else
    {
      return 2149253142;
    }
  }

  return v1;
}

uint64_t AUIOSetRemoteCodecInfo(double a1, uint64_t a2, unsigned int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149253122;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 264));
  _AUIOSetRemoteCodecProperties(v6, a3, a1);
  pthread_mutex_unlock((v6 + 264));
  CheckOutHandleDebug();
  return 0;
}

void _AUIOSetRemoteCodecProperties(uint64_t a1, unsigned int a2, double a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 584) && *(a1 + 585) != 1)
  {
    v3 = VCAudioUnit_AudioUnitSetProperty();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v18 = v5;
          v19 = 2080;
          v20 = "_AUIOSetRemoteCodecProperties";
          v21 = 1024;
          v22 = 2338;
          v23 = 1024;
          v24 = v3;
          v25 = 1024;
          v26 = a2;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d kAUVoiceIOProperty_PrimaryCodecType failed(%d) codecType(%d)", buf, 0x28u);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = v7;
        v19 = 2080;
        v20 = "_AUIOSetRemoteCodecProperties";
        v21 = 1024;
        v22 = 2341;
        v23 = 1024;
        v24 = a2;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d kAUVoiceIOProperty_PrimaryCodecType succeeded codecType(%d)", buf, 0x22u);
      }
    }

    v9 = VCAudioUnit_AudioUnitSetProperty();
    v10 = VRTraceGetErrorLogLevelForModule();
    if (v9)
    {
      if (v10 >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v18 = v11;
          v19 = 2080;
          v20 = "_AUIOSetRemoteCodecProperties";
          v21 = 1024;
          v22 = 2346;
          v23 = 1024;
          v24 = v9;
          v25 = 1024;
          v26 = a3;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d kAUVoiceIOProperty_PrimaryCodecSampleRate failed(%d) sampleRate(%d)", buf, 0x28u);
        }
      }
    }

    else if (v10 >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = v13;
        v19 = 2080;
        v20 = "_AUIOSetRemoteCodecProperties";
        v21 = 1024;
        v22 = 2349;
        v23 = 1024;
        v24 = a3;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d kAUVoiceIOProperty_PrimaryCodecSampleRate succeded: sampleRate(%d)", buf, 0x22u);
      }
    }
  }
}

uint64_t AUIOSetSpatialMetadata()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149253122;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 264));
  v2 = VCAudioUnit_AudioUnitSetProperty();
  if (v2)
  {
    v3 = v2 | 0xA01B0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AUIOSetSpatialMetadata_cold_1();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((v1 + 264));
  CheckOutHandleDebug();
  return v3;
}

uint64_t AUIORegisterMutedTalkerNotificationEventListener(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _os_feature_enabled_impl();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v5;
        v21 = 2080;
        v22 = "AUIORegisterMutedTalkerNotificationEventListener";
        v23 = 1024;
        v24 = 2385;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d MutedTalker feature enabled", buf, 0x1Cu);
      }
    }

    v7 = CheckInHandleDebug();
    if (!v7)
    {
      return 2149253122;
    }

    v8 = v7;
    pthread_mutex_lock((v7 + 264));
    v9 = VRTraceGetErrorLogLevelForModule();
    if (a2)
    {
      if (v9 < 7)
      {
        goto LABEL_19;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315650;
      v20 = v10;
      v21 = 2080;
      v22 = "AUIORegisterMutedTalkerNotificationEventListener";
      v23 = 1024;
      v24 = 2394;
      v12 = "AUIO [%s] %s:%d Registering mutedTalker feature";
    }

    else
    {
      if (v9 < 7)
      {
        goto LABEL_19;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315650;
      v20 = v16;
      v21 = 2080;
      v22 = "AUIORegisterMutedTalkerNotificationEventListener";
      v23 = 1024;
      v24 = 2396;
      v12 = "AUIO [%s] %s:%d Unregistering mutedTalker feature";
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x1Cu);
LABEL_19:
    v17 = VCAudioUnit_AudioUnitSetProperty();
    if (v17)
    {
      v15 = v17 | 0xA01B0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AUIORegisterMutedTalkerNotificationEventListener_cold_1();
        }
      }
    }

    else
    {
      v15 = 0;
    }

    pthread_mutex_unlock((v8 + 264));
    CheckOutHandleDebug();
    return v15;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = v13;
      v21 = 2080;
      v22 = "AUIORegisterMutedTalkerNotificationEventListener";
      v23 = 1024;
      v24 = 2382;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d MutedTalker feature disabled", buf, 0x1Cu);
    }
  }

  return 0;
}

uint64_t AUIOSetDynamicDuckerVolume()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149253122;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 264));
  v2 = VCAudioUnit_AudioUnitSetParameter();
  if (v2)
  {
    v3 = v2 | 0xA01B0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AUIOSetDynamicDuckerVolume_cold_1();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((v1 + 264));
  CheckOutHandleDebug();
  return v3;
}

uint64_t LogProfileTimeOverLimit(double a1, double a2, const char *a3, ...)
{
  va_start(va, a3);
  v37 = *MEMORY[0x1E69E9840];
  result = VRTraceIsInternalOSInstalled();
  if (result)
  {
    v7 = micro() - a1;
    if (v7 <= a2)
    {
      return 0;
    }

    else
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v8;
      v36 = v8;
      v33 = v8;
      v34 = v8;
      v31 = v8;
      v32 = v8;
      v29 = v8;
      v30 = v8;
      v27 = v8;
      v28 = v8;
      v26 = v8;
      v24 = v8;
      v25 = v8;
      v22 = v8;
      v23 = v8;
      *__str = v8;
      vsnprintf(__str, 0x100uLL, a3, va);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v12 = v9;
          v13 = 2080;
          v14 = "_LogProfileTimeLimitHelper";
          v15 = 1024;
          v16 = 36;
          v17 = 2080;
          v18 = __str;
          v19 = 2048;
          v20 = v7;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }

      return 1;
    }
  }

  return result;
}

void _AUIOSendMicSamples(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
  v7 = *(VCAudioBufferList_GetAudioBufferList(a2) + 16);
  v8 = *(a1 + 412);
  v9 = Timestamp - v8;
  if (v7 && (v10 = *(a1 + 400)) != 0)
  {
    v11 = (*(SampleFormat + 24) * SampleCount);
    v12 = *(a1 + 160) * v8;
    v13 = *(a1 + 408);
    v14 = v12 + v11 - v13;
    if (v12 + v11 > v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        log = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 400);
          v17 = *(a1 + 256);
          v18 = *(a1 + 408);
          v19 = *(a1 + 412);
          *buf = 136317698;
          v37 = v15;
          v38 = 2080;
          v39 = "_AUIOBufferMicSamples";
          v40 = 1024;
          v41 = 304;
          v42 = 2048;
          v43 = a1;
          v44 = 2048;
          v45 = v16;
          v46 = 1024;
          *v47 = v17;
          *&v47[4] = 1024;
          *&v47[6] = v18;
          LOWORD(v48) = 1024;
          *(&v48 + 2) = v19;
          HIWORD(v48) = 1024;
          v49 = SampleCount;
          v50 = 1024;
          v51 = v11;
          v52 = 1024;
          v53 = v14;
          _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d AUIO=%p bufferedMicSamples=%p is too full, dropping older samples to fit this. maxSampleSize=%d maxByteSize=%u curSampleCount=%u appendSampleCount=%u appendBytes=%u sizeNeeded=%u", buf, 0x54u);
        }
      }

      memmove(*(a1 + 400), (*(a1 + 400) + v14), *(a1 + 408) - v14);
      v12 -= v14;
      v20 = v14 / *(SampleFormat + 24);
      *(a1 + 412) -= v20;
      v9 += v20;
      v10 = *(a1 + 400);
    }

    memcpy((v10 + v12), v7, v11);
    v21 = *(a1 + 412) + SampleCount;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 400);
        *buf = 136316674;
        v37 = v22;
        v38 = 2080;
        v39 = "_AUIOBufferMicSamples";
        v40 = 1024;
        v41 = 284;
        v42 = 2048;
        v43 = a1;
        v44 = 2048;
        v45 = a2;
        v46 = 2048;
        *v47 = v7;
        *&v47[8] = 2048;
        v48 = v34;
        _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d AUIO=%p sampleBuffer=%p buffer=%p bufferedMicSamples=%p", buf, 0x44u);
      }
    }

    v21 = 0;
  }

  *(a1 + 412) = v21;
  v24 = *(a1 + 176);
  v25 = *(a1 + 160);
  v26 = *(a1 + 164);
  HostTime = VCAudioBufferList_GetHostTime(a2);
  if (*(a1 + 412) >= v24)
  {
    v28 = HostTime;
    v29 = v26 * v25;
    v30 = (v29 * v24);
    do
    {
      AudioBufferList = VCAudioBufferList_GetAudioBufferList(a2);
      *(AudioBufferList + 16) = *(a1 + 400);
      *(AudioBufferList + 12) = v30;
      VCAudioBufferList_InvalidateAveragePower(a2);
      VCAudioBufferList_SetTime(a2, v9, v28);
      VCAudioBufferList_SetSampleCount(a2, v24);
      v32 = *(a1 + 488);
      if (v32)
      {
        VCAudioInjector_InjectSamples(v32, a2, *(a1 + 332) != 0, 0);
      }

      else
      {
        VCAudioBufferList_SetVoiceActivity(a2, *(a1 + 392));
      }

      (*(a1 + 24))(*(a1 + 16), a2);
      VCAudioBufferList_Reset(a2);
      memmove(*(a1 + 400), (*(a1 + 400) + v30), (v29 * (*(a1 + 412) - v24)));
      v33 = *(a1 + 412) - v24;
      *(a1 + 412) = v33;
      v9 += v24;
      v28 = v28 + v24 / *(a1 + 136);
    }

    while (v33 >= v24);
  }
}

uint64_t LogProfileTimeOverLimitCompare(double a1, double a2, double a3, const char *a4, ...)
{
  va_start(va, a4);
  v37 = *MEMORY[0x1E69E9840];
  result = VRTraceIsInternalOSInstalled();
  if (result)
  {
    v7 = a2 - a1;
    if (v7 <= 0.1)
    {
      return 0;
    }

    else
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v8;
      v36 = v8;
      v33 = v8;
      v34 = v8;
      v31 = v8;
      v32 = v8;
      v29 = v8;
      v30 = v8;
      v27 = v8;
      v28 = v8;
      v26 = v8;
      v24 = v8;
      v25 = v8;
      v22 = v8;
      v23 = v8;
      *__str = v8;
      vsnprintf(__str, 0x100uLL, "AUIO last mic sample delayed. currentTime=%f previousTime=%f delta=%f", va);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v12 = v9;
          v13 = 2080;
          v14 = "_LogProfileTimeLimitHelper";
          v15 = 1024;
          v16 = 36;
          v17 = 2080;
          v18 = __str;
          v19 = 2048;
          v20 = v7;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t _AUIOSpkrProc(void *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, uint64_t a5, AudioBufferList *a6)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AUIOSpkrProc();
      }
    }

    return 0;
  }

  mSampleTime = a3->mSampleTime;
  kdebug_trace();
  v10 = *(a1 + 55) * a3->mHostTime;
  ++a1[70];
  VCAudioBufferList_Reset(a1[31]);
  AudioBufferList = VCAudioBufferList_GetAudioBufferList(a1[31]);
  v12 = *(a1 + 20);
  v13 = *(a1 + 21);
  v14 = AudioBufferList[3];
  if (v14 * *AudioBufferList >= v13 * a5 * v12)
  {
    a1[83] = 0x7FF8000000000000;
    if (*(a1 + 234))
    {
      v25 = *(a1 + 104);
      if (v25)
      {
        if (mSampleTime - (v25 + *(a1 + 108)) > (2 * a5))
        {
          *(a1 + 108) = mSampleTime - v25;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            v28 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(a1 + 108);
                v30 = *(a1 + 104);
                *buf = 136316418;
                v58 = v26;
                v59 = 2080;
                v60 = "_AUIOSpkrProc";
                v61 = 1024;
                v62 = 711;
                v63 = 1024;
                *v64 = v29;
                *&v64[4] = 1024;
                *&v64[6] = mSampleTime;
                LOWORD(v65) = 1024;
                *(&v65 + 2) = v30;
                _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Setting timestamp delta to %d: speaker %d - mic %d", buf, 0x2Eu);
              }
            }

            else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v54 = *(a1 + 108);
              v55 = *(a1 + 104);
              *buf = 136316418;
              v58 = v26;
              v59 = 2080;
              v60 = "_AUIOSpkrProc";
              v61 = 1024;
              v62 = 711;
              v63 = 1024;
              *v64 = v54;
              *&v64[4] = 1024;
              *&v64[6] = mSampleTime;
              LOWORD(v65) = 1024;
              *(&v65 + 2) = v55;
              _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, "AUIO [%s] %s:%d Setting timestamp delta to %d: speaker %d - mic %d", buf, 0x2Eu);
            }
          }
        }
      }

      v34 = 0.0;
      if (VRTraceIsInternalOSInstalled())
      {
        v34 = micro();
      }

      SampleFormat = VCAudioBufferList_GetSampleFormat(a1[31]);
      v36 = a5 / *SampleFormat + a5 / *SampleFormat;
      if (v10 - *(a1 + 58) > v36 && VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v39 = a1[58];
          v40 = *SampleFormat;
          *buf = 136317186;
          v58 = v37;
          v59 = 2080;
          v60 = "_AUIOSpkrProc";
          v61 = 1024;
          v62 = 719;
          v63 = 2048;
          *v64 = a1;
          *&v64[8] = 2048;
          v65 = v39;
          *v66 = 2048;
          *&v66[2] = v10;
          v67 = 1024;
          v68 = a5;
          v69 = 2048;
          v70 = v40;
          v71 = 2048;
          v72 = v36;
          _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d [AUIO=%p] Observing hostTime Jump previousHostTime=%f currentHostTime=%f inNumberFrames=%d format->mSampleRate=%f allowedHostTimeJump=%f", buf, 0x54u);
        }
      }

      *(a1 + 58) = v10;
      VCAudioBufferList_SetTime(a1[31], mSampleTime, v10);
      VCAudioBufferList_SetSampleCount(a1[31], (*SampleFormat * a5 / *(a1 + 7)));
      v41 = VCAudioBufferList_GetAudioBufferList(a1[31]);
      v42 = *v41;
      if (v42)
      {
        v43 = 0;
        mBuffers = a6->mBuffers;
        v45 = v41 + 2;
        do
        {
          v46 = *mBuffers++;
          *v45++ = v46;
          ++v43;
        }

        while (v43 < v42);
      }

      (a1[1])(*a1, a1[31]);
      if (LogProfileTimeOverLimit(v34, 0.00800000038, "IOProc: shenanigans spkr proc"))
      {
        ++*(a1 + 136);
      }

      AveragePower = VCAudioBufferList_GetAveragePower(a1[31]);
      *(a1 + 93) = AveragePower;
      VCUtil_ExponentialMovingAverageWithAlpha(a1 + 96, AveragePower, 0.33);
      ++a1[71];
      kdebug_trace();
      v48 = *(a1 + 388);
      v49 = a1[77];
      if (v49 && VCAudioSession_IsDeferredNetworkUplinkClockUpdateSupported(v49))
      {
        IsSilenceInQueue = VCAudioBufferList_IsSilenceInQueue(a1[31]);
        *(a1 + 376) = IsSilenceInQueue;
        if (IsSilenceInQueue)
        {
          v51 = *(a1 + 95) + 1;
        }

        else
        {
          v51 = 0;
        }

        *(a1 + 95) = v51;
        if (*(a1 + 96) <= -80.0)
        {
          v52 = IsSilenceInQueue;
        }

        else
        {
          v52 = 0;
        }

        if (v51 > 14)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        if (v53 == 1 && (v48 & 1) == 0)
        {
          VCAudioSession_ScheduleNetworkUplinkClockUpdate(a1[77]);
          *(a1 + 388) = 1;
        }

        if (!(v53 & 1 | ((v48 & 1) == 0)))
        {
          goto LABEL_54;
        }
      }

      else if (v48)
      {
LABEL_54:
        v18 = 0;
        *(a1 + 388) = 0;
        return v18;
      }
    }

    else
    {
      ++a1[71];
      if (v13)
      {
        v31 = v12 * a5;
        p_mData = &a6->mBuffers[0].mData;
        do
        {
          *(p_mData - 1) = v31;
          v33 = *p_mData;
          p_mData += 2;
          bzero(v33, v31);
          --v13;
        }

        while (v13);
      }

      (a1[4])(*a1, 2149253137);
    }

    return 0;
  }

  v15 = AudioBufferList;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v21 = v15[3];
      v22 = *(a1 + 20);
      mNumberBuffers = a6->mNumberBuffers;
      mDataByteSize = a6->mBuffers[0].mDataByteSize;
      *buf = 136317442;
      v58 = v16;
      v59 = 2080;
      v60 = "_AUIOValidateSampleCount";
      v61 = 1024;
      v62 = 658;
      v63 = 1024;
      *v64 = v21;
      *&v64[4] = 1024;
      *&v64[6] = v13 * a5 * v12;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = a5;
      HIWORD(v65) = 1024;
      *v66 = v22;
      *&v66[4] = 1024;
      *&v66[6] = v13;
      v67 = 1024;
      v68 = mNumberBuffers;
      v69 = 1024;
      LODWORD(v70) = mDataByteSize;
      _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AUIO [%s] %s:%d speaker sample buffer is too small (%d). Expected=%d frames=%d bytesPerFrame=%d channels=%d! BufferCount=%d size=%d", buf, 0x46u);
    }
  }

  v18 = 2149253134;
  (a1[4])(*a1, 2149253134);
  if (v10 - *(a1 + 83) >= *(a1 + 84))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Speaker sample buffer is too small: frameCount=%u expectedFrameCount=%u bufferSize=%u bytePerFrame=%u channels=%u", a5, v14 / v12, a6->mBuffers[0].mDataByteSize, *(a1 + 20), *(a1 + 21));
    VCTerminateProcess(v19, @"AUIO", 0);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  ++a1[71];
  return v18;
}

uint64_t _AUIOSpkrProcGKS(void *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, unsigned int a5, AudioBufferList *a6)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    mSampleTime = a3->mSampleTime;
    kdebug_trace();
    v10 = *(a1 + 20);
    v11 = *(a1 + 21);
    ++a1[70];
    if (*(a1 + 234))
    {
      v12 = *(a1 + 55);
      mHostTime = a3->mHostTime;
      v14 = *(a1 + 104);
      if (v14)
      {
        if (mSampleTime - (v14 + *(a1 + 108)) > 2 * a5)
        {
          *(a1 + 108) = mSampleTime - v14;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            v17 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *(a1 + 108);
                v19 = *(a1 + 104);
                *buf = 136316418;
                v53 = v15;
                v54 = 2080;
                v55 = "_AUIOSpkrProcGKS";
                v56 = 1024;
                v57 = 785;
                v58 = 1024;
                v59 = v18;
                v60 = 1024;
                v61 = mSampleTime;
                v62 = 1024;
                v63 = v19;
                _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AUIO [%s] %s:%d Setting timestamp delta to %d: speaker %d - mic %d", buf, 0x2Eu);
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v48 = *(a1 + 108);
              v49 = *(a1 + 104);
              *buf = 136316418;
              v53 = v15;
              v54 = 2080;
              v55 = "_AUIOSpkrProcGKS";
              v56 = 1024;
              v57 = 785;
              v58 = 1024;
              v59 = v48;
              v60 = 1024;
              v61 = mSampleTime;
              v62 = 1024;
              v63 = v49;
              _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, "AUIO [%s] %s:%d Setting timestamp delta to %d: speaker %d - mic %d", buf, 0x2Eu);
            }
          }
        }
      }

      v23 = mHostTime;
      v24 = 0.0;
      if (VRTraceIsInternalOSInstalled())
      {
        v24 = micro();
      }

      v25 = v12 * v23;
      SampleFormat = VCAudioBufferList_GetSampleFormat(a1[31]);
      if (a5)
      {
        v27 = SampleFormat;
        v28 = 0;
        v29 = 0;
        v51 = a5;
        do
        {
          SampleCount = VCAudioBufferList_GetSampleCount(a1[31]);
          if (SampleCount)
          {
            if (SampleCount >= a5 - v29)
            {
              v31 = a5 - v29;
            }

            else
            {
              v31 = SampleCount;
            }

            v32 = *(v27 + 16);
            AudioBufferList = VCAudioBufferList_GetAudioBufferList(a1[31]);
            if (*AudioBufferList)
            {
              v34 = AudioBufferList;
              v35 = 0;
              v36 = v32 * v31;
              v37 = 4;
              do
              {
                memcpy((*(&a6->mNumberBuffers + v37 * 4) + *(v27 + 16) * v29), *&v34[v37], v36);
                ++v35;
                v37 += 4;
              }

              while (v35 < *v34);
            }

            VCAudioBufferList_Shift(a1[31], v31);
            v28 = (*v27 * v31 / *(a1 + 7) + v28);
            v29 += v31;
            a5 = v51;
          }

          v38 = a5 - v29;
          if (a5 > v29)
          {
            VCAudioBufferList_Reset(a1[31]);
            VCAudioBufferList_SetTime(a1[31], v28 + mSampleTime, v25);
            VCAudioBufferList_SetSampleCount(a1[31], *(a1 + 56));
            v39 = *(a1 + 56);
            if (v38 >= v39)
            {
              v40 = VCAudioBufferList_GetAudioBufferList(a1[31]);
              v41 = *v40;
              if (v41)
              {
                v42 = *(v27 + 16) * v29;
                v43 = v40 + 4;
                p_mData = &a6->mBuffers[0].mData;
                do
                {
                  v45 = *p_mData;
                  p_mData += 2;
                  *v43 = &v45[v42];
                  v43 += 2;
                  --v41;
                }

                while (v41);
              }
            }

            (a1[1])(*a1, a1[31]);
            if (LogProfileTimeOverLimit(v24, 0.00800000038, "IOProc: shenanigans spkr proc"))
            {
              ++*(a1 + 136);
            }

            *(a1 + 93) = VCAudioBufferList_GetAveragePower(a1[31]);
            if (v38 >= v39)
            {
              v46 = *(a1 + 56);
              v29 += v46;
              v28 = (*v27 * v46 / *(a1 + 7) + v28);
              VCAudioBufferList_SetSampleCount(a1[31], 0);
            }
          }
        }

        while (v29 < a5);
      }

      ++a1[71];
      kdebug_trace();
    }

    else
    {
      ++a1[71];
      if (v11)
      {
        v20 = v10 * a5;
        v21 = &a6->mBuffers[0].mData;
        do
        {
          *(v21 - 1) = v20;
          v22 = *v21;
          v21 += 2;
          bzero(v22, v20);
          --v11;
        }

        while (v11);
      }

      (a1[4])(*a1, 2149253137);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _AUIOSpkrProcGKS();
    }
  }

  return 0;
}

void ___ZL22_AUIOStartPacketThreadP7tagAUIO_block_invoke(uint64_t a1, uint64_t a2)
{
  VCAudioBufferList_GetTimestamp(a2);
  VCAudioBufferList_GetSampleCount(a2);
  kdebug_trace();
  v4 = *(a1 + 32);

  _AUIOSendMicSamples(v4, a2);
}

void *newVideoRulesForFormatList(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = (a1 + 8);
    do
    {
      v7 = [VCVideoRule alloc];
      *&v8 = *v6;
      v9 = [(VCVideoRule *)v7 initWithFrameWidth:*(v6 - 2) frameHeight:*(v6 - 1) frameRate:123 payload:v8];
      if (v9)
      {
        v10 = v9;
        [v4 addObject:v9];
      }

      v6 += 3;
      --v2;
    }

    while (v2);
  }

  return v4;
}

void sub_1DBA4FC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VCVirtualAVCaptureVideoDataOutput_OnMediaSample(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 48));
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v10 = __VCVirtualAVCaptureVideoDataOutput_OnMediaSample_block_invoke;
  v11 = &unk_1E85F4AB8;
  v12 = v7;
  v13 = a1;
  v14 = a4;
  v15 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    dispatch_async(v8, block);
    os_unfair_lock_unlock((a1 + 48));
  }

  else
  {
    os_unfair_lock_unlock((a1 + 48));
    v10(block);
  }
}

uint64_t VCVideoCapture_CompareSinkEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t VCVideoCapture_DistributeVideoFrame(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 40));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __VCVideoCapture_DistributeVideoFrame_block_invoke;
  v9[3] = &__block_descriptor_72_e66_v24__0___VCSingleLinkedListEntry____VCSingleLinkedListEntry__8_B16l;
  v10 = *a3;
  v11 = *(a3 + 2);
  v9[4] = a2;
  v9[5] = a4;
  VCSingleLinkedListEnumerate(a1 + 112, v9);
  return pthread_mutex_unlock((a1 + 40));
}

double OUTLINED_FUNCTION_3_42()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

_DWORD *RateMonitorCreateWithHistoryLength(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10100407B5C152EuLL);
  v2[8] = a1;
  *(v2 + 5) = malloc_type_malloc(a1, 0x100004077774924uLL);
  return v2;
}

void RateMonitorDestroy(void **a1)
{
  free(a1[5]);

  free(a1);
}

double *RateMonitorConfigureWithThresholds(double *result, double a2, double a3, double a4, double a5)
{
  if (result)
  {
    result[8] = a5;
    result[2] = a3;
    result[3] = a4;
    result[1] = a2;
  }

  return result;
}

uint64_t RateMonitorUpdateDataSamples(uint64_t a1, double a2, double a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*a1 != 1)
  {
    return 0;
  }

  result = 0;
  v6 = 16;
  if (*(a1 + 8) < a2)
  {
    v6 = 24;
  }

  if (a2 != 0.0 && a3 != 0.0)
  {
    v8 = *(a1 + v6);
    v9 = vabdd_f64(a2, a3);
    v10 = v8 * a2;
    v11 = *(a1 + 52);
    v12 = *(a1 + 32);
    v13 = (v11 + 1) % v12;
    v14 = *(a1 + 40);
    if (v13 == *(a1 + 48))
    {
      v15 = *(a1 + 56) - *(v14 + v13);
      *(a1 + 48) = (v13 + 1) % v12;
    }

    else
    {
      v15 = *(a1 + 56);
    }

    v16 = v9 > v10;
    *(v14 + v11) = v9 > v8 * a2;
    if (v9 <= v10)
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 + 1;
    }

    *(a1 + 52) = v13;
    *(a1 + 56) = v17;
    v18 = v17 / v12;
    v19 = *(a1 + 64);
    if (v18 <= v19)
    {
      v20 = *(a1 + 72);
    }

    else
    {
      v20 = 1;
    }

    *(a1 + 72) = v20 & 1;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v23 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 48);
          v24 = *(a1 + 52);
          v26 = *(a1 + 56);
          v27 = *(a1 + 72);
          v32 = 136317698;
          v33 = v21;
          v34 = 2080;
          v35 = "RateMonitorUpdateDataSamples";
          v36 = 1024;
          v37 = 71;
          v38 = 1024;
          v39 = v24;
          v40 = 1024;
          v41 = v25;
          v42 = 2048;
          v43 = a2;
          v44 = 2048;
          v45 = a3;
          v46 = 2048;
          v47 = v8;
          v48 = 1024;
          v49 = v16;
          v50 = 1024;
          v51 = v26;
          v52 = 1024;
          v53 = v27;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rate Monitor: head index %d, tail index %d, dataSample1 %f, dataSample2 %f, tierTolerance %f, isAbnormalData %d, _abnormalCounter %d, isExceedingThreshold %d", &v32, 0x58u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 48);
        v28 = *(a1 + 52);
        v30 = *(a1 + 56);
        v31 = *(a1 + 72);
        v32 = 136317698;
        v33 = v21;
        v34 = 2080;
        v35 = "RateMonitorUpdateDataSamples";
        v36 = 1024;
        v37 = 71;
        v38 = 1024;
        v39 = v28;
        v40 = 1024;
        v41 = v29;
        v42 = 2048;
        v43 = a2;
        v44 = 2048;
        v45 = a3;
        v46 = 2048;
        v47 = v8;
        v48 = 1024;
        v49 = v16;
        v50 = 1024;
        v51 = v30;
        v52 = 1024;
        v53 = v31;
        _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Rate Monitor: head index %d, tail index %d, dataSample1 %f, dataSample2 %f, tierTolerance %f, isAbnormalData %d, _abnormalCounter %d, isExceedingThreshold %d", &v32, 0x58u);
      }
    }

    if (v18 > v19)
    {
      *(a1 + 48) = 0;
      result = 1;
      *(a1 + 56) = 0;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t VCCVOExtensionUtils_SetCVOOrientation(uint64_t result, char a2)
{
  if (result)
  {
    if (*result == -1)
    {
      return 0;
    }

    else
    {
      *result = *result & 0xFFFFFFFC | a2 & 3;
      return 1;
    }
  }

  return result;
}

uint64_t VCCVOExtensionUtils_CVOOrientation(int a1)
{
  if (a1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 3;
  }
}

uint64_t VCCVOExtensionUtils_SetCVOCamera(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1)
    {
      return 0;
    }

    else
    {
      *result = *result & 0xFFFFFFF7 | (8 * (a2 != 0));
      return 1;
    }
  }

  return result;
}

uint64_t VCCVOExtensionUtils_CVOCamera(unsigned int a1)
{
  if (a1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 >> 3) & 1;
  }
}

uint64_t VCCVOExtensionUtils_SetCVOFlip(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1)
    {
      return 0;
    }

    else
    {
      if (a2)
      {
        v2 = 4;
      }

      else
      {
        v2 = 0;
      }

      *result = *result & 0xFFFFFFFB | v2;
      return 1;
    }
  }

  return result;
}

uint64_t VCCVOExtensionUtils_RotateCVO(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1)
    {
      return 0;
    }

    else
    {
      *result = *result & 0xFFFFFFFC | (*result + a2) & 3;
      return 1;
    }
  }

  return result;
}

uint64_t VCCVOExtensionUtils_MirrorCVO(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result == -1)
    {
      return 0;
    }

    v2 = v1 ^ 4;
    *result = v1 ^ 4;
    v3 = v1 & 3;
    if (v1 == -5)
    {
      v3 = -1;
    }

    if (v3 == 3)
    {
      if (v1 == -5)
      {
        return 1;
      }

      v4 = v2 & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v3 != 1 || v1 == -5)
      {
        return 1;
      }

      v4 = v2 | 3;
    }

    *result = v4;
    return 1;
  }

  return result;
}

uint64_t VCCVOExtensionUtils_FillCVOExtension(unsigned int a1, char a2, uint64_t a3)
{
  *a3 = 16834238;
  *(a3 + 4) = 16 * a2;
  result = VCCameraStatusUtil_CVOFromCameraStatusBits(a1);
  *(a3 + 5) = result;
  *(a3 + 6) = 0;
  return result;
}

BOOL VCCVOExtensionUtils_CameraStatusBitsFromCVOExtension(unsigned int a1, unsigned __int16 *a2, unsigned int a3, _BYTE *a4)
{
  result = 0;
  v27 = *MEMORY[0x1E69E9840];
  if (a2 && a3 >= 4)
  {
    v6 = *a2;
    if (v6 == 57022)
    {
      if (a3 >= 5)
      {
        v7 = 4;
        do
        {
          v8 = *(a2 + v7);
          if (v8 >> 4 == 15)
          {
            break;
          }

          v9 = v7 + 1;
          if (v8 >= 0x10)
          {
            v7 = (v8 & 0xF) + v9 + 1;
            if (v7 > a3)
            {
              break;
            }

            if (v8 >> 4 == a1)
            {
              *a4 = 0x81828083 >> (8 * (*(a2 + v9) & 3));
              return 1;
            }
          }

          else
          {
            ++v7;
          }
        }

        while (v7 < a3);
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v17 = 136315906;
      v18 = v10;
      v19 = 2080;
      v20 = "VCCVOExtensionUtils_CameraStatusBitsFromCVOExtension";
      v21 = 1024;
      v22 = 203;
      v23 = 1024;
      v24 = a1;
      v12 = " [%s] %s:%d CVO extension ID not found %d";
      v13 = v11;
      v14 = 34;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v17 = 136316162;
      v18 = v15;
      v19 = 2080;
      v20 = "VCCVOExtensionUtils_CameraStatusBitsFromCVOExtension";
      v21 = 1024;
      v22 = 200;
      v23 = 1024;
      v24 = __rev16(v6);
      v25 = 1024;
      v26 = 48862;
      v12 = " [%s] %s:%d Invalid header extension profile 0x%x (should be 0x%x)";
      v13 = v16;
      v14 = 40;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    return 0;
  }

  return result;
}

uint64_t VCCVOExtensionUtils_GetCVOFromPixelBuffer(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = CMGetAttachment(a1, @"VCCVO", 0);
    result = 0xFFFFFFFFLL;
    if (v1)
    {
      valuePtr = -1;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCCVOExtensionUtils_GetCVOFromPixelBuffer_cold_1(v3);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

BOOL VCCVOExtensionUtils_AttachCVOToPixelBuffer(__CVBuffer *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CVBufferSetAttachment(a1, @"VCCVO", v3, kCVAttachmentMode_ShouldPropagate);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCCVOExtensionUtils_AttachCVOToPixelBuffer_cold_1(v4);
    }
  }

  return a1 != 0;
}

void VCAudioStreamTransport_SubmitWRMReportWithJitterBufferMetrics(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(__src, 0, sizeof(__src));
  WRMIncrementTime(a1);
  v8 = 0;
  RTPGetJitter(*(a1 + 264), (a1 + 52), &v8 + 1, &v8);
  RTPGetPacketSent(*(a1 + 264), (a1 + 196));
  *(a1 + 60) = *(a2 + 32);
  *(a1 + 24) = *a2;
  *(a1 + 72) = *(a2 + 16);
  v4 = *(a2 + 36);
  *(a1 + 80) = (*(a2 + 24) * 1000.0 / v4);
  *(a1 + 192) = v4;
  if (WRMGenerateReport(a1, __src))
  {
    global_queue = dispatch_get_global_queue(2, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __VCAudioStreamTransport_SubmitWRMReportWithJitterBufferMetrics_block_invoke;
    v6[3] = &__block_descriptor_344_e5_v8__0l;
    v6[4] = a1;
    memcpy(v7, __src, sizeof(v7));
    dispatch_async(global_queue, v6);
  }
}

void WRMReportMetricsCallback_0(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 reportWRMMetrics:a2];

  objc_autoreleasePoolPop(v4);
}

double AudioPacket_initNewPacket(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 14) = *(a1 + 14);
  v2 = *(a1 + 16);
  *(a2 + 16) = v2;
  *(a2 + 1816) = *(a1 + 1816);
  *(a2 + 1824) = *(a1 + 1824);
  *(a2 + 1832) = *(a1 + 1832);
  *(a2 + 1840) = *(a1 + 1840);
  result = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = result;
  *(a2 + 1856) = *(a1 + 1856);
  *(a2 + 1858) = *(a1 + 1858);
  *(a2 + 20) = v2;
  return result;
}

void _VCSystemAudioCapture_destroyAudioQueueBuffers(AudioQueueRef *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6986650];
  for (i = 6; i != 16; ++i)
  {
    v4 = AudioQueueFreeBuffer(*a1, a1[i]);
    if (v4)
    {
      v5 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v9 = v6;
          v10 = 2080;
          v11 = "_VCSystemAudioCapture_destroyAudioQueueBuffers";
          v12 = 1024;
          v13 = 589;
          v14 = 1024;
          v15 = v5;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioQueueFreeBuffer error: %i", buf, 0x22u);
        }
      }
    }
  }
}

void _VCSystemAudioCapture_handleInputBuffer(uint64_t a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v129 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 431;
        *&buf[28] = 1024;
        *&buf[30] = a6;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d input sample count = %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      _VCSystemAudioCapture_handleInputBuffer_cold_1();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *a5;
        *buf = 136315906;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 432;
        *&buf[28] = 1024;
        *&buf[30] = v18;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d input timestamp %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      _VCSystemAudioCapture_handleInputBuffer_cold_2();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v21 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 408) * *(a5 + 8);
        *buf = 136315906;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 433;
        *&buf[28] = 2048;
        *&buf[30] = v22;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d input hostTime %f", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v110 = *(a1 + 408) * *(a5 + 8);
      *buf = 136315906;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 433;
      *&buf[28] = 2048;
      *&buf[30] = v110;
      _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, " [%s] %s:%d input hostTime %f", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_25;
  }

  v23 = VRTraceErrorLogLevelToCSTR();
  v24 = *MEMORY[0x1E6986650];
  v25 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      _VCSystemAudioCapture_handleInputBuffer_cold_3();
      if (!a1)
      {
        goto LABEL_136;
      }

      goto LABEL_26;
    }

LABEL_25:
    if (!a1)
    {
      goto LABEL_136;
    }

    goto LABEL_26;
  }

  if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  v26 = *(a4 + 8);
  *buf = 136315906;
  *&buf[4] = v23;
  *&buf[12] = 2080;
  *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
  *&buf[22] = 1024;
  *&buf[24] = 434;
  *&buf[28] = 1024;
  *&buf[30] = v26;
  _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d input audio bytes %d", buf, 0x22u);
  if (!a1)
  {
LABEL_136:
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCSystemAudioCapture_handleInputBuffer_cold_9();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        _VCSystemAudioCapture_handleInputBuffer_cold_8();
      }
    }

    return;
  }

LABEL_26:
  if (*(*(a1 + 232) + 132))
  {
    v116 = a4;
    v27 = *(a1 + 272);
    v28 = *(a1 + 408) * *(a5 + 8);
    v29 = vcvtpd_u64_f64(v27 * (v28 - *(a1 + 432)));
    v115 = a1;
    if (*(a1 + 352) >= a6)
    {
      if (*(a1 + 376))
      {
        if (v28 > (a6 / v27 + *(a1 + 424)) * 1.2 && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v111 = *(v115 + 424);
            *buf = 136316418;
            *&buf[4] = v37;
            *&buf[12] = 2080;
            *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 461;
            *&buf[28] = 1024;
            *&buf[30] = a6;
            *&buf[34] = 2048;
            *&buf[36] = v111;
            *&buf[44] = 2048;
            *&buf[46] = v28;
            _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, " [%s] %s:%d inputSamples=%d for host time jump from time=%f to time=%f seconds", buf, 0x36u);
          }
        }

        a1 = v115;
        v39 = a4;
        *(v115 + 416) = v29;
      }

      else
      {
        *(a1 + 376) = 1;
        if (a2)
        {
          memset(buf, 0, 40);
          outData = 0.0;
          ioDataSize = 40;
          if (!AudioQueueGetProperty(a2, 0x61716674u, buf, &ioDataSize))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v40 = VRTraceErrorLogLevelToCSTR();
              v41 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v42 = *buf;
                *v121 = 136315906;
                v122 = v40;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 603;
                v127 = 2048;
                v128 = v42;
                _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %.1f mSampleRate", v121, 0x26u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v43 = VRTraceErrorLogLevelToCSTR();
              v44 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v43;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 604;
                v127 = 1024;
                LODWORD(v128) = *&buf[8];
                _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %d mFormatID", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v45 = VRTraceErrorLogLevelToCSTR();
              v46 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v45;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 605;
                v127 = 1024;
                LODWORD(v128) = *&buf[12];
                _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: 0x%x mFormatFlags", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v47;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 606;
                v127 = 1024;
                LODWORD(v128) = *&buf[16];
                _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %d mBytesPerPacket", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v49 = VRTraceErrorLogLevelToCSTR();
              v50 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v49;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 607;
                v127 = 1024;
                LODWORD(v128) = *&buf[20];
                _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %d mFramesPerPacket", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v51 = VRTraceErrorLogLevelToCSTR();
              v52 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v51;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 608;
                v127 = 1024;
                LODWORD(v128) = *&buf[24];
                _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %d mBytesPerFrame", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v53 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v53;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 609;
                v127 = 1024;
                LODWORD(v128) = *&buf[28];
                _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %d mChannelsPerFrame", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v55 = VRTraceErrorLogLevelToCSTR();
              v56 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v55;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 610;
                v127 = 1024;
                LODWORD(v128) = *&buf[32];
                _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %d mBitsPerChannel", v121, 0x22u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v57 = VRTraceErrorLogLevelToCSTR();
              v58 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315906;
                v122 = v57;
                v123 = 2080;
                v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
                v125 = 1024;
                v126 = 611;
                v127 = 1024;
                LODWORD(v128) = *&buf[36];
                _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: 0x%x mReserved", v121, 0x22u);
              }
            }
          }

          ioDataSize = 8;
          if (!AudioQueueGetProperty(a2, 0x61717372u, &outData, &ioDataSize) && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v59 = VRTraceErrorLogLevelToCSTR();
            v60 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v61 = outData;
              *v121 = 136315906;
              v122 = v59;
              v123 = 2080;
              v124 = "_VCSystemAudioCapture_logInfoForFirstAudioBufferReceived";
              v125 = 1024;
              v126 = 618;
              v127 = 2048;
              v128 = v61;
              _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Queue config: %.1f sample rate", v121, 0x26u);
            }
          }

          a1 = v115;
        }

        *(a1 + 416) = 0;
        *(a1 + 432) = v28;
        v39 = a4;
      }

      v114 = a3;
      *(a1 + 424) = v28;
      kdebug_trace();
      v62 = a1;
      v63 = *(a1 + 416);
      v64 = *(v62 + 424);
      v65 = *(v62 + 384);
      v66 = v62 + 272;
      SampleCount = VCAudioBufferList_GetSampleCount(v65);
      v68 = SampleCount + a6;
      VCAudioBufferList_SetTime(v65, v63, v64);
      VCAudioBufferList_SetSampleCount(v65, v68);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v69 = VRTraceErrorLogLevelToCSTR();
        v70 = *MEMORY[0x1E6986650];
        v71 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v69;
            *&buf[12] = 2080;
            *&buf[14] = "_VCSystemAudioCapture_appendInputBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 533;
            *&buf[28] = 1024;
            *&buf[30] = v68;
            _os_log_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d append sample count %d", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          _VCSystemAudioCapture_handleInputBuffer_cold_4();
        }
      }

      v113 = a2;
      AudioBufferList = VCAudioBufferList_GetAudioBufferList(v65);
      v73 = 0;
      *AudioBufferList = 1;
      v74 = AudioBufferList + 4;
      v75 = (*(v66 + 24) * SampleCount);
      do
      {
        *(v74 - 2) = *(v66 + 28);
        *(v74 - 1) = *(v39 + 8) + v75;
        if (v68 <= VCAudioBufferList_GetSampleCapacity(v65))
        {
          memcpy((*v74 + v75), *v39, *(v39 + 8));
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v76 = VRTraceErrorLogLevelToCSTR();
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v78 = *MEMORY[0x1E6986650];
          if (IsOSFaultDisabled)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = v76;
              *&buf[12] = 2080;
              *&buf[14] = "_VCSystemAudioCapture_appendInputBuffer";
              *&buf[22] = 1024;
              *&buf[24] = 543;
              *&buf[28] = 1024;
              *&buf[30] = v68;
              _os_log_error_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_ERROR, " [%s] %s:%d can not copy %d audio samples", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            *buf = 136315906;
            *&buf[4] = v76;
            *&buf[12] = 2080;
            *&buf[14] = "_VCSystemAudioCapture_appendInputBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 543;
            *&buf[28] = 1024;
            *&buf[30] = v68;
            _os_log_fault_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_FAULT, " [%s] %s:%d can not copy %d audio samples", buf, 0x22u);
          }
        }

        ++v73;
        v74 += 2;
        v39 = v116;
      }

      while (v73 < *AudioBufferList);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      a3 = v114;
      if (ErrorLogLevelForModule >= 8)
      {
        v80 = VRTraceErrorLogLevelToCSTR();
        v81 = *MEMORY[0x1E6986650];
        v82 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            Timestamp = VCAudioBufferList_GetTimestamp(*(v115 + 384));
            *buf = 136315906;
            *&buf[4] = v80;
            *&buf[12] = 2080;
            *&buf[14] = "_VCSystemAudioCapture_processInputBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 484;
            *&buf[28] = 1024;
            *&buf[30] = Timestamp;
            _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d append timestamp %d", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          _VCSystemAudioCapture_handleInputBuffer_cold_5(v80, v115);
        }
      }

      v84 = VCAudioBufferList_GetSampleCount(*(v115 + 384));
      v85 = *(v115 + 352);
      a2 = v113;
      if (v85 <= v84)
      {
        v86 = *(v115 + 392);
        v87 = *(v115 + 384);
        VCAudioBufferList_Reset(v86);
        v88 = VCAudioBufferList_GetSampleCount(v87) - v85;
        v89 = VCAudioBufferList_GetHostTime(v87) - v88 / *(v115 + 272);
        v112 = VCAudioBufferList_GetTimestamp(v87) - v88;
        VCAudioBufferList_SetTime(v86, v112, v89);
        VCAudioBufferList_SetSampleCount(v86, v85);
        _VCSystemAudioCapture_CopyOutputBuffer(v86, v87, v85, v115 + 312);
        v90 = VCAudioBufferList_GetAudioBufferList(v87);
        VCAudioBufferList_SetSampleCount(v87, v88);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v91 = VRTraceErrorLogLevelToCSTR();
          v92 = *MEMORY[0x1E6986650];
          v93 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v91;
              *&buf[12] = 2080;
              *&buf[14] = "_VCSystemAudioCapture_UpdateAppendBuffer";
              *&buf[22] = 1024;
              *&buf[24] = 553;
              *&buf[28] = 1024;
              *&buf[30] = v88;
              _os_log_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d append sample count %d", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            _VCSystemAudioCapture_handleInputBuffer_cold_6();
          }
        }

        v94 = 0;
        v95 = *(v115 + 296);
        *v90 = 1;
        v117 = v85;
        v96 = v95 * v85;
        v97 = v95 * v88;
        do
        {
          v98 = *(v90 + 12) - v96;
          *(v90 + 8) = *(v115 + 300);
          *(v90 + 12) = v98;
          if (VCAudioBufferList_GetSampleCapacity(v87) >= v88)
          {
            memcpy(*(v90 + 16), (*(v90 + 16) + v96), v97);
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            v99 = VRTraceErrorLogLevelToCSTR();
            v100 = VRTraceIsOSFaultDisabled();
            v101 = *MEMORY[0x1E6986650];
            if (v100)
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = v99;
                *&buf[12] = 2080;
                *&buf[14] = "_VCSystemAudioCapture_UpdateAppendBuffer";
                *&buf[22] = 1024;
                *&buf[24] = 563;
                *&buf[28] = 1024;
                *&buf[30] = v88;
                _os_log_error_impl(&dword_1DB56E000, v101, OS_LOG_TYPE_ERROR, " [%s] %s:%d can not copy %d audio samples", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              *buf = 136315906;
              *&buf[4] = v99;
              *&buf[12] = 2080;
              *&buf[14] = "_VCSystemAudioCapture_UpdateAppendBuffer";
              *&buf[22] = 1024;
              *&buf[24] = 563;
              *&buf[28] = 1024;
              *&buf[30] = v88;
              _os_log_fault_impl(&dword_1DB56E000, v101, OS_LOG_TYPE_FAULT, " [%s] %s:%d can not copy %d audio samples", buf, 0x22u);
            }
          }

          ++v94;
        }

        while (v94 < *v90);
        v102 = v115;
        if (*(v115 + 448))
        {
          VCAudioBufferList_SetTime(*(v115 + 400), v112, v89);
          VCAudioBufferList_SetSampleCount(*(v115 + 400), v117);
          VCAudioInjector_InjectSamples(*(v115 + 448), *(v115 + 400), 0, 0);
          v102 = v115;
          _VCSystemAudioCapture_CopyOutputBuffer(*(v115 + 392), *(v115 + 400), v117, v115 + 312);
        }

        v103 = VCAudioBufferList_GetTimestamp(*(v102 + 392));
        v104 = VCAudioBufferList_GetSampleCount(*(v102 + 392));
        HostTime = VCAudioBufferList_GetHostTime(*(v102 + 392));
        a3 = v114;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v106 = VRTraceErrorLogLevelToCSTR();
          v107 = *MEMORY[0x1E6986650];
          v108 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              *&buf[4] = v106;
              *&buf[12] = 2080;
              *&buf[14] = "_VCSystemAudioCapture_processInputBuffer";
              *&buf[22] = 1024;
              *&buf[24] = 494;
              *&buf[28] = 1024;
              *&buf[30] = v103;
              *&buf[34] = 1024;
              *&buf[36] = v104;
              *&buf[40] = 2048;
              *&buf[42] = HostTime;
              _os_log_impl(&dword_1DB56E000, v107, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d outputTimestamp=%d, outputSampleCount=%d, outputHostTime=%f", buf, 0x32u);
            }
          }

          else if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316418;
            *&buf[4] = v106;
            *&buf[12] = 2080;
            *&buf[14] = "_VCSystemAudioCapture_processInputBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 494;
            *&buf[28] = 1024;
            *&buf[30] = v103;
            *&buf[34] = 1024;
            *&buf[36] = v104;
            *&buf[40] = 2048;
            *&buf[42] = HostTime;
            _os_log_debug_impl(&dword_1DB56E000, v107, OS_LOG_TYPE_DEBUG, " [%s] %s:%d outputTimestamp=%d, outputSampleCount=%d, outputHostTime=%f", buf, 0x32u);
          }
        }

        kdebug_trace();
        (*(v102 + 368))(*(v102 + 360), *(v102 + 392));
        a2 = v113;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(v115 + 424);
          *buf = 136316418;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 471;
          *&buf[28] = 1024;
          *&buf[30] = a6;
          *&buf[34] = 2048;
          *&buf[36] = v32;
          *&buf[44] = 2048;
          *&buf[46] = v28;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d discarding inputSamples=%d between time=%f and time=%f seconds", buf, 0x36u);
        }
      }

      *(v115 + 416) = v29;
      *(v115 + 424) = v28;
    }

    if (a2)
    {
      if (AudioQueueEnqueueBuffer(a2, a3, 0, 0))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v109 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v109;
            *&buf[12] = 2080;
            *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 477;
            v36 = " [%s] %s:%d Could not enqueue audio buffer";
LABEL_134:
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v36, buf, 0x1Cu);
          }
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    v35 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = "_VCSystemAudioCapture_handleInputBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 442;
      v36 = " [%s] %s:%d stopped processing audio packets";
      goto LABEL_134;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      _VCSystemAudioCapture_handleInputBuffer_cold_7();
    }
  }
}

void _VCSystemAudioCapture_CopyOutputBuffer(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 28);
  if ((*(a4 + 12) & 0x20) != 0 && v8 == 2)
  {
    if (VCAudioBufferList_GetSampleCapacity(a1) < a3 && VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCSystemAudioCapture_CopyOutputBuffer_cold_4();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        _VCSystemAudioCapture_CopyOutputBuffer_cold_3();
      }
    }

    AudioBufferList = VCAudioBufferList_GetAudioBufferList(a1);
    v24 = VCAudioBufferList_GetAudioBufferList(a2);
    v16 = *(a4 + 24);
    v15 = *(a4 + 28);
    *AudioBufferList = v15;
    if (v15)
    {
      v17 = 0;
      v18 = v16 * a3;
      do
      {
        v19 = &AudioBufferList[4 * v17 + 2];
        *v19 = 1;
        *(v19 + 4) = v18;
        if (a3)
        {
          v20 = 0;
          v21 = 0;
          v22 = *(v24 + 16) + (*(a4 + 24) * v17);
          v23 = *(v19 + 8);
          do
          {
            memcpy((v23 + (*(a4 + 24) * v21++)), (v22 + (v20 * *(a4 + 24))), *(a4 + 24));
            v20 += 2;
          }

          while (a3 != v21);
          v15 = *AudioBufferList;
        }

        ++v17;
      }

      while (v17 < v15);
    }
  }

  else
  {
    v9 = VCAudioBufferList_GetAudioBufferList(a1);
    v10 = VCAudioBufferList_GetAudioBufferList(a2);
    v11 = *(a4 + 24) * a3;
    *v9 = 1;
    *(v9 + 8) = v8;
    *(v9 + 12) = v11;
    if (VCAudioBufferList_GetSampleCapacity(a1) >= a3)
    {
      v12 = *(v9 + 16);
      v13 = *(v10 + 16);

      memcpy(v12, v13, v11);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCSystemAudioCapture_CopyOutputBuffer_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        _VCSystemAudioCapture_CopyOutputBuffer_cold_1();
      }
    }
  }
}

void OUTLINED_FUNCTION_30_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x1Cu);
}

void OUTLINED_FUNCTION_38_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x22u);
}

uint64_t VCExperimentDefinitions_ExperimentConfigurations()
{
  v30[14] = *MEMORY[0x1E69E9840];
  v29[0] = @"nackgeneration";
  v27 = @"experimentThresholdKey";
  v28 = @"vc-experiment-nack-generation";
  v30[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v29[1] = @"enableFrameBasedFEC";
  v25 = @"experimentThresholdKey";
  v26 = @"vc-experiment-fec-frame-based";
  v30[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v29[2] = @"enableEnhancedJBAdaptationsForFTA";
  v23 = @"experimentThresholdKey";
  v24 = @"vc-enhanced-jb-adaptations-fta";
  v30[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v29[3] = @"enableEnhancedJBAdaptationsForFTV";
  v21 = @"experimentThresholdKey";
  v22 = @"vc-enhanced-jb-adaptations-ftv";
  v30[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v29[4] = @"enableJBLatencySensitiveMode";
  v19 = @"experimentThresholdKey";
  v20 = @"vc-enable-jb-latency-sensitive-mode";
  v30[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v29[5] = @"enableLateKeyFrameDetection";
  v17 = @"experimentThresholdKey";
  v18 = @"vc-ab-testing-enable-late-key-frame-detection";
  v30[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v29[6] = @"enableLowBandwidthOptimization";
  v15 = @"experimentThresholdKey";
  v16 = @"vc-experiment-low-bandwidth-optimization";
  v30[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v29[7] = @"alwaysReportNetworkStatistics";
  v13 = @"experimentThresholdKey";
  v14 = @"vc-experiment-always-report-network-statistics";
  v30[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v29[8] = @"enableInactiveAACELDFrameDetection";
  v11 = @"experimentThresholdKey";
  v12 = @"vc-ab-testing-detect-inactive-audio-frames-AACELD";
  v30[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v29[9] = @"enableMaxCameraBitrateVideoQualityV4";
  v9 = @"experimentThresholdKey";
  v10 = @"vc-ab-test-enable-max-camera-bitrate-video-quality-v4-threshold";
  v30[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v29[10] = @"enableACC24ForU1";
  v7 = @"experimentThresholdKey";
  v8 = @"vc-ab-testing-use-audio-codec-ACC24-for-U1";
  v30[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v29[11] = @"enableACC24FixedBitrateMode";
  v5 = @"experimentThresholdKey";
  v6 = @"vc-ab-testing-enable-ACC24-fixed-bitrate-mode";
  v30[11] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v29[12] = @"enableACC24ForGFT";
  v3 = @"experimentThresholdKey";
  v4 = @"vc-ab-testing-use-audio-codec-ACC24-for-GFT";
  v30[12] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v29[13] = @"enableFastLQMReporting";
  v1 = @"experimentThresholdKey";
  v2 = @"vc-experiment-fast-lqm-reporting-threshold";
  v30[13] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:14];
}

void VCVideoStream_DidReceiveSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    VCMediaStream_Lock(a1);
    *(a1 + 1096) = micro();
    if (a3)
    {
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoStream-DidReceiveSampleBuffer");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136315906;
          *(&buf.value + 4) = v6;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "VCVideoStream_DidReceiveSampleBuffer";
          HIWORD(buf.epoch) = 1024;
          v14 = 3700;
          v15 = 2048;
          v16 = a1;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d @:@ VCVideoStream-DidReceiveSampleBuffer VCVideoStream[%p] received first remote frame", &buf, 0x26u);
        }
      }

      _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(a1, 212, 0, 0);
      _VCVideoStream_ReportingAlgosVideoStreamEvent(a1);
      kdebug_trace();
      v8 = VCRemoteVideoManager_DefaultManager();
      VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken(v8, *(a1 + 624));
    }

    if ((*(a1 + 1010) & 1) == 0)
    {
      *(a1 + 1010) = 1;
      memset(&buf, 170, sizeof(buf));
      CMSampleBufferGetPresentationTimeStamp(&buf, a2);
      v9 = *(a1 + 168);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __VCVideoStream_DidReceiveSampleBuffer_block_invoke;
      v11[3] = &unk_1E85F6C70;
      v11[4] = a1;
      v12 = buf;
      dispatch_async(v9, v11);
    }

    v10 = *(a1 + 920);
    if (v10)
    {
      if ((VCImageQueue_EnqueueSampleBuffer(v10, a2) & 1) == 0)
      {
        VCVideoStream_DidReceiveSampleBuffer_cold_1(a1);
      }
    }

    else
    {
      VCVideoStream_DidReceiveSampleBuffer_cold_2();
    }

    VCMediaStream_Unlock(a1);
  }

  else
  {
    VCVideoStream_DidReceiveSampleBuffer_cold_3();
  }
}

BOOL _VCVideoStream_DidReceiveRemoteFrame(uint64_t a1, __CVBuffer *a2, CMTime *a3, void *a4, uint64_t a5, int a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCVideoStream_DidReceiveRemoteFrame_cold_1();
    return a1 != 0;
  }

  VCMediaStream_Lock(a1);
  *(a1 + 1096) = micro();
  if (!*(a1 + 920) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCVideoStream_DidReceiveRemoteFrame_cold_2();
    }
  }

  if (CVBufferGetAttachment(a2, @"HIDTimeStamp", 0))
  {
    UInt64 = FigCFNumberGetUInt64();
    valuePtr = FigHostTimeToNanoseconds() / 1000000000.0;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136316418;
          *(&buf.value + 4) = v13;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VCVideoStream_DidReceiveRemoteFrame";
          HIWORD(buf.epoch) = 1024;
          LODWORD(v44) = 3770;
          WORD2(v44) = 2048;
          *(&v44 + 6) = UInt64;
          HIWORD(v44) = 2048;
          v45 = UInt64;
          v46 = 2048;
          v47 = valuePtr;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Attaching origin HID event timestamp=0x%llx %lld %fs", &buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.value) = 136316418;
        *(&buf.value + 4) = v13;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VCVideoStream_DidReceiveRemoteFrame";
        HIWORD(buf.epoch) = 1024;
        LODWORD(v44) = 3770;
        WORD2(v44) = 2048;
        *(&v44 + 6) = UInt64;
        HIWORD(v44) = 2048;
        v45 = UInt64;
        v46 = 2048;
        v47 = valuePtr;
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, "VCVideoStream [%s] %s:%d Attaching origin HID event timestamp=0x%llx %lld %fs", &buf, 0x3Au);
      }
    }

    v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    CVBufferSetAttachment(a2, *MEMORY[0x1E6971E38], v16, kCVAttachmentMode_ShouldPropagate);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136316162;
        *(&buf.value + 4) = v17;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VCVideoStream_DidReceiveRemoteFrame";
        HIWORD(buf.epoch) = 1024;
        LODWORD(v44) = 3778;
        WORD2(v44) = 2048;
        *(&v44 + 6) = a1;
        HIWORD(v44) = 2112;
        v45 = a4;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] remoteVideoAttributes:%@", &buf, 0x30u);
      }
    }

    if (*(a1 + 920))
    {
      EncodedCFDictionary = VideoAttributes_CreateEncodedCFDictionary(a4);
      VCImageQueue_EnqueueAttributes(*(a1 + 920), EncodedCFDictionary);
      if (EncodedCFDictionary)
      {
        CFRelease(EncodedCFDictionary);
      }
    }

    buf = *a3;
    [a4 setFramePresentationTime:&buf];
    v20 = VCRemoteVideoManager_DefaultManager();
    VCRemoteVideoManager_RemoteVideoAttributesDidChange(v20, a4, *(a1 + 624));
    _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(a1, 211, a4, 0);
  }

  v21 = *(a1 + 168);
  buf.value = MEMORY[0x1E69E9820];
  *&buf.timescale = 3221225472;
  buf.epoch = ___VCVideoStream_NotifyVideoStreamDelegate_block_invoke;
  *&v44 = &unk_1E85F37F0;
  *(&v44 + 1) = a5;
  v45 = a1;
  dispatch_async(v21, &buf);
  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136316162;
        *(&buf.value + 4) = v22;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VCVideoStream_DidReceiveRemoteFrame";
        HIWORD(buf.epoch) = 1024;
        LODWORD(v44) = 3793;
        WORD2(v44) = 2048;
        *(&v44 + 6) = a1;
        HIWORD(v44) = 2112;
        v45 = a5;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] remoteScreenAttributes=%@", &buf, 0x30u);
      }
    }

    v24 = VCRemoteVideoManager_DefaultManager();
    VCRemoteVideoManager_RemoteScreenAttributesDidChange(v24, a5, *(a1 + 624));
  }

  v25 = *(a1 + 920);
  buf = *a3;
  if ((VCImageQueue_EnqueueFrame(v25, a2, &buf) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
    _VCVideoStream_DidReceiveRemoteFrame_cold_3();
    if (a6)
    {
LABEL_32:
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoStream-DidReceiveRemoteFrame");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          buf = *a3;
          Seconds = CMTimeGetSeconds(&buf);
          LODWORD(buf.value) = 136316418;
          *(&buf.value + 4) = v26;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VCVideoStream_DidReceiveRemoteFrame";
          HIWORD(buf.epoch) = 1024;
          LODWORD(v44) = 3803;
          WORD2(v44) = 2048;
          *(&v44 + 6) = a1;
          HIWORD(v44) = 2048;
          v45 = a1;
          v46 = 2048;
          v47 = Seconds;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d @:@ VCVideoStream-DidReceiveRemoteFrame (%p) receiver[%p] received first remote frame frameTime=%f", &buf, 0x3Au);
        }
      }

      _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(a1, 212, 0, 0);
      _VCVideoStream_ReportingAlgosVideoStreamEvent(a1);
      kdebug_trace();
      v29 = VCRemoteVideoManager_DefaultManager();
      VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken(v29, *(a1 + 624));
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  Attachment = CVBufferGetAttachment(a2, @"FramePriority", 0);
  if (Attachment)
  {
    LOBYTE(buf.value) = -86;
    CFNumberGetValue(Attachment, kCFNumberCharType, &buf);
    value = buf.value;
    if (*(a1 + 978) != LOBYTE(buf.value))
    {
      *(a1 + 978) = buf.value;
      v32 = *(a1 + 168);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___VCVideoStream_DidReceiveRemoteFrame_block_invoke;
      block[3] = &unk_1E85F37A0;
      block[4] = a1;
      v41 = value;
      dispatch_async(v32, block);
    }
  }

  if (*(a1 + 272))
  {
    buf = *a3;
    SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(a2, &buf.value);
    v34 = (micro() * 1000.0);
    [*(a1 + 272) stream:a1 addVideoSampleBuffer:SampleBufferWithPixelBuffer cameraStatusBits:VCCameraStatusBitsFromVideoAttributes(a4) timestamp:v34];
    FigSampleBufferRelease();
  }

  _VCVideoStream_CacheRemoteVideoFrame(a1, a2);
  if ((*(a1 + 1010) & 1) == 0)
  {
    *(a1 + 1010) = 1;
    v35 = *(a1 + 168);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___VCVideoStream_DidReceiveRemoteFrame_block_invoke_2;
    v37[3] = &unk_1E85F6C70;
    v37[4] = a1;
    v38 = *&a3->value;
    epoch = a3->epoch;
    dispatch_async(v35, v37);
    [*(a1 + 752) stopTimingForKey:19];
    [a1 reportStreamPerfTimings];
  }

  VCMediaStream_Unlock(a1);
  return a1 != 0;
}

void VCVideoStream_ProcessConvertedFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([a1 state] == 2 || *(a1 + 888) == 2)
  {
    v8 = atomic_load((a1 + 1012));
    if (v8)
    {
      v9 = *(a1 + 928);
      v10 = *(a4 + 16);
      *v19 = *a3;
      *&v19[16] = *(a3 + 16);
      VCVideoTransmitter_EnqueueVideoFrame(v9, a2, v19, v10);
    }

    return;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136315650;
        *&v19[4] = v12;
        *&v19[12] = 2080;
        *&v19[14] = "VCVideoStream_ProcessConvertedFrame";
        *&v19[22] = 1024;
        v20 = 3996;
        v14 = "VCVideoStream [%s] %s:%d Can't enqueue, VideoStream is not running yet";
        v15 = v13;
        v16 = 28;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v19, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136316162;
        *&v19[4] = v17;
        *&v19[12] = 2080;
        *&v19[14] = "VCVideoStream_ProcessConvertedFrame";
        *&v19[22] = 1024;
        v20 = 3996;
        v21 = 2112;
        v22 = v11;
        v23 = 2048;
        v24 = a1;
        v14 = "VCVideoStream [%s] %s:%d %@(%p) Can't enqueue, VideoStream is not running yet";
        v15 = v18;
        v16 = 48;
        goto LABEL_16;
      }
    }
  }
}

void _VCVideoStreamNWConnectionNotificationCallback(void *a1, uint64_t a2)
{
  if (a1)
  {

    [a1 handleNWConnectionNotification:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCVideoStreamNWConnectionNotificationCallback_cold_1();
    }
  }
}

void _VCVideoStreamNWConnectionPacketEventCallback(void *a1, uint64_t a2)
{
  if (a1)
  {

    [a1 handleNWConnectionPacketEvent:a2 eventType:1];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCVideoStreamNWConnectionPacketEventCallback_cold_1();
    }
  }
}

uint64_t _VCVideoStreamVTPNotificationCallback(int a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v5 = MEMORY[0x1E1289F20](v9);
  v6 = v5;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      [v5 handleVTPSendFailedWithData:a3];
      v7 = 0;
      if (!v6)
      {
        return v7;
      }

      goto LABEL_9;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCVideoStreamVTPNotificationCallback_cold_1();
      }
    }
  }

  v7 = 0xFFFFFFFFLL;
  if (v6)
  {
LABEL_9:
    CFRelease(v6);
  }

  return v7;
}

uint64_t _VCVideoStream_GetReportingClientType(void *a1)
{
  v2 = [objc_msgSend(a1 "defaultStreamConfig")];
  result = 0xFFFFFFFFLL;
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 3)
      {
        v4 = 6;
      }

      else
      {
        v4 = -1;
      }

      if (v2 == 2)
      {
        return 9;
      }

      else
      {
        return v4;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {

        return [a1 secondDisplayReportingClientType];
      }
    }

    else
    {
      return 3;
    }

    return result;
  }

  if (v2 > 5)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return 26;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    goto LABEL_21;
  }

  if (v2 != 4)
  {
LABEL_21:

    return [a1 screenSharingReportingClientType];
  }

  return [a1 remoteCameraReportingClientType];
}

void _VCVideoStream_CacheRemoteVideoFrame(uint64_t a1, CVPixelBufferRef texture)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (*(a1 + 1011) == 1)
  {
    CVPixelBufferRetain(texture);
    v4 = *(a1 + 896);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCVideoStream_CacheRemoteVideoFrame_block_invoke;
    block[3] = &unk_1E85F40E0;
    block[4] = a1;
    block[5] = texture;
    dispatch_async(v4, block);
  }
}

void _VCVideoStream_ReportingAlgosVideoStreamEvent(void *a1)
{
  ReportingClientType = _VCVideoStream_GetReportingClientType(a1);
  v3 = [a1 defaultStreamConfig];
  if (ReportingClientType == 6)
  {
    v4 = v3;
    if ([v3 direction] == 2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"VCSPUUID", [objc_msgSend(v4 "multiwayConfig")]);
      reportingGenericEvent();
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

void _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(uint64_t a1, int a2, void *a3, const void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (a2 > 210)
  {
    if (a2 > 224)
    {
      if (a2 == 225)
      {
        v18 = CFStringCreateWithFormat(v8, 0, @"%d", *(a1 + 904));
        CFDictionaryAddValue(v10, @"VCVSTMMB", v18);
        CFRelease(v18);
        goto LABEL_53;
      }

      if (a2 != 230)
      {
        goto LABEL_53;
      }

      v12 = @"VCVSActiveStreamID";
      v11 = a4;
      goto LABEL_52;
    }

    if (a2 == 211)
    {
      v15 = MEMORY[0x1E696AD98];
      [a3 ratio];
      CFDictionaryAddValue(v10, @"VCVSRxVideoWidth", [v15 numberWithDouble:?]);
      v16 = MEMORY[0x1E696AD98];
      [a3 ratio];
      CFDictionaryAddValue(v10, @"VCVSRxVideoHeight", [v16 numberWithDouble:v17]);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "orientation")}];
      v12 = @"VCVSRxVideoOrientation";
    }

    else
    {
      if (a2 != 212)
      {
        goto LABEL_53;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithLong:time(0)];
      v12 = @"Time";
    }

LABEL_51:
    Mutable = v10;
LABEL_52:
    CFDictionaryAddValue(Mutable, v12, v11);
    goto LABEL_53;
  }

  switch(a2)
  {
    case 201:
      v13 = [a1 defaultStreamConfig];
      v14 = *(a1 + 280);
      if (v14)
      {
        CFDictionaryAddValue(v10, @"CallID", v14);
      }

      else if (*(a1 + 888) != 3 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID_cold_1();
        }
      }

      v23 = [MEMORY[0x1E696AD98] numberWithLong:time(0)];
      CFDictionaryAddValue(v10, @"Time", v23);
      v24 = *(a1 + 280);
      if (v24)
      {
        v25 = CFStringCreateWithFormat(v8, 0, @"%s", [objc_msgSend(v24 "description")]);
        CFDictionaryAddValue(v10, @"VCVSUUID", v25);
        CFRelease(v25);
        v26 = CFStringCreateWithFormat(v8, 0, @"%@:%d", [objc_msgSend(v13 "localAddress")], objc_msgSend(objc_msgSend(v13, "localAddress"), "port"));
        CFDictionaryAddValue(v10, @"VCVSLocalIPPort", v26);
        CFRelease(v26);
        v27 = CFStringCreateWithFormat(v8, 0, @"%@:%d", [objc_msgSend(v13 "remoteAddress")], objc_msgSend(objc_msgSend(v13, "remoteAddress"), "port"));
        CFDictionaryAddValue(v10, @"VCVSRemoteIPPort", v27);
        CFRelease(v27);
      }

      v28 = *(a1 + 248);
      if (v28)
      {
        v29 = CFStringCreateWithFormat(v8, 0, @"%s", [objc_msgSend(v28 "description")]);
        CFDictionaryAddValue(v10, @"VCVSIDSDestination", v29);
        CFRelease(v29);
      }

      v30 = CFStringCreateWithFormat(v8, 0, @"%ld", *(a1 + 624));
      CFDictionaryAddValue(v10, @"VCVSStreamToken", v30);
      CFRelease(v30);
      CFDictionaryAddValue(v10, @"VCMSDirection", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "direction")}]);
      alloc = v8;
      v31 = CFStringCreateWithFormat(v8, 0, @"%u", [v13 isRateAdaptationEnabled]);
      CFDictionaryAddValue(v10, @"VCVSRateAdaptationEnabled", v31);
      CFRelease(v31);
      v32 = MEMORY[0x1E696AD98];
      v50 = v13;
      [v13 rtcpSendInterval];
      CFDictionaryAddValue(v10, @"VCVSRtcpSendInterval", [v32 numberWithDouble:?]);
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v51 = a1;
      v34 = *(a1 + 552);
      v35 = [v34 countByEnumeratingWithState:&v58 objects:v57 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v59;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v58 + 1) + 8 * i);
            if ([objc_msgSend(objc_msgSend(v39 "streamConfig")])
            {
              [v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(objc_msgSend(objc_msgSend(v39, "streamConfig"), "multiwayConfig"), "repairedStreamID"))}];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v58 objects:v57 count:16];
        }

        while (v36);
      }

      if ([v33 count])
      {
        v40 = CFStringCreateWithFormat(alloc, 0, @"%s", [objc_msgSend(v33 componentsJoinedByString:{@", "), "UTF8String"}]);
        CFDictionaryAddValue(v10, @"VCVSRepairIDs", v40);
        CFRelease(v40);
      }

      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v41 = [objc_msgSend(objc_msgSend(v51 "defaultStreamConfig")];
      v42 = [v41 countByEnumeratingWithState:&v53 objects:v52 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v54;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v54 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v53 + 1) + 8 * j);
            v47 = [v46 keyFrameInterval];
            if (v47 == [v46 framerate])
            {
              CFDictionaryAddValue(v10, @"VCVSSubStreamIDs", [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v46, "idsStreamID")}]);
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v53 objects:v52 count:16];
        }

        while (v43);
      }

      v48 = *(v51 + 584);
      if (v48)
      {
        CFDictionaryAddValue(v10, @"VCVSRemoteDeviceModel", [v48 deviceType]);
        CFDictionaryAddValue(v10, @"VCVSRemoteOSBuildVersion", [*(v51 + 584) osVersion]);
        CFDictionaryAddValue(v10, @"VCVSRemoteFrameworkVersion", [*(v51 + 584) frameworkVersion]);
      }

      CFDictionaryAddValue(v10, @"VCVSConfigHDRMode", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v50, "hdrMode")}]);
      _VCVideoStream_CollectVideoConfigMetrics(v51, v10);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v51 + 776)];
      v12 = @"VCMSConnectionType";
      goto LABEL_51;
    case 202:
      v19 = *(a1 + 280);
      if (v19)
      {
        v20 = CFStringCreateWithFormat(v8, 0, @"%s", [objc_msgSend(v19 "description")]);
        CFDictionaryAddValue(v10, @"VCVSUUID", v20);
        CFRelease(v20);
      }

      v21 = CFStringCreateWithFormat(v8, 0, @"%ld", *(a1 + 624));
      CFDictionaryAddValue(v10, @"VCVSStreamToken", v21);
      CFRelease(v21);
      v22 = [a1 endReason];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
      v12 = @"VCMSEndReason";
      goto LABEL_51;
    case 205:
      _VCVideoStream_CollectVideoConfigMetrics(a1, Mutable);
      break;
  }

LABEL_53:
  reportingVideoStreamEvent();
  if (v10)
  {
    CFRelease(v10);
  }
}

void _VCVideoStream_CollectVideoConfigMetrics(id *a1, __CFDictionary *a2)
{
  v4 = [a1 defaultStreamConfig];
  v5 = [v4 temporalScalingEnabled];
  v6 = v4;
  if (v5)
  {
    v6 = [objc_msgSend(a1[69] "lastObject")];
  }

  CFDictionaryAddValue(a2, @"VCVSConfigTxMaxBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "txMaxBitrate")}]);
  CFDictionaryAddValue(a2, @"VCVSConfigTxMinBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "txMinBitrate")}]);
  CFDictionaryAddValue(a2, @"VCVSConfigRxMaxBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "rxMaxBitrate")}]);
  CFDictionaryAddValue(a2, @"VCVSConfigRxMinBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "rxMinBitrate")}]);
  CFDictionaryAddValue(a2, @"VCVSKeyFrameInterval", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "keyFrameInterval")}]);
  CFDictionaryAddValue(a2, @"VCVSRemoteVInitialOrientation", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "remoteVideoInitialOrientation")}]);
  v7 = +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [objc_msgSend(objc_msgSend(objc_msgSend(v4 "txPayloadMap")]);
  if (v7 == 102)
  {
    if ([v4 pdEncryptionContext])
    {
      v7 = 103;
    }

    else
    {
      v7 = 102;
    }
  }

  CFDictionaryAddValue(a2, @"VCVSConfigTxCodecType", [MEMORY[0x1E696AD98] numberWithInteger:v7]);
  v8 = +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [objc_msgSend(objc_msgSend(objc_msgSend(v4 "rxPayloadMap")]);
  if (v8 == 102)
  {
    if ([v4 pdDecryptionContext])
    {
      v8 = 103;
    }

    else
    {
      v8 = 102;
    }
  }

  CFDictionaryAddValue(a2, @"VCVSConfigRxCodecType", [MEMORY[0x1E696AD98] numberWithInteger:v8]);
  CFDictionaryAddValue(a2, @"VCVSConfigTxFramerate", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "framerate")}]);
  CFDictionaryAddValue(a2, @"VCVSConfigTxResolution", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "videoResolution")}]);
  if ([v4 videoResolution] == 27)
  {
    CFDictionaryAddValue(a2, @"VCVSConfigWidth", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "customWidth")}]);
    CFDictionaryAddValue(a2, @"VCVSConfigHeight", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "customHeight")}]);
  }

  CFDictionaryAddValue(a2, @"VCVSConfigTransportProtocol", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "transportProtocolType")}]);
  CFDictionaryAddValue(a2, @"VCVSConfigAccessNetworkType", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(a1, "defaultStreamConfig"), "accessNetworkType")}]);
  CFDictionaryAddValue(a2, @"VCVSConfigFoveationEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "foveationEnabled")}]);
  if ([v4 remoteEndpoints] && objc_msgSend(objc_msgSend(v4, "remoteEndpoints"), "count"))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(v4, "remoteEndpoints"), "count")}];

    CFDictionaryAddValue(a2, @"RemoteEndpoints", v9);
  }
}

uint64_t VCVideoStream_OnVideoFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 968);
  v6 = *a3;
  v7 = *(a3 + 16);
  if (v4)
  {
    VCVideoCaptureConverter_ProcessFrame(v4, a2, &v6, a4);
  }

  else
  {
    VCVideoStream_ProcessConvertedFrame(a1, a2, &v6, a4);
  }

  return 1;
}

void VCVideoStream_SetExternalOutputVideoLatency(uint64_t a1, double a2)
{
  if (a1)
  {
    *(a1 + 1224) = a2;
    v3 = *(a1 + 880);

    VCVideoReceiver_SetExternalOutputVideoLatency(v3);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoStream_SetExternalOutputVideoLatency_cold_1();
    }
  }
}

void _VCMediaStream_SubmitStatisticsCollectorVideoStallUpdate(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1072);
  if (v4)
  {
    *&v7[16] = 0u;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0;
    *&v7[8] = a3;
    *v7 = 10;
    *&v7[24] = 8;
    v12 = a2;
    v10 = a4;
    AVCStatisticsCollector_SetVCStatistics(v4, v7);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 136315650;
      *&v7[4] = v5;
      *&v7[12] = 2080;
      *&v7[14] = "_VCMediaStream_SubmitStatisticsCollectorVideoStallUpdate";
      *&v7[22] = 1024;
      *&v7[24] = 1843;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Statistics collector is nil", v7, 0x1Cu);
    }
  }
}

uint64_t VCMediaNegotiationBlobV2CodecFeaturesReadFrom(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        Data = PBReaderReadData();

        *(a1 + 16) = Data;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v22 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v22 & 0x7F) << v12;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_34;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_34:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DBA7A724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBA7A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBA7ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBA7AF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double VCMediaStreamGroup_ExternalRenderLatency(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 408);
  }

  VCMediaStreamGroup_ExternalRenderLatency_cold_1(v2);
  return *v2;
}

uint64_t _VCNACKGenerator_GetBitrate(uint64_t a1, double *a2, double *a3, float a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1 + 368640;
  v6 = *(a1 + 371000);
  v7 = v6 - a4;
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  if (a3)
  {
    result = _VCNACKConsumer_ComputeSummerBitrate(*(a1 + 371024), a3, v8);
    if ((result & 0x80000000) != 0)
    {
      _VCNACKGenerator_GetBitrate_cold_1(result, &v10);
      return v10;
    }
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    result = _VCNACKConsumer_ComputeSummerBitrate(*(v5 + 2376), a2, v8);
    if ((result & 0x80000000) != 0)
    {
      _VCNACKGenerator_GetBitrate_cold_2(result, &v10);
      return v10;
    }
  }

  return result;
}

void _NACKGenerator_UpdateFeatureSettings(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1 + 368640;
  DynamicNackTuning = GKSConnectivitySettings_GetDynamicNackTuning(1);
  *(v2 + 2512) = DynamicNackTuning;
  if (DynamicNackTuning)
  {
    v9 = 0;
    if ((VCExperimentManager_GetExperimentGroup(*(v2 + 2504), @"nackgeneration", &v9) & 0x80000000) == 0)
    {
      *(v2 + 2512) = v9 != 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v11 = v4;
          v12 = 2080;
          v13 = "_NACKGenerator_UpdateFeatureSettings";
          v14 = 1024;
          v15 = 554;
          v16 = 2048;
          v17 = a1;
          v18 = 1024;
          v19 = v9;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: [%p] Found experiment group. dynamicNackTuningExperimentGroup=%d", buf, 0x2Cu);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v2 + 2512);
      *buf = 136316162;
      v11 = v6;
      v12 = 2080;
      v13 = "_NACKGenerator_UpdateFeatureSettings";
      v14 = 1024;
      v15 = 557;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: [%p] Feature settings updated. dynamicNackTuningEnabled=%d", buf, 0x2Cu);
    }
  }
}

uint64_t _VCNACKGeneratorClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCNACKGenerator_Create(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCNACKGenerator_Create_cold_7();
    return v17;
  }

  if (!*a3)
  {
    VCNACKGenerator_Create_cold_6();
    return v17;
  }

  if (!*(a3 + 8))
  {
    VCNACKGenerator_Create_cold_5();
    return v17;
  }

  if (_MergedGlobals_21 != -1)
  {
    VCNACKGenerator_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCNACKGenerator_Create_cold_4();
    return v17;
  }

  v6 = Instance;
  v7 = Instance + 368640;
  *(Instance + 370704) = *a3;
  *(Instance + 370720) = *(a3 + 16);
  *(Instance + 370736) = 0x3FC3333333333333;
  *(Instance + 370754) = *(a3 + 32);
  strncpy((Instance + 370768), (a3 + 33), 0xC8uLL);
  *(v6 + 371032) = *(a3 + 236);
  v8 = *(a3 + 252);
  v9 = *(a3 + 268);
  v10 = *(a3 + 284);
  *(v6 + 371096) = *(a3 + 300);
  *(v6 + 371064) = v9;
  *(v6 + 371080) = v10;
  *(v6 + 371048) = v8;
  *(v7 + 2468) = *(a3 + 304);
  v11 = *(a3 + 312);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(v7 + 2472) = v11;
  *(v7 + 2480) = *(a3 + 320);
  *(v7 + 2492) = reportingDefaultRealtimePeriod();
  v12 = *(a3 + 328);
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  *(v7 + 2504) = v12;
  *(v7 + 2520) = *(a3 + 336);
  if ((SummerCreateHandle((v7 + 2376), 3000) & 0x80000000) != 0)
  {
    VCNACKGenerator_Create_cold_3();
  }

  else
  {
    SummerAdd(0.0, 0.0);
    if ((SummerCreateHandle((v7 + 2384), 3000) & 0x80000000) == 0)
    {
      SummerAdd(0.0, 0.0);
      _NACKGenerator_UpdateFeatureSettings(v6);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(v7 + 2520);
          v17 = 136316162;
          v18 = v13;
          v19 = 2080;
          v20 = "VCNACKGenerator_Create";
          v21 = 1024;
          v22 = 608;
          v23 = 2048;
          v24 = v6;
          v25 = 2048;
          v26 = v15;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New instance created=%p incompleteFrameBufferDuration=%f", &v17, 0x30u);
        }
      }

      result = 0;
      *a2 = v6;
      return result;
    }

    VCNACKGenerator_Create_cold_2();
  }

  if (*(v7 + 2376) != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  CFRelease(v6);
  return 2152071172;
}

uint64_t VCNACKGenerator_AddPacketInfo(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v145 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCNACKGenerator_AddPacketInfo_cold_7();
    return *buf;
  }

  v10 = *a2;
  v11 = a1 + 5792 * (*a2 & 0x3F);
  v13 = *(v11 + 16);
  v12 = (v11 + 16);
  if (v13 != *a2)
  {
    bzero(v12, 0x16A0uLL);
    *v12 = v10;
  }

  if (*(v12 + 6) == 1)
  {
    v14 = *(a2 + 1);
    v15 = *(v12 + 721);
    if (v14 == 0.0)
    {
      v126 = v15 == 0.0;
      *(a2 + 1) = v15;
      v14 = v15;
    }

    else
    {
      v16 = v15 == 0.0;
      if (v14 - v15 >= 0.75)
      {
        v16 = 1;
      }

      v126 = v16;
      *(v12 + 721) = v14;
      *(a1 + 371000) = v14;
    }

    if (*(a1 + 371136) == 1 && (a2[4] & 1) == 0)
    {
      v17 = *&v12[2 * *(a2 + 4) + 12];
      if (v17 != 0.0)
      {
        v18 = v14 - v17;
        if (v18 <= 1.0 && v18 >= *(a1 + 370736) * 0.8)
        {
          *(a2 + 16) = 1;
        }
      }
    }

    v20 = *(a2 + 2);
    v21 = *(v12 + 2);
    v22 = (v20 - v21) >= 0x7FFFu || v20 >= v21;
    v23 = v21 | 0xFFFF0000;
    if (v22)
    {
      v23 = *(v12 + 2);
    }

    v24 = (v21 - v20) >= 0x7FFFu || v21 >= v20;
    v25 = v20 | 0xFFFF0000;
    if (v24)
    {
      v25 = *(a2 + 2);
    }

    v26 = *(v12 + 2860);
    if ((v20 - v26) < 0x7FFFu && v20 < v26)
    {
      v26 |= 0xFFFF0000;
    }

    v28 = v25 - v23;
    if (v25 <= v23)
    {
      if ((a2[4] & 1) == 0 && (*(a2 + 30) & 1) == 0)
      {
        ++v12[1428];
      }

      v29 = a2[5];
      if (v29 >= v12[1429] && v25 < v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *(v12 + 2) = v20;
      v29 = a2[5];
      if (v29 > v12[1429])
      {
        v12[1429] = v29;
        LOBYTE(v21) = v20;
LABEL_46:
        *(v12 + 2860) = v20;
        goto LABEL_48;
      }

      LOBYTE(v21) = v20;
    }

LABEL_48:
    v31 = *(v12 + 718);
    if (v31)
    {
      LOWORD(v32) = v25;
      if ((*(a2 + 31) & 1) == 0)
      {
        v32 = *(v12 + 2880);
        if (v25 < v32)
        {
          LOWORD(v32) = v25;
        }
      }
    }

    else
    {
      LOWORD(v32) = v25;
    }

    *(v12 + 2880) = v32;
    v34 = *(v12 + 2);
    v33 = *(v12 + 3);
    if (v28 >= 1)
    {
      v34 = ((2 * v33) << ~v28) | (v34 >> v28);
      v33 >>= v28;
      v35 = (v28 & 0x40) == 0;
      if ((v28 & 0x40) != 0)
      {
        v34 = v33;
        v33 = 0;
      }

      *(v12 + 2) = v34;
      *(v12 + 3) = v33;
      v36 = *(v12 + 5);
      v37 = ((2 * v36) << ~v28) | (*(v12 + 4) >> v28);
      v38 = v36 >> v28;
      if (!v35)
      {
        v37 = v38;
        v38 = 0;
      }

      *(v12 + 4) = v37;
      *(v12 + 5) = v38;
    }

    v39 = v21 - v25;
    if ((v39 & 0x40) != 0)
    {
      v40 = 0x8000000000000000 >> v39;
    }

    else
    {
      v40 = 0;
    }

    if ((v39 & 0x40) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = 0x8000000000000000 >> v39;
    }

    v42 = *(a2 + 30);
    if ((v42 & 1) == 0)
    {
      *(v12 + 2) = v34 | v40;
      *(v12 + 3) = v33 | v41;
    }

    if (v34 & v40 | v33 & v41)
    {
      if ((a2[4] & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if ((a2[4] & 1) == 0)
      {
        *(v12 + 718) = v31 + 1;
        goto LABEL_90;
      }

      ++*(v12 + 719);
    }

    v43 = *(v12 + 4);
    v44 = *(v12 + 5);
    if (v43 & v40 | v44 & v41)
    {
      *(v12 + 4) = v43 | v40;
      *(v12 + 5) = v44 | v41;
    }

    else
    {
      v45 = v20;
      v46 = v12 + 1036;
      if (*(v12 + v20 + 2072) == v20)
      {
        ++*(v12 + 711);
        v47 = v14 - *&v12[2 * v20 + 524];
        *(v12 + 716) = *(v12 + 716) + v47;
        v48 = v12[1431];
        v22 = v48 >= v29;
        v49 = v48 - v29;
        if (v22)
        {
          *(v12 + 717) = *(v12 + 717) + (v49 / *(a1 + 371108));
        }

        else
        {
          ++*(v12 + 712);
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x1E6986650];
        v52 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = *v12;
            v54 = *(a2 + 2);
            v55 = *(a2 + 1);
            v56 = &v12[2 * v45];
            v57 = *(v56 + 262);
            v58 = *(v46 + v45);
            v59 = *(v56 + 6);
            *buf = 136318210;
            *&buf[4] = v50;
            v131 = 2080;
            v132 = "_VCNACKGenerator_UpdateSSRCContext";
            v133 = 1024;
            v134 = 385;
            v135 = 1024;
            *v136 = v53;
            *&v136[4] = 1024;
            *&v136[6] = v53;
            *v137 = 1024;
            *&v137[2] = v54;
            *v138 = 1024;
            *&v138[2] = v54;
            *v139 = 2048;
            *&v139[2] = v55;
            *&v139[10] = 2048;
            *&v139[12] = v57;
            *&v139[20] = 2048;
            *&v139[22] = v59;
            *v140 = 2048;
            *&v140[2] = 0x7FF8000000000000;
            v141 = 1024;
            v142 = 0;
            v143 = 1024;
            v144 = v58;
            _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Packet Information does not match ssrc=%u ssrc=0x%x and seqNum=%u seqNum=0x%x arrivalTime=%f timeOfRequest=%f timeOfFirstRequest=%f diff=%f isSameSeqNum=%d seqNumRequested=%u", buf, 0x68u);
          }
        }

        else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v110 = *v12;
          v111 = *(a2 + 2);
          v112 = *(a2 + 1);
          v113 = &v12[2 * v45];
          v114 = *(v113 + 262);
          v115 = *(v46 + v45);
          v116 = *(v113 + 6);
          *buf = 136318210;
          *&buf[4] = v50;
          v131 = 2080;
          v132 = "_VCNACKGenerator_UpdateSSRCContext";
          v133 = 1024;
          v134 = 385;
          v135 = 1024;
          *v136 = v110;
          *&v136[4] = 1024;
          *&v136[6] = v110;
          *v137 = 1024;
          *&v137[2] = v111;
          *v138 = 1024;
          *&v138[2] = v111;
          *v139 = 2048;
          *&v139[2] = v112;
          *&v139[10] = 2048;
          *&v139[12] = v114;
          *&v139[20] = 2048;
          *&v139[22] = v116;
          *v140 = 2048;
          *&v140[2] = 0x7FF8000000000000;
          v141 = 1024;
          v142 = 0;
          v143 = 1024;
          v144 = v115;
          _os_log_debug_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Packet Information does not match ssrc=%u ssrc=0x%x and seqNum=%u seqNum=0x%x arrivalTime=%f timeOfRequest=%f timeOfFirstRequest=%f diff=%f isSameSeqNum=%d seqNumRequested=%u", buf, 0x68u);
        }
      }

      v60 = *(a2 + 1);
      if (*(a1 + 370755) == 1)
      {
        v61 = *(a1 + 370760);
      }

      else
      {
        v61 = LogDump_OpenLog(a1 + 370768, "NackGenerator", ".nackdump", "Timestamp\tRequestTime\tType\tSSRC\tHighestSeqNum\tBitmask\tResponseTime\n", 9, "1.0");
        *(a1 + 370760) = v61;
        *(a1 + 370755) = 1;
      }

      VRLogfilePrintWithTimestamp(v61, "%5.3f\t%s\t%u\t%u\t-\t%5.3f\t%d\n", a3, a4, a5, a6, a7, a8, v60);
      v42 = *(a2 + 30);
      v62 = *(v12 + 5) | v41;
      *(v12 + 4) |= v40;
      *(v12 + 5) = v62;
    }

LABEL_90:
    v127 = 0.0;
    v128 = 0.0;
    if (v42)
    {
      v63 = 0;
      goto LABEL_97;
    }

    LOWORD(v14) = *(a2 + 14);
    v64 = *&v14;
    v65 = *(a2 + 1);
    if (a2[4])
    {
      v66 = SummerAdd(v64, v65);
      if ((v66 & 0x80000000) != 0)
      {
        VCNACKGenerator_AddPacketInfo_cold_2();
LABEL_116:
        v63 = 2152071190;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v85 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCNACKGenerator_AddPacketInfo_cold_5(v85);
          }
        }

        goto LABEL_155;
      }
    }

    else
    {
      v66 = SummerAdd(v64, v65);
      if ((v66 & 0x80000000) != 0)
      {
        VCNACKGenerator_AddPacketInfo_cold_1();
        goto LABEL_116;
      }
    }

    v63 = v66;
LABEL_97:
    v67 = *(a1 + 370968);
    if (v67 != 0.0)
    {
      v68 = *(a2 + 1) - v67;
      if (v68 <= 0.1)
      {
        v71 = *(a1 + 370976);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v120 = VRTraceErrorLogLevelToCSTR();
          v121 = *MEMORY[0x1E6986650];
          v122 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v120;
              v131 = 2080;
              v132 = "_VCNACKGenerator_CheckBitrateLimits";
              v133 = 1024;
              v134 = 657;
              v135 = 2048;
              *v136 = v68;
              _os_log_impl(&dword_1DB56E000, v121, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Use cached canSendNACK, timeSinceLastCheck=%f", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
          {
            VCNACKGenerator_AddPacketInfo_cold_6(v120);
          }
        }

LABEL_109:
        v83 = *(v12 + 2);
        v82 = *(v12 + 3);
        if ((v83 & v82) != 0xFFFFFFFFFFFFFFFFLL && v71)
        {
          v124 = v63;
          if ((v126 | *(a2 + 31)))
          {
            *(v12 + 2888) = *(a2 + 2);
          }

          else if (*(v12 + 2888) && *(a2 + 2) < *(v12 + 2888))
          {
            *(v12 + 2888) = 0;
          }

          v123 = 0;
          v125 = 0;
          v86 = 0;
          v87 = 17;
LABEL_123:
          v88 = v87;
          while (*(a1 + 370984) < 0.2 || *(a1 + 371128) > 0)
          {
            if ((v88 & 0x40) != 0)
            {
              v89 = v83 << v88;
            }

            else
            {
              v89 = (v82 << v88) | (v83 >> 1 >> ~v88);
            }

            if ((v89 & 0x8000000000000000) != 0)
            {
              goto LABEL_147;
            }

            v90 = *(v12 + 2) - v88;
            v91 = *(a1 + 371008) >= 0.1 && v90 > *(v12 + 2860);
            v92 = v91;
            if (v90 <= *(v12 + 2888) || v92)
            {
              goto LABEL_147;
            }

            NACK = _VCNACKGenerator_ShouldGenerateNACK(a1, v12, (*(v12 + 2) - v88), *(a2 + 31), v126, *(a2 + 1), v77, v75, v76);
            if (v86)
            {
              if (NACK)
              {
                v123 |= 1 << (~v125 + v90);
                goto LABEL_145;
              }

LABEL_146:
              v86 = 1;
LABEL_147:
              v87 = v88 - 1;
              if (v88)
              {
                goto LABEL_123;
              }

              break;
            }

            if (NACK)
            {
              v125 = v90;
LABEL_145:
              --*(a1 + 371128);
              goto LABEL_146;
            }

            v86 = 0;
            if (--v88 == -1)
            {
              goto LABEL_154;
            }
          }

          if ((v86 & 1) == 0)
          {
LABEL_154:
            v63 = v124;
            goto LABEL_155;
          }

          v63 = v124;
          if (*(a1 + 370704))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v94 = VRTraceErrorLogLevelToCSTR();
              v95 = *MEMORY[0x1E6986650];
              v96 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  v97 = *v12;
                  v98 = *(a1 + 370736);
                  v99 = *(a1 + 370984) * 100.0;
                  *buf = 136317442;
                  *&buf[4] = v94;
                  v131 = 2080;
                  v132 = "_VCNACKGenerator_AttemptToRequestNACK";
                  v133 = 1024;
                  v134 = 540;
                  v135 = 1024;
                  *v136 = v97;
                  *&v136[4] = 1024;
                  *&v136[6] = v97;
                  *v137 = 1024;
                  *&v137[2] = v125;
                  *v138 = 1024;
                  *&v138[2] = v125;
                  *v139 = 1024;
                  *&v139[2] = v123;
                  *&v139[6] = 2048;
                  *&v139[8] = v98;
                  *&v139[16] = 2048;
                  *&v139[18] = v99;
                  _os_log_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending NACK for ssrc=%u ssrc=0x%x and lowestSeqNum=%u lowestSeqNum=0x%x, requestBitMask=0x%0000x rtt=%2.3fs plr=%1.3f%%", buf, 0x4Eu);
                }
              }

              else if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
              {
                v117 = *v12;
                v118 = *(a1 + 370736);
                v119 = *(a1 + 370984) * 100.0;
                *buf = 136317442;
                *&buf[4] = v94;
                v131 = 2080;
                v132 = "_VCNACKGenerator_AttemptToRequestNACK";
                v133 = 1024;
                v134 = 540;
                v135 = 1024;
                *v136 = v117;
                *&v136[4] = 1024;
                *&v136[6] = v117;
                *v137 = 1024;
                *&v137[2] = v125;
                *v138 = 1024;
                *&v138[2] = v125;
                *v139 = 1024;
                *&v139[2] = v123;
                *&v139[6] = 2048;
                *&v139[8] = v118;
                *&v139[16] = 2048;
                *&v139[18] = v119;
                _os_log_debug_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Sending NACK for ssrc=%u ssrc=0x%x and lowestSeqNum=%u lowestSeqNum=0x%x, requestBitMask=0x%0000x rtt=%2.3fs plr=%1.3f%%", buf, 0x4Eu);
              }
            }

            (*(a1 + 370704))(*(a1 + 370712), *v12, v125, v123, *(a2 + 1));
            v108 = *(a2 + 1);
            if (*(a1 + 370755) == 1)
            {
              v109 = *(a1 + 370760);
            }

            else
            {
              v109 = LogDump_OpenLog(a1 + 370768, "NackGenerator", ".nackdump", "Timestamp\tRequestTime\tType\tSSRC\tHighestSeqNum\tBitmask\tResponseTime\n", 9, "1.0");
              *(a1 + 370760) = v109;
              *(a1 + 370755) = 1;
            }

            VRLogfilePrintWithTimestamp(v109, "%5.3f\t%s\t%u\t%u\t0x%x\t-\t%d\n", v102, v103, v104, v105, v106, v107, v108);
            v63 = v124;
          }
        }

        goto LABEL_155;
      }
    }

    if ((_VCNACKGenerator_GetBitrate(a1, &v128, &v127, 1.0) & 0x80000000) != 0)
    {
      VCNACKGenerator_AddPacketInfo_cold_4();
    }

    else
    {
      if (v128 == 0.0)
      {
        v69 = 0.0;
      }

      else
      {
        v69 = v127 / v128;
      }

      v70 = *(a1 + 371040);
      v71 = v69 < v70;
      v72 = *(a1 + 371016);
      v73 = *(a2 + 1) + -0.1;
      v129 = 0;
      *buf = 0;
      v74 = SummerLengthPred(v73, v72, SummerGreaterThan, buf, &v129);
      if ((v74 & 0x80000000) == 0)
      {
        v63 = v74;
        v77 = *(a1 + 371040);
        *(a1 + 371128) = vcvtpd_s64_f64(v129 * v77);
        if (*(a1 + 370976) != v71 && VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v78 = VRTraceErrorLogLevelToCSTR();
          v79 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v80 = *(a1 + 370976);
            v81 = *(a1 + 371128);
            *buf = 136317442;
            *&buf[4] = v78;
            v131 = 2080;
            v132 = "_VCNACKGenerator_CheckBitrateLimits";
            v133 = 1024;
            v134 = 670;
            v135 = 2048;
            *v136 = a1;
            *&v136[8] = 1024;
            *v137 = v80;
            *&v137[4] = 1024;
            *v138 = v69 < v70;
            *&v138[4] = 2048;
            *v139 = v128;
            *&v139[8] = 2048;
            *&v139[10] = v127;
            *&v139[18] = 2048;
            *&v139[20] = v69;
            *&v139[28] = 1024;
            *v140 = v81;
            _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNACKGenerator[%p] Based on bitrate limits, canSendNack changed from mostRecentCanSendNackStatus=%d to canSendNack=%d, mediaBitrate=%3.3f, retransmittedBitrate=%3.3f, overhead=%3.3f nackGenerator->nackBudget=%d", buf, 0x56u);
          }
        }

        *(a1 + 370968) = *(a2 + 1);
        *(a1 + 370976) = v71;
        goto LABEL_109;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v84 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCNACKGenerator_AddPacketInfo_cold_3(v84);
        }
      }
    }

    goto LABEL_116;
  }

  v63 = 0;
LABEL_155:
  if ((*(v12 + 6) & 1) == 0)
  {
    *(v12 + 2) = *(a2 + 2);
    *(v12 + 6) = 1;
    *&v100 = -1;
    *(&v100 + 1) = -1;
    *(v12 + 1) = v100;
    *(v12 + 2) = v100;
    *(v12 + 721) = *(a2 + 1);
  }

  return v63;
}

uint64_t VCNACKGenerator_UpdateRTT(uint64_t a1, double a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 370736) = a2;
  }

  else
  {
    VCNACKGenerator_UpdateRTT_cold_1();
    return v4;
  }

  return result;
}

uint64_t VCNACKGenerator_SetRTXPacketDetectionEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 371136) = a2;
  }

  else
  {
    VCNACKGenerator_SetRTXPacketDetectionEnabled_cold_1();
    return v4;
  }

  return result;
}

void _VCNACKGenerator_Init(uint64_t a1)
{
  v1 = a1 + 368640;
  bzero((a1 + 16), 0x5A9D0uLL);
  *(v1 + 2376) = 0xFFFFFFFFLL;
  *(v1 + 2384) = 0xFFFFFFFFLL;
}

void _VCNACKGenerator_Finalize(uint64_t a1)
{
  v1 = (a1 + 368640);
  v2 = *(a1 + 370760);
  if (v2)
  {
    LogDump_CloseLog(v2);
    v1[265] = 0;
  }

  if (v1[298] != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  if (v1[297] != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  v3 = v1[309];
  if (v3)
  {
    CFRelease(v3);
    v1[309] = 0;
  }

  v4 = v1[313];
  if (v4)
  {
    CFRelease(v4);
    v1[313] = 0;
  }
}

BOOL _VCNACKGenerator_ShouldGenerateNACK(uint64_t a1, int *a2, int a3, char a4, char a5, double a6, double a7, double a8, double a9)
{
  v127 = *MEMORY[0x1E69E9840];
  v13 = a1 + 368640;
  v14 = a3;
  v79 = a2 + 1036;
  v78 = *(a2 + a3 + 2072);
  v15 = v78 == a3 && *&a2[2 * a3 + 524] != 0.0;
  v16 = 371052;
  v17 = *(a1 + 370984);
  v18 = *(a1 + 371068);
  if (*(a1 + 371064) < v17 && v18 >= v17)
  {
    goto LABEL_16;
  }

  v20 = *(a1 + 371072);
  if (v18 < v17 && v20 >= v17)
  {
    v16 = 371056;
LABEL_16:
    v22 = *(a1 + v16);
    goto LABEL_17;
  }

  if (v20 < v17)
  {
    v16 = 371060;
    goto LABEL_16;
  }

  v22 = *(a1 + 371048);
LABEL_17:
  v23 = v22;
  v80 = v15;
  if (*(a1 + 370992) != v22)
  {
    v24 = a4;
    v25 = a5;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v13 + 2352);
          v30 = *(v13 + 2344);
          *buf = 136316418;
          v82 = v26;
          v83 = 2080;
          v84 = "_VCNACKGenerator_CalculateAndUpdateNACKGenerationThrottlingFactor";
          v85 = 1024;
          v86 = 432;
          v87 = 2048;
          *v88 = v29;
          *&v88[8] = 2048;
          v89 = v23;
          *v90 = 2048;
          *&v90[2] = v30;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nackGenerationThrottlingFactor changed from old=%f => new=[%f] at PLR=%f", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v61 = *(v13 + 2352);
        v62 = *(v13 + 2344);
        *buf = 136316418;
        v82 = v26;
        v83 = 2080;
        v84 = "_VCNACKGenerator_CalculateAndUpdateNACKGenerationThrottlingFactor";
        v85 = 1024;
        v86 = 432;
        v87 = 2048;
        *v88 = v61;
        *&v88[8] = 2048;
        v89 = v23;
        *v90 = 2048;
        *&v90[2] = v62;
        _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d nackGenerationThrottlingFactor changed from old=%f => new=[%f] at PLR=%f", buf, 0x3Au);
      }
    }

    *(v13 + 2352) = v23;
    v15 = v80;
    a5 = v25;
    a4 = v24;
  }

  v31 = a2 + 524;
  v32 = *&a2[2 * v14 + 524];
  if (v32 == 0.0)
  {
    v34 = 0;
    v33 = *(v13 + 2096);
  }

  else
  {
    v33 = *(v13 + 2096);
    v34 = a6 - v32 <= v33 * v23;
  }

  v35 = 0;
  v36 = a2 + 12;
  v37 = *&a2[2 * v14 + 12];
  v38 = v37 != 0.0;
  v39 = a6 - v37;
  v40 = v39 > 1.0 && v38;
  v41 = v15 && (v34 || v40);
  v42 = *(v13 + 2344);
  v43 = *(v13 + 2440);
  v44 = *(v13 + 2444);
  v45 = v33 > v44 || v42 > v43;
  if (*(v13 + 2512) == 1 && !v40 && v15)
  {
    v46 = *(v13 + 2520);
    if (v46 == 0.0)
    {
      v70 = a1;
      v71 = a5;
      v77 = a4;
      v72 = v45;
      loga = v34;
      _VCNACKGenerator_ShouldGenerateNACK_cold_1(v70, buf);
      v34 = loga;
      v45 = v72;
      a4 = v77;
      a5 = v71;
      LOBYTE(v15) = v80;
      v35 = buf[0];
    }

    else
    {
      v47 = v39 + v33;
      v48 = *(v13 + 2468);
      if (v48 < 1)
      {
        v49 = 0.0;
      }

      else
      {
        LODWORD(a8) = a2[v14 + 1164];
        LODWORD(a9) = a2[1431];
        v49 = v33 + (*&a9 - *&a8) / v48;
      }

      v35 = fmax(v47, v49) >= v46 * *(v13 + 2456);
    }
  }

  v50 = v41 | a4 | a5 | v45 | v35;
  if (v50)
  {
    v51 = v34;
    v76 = v45;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v73 = VRTraceErrorLogLevelToCSTR();
      v52 = *MEMORY[0x1E6986650];
      log = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = *&v31[2 * v14];
          v54 = *a2;
          v55 = *&v36[2 * v14];
          v56 = *(v13 + 2096);
          v57 = *(v79 + v14);
          v58 = a2[v14 + 1164];
          v59 = *(v13 + 2344) * 100.0;
          *buf = 136321538;
          v82 = v73;
          v83 = 2080;
          v84 = "_VCNACKGenerator_ShouldGenerateNACK";
          v85 = 1024;
          v86 = 484;
          v87 = 1024;
          *v88 = v80;
          *&v88[4] = 1024;
          *&v88[6] = v51;
          LOWORD(v89) = 1024;
          *(&v89 + 2) = v40;
          HIWORD(v89) = 1024;
          *v90 = v54;
          *&v90[4] = 1024;
          *&v90[6] = v54;
          v91 = 1024;
          v92 = a3;
          v93 = 1024;
          v94 = a3;
          v95 = 2048;
          v96 = a6;
          v97 = 2048;
          v98 = v53;
          v99 = 2048;
          v100 = a6 - v53;
          v101 = 2048;
          v102 = v55;
          v103 = 2048;
          v104 = a6 - v55;
          v105 = 2048;
          v106 = v56;
          v107 = 2048;
          v108 = v59;
          v109 = 2048;
          v110 = v23;
          v111 = 1024;
          v112 = v78 == a3;
          v113 = 1024;
          v114 = v57;
          v115 = 1024;
          v116 = v14;
          v117 = 1024;
          v118 = v42 > v43;
          v119 = 1024;
          v120 = v33 > v44;
          v121 = 1024;
          v122 = v76;
          v123 = 1024;
          v124 = v58;
          v125 = 1024;
          v126 = v35;
          _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Not sending NACK because [nackGenerated=%d throttleNackGeneration=%d missingPacketIsTooOld=%d] ssrc=%u ssrc=0x%x and seqNum=%u seqNum=0x%x arrivalTime=%f timeOfRequest=%f diff=%f timeOfFirstRequest=%f diff=%f rtt=%2.3fs plr=%3.2f%% nackGenerationThrottlingFactor=%f isSameSeqNum=%d seqNumRequested=%u seqNumHash=%d highPacketLossRatioObserved=%d highRTTObserved=%d disableNACKDueToUnsuitableNetworkConditions=%d maxTimestampAtFirstRequest=%d, rtxPastLateFrameRecovery=%d", buf, 0xC6u);
        }
      }

      else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v63 = *&v31[2 * v14];
        v64 = *a2;
        v65 = *&v36[2 * v14];
        v66 = *(v13 + 2096);
        v67 = *(v79 + v14);
        v68 = a2[v14 + 1164];
        v69 = *(v13 + 2344) * 100.0;
        *buf = 136321538;
        v82 = v73;
        v83 = 2080;
        v84 = "_VCNACKGenerator_ShouldGenerateNACK";
        v85 = 1024;
        v86 = 484;
        v87 = 1024;
        *v88 = v80;
        *&v88[4] = 1024;
        *&v88[6] = v51;
        LOWORD(v89) = 1024;
        *(&v89 + 2) = v40;
        HIWORD(v89) = 1024;
        *v90 = v64;
        *&v90[4] = 1024;
        *&v90[6] = v64;
        v91 = 1024;
        v92 = a3;
        v93 = 1024;
        v94 = a3;
        v95 = 2048;
        v96 = a6;
        v97 = 2048;
        v98 = v63;
        v99 = 2048;
        v100 = a6 - v63;
        v101 = 2048;
        v102 = v65;
        v103 = 2048;
        v104 = a6 - v65;
        v105 = 2048;
        v106 = v66;
        v107 = 2048;
        v108 = v69;
        v109 = 2048;
        v110 = v23;
        v111 = 1024;
        v112 = v78 == a3;
        v113 = 1024;
        v114 = v67;
        v115 = 1024;
        v116 = v14;
        v117 = 1024;
        v118 = v42 > v43;
        v119 = 1024;
        v120 = v33 > v44;
        v121 = 1024;
        v122 = v76;
        v123 = 1024;
        v124 = v68;
        v125 = 1024;
        v126 = v35;
        _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Not sending NACK because [nackGenerated=%d throttleNackGeneration=%d missingPacketIsTooOld=%d] ssrc=%u ssrc=0x%x and seqNum=%u seqNum=0x%x arrivalTime=%f timeOfRequest=%f diff=%f timeOfFirstRequest=%f diff=%f rtt=%2.3fs plr=%3.2f%% nackGenerationThrottlingFactor=%f isSameSeqNum=%d seqNumRequested=%u seqNumHash=%d highPacketLossRatioObserved=%d highRTTObserved=%d disableNACKDueToUnsuitableNetworkConditions=%d maxTimestampAtFirstRequest=%d, rtxPastLateFrameRecovery=%d", buf, 0xC6u);
      }
    }
  }

  else
  {
    *&v31[2 * v14] = a6;
    if (v78 != a3 || *&v36[2 * v14] == 0.0)
    {
      *&v36[2 * v14] = a6;
      a2[v14 + 1164] = a2[1429];
    }

    *(v79 + v14) = a3;
    ++*(a2 + 710);
    if (!v15)
    {
      ++*(a2 + 713);
    }
  }

  return (v50 & 1) == 0;
}

CFNumberRef OUTLINED_FUNCTION_6_42(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int valuePtr)
{
  valuePtr = a9;

  return CFNumberCreate(v18, kCFNumberIntType, &valuePtr);
}

void OUTLINED_FUNCTION_14_23(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v2, a2, v3);
}

uint64_t VCMediaStreamMultiwayConfig_RemoteIDSParticipantID(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

const char *VCMediaStreamConfig_CodecTypeDescription(uint64_t a1)
{
  if (a1 > 99)
  {
    if (a1 <= 102)
    {
      if (a1 == 100)
      {
        return "VCMediaStreamCodecTypeH264";
      }

      else if (a1 == 101)
      {
        return "VCMediaStreamCodecTypeH264Legacy";
      }

      else
      {
        return "VCMediaStreamCodecTypeHEVC";
      }
    }

    else
    {
      if (a1 > 299)
      {
        if (a1 == 300)
        {
          return "VCMediaStreamCodecTypeData";
        }

        if (a1 == 301)
        {
          return "VCMediaStreamCodecTypeMOCAP";
        }
      }

      else
      {
        if (a1 == 103)
        {
          return "VCMediaStreamCodecTypeEncryptedHEVC";
        }

        if (a1 == 200)
        {
          return "VCMediaStreamCodecTypeT140";
        }
      }

      return "Invalid";
    }
  }

  else
  {
    v1 = a1 - 1;
    result = "VCMediaStreamCodecTypeAMR";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "VCMediaStreamCodecTypeAMR_WB";
        break;
      case 2:
        result = "VCMediaStreamCodecTypeEVS_WB";
        break;
      case 3:
        result = "VCMediaStreamCodecTypeEVS_SWB";
        break;
      case 4:
        result = "VCMediaStreamCodecTypePCMU";
        break;
      case 5:
        result = "VCMediaStreamCodecTypePCMA";
        break;
      case 6:
        result = "VCMediaStreamCodecTypeAACELD16K";
        break;
      case 7:
        result = "VCMediaStreamCodecTypeAACELD24K";
        break;
      case 8:
        result = "VCMediaStreamCodecTypeCN";
        break;
      case 9:
        result = "VCMediaStreamCodecTypeDTMF";
        break;
      case 10:
        result = "VCMediaStreamCodecTypeOpus24K";
        break;
      case 11:
        result = "VCMediaStreamCodecTypeOpus16K";
        break;
      case 12:
        result = "VCMediaStreamCodecTypeTTY";
        break;
      case 13:
        result = "VCMediaStreamCodecTypeSpeex8K";
        break;
      case 14:
        result = "VCMediaStreamCodecTypeSpeex16K";
        break;
      case 15:
        result = "VCMediaStreamCodecTypeAACELD48K";
        break;
      case 16:
        result = "VCMediaStreamCodecTypeEVS_NB";
        break;
      case 18:
        result = "VCMediaStreamCodecTypeOpus48K";
        break;
      case 19:
        result = "VCMediaStreamCodecTypeACC24";
        break;
      default:
        return "Invalid";
    }
  }

  return result;
}

uint64_t VCMediaStreamConfig_Direction(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t VCMediaStreamConfig_MultiwayConfig(uint64_t result)
{
  if (result)
  {
    return *(result + 232);
  }

  return result;
}

double VCMediaStreamConfig_DecryptionTimeOutInterval(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 144);
  }

  else
  {
    return 0.0;
  }
}

double VCMediaStreamConfig_DecryptionMKMRecoveryInterval(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 136);
  }

  else
  {
    return 0.0;
  }
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return objc_opt_class();
}

void VCVirtualAVCaptureConnection_OnMediaSample(uint64_t a1, const void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 48));
  if (*(a1 + 52) == 1)
  {
    VCVirtualAVCaptureVideoDataOutput_OnMediaSample(*(a1 + 32), a2, a3, a1);
  }

  os_unfair_lock_unlock((a1 + 48));
}

uint64_t _VCSignalEncoderClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCSignalEncoder_Create(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCSignalEncoder_Create_cold_9();
    return *buf;
  }

  if (!*a2)
  {
    VCSignalEncoder_Create_cold_8();
    return *buf;
  }

  if (!*(a2 + 8))
  {
    VCSignalEncoder_Create_cold_7();
    return *buf;
  }

  if (!a3)
  {
    VCSignalEncoder_Create_cold_6();
    return *buf;
  }

  if (_MergedGlobals_22 != -1)
  {
    VCSignalEncoder_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCSignalEncoder_Create_cold_5();
    return *buf;
  }

  v6 = Instance;
  v7 = *a2;
  if (*a2)
  {
    v7 = CFRetain(v7);
  }

  *(v6 + 16) = v7;
  v8 = *(a2 + 8);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v6 + 40) = *(a2 + 24);
  *(v6 + 24) = v8;
  *(v6 + 44) = *(a2 + 16);
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v6 + 40));
  if (v9)
  {
    v10 = v9;
    keys[0] = @"EncoderUsage";
    values = v9;
    v11 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v11)
    {
      v12 = v11;
      v13 = MSCEncoderSessionInit();
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v13 < 0)
      {
        VCSignalEncoder_Create_cold_2(ErrorLogLevelForModule, v6, v13);
        v19 = 2152595460;
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v17 = FourccToCStr(*(v6 + 44));
            v18 = FourccToCStr(*(a2 + 20));
            *buf = 136316674;
            *&buf[4] = v15;
            v23 = 2080;
            v24 = "VCSignalEncoder_Create";
            v25 = 1024;
            v26 = 107;
            v27 = 2048;
            v28 = v6;
            v29 = 2080;
            v30 = v17;
            v31 = 2112;
            v32 = v10;
            v33 = 2080;
            v34 = v18;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SignalEncoder[%p] created with codecType=%s encoderUsage=%@ bufferFormat=%s", buf, 0x44u);
          }
        }

        v19 = 0;
        *a3 = v6;
      }
    }

    else
    {
      VCSignalEncoder_Create_cold_3(v6, buf, &v21);
      v12 = *buf;
      v19 = v21;
    }

    CFRelease(v12);
    CFRelease(v10);
  }

  else
  {
    v19 = 2152595459;
    VCSignalEncoder_Create_cold_4(v6);
  }

  return v19;
}

uint64_t VCSignalEncoder_GenerateKeyFrame(uint64_t a1)
{
  if (!a1)
  {
    return 2152595457;
  }

  result = 0;
  *(a1 + 52) = 1;
  return result;
}

double _VCSignalEncoder_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void _VCSignalEncoder_Finalize(void *a1)
{
  if (a1)
  {
    if (a1[4])
    {
      MSCEncoderSessionDestroy();
    }

    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
      a1[2] = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
      a1[3] = 0;
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_36(uint64_t a1, ...)
{
  va_start(va, a1);
  v6 = *(v1 + 32);

  return MEMORY[0x1EEE38428](v6, v4, v2, va, v3);
}

void *VCMemoryPool_CreateTyped(unint64_t a1, uint64_t a2)
{
  if (a1 <= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = a1;
  }

  if (sub_1DBD0D064())
  {
    v4 = VCFeatureFlagManager_EnableMTERetagging();
    v5 = v4;
    if (v4)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      v3 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result = malloc_type_malloc(0x30uLL, 0x10800404E5F609CuLL);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = v3;
    result[3] = v3 + v6;
    result[4] = a2;
    *(result + 40) = v5;
  }

  return result;
}

char *VCMemoryPool_Alloc(uint64_t a1)
{
  if (a1)
  {
    v2 = OSAtomicDequeue(a1, 0);
    if (v2)
    {
      _X20 = v2;
      if (*(a1 + 40) == 1)
      {
        __asm { LDG             X8, [X20] }

        _X9 = 1;
        __asm { GMI             X8, X8, X9 }

        v11 = vcnt_s8(_X8);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.i32[0] == 2)
        {
          __asm { IRG             X20, X20, X8 }

          if (*(a1 + 16))
          {
            v12 = 0;
            do
            {
              _X9 = &_X20[v12];
              __asm { STG             X9, [X9] }

              v12 += 16;
            }

            while (v12 < *(a1 + 16));
          }
        }
      }

      bzero(_X20, *(a1 + 16));
      return _X20;
    }

    else
    {
      v17 = *(a1 + 24);
      v18 = *(a1 + 32);

      return malloc_type_calloc(1uLL, v17, v18);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMemoryPool_Alloc_cold_1(v15, v16);
      }
    }

    return 0;
  }
}

void VCMemoryPool_Free(OSQueueHead *__list, void *__new)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__list && __new)
  {

    OSAtomicEnqueue(__list, __new, 0);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136316162;
      v7 = v4;
      v8 = 2080;
      v9 = "VCMemoryPool_Free";
      v10 = 1024;
      v11 = 217;
      v12 = 2048;
      v13 = __list;
      v14 = 2048;
      v15 = __new;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d invalid memory pool %p or pointer %p!", &v6, 0x30u);
    }
  }
}

void VCMemoryPool_Destroy(OSQueueHead *__list)
{
  if (__list)
  {
    while (1)
    {
      v2 = OSAtomicDequeue(__list, 0);
      if (!v2)
      {
        break;
      }

      v3 = v2 & 0xF00000000000000;
      if (LOBYTE(__list[2].opaque2) == 1 && v3 != 0)
      {
        opaque1 = __list[1].opaque1;
        _X10 = &opaque1[v2];
        __asm { LDG             X10, [X10] }

        v11 = _X10 & 0xF00000000000000;
        if (v11 != v3)
        {
          v2 = v11 | v2 & 0xF0FFFFFFFFFFFFFFLL;
          if (opaque1)
          {
            v12 = 0;
            do
            {
              _X9 = &v12[v2];
              __asm { STG             X9, [X9] }

              v12 += 16;
            }

            while (v12 < __list[1].opaque1);
          }
        }
      }

      free(v2);
    }

    free(__list);
  }
}

uint64_t VCFeatureFlagManager_U1AuthTagEnabled()
{
  if (VCFeatureFlagManager_U1AuthTagEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_U1AuthTagEnabled_cold_1();
  }

  return VCFeatureFlagManager_U1AuthTagEnabled_result;
}

uint64_t VCFeatureFlagManager_UseShortMKI()
{
  if (VCFeatureFlagManager_UseShortMKI_onceToken != -1)
  {
    __VCFeatureFlagManager_U1AuthTagEnabled_block_invoke_cold_1();
  }

  return VCFeatureFlagManager_UseShortMKI_result;
}

BOOL VCFeatureFlagManager_SessionBasedMutingEnabled()
{
  if (VCFeatureFlagManager_SessionBasedMutingEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_SessionBasedMutingEnabled_cold_1();
  }

  v1 = VCFeatureFlagManager_SessionBasedMutingEnabled_result;

  return VCDefaults_GetBoolValueForKey(@"forceEnableSessionBasedMuting", v1);
}

BOOL VCFeatureFlagManager_UseAvconferenced()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_UseAvconferenced_onceToken != -1)
  {
    VCFeatureFlagManager_UseAvconferenced_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useAvconferenced", VCFeatureFlagManager_UseAvconferenced_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_UseAvconferenced_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseAvconferenced=%d, featureFlag=%d", v2, 0xEu);
  }

  return BoolValueForKey;
}

uint64_t VCFeatureFlagManager_UseOptimizedTelephonyHandovers()
{
  v2 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_UseOptimizedTelephonyHandovers_onceToken != -1)
  {
    VCFeatureFlagManager_UseOptimizedTelephonyHandovers_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = VCFeatureFlagManager_UseOptimizedTelephonyHandovers_result;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: PSVoiceOnAPUseHandOverOpt=%d", v1, 8u);
  }

  return VCFeatureFlagManager_UseOptimizedTelephonyHandovers_result;
}

BOOL VCFeatureFlagManager_DaemonCrashRecovery()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  v1 = v0;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableDaemonCrashRecovery", v0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109376;
    v4[1] = v1;
    v5 = 1024;
    v6 = BoolValueForKey;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: featureFlag=%d, DaemonCrashRecovery=%d", v4, 0xEu);
  }

  return BoolValueForKey;
}

uint64_t VCFeatureFlagManager_PreviewMSROptimizationForEmbedded()
{
  v2 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_PreviewMSROptimizationForEmbedded_onceToken != -1)
  {
    VCFeatureFlagManager_PreviewMSROptimizationForEmbedded_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = VCFeatureFlagManager_PreviewMSROptimizationForEmbedded_result;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: PreviewMSROptimizationForEmbedded=%d", v1, 8u);
  }

  return VCFeatureFlagManager_PreviewMSROptimizationForEmbedded_result;
}

uint64_t VCFeatureFlagManager_SkipNonInfraWiFiAssertion()
{
  if (VCFeatureFlagManager_SkipNonInfraWiFiAssertion_onceToken != -1)
  {
    VCFeatureFlagManager_SkipNonInfraWiFiAssertion_cold_1();
  }

  return VCFeatureFlagManager_SkipNonInfraWiFiAssertion_result;
}

BOOL VCFeatureFlagManager_UseOutOfProcessVideoDecoding()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  if (!+[VCHardwareSettings supportsOutOfProcessVideoDecoding])
  {
    v0 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 67109120;
      v5 = 0;
      _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseOutOfProcessVideoDecoding=%d set by supportsOutOfProcessVideoDecoding", &v4, 8u);
      v0 = 0;
    }
  }

  v1 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v1)
  {
    if (([v1 BOOLValue] & 1) == 0)
    {
      v0 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 67109120;
        v5 = 0;
        _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseOutOfProcessVideoDecoding=%d set by GKSConnectivitySettings", &v4, 8u);
        v0 = 0;
      }
    }
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useOutOfProcessVideoDecoding", v0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 67109376;
    v5 = v0;
    v6 = 1024;
    v7 = BoolValueForKey;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: flag=%d, UseOutOfProcessVideoDecoding=%d", &v4, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_UseOutOfProcessAudioDecoding()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  if (!+[VCHardwareSettings supportsOutOfProcessAudioDecoding])
  {
    v0 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 67109120;
      v5 = 0;
      _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseOutOfProcessAudioDecoding=%d set by supportsOutOfProcessAudioDecoding", &v4, 8u);
      v0 = 0;
    }
  }

  v1 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v1)
  {
    if (([v1 BOOLValue] & 1) == 0)
    {
      v0 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 67109120;
        v5 = 0;
        _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseOutOfProcessAudioDecoding=%d set by GKSConnectivitySettings", &v4, 8u);
        v0 = 0;
      }
    }
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useOutOfProcessAudioDecoding", v0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 67109376;
    v5 = v0;
    v6 = 1024;
    v7 = BoolValueForKey;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: flag=%d, UseOutOfProcessAudioDecoding=%d", &v4, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_UseAudioCodecACC24ForU1()
{
  if (VCFeatureFlagManager_UseAudioCodecACC24ForU1_onceToken != -1)
  {
    VCFeatureFlagManager_UseAudioCodecACC24ForU1_cold_1();
  }

  v1 = VCFeatureFlagManager_UseAudioCodecACC24ForU1_isACC24Supported;

  return VCDefaults_GetBoolValueForKey(@"UseAudioCodecACC24ForU1", v1);
}

uint64_t VCFeatureFlagManager_UseShortREDWithACC24()
{
  if (VCFeatureFlagManager_UseShortREDWithACC24_onceToken != -1)
  {
    VCFeatureFlagManager_UseShortREDWithACC24_cold_1();
  }

  return VCFeatureFlagManager_UseShortREDWithACC24__result;
}

BOOL VCFeatureFlagManager_DetectInactiveAudioFramesACC24()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_DetectInactiveAudioFramesACC24_onceToken != -1)
  {
    VCFeatureFlagManager_DetectInactiveAudioFramesACC24_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"DetectInactiveAudioFramesACC24", VCFeatureFlagManager_DetectInactiveAudioFramesACC24_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_DetectInactiveAudioFramesACC24_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: DetectInactiveAudioFramesACC24=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode_onceToken != -1)
  {
    VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"AudioCodecACC24FixedBitrateMode", VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: AudioCodecACC24FixedBitrateMode=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_UseAudioCodecACC24ForGFT()
{
  if (VCFeatureFlagManager_UseAudioCodecACC24ForGFT_onceToken != -1)
  {
    VCFeatureFlagManager_UseAudioCodecACC24ForGFT_cold_1();
  }

  v1 = VCFeatureFlagManager_UseAudioCodecACC24ForGFT_isACC24Supported;

  return VCDefaults_GetBoolValueForKey(@"UseAudioCodecACC24ForGFT", v1);
}

BOOL VCFeatureFlagManager_DetectInactiveAudioFramesAACELD()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_DetectInactiveAudioFramesAACELD_onceToken != -1)
  {
    VCFeatureFlagManager_DetectInactiveAudioFramesAACELD_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"DetectInactiveAudioFramesAACELD", VCFeatureFlagManager_DetectInactiveAudioFramesAACELD_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_DetectInactiveAudioFramesAACELD_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: DetectInactiveAudioFramesAACELD=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

uint64_t VCFeatureFlagManager_PQCU1Enabled()
{
  v13 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_PQCU1Enabled_onceToken != -1)
  {
    VCFeatureFlagManager_PQCU1Enabled_cold_1();
  }

  VCFeatureFlagManager_PQCU1Enabled_storeBagValue = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-u-plus-one-pqc-enabled" userDefaultKey:0 defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithBool:", VCFeatureFlagManager_PQCU1Enabled_featureFlag), 0), "BOOLValue"}];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceEnabledOneToOnePQC", VCFeatureFlagManager_PQCU1Enabled_featureFlag & VCFeatureFlagManager_PQCU1Enabled_storeBagValue & 1);
  v1 = VCFeatureFlagManager_PQCU1Enabled_shortMKIEnabled;
  v2 = VCFeatureFlagManager_PQCU1Enabled_shortMKIEnabled & BoolValueForKey;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67110144;
    v4[1] = v2;
    v5 = 1024;
    v6 = v1;
    v7 = 1024;
    v8 = VCFeatureFlagManager_PQCU1Enabled_featureFlag;
    v9 = 1024;
    v10 = VCFeatureFlagManager_PQCU1Enabled_storeBagValue;
    v11 = 1024;
    v12 = BoolValueForKey;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: pqcU1Enabled=%{BOOL}d, shortMKIEnabled=%{BOOL}d, featureFlag=%{BOOL}d, storeBagValue=%{BOOL}d, defaultsValue=%{BOOL}d", v4, 0x20u);
  }

  return v2;
}

uint64_t VCFeatureFlagManager_UseTLE()
{
  if (VCFeatureFlagManager_UseTLE_onceToken != -1)
  {
    VCFeatureFlagManager_UseTLE_cold_1();
  }

  return VCFeatureFlagManager_UseTLE_result;
}

BOOL VCFeatureFlagManager_UseAnalyzerSpeechAPI()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_UseAnalyzerSpeechAPI_onceToken != -1)
  {
    VCFeatureFlagManager_UseAnalyzerSpeechAPI_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useAnalyzerSpeechAPI", VCFeatureFlagManager_UseAnalyzerSpeechAPI_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_UseAnalyzerSpeechAPI_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseAnalyzerSpeechAPI=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableSpeechDetector()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableSpeechDetector_onceToken != -1)
  {
    VCFeatureFlagManager_EnableSpeechDetector_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableSpeechDetector", VCFeatureFlagManager_EnableSpeechDetector_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableSpeechDetector_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableSpeechDetector=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_UseBlockDurationHinting()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_UseBlockDurationHinting_onceToken != -1)
  {
    VCFeatureFlagManager_UseBlockDurationHinting_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useBlockDurationHinting", VCFeatureFlagManager_UseBlockDurationHinting_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_UseBlockDurationHinting_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: UseBlockDurationHinting=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_RecordingResiliencyEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_RecordingResiliencyEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_RecordingResiliencyEnabled_cold_1();
  }

  v0 = VCDefaults_GetBoolValueForKey(@"recordingResiliencyEnabled", VCFeatureFlagManager_RecordingResiliencyEnabled_flag) || VCFeatureFlagManager_CallRecordingEnabled();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = v0;
    v3 = 1024;
    v4 = VCFeatureFlagManager_RecordingResiliencyEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: RecordingResiliency=%d (feature flag=%d)", v2, 0xEu);
  }

  return v0;
}

BOOL VCFeatureFlagManager_CallRecordingEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_CallRecordingEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_CallRecordingEnabled_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"callRecordingEnabled", VCFeatureFlagManager_CallRecordingEnabled_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_CallRecordingEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: CallRecording=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableTransportMute()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableTransportMute_onceToken != -1)
  {
    VCFeatureFlagManager_EnableTransportMute_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableTransportMute", VCFeatureFlagManager_EnableTransportMute_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableTransportMute_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableTransportMute=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_LocalRecordingEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_LocalRecordingEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_LocalRecordingEnabled_cold_1();
  }

  v0 = VCDefaults_GetBoolValueForKey(@"localRecordingEnabled", VCFeatureFlagManager_LocalRecordingEnabled_flag) || VCFeatureFlagManager_CallRecordingEnabled();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = v0;
    v3 = 1024;
    v4 = VCFeatureFlagManager_LocalRecordingEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: LocalRecording=%d (feature flag=%d)", v2, 0xEu);
  }

  return v0;
}

BOOL VCFeatureFlagManager_EnableLateKeyFrameDetection()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableLateKeyFrameDetection_onceToken != -1)
  {
    VCFeatureFlagManager_EnableLateKeyFrameDetection_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"EnableLateKeyFrameDetection", VCFeatureFlagManager_EnableLateKeyFrameDetection_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableLateKeyFrameDetection_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableLateKeyFrameDetection=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableFrameBasedFEC()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableFrameBasedFEC_onceToken != -1)
  {
    VCFeatureFlagManager_EnableFrameBasedFEC_cold_1();
  }

  v0 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-frame-based-fec-enabled" userDefaultKey:0 defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithBool:", VCFeatureFlagManager_EnableFrameBasedFEC_featureFlag), 0), "BOOLValue"}];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableFrameBasedFEC", VCFeatureFlagManager_EnableFrameBasedFEC_featureFlag & v0 & 1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109376;
    v3[1] = BoolValueForKey;
    v4 = 1024;
    v5 = VCFeatureFlagManager_EnableFrameBasedFEC_featureFlag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableFrameBasedFEC=%d (feature flag=%d)", v3, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_HostSpeechTranslationServer()
{
  v7 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_HostSpeechTranslationServer_onceToken != -1)
  {
    VCFeatureFlagManager_HostSpeechTranslationServer_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"hostSpeechTranslationServer", (VCFeatureFlagManager_HostSpeechTranslationServer_audioFlag | VCFeatureFlagManager_HostSpeechTranslationServer_videoFlag) & 1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109632;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_HostSpeechTranslationServer_audioFlag;
    v5 = 1024;
    v6 = VCFeatureFlagManager_HostSpeechTranslationServer_videoFlag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: HostSpeechTranslationServer=%d (audioFlag=%d, videoFlag=%d)", v2, 0x14u);
  }

  return BoolValueForKey;
}

uint64_t VCFeatureFlagManager_FoveationEnabled()
{
  v2 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_FoveationEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_FoveationEnabled_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = VCFeatureFlagManager_FoveationEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: MVDFoveation=%d", v1, 8u);
  }

  return VCFeatureFlagManager_FoveationEnabled_flag;
}

BOOL VCFeatureFlagManager_NegotiateRemoteMicEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_NegotiateRemoteMicEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_NegotiateRemoteMicEnabled_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"negotiateRemoteMic", VCFeatureFlagManager_NegotiateRemoteMicEnabled_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_NegotiateRemoteMicEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: NegotiateRemoteMic=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_PersonaV2Enabled()
{
  if (VCFeatureFlagManager_PersonaV2Enabled_onceToken != -1)
  {
    VCFeatureFlagManager_PersonaV2Enabled_cold_1();
  }

  result = VCDefaults_GetBoolValueForKey(@"forcePersonaV2", VCFeatureFlagManager_PersonaV2Enabled_flag);
  if (result)
  {
    return +[VCHardwareSettings deviceClass]== 8;
  }

  return result;
}

BOOL VCFeatureFlagManager_AlwaysHDCaptureEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_AlwaysHDCaptureEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_AlwaysHDCaptureEnabled_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"alwaysHDCaptureEnabled", VCFeatureFlagManager_AlwaysHDCaptureEnabled_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_AlwaysHDCaptureEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: AlwaysHDCapture=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame_onceToken != -1)
  {
    VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"SendAACELDSBRHeaderWithEveryFrame", VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: SendAACELDSBRHeaderWithEveryFrame=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_AACELDImprovedCorePLCEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_AACELDImprovedCorePLCEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_AACELDImprovedCorePLCEnabled_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"ImprovedPacketLossConcealmentAACELD", VCFeatureFlagManager_AACELDImprovedCorePLCEnabled_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_AACELDImprovedCorePLCEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: ImprovedPacketLossConcealmentAACELD=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_AFB()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_AFB_onceToken != -1)
  {
    VCFeatureFlagManager_AFB_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"AFB", VCFeatureFlagManager_AFB_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_AFB_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: AFB=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation_onceToken != -1)
  {
    VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableHDR10DefaultNegotiation", VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableHDR10DefaultNegotiation=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_AudioREDDecayFactorABTesting()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_AudioREDDecayFactorABTesting_onceToken != -1)
  {
    VCFeatureFlagManager_AudioREDDecayFactorABTesting_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"audioREDDecayFactorABTesting", VCFeatureFlagManager_AudioREDDecayFactorABTesting_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_AudioREDDecayFactorABTesting_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: AudioREDDecayFactorABTesting=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableMTERetagging()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableMTERetagging_onceToken != -1)
  {
    VCFeatureFlagManager_EnableMTERetagging_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableMTERetagging", VCFeatureFlagManager_EnableMTERetagging_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableMTERetagging_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableMTERetagging=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_JBLatencySensitiveModeEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_JBLatencySensitiveModeEnabled_onceToken != -1)
  {
    VCFeatureFlagManager_JBLatencySensitiveModeEnabled_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"JBLatencySensitiveModeEnabled", VCFeatureFlagManager_JBLatencySensitiveModeEnabled_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_JBLatencySensitiveModeEnabled_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: JBLatencySensitiveModeEnabled=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA_onceToken != -1)
  {
    VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableEnhancedJBAdaptationsForFTA", VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableEnhancedJBAdaptationsForFTA=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV_onceToken != -1)
  {
    VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableEnhancedJBAdaptationsForFTV", VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableEnhancedJBAdaptationsForFTV=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

BOOL VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement_onceToken != -1)
  {
    VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement_cold_1();
  }

  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableCorrectAudioSampleCountEnforcement", VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement_flag);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = BoolValueForKey;
    v3 = 1024;
    v4 = VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement_flag;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: EnableCorrectAudioSampleCountEnforcement=%d (feature flag=%d)", v2, 0xEu);
  }

  return BoolValueForKey;
}

uint64_t VideoScaler_FixedAspectRatioScaleAndPadPixelBuffer(uint64_t a1, __CVBuffer *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, CVPixelBufferPoolRef pixelBufferPool, CVPixelBufferRef *a8)
{
  v49 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], pixelBufferPool, &pixelBufferOut))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoScaler_FixedAspectRatioScaleAndPadPixelBuffer_cold_1(v15);
      }
    }

    return 51;
  }

  else
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DB8], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F50], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FD0], kCVAttachmentMode_ShouldPropagate);
    v18 = a3;
    v19 = a4;
    v20 = a3 / a4;
    v21 = a5;
    v22 = a5 / a6;
    if (v20 <= v22)
    {
      v23 = a4;
      v24 = a3;
      if (v20 < v22)
      {
        v25 = v20 * a6;
        v24 = vcvtmd_u64_f64(v25);
        v18 = floor(v25);
        v19 = a6;
        v23 = a6;
      }
    }

    else
    {
      v23 = vcvtmd_u64_f64(v21 / v20);
      v19 = floor(v21 / v20);
      v18 = a5;
      v24 = a5;
    }

    v26 = ((a5 - v24) >> 1);
    v27 = ((a6 - v23) >> 1);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v18 - 2));
    v29 = VCPixelTransferSession_FixedAspectRatioScaleAndPadPixelBuffer(*(a1 + 8), a2, pixelBufferOut, DictionaryRepresentation);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    if (v29)
    {
      v16 = 2147483656;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316930;
          v34 = v30;
          v35 = 2080;
          v36 = "VideoScaler_FixedAspectRatioScaleAndPadPixelBuffer";
          v37 = 1024;
          v38 = 137;
          v39 = 1024;
          v40 = v29;
          v41 = 2048;
          v42 = a3;
          v43 = 2048;
          v44 = a4;
          v45 = 2048;
          v46 = a5;
          v47 = 2048;
          v48 = a6;
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTPixelTransferSessionTransferImage failed %d input widthxheight(%zux%zu) new widthxheight(%zux%zu)", buf, 0x4Au);
        }
      }
    }

    else
    {
      v16 = 0;
      *a8 = pixelBufferOut;
    }
  }

  return v16;
}

void OUTLINED_FUNCTION_7_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
}

void OUTLINED_FUNCTION_12_16(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a12 = v16;
  a13 = v15;
  a14 = v17;
  a15 = v18;

  dispatch_sync(a1, &block);
}

void sub_1DBA9FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCTimescalePSOLA_CalcFsMult(int a1)
{
  if (a1 > 31999)
  {
    if (a1 != 32000)
    {
      if (a1 == 48000)
      {
        return 6;
      }

      return 1;
    }

    return 4;
  }

  else
  {
    if (a1 != 16000)
    {
      if (a1 == 24000)
      {
        return 3;
      }

      return 1;
    }

    return 2;
  }
}

uint64_t VCTimescalePSOLA_DownSampleTo4kHz(uint64_t a1, __int16 a2, int a3, _WORD *a4, __int16 a5, int a6)
{
  if (a3 <= 23999)
  {
    if (a3 == 8000)
    {
      v7 = 2;
      v8 = 3;
      v9 = &VCTimescalePSOLA_kDownsample8kHzTbl;
      v6 = 2;
      goto LABEL_12;
    }

    if (a3 == 16000)
    {
      v6 = 4;
      v7 = 3;
      v8 = 5;
      v9 = &VCTimescalePSOLA_kDownsample16kHzTbl;
      goto LABEL_12;
    }

    return 1;
  }

  if (a3 == 24000)
  {
    v6 = 6;
    v7 = 3;
    v8 = 7;
    v9 = &VCTimescalePSOLA_kDownsample24kHzTbl;
    goto LABEL_12;
  }

  if (a3 == 32000)
  {
    v6 = 8;
    v7 = 4;
    v8 = 7;
    v9 = &VCTimescalePSOLA_kDownsample32kHzTbl;
    goto LABEL_12;
  }

  if (a3 != 48000)
  {
    return 1;
  }

  v6 = 12;
  v7 = 4;
  v8 = 7;
  v9 = &VCTimescalePSOLA_kDownsample48kHzTbl;
LABEL_12:
  if (a6)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return VCTimescalePSOLA_DownsampleFast(a1 + 2 * (v8 - 1), (a2 - (v8 - 1)), a4, a5, v9, v8, v6, v10);
}

uint64_t VCTimescalePSOLA_SatW32ToW16(int a1)
{
  if (a1 <= -32768)
  {
    v1 = -32768;
  }

  else
  {
    v1 = a1;
  }

  if (v1 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v1;
  }
}

uint64_t VCTimescalePSOLA_Normalize(uint64_t result)
{
  if (result)
  {
    if (result >= 0)
    {
      v1 = result;
    }

    else
    {
      v1 = -result;
    }

    v2 = v1 < 0x8000;
    if (v1 << (16 * v2) >= 0x800000)
    {
      v3 = 16 * v2;
    }

    else
    {
      v3 = (16 * (v1 < 0x8000)) | 8;
    }

    if (!(v1 << v3 >> 27))
    {
      v3 |= 4u;
    }

    if (!(v1 << v3 >> 29))
    {
      v3 |= 2u;
    }

    if (v1 << v3 >> 30)
    {
      return v3;
    }

    else
    {
      return v3 + 1;
    }
  }

  return result;
}

uint64_t VCTimescalePSOLA_ShiftW32(int a1, int a2)
{
  if (a2 >= 0)
  {
    return (a1 << a2);
  }

  else
  {
    return (a1 >> -a2);
  }
}

uint64_t VCTimescalePSOLA_MemSetW16(uint64_t result, __int16 a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = (result + 8);
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1DBD45330)));
      if (vuzp1_s8(vuzp1_s16(v7, *v4.i8), *v4.i8).u8[0])
      {
        *(v5 - 4) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v7, *&v4), *&v4).i8[1])
      {
        *(v5 - 3) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1DBD45970)))), *&v4).i8[2])
      {
        *(v5 - 2) = a2;
        *(v5 - 1) = a2;
      }

      v8 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1DBD48740)));
      if (vuzp1_s8(*&v4, vuzp1_s16(v8, *&v4)).i32[1])
      {
        *v5 = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v8, *&v4)).i8[5])
      {
        v5[1] = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1DBD48730))))).i8[6])
      {
        v5[2] = a2;
        v5[3] = a2;
      }

      v3 += 8;
      v5 += 8;
    }

    while (((a3 + 7) & 0xFFFFFFF8) != v3);
  }

  return result;
}

float VCTimescalePSOLA_MixVoiceUnvoiceFloatPoint(float *a1, float *a2, float *a3, int a4, float result, float a6)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v7 = 1.0 - result;
    do
    {
      v8 = *a2++;
      v9 = v8;
      v10 = *a3++;
      *a1++ = (v7 * v10) + (result * v9);
      result = result - a6;
      v7 = v7 + a6;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t VCVirtualAVCaptureDevice_OnVideoFrame(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 40));
  if (a2)
  {
    v6 = CFRetain(a2);
    ResizedPixelBuffer = v6;
    if (*(a1 + 180) >= 2u)
    {
      goto LABEL_8;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_6;
  }

  if (*(a1 + 180) < 2u)
  {
LABEL_6:
    ResizedPixelBuffer = VCImageResizingConverter_CreateResizedPixelBuffer(*(a1 + 184), a2);
    goto LABEL_8;
  }

  ResizedPixelBuffer = 0;
LABEL_8:
  VCVideoHardwareDumpCollector_RecordActiveCaptureDevice(*(a1 + 256), *(a1 + 112));
  v11 = *a3;
  v12 = *(a3 + 16);
  v8 = createSampleBufferWithPixelBuffer(ResizedPixelBuffer, &v11);
  if (!v8)
  {
    VCVirtualAVCaptureDevice_OnVideoFrame_cold_1(ResizedPixelBuffer);
    if (!ResizedPixelBuffer)
    {
      return pthread_mutex_unlock((a1 + 40));
    }

    goto LABEL_10;
  }

  v9 = v8;
  VCVirtualAVCaptureDevice_OnMediaSample(a1, v8, *MEMORY[0x1E6987608]);
  CFRelease(v9);
  if (ResizedPixelBuffer)
  {
LABEL_10:
    CFRelease(ResizedPixelBuffer);
  }

  return pthread_mutex_unlock((a1 + 40));
}

void sub_1DBAA51E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBAA53D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBAA5544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBAA58E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t VCVirtualAVCaptureDevice_OnMediaSample(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = *(a1 + 120);
  result = [v5 count];
  if (result)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      VCVirtualAVCaptureDeviceInput_OnMediaSample([v5 objectAtIndexedSubscript:v7], a2, a3);
      v7 = v8;
      result = [v5 count];
    }

    while (result > v8++);
  }

  return result;
}

void sub_1DBAA5D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_31(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x30u);
}

uint64_t VCMediaStreamCipherSuite_CipherSuiteWithClientCipherSuite(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1DBD50D60[a1 - 1];
  }
}

uint64_t VCMediaStreamCipherSuite_ClientCipherSuiteWithCipherSuite(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1DBD50D90[a1 - 1];
  }
}

uint64_t VCMediaStreamCipherSuite_EncryptionKeyLength(uint64_t a1)
{
  if ((a1 - 2) > 9)
  {
    return 0;
  }

  else
  {
    return qword_1DBD50DC8[a1 - 2];
  }
}

const char *VCMediaStreamCipherSuite_Description(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return "Invalid";
  }

  else
  {
    return off_1E85F9918[a1];
  }
}

uint64_t VCVideoStreamSendGroup_UpdateVideoStreamAndProcessFrame(uint64_t a1, void *a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, double a7)
{
  v19 = *MEMORY[0x1E69E9840];
  BaseQualityIndex = VCVideoStream_GetBaseQualityIndex(a2);
  v15 = 0.0;
  if (BaseQualityIndex != 1000 && BaseQualityIndex != 1800)
  {
    v15 = *(a1 + 816);
  }

  _VCVideoStreamSendGroup_SetFECRatio(a2, v15);
  VCVideoStream_SetAudioSampleTime(a2, a4, a7);
  v17 = *a5;
  v18 = *(a5 + 2);
  return VCVideoStream_OnVideoFrame(a2, a3, &v17, a6);
}

uint64_t _VCVideoStreamSendGroup_SetFECRatio(void *a1, double a2)
{
  v4 = [objc_msgSend(a1 "defaultStreamConfig")];
  if (a2 > 0.0 && v4 != 0)
  {
    v6 = v4;
    if (([v4 isOneToOne] & 1) == 0)
    {
      if ([v6 repairedFECLevel])
      {
        v7 = [v6 repairedFECLevel];
      }

      else
      {
        v7 = 2;
      }

      a2 = FECUtil_FECLevelofProtectionToRateRatio(v7) + -1.0;
    }
  }

  return VCVideoStream_SetFECRatio(a1, a2);
}

void VCVideoStreamSendGroup_ProcessVideoPriority(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((a1 + 744));
  if (v1 != *(a1 + 745))
  {
    v3 = MEMORY[0x1E1289F20](a1 + 296);
    if (v3)
    {
      *(a1 + 745) = v1;
      v4 = *(a1 + 304);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __VCVideoStreamSendGroup_ProcessVideoPriority_block_invoke;
      v5[3] = &unk_1E85F37C8;
      v5[4] = v3;
      v5[5] = a1;
      v6 = v1;
      dispatch_async(v4, v5);
    }
  }
}

unsigned int *VCVideoStreamSendGroup_ProcessVideoEventQueue(uint64_t a1)
{
  result = CMSimpleQueueDequeue(*(a1 + 808));
  if (result)
  {
    v3 = result;
    do
    {
      *(a1 + 816) = VCRedundancyControllerVideo_ConvertRedundancyPercentageToRatio(*v3);
      v4 = *(a1 + 176);
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          _VCVideoStreamSendGroup_SetFECRatio(ValueAtIndex, *(a1 + 816));
        }
      }

      VCMemoryPool_Free(*(a1 + 800), v3);
      result = CMSimpleQueueDequeue(*(a1 + 808));
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t VCVideoStreamSendGroup_OnVideoFrame(uint64_t a1, CMSampleBufferRef sbuf, CMTime *a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  ++*(a1 + 876);
  if (*(a1 + 312))
  {
    if (*(a1 + 500) != 1 || (*(a1 + 720) & 1) != 0)
    {
      memset(&v45, 170, sizeof(v45));
      CMSampleBufferGetPresentationTimeStamp(&v45, sbuf);
      time = v45;
      Seconds = CMTimeGetSeconds(&time);
      v9 = Seconds;
      *&Seconds = Seconds;
      [*(a1 + 792) setCurrentFrameTime:Seconds];
      LODWORD(v10) = *(a1 + 328);
      v11 = VCMediaStreamSendGroup_ModulateTimestampWithSourceTimestamp(a1, v10, v9);
      v12 = _VCVideoStreamSendGroup_DidTimestampRollBackward(a1, v11);
      if (!v12)
      {
        VCVideoStreamSendGroup_ProcessVideoEventQueue(a1);
        v15 = [*(a1 + 792) activeVideoStreams];
        if ([v15 count])
        {
          ++*(a1 + 880);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v16 = [v15 allValues];
        v17 = [v16 countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v48;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v47 + 1) + 8 * i);
              time = *a3;
              VCVideoStreamSendGroup_UpdateVideoStreamAndProcessFrame(a1, v21, sbuf, v11, &time.value, a4, v9);
            }

            v18 = [v16 countByEnumeratingWithState:&v47 objects:v46 count:16];
          }

          while (v18);
        }

        VCVideoStreamSendGroup_ProcessVideoPriority(a1);
        v12 = 0;
        return v12 ^ 1u;
      }

      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v12 ^ 1u;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return v12 ^ 1u;
        }

        v33 = *(a1 + 328);
        LODWORD(time.value) = 136316418;
        *(&time.value + 4) = v31;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
        HIWORD(time.epoch) = 1024;
        v52 = 989;
        v53 = 1024;
        *v54 = v11;
        *&v54[4] = 2048;
        *&v54[6] = v9;
        *&v54[14] = 1024;
        *&v54[16] = v33;
        v34 = " [%s] %s:%d Video frame is too old and modulated timestamp rolled backward – dropping frame. modulatedTimestamp=%u, frameTimeInSec=%f, rtpTimestampRate=%u";
        v35 = v32;
        v36 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v13 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v12 ^ 1u;
        }

        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return v12 ^ 1u;
        }

        v44 = *(a1 + 328);
        LODWORD(time.value) = 136316930;
        *(&time.value + 4) = v37;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
        HIWORD(time.epoch) = 1024;
        v52 = 989;
        v53 = 2112;
        *v54 = v13;
        *&v54[8] = 2048;
        *&v54[10] = a1;
        *&v54[18] = 1024;
        v55 = v11;
        v56 = 2048;
        v57 = v9;
        v58 = 1024;
        v59 = v44;
        v34 = " [%s] %s:%d %@(%p) Video frame is too old and modulated timestamp rolled backward – dropping frame. modulatedTimestamp=%u, frameTimeInSec=%f, rtpTimestampRate=%u";
        v35 = v38;
        v36 = 70;
      }

      _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v34, &time, v36);
      return v12 ^ 1u;
    }

    if (objc_opt_class() != a1)
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      LODWORD(time.value) = 136316162;
      *(&time.value + 4) = v42;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
      HIWORD(time.epoch) = 1024;
      v52 = 976;
      v53 = 2112;
      *v54 = v30;
      *&v54[8] = 2048;
      *&v54[10] = a1;
      v25 = " [%s] %s:%d %@(%p) Sync source timestamp information is not yet available. Dropping video frame.";
      v29 = v43;
      goto LABEL_52;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 1;
    }

    v40 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    LODWORD(time.value) = 136315650;
    *(&time.value + 4) = v40;
    LOWORD(time.flags) = 2080;
    *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
    HIWORD(time.epoch) = 1024;
    v52 = 976;
    v25 = " [%s] %s:%d Sync source timestamp information is not yet available. Dropping video frame.";
LABEL_47:
    v29 = v23;
    v41 = 28;
LABEL_53:
    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v25, &time, v41);
    return 1;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      v24 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          VCVideoStreamSendGroup_OnVideoFrame_cold_1();
        }

        return 1;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(time.value) = 136315650;
        *(&time.value + 4) = v22;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
        HIWORD(time.epoch) = 1024;
        v52 = 971;
        v25 = " [%s] %s:%d video no-op no MKM";
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(time.value) = 136316162;
          *(&time.value + 4) = v26;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
          HIWORD(time.epoch) = 1024;
          v52 = 971;
          v53 = 2112;
          *v54 = v14;
          *&v54[8] = 2048;
          *&v54[10] = a1;
          _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) video no-op no MKM", &time, 0x30u);
        }

        return 1;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(time.value) = 136316162;
        *(&time.value + 4) = v26;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VCVideoStreamSendGroup_OnVideoFrame";
        HIWORD(time.epoch) = 1024;
        v52 = 971;
        v53 = 2112;
        *v54 = v14;
        *&v54[8] = 2048;
        *&v54[10] = a1;
        v25 = " [%s] %s:%d %@(%p) video no-op no MKM";
        v29 = v27;
LABEL_52:
        v41 = 48;
        goto LABEL_53;
      }
    }
  }

  return 1;
}