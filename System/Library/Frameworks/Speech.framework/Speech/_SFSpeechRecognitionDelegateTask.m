@interface _SFSpeechRecognitionDelegateTask
- (id)_initWithRequest:(id)a3 queue:(id)a4 languageCode:(id)a5 taskHint:(int64_t)a6 delegate:(id)a7;
- (void)_handleDidFinishRecognition:(uint64_t)a1;
- (void)_handleDidProcessAudioDuration:(uint64_t)a1;
- (void)_handleDidRecognizePartialResult:(uint64_t)a1;
- (void)_handleSpeechRecordingDidCancel;
- (void)_tellDelegateDidFinishSuccessfully:(uint64_t)a1;
- (void)dictationConnection:(id)a3 didReceiveSearchResults:(id)a4 recognizedText:(id)a5 stable:(BOOL)a6 final:(BOOL)a7;
- (void)dictationConnection:(id)a3 didRecognizePackage:(id)a4;
- (void)dictationConnection:(id)a3 didRecognizeTokens:(id)a4 languageModel:(id)a5;
- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3;
- (void)localSpeechRecognitionClient:(id)a3 didFinishRecognition:(id)a4;
- (void)localSpeechRecognitionClient:(id)a3 didRecognizePartialResult:(id)a4 rawPartialResult:(id)a5;
- (void)localSpeechRecognitionClient:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)localSpeechRecognitionClient:(id)a3 speechRecordingDidFail:(id)a4;
- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)a3;
- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)a3;
@end

@implementation _SFSpeechRecognitionDelegateTask

- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 localSpeechRecognitionClientSpeechRecognitionDidSucceed:a3];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)_tellDelegateDidFinishSuccessfully:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 48);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __71___SFSpeechRecognitionDelegateTask__tellDelegateDidFinishSuccessfully___block_invoke;
    v3[3] = &unk_1E797BD18;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

- (void)_handleDidProcessAudioDuration:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 48);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __67___SFSpeechRecognitionDelegateTask__handleDidProcessAudioDuration___block_invoke;
    v3[3] = &unk_1E797C3E8;
    v3[4] = a1;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

- (void)localSpeechRecognitionClient:(id)a3 didFinishRecognition:(id)a4
{
  v5 = a4;
  internalQueue = self->super._internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___SFSpeechRecognitionDelegateTask_localSpeechRecognitionClient_didFinishRecognition___block_invoke;
  v8[3] = &unk_1E797CB08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

- (void)_handleDidFinishRecognition:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if (*(a1 + 112) == 1)
    {
      objc_storeStrong((a1 + 96), a2);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      v6 = *(a1 + 24);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64___SFSpeechRecognitionDelegateTask__handleDidFinishRecognition___block_invoke;
      v8[3] = &unk_1E797C460;
      v9 = WeakRetained;
      v10 = a1;
      v11 = v4;
      v7 = WeakRetained;
      [v6 addOperationWithBlock:v8];
    }
  }
}

- (void)localSpeechRecognitionClient:(id)a3 didRecognizePartialResult:(id)a4 rawPartialResult:(id)a5
{
  v6 = a4;
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108___SFSpeechRecognitionDelegateTask_localSpeechRecognitionClient_didRecognizePartialResult_rawPartialResult___block_invoke;
  v9[3] = &unk_1E797CB08;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, v9);
}

- (void)_handleDidRecognizePartialResult:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if ([*(a1 + 40) shouldReportPartialResults])
    {
      v4 = *(a1 + 112);
      v5 = *(a1 + 113);
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      v7 = *(a1 + 24);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __69___SFSpeechRecognitionDelegateTask__handleDidRecognizePartialResult___block_invoke;
      v9[3] = &unk_1E797BCC8;
      v10 = WeakRetained;
      v11 = a1;
      v12 = v3;
      v13 = v4;
      v14 = v5;
      v8 = WeakRetained;
      [v7 addOperationWithBlock:v9];
    }
  }
}

- (void)localSpeechRecognitionClient:(id)a3 speechRecognitionDidFail:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 localSpeechRecognitionClient:a3 speechRecognitionDidFail:a4];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)localSpeechRecognitionClient:(id)a3 speechRecordingDidFail:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 localSpeechRecognitionClient:a3 speechRecordingDidFail:a4];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 localSpeechRecognitionClientSpeechRecordingDidCancel:a3];
  [(_SFSpeechRecognitionDelegateTask *)self _handleSpeechRecordingDidCancel];
}

- (void)_handleSpeechRecordingDidCancel
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __67___SFSpeechRecognitionDelegateTask__handleSpeechRecordingDidCancel__block_invoke;
      v5[3] = &unk_1E797CAB8;
      v5[4] = a1;
      [v4 addOperationWithBlock:v5];
    }
  }
}

- (void)dictationConnection:(id)a3 didReceiveSearchResults:(id)a4 recognizedText:(id)a5 stable:(BOOL)a6 final:(BOOL)a7
{
  v11 = a4;
  v12 = a5;
  internalQueue = self->super._internalQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108___SFSpeechRecognitionDelegateTask_dictationConnection_didReceiveSearchResults_recognizedText_stable_final___block_invoke;
  v16[3] = &unk_1E797BCC8;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = a6;
  v20 = a7;
  v14 = v12;
  v15 = v11;
  dispatch_async(internalQueue, v16);
}

- (void)dictationConnection:(id)a3 didRecognizeTokens:(id)a4 languageModel:(id)a5
{
  v6 = a4;
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89___SFSpeechRecognitionDelegateTask_dictationConnection_didRecognizeTokens_languageModel___block_invoke;
  v9[3] = &unk_1E797CB08;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(internalQueue, v9);
}

- (void)dictationConnection:(id)a3 didRecognizePackage:(id)a4
{
  v5 = a4;
  internalQueue = self->super._internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___SFSpeechRecognitionDelegateTask_dictationConnection_didRecognizePackage___block_invoke;
  v8[3] = &unk_1E797CB08;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 dictationConnectionSpeechRecognitionDidSucceed:a3];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 dictationConnection:a3 speechRecognitionDidFail:a4];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    externalQueue = self->super._externalQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77___SFSpeechRecognitionDelegateTask_dictationConnectionSpeechRecordingDidEnd___block_invoke;
    v6[3] = &unk_1E797CB08;
    v7 = WeakRetained;
    v8 = self;
    [(NSOperationQueue *)externalQueue addOperationWithBlock:v6];
  }
}

- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 dictationConnection:a3 speechRecordingDidFail:a4];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 dictationConnectionSpeechRecordingDidCancel:a3];
  [(_SFSpeechRecognitionDelegateTask *)self _handleSpeechRecordingDidCancel];
}

- (id)_initWithRequest:(id)a3 queue:(id)a4 languageCode:(id)a5 taskHint:(int64_t)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a7;
  v19.receiver = self;
  v19.super_class = _SFSpeechRecognitionDelegateTask;
  v14 = [(SFSpeechRecognitionTask *)&v19 _initWithRequest:v12 queue:a4 languageCode:a5 taskHint:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(v14 + 11, v13);
    v16 = [v12 _searchRequest];
    if (v16)
    {
      v17 = [v12 requiresOnDeviceRecognition] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    *(v15 + 112) = v17;

    objc_storeStrong(v15 + 13, v15);
  }

  return v15;
}

@end