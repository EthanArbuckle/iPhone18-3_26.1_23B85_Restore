@interface APAVAudioSessionManager
+ (APAVAudioSessionManager)ambientSessionManager;
+ (APAVAudioSessionManager)mediaSessionManager;
- (APAVAudioSessionManager)initWithType:(unint64_t)a3;
- (AVAudioSession)session;
- (BOOL)_ifNeededChangeSessionTypeAndRequestNewBufferSize:(id *)a3;
- (BOOL)setActive:(BOOL)a3 error:(id *)a4;
- (BOOL)setAudioMode:(__CFString *)a3 isLongForm:(BOOL)a4 error:(id *)a5;
- (BOOL)setDuckOthers:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)setPreferredHardwareFormat:(int64_t)a3 error:(id *)a4;
- (BOOL)setPreferredOutputNumberOfChannels:(int64_t)a3 error:(id *)a4;
- (BOOL)setPrefersMultichannelAudio:(unsigned __int8)a3 error:(id *)a4;
- (void)dealloc;
- (void)resetSession;
- (void)setUpSessionWithIsMixable:(BOOL)a3;
@end

@implementation APAVAudioSessionManager

- (BOOL)setPreferredHardwareFormat:(int64_t)a3 error:(id *)a4
{
  FigSimpleMutexLock();
  isSetUp = self->_isSetUp;
  if (isSetUp)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexUnlock();
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
    }
  }

  return isSetUp;
}

- (BOOL)setPreferredOutputNumberOfChannels:(int64_t)a3 error:(id *)a4
{
  FigSimpleMutexLock();
  isSetUp = self->_isSetUp;
  if (isSetUp)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexUnlock();
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
    }
  }

  return isSetUp;
}

- (BOOL)setDuckOthers:(unsigned __int8)a3 error:(id *)a4
{
  v5 = a3;
  FigSimpleMutexLock();
  if (!self->_isSetUp)
  {
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      v17 = self;
      v18 = "[APAVAudioSessionManager setDuckOthers:error:]";
      LogPrintF();
    }

    if (!a4)
    {
      goto LABEL_29;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v15 = -6718;
LABEL_27:
    v11 = 0;
    *a4 = [v13 errorWithDomain:v14 code:v15 userInfo:{0, v17, v18}];
    goto LABEL_30;
  }

  if (self->_type != 1)
  {
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      v17 = self;
      LogPrintF();
    }

    if (!a4)
    {
      goto LABEL_29;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v15 = -6735;
    goto LABEL_27;
  }

  if (self->_forceRAW)
  {
    v7 = MEMORY[0x277CB8028];
  }

  else
  {
    v7 = MEMORY[0x277CB8030];
  }

  v8 = *v7;
  v9 = MEMORY[0x277CB80C0];
  if (!self->_forceRAW)
  {
    v9 = MEMORY[0x277CB80A8];
  }

  v10 = v5 == 0;
  v11 = 1;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (![(AVAudioSession *)self->_session setCategory:v8 mode:*v9 routeSharingPolicy:0 options:v12 error:a4])
  {
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_29:
    v11 = 0;
  }

LABEL_30:
  FigSimpleMutexUnlock();
  return v11;
}

- (BOOL)setActive:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v15 = 0;
  FigSimpleMutexLock();
  if (!self->_isSetUp)
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v7 = [(AVAudioSession *)self->_session categoryOptions];
  v8 = [(AVAudioSession *)self->_session category];
  v9 = [(AVAudioSession *)self->_session mode];
  if (!v5)
  {
    if ([(AVAudioSession *)self->_session setActive:0 error:&v15])
    {
      goto LABEL_9;
    }

LABEL_19:
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v10 = v9;
  v11 = [(APAVAudioSessionManager *)self _ifNeededChangeSessionTypeAndRequestNewBufferSize:&v15];
  if (v15)
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v12 = v11;
  if (![(AVAudioSession *)self->_session setActive:1 error:&v15])
  {
    goto LABEL_19;
  }

  if (v12 && ![(AVAudioSession *)self->_session setCategory:v8 mode:v10 options:v7 error:&v15])
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
LABEL_27:
      LogPrintF();
    }

LABEL_28:
    v13 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_9:
  if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
  {
    [(AVAudioSession *)self->_session IOBufferFrameSize];
    LogPrintF();
  }

  v13 = 1;
  if (a4)
  {
LABEL_14:
    *a4 = v15;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v13;
}

- (BOOL)_ifNeededChangeSessionTypeAndRequestNewBufferSize:(id *)a3
{
  v21 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!self->_isSetUp)
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60)
    {
      if (gLogCategory_APAVAudioSessionManager == -1)
      {
        v8 = _LogCategory_Initialize();
        if (!v8)
        {
          goto LABEL_19;
        }
      }

LABEL_30:
      LogPrintF();
    }

LABEL_31:
    LOBYTE(v8) = 0;
    goto LABEL_19;
  }

  v5 = [(AVAudioSession *)self->_session categoryOptions];
  v6 = [(AVAudioSession *)self->_session IOBufferFrameSize];
  [(AVAudioSession *)self->_session sampleRate];
  LOBYTE(v8) = 0;
  if (self->_type)
  {
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_19;
  }

  if (v6 < 0x401)
  {
    goto LABEL_19;
  }

  v9 = v7;
  if (v7 <= 0.0)
  {
    goto LABEL_19;
  }

  v8 = [(AVAudioSession *)self->_session isOtherAudioPlaying];
  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = 1024.0 / v9;
  if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
  {
    type = self->_type;
    v12 = "?";
    if (type == 1)
    {
      v12 = "Ambient";
    }

    if (type)
    {
      v13 = v12;
    }

    else
    {
      v13 = "Media";
    }

    v20 = v10;
    session = self->_session;
    v16 = self;
    v18 = v6;
    v19 = 1024;
    v17 = v13;
    LogPrintF();
  }

  if (![(AVAudioSession *)self->_session setPreferredIOBufferDuration:&v21 error:v10, session, v16, v17, v18, v19, *&v20])
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90)
    {
      if (gLogCategory_APAVAudioSessionManager == -1)
      {
        v8 = _LogCategory_Initialize();
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if ([(AVAudioSession *)self->_session setCategory:*MEMORY[0x277CB8030] mode:*MEMORY[0x277CB80A8] options:0 error:&v21])
  {
    LOBYTE(v8) = 1;
    goto LABEL_19;
  }

  APSLogErrorAt();
  if (gLogCategory_APAVAudioSessionManager > 90)
  {
    goto LABEL_31;
  }

  if (gLogCategory_APAVAudioSessionManager != -1)
  {
    goto LABEL_30;
  }

  v8 = _LogCategory_Initialize();
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_19:
  if (a3)
  {
    *a3 = v21;
  }

  return v8;
}

- (BOOL)setPrefersMultichannelAudio:(unsigned __int8)a3 error:(id *)a4
{
  FigSimpleMutexLock();
  isSetUp = self->_isSetUp;
  if (isSetUp)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexUnlock();
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
    }
  }

  return isSetUp;
}

- (BOOL)setAudioMode:(__CFString *)a3 isLongForm:(BOOL)a4 error:(id *)a5
{
  LODWORD(v6) = a4;
  FigSimpleMutexLock();
  if (self->_isSetUp)
  {
    v9 = *MEMORY[0x277CB80A8];
    IntWithDefault = APSSettingsGetIntWithDefault();
    type = self->_type;
    if (type == 1)
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (!type)
    {
      if (a3 == @"moviePlayback")
      {
        goto LABEL_7;
      }

      if (!a3)
      {
LABEL_9:
        v6 = v6;
LABEL_11:
        if (self->_forceRAW)
        {
          if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
          {
            session = self->_session;
            LogPrintF();
          }

          v14 = *MEMORY[0x277CB8028];
          v9 = *MEMORY[0x277CB80C0];
        }

        else
        {
          v14 = *MEMORY[0x277CB8030];
        }

        if (self->_type || !APSMultiPrimariesEnabled())
        {
          v17 = [(AVAudioSession *)self->_session setCategory:v14 mode:v9 routeSharingPolicy:v6 options:[(AVAudioSession *)self->_session categoryOptions:session] error:a5];
        }

        else
        {
          v17 = [(AVAudioSession *)self->_session setCategory:v14 mode:v9 options:[(AVAudioSession *)self->_session categoryOptions] error:a5];
        }

        v16 = v17;
        if (v9 == *MEMORY[0x277CB80E0] && v17)
        {
          v16 = [(AVAudioSession *)self->_session setMXSessionProperty:*MEMORY[0x277D27318] value:MEMORY[0x277CBEC38] error:a5];
          if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        FigSimpleMutexUnlock();
        return v16;
      }

      v12 = IntWithDefault;
      if (CFEqual(a3, @"moviePlayback"))
      {
LABEL_7:
        v13 = MEMORY[0x277CB80B8];
      }

      else
      {
        if (!v12 || a3 != @"spokenAudio" && !CFEqual(a3, @"spokenAudio"))
        {
          goto LABEL_9;
        }

        if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
        {
          v20 = self->_type;
          v21 = "?";
          if (v20 == 1)
          {
            v21 = "Ambient";
          }

          if (v20)
          {
            v22 = v21;
          }

          else
          {
            v22 = "Media";
          }

          v24 = v22;
          v25 = a3;
          session = self;
          LogPrintF();
        }

        v13 = MEMORY[0x277CB80E0];
      }

      v9 = *v13;
      goto LABEL_9;
    }

    v15 = -6756;
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v15 = -6718;
  }

  FigSimpleMutexUnlock();
  v16 = 0;
  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v15 userInfo:0];
  }

  return v16;
}

- (void)resetSession
{
  FigSimpleMutexLock();
  if (self->_isSetUp)
  {
    if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_session = 0;
    self->_isSetUp = 0;
  }

  FigSimpleMutexUnlock();
}

- (void)setUpSessionWithIsMixable:(BOOL)a3
{
  v3 = a3;
  v19 = 0;
  FigSimpleMutexLock();
  if (!self->_isSetUp)
  {
    if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      type = self->_type;
      v6 = "?";
      if (type == 1)
      {
        v6 = "Ambient";
      }

      if (type)
      {
        v7 = v6;
      }

      else
      {
        v7 = "Media";
      }

      v16 = v7;
      v18 = v3;
      session = self;
      LogPrintF();
    }

    v8 = self->_type;
    if (v8 == 1)
    {
      self->_session = [objc_alloc(MEMORY[0x277CB83F8]) initAuxiliarySession];
      v3 = 1;
    }

    else if (v8)
    {
      v3 = 0;
    }

    else
    {
      self->_session = [MEMORY[0x277CB83F8] sharedInstance];
      v3 = v3;
    }

    if (self->_forceRAW)
    {
      if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        session = self->_session;
        LogPrintF();
      }

      v9 = *MEMORY[0x277CB8028];
      v10 = *MEMORY[0x277CB80C0];
    }

    else
    {
      v9 = *MEMORY[0x277CB8030];
      v10 = *MEMORY[0x277CB80A8];
    }

    if ([(AVAudioSession *)self->_session setMXSessionProperty:*MEMORY[0x277D27290] value:MEMORY[0x277CBEC38] error:&v19, session, v16, v18])
    {
      if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        v15 = self->_session;
LABEL_30:
        LogPrintF();
      }
    }

    else if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      v15 = self->_session;
      v17 = v19;
      goto LABEL_30;
    }

    v11 = self->_type;
    if (v11 != 1)
    {
LABEL_47:
      if (v11 || !APSMultiPrimariesEnabled())
      {
        [(AVAudioSession *)self->_session setCategory:v9 mode:v10 routeSharingPolicy:0 options:v3 error:0, v15, v17];
      }

      else
      {
        [(AVAudioSession *)self->_session setCategory:v9 mode:v10 options:v3 error:0];
      }

      Int64 = APSSettingsGetInt64();
      if (Int64)
      {
        v19 = 0;
        if ([(AVAudioSession *)self->_session setPreferredSampleRate:&v19 error:Int64])
        {
          if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
          {
LABEL_58:
            LogPrintF();
          }
        }

        else if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_58;
        }
      }

      v13 = APSSettingsGetInt64();
      if (v13)
      {
        v19 = 0;
        if ([(AVAudioSession *)self->_session setPreferredIOBufferFrameSize:v13 error:&v19])
        {
          if (gLogCategory_APAVAudioSessionManager > 50 || gLogCategory_APAVAudioSessionManager == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_73;
          }
        }

        else if (gLogCategory_APAVAudioSessionManager > 60 || gLogCategory_APAVAudioSessionManager == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_73;
        }

        LogPrintF();
      }

LABEL_73:
      self->_isSetUp = 1;
      goto LABEL_74;
    }

    if ([(AVAudioSession *)self->_session setMXSessionProperty:*MEMORY[0x277D27298] value:MEMORY[0x277CBEC28] error:&v19])
    {
      if (gLogCategory_APAVAudioSessionManager > 50 || gLogCategory_APAVAudioSessionManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_46;
      }

      v15 = self->_session;
    }

    else
    {
      if (gLogCategory_APAVAudioSessionManager > 90 || gLogCategory_APAVAudioSessionManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_46;
      }

      v15 = self->_session;
      v17 = v19;
    }

    LogPrintF();
LABEL_46:
    v11 = self->_type;
    goto LABEL_47;
  }

LABEL_74:
  FigSimpleMutexUnlock();
}

- (AVAudioSession)session
{
  FigSimpleMutexLock();
  if (self->_isSetUp)
  {
    session = self->_session;
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    session = 0;
  }

  FigSimpleMutexUnlock();
  return session;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = APAVAudioSessionManager;
  [(APAVAudioSessionManager *)&v3 dealloc];
}

- (APAVAudioSessionManager)initWithType:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = APAVAudioSessionManager;
  v4 = [(APAVAudioSessionManager *)&v6 init];
  if (v4)
  {
    v4->_mutex = FigSimpleMutexCreate();
    v4->_session = 0;
    v4->_type = a3;
    v4->_forceRAW = APSSettingsGetIntWithDefault() != 0;
    if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v4;
}

+ (APAVAudioSessionManager)ambientSessionManager
{
  if (ambientSessionManager_onceToken != -1)
  {
    dispatch_once(&ambientSessionManager_onceToken, &__block_literal_global_4);
  }

  return ambientSessionManager_sessionManager;
}

APAVAudioSessionManager *__48__APAVAudioSessionManager_ambientSessionManager__block_invoke()
{
  result = [[APAVAudioSessionManager alloc] initWithType:1];
  ambientSessionManager_sessionManager = result;
  return result;
}

+ (APAVAudioSessionManager)mediaSessionManager
{
  if (mediaSessionManager_onceToken != -1)
  {
    dispatch_once(&mediaSessionManager_onceToken, &__block_literal_global_830);
  }

  return mediaSessionManager_sessionManager;
}

APAVAudioSessionManager *__46__APAVAudioSessionManager_mediaSessionManager__block_invoke()
{
  result = [[APAVAudioSessionManager alloc] initWithType:0];
  mediaSessionManager_sessionManager = result;
  return result;
}

@end