@interface _LTSpeechTranslationRequest
+ (id)generateSilentAudioDataWithDuration:(double)a3;
- (_LTSpeechTranslationDelegate)delegate;
- (_LTSpeechTranslationRequest)initWithLocalePair:(id)a3 suggestedUniqueID:(id)a4;
- (_LTSpeechTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 suggestedUniqueID:(id)a5;
- (id)nativeAudioFormat;
- (id)requestContext;
- (id)setUpAudioCaptureFile:(id)a3 withFormat:(id)a4;
- (void)_appendAudioPCMBuffer:(id)a3;
- (void)_appendAudioSampleBuffer:(opaqueCMSampleBuffer *)a3 simulateRealtime:(BOOL)a4;
- (void)_convertAndFeedPCMBuffer:(id)a3;
- (void)_drainAndClearAudioConverter;
- (void)_simulateRealtimeBehavior:(id)a3;
- (void)_startTranslationWithService:(id)a3 done:(id)a4;
- (void)_translationFailedWithError:(id)a3;
- (void)append:(opaqueCMSampleBuffer *)a3 simulateRealtime:(BOOL)a4;
- (void)appendAudioPCMBuffer:(id)a3;
- (void)endAudio;
- (void)hybridEndpointerFoundEndpoint;
- (void)languageDetectionCompleted;
- (void)languageDetectionResult:(id)a3;
- (void)serverEndpointerFeatures:(id)a3 locale:(id)a4;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)a3;
- (void)translationDidFinishWithError:(id)a3;
- (void)translatorDidTranslate:(id)a3;
@end

@implementation _LTSpeechTranslationRequest

- (id)requestContext
{
  v8.receiver = self;
  v8.super_class = _LTSpeechTranslationRequest;
  v3 = [(_LTTranslationRequest *)&v8 requestContext];
  v4 = [(_LTTranslationRequest *)self outputFileURL];
  [v3 setOutputFileURL:v4];

  v5 = [(_LTSpeechTranslationRequest *)self _offlineASRModelURLs];
  [v3 setAsrModelURLs:v5];

  [v3 setAutoEndpoint:{-[_LTSpeechTranslationRequest autoEndpoint](self, "autoEndpoint")}];
  [v3 setEnableStreamingSpeechTranslation:{-[_LTSpeechTranslationRequest enableStreamingSpeechTranslation](self, "enableStreamingSpeechTranslation")}];
  [v3 setEnableMultiFieldInput:{-[_LTSpeechTranslationRequest enableMultiFieldInput](self, "enableMultiFieldInput")}];
  [v3 setEnableTranslationSemanticSegmentation:{-[_LTSpeechTranslationRequest enableTranslationSemanticSegmentation](self, "enableTranslationSemanticSegmentation")}];
  [v3 setLidThreshold:{-[_LTSpeechTranslationRequest _lidThreshold](self, "_lidThreshold")}];
  [v3 setAsrConfidenceThreshold:{-[_LTSpeechTranslationRequest _asrConfidenceThreshold](self, "_asrConfidenceThreshold")}];
  [v3 setEnableVAD:{-[_LTSpeechTranslationRequest enableVAD](self, "enableVAD")}];
  [v3 setEnableAirPodsOwnVAD:{-[_LTSpeechTranslationRequest enableAirPodsOwnVAD](self, "enableAirPodsOwnVAD")}];
  v6 = 1;
  [v3 setCancelOnCleanup:1];
  [v3 setRoute:0];
  if (![(_LTTranslationRequest *)self forcedOfflineTranslation])
  {
    if ([(_LTTranslationRequest *)self _forcedOnlineTranslation])
    {
      v6 = 2;
    }

    else
    {
      if (![(_LTTranslationRequest *)self preferOnDeviceIfAvailable])
      {
        goto LABEL_7;
      }

      v6 = 3;
    }
  }

  [v3 setRoute:v6];
LABEL_7:

  return v3;
}

- (_LTSpeechTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 suggestedUniqueID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_LTLocalePair alloc] initWithSourceLocale:v10 targetLocale:v9];

  v12 = [(_LTSpeechTranslationRequest *)self initWithLocalePair:v11 suggestedUniqueID:v8];
  return v12;
}

- (_LTSpeechTranslationRequest)initWithLocalePair:(id)a3 suggestedUniqueID:(id)a4
{
  v10.receiver = self;
  v10.super_class = _LTSpeechTranslationRequest;
  v4 = [(_LTTranslationRequest *)&v10 initWithLocalePair:a3 suggestedUniqueID:a4];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.siri.translation.speechrequest", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v4->__asrConfidenceThreshold = -1;
    v4->__lidThreshold = -1;
    v4->_autoEndpoint = 0;
    if (_LTIsInternalInstall())
    {
      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v4->_audioCaptureEnabled = [v7 BOOLForKey:@"SaveAudioRecordings"];
    }

    else
    {
      v4->_audioCaptureEnabled = 0;
    }

    v8 = v4;
  }

  return v4;
}

- (id)nativeAudioFormat
{
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&SupportedASBD];

  return v2;
}

- (void)_startTranslationWithService:(id)a3 done:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_DEFAULT, "Start speech translation with service", buf, 2u);
  }

  v9 = [(_LTTranslationRequest *)self logIdentifier];
  v10 = [(_LTTranslationRequest *)self localePair];
  [(_LTTranslationRequest *)self setLogIdentifier:v9];

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTSpeechTranslationRequest__startTranslationWithService_done___block_invoke;
  block[3] = &unk_278B6CCE0;
  objc_copyWeak(&v17, buf);
  v15 = v6;
  v16 = v7;
  v12 = v6;
  v13 = v7;
  dispatch_async(queue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)_translationFailedWithError:(id)a3
{
  v7 = a3;
  v4 = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTSpeechTranslationRequest *)self delegate];
    [v6 translationDidFinishWithError:v7];
  }
}

- (void)_appendAudioPCMBuffer:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(_LTSpeechTranslationRequest *)self nativeAudioFormat];
  v5 = [v9 format];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v9 int16ChannelData];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*v7 length:{2 * objc_msgSend(v9, "frameLength")}];
    [(_LTTranslationService *)self->_service addSpeechAudioData:v8];
  }

  else
  {
    [(_LTSpeechTranslationRequest *)self _convertAndFeedPCMBuffer:v9];
  }
}

- (void)appendAudioPCMBuffer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___LTSpeechTranslationRequest_appendAudioPCMBuffer___block_invoke;
  v7[3] = &unk_278B6DB58;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_simulateRealtimeBehavior:(id)a3
{
  v17 = a3;
  v4 = [v17 length];
  v5 = [MEMORY[0x277CCAC38] processInfo];
  [v5 systemUptime];
  v7 = v6;

  if (v4 >= 1)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v9 = v9 + 0.02;
      [MEMORY[0x277CCACC8] sleepForTimeInterval:v9 - v10];
      v11 = [MEMORY[0x277CCAC38] processInfo];
      [v11 systemUptime];
      v10 = v12 - v7;

      if (v4 >= 0x280)
      {
        v13 = 640;
      }

      else
      {
        v13 = v4;
      }

      service = self->_service;
      v15 = [v17 subdataWithRange:{v8, v13}];
      [(_LTTranslationService *)service addSpeechAudioData:v15];

      v8 += v13;
      v16 = v4 <= v13;
      v4 -= v13;
    }

    while (!v16);
  }
}

- (void)_appendAudioSampleBuffer:(opaqueCMSampleBuffer *)a3 simulateRealtime:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  mSampleRate = StreamBasicDescription->mSampleRate;
  if ((StreamBasicDescription->mSampleRate == 16000.0 || mSampleRate == 8000.0) && StreamBasicDescription->mFormatID == 1819304813 && StreamBasicDescription->mFormatFlags == 12 && StreamBasicDescription->mBytesPerPacket == 2 && StreamBasicDescription->mFramesPerPacket == 1 && StreamBasicDescription->mBytesPerFrame == 2 && StreamBasicDescription->mChannelsPerFrame == 1 && StreamBasicDescription->mBitsPerChannel == 16)
  {
    [(_LTSpeechTranslationRequest *)self _drainAndClearAudioConverter];
    if (CMSampleBufferGetNumSamples(a3))
    {
      totalLengthOut = 0;
      dataPointerOut = 0;
      DataBuffer = CMSampleBufferGetDataBuffer(a3);
      if (CMBlockBufferGetDataPointer(DataBuffer, 0, 0, &totalLengthOut, &dataPointerOut))
      {
        DataLength = CMBlockBufferGetDataLength(DataBuffer);
        v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:DataLength];
        if (CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, [v12 mutableBytes]))
        {
          v13 = _LTOSLogSpeech();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [_LTSpeechTranslationRequest _appendAudioSampleBuffer:simulateRealtime:];
          }

          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      else
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:dataPointerOut length:totalLengthOut];
      }

      if (v14)
      {
        if (v4)
        {
          [(_LTSpeechTranslationRequest *)self _simulateRealtimeBehavior:v14];
        }

        else
        {
          [(_LTTranslationService *)self->_service addSpeechAudioData:v14];
        }
      }
    }
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:StreamBasicDescription];
    v15 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v17 frameCapacity:CMSampleBufferGetNumSamples(a3)];
    [v15 setFrameLength:CMSampleBufferGetNumSamples(a3)];
    NumSamples = CMSampleBufferGetNumSamples(a3);
    CMSampleBufferCopyPCMDataIntoAudioBufferList(a3, 0, NumSamples, [v15 mutableAudioBufferList]);
    [(_LTSpeechTranslationRequest *)self _convertAndFeedPCMBuffer:v15];
  }
}

- (void)append:(opaqueCMSampleBuffer *)a3 simulateRealtime:(BOOL)a4
{
  v7 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Append audio data", buf, 2u);
  }

  objc_initWeak(buf, self);
  v8 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___LTSpeechTranslationRequest_append_simulateRealtime___block_invoke;
  v11[3] = &unk_278B6CD58;
  objc_copyWeak(&v14, buf);
  v12 = v8;
  v13 = self;
  v15 = a4;
  v10 = v8;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_drainAndClearAudioConverter
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_convertAndFeedPCMBuffer:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v25 = [v4 format];
  v24 = [(_LTSpeechTranslationRequest *)self nativeAudioFormat];
  v5 = [(AVAudioConverter *)self->_converter inputFormat];
  v6 = [v5 isEqual:v25];

  if ((v6 & 1) == 0)
  {
    [(_LTSpeechTranslationRequest *)self _drainAndClearAudioConverter];
    v7 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:v25 toFormat:v24];
    converter = self->_converter;
    self->_converter = v7;

    [(AVAudioConverter *)self->_converter setSampleRateConverterQuality:127];
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  while (1)
  {
    v9 = objc_alloc(MEMORY[0x277CB83C8]);
    v10 = [(_LTSpeechTranslationRequest *)self nativeAudioFormat];
    v11 = [v9 initWithPCMFormat:v10 frameCapacity:8000];

    [v11 setFrameLength:8000];
    v12 = self->_converter;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56___LTSpeechTranslationRequest__convertAndFeedPCMBuffer___block_invoke;
    v27[3] = &unk_278B6DBA0;
    v29 = v31;
    v30 = 0;
    v13 = v4;
    v28 = v13;
    v14 = [(AVAudioConverter *)v12 convertToBuffer:v11 error:&v30 withInputFromBlock:v27];
    v15 = v30;
    if (v14 == 2)
    {
      break;
    }

    if (v14 == 3)
    {
      v19 = _LTOSLogSpeech();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationRequest _convertAndFeedPCMBuffer:];
      }

      break;
    }

    if (self->_audioCaptureEnabled)
    {
      finalASRInputCaptureFile = self->_finalASRInputCaptureFile;
      if (finalASRInputCaptureFile)
      {
        v26 = 0;
        [(AVAudioFile *)finalASRInputCaptureFile writeFromBuffer:v11 error:&v26];
        v17 = v26;
        if (v17)
        {
          v20 = v17;
          v21 = _LTOSLogSpeech();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v20 localizedDescription];
            [(_LTSpeechTranslationRequest *)v22 _convertAndFeedPCMBuffer:buf, v21];
          }

          break;
        }
      }
    }

    v18 = [MEMORY[0x277CBEA90] dataWithBytes:*objc_msgSend(v11 length:{"int16ChannelData"), 2 * objc_msgSend(v11, "frameLength")}];
    [(_LTTranslationService *)self->_service addSpeechAudioData:v18];

    if (v14 == 1)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  _Block_object_dispose(v31, 8);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___LTSpeechTranslationRequest_endAudio__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)speechActivityDetected
{
  v3 = [(_LTSpeechTranslationRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_LTSpeechTranslationRequest *)self delegate];
    [v5 speechActivityDetected];
  }
}

- (void)languageDetectionCompleted
{
  v3 = [(_LTSpeechTranslationRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_LTSpeechTranslationRequest *)self delegate];
    [v5 languageDetectionCompleted];
  }
}

- (void)languageDetectionResult:(id)a3
{
  v7 = a3;
  v4 = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTSpeechTranslationRequest *)self delegate];
    [v6 languageDetectionResult:v7];
  }
}

- (void)hybridEndpointerFoundEndpoint
{
  v3 = [(_LTSpeechTranslationRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_LTSpeechTranslationRequest *)self delegate];
    [v5 hybridEndpointerFoundEndpoint];
  }
}

- (void)serverEndpointerFeatures:(id)a3 locale:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(_LTSpeechTranslationRequest *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(_LTSpeechTranslationRequest *)self delegate];
    [v9 serverEndpointerFeatures:v10 locale:v6];
  }
}

- (void)speechRecognitionResult:(id)a3
{
  v7 = a3;
  v4 = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTSpeechTranslationRequest *)self delegate];
    [v6 speechRecognitionResult:v7];
  }
}

- (void)translatorDidTranslate:(id)a3
{
  v7 = a3;
  v4 = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTSpeechTranslationRequest *)self delegate];
    [v6 translatorDidTranslate:v7];

    [(_LTTranslationRequest *)self logIdentifier];
  }
}

- (void)translationDidFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTSpeechTranslationRequest *)self delegate];
    [v6 translationDidFinishWithError:v8];

    [(_LTTranslationRequest *)self logIdentifier];
  }

  done = self->_done;
  if (done)
  {
    done[2]();
  }
}

- (id)setUpAudioCaptureFile:(id)a3 withFormat:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CBEBD0];
  v7 = a3;
  v8 = [v6 standardUserDefaults];
  v9 = [v8 stringForKey:@"AudioRecordingPath"];

  if (!v9)
  {
    v10 = NSTemporaryDirectory();
    v9 = [v10 stringByAppendingPathComponent:@"TranslateRecordings"];
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateFormat:@"yyyyMMdd.HHmmss"];
  v13 = [v12 stringFromDate:v11];
  v14 = [v13 stringByAppendingFormat:@"_%@.caf", v7];

  v15 = MEMORY[0x277CBEBC0];
  v16 = [v9 stringByAppendingPathComponent:v14];
  v17 = [v15 fileURLWithPath:v16 isDirectory:0];

  v18 = objc_alloc(MEMORY[0x277CB8398]);
  v19 = [v5 settings];
  v29 = 0;
  v20 = [v18 initForWriting:v17 settings:v19 commonFormat:objc_msgSend(v5 interleaved:"commonFormat") error:objc_msgSend(v5, "isInterleaved"), &v29];
  v21 = v29;

  v22 = _LTOSLogSpeech();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(_LTSpeechTranslationRequest *)v23 setUpAudioCaptureFile:v17 withFormat:v21];
    }

    v24 = 0;
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = v23;
      v28 = [v17 path];
      *buf = 138412546;
      v31 = v28;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_23AAF5000, v25, OS_LOG_TYPE_INFO, "Created audio file: %@ with format %@", buf, 0x16u);
    }

    v24 = v20;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)generateSilentAudioDataWithDuration:(double)a3
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:2 * (a3 * 16000.0)];
  v4 = [v3 copy];

  return v4;
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_appendAudioSampleBuffer:simulateRealtime:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_convertAndFeedPCMBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_convertAndFeedPCMBuffer:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Failed to write capture file: %@", buf, 0xCu);
}

- (void)setUpAudioCaptureFile:(void *)a3 withFormat:.cold.1(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 path];
  v7 = [a3 localizedDescription];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_ERROR, "Failed to create audio capture file at %@ for writing: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end