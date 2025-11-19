@interface SFSpeechAudioBufferRecognitionRequest
- (AVAudioFormat)nativeAudioFormat;
- (id)_initWithNarrowband:(BOOL)a3;
- (id)_startedConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6;
- (id)_startedLocalConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6 taskIdentifier:(id)a7;
- (void)_appendAudioPCMBuffer:(id *)a1;
- (void)_drainAndClearAudioConverter;
- (void)_endAudio;
- (void)_handleAudioBuffersWithDelegate:(uint64_t)a1;
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
  if (a1)
  {
    [(SFSpeechAudioBufferRecognitionRequest *)a1 _drainAndClearAudioConverter];
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    [WeakRetained stopSpeech];
  }
}

- (void)_drainAndClearAudioConverter
{
  if (*(a1 + 128))
  {
    while (1)
    {
      v2 = objc_alloc(MEMORY[0x1E6958440]);
      v3 = [a1 nativeAudioFormat];
      v4 = [v2 initWithPCMFormat:v3 frameCapacity:8000];

      [v4 setFrameLength:8000];
      v5 = *(a1 + 128);
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

      WeakRetained = objc_loadWeakRetained((a1 + 104));
      v10 = [MEMORY[0x1E695DEF0] dataWithBytes:*objc_msgSend(v4 length:{"int16ChannelData"), 2 * objc_msgSend(v4, "frameLength")}];
      [WeakRetained addRecordedSpeechSampleData:v10];

      if (v6 == 1)
      {
        break;
      }
    }

    v11 = *(a1 + 128);
    *(a1 + 128) = 0;
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

- (void)_appendAudioPCMBuffer:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v29 = v3;
    v4 = [a1 nativeAudioFormat];
    v5 = [v29 format];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      [(SFSpeechAudioBufferRecognitionRequest *)a1 _drainAndClearAudioConverter];
      v7 = [v29 int16ChannelData];
      if (!v7)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:sel__appendAudioPCMBuffer_ object:a1 file:@"SFSpeechRecognitionRequest.m" lineNumber:527 description:@"Invalid audio format"];
      }

      WeakRetained = objc_loadWeakRetained(a1 + 13);
      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:*v7 length:{2 * objc_msgSend(v29, "frameLength")}];
      [WeakRetained addRecordedSpeechSampleData:v9];
    }

    else
    {
      v10 = v29;
      v11 = [v10 format];
      v12 = [a1 nativeAudioFormat];
      v13 = [a1[16] inputFormat];
      v14 = [v13 isEqual:v11];

      if ((v14 & 1) == 0)
      {
        [(SFSpeechAudioBufferRecognitionRequest *)a1 _drainAndClearAudioConverter];
        v15 = [objc_alloc(MEMORY[0x1E69583F0]) initFromFormat:v11 toFormat:v12];
        v16 = a1[16];
        a1[16] = v15;

        [a1[16] setSampleRateConverterQuality:127];
      }

      v28 = v12;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      while (1)
      {
        v17 = objc_alloc(MEMORY[0x1E6958440]);
        v18 = [a1 nativeAudioFormat];
        v19 = [v17 initWithPCMFormat:v18 frameCapacity:8000];

        [v19 setFrameLength:8000];
        v20 = a1[16];
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

        v25 = objc_loadWeakRetained(a1 + 13);
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

- (id)_startedLocalConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6 taskIdentifier:(id)a7
{
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bufferDelegate);

  if (WeakRetained)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SFSpeechRecognitionRequest.m" lineNumber:506 description:{@"%@ cannot be re-used", objc_opt_class()}];
  }

  v18 = [[SFLocalSpeechRecognitionClient alloc] initWithDelegate:v15];
  v19 = [(SFSpeechRecognitionRequest *)self _requestParametersWithTaskHint:a5 requestIdentifier:v14 taskIdentifier:v13 narrowband:self->_narrowband language:v16];

  v20 = [SFSpeechRecognitionRequest _sandboxExtensionsWithError:?];
  [(SFLocalSpeechRecognitionClient *)v18 initializeWithSandboxExtensions:v20];
  [(SFLocalSpeechRecognitionClient *)v18 startRecordedAudioDictationWithParameters:v19];
  [(SFSpeechAudioBufferRecognitionRequest *)self _handleAudioBuffersWithDelegate:v15];

  return v18;
}

- (void)_handleAudioBuffersWithDelegate:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 120);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__SFSpeechAudioBufferRecognitionRequest__handleAudioBuffersWithDelegate___block_invoke;
    v6[3] = &unk_1E797CB08;
    v6[4] = a1;
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

- (id)_startedConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6
{
  v31[5] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_bufferDelegate);

  if (WeakRetained)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"SFSpeechRecognitionRequest.m" lineNumber:474 description:{@"%@ cannot be re-used", objc_opt_class()}];
  }

  v15 = objc_alloc_init(MEMORY[0x1E698D118]);
  [v15 setDelegate:v12];
  v16 = [(SFSpeechRecognitionRequest *)self _dictationOptionsWithTaskHint:a5 requestIdentifier:v13];

  [v16 setFieldLabel:@"SFSpeechPreecordedRequest"];
  if (![(__CFString *)v11 caseInsensitiveCompare:@"hi-IN-translit"])
  {
    v17 = @"hi-IN";

    [v16 setKeyboardIdentifier:@"Translit"];
    v11 = @"hi-IN";
  }

  if (+[SFUtilities isSpeechXPCEnabled])
  {
    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = @"none";
    }

    v31[0] = v18;
    v30[0] = @"language";
    v30[1] = @"task";
    v19 = [SFUtilities taskNameFromTaskHint:a5];
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
    v23 = [v16 applicationName];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
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

  [v15 startRecordedAudioDictationWithOptions:v16 forLanguage:v11];
  [(SFSpeechAudioBufferRecognitionRequest *)self _handleAudioBuffersWithDelegate:v12];

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

- (id)_initWithNarrowband:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SFSpeechAudioBufferRecognitionRequest;
  v4 = [(SFSpeechRecognitionRequest *)&v8 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.SFSpeechAudioBufferRecognitionRequest", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v4->_narrowband = a3;
  }

  return v4;
}

@end