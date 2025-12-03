@interface _SFSpeechRecognitionBlockTask
- (id)_initWithRequest:(id)request queue:(id)queue languageCode:(id)code taskHint:(int64_t)hint resultHandler:(id)handler;
- (uint64_t)_finalizeResultHandler;
- (void)_fireResultHandlerWithResult:(void *)result error:;
- (void)dictationConnection:(id)connection didRecognizePackage:(id)package;
- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model;
- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail;
- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)localSpeechRecognitionClient:(id)client didFinishRecognition:(id)recognition;
- (void)localSpeechRecognitionClient:(id)client didRecognizePartialResult:(id)result rawPartialResult:(id)partialResult;
- (void)localSpeechRecognitionClient:(id)client speechRecognitionDidFail:(id)fail;
- (void)localSpeechRecognitionClient:(id)client speechRecordingDidFail:(id)fail;
- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)succeed;
- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)cancel;
@end

@implementation _SFSpeechRecognitionBlockTask

- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)succeed
{
  v6.receiver = self;
  v6.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v6 localSpeechRecognitionClientSpeechRecognitionDidSucceed:succeed];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89___SFSpeechRecognitionBlockTask_localSpeechRecognitionClientSpeechRecognitionDidSucceed___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (uint64_t)_finalizeResultHandler
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 48));
    if ((*(v1 + 96) & 1) == 0)
    {
      v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698D280] code:203 userInfo:0];
      [(_SFSpeechRecognitionBlockTask *)v1 _fireResultHandlerWithResult:v2 error:?];
    }

    v3 = *(v1 + 88);
    *(v1 + 88) = 0;

    [*(v1 + 8) stopSpeechWithOptions:0];
    v4 = *(v1 + 16);

    return [v4 stopSpeech];
  }

  return result;
}

- (void)_fireResultHandlerWithResult:(void *)result error:
{
  v5 = a2;
  resultCopy = result;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 48));
    isFinal = [v5 isFinal];
    if (resultCopy || isFinal)
    {
      *(self + 96) = 1;
    }

    v8 = [*(self + 88) copy];
    v9 = v8;
    if (v8)
    {
      v10 = *(self + 24);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __68___SFSpeechRecognitionBlockTask__fireResultHandlerWithResult_error___block_invoke;
      v11[3] = &unk_1E797C528;
      v14 = v8;
      v12 = v5;
      v13 = resultCopy;
      [v10 addOperationWithBlock:v11];
    }
  }
}

- (void)localSpeechRecognitionClient:(id)client didFinishRecognition:(id)recognition
{
  recognitionCopy = recognition;
  internalQueue = self->super._internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_didFinishRecognition___block_invoke;
  v8[3] = &unk_1E797CB08;
  v8[4] = self;
  v9 = recognitionCopy;
  v7 = recognitionCopy;
  dispatch_async(internalQueue, v8);
}

- (void)localSpeechRecognitionClient:(id)client didRecognizePartialResult:(id)result rawPartialResult:(id)partialResult
{
  resultCopy = result;
  partialResultCopy = partialResult;
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_didRecognizePartialResult_rawPartialResult___block_invoke;
  block[3] = &unk_1E797C460;
  block[4] = self;
  v13 = resultCopy;
  v14 = partialResultCopy;
  v10 = partialResultCopy;
  v11 = resultCopy;
  dispatch_async(internalQueue, block);
}

- (void)localSpeechRecognitionClient:(id)client speechRecognitionDidFail:(id)fail
{
  v7.receiver = self;
  v7.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v7 localSpeechRecognitionClient:client speechRecognitionDidFail:fail];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_speechRecognitionDidFail___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)localSpeechRecognitionClient:(id)client speechRecordingDidFail:(id)fail
{
  failCopy = fail;
  v11.receiver = self;
  v11.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v11 localSpeechRecognitionClient:client speechRecordingDidFail:failCopy];
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_speechRecordingDidFail___block_invoke;
  v9[3] = &unk_1E797CB08;
  v9[4] = self;
  v10 = failCopy;
  v8 = failCopy;
  dispatch_async(internalQueue, v9);
}

- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)cancel
{
  v6.receiver = self;
  v6.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v6 localSpeechRecognitionClientSpeechRecordingDidCancel:cancel];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86___SFSpeechRecognitionBlockTask_localSpeechRecognitionClientSpeechRecordingDidCancel___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model
{
  tokensCopy = tokens;
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86___SFSpeechRecognitionBlockTask_dictationConnection_didRecognizeTokens_languageModel___block_invoke;
  v9[3] = &unk_1E797CB08;
  v9[4] = self;
  v10 = tokensCopy;
  v8 = tokensCopy;
  dispatch_async(internalQueue, v9);
}

- (void)dictationConnection:(id)connection didRecognizePackage:(id)package
{
  packageCopy = package;
  v6 = [SFUtilities recognizedResultFromPackage:packageCopy];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___SFSpeechRecognitionBlockTask_dictationConnection_didRecognizePackage___block_invoke;
  block[3] = &unk_1E797C460;
  block[4] = self;
  v11 = v6;
  v12 = packageCopy;
  v8 = packageCopy;
  v9 = v6;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed
{
  v6.receiver = self;
  v6.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v6 dictationConnectionSpeechRecognitionDidSucceed:succeed];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80___SFSpeechRecognitionBlockTask_dictationConnectionSpeechRecognitionDidSucceed___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail
{
  v7.receiver = self;
  v7.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v7 dictationConnection:connection speechRecognitionDidFail:fail];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___SFSpeechRecognitionBlockTask_dictationConnection_speechRecognitionDidFail___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel
{
  v6.receiver = self;
  v6.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v6 dictationConnectionSpeechRecordingDidCancel:cancel];
  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___SFSpeechRecognitionBlockTask_dictationConnectionSpeechRecordingDidCancel___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail
{
  failCopy = fail;
  v11.receiver = self;
  v11.super_class = _SFSpeechRecognitionBlockTask;
  [(SFSpeechRecognitionTask *)&v11 dictationConnection:connection speechRecordingDidFail:failCopy];
  internalQueue = self->super._internalQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___SFSpeechRecognitionBlockTask_dictationConnection_speechRecordingDidFail___block_invoke;
  v9[3] = &unk_1E797CB08;
  v9[4] = self;
  v10 = failCopy;
  v8 = failCopy;
  dispatch_async(internalQueue, v9);
}

- (id)_initWithRequest:(id)request queue:(id)queue languageCode:(id)code taskHint:(int64_t)hint resultHandler:(id)handler
{
  requestCopy = request;
  queueCopy = queue;
  codeCopy = code;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _SFSpeechRecognitionBlockTask;
  v16 = [(SFSpeechRecognitionTask *)&v27 _initWithRequest:requestCopy queue:queueCopy languageCode:codeCopy taskHint:hint];
  v17 = v16;
  if (v16)
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__177;
    v25[4] = __Block_byref_object_dispose__178;
    v18 = v16;
    v26 = v18;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __92___SFSpeechRecognitionBlockTask__initWithRequest_queue_languageCode_taskHint_resultHandler___block_invoke;
    v22[3] = &unk_1E797BCA0;
    v23 = handlerCopy;
    v24 = v25;
    v19 = [v22 copy];
    v20 = v18[11];
    v18[11] = v19;

    _Block_object_dispose(v25, 8);
  }

  return v17;
}

@end