@interface _LTSpeechTranslationRequest
+ (id)generateSilentAudioDataWithDuration:(double)duration;
- (_LTSpeechTranslationDelegate)delegate;
- (_LTSpeechTranslationRequest)initWithLocalePair:(id)pair suggestedUniqueID:(id)d;
- (_LTSpeechTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale suggestedUniqueID:(id)d;
- (id)nativeAudioFormat;
- (id)requestContext;
- (id)setUpAudioCaptureFile:(id)file withFormat:(id)format;
- (void)_appendAudioPCMBuffer:(id)buffer;
- (void)_appendAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer simulateRealtime:(BOOL)realtime;
- (void)_convertAndFeedPCMBuffer:(id)buffer;
- (void)_drainAndClearAudioConverter;
- (void)_simulateRealtimeBehavior:(id)behavior;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_translationFailedWithError:(id)error;
- (void)append:(opaqueCMSampleBuffer *)append simulateRealtime:(BOOL)realtime;
- (void)appendAudioPCMBuffer:(id)buffer;
- (void)endAudio;
- (void)hybridEndpointerFoundEndpoint;
- (void)languageDetectionCompleted;
- (void)languageDetectionResult:(id)result;
- (void)serverEndpointerFeatures:(id)features locale:(id)locale;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)result;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation _LTSpeechTranslationRequest

- (id)requestContext
{
  v8.receiver = self;
  v8.super_class = _LTSpeechTranslationRequest;
  requestContext = [(_LTTranslationRequest *)&v8 requestContext];
  outputFileURL = [(_LTTranslationRequest *)self outputFileURL];
  [requestContext setOutputFileURL:outputFileURL];

  _offlineASRModelURLs = [(_LTSpeechTranslationRequest *)self _offlineASRModelURLs];
  [requestContext setAsrModelURLs:_offlineASRModelURLs];

  [requestContext setAutoEndpoint:{-[_LTSpeechTranslationRequest autoEndpoint](self, "autoEndpoint")}];
  [requestContext setEnableStreamingSpeechTranslation:{-[_LTSpeechTranslationRequest enableStreamingSpeechTranslation](self, "enableStreamingSpeechTranslation")}];
  [requestContext setEnableMultiFieldInput:{-[_LTSpeechTranslationRequest enableMultiFieldInput](self, "enableMultiFieldInput")}];
  [requestContext setEnableTranslationSemanticSegmentation:{-[_LTSpeechTranslationRequest enableTranslationSemanticSegmentation](self, "enableTranslationSemanticSegmentation")}];
  [requestContext setLidThreshold:{-[_LTSpeechTranslationRequest _lidThreshold](self, "_lidThreshold")}];
  [requestContext setAsrConfidenceThreshold:{-[_LTSpeechTranslationRequest _asrConfidenceThreshold](self, "_asrConfidenceThreshold")}];
  [requestContext setEnableVAD:{-[_LTSpeechTranslationRequest enableVAD](self, "enableVAD")}];
  [requestContext setEnableAirPodsOwnVAD:{-[_LTSpeechTranslationRequest enableAirPodsOwnVAD](self, "enableAirPodsOwnVAD")}];
  v6 = 1;
  [requestContext setCancelOnCleanup:1];
  [requestContext setRoute:0];
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

  [requestContext setRoute:v6];
LABEL_7:

  return requestContext;
}

- (_LTSpeechTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale suggestedUniqueID:(id)d
{
  dCopy = d;
  targetLocaleCopy = targetLocale;
  localeCopy = locale;
  v11 = [[_LTLocalePair alloc] initWithSourceLocale:localeCopy targetLocale:targetLocaleCopy];

  v12 = [(_LTSpeechTranslationRequest *)self initWithLocalePair:v11 suggestedUniqueID:dCopy];
  return v12;
}

- (_LTSpeechTranslationRequest)initWithLocalePair:(id)pair suggestedUniqueID:(id)d
{
  v10.receiver = self;
  v10.super_class = _LTSpeechTranslationRequest;
  v4 = [(_LTTranslationRequest *)&v10 initWithLocalePair:pair suggestedUniqueID:d];
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
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v4->_audioCaptureEnabled = [standardUserDefaults BOOLForKey:@"SaveAudioRecordings"];
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

- (void)_startTranslationWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
  v8 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_DEFAULT, "Start speech translation with service", buf, 2u);
  }

  logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
  localePair = [(_LTTranslationRequest *)self localePair];
  [(_LTTranslationRequest *)self setLogIdentifier:logIdentifier];

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTSpeechTranslationRequest__startTranslationWithService_done___block_invoke;
  block[3] = &unk_278B6CCE0;
  objc_copyWeak(&v17, buf);
  v15 = serviceCopy;
  v16 = doneCopy;
  v12 = serviceCopy;
  v13 = doneCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)_translationFailedWithError:(id)error
{
  errorCopy = error;
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 translationDidFinishWithError:errorCopy];
  }
}

- (void)_appendAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  dispatch_assert_queue_V2(self->_queue);
  nativeAudioFormat = [(_LTSpeechTranslationRequest *)self nativeAudioFormat];
  format = [bufferCopy format];
  v6 = [nativeAudioFormat isEqual:format];

  if (v6)
  {
    int16ChannelData = [bufferCopy int16ChannelData];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*int16ChannelData length:{2 * objc_msgSend(bufferCopy, "frameLength")}];
    [(_LTTranslationService *)self->_service addSpeechAudioData:v8];
  }

  else
  {
    [(_LTSpeechTranslationRequest *)self _convertAndFeedPCMBuffer:bufferCopy];
  }
}

- (void)appendAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___LTSpeechTranslationRequest_appendAudioPCMBuffer___block_invoke;
  v7[3] = &unk_278B6DB58;
  objc_copyWeak(&v10, &location);
  v8 = bufferCopy;
  selfCopy = self;
  v6 = bufferCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_simulateRealtimeBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v4 = [behaviorCopy length];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
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
      processInfo2 = [MEMORY[0x277CCAC38] processInfo];
      [processInfo2 systemUptime];
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
      v15 = [behaviorCopy subdataWithRange:{v8, v13}];
      [(_LTTranslationService *)service addSpeechAudioData:v15];

      v8 += v13;
      v16 = v4 <= v13;
      v4 -= v13;
    }

    while (!v16);
  }
}

- (void)_appendAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer simulateRealtime:(BOOL)realtime
{
  realtimeCopy = realtime;
  dispatch_assert_queue_V2(self->_queue);
  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  mSampleRate = StreamBasicDescription->mSampleRate;
  if ((StreamBasicDescription->mSampleRate == 16000.0 || mSampleRate == 8000.0) && StreamBasicDescription->mFormatID == 1819304813 && StreamBasicDescription->mFormatFlags == 12 && StreamBasicDescription->mBytesPerPacket == 2 && StreamBasicDescription->mFramesPerPacket == 1 && StreamBasicDescription->mBytesPerFrame == 2 && StreamBasicDescription->mChannelsPerFrame == 1 && StreamBasicDescription->mBitsPerChannel == 16)
  {
    [(_LTSpeechTranslationRequest *)self _drainAndClearAudioConverter];
    if (CMSampleBufferGetNumSamples(buffer))
    {
      totalLengthOut = 0;
      dataPointerOut = 0;
      DataBuffer = CMSampleBufferGetDataBuffer(buffer);
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
        if (realtimeCopy)
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
    v15 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v17 frameCapacity:CMSampleBufferGetNumSamples(buffer)];
    [v15 setFrameLength:CMSampleBufferGetNumSamples(buffer)];
    NumSamples = CMSampleBufferGetNumSamples(buffer);
    CMSampleBufferCopyPCMDataIntoAudioBufferList(buffer, 0, NumSamples, [v15 mutableAudioBufferList]);
    [(_LTSpeechTranslationRequest *)self _convertAndFeedPCMBuffer:v15];
  }
}

- (void)append:(opaqueCMSampleBuffer *)append simulateRealtime:(BOOL)realtime
{
  v7 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Append audio data", buf, 2u);
  }

  objc_initWeak(buf, self);
  appendCopy = append;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___LTSpeechTranslationRequest_append_simulateRealtime___block_invoke;
  v11[3] = &unk_278B6CD58;
  objc_copyWeak(&v14, buf);
  v12 = appendCopy;
  selfCopy = self;
  realtimeCopy = realtime;
  v10 = appendCopy;
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

- (void)_convertAndFeedPCMBuffer:(id)buffer
{
  v34 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  dispatch_assert_queue_V2(self->_queue);
  format = [bufferCopy format];
  nativeAudioFormat = [(_LTSpeechTranslationRequest *)self nativeAudioFormat];
  inputFormat = [(AVAudioConverter *)self->_converter inputFormat];
  v6 = [inputFormat isEqual:format];

  if ((v6 & 1) == 0)
  {
    [(_LTSpeechTranslationRequest *)self _drainAndClearAudioConverter];
    v7 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:format toFormat:nativeAudioFormat];
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
    nativeAudioFormat2 = [(_LTSpeechTranslationRequest *)self nativeAudioFormat];
    v11 = [v9 initWithPCMFormat:nativeAudioFormat2 frameCapacity:8000];

    [v11 setFrameLength:8000];
    v12 = self->_converter;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56___LTSpeechTranslationRequest__convertAndFeedPCMBuffer___block_invoke;
    v27[3] = &unk_278B6DBA0;
    v29 = v31;
    v30 = 0;
    v13 = bufferCopy;
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
            localizedDescription = [v20 localizedDescription];
            [(_LTSpeechTranslationRequest *)localizedDescription _convertAndFeedPCMBuffer:buf, v21];
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
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 speechActivityDetected];
  }
}

- (void)languageDetectionCompleted
{
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 languageDetectionCompleted];
  }
}

- (void)languageDetectionResult:(id)result
{
  resultCopy = result;
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 languageDetectionResult:resultCopy];
  }
}

- (void)hybridEndpointerFoundEndpoint
{
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 hybridEndpointerFoundEndpoint];
  }
}

- (void)serverEndpointerFeatures:(id)features locale:(id)locale
{
  featuresCopy = features;
  localeCopy = locale;
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 serverEndpointerFeatures:featuresCopy locale:localeCopy];
  }
}

- (void)speechRecognitionResult:(id)result
{
  resultCopy = result;
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 speechRecognitionResult:resultCopy];
  }
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 translatorDidTranslate:translateCopy];

    [(_LTTranslationRequest *)self logIdentifier];
  }
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(_LTSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTSpeechTranslationRequest *)self delegate];
    [delegate2 translationDidFinishWithError:errorCopy];

    [(_LTTranslationRequest *)self logIdentifier];
  }

  done = self->_done;
  if (done)
  {
    done[2]();
  }
}

- (id)setUpAudioCaptureFile:(id)file withFormat:(id)format
{
  v34 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v6 = MEMORY[0x277CBEBD0];
  fileCopy = file;
  standardUserDefaults = [v6 standardUserDefaults];
  v9 = [standardUserDefaults stringForKey:@"AudioRecordingPath"];

  if (!v9)
  {
    v10 = NSTemporaryDirectory();
    v9 = [v10 stringByAppendingPathComponent:@"TranslateRecordings"];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateFormat:@"yyyyMMdd.HHmmss"];
  v13 = [v12 stringFromDate:date];
  fileCopy = [v13 stringByAppendingFormat:@"_%@.caf", fileCopy];

  v15 = MEMORY[0x277CBEBC0];
  v16 = [v9 stringByAppendingPathComponent:fileCopy];
  v17 = [v15 fileURLWithPath:v16 isDirectory:0];

  v18 = objc_alloc(MEMORY[0x277CB8398]);
  settings = [formatCopy settings];
  v29 = 0;
  v20 = [v18 initForWriting:v17 settings:settings commonFormat:objc_msgSend(formatCopy interleaved:"commonFormat") error:objc_msgSend(formatCopy, "isInterleaved"), &v29];
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
      path = [v17 path];
      *buf = 138412546;
      v31 = path;
      v32 = 2112;
      v33 = formatCopy;
      _os_log_impl(&dword_23AAF5000, v25, OS_LOG_TYPE_INFO, "Created audio file: %@ with format %@", buf, 0x16u);
    }

    v24 = v20;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)generateSilentAudioDataWithDuration:(double)duration
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:2 * (duration * 16000.0)];
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