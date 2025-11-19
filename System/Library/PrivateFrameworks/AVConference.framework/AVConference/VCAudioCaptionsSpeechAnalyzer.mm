@interface VCAudioCaptionsSpeechAnalyzer
- (BOOL)analyzerSetupWithError:(id *)a3;
- (BOOL)configureAnalyzerOptions;
- (BOOL)enableLanguageDetector:(BOOL)a3;
- (BOOL)setUpCaptionsWithError:(id *)a3;
- (BOOL)shouldPushSamples;
- (BOOL)startCaptionsWithError:(id *)a3;
- (VCAudioCaptionsSpeechAnalyzer)initWithDelegate:(id)a3 isLocal:(BOOL)a4 taskIdentifier:(id)a5 reportingAgent:(opaqueRTCReporting *)a6;
- (void)analyzerTeardown;
- (void)configureAnalyzerOptions;
- (void)dealloc;
- (void)destroyAnalyzer;
- (void)destroyCaptions;
- (void)finishCaptions;
- (void)packageAndSendTranscriberResult:(id)a3 withTask:(id)a4 final:(BOOL)a5;
- (void)pushSamples:(char *)a3 numSamples:(int)a4 hostTime:(double)a5;
- (void)speechAnalyzer:(id)a3 didProduceSpeechDetectorResult:(id)a4;
- (void)speechAnalyzer:(id)a3 didProduceTranscriberResult:(id)a4;
- (void)speechAnalyzer:(id)a3 didStopSpeechDetectorWithError:(id)a4;
- (void)speechAnalyzer:(id)a3 didStopTranscriptionWithError:(id)a4;
- (void)speechAnalyzerDidProduceAllTranscriberResults:(id)a3;
- (void)stopCaptions;
- (void)updateCurrentTaskInfo;
@end

@implementation VCAudioCaptionsSpeechAnalyzer

- (VCAudioCaptionsSpeechAnalyzer)initWithDelegate:(id)a3 isLocal:(BOOL)a4 taskIdentifier:(id)a5 reportingAgent:(opaqueRTCReporting *)a6
{
  v8 = a4;
  v114 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechAnalyzer-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      *&buf[22] = 1024;
      *&buf[24] = 41;
      *&buf[28] = 2048;
      *&buf[30] = self;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechAnalyzer-init instance=%p", buf, 0x26u);
    }
  }

  v100.receiver = self;
  v100.super_class = VCAudioCaptionsSpeechAnalyzer;
  v13 = [(VCAudioCaptions *)&v100 initWithDelegate:a3 isLocal:v8 taskIdentifier:a5 reportingAgent:a6];
  v14 = v13;
  if (v13)
  {
    v13->super._frameworkType = 2;
    v15 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v14->super._frameworkAudioFormat = v15;
    v16 = objc_opt_class();
    v17 = &selRef_isLatencySensitiveModeEnabled;
    if (!v15)
    {
      [VCAudioCaptionsSpeechAnalyzer initWithDelegate:? isLocal:? taskIdentifier:? reportingAgent:?];
LABEL_69:
      if (objc_opt_class() == v14)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:];
          }
        }
      }

      else
      {
        v79 = v17[456];
        if (objc_opt_respondsToSelector())
        {
          v80 = [(VCAudioCaptionsSpeechAnalyzer *)v14 performSelector:v79];
        }

        else
        {
          v80 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v81 = VRTraceErrorLogLevelToCSTR();
          v82 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v81;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
            *&buf[22] = 1024;
            *&buf[24] = 73;
            *&buf[28] = 2112;
            *&buf[30] = v80;
            *&buf[38] = 2048;
            v102 = v14;
            _os_log_error_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VCAudioCaptionsSpeechAnalyzer-init FAILED", buf, 0x30u);
          }
        }
      }

      [(VCAudioCaptionsSpeechAnalyzer *)v14 dealloc];
      return 0;
    }

    if (v16 == v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v86 = *[(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
          v84 = FourccToCStr([(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][8]);
          v21 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][16];
          v22 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][20];
          v23 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][24];
          v24 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][28];
          v25 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][32];
          *buf = 136317442;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 56;
          *&buf[28] = 2048;
          *&buf[30] = v86;
          *&buf[38] = 2080;
          v102 = v84;
          v103 = 1024;
          *v104 = v21;
          *&v104[4] = 1024;
          *&v104[6] = v22;
          v17 = &selRef_isLatencySensitiveModeEnabled;
          LOWORD(v105) = 1024;
          *(&v105 + 2) = v23;
          HIWORD(v105) = 1024;
          *v106 = v24;
          *&v106[4] = 1024;
          *v107 = v25;
          v26 = " [%s] %s:%d Analyzer preferred format: samplerate=%f formatid=%s bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
          v27 = v20;
          v28 = 78;
LABEL_16:
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCAudioCaptionsSpeechAnalyzer *)v14 performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v85 = *[(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
          v83 = FourccToCStr([(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][8]);
          v31 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][16];
          v32 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][20];
          v33 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][24];
          v34 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][28];
          v35 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][32];
          *buf = 136317954;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 56;
          *&buf[28] = 2112;
          *&buf[30] = v18;
          *&buf[38] = 2048;
          v102 = v14;
          v103 = 2048;
          *v104 = v85;
          *&v104[8] = 2080;
          v105 = v83;
          *v106 = 1024;
          *&v106[2] = v31;
          *v107 = 1024;
          *&v107[2] = v32;
          v17 = &selRef_isLatencySensitiveModeEnabled;
          v108 = 1024;
          v109 = v33;
          v110 = 1024;
          v111 = v34;
          v112 = 1024;
          v113 = v35;
          v26 = " [%s] %s:%d %@(%p) Analyzer preferred format: samplerate=%f formatid=%s bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
          v27 = v30;
          v28 = 98;
          goto LABEL_16;
        }
      }
    }

    v36 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
    v99 = *(v36 + 32);
    v97 = *v36;
    v98 = *(v36 + 16);
    captionsFormat = v14->super._captionsFormat;
    *buf = v97;
    *&buf[16] = v98;
    *&buf[32] = v99;
    [(ASBDWrapper *)captionsFormat setAsbd:buf];
    if (objc_opt_class() == v14)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_52;
      }

      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v42 = v14->super._captionsFormat;
      if (v42)
      {
        [(ASBDWrapper *)v42 asbd];
        v43 = v96;
      }

      else
      {
        v43 = 0;
      }

      v58 = v14->super._captionsFormat;
      if (v58)
      {
        [(ASBDWrapper *)v58 asbd];
        v59 = v95;
      }

      else
      {
        v59 = 0;
      }

      v60 = v14->super._captionsFormat;
      if (v60)
      {
        [(ASBDWrapper *)v60 asbd];
        v61 = v94;
      }

      else
      {
        v61 = 0.0;
      }

      v62 = v14->super._captionsFormat;
      if (v62)
      {
        [(ASBDWrapper *)v62 asbd];
        LODWORD(v63) = v93;
        v64 = v63;
      }

      else
      {
        v64 = 0.0;
      }

      *buf = 136316418;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      *&buf[22] = 1024;
      *&buf[24] = 60;
      *&buf[28] = 1024;
      *&buf[30] = v43;
      *&buf[34] = 1024;
      *&buf[36] = v59;
      LOWORD(v102) = 1024;
      *(&v102 + 2) = (v61 * v64 * 20.0) / 1000;
      v55 = " [%s] %s:%d Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
      v56 = v41;
      v57 = 46;
    }

    else
    {
      v38 = v17[456];
      if (objc_opt_respondsToSelector())
      {
        v39 = [(VCAudioCaptionsSpeechAnalyzer *)v14 performSelector:v38];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7 || (v44 = VRTraceErrorLogLevelToCSTR(), v45 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_52:
        v65 = *MEMORY[0x1E695E480];
        v66 = v14->super._captionsFormat;
        if (v66)
        {
          [(ASBDWrapper *)v66 asbd];
          v67 = v88;
        }

        else
        {
          v67 = 0.0;
        }

        v68 = v14->super._captionsFormat;
        if (v68)
        {
          [(ASBDWrapper *)v68 asbd];
          LODWORD(v69) = v87;
          v70 = v69;
        }

        else
        {
          v70 = 0.0;
        }

        v71 = VCAudioBufferAllocatorCreate(v65, (v67 * v70 * 20.0 / 1000.0), 2u);
        v14->super._avAudioPCMAudioBufferAllocator = v71;
        if (v71)
        {
          CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
          v73 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAudioCaptions.serialQueue", 0, CustomRootQueue);
          v74 = objc_alloc_init(MEMORY[0x1E696ADC8]);
          v14->_operationQueue = v74;
          if (v74)
          {
            [(NSOperationQueue *)v74 setUnderlyingQueue:v73];
            if (v73)
            {
              dispatch_release(v73);
            }

            MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechAnalyzer-init Finished");
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v75 = VRTraceErrorLogLevelToCSTR();
              v76 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                frameworkType = v14->super._frameworkType;
                *buf = 136316162;
                *&buf[4] = v75;
                *&buf[12] = 2080;
                *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
                *&buf[22] = 1024;
                *&buf[24] = 79;
                *&buf[28] = 2048;
                *&buf[30] = v14;
                *&buf[38] = 1024;
                LODWORD(v102) = frameworkType;
                _os_log_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechAnalyzer-init Finished instance=%p Succeeded with frameworkType=%d", buf, 0x2Cu);
              }
            }

            return v14;
          }

          [VCAudioCaptionsSpeechAnalyzer initWithDelegate:v73 isLocal:v14 taskIdentifier:? reportingAgent:?];
        }

        else
        {
          [VCAudioCaptionsSpeechAnalyzer initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
        }

        goto LABEL_69;
      }

      v46 = v14->super._captionsFormat;
      if (v46)
      {
        [(ASBDWrapper *)v46 asbd];
        v47 = v92;
      }

      else
      {
        v47 = 0;
      }

      v48 = v14->super._captionsFormat;
      if (v48)
      {
        [(ASBDWrapper *)v48 asbd];
        v49 = v91;
      }

      else
      {
        v49 = 0;
      }

      v50 = v14->super._captionsFormat;
      if (v50)
      {
        [(ASBDWrapper *)v50 asbd];
        v51 = v90;
      }

      else
      {
        v51 = 0.0;
      }

      v52 = v14->super._captionsFormat;
      if (v52)
      {
        [(ASBDWrapper *)v52 asbd];
        LODWORD(v53) = v89;
        v54 = v53;
      }

      else
      {
        v54 = 0.0;
      }

      *buf = 136316930;
      *&buf[4] = v44;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      *&buf[22] = 1024;
      *&buf[24] = 60;
      *&buf[28] = 2112;
      *&buf[30] = v39;
      *&buf[38] = 2048;
      v102 = v14;
      v103 = 1024;
      *v104 = v47;
      *&v104[4] = 1024;
      *&v104[6] = v49;
      LOWORD(v105) = 1024;
      *(&v105 + 2) = (v51 * v54 * 20.0) / 1000;
      v55 = " [%s] %s:%d %@(%p) Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
      v56 = v45;
      v57 = 66;
    }

    _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
    goto LABEL_52;
  }

  return v14;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCAudioCaptionsSpeechAnalyzer dealloc]";
        v16 = 1024;
        v17 = 91;
        v6 = " [%s] %s:%d VCAudioCaptionsSpeechAnalyzer-dealloc";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCAudioCaptionsSpeechAnalyzer dealloc]";
        v16 = 1024;
        v17 = 91;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) VCAudioCaptionsSpeechAnalyzer-dealloc";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCAudioCaptionsSpeechAnalyzer;
  [(VCAudioCaptions *)&v11 dealloc];
}

- (BOOL)configureAnalyzerOptions
{
  v3 = [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")];
  self->_analyzerOptions = v3;
  if (v3)
  {

    transcriberOptions = [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")];
    self->_transcriberOptions = transcriberOptions;
    if (transcriberOptions)
    {
      locale = self->super._locale;
      if (!locale)
      {
        locale = [MEMORY[0x1E695DF58] currentLocale];
        transcriberOptions = self->_transcriberOptions;
      }

      [(SFSpeechAnalyzerTranscriberOptions *)transcriberOptions setLocale:locale];
      [(SFSpeechAnalyzerTranscriberOptions *)self->_transcriberOptions setTaskHint:[VCAudioCaptions speechRecognitionTaskHintFromCaptionsTaskHint:self->super._taskHint]];
      if (self->super._explicitLanguageFilterEnabled)
      {
        v6 = 20;
      }

      else
      {
        v6 = 4;
      }

      [(SFSpeechAnalyzerTranscriberOptions *)self->_transcriberOptions setTranscriptionOptions:v6];
      if (self->super._languageDetectorEnabled)
      {
        self->super._languageDetectorEnabled = [(VCAudioCaptionsSpeechAnalyzer *)self enableLanguageDetector:1];
      }

      if (self->super._enableSpeechDetector && (self->_speechDetectorOptions, v7 = [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")], (self->_speechDetectorOptions = v7) == 0))
      {
        [VCAudioCaptionsSpeechAnalyzer configureAnalyzerOptions];
        return v9;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      [VCAudioCaptionsSpeechAnalyzer configureAnalyzerOptions];
      return v10;
    }
  }

  else
  {
    [VCAudioCaptionsSpeechAnalyzer configureAnalyzerOptions];
    return v11;
  }
}

- (void)destroyAnalyzer
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = 136316162;
    v13 = v9;
    v14 = 2080;
    v15 = "[VCAudioCaptionsSpeechAnalyzer destroyAnalyzer]";
    v16 = 1024;
    v17 = 138;
    v18 = 2112;
    v19 = v3;
    v20 = 2048;
    v21 = self;
    v6 = " [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v4;
      v14 = 2080;
      v15 = "[VCAudioCaptionsSpeechAnalyzer destroyAnalyzer]";
      v16 = 1024;
      v17 = 138;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

LABEL_12:

  self->super._currentTaskInfo = 0;
  analyzer = self->_analyzer;
  if (analyzer)
  {

    self->_analyzer = 0;
  }

  dispatch_semaphore_signal(self->super._teardownSemaphore);
}

- (void)analyzerTeardown
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136315650;
        *&v15[4] = v4;
        *&v15[12] = 2080;
        *&v15[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerTeardown]";
        *&v15[22] = 1024;
        LODWORD(v16) = 149;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v15, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316162;
        *&v15[4] = v9;
        *&v15[12] = 2080;
        *&v15[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerTeardown]";
        *&v15[22] = 1024;
        LODWORD(v16) = 149;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v3;
        HIWORD(v16) = 2048;
        v17 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  analyzerOptions = self->_analyzerOptions;
  if (analyzerOptions)
  {

    self->_analyzerOptions = 0;
  }

  transcriberOptions = self->_transcriberOptions;
  if (transcriberOptions)
  {

    self->_transcriberOptions = 0;
  }

  languageDetectorOptions = self->_languageDetectorOptions;
  if (languageDetectorOptions)
  {

    self->_languageDetectorOptions = 0;
  }

  speechDetectorOptions = self->_speechDetectorOptions;
  if (speechDetectorOptions)
  {

    self->_speechDetectorOptions = 0;
  }

  [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper];
}

void __49__VCAudioCaptionsSpeechAnalyzer_analyzerTeardown__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "[VCAudioCaptionsSpeechAnalyzer analyzerTeardown]_block_invoke";
      v6 = 1024;
      v7 = 167;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Speech model released", &v2, 0x1Cu);
    }
  }
}

- (BOOL)analyzerSetupWithError:(id *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerSetupWithError:]";
        *&buf[22] = 1024;
        LODWORD(v42) = 172;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerSetupWithError:]";
        *&buf[22] = 1024;
        LODWORD(v42) = 172;
        WORD2(v42) = 2112;
        *(&v42 + 6) = v5;
        HIWORD(v42) = 2048;
        v43 = self;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  if (self->_analyzer)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136315650;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerSetupWithError:]";
      *&buf[22] = 1024;
      LODWORD(v42) = 177;
      v23 = " [%s] %s:%d The speech analyzer already exists!!";
      v24 = v22;
      v25 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136316162;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerSetupWithError:]";
      *&buf[22] = 1024;
      LODWORD(v42) = 177;
      WORD2(v42) = 2112;
      *(&v42 + 6) = v13;
      HIWORD(v42) = 2048;
      v43 = self;
      v23 = " [%s] %s:%d %@(%p) The speech analyzer already exists!!";
      v24 = v27;
      v25 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    return 1;
  }

  dispatch_semaphore_wait(self->super._teardownSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ([(VCAudioCaptions *)self updateAudioConverterForStreamDescription:[(AVAudioFormat *)self->super._frameworkAudioFormat streamDescription]])
  {
    taskIdentifier = self->super._taskIdentifier;
    frameworkAudioFormat = self->super._frameworkAudioFormat;
    operationQueue = self->_operationQueue;
    transcriberOptions = self->_transcriberOptions;
    analyzerOptions = self->_analyzerOptions;
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableSpeechFormatForNewLines", self->super._formatForNewLinesEnabled);
    if (self->super._languageDetectorEnabled)
    {
      languageDetectorOptions = self->_languageDetectorOptions;
      v20 = self;
    }

    else
    {
      v20 = 0;
      languageDetectorOptions = 0;
    }

    v39 = a3;
    if (self->super._enableSpeechDetector)
    {
      speechDetectorOptions = self->_speechDetectorOptions;
      v29 = self;
    }

    else
    {
      v29 = 0;
      speechDetectorOptions = 0;
    }

    v30 = +[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper];
    *buf = taskIdentifier;
    *&buf[8] = frameworkAudioFormat;
    *&buf[16] = self;
    *&v42 = 0;
    *(&v42 + 1) = v20;
    v43 = v29;
    *&v44 = operationQueue;
    *(&v44 + 1) = transcriberOptions;
    v45 = analyzerOptions;
    v46 = languageDetectorOptions;
    v47 = speechDetectorOptions;
    v48 = 0;
    memset(v49, 170, sizeof(v49));
    v50 = 0;
    v51 = BoolValueForKey;
    memset(v52, 170, sizeof(v52));
    v31 = [v30 newSFSpeechAnalyzerWithConfig:buf didChangeVolatileRange:0];
    self->_analyzer = v31;
    if (v31)
    {
      [(VCAudioCaptionsSpeechAnalyzer *)self updateCurrentTaskInfo];
      return 1;
    }

    v33 = @"SpeechAnalyzer _analyzer failed to init";
    v34 = 3;
    a3 = v39;
  }

  else
  {
    v33 = @"Failed to create the converter. Captions will not be available";
    v34 = 4;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechAnalyzer analyzerSetupWithError:];
        if (!a3)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v35 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v35 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechAnalyzer analyzerSetupWithError:]";
        *&buf[22] = 1024;
        LODWORD(v42) = 216;
        WORD2(v42) = 2112;
        *(&v42 + 6) = v35;
        HIWORD(v42) = 2048;
        v43 = self;
        LOWORD(v44) = 2112;
        *(&v44 + 2) = v33;
        _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
        if (!a3)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }
  }

  if (a3)
  {
LABEL_47:
    *a3 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 7, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechAnalyzer.m", 218], v34);
  }

LABEL_48:
  analyzer = self->_analyzer;
  if (analyzer)
  {

    self->_analyzer = 0;
  }

  dispatch_semaphore_signal(self->super._teardownSemaphore);
  return 0;
}

- (void)updateCurrentTaskInfo
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        v5 = OS_LOG_TYPE_DEFAULT;
        v6 = 28;
LABEL_10:
        _os_log_impl(v1, v2, v5, v3, v4, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)packageAndSendTranscriberResult:(id)a3 withTask:(id)a4 final:(BOOL)a5
{
  v5 = a5;
  v51 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._captionsQueue);
  if ([objc_msgSend(a3 "segments")] && -[VCAudioCaptions delegate](self, "delegate"))
  {
    v9 = [(VCAudioCaptions *)self taskInfoForTask:a4];
    if (!v9)
    {
      [VCAudioCaptionsSpeechAnalyzer packageAndSendTranscriberResult:? withTask:? final:?];
      goto LABEL_29;
    }

    v10 = [[VCCaptionsTranscription alloc] initWithSTTranscriberMultisegmentResult:a3 taskInfo:v9 isLocal:self->super._isLocal isFinal:v5];
    if (v10)
    {
      v11 = v10;
      [(VCAudioCaptions *)self sendTranscriptionResult:v10 taskInfo:v9];
    }

    v12 = !self->super._enableSpeechDetector || !v5;
    if (!v12 && self->_analyzer == a4)
    {
      [(NSMutableArray *)self->super._captionTasks removeObject:v9];
      ++self->super._captionTaskCount;
      [(VCAudioCaptions *)self updateCaptionsUtteranceDuration];
      [(VCAudioCaptionsSpeechAnalyzer *)self updateCurrentTaskInfo];
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_29;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          analyzer = self->_analyzer;
          currentTaskInfo = self->super._currentTaskInfo;
          v35 = 136316930;
          v36 = v15;
          v37 = 2080;
          v38 = "[VCAudioCaptionsSpeechAnalyzer packageAndSendTranscriberResult:withTask:final:]";
          v39 = 1024;
          v40 = 276;
          v41 = 1024;
          *v42 = v13;
          *&v42[4] = 2112;
          *&v42[6] = a4;
          *&v42[14] = 2112;
          *&v42[16] = analyzer;
          v43 = 2112;
          v44 = v9;
          v45 = 2112;
          v46 = currentTaskInfo;
          v20 = " [%s] %s:%d didUpdateTaskInfo=%{BOOL}d, task=%@, analyzer=%@, fetchedInfo=%@, newInfo=%@";
          v21 = v16;
          v22 = 74;
LABEL_24:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, &v35, v22);
        }

LABEL_29:

        return;
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v33 = self->_analyzer;
      v34 = self->super._currentTaskInfo;
      v35 = 136316930;
      v36 = v15;
      v37 = 2080;
      v38 = "[VCAudioCaptionsSpeechAnalyzer packageAndSendTranscriberResult:withTask:final:]";
      v39 = 1024;
      v40 = 276;
      v41 = 1024;
      *v42 = v13;
      *&v42[4] = 2112;
      *&v42[6] = a4;
      *&v42[14] = 2112;
      *&v42[16] = v33;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = v34;
      v30 = " [%s] %s:%d didUpdateTaskInfo=%{BOOL}d, task=%@, analyzer=%@, fetchedInfo=%@, newInfo=%@";
      v31 = v16;
      v32 = 74;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_29;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v25 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = self->_analyzer;
          v27 = self->super._currentTaskInfo;
          v35 = 136317442;
          v36 = v23;
          v37 = 2080;
          v38 = "[VCAudioCaptionsSpeechAnalyzer packageAndSendTranscriberResult:withTask:final:]";
          v39 = 1024;
          v40 = 276;
          v41 = 2112;
          *v42 = v14;
          *&v42[8] = 2048;
          *&v42[10] = self;
          *&v42[18] = 1024;
          *&v42[20] = v13;
          v43 = 2112;
          v44 = a4;
          v45 = 2112;
          v46 = v26;
          v47 = 2112;
          v48 = v9;
          v49 = 2112;
          v50 = v27;
          v20 = " [%s] %s:%d %@(%p) didUpdateTaskInfo=%{BOOL}d, task=%@, analyzer=%@, fetchedInfo=%@, newInfo=%@";
          v21 = v24;
          v22 = 94;
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v28 = self->_analyzer;
      v29 = self->super._currentTaskInfo;
      v35 = 136317442;
      v36 = v23;
      v37 = 2080;
      v38 = "[VCAudioCaptionsSpeechAnalyzer packageAndSendTranscriberResult:withTask:final:]";
      v39 = 1024;
      v40 = 276;
      v41 = 2112;
      *v42 = v14;
      *&v42[8] = 2048;
      *&v42[10] = self;
      *&v42[18] = 1024;
      *&v42[20] = v13;
      v43 = 2112;
      v44 = a4;
      v45 = 2112;
      v46 = v28;
      v47 = 2112;
      v48 = v9;
      v49 = 2112;
      v50 = v29;
      v30 = " [%s] %s:%d %@(%p) didUpdateTaskInfo=%{BOOL}d, task=%@, analyzer=%@, fetchedInfo=%@, newInfo=%@";
      v31 = v24;
      v32 = 94;
    }

    _os_log_debug_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEBUG, v30, &v35, v32);
    goto LABEL_29;
  }
}

- (BOOL)enableLanguageDetector:(BOOL)a3
{
  if (!a3)
  {
    return 1;
  }

  [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")];

  self->super._languageDetectorEnabled = 0;
  languageDetectorReportingFrequency = self->super._languageDetectorReportingFrequency;
  v5 = +[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper];
  if (languageDetectorReportingFrequency)
  {
    v6 = [v5 newSFSpeechAnalyzerLanguageDetectorOptionsWithResultReportingFrequency:{-[NSNumber unsignedIntegerValue](self->super._languageDetectorReportingFrequency, "unsignedIntegerValue")}];
  }

  else
  {
    v6 = [v5 newSFSpeechAnalyzerLanguageDetectorOptions];
  }

  self->_languageDetectorOptions = v6;
  v7 = 1;
  [(SFSpeechAnalyzerLanguageDetectorOptions *)v6 setUseVAD:1];
  if (!self->_languageDetectorOptions)
  {
    [VCAudioCaptionsSpeechAnalyzer enableLanguageDetector:];
    return v9;
  }

  return v7;
}

- (BOOL)startCaptionsWithError:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = v6;
        *&v14[12] = 2080;
        *&v14[14] = "[VCAudioCaptionsSpeechAnalyzer startCaptionsWithError:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 306;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v14, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316162;
        *&v14[4] = v11;
        *&v14[12] = 2080;
        *&v14[14] = "[VCAudioCaptionsSpeechAnalyzer startCaptionsWithError:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 306;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v5;
        HIWORD(v15) = 2048;
        v16 = self;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  return [(VCAudioCaptionsSpeechAnalyzer *)self analyzerSetupWithError:a3, *v14, *&v14[16], v15, v16];
}

- (void)destroyCaptions
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechAnalyzer destroyCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 311;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechAnalyzer destroyCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 311;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        v13 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCAudioCaptionsSpeechAnalyzer *)self destroyAnalyzer:*v11];
}

- (BOOL)setUpCaptionsWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v16 = v11;
    v17 = 2080;
    v18 = "[VCAudioCaptionsSpeechAnalyzer setUpCaptionsWithError:]";
    v19 = 1024;
    v20 = 316;
    v21 = 2112;
    v22 = v5;
    v23 = 2048;
    v24 = self;
    v8 = " [%s] %s:%d %@(%p) ";
    v9 = v12;
    v10 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechAnalyzer setUpCaptionsWithError:]";
      v19 = 1024;
      v20 = 316;
      v8 = " [%s] %s:%d ";
      v9 = v7;
      v10 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  v13 = [(VCAudioCaptionsSpeechAnalyzer *)self configureAnalyzerOptions];
  if (v13)
  {
    self->super._recognizerState = 1;
  }

  else if (a3)
  {
    *a3 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechAnalyzer.m", 322], 9);
  }

  return v13;
}

- (BOOL)shouldPushSamples
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->super._recognizerState == 2 && self->_analyzer)
  {
    return 1;
  }

  HIDWORD(v4) = -1030792151 * self->super._logMessageCounter;
  LODWORD(v4) = HIDWORD(v4);
  if ((v4 >> 1) <= 0x51EB851)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_5;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      recognizerState = self->super._recognizerState;
      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechAnalyzer shouldPushSamples]";
      v19 = 1024;
      v20 = 330;
      v21 = 1024;
      LODWORD(v22) = recognizerState;
      v9 = " [%s] %s:%d Will not push samples; Recognizer state=%d";
      v10 = v7;
      v11 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_5;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v14 = self->super._recognizerState;
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechAnalyzer shouldPushSamples]";
      v19 = 1024;
      v20 = 330;
      v21 = 2112;
      v22 = v5;
      v23 = 2048;
      v24 = self;
      v25 = 1024;
      v26 = v14;
      v9 = " [%s] %s:%d %@(%p) Will not push samples; Recognizer state=%d";
      v10 = v13;
      v11 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
  }

LABEL_5:
  result = 0;
  ++self->super._logMessageCounter;
  return result;
}

- (void)pushSamples:(char *)a3 numSamples:(int)a4 hostTime:(double)a5
{
  v23 = *MEMORY[0x1E69E9840];
  VCCaptionTaskInfo_HostTime(self->super._currentTaskInfo);
  v8 = VCAudioCaptions_ConvertSamplesToPCM(self, a3, a4);
  self->super._isAudioConverterActive = 1;
  v12 = v8;
  if (v8)
  {
    [(VCAudioCaptions *)self recordAudioSampleMetrics];
    [(SFSpeechAnalyzer *)self->_analyzer addAudio:v12];
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechAnalyzer pushSamples:numSamples:hostTime:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechAnalyzer pushSamples:numSamples:hostTime:]";
        v17 = 1024;
        v18 = 361;
        v19 = 2112;
        v20 = v9;
        v21 = 2048;
        v22 = self;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Sample PCM buffer is nil", buf, 0x30u);
      }
    }
  }
}

- (void)stopCaptions
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    v15 = v4;
    v16 = 2080;
    v17 = "[VCAudioCaptionsSpeechAnalyzer stopCaptions]";
    v18 = 1024;
    v19 = 366;
    v6 = " [%s] %s:%d ";
    v7 = v5;
    v8 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCAudioCaptionsSpeechAnalyzer stopCaptions]";
      v18 = 1024;
      v19 = 366;
      v20 = 2112;
      v21 = v3;
      v22 = 2048;
      v23 = self;
      v6 = " [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  analyzer = self->_analyzer;
  if (analyzer)
  {
    [(SFSpeechAnalyzer *)analyzer finishAudio];
    v12 = self->_analyzer;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__VCAudioCaptionsSpeechAnalyzer_stopCaptions__block_invoke;
    v13[3] = &unk_1E85F7538;
    v13[4] = self;
    [(SFSpeechAnalyzer *)v12 finalizeAndFinishThroughEndOfInputWithCompletion:v13];
  }
}

void __45__VCAudioCaptionsSpeechAnalyzer_stopCaptions__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __45__VCAudioCaptionsSpeechAnalyzer_stopCaptions__block_invoke_cold_1(v5, a2);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 32);
          v9 = 136316418;
          v10 = v6;
          v11 = 2080;
          v12 = "[VCAudioCaptionsSpeechAnalyzer stopCaptions]_block_invoke";
          v13 = 1024;
          v14 = 374;
          v15 = 2112;
          v16 = v4;
          v17 = 2048;
          v18 = v8;
          v19 = 2112;
          v20 = [a2 localizedDescription];
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Finishing analyzing failed with the error=%@", &v9, 0x3Au);
        }
      }
    }
  }

  ++*(*(a1 + 32) + 416);
}

- (void)finishCaptions
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechAnalyzer finishCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 381;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechAnalyzer finishCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 381;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        v13 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCAudioCaptionsSpeechAnalyzer *)self analyzerTeardown:*v11];
}

- (void)speechAnalyzer:(id)a3 didProduceTranscriberResult:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = [a4 contextualizedTranscriberMultisegmentResult];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 earResultType] == 4 || objc_msgSend(v7, "earResultType") == 3 || objc_msgSend(v7, "earResultType") == 1;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_22;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [objc_msgSend(v7 "segments")];
          [v7 recognitionAudioRange];
          time = v50;
          Seconds = CMTimeGetSeconds(&time);
          v15 = [v7 earResultType];
          LODWORD(time.value) = 136316930;
          *(&time.value + 4) = v10;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
          HIWORD(time.epoch) = 1024;
          v52 = 394;
          v53 = 2112;
          v54 = a3;
          v55 = 1024;
          *v56 = v8;
          *&v56[4] = 1024;
          *&v56[6] = v13;
          *v57 = 2048;
          *&v57[2] = Seconds;
          *v58 = 2048;
          *&v58[2] = v15;
          v16 = " [%s] %s:%d speechAnalyzer=%@ didProduceTranscriberResult isFinal=%d, count=%d, duration=%f, earResultType=%lu";
          v17 = v11;
          v18 = 70;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &time, v18);
        }

LABEL_22:
        captionsQueue = self->super._captionsQueue;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __76__VCAudioCaptionsSpeechAnalyzer_speechAnalyzer_didProduceTranscriberResult___block_invoke;
        v45[3] = &unk_1E85F5E38;
        v45[4] = self;
        v45[5] = v7;
        v45[6] = a3;
        v46 = v8;
        dispatch_async(captionsQueue, v45);
        return;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v32 = [objc_msgSend(v7 "segments")];
      [v7 recognitionAudioRange];
      time = v49;
      v33 = CMTimeGetSeconds(&time);
      v34 = [v7 earResultType];
      LODWORD(time.value) = 136316930;
      *(&time.value + 4) = v10;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
      HIWORD(time.epoch) = 1024;
      v52 = 394;
      v53 = 2112;
      v54 = a3;
      v55 = 1024;
      *v56 = v8;
      *&v56[4] = 1024;
      *&v56[6] = v32;
      *v57 = 2048;
      *&v57[2] = v33;
      *v58 = 2048;
      *&v58[2] = v34;
      v28 = " [%s] %s:%d speechAnalyzer=%@ didProduceTranscriberResult isFinal=%d, count=%d, duration=%f, earResultType=%lu";
      v29 = v11;
      v30 = 70;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_22;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v21 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [objc_msgSend(v7 "segments")];
          [v7 recognitionAudioRange];
          time = v48;
          v23 = CMTimeGetSeconds(&time);
          v24 = [v7 earResultType];
          LODWORD(time.value) = 136317442;
          *(&time.value + 4) = v19;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
          HIWORD(time.epoch) = 1024;
          v52 = 394;
          v53 = 2112;
          v54 = v9;
          v55 = 2048;
          *v56 = self;
          *&v56[8] = 2112;
          *v57 = a3;
          *&v57[8] = 1024;
          *v58 = v8;
          *&v58[4] = 1024;
          *&v58[6] = v22;
          v59 = 2048;
          v60 = v23;
          v61 = 2048;
          v62 = v24;
          v16 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ didProduceTranscriberResult isFinal=%d, count=%d, duration=%f, earResultType=%lu";
          v17 = v20;
          v18 = 90;
          goto LABEL_18;
        }

        goto LABEL_22;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v25 = [objc_msgSend(v7 "segments")];
      [v7 recognitionAudioRange];
      time = v47;
      v26 = CMTimeGetSeconds(&time);
      v27 = [v7 earResultType];
      LODWORD(time.value) = 136317442;
      *(&time.value + 4) = v19;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
      HIWORD(time.epoch) = 1024;
      v52 = 394;
      v53 = 2112;
      v54 = v9;
      v55 = 2048;
      *v56 = self;
      *&v56[8] = 2112;
      *v57 = a3;
      *&v57[8] = 1024;
      *v58 = v8;
      *&v58[4] = 1024;
      *&v58[6] = v25;
      v59 = 2048;
      v60 = v26;
      v61 = 2048;
      v62 = v27;
      v28 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ didProduceTranscriberResult isFinal=%d, count=%d, duration=%f, earResultType=%lu";
      v29 = v20;
      v30 = 90;
    }

    _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, v28, &time, v30);
    goto LABEL_22;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      v38 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time.value) = 136315906;
          *(&time.value + 4) = v36;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
          HIWORD(time.epoch) = 1024;
          v52 = 390;
          v53 = 2112;
          v54 = a3;
          v39 = " [%s] %s:%d speechAnalyzer=%@ nil contextualized transcriber result";
          v40 = v37;
          v41 = 38;
LABEL_38:
          _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, v39, &time, v41);
        }
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v35 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v35 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time.value) = 136316418;
          *(&time.value + 4) = v42;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
          HIWORD(time.epoch) = 1024;
          v52 = 390;
          v53 = 2112;
          v54 = v35;
          v55 = 2048;
          *v56 = self;
          *&v56[8] = 2112;
          *v57 = a3;
          v39 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ nil contextualized transcriber result";
          v40 = v43;
          v41 = 58;
          goto LABEL_38;
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(time.value) = 136316418;
        *(&time.value + 4) = v42;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
        HIWORD(time.epoch) = 1024;
        v52 = 390;
        v53 = 2112;
        v54 = v35;
        v55 = 2048;
        *v56 = self;
        *&v56[8] = 2112;
        *v57 = a3;
        _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) speechAnalyzer=%@ nil contextualized transcriber result", &time, 0x3Au);
      }
    }
  }
}

- (void)speechAnalyzer:(id)a3 didStopTranscriptionWithError:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v21 = v8;
        v22 = 2080;
        v23 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didStopTranscriptionWithError:]";
        v24 = 1024;
        v25 = 405;
        v26 = 2112;
        v27 = a3;
        v28 = 2112;
        v29 = [a4 localizedDescription];
        v10 = " [%s] %s:%d speechAnalyzer=%@ didStopTranscriptionWithError=%@";
        v11 = v9;
        v12 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v21 = v13;
        v22 = 2080;
        v23 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didStopTranscriptionWithError:]";
        v24 = 1024;
        v25 = 405;
        v26 = 2112;
        v27 = v7;
        v28 = 2048;
        v29 = self;
        v30 = 2112;
        v31 = a3;
        v32 = 2112;
        v33 = [a4 localizedDescription];
        v10 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ didStopTranscriptionWithError=%@";
        v11 = v14;
        v12 = 68;
        goto LABEL_11;
      }
    }
  }

  if (a4)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didStopTranscriptionWithError:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v21 = v16;
          v22 = 2080;
          v23 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didStopTranscriptionWithError:]";
          v24 = 1024;
          v25 = 407;
          v26 = 2112;
          v27 = v15;
          v28 = 2048;
          v29 = self;
          v30 = 2112;
          v31 = a4;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Analyzer failed with error=%@", buf, 0x3Au);
        }
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__VCAudioCaptionsSpeechAnalyzer_speechAnalyzer_didStopTranscriptionWithError___block_invoke;
  v19[3] = &unk_1E85F37F0;
  v19[4] = self;
  v19[5] = a3;
  dispatch_async(captionsQueue, v19);
}

uint64_t __78__VCAudioCaptionsSpeechAnalyzer_speechAnalyzer_didStopTranscriptionWithError___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 544);
  v2 = [*(a1 + 32) taskInfoForTask:*(a1 + 40)];

  return [v1 removeObject:v2];
}

- (void)speechAnalyzerDidProduceAllTranscriberResults:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzerDidProduceAllTranscriberResults:]";
        v19 = 1024;
        v20 = 416;
        v21 = 2112;
        v22 = a3;
        v8 = " [%s] %s:%d speechAnalyzer=%@ speechAnalyzerDidProduceAllTranscriberResults";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzerDidProduceAllTranscriberResults:]";
        v19 = 1024;
        v20 = 416;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 2112;
        v26 = a3;
        v8 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ speechAnalyzerDidProduceAllTranscriberResults";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__VCAudioCaptionsSpeechAnalyzer_speechAnalyzerDidProduceAllTranscriberResults___block_invoke;
  v14[3] = &unk_1E85F37F0;
  v14[4] = self;
  v14[5] = a3;
  dispatch_async(captionsQueue, v14);
}

uint64_t __79__VCAudioCaptionsSpeechAnalyzer_speechAnalyzerDidProduceAllTranscriberResults___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 544);
  v2 = [*(a1 + 32) taskInfoForTask:*(a1 + 40)];

  return [v1 removeObject:v2];
}

- (void)speechAnalyzer:(id)a3 didProduceSpeechDetectorResult:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (a4)
      {
        [a4 range];
        time = v35;
        Seconds = CMTimeGetSeconds(&time);
        [a4 range];
      }

      else
      {
        memset(&time, 0, sizeof(time));
        Seconds = CMTimeGetSeconds(&time);
        memset(v34, 0, sizeof(v34));
      }

      time = *&v34[1];
      v22 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 136316418;
      *(&time.value + 4) = v8;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceSpeechDetectorResult:]";
      HIWORD(time.epoch) = 1024;
      v37 = 425;
      v38 = 2112;
      v39 = a3;
      v40 = 2048;
      v41 = *&Seconds;
      v42 = 2048;
      v43 = v22;
      v19 = " [%s] %s:%d speechAnalyzer=%@ didProduceSpeechDetectorResult start=%f duration=%f";
      v20 = v9;
      v21 = 58;
LABEL_25:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &time, v21);
      return;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    if (a4)
    {
      [a4 range];
      time = v33;
      v17 = CMTimeGetSeconds(&time);
      [a4 range];
    }

    else
    {
      memset(&time, 0, sizeof(time));
      v17 = CMTimeGetSeconds(&time);
      memset(v32, 0, sizeof(v32));
    }

    time = *&v32[1];
    v27 = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 136316418;
    *(&time.value + 4) = v8;
    LOWORD(time.flags) = 2080;
    *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceSpeechDetectorResult:]";
    HIWORD(time.epoch) = 1024;
    v37 = 425;
    v38 = 2112;
    v39 = a3;
    v40 = 2048;
    v41 = *&v17;
    v42 = 2048;
    v43 = v27;
    v24 = " [%s] %s:%d speechAnalyzer=%@ didProduceSpeechDetectorResult start=%f duration=%f";
    v25 = v9;
    v26 = 58;
LABEL_31:
    _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, v24, &time, v26);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (a4)
      {
        [a4 range];
        time = v31;
        v15 = CMTimeGetSeconds(&time);
        [a4 range];
      }

      else
      {
        memset(&time, 0, sizeof(time));
        v15 = CMTimeGetSeconds(&time);
        memset(v30, 0, sizeof(v30));
      }

      time = *&v30[1];
      v18 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 136316930;
      *(&time.value + 4) = v12;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceSpeechDetectorResult:]";
      HIWORD(time.epoch) = 1024;
      v37 = 425;
      v38 = 2112;
      v39 = v7;
      v40 = 2048;
      v41 = self;
      v42 = 2112;
      v43 = *&a3;
      v44 = 2048;
      v45 = v15;
      v46 = 2048;
      v47 = v18;
      v19 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ didProduceSpeechDetectorResult start=%f duration=%f";
      v20 = v13;
      v21 = 78;
      goto LABEL_25;
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    if (a4)
    {
      [a4 range];
      time = v29;
      v16 = CMTimeGetSeconds(&time);
      [a4 range];
    }

    else
    {
      memset(&time, 0, sizeof(time));
      v16 = CMTimeGetSeconds(&time);
      memset(v28, 0, sizeof(v28));
    }

    time = *&v28[1];
    v23 = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 136316930;
    *(&time.value + 4) = v12;
    LOWORD(time.flags) = 2080;
    *(&time.flags + 2) = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceSpeechDetectorResult:]";
    HIWORD(time.epoch) = 1024;
    v37 = 425;
    v38 = 2112;
    v39 = v7;
    v40 = 2048;
    v41 = self;
    v42 = 2112;
    v43 = *&a3;
    v44 = 2048;
    v45 = v16;
    v46 = 2048;
    v47 = v23;
    v24 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ didProduceSpeechDetectorResult start=%f duration=%f";
    v25 = v13;
    v26 = 78;
    goto LABEL_31;
  }
}

- (void)speechAnalyzer:(id)a3 didStopSpeechDetectorWithError:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didStopSpeechDetectorWithError:]";
        v19 = 1024;
        v20 = 429;
        v21 = 2112;
        v22 = a3;
        v23 = 2112;
        v24 = [a4 localizedDescription];
        v10 = " [%s] %s:%d speechAnalyzer=%@ didStopSpeechDetectorWithError=%@";
        v11 = v9;
        v12 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316674;
        v16 = v13;
        v17 = 2080;
        v18 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didStopSpeechDetectorWithError:]";
        v19 = 1024;
        v20 = 429;
        v21 = 2112;
        v22 = v7;
        v23 = 2048;
        v24 = self;
        v25 = 2112;
        v26 = a3;
        v27 = 2112;
        v28 = [a4 localizedDescription];
        v10 = " [%s] %s:%d %@(%p) speechAnalyzer=%@ didStopSpeechDetectorWithError=%@";
        v11 = v14;
        v12 = 68;
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithDelegate:(NSObject *)a1 isLocal:(uint64_t)a2 taskIdentifier:reportingAgent:.cold.1(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    dispatch_release(a1);
  }

  if (objc_opt_class() == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_16_0();
LABEL_13:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_13;
    }
  }
}

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(char)a1 isLocal:taskIdentifier:reportingAgent:.cold.3(char a1)
{
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_16_0();
LABEL_11:
        _os_log_error_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_3_1();
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithDelegate:isLocal:taskIdentifier:reportingAgent:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)configureAnalyzerOptions
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
}

- (void)analyzerSetupWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d error=%@");
}

- (void)packageAndSendTranscriberResult:(uint64_t)a1 withTask:final:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        v5 = OS_LOG_TYPE_DEFAULT;
        v6 = 28;
LABEL_10:
        _os_log_impl(v1, v2, v5, v3, v4, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)enableLanguageDetector:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
}

- (void)pushSamples:numSamples:hostTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __45__VCAudioCaptionsSpeechAnalyzer_stopCaptions__block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 localizedDescription];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x26u);
}

- (void)speechAnalyzer:didProduceTranscriberResult:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCAudioCaptionsSpeechAnalyzer speechAnalyzer:didProduceTranscriberResult:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  v6 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d speechAnalyzer=%@ nil contextualized transcriber result", v3, 0x26u);
}

- (void)speechAnalyzer:didStopTranscriptionWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Analyzer failed with error=%@");
}

@end