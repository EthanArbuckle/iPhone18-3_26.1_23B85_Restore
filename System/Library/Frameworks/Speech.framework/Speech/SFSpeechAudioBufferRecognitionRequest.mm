@interface SFSpeechAudioBufferRecognitionRequest
- (AVAudioFormat)nativeAudioFormat;
- (id)_initWithNarrowband:(BOOL)narrowband;
- (id)_startedConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier;
- (id)_startedLocalConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier taskIdentifier:(id)taskIdentifier;
- (void)_appendAudioPCMBuffer:(id *)buffer;
- (void)_drainAndClearAudioConverter;
- (void)_endAudio;
- (void)_handleAudioBuffersWithDelegate:(uint64_t)delegate;
- (void)appendAudioPCMBuffer:(AVAudioPCMBuffer *)audioPCMBuffer;
- (void)appendAudioSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (void)endAudio;
@end

@implementation SFSpeechAudioBufferRecognitionRequest

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFSpeechAudioBufferRecognitionRequest_endAudio__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__SFSpeechAudioBufferRecognitionRequest_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));

  v3 = *(a1 + 32);
  if (WeakRetained)
  {

    [(SFSpeechAudioBufferRecognitionRequest *)v3 _endAudio];
  }

  else
  {
    *(v3 + 136) = 1;
  }
}

- (void)_endAudio
{
  if (self)
  {
    [(SFSpeechAudioBufferRecognitionRequest *)self _drainAndClearAudioConverter];
    WeakRetained = objc_loadWeakRetained((self + 104));
    [WeakRetained stopSpeech];
  }
}

- (void)_drainAndClearAudioConverter
{
  if (*(self + 128))
  {
    while (1)
    {
      v2 = objc_alloc(MEMORY[0x1E6958440]);
      nativeAudioFormat = [self nativeAudioFormat];
      v4 = [v2 initWithPCMFormat:nativeAudioFormat frameCapacity:8000];

      [v4 setFrameLength:8000];
      v5 = *(self + 128);
      v12 = 0;
      v6 = [v5 convertToBuffer:v4 error:&v12 withInputFromBlock:&__block_literal_global_2481];
      v7 = v12;
      v8 = v7;
      if (v6 == 2)
      {
        break;
      }

      if (v6 == 3)
      {
        NSLog(&cfstr_CouldNotDrainC.isa, v7);
        break;
      }

      WeakRetained = objc_loadWeakRetained((self + 104));
      v10 = [MEMORY[0x1E695DEF0] dataWithBytes:*objc_msgSend(v4 length:{"int16ChannelData"), 2 * objc_msgSend(v4, "frameLength")}];
      [WeakRetained addRecordedSpeechSampleData:v10];

      if (v6 == 1)
      {
        break;
      }
    }

    v11 = *(self + 128);
    *(self + 128) = 0;
  }
}

- (void)appendAudioSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
  FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
  if (FormatDescription)
  {
    v8 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription)];
    v6 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v8 frameCapacity:CMSampleBufferGetNumSamples(sampleBuffer)];
    [v6 setFrameLength:CMSampleBufferGetNumSamples(sampleBuffer)];
    NumSamples = CMSampleBufferGetNumSamples(sampleBuffer);
    CMSampleBufferCopyPCMDataIntoAudioBufferList(sampleBuffer, 0, NumSamples, [v6 mutableAudioBufferList]);
    [(SFSpeechAudioBufferRecognitionRequest *)self appendAudioPCMBuffer:v6];
  }
}

- (void)appendAudioPCMBuffer:(AVAudioPCMBuffer *)audioPCMBuffer
{
  v4 = audioPCMBuffer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SFSpeechAudioBufferRecognitionRequest_appendAudioPCMBuffer___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__SFSpeechAudioBufferRecognitionRequest_appendAudioPCMBuffer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));

  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [(SFSpeechAudioBufferRecognitionRequest *)v5 _appendAudioPCMBuffer:v4];
  }

  else
  {
    v6 = *(v3 + 112);
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + 112);
      *(v3 + 112) = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = *(a1 + 32);
      v8 = *(v10 + 112);
      *(v10 + 112) = v9;
    }

    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 112);

    [v12 addObject:v11];
  }
}

- (void)_appendAudioPCMBuffer:(id *)buffer
{
  v3 = a2;
  if (buffer)
  {
    v29 = v3;
    nativeAudioFormat = [buffer nativeAudioFormat];
    format = [v29 format];
    v6 = [nativeAudioFormat isEqual:format];

    if (v6)
    {
      [(SFSpeechAudioBufferRecognitionRequest *)buffer _drainAndClearAudioConverter];
      int16ChannelData = [v29 int16ChannelData];
      if (!int16ChannelData)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__appendAudioPCMBuffer_ object:buffer file:@"SFSpeechRecognitionRequest.m" lineNumber:527 description:@"Invalid audio format"];
      }

      WeakRetained = objc_loadWeakRetained(buffer + 13);
      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:*int16ChannelData length:{2 * objc_msgSend(v29, "frameLength")}];
      [WeakRetained addRecordedSpeechSampleData:v9];
    }

    else
    {
      v10 = v29;
      format2 = [v10 format];
      nativeAudioFormat2 = [buffer nativeAudioFormat];
      inputFormat = [buffer[16] inputFormat];
      v14 = [inputFormat isEqual:format2];

      if ((v14 & 1) == 0)
      {
        [(SFSpeechAudioBufferRecognitionRequest *)buffer _drainAndClearAudioConverter];
        v15 = [objc_alloc(MEMORY[0x1E69583F0]) initFromFormat:format2 toFormat:nativeAudioFormat2];
        v16 = buffer[16];
        buffer[16] = v15;

        [buffer[16] setSampleRateConverterQuality:127];
      }

      v28 = nativeAudioFormat2;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      while (1)
      {
        v17 = objc_alloc(MEMORY[0x1E6958440]);
        nativeAudioFormat3 = [buffer nativeAudioFormat];
        v19 = [v17 initWithPCMFormat:nativeAudioFormat3 frameCapacity:8000];

        [v19 setFrameLength:8000];
        v20 = buffer[16];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __66__SFSpeechAudioBufferRecognitionRequest__convertAndFeedPCMBuffer___block_invoke;
        v30[3] = &unk_1E797CB50;
        v32 = v34;
        v33 = 0;
        v21 = v10;
        v31 = v21;
        v22 = [v20 convertToBuffer:v19 error:&v33 withInputFromBlock:v30];
        v23 = v33;
        v24 = v23;
        if (v22 == 2)
        {
          break;
        }

        if (v22 == 3)
        {
          NSLog(&cfstr_CouldNotRunAud.isa, v23);
          break;
        }

        v25 = objc_loadWeakRetained(buffer + 13);
        v26 = [MEMORY[0x1E695DEF0] dataWithBytes:*objc_msgSend(v19 length:{"int16ChannelData"), 2 * objc_msgSend(v19, "frameLength")}];
        [v25 addRecordedSpeechSampleData:v26];

        if (v22 == 1)
        {
          goto LABEL_15;
        }
      }

LABEL_15:
      _Block_object_dispose(v34, 8);
    }

    v3 = v29;
  }
}

id __66__SFSpeechAudioBufferRecognitionRequest__convertAndFeedPCMBuffer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

- (id)_startedLocalConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier taskIdentifier:(id)taskIdentifier
{
  taskIdentifierCopy = taskIdentifier;
  identifierCopy = identifier;
  delegateCopy = delegate;
  codeCopy = code;
  WeakRetained = objc_loadWeakRetained(&self->_bufferDelegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SFSpeechRecognitionRequest.m" lineNumber:506 description:{@"%@ cannot be re-used", objc_opt_class()}];
  }

  v18 = [[SFLocalSpeechRecognitionClient alloc] initWithDelegate:delegateCopy];
  v19 = [(SFSpeechRecognitionRequest *)self _requestParametersWithTaskHint:hint requestIdentifier:identifierCopy taskIdentifier:taskIdentifierCopy narrowband:self->_narrowband language:codeCopy];

  v20 = [SFSpeechRecognitionRequest _sandboxExtensionsWithError:?];
  [(SFLocalSpeechRecognitionClient *)v18 initializeWithSandboxExtensions:v20];
  [(SFLocalSpeechRecognitionClient *)v18 startRecordedAudioDictationWithParameters:v19];
  [(SFSpeechAudioBufferRecognitionRequest *)self _handleAudioBuffersWithDelegate:delegateCopy];

  return v18;
}

- (void)_handleAudioBuffersWithDelegate:(uint64_t)delegate
{
  v3 = a2;
  v4 = v3;
  if (delegate)
  {
    v5 = *(delegate + 120);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__SFSpeechAudioBufferRecognitionRequest__handleAudioBuffersWithDelegate___block_invoke;
    v6[3] = &unk_1E797CB08;
    v6[4] = delegate;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __73__SFSpeechAudioBufferRecognitionRequest__handleAudioBuffersWithDelegate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_storeWeak((*(a1 + 32) + 104), *(a1 + 40));
  v2 = *(*(a1 + 32) + 112);
  if ([v2 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SFSpeechAudioBufferRecognitionRequest *)*(a1 + 32) _appendAudioPCMBuffer:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = 0;

  v11 = *(a1 + 32);
  if (*(v11 + 136) == 1)
  {
    [(SFSpeechAudioBufferRecognitionRequest *)v11 _endAudio];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_startedConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier
{
  v31[5] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  delegateCopy = delegate;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_bufferDelegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SFSpeechRecognitionRequest.m" lineNumber:474 description:{@"%@ cannot be re-used", objc_opt_class()}];
  }

  v15 = objc_alloc_init(MEMORY[0x1E698D118]);
  [v15 setDelegate:delegateCopy];
  v16 = [(SFSpeechRecognitionRequest *)self _dictationOptionsWithTaskHint:hint requestIdentifier:identifierCopy];

  [v16 setFieldLabel:@"SFSpeechPreecordedRequest"];
  if (![(__CFString *)codeCopy caseInsensitiveCompare:@"hi-IN-translit"])
  {
    v17 = @"hi-IN";

    [v16 setKeyboardIdentifier:@"Translit"];
    codeCopy = @"hi-IN";
  }

  if (+[SFUtilities isSpeechXPCEnabled])
  {
    if (codeCopy)
    {
      v18 = codeCopy;
    }

    else
    {
      v18 = @"none";
    }

    v31[0] = v18;
    v30[0] = @"language";
    v30[1] = @"task";
    v19 = [SFUtilities taskNameFromTaskHint:hint];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = @"none";
    }

    v31[1] = v21;
    v30[2] = @"narrowband";
    v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_narrowband];
    v31[2] = v22;
    v30[3] = @"appname";
    applicationName = [v16 applicationName];
    v24 = applicationName;
    if (applicationName)
    {
      v25 = applicationName;
    }

    else
    {
      v25 = @"none";
    }

    v30[4] = @"ondevice";
    v31[3] = v25;
    v31[4] = MEMORY[0x1E695E110];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];

    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.RequestStarted" withAnalytics:v26];
    [(SFSpeechRecognitionRequest *)self _setAFDictationRequestParams:v26];
  }

  [v15 startRecordedAudioDictationWithOptions:v16 forLanguage:codeCopy];
  [(SFSpeechAudioBufferRecognitionRequest *)self _handleAudioBuffersWithDelegate:delegateCopy];

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

- (AVAudioFormat)nativeAudioFormat
{
  v4[0] = SupportedASBD;
  v4[1] = unk_1AC7B4708;
  v5 = 16;
  if (self->_narrowband)
  {
    *&v4[0] = 0x40BF400000000000;
  }

  v2 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:v4];

  return v2;
}

- (id)_initWithNarrowband:(BOOL)narrowband
{
  v8.receiver = self;
  v8.super_class = SFSpeechAudioBufferRecognitionRequest;
  v4 = [(SFSpeechRecognitionRequest *)&v8 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.SFSpeechAudioBufferRecognitionRequest", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v4->_narrowband = narrowband;
  }

  return v4;
}

@end