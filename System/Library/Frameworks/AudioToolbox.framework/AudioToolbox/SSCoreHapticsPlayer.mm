@interface SSCoreHapticsPlayer
- (BOOL)createAudioPlayerAndReturnError:(id *)a3;
- (BOOL)doInit:(id)a3 haptic:(id)a4 error:(id *)a5;
- (BOOL)playWithOptions:(id)a3 completionCallbackToken:(unsigned int)a4 error:(id *)a5;
- (BOOL)prepareHapticPatternFromPlayOptions:(id)a3;
- (SSCoreHapticsPlayer)initWithAudio:(id)a3 haptic:(id)a4 error:(id *)a5;
- (SSCoreHapticsPlayer)initWithAudio:(id)a3 hapticDictionary:(id)a4 error:(id *)a5;
- (id)getHapticDictionaryFromURL:(id)a3;
- (id)setupDefaultEngineConfigBlock;
- (unint64_t)createAudioResource:(id)a3 error:(id *)a4;
- (void)createHapticPlayer:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)handleFinish;
- (void)prewarm:(BOOL)a3;
- (void)registerCompletionPortion:(BOOL)a3;
- (void)setupLooping;
- (void)stop:(BOOL)a3;
@end

@implementation SSCoreHapticsPlayer

- (void)prewarm:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (kSystemSoundClientLogSubsystem)
  {
    v5 = *kSystemSoundClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Unprewarming";
    ssid = self->_ssid;
    v11 = 136316162;
    v12 = "SSCoreHapticsPlayer.mm";
    v13 = 1024;
    if (v3)
    {
      v7 = @"Prewarming";
    }

    v14 = 603;
    v15 = 2112;
    v16 = v7;
    v17 = 1024;
    v18 = ssid;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ SSID %u, SSCoreHapticsPlayer %p", &v11, 0x2Cu);
  }

LABEL_10:
  engine = self->_engine;
  if (v3)
  {
    [(CHHapticEngine *)engine prewarmWithCompletionHandler:0];
  }

  else
  {
    [(CHHapticEngine *)engine stopPrewarm];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stop:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (!kSystemSoundClientLogSubsystem)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
LABEL_6:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      ssid = self->_ssid;
      v9 = 136316162;
      v10 = "SSCoreHapticsPlayer.mm";
      v11 = 1024;
      v12 = 585;
      v13 = 1024;
      v14 = ssid;
      v15 = 2048;
      v16 = self;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping SSID %u, SSCoreHapticsPlayer %p. stopNow: %d", &v9, 0x28u);
    }

    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v5 = *kSystemSoundClientLogSubsystem;
  if (v5)
  {
    goto LABEL_6;
  }

  if (v3)
  {
LABEL_4:
    [(SSCoreHapticsPlayer *)self registerCompletionAndStop];
    goto LABEL_13;
  }

LABEL_9:
  if (self->_shouldPlayAudioFinal)
  {
    [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setLoopEnabled:0];
  }

  if (self->_shouldPlayHapticsFinal)
  {
    [(CHHapticAdvancedPatternPlayerExtended *)self->_hapticPlayer setLoopEnabled:0];
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)playWithOptions:(id)a3 completionCallbackToken:(unsigned int)a4 error:(id *)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = getpid();
  self->_clientCompletionToken = a4;
  v9 = [(SSCoreHapticsPlayer *)self prepareHapticPatternFromPlayOptions:v7];
  SSClientPlayOptions::SSClientPlayOptions(&v64, self->_ssid, v7);
  if (*(&v64 + 3) < 0.0)
  {
    HIDWORD(v64) = 0;
  }

  v10 = 0.0;
  if (*&v65 < 0.0 || (v10 = 1.0, *&v65 > 1.0))
  {
    *&v65 = v10;
  }

  v11 = -1.0;
  if (*(&v65 + 1) < -1.0 || (v11 = 1.0, *(&v65 + 1) > 1.0))
  {
    *(&v65 + 1) = v11;
  }

  if (*(&v65 + 2) < 0.0)
  {
    DWORD2(v65) = 0;
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v12 = *kSystemSoundClientLogSubsystem;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  v14 = v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    ssid = self->_ssid;
    caulk::platform::process_name(v8);
    v16 = v57 >= 0 ? &__p : __p;
    *buf = 136317698;
    *&buf[4] = "SSCoreHapticsPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 489;
    *&buf[18] = 1024;
    *&buf[20] = ssid;
    LOWORD(v69) = 1024;
    *(&v69 + 2) = v8;
    WORD3(v69) = 2080;
    *(&v69 + 1) = v16;
    LOWORD(v70) = 1024;
    *(&v70 + 2) = DWORD1(v64);
    HIWORD(v70) = 1024;
    *v71 = v9;
    *&v71[4] = 1024;
    *&v71[6] = BYTE12(v65);
    *v72 = 2048;
    *&v72[2] = *(&v64 + 3);
    v73 = 1024;
    v74 = DWORD2(v64);
    v75 = 2048;
    v76 = self;
    _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d -> Incoming Request : SSID %d, inClientPID %d(%s), behaviorID %d, customHapticsProvided %d, loop %d, loopPeriod %f, inFlags %u, SSCoreHapticsPlayer %p", buf, 0x54u);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_22:
  audioPlayer = self->_audioPlayer;
  hapticPlayer = self->_hapticPlayer;
  shouldPlayAudioFinal = audioPlayer != 0;
  self->_shouldPlayAudioFinal = audioPlayer != 0;
  self->_shouldPlayHapticsFinal = hapticPlayer != 0;
  v20 = BYTE8(v64);
  if ((BYTE8(v64) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (audioPlayer)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v21 = *kSystemSoundClientLogSubsystem;
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_ssid;
      *buf = 136315906;
      *&buf[4] = "SSCoreHapticsPlayer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 499;
      *&buf[18] = 1024;
      *&buf[20] = v23;
      LOWORD(v69) = 2048;
      *(&v69 + 2) = self;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling audio for SSID %d, SSCoreHapticsPlayer %p as suppress audio flag is set", buf, 0x22u);
    }
  }

LABEL_31:
  shouldPlayAudioFinal = 0;
  self->_shouldPlayAudioFinal = 0;
LABEL_32:
  if ((v20 & 2) != 0)
  {
    if (self->_shouldPlayHapticsFinal)
    {
      if (kSystemSoundClientLogSubsystem)
      {
        v24 = *kSystemSoundClientLogSubsystem;
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_ssid;
        *buf = 136315906;
        *&buf[4] = "SSCoreHapticsPlayer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 503;
        *&buf[18] = 1024;
        *&buf[20] = v26;
        LOWORD(v69) = 2048;
        *(&v69 + 2) = self;
        _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling haptics for SSID %d, SSCoreHapticsPlayer %p as suppress haptic flag is set", buf, 0x22u);
      }
    }

LABEL_41:
    self->_shouldPlayHapticsFinal = 0;
    shouldPlayAudioFinal = self->_shouldPlayAudioFinal;
  }

  if (!shouldPlayAudioFinal && !self->_shouldPlayHapticsFinal)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v39 = *kSystemSoundClientLogSubsystem;
      if (!v39)
      {
LABEL_65:
        [(SSCoreHapticsPlayer *)self registerCompletionAndStop];
        v37 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    v41 = v39;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = self->_ssid;
      *buf = 136316162;
      *&buf[4] = "SSCoreHapticsPlayer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 508;
      *&buf[18] = 1024;
      *&buf[20] = v42;
      LOWORD(v69) = 1024;
      *(&v69 + 2) = DWORD1(v64);
      WORD3(v69) = 2048;
      *(&v69 + 1) = self;
      _os_log_impl(&dword_1B9A08000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Both sound and haptic flags are false for SSID %d, behaviorID: %d, SSCoreHapticsPlayer %p", buf, 0x28u);
    }

    goto LABEL_65;
  }

  v27 = objc_opt_new();
  self->_audioPlaybackFinished = !self->_shouldPlayAudioFinal;
  self->_hapticPlaybackFinished = !self->_shouldPlayHapticsFinal;
  if (!kSystemSoundClientLogSubsystem)
  {
    v28 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    goto LABEL_48;
  }

  v28 = *kSystemSoundClientLogSubsystem;
  if (v28)
  {
LABEL_48:
    v30 = v28;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      shouldPlayHapticsFinal = self->_shouldPlayHapticsFinal;
      v32 = self->_shouldPlayAudioFinal;
      v33 = self->_ssid;
      *buf = 136317186;
      *&buf[4] = "SSCoreHapticsPlayer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      *&buf[18] = 1024;
      *&buf[20] = v33;
      LOWORD(v69) = 2048;
      *(&v69 + 2) = self;
      WORD5(v69) = 1024;
      HIDWORD(v69) = v32;
      LOWORD(v70) = 1024;
      *(&v70 + 2) = shouldPlayHapticsFinal;
      HIWORD(v70) = 2048;
      *v71 = *&v65;
      *&v71[8] = 1024;
      *v72 = 0;
      *&v72[4] = 1024;
      *&v72[6] = 0;
      _os_log_impl(&dword_1B9A08000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SSID %d, SSCoreHapticsPlayer %p, shouldPlayAudio %d, shouldPlayHaptics %d, clientVolumeScalar %f, needsUnduckCall %d, interruptCurrentSystemSounds %d", buf, 0x44u);
    }
  }

  objc_initWeak(&location, self);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke;
  v61[3] = &unk_1E7ECEAE0;
  objc_copyWeak(&v62, &location);
  [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setCompletionHandler:v61];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_63;
  v59[3] = &unk_1E7ECEAE0;
  objc_copyWeak(&v60, &location);
  [(CHHapticAdvancedPatternPlayerExtended *)self->_hapticPlayer setCompletionHandler:v59];
  if (BYTE12(v65) == 1)
  {
    [(SSCoreHapticsPlayer *)self setupLooping];
  }

  __p = 0;
  p_p = &__p;
  v57 = 0x2020000000;
  v58 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v69 = __Block_byref_object_copy__3676;
  *(&v69 + 1) = __Block_byref_object_dispose__3677;
  v70 = 0;
  engine = self->_engine;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3321888768;
  v46[2] = __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_64;
  v46[3] = &unk_1F37BD028;
  v46[4] = self;
  v49 = &__p;
  v52 = v65;
  v51 = v64;
  v35 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v53 = v35;
  applesauce::xpc::object::object(&v54, v67);
  v47 = v7;
  v50 = buf;
  v36 = v27;
  v48 = v36;
  [(CHHapticEngine *)engine startWithCompletionHandler:v46];
  v37 = *(p_p + 24);

  v38 = v54;
  v54 = 0;

  if (v53)
  {
    CFRelease(v53);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&__p, 8);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

LABEL_66:
  v43 = v67;
  v67 = 0;

  if (cf)
  {
    CFRelease(cf);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v37;
}

void __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kSystemSoundClientLogSubsystem)
  {
    v2 = *kSystemSoundClientLogSubsystem;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = WeakRetained[10];
    v6 = 136315650;
    v7 = "SSCoreHapticsPlayer.mm";
    v8 = 1024;
    v9 = 529;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Audio player completion handler called. SSID %d", &v6, 0x18u);
  }

LABEL_8:
  [WeakRetained registerCompletionPortion:1];

  v5 = *MEMORY[0x1E69E9840];
}

void __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_63(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kSystemSoundClientLogSubsystem)
  {
    v2 = *kSystemSoundClientLogSubsystem;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = WeakRetained[10];
    v6 = 136315650;
    v7 = "SSCoreHapticsPlayer.mm";
    v8 = 1024;
    v9 = 534;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Haptic player completion handler called. SSID %d", &v6, 0x18u);
  }

LABEL_8:
  [WeakRetained registerCompletionPortion:0];

  v5 = *MEMORY[0x1E69E9840];
}

void __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_64(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v4 = *kSystemSoundClientLogSubsystem;
      if (!v4)
      {
LABEL_9:
        [*(a1 + 32) registerCompletionAndStop];
        *(*(*(a1 + 56) + 8) + 24) = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      *buf = 136316162;
      v50 = "SSCoreHapticsPlayer.mm";
      v51 = 1024;
      v52 = 548;
      v53 = 2048;
      *v54 = v6;
      *&v54[8] = 1024;
      *v55 = v7;
      *&v55[4] = 2112;
      *&v55[6] = v3;
      _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot start SSCoreHapticsPlayer %p for SSID %d, error %@", buf, 0x2Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v8 = *(a1 + 32);
  if (*(v8 + 68) != 1)
  {
    goto LABEL_24;
  }

  if (!kSystemSoundClientLogSubsystem)
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kSystemSoundClientLogSubsystem;
  if (v9)
  {
LABEL_15:
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 80);
      v14 = *(a1 + 76);
      v15 = *(a1 + 88);
      *buf = 136316418;
      v50 = "SSCoreHapticsPlayer.mm";
      v51 = 1024;
      v52 = 555;
      v53 = 1024;
      *v54 = v13;
      *&v54[4] = 1024;
      *&v54[6] = v14;
      *v55 = 2048;
      *&v55[2] = v12;
      *&v55[10] = 2048;
      *&v55[12] = v15;
      _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting audio: SSID %u, behaviorID %u, SSCoreHapticsPlayer %p, clientVolumeScalar %f", buf, 0x32u);
    }
  }

  v16 = [*(a1 + 40) objectForKey:@"PlaySystemSoundOption_UnduckTime"];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    if (v18 > 0.00999999978)
    {
      v19 = *(a1 + 32);
      v20 = *(v19 + 8);
      [*(v19 + 72) currentTime];
      v22 = v21;
      [v17 doubleValue];
      v24 = *(*(a1 + 64) + 8);
      obj = *(v24 + 40);
      [v20 earlyUnduckAudioAtTime:&obj error:v22 + v23];
      objc_storeStrong((v24 + 40), obj);
    }
  }

  [*(*(a1 + 32) + 72) currentTime];
  v26 = v25 + 0.03;
  v27 = *(a1 + 32);
  v28 = *(*(a1 + 64) + 8);
  v47 = *(v28 + 40);
  v29 = [v27 startPlayerAtTime:1 forAudio:&v47 error:v25 + 0.03];
  objc_storeStrong((v28 + 40), v47);
  if ((v29 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v30 = *(*(a1 + 32) + 8);
  v31 = *(a1 + 48);
  v32 = *(*(a1 + 64) + 8);
  v46 = *(v32 + 40);
  [v30 sendParameters:v31 atTime:&v46 error:v26];
  objc_storeStrong((v32 + 40), v46);

  v8 = *(a1 + 32);
LABEL_24:
  if (*(v8 + 69) != 1)
  {
    goto LABEL_34;
  }

  [*(v8 + 72) currentTime];
  v34 = v33;
  if (!kSystemSoundClientLogSubsystem)
  {
    v35 = MEMORY[0x1E69E9C10];
    v36 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v35 = *kSystemSoundClientLogSubsystem;
  if (v35)
  {
LABEL_29:
    v37 = v35;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 76);
      v39 = *(a1 + 32);
      v40 = *(v39 + 80);
      *buf = 136316162;
      v50 = "SSCoreHapticsPlayer.mm";
      v51 = 1024;
      v52 = 573;
      v53 = 1024;
      *v54 = v40;
      *&v54[4] = 1024;
      *&v54[6] = v38;
      *v55 = 2048;
      *&v55[2] = v39;
      _os_log_impl(&dword_1B9A08000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting haptics: SSID %u, behaviorID %u, SSCoreHapticsPlayer %p", buf, 0x28u);
    }
  }

  v41 = *(a1 + 32);
  v42 = *(*(a1 + 64) + 8);
  v45 = *(v42 + 40);
  v43 = [v41 startPlayerAtTime:0 forAudio:&v45 error:v34 + 0.03];
  objc_storeStrong((v42 + 40), v45);
  if ((v43 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

LABEL_34:

  v44 = *MEMORY[0x1E69E9840];
}

- (SSCoreHapticsPlayer)initWithAudio:(id)a3 hapticDictionary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 | v9)
  {
    v14.receiver = self;
    v14.super_class = SSCoreHapticsPlayer;
    v10 = [(SSCoreHapticsPlayer *)&v14 init];
    v11 = v10;
    if (v10 && ![(SSCoreHapticsPlayer *)v10 doInit:v8 haptic:v9 error:a5])
    {

      v11 = 0;
    }

    self = v11;
    v12 = self;
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4813 userInfo:0];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (SSCoreHapticsPlayer)initWithAudio:(id)a3 haptic:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 | v9)
  {
    v15.receiver = self;
    v15.super_class = SSCoreHapticsPlayer;
    v10 = [(SSCoreHapticsPlayer *)&v15 init];
    v11 = v10;
    if (v10)
    {
      v12 = [(SSCoreHapticsPlayer *)v10 getHapticDictionaryFromURL:v9];
      if (![(SSCoreHapticsPlayer *)v11 doInit:v8 haptic:v12 error:a5])
      {

        v11 = 0;
      }
    }

    self = v11;
    v13 = self;
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4813 userInfo:0];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (kSystemSoundClientLogSubsystem)
  {
    v3 = *kSystemSoundClientLogSubsystem;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "SSCoreHapticsPlayer.mm";
    v13 = 1024;
    v14 = 429;
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Destroying SSCoreHapticsPlayer %p", buf, 0x1Cu);
  }

LABEL_8:
  v5 = +[SSCoreHapticsInfo instance];
  [v5 unregisterSSID:self->_ssid];

  engine = self->_engine;
  self->_engine = 0;

  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  hapticPlayer = self->_hapticPlayer;
  self->_hapticPlayer = 0;

  v10.receiver = self;
  v10.super_class = SSCoreHapticsPlayer;
  [(SSCoreHapticsPlayer *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerCompletionPortion:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!self->_audioPlayer)
    {
      goto LABEL_25;
    }

    p_audioPlaybackFinished = &self->_audioPlaybackFinished;
    if (!self->_audioPlaybackFinished)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!self->_hapticPlayer)
    {
      goto LABEL_25;
    }

    p_audioPlaybackFinished = &self->_hapticPlaybackFinished;
    if (!self->_hapticPlaybackFinished)
    {
LABEL_4:
      *p_audioPlaybackFinished = 1;
      if (kSystemSoundClientLogSubsystem)
      {
        v6 = *kSystemSoundClientLogSubsystem;
        if (!v6)
        {
LABEL_18:
          [(SSCoreHapticsPlayer *)self handleFinish];
          goto LABEL_25;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"Haptics";
        ssid = self->_ssid;
        *&v15[4] = "SSCoreHapticsPlayer.mm";
        *v15 = 136316162;
        *&v15[12] = 1024;
        if (v3)
        {
          v9 = @"Audio";
        }

        *&v15[14] = 415;
        v16 = 2112;
        v17 = v9;
        v18 = 1024;
        v19 = ssid;
        v20 = 2048;
        v21 = self;
        _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ completed for SSID %d, SSCoreHapticsPlayer %p", v15, 0x2Cu);
      }

      goto LABEL_18;
    }
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v7 = *kSystemSoundClientLogSubsystem;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"Haptics";
    v13 = self->_ssid;
    *&v15[4] = "SSCoreHapticsPlayer.mm";
    *v15 = 136316162;
    *&v15[12] = 1024;
    if (v3)
    {
      v12 = @"Audio";
    }

    *&v15[14] = 410;
    v16 = 2112;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    v20 = 2048;
    v21 = self;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ for SSID %d, SSCoreHapticsPlayer %p has already finished or never started", v15, 0x2Cu);
  }

LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleFinish
{
  if (self->_audioPlaybackFinished && self->_hapticPlaybackFinished)
  {
    engine = self->_engine;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__SSCoreHapticsPlayer_handleFinish__block_invoke;
    v3[3] = &unk_1E7ECEAB8;
    v3[4] = self;
    [(CHHapticEngine *)engine stopWithCompletionHandler:v3];
  }
}

void __35__SSCoreHapticsPlayer_handleFinish__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kSystemSoundClientLogSubsystem)
  {
    v4 = *kSystemSoundClientLogSubsystem;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    v10 = 136315906;
    v11 = "SSCoreHapticsPlayer.mm";
    v12 = 1024;
    v13 = 397;
    v14 = 1024;
    v15 = v7;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d System sound finished playing, SSID %d, SSCoreHapticsPlayer %p", &v10, 0x22u);
  }

LABEL_8:
  v8 = CADeprecated::TSingleton<SSClientCompletion>::instance();
  SSClientCompletion::SendClientCompletion(v8, *(*(a1 + 32) + 64), *(*(a1 + 32) + 80));

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setupLooping
{
  shouldPlayHapticsFinal = self->_shouldPlayHapticsFinal;
  if (self->_shouldPlayAudioFinal)
  {
    if (self->_shouldPlayHapticsFinal)
    {
      if (self->_audioPatternDuration < self->_hapticPatternDuration)
      {
        hapticPatternDuration = self->_hapticPatternDuration;
      }

      else
      {
        hapticPatternDuration = self->_audioPatternDuration;
      }

      [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setLoopEnd:hapticPatternDuration];
      hapticPlayer = self->_hapticPlayer;
      audioPatternDuration = hapticPatternDuration;
    }

    else
    {
      [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setLoopEnabled:1];
      hapticPlayer = self->_audioPlayer;
      audioPatternDuration = self->_audioPatternDuration;
    }
  }

  else
  {
    if (!self->_shouldPlayHapticsFinal)
    {
      return;
    }

    [(CHHapticAdvancedPatternPlayerExtended *)self->_hapticPlayer setLoopEnabled:1];
    hapticPlayer = self->_hapticPlayer;
    audioPatternDuration = self->_hapticPatternDuration;
  }

  [(CHHapticAdvancedPatternPlayerExtended *)hapticPlayer setLoopEnd:audioPatternDuration];
}

- (BOOL)prepareHapticPatternFromPlayOptions:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKey:@"PlaySystemSoundOption_VibrationPattern"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SSCoreHapticsPlayer *)self getHapticDictionaryFromURL:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = v4;
  }

  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToDictionary:self->_hapticPatternDict])
    {
      if (kSystemSoundClientLogSubsystem)
      {
        v7 = *kSystemSoundClientLogSubsystem;
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v15 = "SSCoreHapticsPlayer.mm";
        v16 = 1024;
        v17 = 343;
        v18 = 2048;
        v19 = self;
        _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d playOptions contain haptic pattern identical to the one stored in SSCoreHapticsPlayer %p. NOT recreating haptic player", buf, 0x1Cu);
      }

      goto LABEL_16;
    }

    hapticPlayer = self->_hapticPlayer;
    self->_hapticPlayer = 0;

    v13 = 0;
    [(SSCoreHapticsPlayer *)self createHapticPlayer:v6 error:&v13];
LABEL_16:

    v8 = 1;
    goto LABEL_17;
  }

LABEL_10:
  v8 = 0;
LABEL_17:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)getHapticDictionaryFromURL:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 path];
    v5 = [v4 pathExtension];
    if ([v5 isEqualToString:@"json"])
    {

      goto LABEL_5;
    }

    v6 = [v3 path];
    v7 = [v6 pathExtension];
    v8 = [v7 isEqualToString:@"ahap"];

    if (v8)
    {
LABEL_5:
      v9 = MEMORY[0x1E695DEF0];
      v10 = [v3 path];
      v11 = [v9 dataWithContentsOfFile:v10];

      if (kSystemSoundClientLogSubsystem)
      {
        v12 = *kSystemSoundClientLogSubsystem;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v23 = "SSCoreHapticsPlayer.mm";
        v24 = 1024;
        v25 = 307;
        _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating haptic dictionary from JSON or AHAP...", buf, 0x12u);
      }

LABEL_19:
      v21 = 0;
      v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v21];
      v13 = v21;
      if (v13)
      {
        if (kSystemSoundClientLogSubsystem)
        {
          v17 = *kSystemSoundClientLogSubsystem;
          if (!v17)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v18 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v23 = "SSCoreHapticsPlayer.mm";
          v24 = 1024;
          v25 = 310;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot create haptic dictionary. error: %@", buf, 0x1Cu);
        }
      }

LABEL_27:

      goto LABEL_28;
    }
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v13 = *kSystemSoundClientLogSubsystem;
    if (!v13)
    {
      v14 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "SSCoreHapticsPlayer.mm";
    v24 = 1024;
    v25 = 314;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Incoming ahapURL not a valid file path URL or file type not supported. Not creating haptic portion", buf, 0x12u);
  }

  v14 = 0;
LABEL_28:

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)doInit:(id)a3 haptic:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (kSystemSoundClientLogSubsystem)
  {
    v10 = *kSystemSoundClientLogSubsystem;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 absoluteString];
    *buf = 136315650;
    *&buf[4] = "SSCoreHapticsPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 232;
    *&buf[18] = 2112;
    *&buf[20] = v13;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating new system sound. Audio: %@", buf, 0x1Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3676;
  v48 = __Block_byref_object_dispose__3677;
  v49 = 0;
  self->_audioResourceID = 0;
  *&self->_shouldPlayAudioFinal = 16842752;
  v14 = [(SSCoreHapticsPlayer *)self setupDefaultEngineConfigBlock];
  v15 = objc_alloc(MEMORY[0x1E695F578]);
  v16 = (*&buf[8] + 40);
  obj = *(*&buf[8] + 40);
  v17 = [v15 initWithAudioSession:0 sessionIsShared:0 options:v14 error:&obj];
  objc_storeStrong(v16, obj);
  engine = self->_engine;
  self->_engine = v17;

  v19 = (*&buf[8] + 40);
  if (*(*&buf[8] + 40))
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v20 = *kSystemSoundClientLogSubsystem;
      if (!v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = *v19;
      *location = 136315650;
      *&location[4] = "SSCoreHapticsPlayer.mm";
      v43 = 1024;
      v44 = 248;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot initialize CHHapticEngine. error: %@", location, 0x1Cu);
    }

LABEL_21:
    if (a5)
    {
      v29 = *(*&buf[8] + 40);
LABEL_23:
      v26 = 0;
      *a5 = v29;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!self->_engine)
  {
    if (a5)
    {
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4898 userInfo:0];
      goto LABEL_23;
    }

LABEL_26:
    v26 = 0;
    goto LABEL_27;
  }

  v40 = 0;
  v21 = [(SSCoreHapticsPlayer *)self createAudioResource:v8 error:&v40];
  objc_storeStrong(v19, v40);
  self->_audioResourceID = v21;
  if (v21)
  {
    v22 = (*&buf[8] + 40);
    v39 = *(*&buf[8] + 40);
    v23 = [(SSCoreHapticsPlayer *)self createAudioPlayerAndReturnError:&v39];
    objc_storeStrong(v22, v39);
    if (v23)
    {
      [(CHHapticEngine *)self->_engine setFollowAudioRoute:1];
    }
  }

  v24 = (*&buf[8] + 40);
  v38 = *(*&buf[8] + 40);
  [(SSCoreHapticsPlayer *)self createHapticPlayer:v9 error:&v38];
  objc_storeStrong(v24, v38);
  objc_initWeak(location, self);
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __43__SSCoreHapticsPlayer_doInit_haptic_error___block_invoke;
  v35 = &unk_1E7ECEA90;
  objc_copyWeak(&v37, location);
  v36 = buf;
  [(CHHapticEngine *)self->_engine setResetHandler:&v32];
  objc_destroyWeak(&v37);
  objc_destroyWeak(location);
  v25 = [SSCoreHapticsInfo instance:v32];
  self->_ssid = [v25 generateNewSSIDForPlayer:self];

  v26 = self->_ssid != 0;
LABEL_27:

  _Block_object_dispose(buf, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

void __43__SSCoreHapticsPlayer_doInit_haptic_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (kSystemSoundClientLogSubsystem)
  {
    v3 = *kSystemSoundClientLogSubsystem;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "SSCoreHapticsPlayer.mm";
    v22 = 1024;
    v23 = 271;
    v24 = 2048;
    v25 = WeakRetained;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SSCoreHapticsPlayer %p: Lost connection with server. re-creating players", buf, 0x1Cu);
  }

LABEL_8:
  v5 = WeakRetained[1];
  WeakRetained[1] = 0;

  v6 = WeakRetained[9];
  v7 = WeakRetained[4];
  v8 = *(*(a1 + 32) + 8);
  obj = *(v8 + 40);
  [v6 unregisterAudioResource:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v9 = WeakRetained[3];
  v10 = *(*(a1 + 32) + 8);
  v18 = *(v10 + 40);
  v11 = [WeakRetained createAudioResource:v9 error:&v18];
  objc_storeStrong((v10 + 40), v18);
  WeakRetained[4] = v11;
  if (v11)
  {
    v12 = *(*(a1 + 32) + 8);
    v17 = *(v12 + 40);
    [WeakRetained createAudioPlayerAndReturnError:&v17];
    objc_storeStrong((v12 + 40), v17);
  }

  v13 = WeakRetained[5];
  v14 = *(*(a1 + 32) + 8);
  v16 = *(v14 + 40);
  [WeakRetained createHapticPlayer:v13 error:&v16];
  objc_storeStrong((v14 + 40), v16);

  v15 = *MEMORY[0x1E69E9840];
}

- (id)setupDefaultEngineConfigBlock
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695F550];
  v3 = *MEMORY[0x1E695F4A0];
  v9[0] = *MEMORY[0x1E695F498];
  v9[1] = v3;
  v10[0] = v2;
  v10[1] = v2;
  v4 = *MEMORY[0x1E695F4A8];
  v9[2] = *MEMORY[0x1E695F4B8];
  v9[3] = v4;
  v5 = *MEMORY[0x1E695F4F0];
  v10[2] = *MEMORY[0x1E695F558];
  v10[3] = v5;
  v9[4] = @"UsageCategory";
  v10[4] = @"SystemSound";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)createHapticPlayer:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      hapticPatternDict = *kSystemSoundClientLogSubsystem;
      if (!hapticPatternDict)
      {
        goto LABEL_30;
      }
    }

    else
    {
      hapticPatternDict = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&hapticPatternDict->super, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315394;
      v26 = "SSCoreHapticsPlayer.mm";
      v27 = 1024;
      v28 = 185;
      _os_log_impl(&dword_1B9A08000, &hapticPatternDict->super, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No haptic dictionary passed in", &v25, 0x12u);
    }

    goto LABEL_29;
  }

  v8 = [v6 objectForKey:*MEMORY[0x1E695F540]];

  if (!v8)
  {
    v13 = [(CHHapticEngine *)self->_engine createAdvancedPlayerWithVibePatternDictionary:v7 error:a4];
    hapticPlayer = self->_hapticPlayer;
    self->_hapticPlayer = v13;

    goto LABEL_27;
  }

  v9 = [objc_alloc(MEMORY[0x1E695F598]) initWithDictionary:v7 error:a4];
  v10 = v9;
  if (!*a4)
  {
    [v9 duration];
    self->_hapticPatternDuration = v15;
    if (kSystemSoundClientLogSubsystem)
    {
      v16 = *kSystemSoundClientLogSubsystem;
      if (!v16)
      {
LABEL_24:
        v22 = [(CHHapticEngine *)self->_engine createAdvancedPlayerWithPattern:v10 error:a4];
        v11 = self->_hapticPlayer;
        self->_hapticPlayer = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      hapticPatternDuration = self->_hapticPatternDuration;
      v25 = 136315650;
      v26 = "SSCoreHapticsPlayer.mm";
      v27 = 1024;
      v28 = 196;
      v29 = 2048;
      v30 = hapticPatternDuration;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d haptic duration: %.2fs", &v25, 0x1Cu);
    }

    goto LABEL_24;
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v11 = *kSystemSoundClientLogSubsystem;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *a4;
    v25 = 136315650;
    v26 = "SSCoreHapticsPlayer.mm";
    v27 = 1024;
    v28 = 192;
    v29 = 2112;
    v30 = *&v19;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalid haptic pattern. Not creating haptic player and continue. error: %@", &v25, 0x1Cu);
  }

LABEL_25:

LABEL_26:
LABEL_27:
  if (!*a4)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7 copyItems:1];
    hapticPatternDict = self->_hapticPatternDict;
    self->_hapticPatternDict = v23;
LABEL_29:
  }

LABEL_30:

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)createAudioPlayerAndReturnError:(id *)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  [(CHHapticEngine *)self->_engine getDurationForResource:self->_audioResourceID];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E695F598]);
  v9 = objc_alloc(MEMORY[0x1E695F580]);
  v10 = [v9 initWithAudioResourceID:self->_audioResourceID parameters:MEMORY[0x1E695E0F0] relativeTime:0.0 duration:v7];
  v34[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v12 = [v8 initWithEvents:v11 parameters:MEMORY[0x1E695E0F0] error:a3];

  if (*a3)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v13 = *kSystemSoundClientLogSubsystem;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_24:

LABEL_25:
      v23 = 0;
      goto LABEL_26;
    }

    v17 = *a3;
    v28 = 136315650;
    v29 = "SSCoreHapticsPlayer.mm";
    v30 = 1024;
    v31 = 166;
    v32 = 2112;
    v33 = *&v17;
    v18 = "%25s:%-5d Invalid audio pattern. Not creating audio player and continue. error: %@";
LABEL_23:
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, v18, &v28, 0x1Cu);
    goto LABEL_24;
  }

  [v12 duration];
  self->_audioPatternDuration = v14;
  if (kSystemSoundClientLogSubsystem)
  {
    v15 = *kSystemSoundClientLogSubsystem;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    audioPatternDuration = self->_audioPatternDuration;
    v28 = 136315650;
    v29 = "SSCoreHapticsPlayer.mm";
    v30 = 1024;
    v31 = 172;
    v32 = 2048;
    v33 = audioPatternDuration;
    _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d audio duration: %.2fs", &v28, 0x1Cu);
  }

LABEL_15:
  v21 = [(CHHapticEngine *)self->_engine createAdvancedPlayerWithPattern:v12 error:a3];
  v22 = self->_audioPlayer;
  self->_audioPlayer = v21;

  if (*a3)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v13 = *kSystemSoundClientLogSubsystem;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v25 = *a3;
    v28 = 136315650;
    v29 = "SSCoreHapticsPlayer.mm";
    v30 = 1024;
    v31 = 175;
    v32 = 2112;
    v33 = *&v25;
    v18 = "%25s:%-5d Failed to create audio player and continue. error: %@";
    goto LABEL_23;
  }

  v23 = 1;
LABEL_26:

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

- (unint64_t)createAudioResource:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    engine = self->_engine;
    v27 = *MEMORY[0x1E695F488];
    v28[0] = MEMORY[0x1E695E110];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v9 = [(CHHapticEngine *)engine registerAudioResource:v6 options:v8 error:a4];

    if (!*a4)
    {
      v11 = [v6 copy];
      audioURL = self->_audioURL;
      self->_audioURL = v11;
LABEL_18:

      goto LABEL_19;
    }

    if (kSystemSoundClientLogSubsystem)
    {
      audioURL = *kSystemSoundClientLogSubsystem;
      if (!audioURL)
      {
        goto LABEL_8;
      }
    }

    else
    {
      audioURL = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&audioURL->super, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a4;
      v21 = 136315650;
      v22 = "SSCoreHapticsPlayer.mm";
      v23 = 1024;
      v24 = 148;
      v25 = 2112;
      v26 = v13;
      v14 = "%25s:%-5d Invalid audio resource. Not creating audio player and continue. error: %@";
      p_super = &audioURL->super;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 28;
LABEL_16:
      _os_log_impl(&dword_1B9A08000, p_super, v16, v14, &v21, v17);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (!kSystemSoundClientLogSubsystem)
  {
    audioURL = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
LABEL_14:
    if (os_log_type_enabled(&audioURL->super, OS_LOG_TYPE_DEBUG))
    {
      v21 = 136315394;
      v22 = "SSCoreHapticsPlayer.mm";
      v23 = 1024;
      v24 = 141;
      v14 = "%25s:%-5d audioURL not valid";
      p_super = &audioURL->super;
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 18;
      goto LABEL_16;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  audioURL = *kSystemSoundClientLogSubsystem;
  if (audioURL)
  {
    goto LABEL_14;
  }

LABEL_8:
  v9 = 0;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

@end