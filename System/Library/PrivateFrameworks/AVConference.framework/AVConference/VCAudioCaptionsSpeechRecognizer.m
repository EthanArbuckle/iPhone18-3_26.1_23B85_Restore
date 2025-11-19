@interface VCAudioCaptionsSpeechRecognizer
- (BOOL)createRecognizer:(id *)a3;
- (BOOL)recognizerBufferSetupWithError:(id *)a3;
- (BOOL)shouldPushSamples;
- (VCAudioCaptionsSpeechRecognizer)initWithDelegate:(id)a3 isLocal:(BOOL)a4 taskIdentifier:(id)a5 reportingAgent:(opaqueRTCReporting *)a6;
- (void)dealloc;
- (void)destroyRecognizer;
- (void)packageAndSendTranscribedString:(id)a3 withTask:(id)a4 final:(BOOL)a5;
- (void)pushSamples:(char *)a3 numSamples:(int)a4 hostTime:(double)a5;
- (void)recognizerBufferTeardown;
- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4;
- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4;
- (void)speechRecognitionTaskWasCancelled:(id)a3;
- (void)speechRecognizer:(id)a3 availabilityDidChange:(BOOL)a4;
- (void)stopCaptions;
@end

@implementation VCAudioCaptionsSpeechRecognizer

- (VCAudioCaptionsSpeechRecognizer)initWithDelegate:(id)a3 isLocal:(BOOL)a4 taskIdentifier:(id)a5 reportingAgent:(opaqueRTCReporting *)a6
{
  v8 = a4;
  v39 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechRecognizer-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v28 = v11;
      v29 = 2080;
      v30 = "[VCAudioCaptionsSpeechRecognizer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      v31 = 1024;
      v32 = 38;
      v33 = 2048;
      v34 = self;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechRecognizer-init instance=%p", buf, 0x26u);
    }
  }

  v26.receiver = self;
  v26.super_class = VCAudioCaptionsSpeechRecognizer;
  v13 = [(VCAudioCaptions *)&v26 initWithDelegate:a3 isLocal:v8 taskIdentifier:a5 reportingAgent:a6];
  v14 = v13;
  if (v13)
  {
    v13->super._frameworkType = 1;
    if (objc_opt_class() == v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          frameworkType = v14->super._frameworkType;
          *buf = 136315906;
          v28 = v16;
          v29 = 2080;
          v30 = "[VCAudioCaptionsSpeechRecognizer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          v31 = 1024;
          v32 = 43;
          v33 = 1024;
          LODWORD(v34) = frameworkType;
          v19 = " [%s] %s:%d VCAudioCaptionsSpeechRecognizer-init Succeeded with frameworkType=%d";
          v20 = v17;
          v21 = 34;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCAudioCaptionsSpeechRecognizer *)v14 performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = v14->super._frameworkType;
          *buf = 136316418;
          v28 = v22;
          v29 = 2080;
          v30 = "[VCAudioCaptionsSpeechRecognizer initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          v31 = 1024;
          v32 = 43;
          v33 = 2112;
          v34 = v15;
          v35 = 2048;
          v36 = v14;
          v37 = 1024;
          v38 = v24;
          v19 = " [%s] %s:%d %@(%p) VCAudioCaptionsSpeechRecognizer-init Succeeded with frameworkType=%d";
          v20 = v23;
          v21 = 54;
          goto LABEL_18;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioCaptionsSpeechRecognizer initWithDelegate:isLocal:taskIdentifier:reportingAgent:];
    }
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
        v15 = "[VCAudioCaptionsSpeechRecognizer dealloc]";
        v16 = 1024;
        v17 = 55;
        v6 = " [%s] %s:%d VCAudioCaptionsSpeechRecognizer-dealloc";
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
      v3 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
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
        v15 = "[VCAudioCaptionsSpeechRecognizer dealloc]";
        v16 = 1024;
        v17 = 55;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) VCAudioCaptionsSpeechRecognizer-dealloc";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCAudioCaptionsSpeechRecognizer;
  [(VCAudioCaptions *)&v11 dealloc];
}

- (BOOL)createRecognizer:(id *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._captionsQueue);
  if (!self->_recognizer)
  {
    v6 = [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")];
    self->_recognizer = v6;
    if (!v6)
    {
      if (a3)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechRecognizer.m", 71];
        v18 = 4;
        v19 = 1;
LABEL_33:
        v30 = [VCSessionErrorUtils VCSessionCaptionsErrorEvent:v18 errorPath:v17 returnCode:v19];
        result = 0;
        *a3 = v30;
        return result;
      }

      return 0;
    }

    if ([(SFSpeechRecognizer *)v6 isAvailable])
    {
      [(SFSpeechRecognizer *)self->_recognizer setDelegate:self];
      [(SFSpeechRecognizer *)self->_recognizer setDefaultTaskHint:1004];
      v7 = micro();
      recognizer = self->_recognizer;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __52__VCAudioCaptionsSpeechRecognizer_createRecognizer___block_invoke;
      v31[3] = &unk_1E85F8288;
      v31[4] = self;
      *&v31[5] = v7;
      [(SFSpeechRecognizer *)recognizer _prepareToRecognizeWithTaskHint:1004 completion:v31];
      return 1;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(SFSpeechRecognizer *)self->_recognizer isAvailable];
          *buf = 136315906;
          v33 = v21;
          v34 = 2080;
          v35 = "[VCAudioCaptionsSpeechRecognizer createRecognizer:]";
          v36 = 1024;
          v37 = 76;
          v38 = 1024;
          LODWORD(v39) = v23;
          v24 = " [%s] %s:%d Recognizer is not available at this point: (%d)";
          v25 = v22;
          v26 = 34;
LABEL_30:
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(SFSpeechRecognizer *)self->_recognizer isAvailable];
          *buf = 136316418;
          v33 = v27;
          v34 = 2080;
          v35 = "[VCAudioCaptionsSpeechRecognizer createRecognizer:]";
          v36 = 1024;
          v37 = 76;
          v38 = 2112;
          v39 = v20;
          v40 = 2048;
          v41 = self;
          v42 = 1024;
          v43 = v29;
          v24 = " [%s] %s:%d %@(%p) Recognizer is not available at this point: (%d)";
          v25 = v28;
          v26 = 54;
          goto LABEL_30;
        }
      }
    }

    self->_recognizer = 0;
    if (a3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechRecognizer.m", 80];
      v18 = 5;
      v19 = 2;
      goto LABEL_33;
    }

    return 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 1;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    *buf = 136315650;
    v33 = v9;
    v34 = 2080;
    v35 = "[VCAudioCaptionsSpeechRecognizer createRecognizer:]";
    v36 = 1024;
    v37 = 65;
    v11 = " [%s] %s:%d The speech recognizer already exists!!";
    v12 = v10;
    v13 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 1;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    *buf = 136316162;
    v33 = v14;
    v34 = 2080;
    v35 = "[VCAudioCaptionsSpeechRecognizer createRecognizer:]";
    v36 = 1024;
    v37 = 65;
    v38 = 2112;
    v39 = v5;
    v40 = 2048;
    v41 = self;
    v11 = " [%s] %s:%d %@(%p) The speech recognizer already exists!!";
    v12 = v15;
    v13 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
  return 1;
}

void __52__VCAudioCaptionsSpeechRecognizer_createRecognizer___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = micro();
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v8 = v4 - *(a1 + 40);
    *buf = 136316162;
    v20 = v6;
    v21 = 2080;
    v22 = "[VCAudioCaptionsSpeechRecognizer createRecognizer:]_block_invoke";
    v23 = 1024;
    v24 = 90;
    v25 = 2048;
    v26 = v8;
    v27 = 2112;
    v28 = a2;
    v9 = " [%s] %s:%d Speech model preloading durationInSeconds=%f error=%@";
    v10 = v7;
    v11 = 48;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v4 - *(a1 + 40);
      *buf = 136316674;
      v20 = v12;
      v21 = 2080;
      v22 = "[VCAudioCaptionsSpeechRecognizer createRecognizer:]_block_invoke";
      v23 = 1024;
      v24 = 90;
      v25 = 2112;
      v26 = *&v5;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      v31 = 2112;
      v32 = a2;
      v9 = " [%s] %s:%d %@(%p) Speech model preloading durationInSeconds=%f error=%@";
      v10 = v13;
      v11 = 68;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

LABEL_12:
  if (!a2)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 208);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VCAudioCaptionsSpeechRecognizer_createRecognizer___block_invoke_12;
    block[3] = &unk_1E85F3778;
    block[4] = v16;
    dispatch_async(v17, block);
  }
}

- (void)destroyRecognizer
{
  recognizer = self->_recognizer;
  if (recognizer)
  {

    self->_recognizer = 0;
    self->_isSpeechModelLoaded = 0;
  }
}

- (void)recognizerBufferTeardown
{
  recognizerTask = self->_recognizerTask;
  if (recognizerTask)
  {
    [(SFSpeechRecognitionTask *)recognizerTask finish];

    self->_recognizerTask = 0;
  }

  self->super._currentTaskInfo = 0;
  recognizerRequest = self->_recognizerRequest;
  if (recognizerRequest)
  {
    [(SFSpeechAudioBufferRecognitionRequest *)recognizerRequest endAudio];

    self->_recognizerRequest = 0;
  }

  teardownSemaphore = self->super._teardownSemaphore;

  dispatch_semaphore_signal(teardownSemaphore);
}

- (BOOL)recognizerBufferSetupWithError:(id *)a3
{
  v96 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(self->super._teardownSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")];
  v5 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
  if (!v4)
  {
    v64 = @"Recognizer request creation failed";
    v65 = 3;
LABEL_64:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v71 = VRTraceErrorLogLevelToCSTR();
        v72 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCAudioCaptionsSpeechRecognizer *)v71 recognizerBufferSetupWithError:v64, v72];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v70 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v70 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v73 = VRTraceErrorLogLevelToCSTR();
        v74 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v75 = [-[__CFString description](v64 "description")];
          *buf = 136316418;
          *&buf[4] = v73;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
          *&buf[22] = 1024;
          *&buf[24] = 202;
          *&buf[28] = 2112;
          *&buf[30] = v70;
          *&buf[38] = 2048;
          *v87 = self;
          *&v87[8] = 2080;
          *v88 = v75;
          _os_log_error_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) %s", buf, 0x3Au);
        }
      }
    }

    if (a3)
    {
      *a3 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 7, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechRecognizer.m", 204], v65);
    }

    dispatch_semaphore_signal(self->super._teardownSemaphore);
    return *(&self->super.super.super.isa + v5[843]) != 0;
  }

  v6 = v4;
  v7 = [(SFSpeechAudioBufferRecognitionRequest *)v4 nativeAudioFormat];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v78 = *[(AVAudioFormat *)v7 streamDescription];
        v76 = [(AVAudioFormat *)v7 streamDescription][8];
        v11 = [(AVAudioFormat *)v7 streamDescription][16];
        v12 = [(AVAudioFormat *)v7 streamDescription][20];
        v13 = [(AVAudioFormat *)v7 streamDescription][24];
        v14 = [(AVAudioFormat *)v7 streamDescription][28];
        v15 = [(AVAudioFormat *)v7 streamDescription][32];
        *buf = 136317442;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 147;
        *&buf[28] = 2048;
        *&buf[30] = v78;
        *&buf[38] = 1024;
        *v87 = v76;
        *&v87[4] = 1024;
        *&v87[6] = v11;
        *v88 = 1024;
        *&v88[2] = v12;
        *&v88[6] = 1024;
        *&v88[8] = v13;
        v5 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
        *&v88[12] = 1024;
        *&v88[14] = v14;
        *&v88[18] = 1024;
        *v89 = v15;
        v16 = " [%s] %s:%d Recognizer request created. Preferred format: samplerate=%f formatid=%x bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
        v17 = v10;
        v18 = 74;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v79 = *[(AVAudioFormat *)v7 streamDescription];
        v77 = [(AVAudioFormat *)v7 streamDescription][8];
        v21 = [(AVAudioFormat *)v7 streamDescription][16];
        v22 = [(AVAudioFormat *)v7 streamDescription][20];
        v23 = [(AVAudioFormat *)v7 streamDescription][24];
        v24 = [(AVAudioFormat *)v7 streamDescription][28];
        v25 = [(AVAudioFormat *)v7 streamDescription][32];
        *buf = 136317954;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 147;
        *&buf[28] = 2112;
        *&buf[30] = v8;
        *&buf[38] = 2048;
        *v87 = self;
        *&v87[8] = 2048;
        *v88 = v79;
        *&v88[8] = 1024;
        *&v88[10] = v77;
        *&v88[14] = 1024;
        *&v88[16] = v21;
        *v89 = 1024;
        *&v89[2] = v22;
        v5 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
        v90 = 1024;
        v91 = v23;
        v92 = 1024;
        v93 = v24;
        v94 = 1024;
        v95 = v25;
        v16 = " [%s] %s:%d %@(%p) Recognizer request created. Preferred format: samplerate=%f formatid=%x bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
        v17 = v20;
        v18 = 94;
        goto LABEL_12;
      }
    }
  }

  [(SFSpeechAudioBufferRecognitionRequest *)v6 setShouldReportPartialResults:1];
  [(SFSpeechAudioBufferRecognitionRequest *)v6 setTaskHint:1004];
  [(SFSpeechAudioBufferRecognitionRequest *)v6 setTaskIdentifier:self->super._taskIdentifier];
  [(SFSpeechAudioBufferRecognitionRequest *)v6 setRequiresOnDeviceRecognition:1];
  [(SFSpeechAudioBufferRecognitionRequest *)v6 setDetectMultipleUtterances:1];
  [(SFSpeechAudioBufferRecognitionRequest *)v6 setAddsPunctuation:1];
  if (![(VCAudioCaptions *)self updateAudioConverterForStreamDescription:[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription]])
  {
    v66 = 0;
    audioBufferAllocator = 0;
    v65 = 4;
    v64 = @"Failed to create the converter. Captions will not be available";
    goto LABEL_61;
  }

  v26 = [(SFSpeechRecognizer *)self->_recognizer recognitionTaskWithRequest:v6 delegate:self];
  if (!v26)
  {
    v66 = 0;
    audioBufferAllocator = 0;
    v65 = 5;
    v64 = @"recognizer task failed!";
    goto LABEL_61;
  }

  v27 = v5[843];
  *(&self->super.super.super.isa + v27) = v26;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(&self->super.super.super.isa + v27);
        *buf = 136315906;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 165;
        *&buf[28] = 2048;
        *&buf[30] = v31;
        v32 = " [%s] %s:%d Created recognizer task=%p";
        v33 = v30;
        v34 = 38;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v28 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v28 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(&self->super.super.super.isa + v27);
        *buf = 136316418;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 165;
        *&buf[28] = 2112;
        *&buf[30] = v28;
        *&buf[38] = 2048;
        *v87 = self;
        *&v87[8] = 2048;
        *v88 = v37;
        v32 = " [%s] %s:%d %@(%p) Created recognizer task=%p";
        v33 = v36;
        v34 = 58;
        goto LABEL_25;
      }
    }
  }

  if (![VCAudioCaptions shouldAllocateNewAllocator:self->super._audioBufferAllocator streamDesc:[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription] referenceStreamDesc:[(ASBDWrapper *)self->super._captionsFormat asbdPointer]])
  {
    audioBufferAllocator = self->super._audioBufferAllocator;
    goto LABEL_40;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v80 = *[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription];
        v42 = [(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription][16];
        v43 = *[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription];
        LODWORD(v44) = [(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription][16];
        *buf = 136316418;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 168;
        *&buf[28] = 1024;
        *&buf[30] = v80;
        *&buf[34] = 1024;
        *&buf[36] = v42;
        *v87 = 1024;
        *&v87[2] = (v43 * v44 * 20.0) / 1000;
        v45 = " [%s] %s:%d Create captions audio buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
        v46 = v41;
        v47 = 46;
LABEL_38:
        _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v38 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:&selRef_maxAllowedBitrateForVCConnection_forLocalInterface_encodeRule_];
    }

    else
    {
      v38 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v50 = *[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription];
        v81 = [(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription][16];
        v51 = *[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription];
        LODWORD(v52) = [(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription][16];
        *buf = 136316930;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 168;
        *&buf[28] = 2112;
        *&buf[30] = v38;
        *&buf[38] = 2048;
        *v87 = self;
        *&v87[8] = 1024;
        *v88 = v50;
        v5 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
        *&v88[4] = 1024;
        *&v88[6] = v81;
        *&v88[10] = 1024;
        *&v88[12] = (v51 * v52 * 20.0) / 1000;
        v45 = " [%s] %s:%d %@(%p) Create captions audio buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
        v46 = v49;
        v47 = 66;
        goto LABEL_38;
      }
    }
  }

  v53 = *MEMORY[0x1E695E480];
  v54 = *[(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription];
  LODWORD(v55) = [(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)v6 nativeAudioFormat] streamDescription][16];
  audioBufferAllocator = VCAudioBufferAllocatorCreate(v53, (v54 * v55 * 20.0 / 1000.0), 2u);
  if (!audioBufferAllocator)
  {
    v66 = 0;
    v65 = 6;
    v64 = @"Failed to create captions audio buffer allocator!!";
    goto LABEL_61;
  }

LABEL_40:
  v56 = [VCCaptionTaskInfo alloc];
  v57 = *(&self->super.super.super.isa + v27);
  streamToken = self->super._streamToken;
  ++self->super._currentUtteranceNumber;
  v59 = [(VCCaptionTaskInfo *)v56 initWithTask:v57 token:streamToken utteranceNumber:?];
  if (v59)
  {
    v60 = v59;
    [(NSMutableArray *)self->super._captionTasks addObject:v59];

    self->super._currentTaskInfo = v60;
    if (self->super._lastAudioProcessedTime.flags)
    {
      *buf = *&self->super._lastAudioProcessedTime.value;
      *&buf[16] = self->super._lastAudioProcessedTime.epoch;
      self->super._captionsLastUtteranceStart = CMTimeGetSeconds(buf);
    }

    self->_recognizerRequest = v6;
    self->super._audioBufferAllocator = audioBufferAllocator;
    v61 = [(AVAudioFormat *)[(SFSpeechAudioBufferRecognitionRequest *)self->_recognizerRequest nativeAudioFormat] streamDescription];
    v85 = *&v61->mBitsPerChannel;
    v83 = *&v61->mSampleRate;
    v84 = *&v61->mBytesPerPacket;
    captionsFormat = self->super._captionsFormat;
    *buf = v83;
    *&buf[16] = v84;
    *&buf[32] = v85;
    [(ASBDWrapper *)captionsFormat setAsbd:buf];
    return *(&self->super.super.super.isa + v5[843]) != 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:];
      }
    }

    v64 = 0;
    v65 = 0;
    v66 = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v67 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:&selRef_maxAllowedBitrateForVCConnection_forLocalInterface_encodeRule_];
    }

    else
    {
      v67 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v68 = VRTraceErrorLogLevelToCSTR();
      v69 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v68;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 176;
        *&buf[28] = 2112;
        *&buf[30] = v67;
        *&buf[38] = 2048;
        *v87 = self;
        _os_log_error_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) taskInfo failed to allocate", buf, 0x30u);
      }
    }

    v64 = 0;
    v65 = 0;
    v66 = 1;
  }

LABEL_61:
  [(SFSpeechAudioBufferRecognitionRequest *)v6 endAudio];

  if (audioBufferAllocator)
  {
    CFRelease(audioBufferAllocator);
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_64;
  }

  return *(&self->super.super.super.isa + v5[843]) != 0;
}

- (void)stopCaptions
{
  [(SFSpeechAudioBufferRecognitionRequest *)self->_recognizerRequest endAudio];
  [(SFSpeechRecognitionTask *)self->_recognizerTask finish];
  if (self->_recognizerTask)
  {
    ++self->super._captionTaskCount;
  }
}

- (BOOL)shouldPushSamples
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->super._recognizerState == 2)
  {
    recognizerTask = self->_recognizerTask;
    if (recognizerTask)
    {
      if ([(SFSpeechRecognitionTask *)recognizerTask state]!= SFSpeechRecognitionTaskStateFinishing && [(SFSpeechRecognitionTask *)self->_recognizerTask state]!= SFSpeechRecognitionTaskStateCanceling && self->_isSpeechModelLoaded)
      {
        return 1;
      }
    }
  }

  HIDWORD(v5) = -1030792151 * self->super._logMessageCounter;
  LODWORD(v5) = HIDWORD(v5);
  if ((v5 >> 1) <= 0x51EB851)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_8;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      recognizerState = self->super._recognizerState;
      v16 = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "[VCAudioCaptionsSpeechRecognizer shouldPushSamples]";
      v20 = 1024;
      v21 = 242;
      v22 = 1024;
      LODWORD(v23) = recognizerState;
      v10 = " [%s] %s:%d Will not push samples; Recognizer state=%d";
      v11 = v8;
      v12 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_8;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v15 = self->super._recognizerState;
      v16 = 136316418;
      v17 = v13;
      v18 = 2080;
      v19 = "[VCAudioCaptionsSpeechRecognizer shouldPushSamples]";
      v20 = 1024;
      v21 = 242;
      v22 = 2112;
      v23 = v6;
      v24 = 2048;
      v25 = self;
      v26 = 1024;
      v27 = v15;
      v10 = " [%s] %s:%d %@(%p) Will not push samples; Recognizer state=%d";
      v11 = v14;
      v12 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
  }

LABEL_8:
  result = 0;
  ++self->super._logMessageCounter;
  return result;
}

- (void)pushSamples:(char *)a3 numSamples:(int)a4 hostTime:(double)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(VCAudioCaptions *)self convertSamples:a3 numSamples:*&a4, VCCaptionTaskInfo_HostTime(self->super._currentTaskInfo)];
  self->super._isAudioConverterActive = 1;
  if (v6)
  {
    v7 = v6;
    [(VCAudioCaptions *)self recordAudioSampleMetrics];
    [(SFSpeechAudioBufferRecognitionRequest *)self->_recognizerRequest appendAudioSampleBuffer:v7];

    CFRelease(v7);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechRecognizer pushSamples:numSamples:hostTime:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCAudioCaptionsSpeechRecognizer pushSamples:numSamples:hostTime:]";
        v15 = 1024;
        v16 = 277;
        v17 = 2112;
        v18 = v8;
        v19 = 2048;
        v20 = self;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Sample buffer is nil", &v11, 0x30u);
      }
    }
  }
}

- (void)packageAndSendTranscribedString:(id)a3 withTask:(id)a4 final:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a3 "segments")] || !-[VCAudioCaptions delegate](self, "delegate"))
  {
    return;
  }

  v9 = [(VCAudioCaptions *)self taskInfoForTask:a4];
  if (!v9)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315650;
      v22 = v13;
      v23 = 2080;
      v24 = "[VCAudioCaptionsSpeechRecognizer packageAndSendTranscribedString:withTask:final:]";
      v25 = 1024;
      v26 = 292;
      v15 = " [%s] %s:%d Cannot sendTranscription as we don't have a task for it";
      v16 = v14;
      v17 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136316162;
      v22 = v18;
      v23 = 2080;
      v24 = "[VCAudioCaptionsSpeechRecognizer packageAndSendTranscribedString:withTask:final:]";
      v25 = 1024;
      v26 = 292;
      v27 = 2112;
      v28 = v12;
      v29 = 2048;
      v30 = self;
      v15 = " [%s] %s:%d %@(%p) Cannot sendTranscription as we don't have a task for it";
      v16 = v19;
      v17 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return;
  }

  v10 = v9;
  v11 = [[VCCaptionsTranscription alloc] initWithSFTranscription:a3 taskInfo:v9 isLocal:self->super._isLocal isFinal:v5];
  if (v11)
  {
    v20 = v11;
    [(VCAudioCaptions *)self sendTranscriptionResult:v11 taskInfo:v10];
  }
}

- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  captionsQueue = self->super._captionsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__VCAudioCaptionsSpeechRecognizer_speechRecognitionTask_didHypothesizeTranscription___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a3;
  dispatch_async(captionsQueue, v5);
}

- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = [objc_msgSend(objc_msgSend(a4 "bestTranscription")];
        [objc_msgSend(a4 "speechRecognitionMetadata")];
        *buf = 136316418;
        v22 = v8;
        v23 = 2080;
        v24 = "[VCAudioCaptionsSpeechRecognizer speechRecognitionTask:didFinishRecognition:]";
        v25 = 1024;
        v26 = 318;
        v27 = 2048;
        v28 = a3;
        v29 = 1024;
        *v30 = v10;
        *&v30[4] = 2048;
        *&v30[6] = v11;
        v12 = " [%s] %s:%d speechRecognitionTask=%p didFinishRecognition (final) count=%d, duration=%f";
        v13 = v9;
        v14 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = [objc_msgSend(objc_msgSend(a4 "bestTranscription")];
        [objc_msgSend(a4 "speechRecognitionMetadata")];
        *buf = 136316930;
        v22 = v15;
        v23 = 2080;
        v24 = "[VCAudioCaptionsSpeechRecognizer speechRecognitionTask:didFinishRecognition:]";
        v25 = 1024;
        v26 = 318;
        v27 = 2112;
        v28 = v7;
        v29 = 2048;
        *v30 = self;
        *&v30[8] = 2048;
        *&v30[10] = a3;
        v31 = 1024;
        v32 = v17;
        v33 = 2048;
        v34 = v18;
        v12 = " [%s] %s:%d %@(%p) speechRecognitionTask=%p didFinishRecognition (final) count=%d, duration=%f";
        v13 = v16;
        v14 = 74;
        goto LABEL_11;
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__VCAudioCaptionsSpeechRecognizer_speechRecognitionTask_didFinishRecognition___block_invoke;
  block[3] = &unk_1E85F3E30;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(captionsQueue, block);
}

uint64_t __78__VCAudioCaptionsSpeechRecognizer_speechRecognitionTask_didFinishRecognition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bestTranscription];
  v4 = *(a1 + 48);

  return [v2 packageAndSendTranscribedString:v3 withTask:v4 final:1];
}

- (void)speechRecognitionTaskWasCancelled:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  captionsQueue = self->super._captionsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__VCAudioCaptionsSpeechRecognizer_speechRecognitionTaskWasCancelled___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(captionsQueue, v4);
}

uint64_t __69__VCAudioCaptionsSpeechRecognizer_speechRecognitionTaskWasCancelled___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v1 = *(a1 + 32);
  if (v1[169])
  {
    v2 = 1;
  }

  else
  {
    v2 = v1[168];
  }

  return [v1 transitionToState:v2 withReason:2 error:v4];
}

- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a4 && [a3 error])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCAudioCaptionsSpeechRecognizer *)v7 speechRecognitionTask:a3 didFinishSuccessfully:v8];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioCaptionsSpeechRecognizer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCAudioCaptionsSpeechRecognizer speechRecognitionTask:didFinishSuccessfully:]";
          v17 = 1024;
          v18 = 333;
          v19 = 2112;
          v20 = v6;
          v21 = 2048;
          v22 = self;
          v23 = 2112;
          v24 = [objc_msgSend(a3 "error")];
          v25 = 1024;
          v26 = [objc_msgSend(a3 "error")];
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Task failed with error: %@, status: %d", buf, 0x40u);
        }
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__VCAudioCaptionsSpeechRecognizer_speechRecognitionTask_didFinishSuccessfully___block_invoke;
  v12[3] = &unk_1E85F37F0;
  v12[4] = self;
  v12[5] = a3;
  dispatch_async(captionsQueue, v12);
}

uint64_t __79__VCAudioCaptionsSpeechRecognizer_speechRecognitionTask_didFinishSuccessfully___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 544);
  v2 = [*(a1 + 32) taskInfoForTask:*(a1 + 40)];

  return [v1 removeObject:v2];
}

- (void)speechRecognizer:(id)a3 availabilityDidChange:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  captionsQueue = self->super._captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__VCAudioCaptionsSpeechRecognizer_speechRecognizer_availabilityDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v6 = a4;
  dispatch_async(captionsQueue, block);
}

uint64_t __74__VCAudioCaptionsSpeechRecognizer_speechRecognizer_availabilityDidChange___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 168) != 1 || *(result + 170) != 1)
  {
    return result;
  }

  v16 = 0;
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    *buf = 136316418;
    v18 = v10;
    v19 = 2080;
    v20 = "[VCAudioCaptionsSpeechRecognizer speechRecognizer:availabilityDidChange:]_block_invoke";
    v21 = 1024;
    v22 = 350;
    v23 = 2112;
    v24 = v3;
    v25 = 2048;
    v26 = v12;
    v27 = 1024;
    v28 = v13;
    v7 = " [%s] %s:%d %@(%p) Speech model availability status=%d";
    v8 = v11;
    v9 = 54;
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315906;
      v18 = v4;
      v19 = 2080;
      v20 = "[VCAudioCaptionsSpeechRecognizer speechRecognizer:availabilityDidChange:]_block_invoke";
      v21 = 1024;
      v22 = 350;
      v23 = 1024;
      LODWORD(v24) = v6;
      v7 = " [%s] %s:%d Speech model availability status=%d";
      v8 = v5;
      v9 = 34;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

LABEL_14:
  if (*(a1 + 40))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (*(a1 + 40))
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  return [*(a1 + 32) transitionToState:v14 withReason:v15 error:&v16];
}

- (void)initWithDelegate:isLocal:taskIdentifier:reportingAgent:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioCaptionsSpeechRecognizer-init FAILED", v2, v3, v4, v5, v6);
}

- (void)recognizerBufferSetupWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d taskInfo failed to allocate", v2, v3, v4, v5, v6);
}

- (void)recognizerBufferSetupWithError:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCAudioCaptionsSpeechRecognizer recognizerBufferSetupWithError:]";
  v8 = 1024;
  v9 = 202;
  v10 = 2080;
  v11 = [objc_msgSend(a2 "description")];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s", &v4, 0x26u);
}

- (void)pushSamples:numSamples:hostTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Sample buffer is nil", v2, v3, v4, v5, v6);
}

- (void)speechRecognitionTask:(NSObject *)a3 didFinishSuccessfully:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = 136316162;
  v6 = a1;
  v7 = 2080;
  v8 = "[VCAudioCaptionsSpeechRecognizer speechRecognitionTask:didFinishSuccessfully:]";
  v9 = 1024;
  v10 = 333;
  v11 = 2112;
  v12 = [objc_msgSend(a2 "error")];
  v13 = 1024;
  v14 = [objc_msgSend(a2 "error")];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Task failed with error: %@, status: %d", &v5, 0x2Cu);
}

@end