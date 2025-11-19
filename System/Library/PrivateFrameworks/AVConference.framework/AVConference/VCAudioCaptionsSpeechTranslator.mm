@interface VCAudioCaptionsSpeechTranslator
- (BOOL)addToCaptionTasksWithError:(id *)a3;
- (BOOL)setUpCaptionsWithError:(id *)a3;
- (BOOL)setupTranslatorSharedWithError:(id *)a3;
- (BOOL)setupTranslatorStandaloneWithError:(id *)a3;
- (BOOL)shouldPushSamples;
- (BOOL)startCaptionsWithError:(id *)a3;
- (VCAudioCaptionsSpeechTranslator)initWithDelegate:(id)a3 isLocal:(BOOL)a4 taskIdentifier:(id)a5 reportingAgent:(opaqueRTCReporting *)a6;
- (void)client:(id)a3 didReceiveTranscriptionResult:(id)a4;
- (void)client:(id)a3 didReceiveTranslationResult:(id)a4;
- (void)client:(id)a3 didStopTranslationWithError:(id)a4;
- (void)dealloc;
- (void)destroyCaptions;
- (void)packageAndSendTranscribedString:(id)a3 withTask:(id)a4;
- (void)packageAndSendTranslatedString:(id)a3 withTask:(id)a4;
- (void)pushSamples:(char *)a3 numSamples:(int)a4 hostTime:(double)a5;
- (void)serverDidDisconnectForClient:(id)a3;
- (void)stopCaptions;
- (void)translationDidStartForClient:(id)a3;
@end

@implementation VCAudioCaptionsSpeechTranslator

- (VCAudioCaptionsSpeechTranslator)initWithDelegate:(id)a3 isLocal:(BOOL)a4 taskIdentifier:(id)a5 reportingAgent:(opaqueRTCReporting *)a6
{
  v8 = a4;
  v112 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechTranslator-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      *&buf[22] = 1024;
      *&buf[24] = 46;
      *&buf[28] = 2048;
      *&buf[30] = self;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechTranslator-init instance=%p", buf, 0x26u);
    }
  }

  v98.receiver = self;
  v98.super_class = VCAudioCaptionsSpeechTranslator;
  v13 = [(VCAudioCaptions *)&v98 initWithDelegate:a3 isLocal:v8 taskIdentifier:a5 reportingAgent:a6];
  v14 = v13;
  if (v13)
  {
    v13->super._frameworkType = 3;
    v15 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v14->super._frameworkAudioFormat = v15;
    v16 = objc_opt_class();
    v17 = &selRef_isLatencySensitiveModeEnabled;
    if (!v15)
    {
      [VCAudioCaptionsSpeechTranslator initWithDelegate:? isLocal:? taskIdentifier:? reportingAgent:?];
LABEL_64:
      if (objc_opt_class() == v14)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:];
          }
        }
      }

      else
      {
        v76 = v17[456];
        if (objc_opt_respondsToSelector())
        {
          v77 = [(VCAudioCaptionsSpeechTranslator *)v14 performSelector:v76];
        }

        else
        {
          v77 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v78 = VRTraceErrorLogLevelToCSTR();
          v79 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            frameworkType = v14->super._frameworkType;
            *buf = 136316418;
            *&buf[4] = v78;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
            *&buf[22] = 1024;
            *&buf[24] = 75;
            *&buf[28] = 2112;
            *&buf[30] = v77;
            *&buf[38] = 2048;
            v100 = v14;
            v101 = 1024;
            *v102 = frameworkType;
            _os_log_error_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VCAudioCaptionsSpeechTranslator-init FAILED with frameworkType=%d", buf, 0x36u);
          }
        }
      }

      [(VCAudioCaptionsSpeechTranslator *)v14 dealloc];
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
          v84 = *[(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
          v82 = FourccToCStr([(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][8]);
          v21 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][16];
          v22 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][20];
          v23 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][24];
          v24 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][28];
          v25 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][32];
          *buf = 136317442;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 60;
          *&buf[28] = 2048;
          *&buf[30] = v84;
          *&buf[38] = 2080;
          v100 = v82;
          v101 = 1024;
          *v102 = v21;
          *&v102[4] = 1024;
          *&v102[6] = v22;
          v17 = &selRef_isLatencySensitiveModeEnabled;
          LOWORD(v103) = 1024;
          *(&v103 + 2) = v23;
          HIWORD(v103) = 1024;
          *v104 = v24;
          *&v104[4] = 1024;
          *v105 = v25;
          v26 = " [%s] %s:%d Translator preferred format: samplerate=%f formatid=%s bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
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
        v18 = [(VCAudioCaptionsSpeechTranslator *)v14 performSelector:sel_logPrefix];
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
          v83 = *[(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
          v81 = FourccToCStr([(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][8]);
          v31 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][16];
          v32 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][20];
          v33 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][24];
          v34 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][28];
          v35 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][32];
          *buf = 136317954;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 60;
          *&buf[28] = 2112;
          *&buf[30] = v18;
          *&buf[38] = 2048;
          v100 = v14;
          v101 = 2048;
          *v102 = v83;
          *&v102[8] = 2080;
          v103 = v81;
          *v104 = 1024;
          *&v104[2] = v31;
          *v105 = 1024;
          *&v105[2] = v32;
          v17 = &selRef_isLatencySensitiveModeEnabled;
          v106 = 1024;
          v107 = v33;
          v108 = 1024;
          v109 = v34;
          v110 = 1024;
          v111 = v35;
          v26 = " [%s] %s:%d %@(%p) Translator preferred format: samplerate=%f formatid=%s bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
          v27 = v30;
          v28 = 98;
          goto LABEL_16;
        }
      }
    }

    v36 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
    v97 = *(v36 + 32);
    v95 = *v36;
    v96 = *(v36 + 16);
    captionsFormat = v14->super._captionsFormat;
    *buf = v95;
    *&buf[16] = v96;
    *&buf[32] = v97;
    [(ASBDWrapper *)captionsFormat setAsbd:buf];
    if (objc_opt_class() == v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v42 = v14->super._captionsFormat;
          if (v42)
          {
            [(ASBDWrapper *)v42 asbd];
            v43 = v94;
          }

          else
          {
            v43 = 0;
          }

          v58 = v14->super._captionsFormat;
          if (v58)
          {
            [(ASBDWrapper *)v58 asbd];
            v59 = v93;
          }

          else
          {
            v59 = 0;
          }

          v60 = v14->super._captionsFormat;
          if (v60)
          {
            [(ASBDWrapper *)v60 asbd];
            v61 = v92;
          }

          else
          {
            v61 = 0.0;
          }

          v62 = v14->super._captionsFormat;
          if (v62)
          {
            [(ASBDWrapper *)v62 asbd];
            LODWORD(v63) = v91;
            v64 = v63;
          }

          else
          {
            v64 = 0.0;
          }

          *buf = 136316418;
          *&buf[4] = v40;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 63;
          *&buf[28] = 1024;
          *&buf[30] = v43;
          *&buf[34] = 1024;
          *&buf[36] = v59;
          LOWORD(v100) = 1024;
          *(&v100 + 2) = (v61 * v64 * 20.0) / 1000;
          v55 = " [%s] %s:%d Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
          v56 = v41;
          v57 = 46;
          goto LABEL_51;
        }
      }
    }

    else
    {
      v38 = v17[456];
      if (objc_opt_respondsToSelector())
      {
        v39 = [(VCAudioCaptionsSpeechTranslator *)v14 performSelector:v38];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v46 = v14->super._captionsFormat;
          if (v46)
          {
            [(ASBDWrapper *)v46 asbd];
            v47 = v90;
          }

          else
          {
            v47 = 0;
          }

          v48 = v14->super._captionsFormat;
          if (v48)
          {
            [(ASBDWrapper *)v48 asbd];
            v49 = v89;
          }

          else
          {
            v49 = 0;
          }

          v50 = v14->super._captionsFormat;
          if (v50)
          {
            [(ASBDWrapper *)v50 asbd];
            v51 = v88;
          }

          else
          {
            v51 = 0.0;
          }

          v52 = v14->super._captionsFormat;
          if (v52)
          {
            [(ASBDWrapper *)v52 asbd];
            LODWORD(v53) = v87;
            v54 = v53;
          }

          else
          {
            v54 = 0.0;
          }

          *buf = 136316930;
          *&buf[4] = v44;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 63;
          *&buf[28] = 2112;
          *&buf[30] = v39;
          *&buf[38] = 2048;
          v100 = v14;
          v101 = 1024;
          *v102 = v47;
          *&v102[4] = 1024;
          *&v102[6] = v49;
          LOWORD(v103) = 1024;
          *(&v103 + 2) = (v51 * v54 * 20.0) / 1000;
          v55 = " [%s] %s:%d %@(%p) Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
          v56 = v45;
          v57 = 66;
LABEL_51:
          _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
        }
      }
    }

    v65 = *MEMORY[0x1E695E480];
    v66 = v14->super._captionsFormat;
    if (v66)
    {
      [(ASBDWrapper *)v66 asbd];
      v67 = v86;
      v68 = v14->super._captionsFormat;
      if (v68)
      {
        [(ASBDWrapper *)v68 asbd];
        LODWORD(v69) = v85;
        v70 = v69;
LABEL_57:
        v71 = VCAudioBufferAllocatorCreate(v65, (v67 * v70 * 20.0 / 1000.0), 2u);
        v14->super._avAudioPCMAudioBufferAllocator = v71;
        if (v71)
        {
          v14->super._translatedUtteranceNumber = 1;
          v14->_currentTranslatedUpdateNumber = 0;
          v14->_currentSourceUpdateNumber = 0;
          v14->_transcriptionTimes = objc_alloc_init(MEMORY[0x1E695DF90]);
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechTranslator-init Finished");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v72 = VRTraceErrorLogLevelToCSTR();
            v73 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v74 = v14->super._frameworkType;
              *buf = 136316162;
              *&buf[4] = v72;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
              *&buf[22] = 1024;
              *&buf[24] = 81;
              *&buf[28] = 2048;
              *&buf[30] = v14;
              *&buf[38] = 1024;
              LODWORD(v100) = v74;
              _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechTranslator-init Finished instance=%p Succeeded with frameworkType=%d", buf, 0x2Cu);
            }
          }

          return v14;
        }

        [VCAudioCaptionsSpeechTranslator initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
        goto LABEL_64;
      }
    }

    else
    {
      v67 = 0.0;
    }

    v70 = 0.0;
    goto LABEL_57;
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
        v15 = "[VCAudioCaptionsSpeechTranslator dealloc]";
        v16 = 1024;
        v17 = 91;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        v15 = "[VCAudioCaptionsSpeechTranslator dealloc]";
        v16 = 1024;
        v17 = 91;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCAudioCaptionsSpeechTranslator;
  [(VCAudioCaptions *)&v11 dealloc];
}

- (void)packageAndSendTranslatedString:(id)a3 withTask:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  if ([(VCAudioCaptions *)self delegate])
  {
    v7 = [(VCAudioCaptions *)self taskInfoForTask:a4];
    if (v7)
    {
      v8 = v7;
      [(__CFString *)v7 setUtteranceNumber:self->super._translatedUtteranceNumber];
      ++self->_currentTranslatedUpdateNumber;
      [(__CFString *)v8 setUpdateNumber:?];
      if (![a3 isFinal])
      {
        goto LABEL_32;
      }

      if (-[NSMutableDictionary objectForKeyedSubscript:](self->_transcriptionTimes, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._translatedUtteranceNumber]))
      {
        v9 = micro();
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_transcriptionTimes objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->super._translatedUtteranceNumber)), "doubleValue"}];
        v11 = v9 - v10;
        -[NSMutableDictionary removeObjectForKey:](self->_transcriptionTimes, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._translatedUtteranceNumber]);
        translatedUtteranceNumber = self->super._translatedUtteranceNumber;
        if (translatedUtteranceNumber && v11 >= 0.0)
        {
          self->super._translatedLatencyAverage = self->super._translatedLatencyAverage + (v11 - self->super._translatedLatencyAverage) / translatedUtteranceNumber;
        }
      }

      else
      {
        v11 = 0.0;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_31;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        translatedLatencyAverage = self->super._translatedLatencyAverage;
        v25 = self->super._translatedUtteranceNumber;
        v43 = 136316674;
        v44 = v22;
        v45 = 2080;
        v46 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v47 = 1024;
        v48 = 122;
        v49 = 2112;
        v50 = v8;
        v51 = 2048;
        v52 = *&v11;
        v53 = 2048;
        v54 = translatedLatencyAverage;
        v55 = 1024;
        LODWORD(v56) = v25;
        v26 = " [%s] %s:%d Update translatedResult utterance from info=%@, currentLatency=%f, average translatedLatency=%f for utterance count=%d";
        v27 = v23;
        v28 = 64;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v19 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_31;
        }

        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v31 = self->super._translatedLatencyAverage;
        v32 = self->super._translatedUtteranceNumber;
        v43 = 136317186;
        v44 = v29;
        v45 = 2080;
        v46 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v47 = 1024;
        v48 = 122;
        v49 = 2112;
        v50 = v19;
        v51 = 2048;
        v52 = self;
        v53 = 2112;
        v54 = *&v8;
        v55 = 2048;
        v56 = v11;
        v57 = 2048;
        v58 = v31;
        v59 = 1024;
        v60 = v32;
        v26 = " [%s] %s:%d %@(%p) Update translatedResult utterance from info=%@, currentLatency=%f, average translatedLatency=%f for utterance count=%d";
        v27 = v30;
        v28 = 84;
      }

      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, &v43, v28);
LABEL_31:
      ++self->super._translatedUtteranceNumber;
      self->_currentTranslatedUpdateNumber = 0;
LABEL_32:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_43;
        }

        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v43 = 136315906;
        v44 = v34;
        v45 = 2080;
        v46 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v47 = 1024;
        v48 = 126;
        v49 = 2112;
        v50 = v8;
        v36 = " [%s] %s:%d Update translatedResult utterance to info=%@";
        v37 = v35;
        v38 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v33 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v33 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_43;
        }

        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v43 = 136316418;
        v44 = v39;
        v45 = 2080;
        v46 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v47 = 1024;
        v48 = 126;
        v49 = 2112;
        v50 = v33;
        v51 = 2048;
        v52 = self;
        v53 = 2112;
        v54 = *&v8;
        v36 = " [%s] %s:%d %@(%p) Update translatedResult utterance to info=%@";
        v37 = v40;
        v38 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, v36, &v43, v38);
LABEL_43:
      v41 = -[VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:]([VCCaptionsTranscription alloc], "initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:", [a3 translatedText], v8, self->super._isLocal, objc_msgSend(a3, "isFinal"), 1);
      if (v41)
      {
        v42 = v41;
        [(VCAudioCaptions *)self sendTranscriptionResult:v41 taskInfo:v8];
      }

      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v43 = 136315650;
          v44 = v14;
          v45 = 2080;
          v46 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
          v47 = 1024;
          v48 = 107;
          v16 = " [%s] %s:%d Cannot sendTranscription as we don't have a task for it";
          v17 = v15;
          v18 = 28;
LABEL_22:
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v43, v18);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v43 = 136316162;
          v44 = v20;
          v45 = 2080;
          v46 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
          v47 = 1024;
          v48 = 107;
          v49 = 2112;
          v50 = v13;
          v51 = 2048;
          v52 = self;
          v16 = " [%s] %s:%d %@(%p) Cannot sendTranscription as we don't have a task for it";
          v17 = v21;
          v18 = 48;
          goto LABEL_22;
        }
      }
    }
  }
}

- (void)packageAndSendTranscribedString:(id)a3 withTask:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(VCAudioCaptions *)self delegate])
  {
    v7 = [(VCAudioCaptions *)self taskInfoForTask:a4];
    if (v7)
    {
      v8 = v7;
      [(__CFString *)v7 setUtteranceNumber:self->super._currentUtteranceNumber];
      ++self->_currentSourceUpdateNumber;
      [(__CFString *)v8 setUpdateNumber:?];
      if (![a3 isFinal])
      {
        goto LABEL_27;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_26;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v35 = 136315906;
        v36 = v16;
        v37 = 2080;
        v38 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v39 = 1024;
        v40 = 150;
        v41 = 2112;
        v42 = v8;
        v18 = " [%s] %s:%d Update transcriptionResult utterance from info=%@";
        v19 = v17;
        v20 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_26;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v35 = 136316418;
        v36 = v23;
        v37 = 2080;
        v38 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v39 = 1024;
        v40 = 150;
        v41 = 2112;
        v42 = v9;
        v43 = 2048;
        v44 = self;
        v45 = 2112;
        v46 = v8;
        v18 = " [%s] %s:%d %@(%p) Update transcriptionResult utterance from info=%@";
        v19 = v24;
        v20 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, &v35, v20);
LABEL_26:
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_transcriptionTimes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithDouble:micro()], objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->super._currentUtteranceNumber));
      ++self->super._currentUtteranceNumber;
      self->_currentSourceUpdateNumber = 0;
LABEL_27:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_38;
        }

        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v35 = 136315906;
        v36 = v26;
        v37 = 2080;
        v38 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v39 = 1024;
        v40 = 156;
        v41 = 2112;
        v42 = v8;
        v28 = " [%s] %s:%d Update transcriptionResult utterance to info=%@";
        v29 = v27;
        v30 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v25 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_38;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v35 = 136316418;
        v36 = v31;
        v37 = 2080;
        v38 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v39 = 1024;
        v40 = 156;
        v41 = 2112;
        v42 = v25;
        v43 = 2048;
        v44 = self;
        v45 = 2112;
        v46 = v8;
        v28 = " [%s] %s:%d %@(%p) Update transcriptionResult utterance to info=%@";
        v29 = v32;
        v30 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v35, v30);
LABEL_38:
      v33 = -[VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:]([VCCaptionsTranscription alloc], "initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:", [a3 text], v8, self->super._isLocal, objc_msgSend(a3, "isFinal"), 0);
      if (v33)
      {
        v34 = v33;
        [(VCAudioCaptions *)self sendTranscriptionResult:v33 taskInfo:v8];
      }

      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v35 = 136315650;
          v36 = v11;
          v37 = 2080;
          v38 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
          v39 = 1024;
          v40 = 143;
          v13 = " [%s] %s:%d Cannot sendTranscription as we don't have a task for it";
          v14 = v12;
          v15 = 28;
LABEL_20:
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v35, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v35 = 136316162;
          v36 = v21;
          v37 = 2080;
          v38 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
          v39 = 1024;
          v40 = 143;
          v41 = 2112;
          v42 = v10;
          v43 = 2048;
          v44 = self;
          v13 = " [%s] %s:%d %@(%p) Cannot sendTranscription as we don't have a task for it";
          v14 = v22;
          v15 = 48;
          goto LABEL_20;
        }
      }
    }
  }
}

- (BOOL)setupTranslatorStandaloneWithError:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];

  self->_translatorConfiguration = 0;
  v5 = [objc_alloc(VCSpeechTranslation_STSpeechTranslatorConfigurationClass()) initWithSourceLocale:self->super._sourceLocale targetLocale:self->super._locale];
  self->_translatorConfiguration = v5;
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        v21 = 176;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v28 = v19;
          v29 = 2080;
          v30 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
          v31 = 1024;
          v32 = 176;
          v33 = 2112;
          v34 = v17;
          v35 = 2048;
          v36 = self;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the _translatorConfiguration for SpeechTranslator", buf, 0x30u);
        }

        goto LABEL_33;
      }
    }

    v21 = 176;
LABEL_33:
    v22 = 19;
    goto LABEL_40;
  }

  [(STSpeechTranslatorConfiguration *)v5 setOmitTranslatedAudio:1];
  v6 = [objc_alloc(VCSpeechTranslation_STSpeechTranslatorClientClass()) initWithConfiguration:self->_translatorConfiguration delegate:self delegateQueue:self->super._delegateQueue];
  self->_translatorClient = v6;
  if (v6)
  {
    [(STSpeechTranslatorClient *)v6 setProduceAudio:0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v28 = v8;
      v29 = 2080;
      v30 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
      v31 = 1024;
      v32 = 183;
      v10 = " [%s] %s:%d Setup and start translator client for VCAudioCaptionsTranslatorModeStandalone";
      v11 = v9;
      v12 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136316162;
      v28 = v13;
      v29 = 2080;
      v30 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
      v31 = 1024;
      v32 = 183;
      v33 = 2112;
      v34 = v7;
      v35 = 2048;
      v36 = self;
      v10 = " [%s] %s:%d %@(%p) Setup and start translator client for VCAudioCaptionsTranslatorModeStandalone";
      v11 = v14;
      v12 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_14:
    self->_translatorStartTime = micro();
    self->_translatorStartDuration = NAN;
    translatorClient = self->_translatorClient;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke;
    v26[3] = &unk_1E85F7538;
    v26[4] = self;
    [(STSpeechTranslatorClient *)translatorClient startTranslationWithCompletionHandler:v26];

    self->super._translatorIdentifier = [-[STSpeechTranslatorClient translatorIdentifier](self->_translatorClient "translatorIdentifier")];
    return 1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v21 = 180;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v28 = v23;
        v29 = 2080;
        v30 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
        v31 = 1024;
        v32 = 180;
        v33 = 2112;
        v34 = v18;
        v35 = 2048;
        v36 = self;
        _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the _translatorClient for standalone SpeechTranslator", buf, 0x30u);
      }

      goto LABEL_39;
    }
  }

  v21 = 180;
LABEL_39:
  v22 = 12;
LABEL_40:

  self->_translatorConfiguration = 0;
  self->_translatorClient = 0;
  if (!a3)
  {
    return 0;
  }

  v25 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", v21], v22);
  result = 0;
  *a3 = v25;
  return result;
}

void __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke(uint64_t a1, void *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 624) = micro() - *(*(a1 + 32) + 616);
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke_cold_1(v4, a2, v5);
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke_9;
    v8[3] = &unk_1E85F3778;
    v8[4] = v6;
    dispatch_async(v7, v8);
  }
}

- (BOOL)setupTranslatorSharedWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->super._translatorIdentifier)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v11 = 217;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v17 = v9;
          v18 = 2080;
          v19 = "[VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:]";
          v20 = 1024;
          v21 = 217;
          v22 = 2112;
          v23 = v7;
          v24 = 2048;
          v25 = self;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed as Nil _translatorIdentifier passed to initialize SpeechTranslator", buf, 0x30u);
        }

        goto LABEL_22;
      }
    }

    v11 = 217;
LABEL_22:
    v12 = 14;
    goto LABEL_29;
  }

  v5 = [objc_alloc(VCSpeechTranslation_STSpeechTranslatorClientClass()) initWithTranslatorIdentifier:self->super._translatorIdentifier delegate:self delegateQueue:self->super._delegateQueue];
  self->_translatorClient = v5;
  if (v5)
  {
    return 1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v11 = 220;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:]";
        v20 = 1024;
        v21 = 220;
        v22 = 2112;
        v23 = v8;
        v24 = 2048;
        v25 = self;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the _translatorClient for shared SpeechTranslator", buf, 0x30u);
      }

      goto LABEL_28;
    }
  }

  v11 = 220;
LABEL_28:
  v12 = 12;
LABEL_29:

  self->_translatorClient = 0;
  if (!a3)
  {
    return 0;
  }

  v15 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", v11], v12);
  result = 0;
  *a3 = v15;
  return result;
}

- (BOOL)addToCaptionTasksWithError:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [VCCaptionTaskInfo alloc];
  translatorClient = self->_translatorClient;
  streamToken = self->super._streamToken;
  ++self->super._currentUtteranceNumber;
  v8 = [(VCCaptionTaskInfo *)v5 initWithTask:translatorClient token:streamToken utteranceNumber:?];
  v9 = v8;
  if (a3 && !v8)
  {
    [VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:a3];
  }

  else if (v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *v24 = 136315906;
      *&v24[4] = v11;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 242;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v9;
      v13 = " [%s] %s:%d taskInfo=%@";
      v14 = v12;
      v15 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *v24 = 136316418;
      *&v24[4] = v16;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 242;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v10;
      HIWORD(v25) = 2048;
      v26 = self;
      LOWORD(v27) = 2112;
      *(&v27 + 2) = v9;
      v13 = " [%s] %s:%d %@(%p) taskInfo=%@";
      v14 = v17;
      v15 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v24, v15);
LABEL_15:
    [(NSMutableArray *)self->super._captionTasks addObject:v9, *v24, *&v24[16], v25, v26, v27];

    self->super._currentTaskInfo = v9;
    LOBYTE(v18) = 1;
    return v18;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      [VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      v22 = self->super._streamToken;
      *v24 = 136316418;
      *&v24[4] = v20;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 241;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v19;
      HIWORD(v25) = 2048;
      v26 = self;
      LOWORD(v27) = 2048;
      *(&v27 + 2) = v22;
      _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate taskInfo for token=%lu", v24, 0x3Au);
    }
  }

  LOBYTE(v18) = 0;
  return v18;
}

- (BOOL)shouldPushSamples
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->super._recognizerState == 2 && self->_translatorClient && self->super._translatorMode == 1)
  {
    return 1;
  }

  HIDWORD(v4) = -1030792151 * self->super._logMessageCounter;
  LODWORD(v4) = HIDWORD(v4);
  if ((v4 >> 1) <= 0x51EB851 && self->super._translatorMode != 2)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      recognizerState = self->super._recognizerState;
      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechTranslator shouldPushSamples]";
      v19 = 1024;
      v20 = 353;
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
        v5 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = self->super._recognizerState;
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechTranslator shouldPushSamples]";
      v19 = 1024;
      v20 = 353;
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

LABEL_18:
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
    [(STSpeechTranslatorClient *)self->_translatorClient translateAudioSamples:v12];
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechTranslator pushSamples:numSamples:hostTime:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        v16 = "[VCAudioCaptionsSpeechTranslator pushSamples:numSamples:hostTime:]";
        v17 = 1024;
        v18 = 379;
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
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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

    v11 = 136316162;
    v12 = v9;
    v13 = 2080;
    v14 = "[VCAudioCaptionsSpeechTranslator stopCaptions]";
    v15 = 1024;
    v16 = 389;
    v17 = 2112;
    v18 = v3;
    v19 = 2048;
    v20 = self;
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
      v11 = 136315650;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCAudioCaptionsSpeechTranslator stopCaptions]";
      v15 = 1024;
      v16 = 389;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

LABEL_12:
  if (self->super._translatorMode == 1)
  {
    [(STSpeechTranslatorClient *)self->_translatorClient stopTranslation];
    self->_isStarted = 0;
  }

  ++self->super._captionTaskCount;
}

- (void)destroyCaptions
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechTranslator destroyCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 404;
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
      v3 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechTranslator destroyCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 404;
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

  [(NSMutableArray *)self->super._captionTasks removeObject:self->super._currentTaskInfo, *v11, *&v11[16], v12, v13];

  self->super._currentTaskInfo = 0;
  [(STSpeechTranslatorClient *)self->_translatorClient invalidate];

  self->_translatorClient = 0;
}

- (void)translationDidStartForClient:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator translationDidStartForClient:]";
        v17 = 1024;
        v18 = 419;
        v19 = 2112;
        v20 = a3;
        v8 = " [%s] %s:%d Translation started for STSpeechTranslatorClient=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator translationDidStartForClient:]";
        v17 = 1024;
        v18 = 419;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) Translation started for STSpeechTranslatorClient=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)client:(id)a3 didStopTranslationWithError:(id)a4
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
        v18 = "[VCAudioCaptionsSpeechTranslator client:didStopTranslationWithError:]";
        v19 = 1024;
        v20 = 423;
        v21 = 2112;
        v22 = a3;
        v23 = 2112;
        v24 = a4;
        v10 = " [%s] %s:%d Translation stopped for STSpeechTranslatorClient=%@ with error=%@";
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
      v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        v18 = "[VCAudioCaptionsSpeechTranslator client:didStopTranslationWithError:]";
        v19 = 1024;
        v20 = 423;
        v21 = 2112;
        v22 = v7;
        v23 = 2048;
        v24 = self;
        v25 = 2112;
        v26 = a3;
        v27 = 2112;
        v28 = a4;
        v10 = " [%s] %s:%d %@(%p) Translation stopped for STSpeechTranslatorClient=%@ with error=%@";
        v11 = v14;
        v12 = 68;
        goto LABEL_11;
      }
    }
  }
}

- (void)client:(id)a3 didReceiveTranslationResult:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranslationResult:]";
        v21 = 1024;
        v22 = 427;
        v23 = 2048;
        v24 = a3;
        v25 = 1024;
        *v26 = [a4 isFinal];
        *&v26[4] = 2112;
        *&v26[6] = [a4 identifier];
        v10 = " [%s] %s:%d TranslatorClient=%p didReceiveTranslationResult isFinal=%d, id=%@";
        v11 = v9;
        v12 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        *buf = 136316930;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranslationResult:]";
        v21 = 1024;
        v22 = 427;
        v23 = 2112;
        v24 = v7;
        v25 = 2048;
        *v26 = self;
        *&v26[8] = 2048;
        *&v26[10] = a3;
        v27 = 1024;
        v28 = [a4 isFinal];
        v29 = 2112;
        v30 = [a4 identifier];
        v10 = " [%s] %s:%d %@(%p) TranslatorClient=%p didReceiveTranslationResult isFinal=%d, id=%@";
        v11 = v14;
        v12 = 74;
        goto LABEL_11;
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCAudioCaptionsSpeechTranslator_client_didReceiveTranslationResult___block_invoke;
  block[3] = &unk_1E85F3E30;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(captionsQueue, block);
}

- (void)client:(id)a3 didReceiveTranscriptionResult:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranscriptionResult:]";
        v21 = 1024;
        v22 = 434;
        v23 = 2048;
        v24 = a3;
        v25 = 1024;
        *v26 = [a4 isFinal];
        *&v26[4] = 2112;
        *&v26[6] = [a4 identifier];
        v10 = " [%s] %s:%d TranslatorClient=%p didReceiveTranscriptionResult isFinal=%d, id=%@";
        v11 = v9;
        v12 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        *buf = 136316930;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranscriptionResult:]";
        v21 = 1024;
        v22 = 434;
        v23 = 2112;
        v24 = v7;
        v25 = 2048;
        *v26 = self;
        *&v26[8] = 2048;
        *&v26[10] = a3;
        v27 = 1024;
        v28 = [a4 isFinal];
        v29 = 2112;
        v30 = [a4 identifier];
        v10 = " [%s] %s:%d %@(%p) TranslatorClient=%p didReceiveTranscriptionResult isFinal=%d, id=%@";
        v11 = v14;
        v12 = 74;
        goto LABEL_11;
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VCAudioCaptionsSpeechTranslator_client_didReceiveTranscriptionResult___block_invoke;
  block[3] = &unk_1E85F3E30;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(captionsQueue, block);
}

- (void)serverDidDisconnectForClient:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator serverDidDisconnectForClient:]";
        v17 = 1024;
        v18 = 441;
        v19 = 2112;
        v20 = a3;
        v8 = " [%s] %s:%d The server disconnected for the STSpeechTranslatorClient=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
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
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator serverDidDisconnectForClient:]";
        v17 = 1024;
        v18 = 441;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) The server disconnected for the STSpeechTranslatorClient=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (BOOL)setUpCaptionsWithError:(id *)a3
{
  v59 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._captionsQueue);
  v6 = objc_opt_class();
  v7 = MEMORY[0x1E6986650];
  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v8 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8_33();
        OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_3_39();
        *v54 = v10;
        v11 = " [%s] %s:%d Setup captions for translatorMode=%@";
        v12 = v8;
        v13 = 38;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_18_12();
        OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_3_39();
        OUTLINED_FUNCTION_14_20();
        v11 = " [%s] %s:%d %@(%p) Setup captions for translatorMode=%@";
        v12 = v9;
        v13 = 58;
        goto LABEL_10;
      }
    }
  }

  if (self->_translatorClient)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_43;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 136315650;
      v49 = v16;
      v50 = 2080;
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      v52 = 263;
      OUTLINED_FUNCTION_20_10();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_43;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_22_9())
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_16_14();
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      v52 = 263;
      v53 = 2112;
      *v54 = v14;
      *&v54[8] = 2048;
      *&v54[10] = self;
      OUTLINED_FUNCTION_10_22();
      v22 = 48;
    }

LABEL_42:
    _os_log_impl(v17, v18, v19, v20, v21, v22);
LABEL_43:
    LOBYTE(IsInternalOSInstalled) = 1;
    return IsInternalOSInstalled;
  }

  translatorMode = self->super._translatorMode;
  if (!self->super._translatorMode)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_50;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_8_33();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_3_39();
      *v54 = v37;
      OUTLINED_FUNCTION_9_29();
      v43 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (VRTraceErrorLogLevelToCSTR(), v36 = *v7, !os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR)))
      {
LABEL_50:
        if (!a3)
        {
LABEL_52:
          IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
          if (!IsInternalOSInstalled)
          {
            return IsInternalOSInstalled;
          }

          if (self->super._translatorMode)
          {
            v44 = [MEMORY[0x1E696AAA8] currentHandler];
            v45 = self->super._translatorMode;
            if (v45 > 2)
            {
              v46 = 0;
            }

            else
            {
              v46 = off_1E85F9308[v45];
            }

            [v44 handleFailureInMethod:a2 object:self file:@"VCAudioCaptionsSpeechTranslator.m" lineNumber:282 description:{@"Fatal error in STSpeechTranslator usage. In SpeechTranslator module but translator mode is OFF translatorMode=%@", v46}];
          }

          goto LABEL_54;
        }

LABEL_51:
        *a3 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", 279], 8);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_3_39();
      OUTLINED_FUNCTION_14_20();
      v38 = &dword_1DB56E000;
      v41 = " [%s] %s:%d %@(%p) Fatal error in STSpeechTranslator usage with translator mode set to OFF. Unexpected translatorMode=%@";
      v42 = buf;
      v39 = v36;
      v40 = OS_LOG_TYPE_ERROR;
      v43 = 58;
    }

    _os_log_error_impl(v38, v39, v40, v41, v42, v43);
    if (!a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (translatorMode != 2)
  {
    if (translatorMode == 1 && ![(VCAudioCaptionsSpeechTranslator *)self setupTranslatorStandaloneWithError:a3])
    {
      goto LABEL_54;
    }

LABEL_29:
    [(STSpeechTranslatorClient *)self->_translatorClient setProduceTranscripts:1];
    [(STSpeechTranslatorClient *)self->_translatorClient setProduceTranslatedText:1];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_43;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      v27 = self->super._translatorMode;
      translatorClient = self->_translatorClient;
      [(STSpeechTranslatorClient *)translatorClient translatorIdentifier];
      *buf = 136316418;
      v49 = v25;
      v50 = 2080;
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      v52 = 288;
      v53 = v29;
      *v54 = v27;
      *&v54[4] = 2048;
      *&v54[6] = translatorClient;
      *&v54[14] = 2112;
      *&v54[16] = v30;
      v17 = &dword_1DB56E000;
      v20 = " [%s] %s:%d translatorMode=%d, _translatorClient=%p identifier=%@";
      v21 = buf;
      v18 = v26;
      v19 = OS_LOG_TYPE_DEFAULT;
      v22 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_43;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_22_9())
      {
        goto LABEL_43;
      }

      v31 = self->super._translatorMode;
      v32 = self->_translatorClient;
      [(STSpeechTranslatorClient *)v32 translatorIdentifier];
      OUTLINED_FUNCTION_16_14();
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      OUTLINED_FUNCTION_3_39();
      *v54 = v24;
      *&v54[8] = 2048;
      *&v54[10] = self;
      *&v54[18] = v33;
      *&v54[20] = v31;
      v55 = 2048;
      v56 = v32;
      v57 = v34;
      v58 = v35;
      OUTLINED_FUNCTION_10_22();
      v22 = 74;
    }

    goto LABEL_42;
  }

  IsInternalOSInstalled = [(VCAudioCaptionsSpeechTranslator *)self setupTranslatorSharedWithError:a3];
  if (!IsInternalOSInstalled)
  {
    return IsInternalOSInstalled;
  }

  if ([(VCAudioCaptionsSpeechTranslator *)self addToCaptionTasksWithError:a3])
  {
    goto LABEL_29;
  }

LABEL_54:
  LOBYTE(IsInternalOSInstalled) = 0;
  return IsInternalOSInstalled;
}

- (BOOL)startCaptionsWithError:(id *)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = MEMORY[0x1E6986650];
  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_23_7())
      {
        *buf = 136315650;
        v56 = v3;
        OUTLINED_FUNCTION_0_24();
        v60 = 303;
        OUTLINED_FUNCTION_10_22();
        v13 = 28;
LABEL_10:
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_12_14())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v3 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v56 = v14;
        OUTLINED_FUNCTION_0_24();
        v60 = 303;
        OUTLINED_FUNCTION_2_31();
        v8 = &dword_1DB56E000;
        v11 = " [%s] %s:%d %@(%p) ";
        v12 = buf;
        v9 = v3;
        v10 = OS_LOG_TYPE_DEFAULT;
        v13 = 48;
        goto LABEL_10;
      }
    }
  }

  if (self->super._translatorMode != 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136315650;
      v56 = v28;
      OUTLINED_FUNCTION_0_24();
      v60 = 309;
      OUTLINED_FUNCTION_20_10();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_23_7())
      {
        return 1;
      }

      *buf = 136316162;
      v56 = v3;
      OUTLINED_FUNCTION_0_24();
      v60 = 309;
      v61 = 2112;
      v62 = *&v27;
      v63 = 2048;
      v64 = self;
      OUTLINED_FUNCTION_10_22();
      v34 = 48;
    }

    _os_log_impl(v29, v30, v31, v32, v33, v34);
    return 1;
  }

  if (![(VCAudioCaptions *)self updateAudioConverterForStreamDescription:[(AVAudioFormat *)self->super._frameworkAudioFormat streamDescription]])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR);
        v37 = 311;
        if (v36)
        {
          *buf = 136315650;
          v56 = v35;
          OUTLINED_FUNCTION_0_24();
          v60 = 311;
          OUTLINED_FUNCTION_16_0();
LABEL_54:
          _os_log_error_impl(v38, v39, v40, v41, v42, v43);
        }

LABEL_56:
        v52 = 4;
        goto LABEL_63;
      }
    }

    else
    {
      if (OUTLINED_FUNCTION_12_14())
      {
        OUTLINED_FUNCTION_37_0();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v51 = VRTraceErrorLogLevelToCSTR();
        v37 = 311;
        if (OUTLINED_FUNCTION_31())
        {
          *buf = 136316162;
          v56 = v51;
          OUTLINED_FUNCTION_0_24();
          v60 = 311;
          OUTLINED_FUNCTION_2_31();
          OUTLINED_FUNCTION_9_29();
          v43 = 48;
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    v37 = 311;
    goto LABEL_56;
  }

  if (![(VCAudioCaptionsSpeechTranslator *)self addToCaptionTasksWithError:a3])
  {
    return 1;
  }

  if (self->_isStarted)
  {
    goto LABEL_24;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_24;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_24;
    }

    translatorStartDuration = self->_translatorStartDuration;
    *buf = 136315906;
    v56 = v16;
    v57 = 2080;
    v58 = "[VCAudioCaptionsSpeechTranslator startCaptionsWithError:]";
    v59 = 1024;
    v60 = 320;
    v61 = 2048;
    v62 = translatorStartDuration;
    v19 = &dword_1DB56E000;
    v20 = " [%s] %s:%d Translation client start failed in duration=%0.6f seconds";
    v21 = buf;
    v22 = v17;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 38;
LABEL_27:
    _os_log_error_impl(v19, v22, v23, v20, v21, v24);
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_12_14())
  {
    v15 = OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v15 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8_33();
      v58 = "[VCAudioCaptionsSpeechTranslator startCaptionsWithError:]";
      v59 = 1024;
      OUTLINED_FUNCTION_3_39();
      v62 = *&v15;
      v63 = 2048;
      v64 = self;
      v65 = 2048;
      v66 = v26;
      OUTLINED_FUNCTION_9_29();
      v24 = 58;
      goto LABEL_27;
    }
  }

LABEL_24:
  if (self->_isStarted)
  {
    return 1;
  }

  if (objc_opt_class() != self)
  {
    if (OUTLINED_FUNCTION_12_14())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v37 = 323;
      if (OUTLINED_FUNCTION_31())
      {
        *buf = 136316162;
        v56 = v53;
        OUTLINED_FUNCTION_0_24();
        v60 = 323;
        OUTLINED_FUNCTION_2_31();
        OUTLINED_FUNCTION_9_29();
        v50 = 48;
        goto LABEL_60;
      }

      goto LABEL_62;
    }

LABEL_61:
    v37 = 323;
    goto LABEL_62;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_61;
  }

  v44 = VRTraceErrorLogLevelToCSTR();
  v37 = 323;
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v56 = v44;
    OUTLINED_FUNCTION_0_24();
    v60 = 323;
    OUTLINED_FUNCTION_16_0();
LABEL_60:
    _os_log_error_impl(v45, v46, v47, v48, v49, v50);
  }

LABEL_62:
  v52 = 13;
LABEL_63:
  if (!a3)
  {
    return 0;
  }

  v54 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", v37], v52);
  result = 0;
  *a3 = v54;
  return result;
}

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(char)a1 isLocal:taskIdentifier:reportingAgent:.cold.2(char a1)
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
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_3_1();
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithDelegate:isLocal:taskIdentifier:reportingAgent:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
  v4 = 1024;
  v5 = 75;
  v6 = 1024;
  v7 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAudioCaptionsSpeechTranslator-init FAILED with frameworkType=%d", v2, 0x22u);
}

- (void)setupTranslatorStandaloneWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupTranslatorStandaloneWithError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  [a2 localizedDescription];
  OUTLINED_FUNCTION_11();
  v7 = v4;
  v8 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]_block_invoke";
  v9 = 1024;
  v10 = 189;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to start translator client. SpeechTranslator error=%@", v6, 0x26u);
}

- (void)setupTranslatorSharedWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupTranslatorSharedWithError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (id)addToCaptionTasksWithError:(void *)a1 .cold.1(void *a1)
{
  result = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", 239], 5);
  *a1 = result;
  return result;
}

- (void)addToCaptionTasksWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
  v4 = 1024;
  v5 = 241;
  v6 = 2048;
  v7 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate taskInfo for token=%lu", v2, 0x26u);
}

- (void)pushSamples:numSamples:hostTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end