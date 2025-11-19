@interface SFSpeechURLRecognitionRequest
- (SFSpeechURLRecognitionRequest)init;
- (SFSpeechURLRecognitionRequest)initWithURL:(NSURL *)URL;
- (id)_startedConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6;
- (id)_startedLocalConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6 taskIdentifier:(id)a7;
- (void)_handlePreRecordedAudioWithAsset:(void *)a3 audioTracks:(char)a4 narrowband:(void *)a5 addSpeechDataBlock:(void *)a6 stopSpeechBlock:(void *)a7 cancelSpeechWithErrorBlock:;
@end

@implementation SFSpeechURLRecognitionRequest

- (id)_startedLocalConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6 taskIdentifier:(id)a7
{
  v39[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [[SFLocalSpeechRecognitionClient alloc] initWithDelegate:v12];
  v17 = MEMORY[0x1E6988168];
  URL = self->_URL;
  v38 = *MEMORY[0x1E6987378];
  v39[0] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v20 = [v17 URLAssetWithURL:URL options:v19];

  v21 = [v20 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v22 = IsNarrowBand(v21);
  v23 = [(SFSpeechRecognitionRequest *)self _requestParametersWithTaskHint:a5 requestIdentifier:v14 taskIdentifier:v13 narrowband:v22 language:v15];

  v24 = [SFSpeechRecognitionRequest _sandboxExtensionsWithError:?];
  [(SFLocalSpeechRecognitionClient *)v16 initializeWithSandboxExtensions:v24];
  [(SFLocalSpeechRecognitionClient *)v16 startRecordedAudioDictationWithParameters:v23];
  LOBYTE(v14) = [v23 narrowband];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke;
  v36[3] = &unk_1E797CA90;
  v37 = v16;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke_2;
  v34[3] = &unk_1E797CAB8;
  v35 = v37;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke_3;
  v31[3] = &unk_1E797CAE0;
  v25 = v35;
  v32 = v25;
  v33 = v12;
  v26 = v12;
  [(SFSpeechURLRecognitionRequest *)self _handlePreRecordedAudioWithAsset:v20 audioTracks:v21 narrowband:v14 addSpeechDataBlock:v36 stopSpeechBlock:v34 cancelSpeechWithErrorBlock:v31];
  v27 = v33;
  v28 = v25;

  v29 = *MEMORY[0x1E69E9840];
  return v25;
}

void __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancelSpeech];
  [*(a1 + 40) localSpeechRecognitionClient:*(a1 + 32) speechRecordingDidFail:v4];
}

- (void)_handlePreRecordedAudioWithAsset:(void *)a3 audioTracks:(char)a4 narrowband:(void *)a5 addSpeechDataBlock:(void *)a6 stopSpeechBlock:(void *)a7 cancelSpeechWithErrorBlock:
{
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a1)
  {
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke;
    block[3] = &unk_1E797CA38;
    v20 = v13;
    v26 = a4;
    v21 = v14;
    v22 = a1;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    dispatch_async(v18, block);
  }
}

void __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2448;
  v17 = __Block_byref_object_dispose__2449;
  v18 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke_135;
  v8[3] = &unk_1E797CA10;
  v2 = *(a1 + 32);
  v11 = &v13;
  v12 = *(a1 + 80);
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = *(&v7 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v9 = v5;
  v10 = v7;
  if (__151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke_135(v8))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = v14[5];
    (*(*(a1 + 72) + 16))();
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke_135(uint64_t a1)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v27 = 0;
  v3 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v2 error:&v27];
  v4 = v27;
  v5 = v4;
  if (v3)
  {
    if (*(a1 + 72))
    {
      v6 = 8000;
    }

    else
    {
      v6 = 16000;
    }

    v31[0] = &unk_1F214A1A0;
    v7 = *MEMORY[0x1E6958348];
    v30[0] = *MEMORY[0x1E69582B0];
    v30[1] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v9 = *MEMORY[0x1E6958300];
    v31[1] = v8;
    v31[2] = &unk_1F214A1B8;
    v10 = *MEMORY[0x1E69582C8];
    v30[2] = v9;
    v30[3] = v10;
    v11 = *MEMORY[0x1E69582D0];
    v31[3] = &unk_1F214A1D0;
    v31[4] = MEMORY[0x1E695E110];
    v12 = *MEMORY[0x1E69582E8];
    v30[4] = v11;
    v30[5] = v12;
    v31[5] = MEMORY[0x1E695E110];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];

    v14 = [MEMORY[0x1E6987E80] assetReaderAudioMixOutputWithAudioTracks:*(a1 + 40) audioSettings:v13];
    if (v14)
    {
      if ([v3 canAddOutput:v14])
      {
        [v3 addOutput:v14];
        [v3 startReading];
        v15 = [v14 copyNextSampleBuffer];
        if (v15)
        {
          v16 = v15;
          do
          {
            if (CMSampleBufferGetNumSamples(v16))
            {
              totalLengthOut = 0;
              dataPointerOut = 0;
              DataBuffer = CMSampleBufferGetDataBuffer(v16);
              if (CMBlockBufferGetDataPointer(DataBuffer, 0, 0, &totalLengthOut, &dataPointerOut))
              {
                DataLength = CMBlockBufferGetDataLength(DataBuffer);
                v19 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:DataLength];
                v20 = CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, [v19 mutableBytes]);
                if (v20)
                {
                  NSLog(&cfstr_Cmblockbufferc.isa, v20);
                  v21 = 0;
                }

                else
                {
                  v21 = v19;
                }
              }

              else
              {
                v21 = [MEMORY[0x1E695DEF0] dataWithBytes:dataPointerOut length:totalLengthOut];
              }
            }

            else
            {
              v21 = 0;
            }

            CFRelease(v16);
            if (v21)
            {
              (*(*(a1 + 56) + 16))();
            }

            v16 = [v14 copyNextSampleBuffer];
          }

          while (v16);
        }

        v22 = 1;
        goto LABEL_24;
      }

      NSLog(&cfstr_CouldNotAddOut.isa, *(*(a1 + 48) + 104));
    }

    v22 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v23 = *(*(a1 + 64) + 8);
  v24 = v4;
  v22 = 0;
  v13 = *(v23 + 40);
  *(v23 + 40) = v24;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)_startedConnectionWithLanguageCode:(id)a3 delegate:(id)a4 taskHint:(int64_t)a5 requestIdentifier:(id)a6
{
  v51[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x1E698D118];
  v13 = a6;
  v14 = objc_alloc_init(v12);
  v40 = v11;
  [v14 setDelegate:v11];
  v15 = [(SFSpeechRecognitionRequest *)self _dictationOptionsWithTaskHint:a5 requestIdentifier:v13];

  [v15 setFieldLabel:@"SFSpeechPreecordedRequest"];
  if (![(__CFString *)v10 caseInsensitiveCompare:@"hi-IN-translit"])
  {
    v16 = @"hi-IN";

    [v15 setKeyboardIdentifier:@"Translit"];
    v10 = @"hi-IN";
  }

  if (a5 == 1002)
  {
    [v15 setOriginalAudioFileURL:self->_URL];
  }

  v17 = MEMORY[0x1E6988168];
  URL = self->_URL;
  v50 = *MEMORY[0x1E6987378];
  v51[0] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v20 = [v17 URLAssetWithURL:URL options:v19];

  v21 = [v20 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v22 = IsNarrowBand(v21);
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    if (v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = @"none";
    }

    v49[0] = v23;
    v48[0] = @"language";
    v48[1] = @"task";
    v24 = [SFUtilities taskNameFromTaskHint:a5];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = @"none";
    }

    v49[1] = v26;
    v48[2] = @"narrowband";
    [MEMORY[0x1E696AD98] numberWithBool:v22];
    v39 = v20;
    v28 = v27 = self;
    v49[2] = v28;
    v48[3] = @"appname";
    v29 = [v15 applicationName];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = @"none";
    }

    v48[4] = @"ondevice";
    v49[3] = v31;
    v49[4] = MEMORY[0x1E695E110];
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];

    self = v27;
    v20 = v39;

    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.RequestStarted" withAnalytics:v32];
    objc_storeStrong(&self->super._afDictationRequestParams, v32);
  }

  [v14 startRecordedAudioDictationWithOptions:v15 forLanguage:v10 narrowband:v22];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke;
  v46[3] = &unk_1E797CA90;
  v47 = v14;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke_2;
  v44[3] = &unk_1E797CAB8;
  v45 = v47;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke_3;
  v41[3] = &unk_1E797CAE0;
  v33 = v45;
  v42 = v33;
  v43 = v40;
  v34 = v40;
  [(SFSpeechURLRecognitionRequest *)self _handlePreRecordedAudioWithAsset:v20 audioTracks:v21 narrowband:v22 addSpeechDataBlock:v46 stopSpeechBlock:v44 cancelSpeechWithErrorBlock:v41];
  v35 = v43;
  v36 = v33;

  v37 = *MEMORY[0x1E69E9840];
  return v33;
}

void __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancelSpeech];
  [*(a1 + 40) dictationConnection:*(a1 + 32) speechRecordingDidFail:v4];
}

- (SFSpeechURLRecognitionRequest)initWithURL:(NSURL *)URL
{
  v4 = URL;
  v9.receiver = self;
  v9.super_class = SFSpeechURLRecognitionRequest;
  v5 = [(SFSpeechRecognitionRequest *)&v9 init];
  if (v5)
  {
    v6 = [(NSURL *)v4 copy];
    v7 = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

- (SFSpeechURLRecognitionRequest)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Use -[SFSpeechURLRecognitionRequest initWithURL:]"];

  return 0;
}

@end