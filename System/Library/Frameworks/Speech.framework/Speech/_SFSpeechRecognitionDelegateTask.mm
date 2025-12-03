@interface _SFSpeechRecognitionDelegateTask
- (id)_initWithRequest:(id)request queue:(id)queue languageCode:(id)code taskHint:(int64_t)hint delegate:(id)delegate;
- (void)_handleDidFinishRecognition:(uint64_t)recognition;
- (void)_handleDidProcessAudioDuration:(uint64_t)duration;
- (void)_handleDidRecognizePartialResult:(uint64_t)result;
- (void)_handleSpeechRecordingDidCancel;
- (void)_tellDelegateDidFinishSuccessfully:(uint64_t)successfully;
- (void)dictationConnection:(id)connection didReceiveSearchResults:(id)results recognizedText:(id)text stable:(BOOL)stable final:(BOOL)final;
- (void)dictationConnection:(id)connection didRecognizePackage:(id)package;
- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model;
- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail;
- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)end;
- (void)localSpeechRecognitionClient:(id)client didFinishRecognition:(id)recognition;
- (void)localSpeechRecognitionClient:(id)client didRecognizePartialResult:(id)result rawPartialResult:(id)partialResult;
- (void)localSpeechRecognitionClient:(id)client speechRecognitionDidFail:(id)fail;
- (void)localSpeechRecognitionClient:(id)client speechRecordingDidFail:(id)fail;
- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)succeed;
- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)cancel;
@end

@implementation _SFSpeechRecognitionDelegateTask

- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)succeed
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 localSpeechRecognitionClientSpeechRecognitionDidSucceed:succeed];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)_tellDelegateDidFinishSuccessfully:(uint64_t)successfully
{
  if (successfully)
  {
    v2 = *(successfully + 48);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __71___SFSpeechRecognitionDelegateTask__tellDelegateDidFinishSuccessfully___block_invoke;
    v3[3] = &unk_1E797BD18;
    v3[4] = successfully;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

- (void)_handleDidProcessAudioDuration:(uint64_t)duration
{
  if (duration)
  {
    v2 = *(duration + 48);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __67___SFSpeechRecognitionDelegateTask__handleDidProcessAudioDuration___block_invoke;
    v3[3] = &unk_1E797C3E8;
    v3[4] = duration;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

- (void)localSpeechRecognitionClient:(id)client didFinishRecognition:(id)recognition
{
  recognitionCopy = recognition;
  internalQueue = self->super._internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___SFSpeechRecognitionDelegateTask_localSpeechRecognitionClient_didFinishRecognition___block_invoke;
  v8[3] = &unk_1E797CB08;
  v8[4] = self;
  v9 = recognitionCopy;
  v7 = recognitionCopy;
  dispatch_async(internalQueue, v8);
}

- (void)_handleDidFinishRecognition:(uint64_t)recognition
{
  v4 = a2;
  if (recognition)
  {
    dispatch_assert_queue_V2(*(recognition + 48));
    if (*(recognition + 112) == 1)
    {
      objc_storeStrong((recognition + 96), a2);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((recognition + 88));
      v6 = *(recognition + 24);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64___SFSpeechRecognitionDelegateTask__handleDidFinishRecognition___block_invoke;
      v8[3] = &unk_1E797C460;
      v9 = WeakRetained;
      recognitionCopy = recognition;
      v11 = v4;
      v7 = WeakRetained;
      [v6 addOperationWithBlock:v8];
    }
  }
}

- (void)localSpeechRecognitionClient:(id)client didRecognizePartialResult:(id)result rawPartialResult:(id)partialResult
{
  resultCopy = result;
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108___SFSpeechRecognitionDelegateTask_localSpeechRecognitionClient_didRecognizePartialResult_rawPartialResult___block_invoke;
  v9[3] = &unk_1E797CB08;
  v9[4] = self;
  v10 = resultCopy;
  v8 = resultCopy;
  dispatch_async(internalQueue, v9);
}

- (void)_handleDidRecognizePartialResult:(uint64_t)result
{
  v3 = a2;
  if (result)
  {
    dispatch_assert_queue_V2(*(result + 48));
    if ([*(result + 40) shouldReportPartialResults])
    {
      v4 = *(result + 112);
      v5 = *(result + 113);
      WeakRetained = objc_loadWeakRetained((result + 88));
      v7 = *(result + 24);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __69___SFSpeechRecognitionDelegateTask__handleDidRecognizePartialResult___block_invoke;
      v9[3] = &unk_1E797BCC8;
      v10 = WeakRetained;
      resultCopy = result;
      v12 = v3;
      v13 = v4;
      v14 = v5;
      v8 = WeakRetained;
      [v7 addOperationWithBlock:v9];
    }
  }
}

- (void)localSpeechRecognitionClient:(id)client speechRecognitionDidFail:(id)fail
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 localSpeechRecognitionClient:client speechRecognitionDidFail:fail];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)localSpeechRecognitionClient:(id)client speechRecordingDidFail:(id)fail
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 localSpeechRecognitionClient:client speechRecordingDidFail:fail];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)cancel
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 localSpeechRecognitionClientSpeechRecordingDidCancel:cancel];
  [(_SFSpeechRecognitionDelegateTask *)self _handleSpeechRecordingDidCancel];
}

- (void)_handleSpeechRecordingDidCancel
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 88));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = *(self + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __67___SFSpeechRecognitionDelegateTask__handleSpeechRecordingDidCancel__block_invoke;
      v5[3] = &unk_1E797CAB8;
      v5[4] = self;
      [v4 addOperationWithBlock:v5];
    }
  }
}

- (void)dictationConnection:(id)connection didReceiveSearchResults:(id)results recognizedText:(id)text stable:(BOOL)stable final:(BOOL)final
{
  resultsCopy = results;
  textCopy = text;
  internalQueue = self->super._internalQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108___SFSpeechRecognitionDelegateTask_dictationConnection_didReceiveSearchResults_recognizedText_stable_final___block_invoke;
  v16[3] = &unk_1E797BCC8;
  v16[4] = self;
  v17 = resultsCopy;
  v18 = textCopy;
  stableCopy = stable;
  finalCopy = final;
  v14 = textCopy;
  v15 = resultsCopy;
  dispatch_async(internalQueue, v16);
}

- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model
{
  tokensCopy = tokens;
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89___SFSpeechRecognitionDelegateTask_dictationConnection_didRecognizeTokens_languageModel___block_invoke;
  v9[3] = &unk_1E797CB08;
  v10 = tokensCopy;
  selfCopy = self;
  v8 = tokensCopy;
  dispatch_async(internalQueue, v9);
}

- (void)dictationConnection:(id)connection didRecognizePackage:(id)package
{
  packageCopy = package;
  internalQueue = self->super._internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___SFSpeechRecognitionDelegateTask_dictationConnection_didRecognizePackage___block_invoke;
  v8[3] = &unk_1E797CB08;
  v9 = packageCopy;
  selfCopy = self;
  v7 = packageCopy;
  dispatch_async(internalQueue, v8);
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 dictationConnectionSpeechRecognitionDidSucceed:succeed];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 dictationConnection:connection speechRecognitionDidFail:fail];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)end
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
    selfCopy = self;
    [(NSOperationQueue *)externalQueue addOperationWithBlock:v6];
  }
}

- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v5 dictationConnection:connection speechRecordingDidFail:fail];
  [(_SFSpeechRecognitionDelegateTask *)self _tellDelegateDidFinishSuccessfully:?];
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel
{
  v4.receiver = self;
  v4.super_class = _SFSpeechRecognitionDelegateTask;
  [(SFSpeechRecognitionTask *)&v4 dictationConnectionSpeechRecordingDidCancel:cancel];
  [(_SFSpeechRecognitionDelegateTask *)self _handleSpeechRecordingDidCancel];
}

- (id)_initWithRequest:(id)request queue:(id)queue languageCode:(id)code taskHint:(int64_t)hint delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = _SFSpeechRecognitionDelegateTask;
  v14 = [(SFSpeechRecognitionTask *)&v19 _initWithRequest:requestCopy queue:queue languageCode:code taskHint:hint];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(v14 + 11, delegateCopy);
    _searchRequest = [requestCopy _searchRequest];
    if (_searchRequest)
    {
      v17 = [requestCopy requiresOnDeviceRecognition] ^ 1;
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