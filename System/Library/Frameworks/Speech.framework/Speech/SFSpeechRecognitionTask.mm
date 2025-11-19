@interface SFSpeechRecognitionTask
+ (void)initialize;
- (NSError)error;
- (SFSpeechRecognitionTaskState)state;
- (id)_initWithRequest:(id)a3 queue:(id)a4 languageCode:(id)a5 taskHint:(int64_t)a6;
- (void)addRecordedSpeechSampleData:(id)a3;
- (void)cancel;
- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3;
- (void)finish;
- (void)handleSpeechRecognitionDidFailWithError:(uint64_t)a1;
- (void)localSpeechRecognitionClient:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)localSpeechRecognitionClient:(id)a3 speechRecordingDidFail:(id)a4;
- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)a3;
- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)a3;
- (void)stopSpeech;
@end

@implementation SFSpeechRecognitionTask

- (void)stopSpeech
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFSpeechRecognitionTask_stopSpeech__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __37__SFSpeechRecognitionTask_stopSpeech__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stopSpeechWithOptions:0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 stopSpeech];
}

- (void)addRecordedSpeechSampleData:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFSpeechRecognitionTask_addRecordedSpeechSampleData___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __55__SFSpeechRecognitionTask_addRecordedSpeechSampleData___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addRecordedSpeechSampleData:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 addAudioPacket:v2];
}

- (void)localSpeechRecognitionClientSpeechRecognitionDidSucceed:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SFSpeechRecognitionTask_localSpeechRecognitionClientSpeechRecognitionDidSucceed___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __83__SFSpeechRecognitionTask_localSpeechRecognitionClientSpeechRecognitionDidSucceed___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 1;
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)localSpeechRecognitionClient:(id)a3 speechRecognitionDidFail:(id)a4
{
  v5 = a4;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__SFSpeechRecognitionTask_localSpeechRecognitionClient_speechRecognitionDidFail___block_invoke;
  v8[3] = &unk_1E797CB08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

void __81__SFSpeechRecognitionTask_localSpeechRecognitionClient_speechRecognitionDidFail___block_invoke(uint64_t a1)
{
  [(SFSpeechRecognitionTask *)*(a1 + 32) handleSpeechRecognitionDidFailWithError:?];
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)handleSpeechRecognitionDidFailWithError:(uint64_t)a1
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    v4 = v3;
    v5 = [v4 code];
    v6 = MEMORY[0x1E698D280];
    v7 = MEMORY[0x1E696A578];
    v8 = v4;
    if (v5 == 1700)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E698D280];
      v26 = *MEMORY[0x1E696A578];
      v27[0] = @"User denied access to speech recognition";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v8 = [v9 errorWithDomain:v10 code:1700 userInfo:v11];
    }

    if ([v4 code] == 603)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *v6;
      v24 = *v7;
      v25 = @"On device models required for speech recognition on this platform. Set SFSpeechRecognitionRequest.requiresOnDeviceRecognition = true";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [v12 errorWithDomain:v13 code:603 userInfo:v14];

      v8 = v15;
    }

    if (*(a1 + 56))
    {
      v16 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "[SFSpeechRecognitionTask handleSpeechRecognitionDidFailWithError:]";
        v22 = 2112;
        v23 = v8;
        _os_log_error_impl(&dword_1AC5BC000, v16, OS_LOG_TYPE_ERROR, "%s Ignoring subsequent recognition error: %@", &v20, 0x16u);
      }
    }

    else
    {
      v17 = [v8 copy];
      v18 = *(a1 + 56);
      *(a1 + 56) = v17;
    }

    *(a1 + 64) = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)localSpeechRecognitionClient:(id)a3 speechRecordingDidFail:(id)a4
{
  v5 = a4;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__SFSpeechRecognitionTask_localSpeechRecognitionClient_speechRecordingDidFail___block_invoke;
  v8[3] = &unk_1E797CB08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

void __79__SFSpeechRecognitionTask_localSpeechRecognitionClient_speechRecordingDidFail___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56))
  {
    v2 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v10 = 136315394;
      v11 = "[SFSpeechRecognitionTask localSpeechRecognitionClient:speechRecordingDidFail:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_ERROR, "%s Ignoring subsequent local speech recording error: %@", &v10, 0x16u);
    }
  }

  else
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;
  }

  *(*(a1 + 32) + 64) = 1;
  [*(*(a1 + 32) + 16) invalidate];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)localSpeechRecognitionClientSpeechRecordingDidCancel:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__SFSpeechRecognitionTask_localSpeechRecognitionClientSpeechRecordingDidCancel___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __80__SFSpeechRecognitionTask_localSpeechRecognitionClientSpeechRecordingDidCancel___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 67) = 1;
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFSpeechRecognitionTask_dictationConnectionSpeechRecognitionDidSucceed___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __74__SFSpeechRecognitionTask_dictationConnectionSpeechRecognitionDidSucceed___block_invoke(uint64_t a1)
{
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    v2 = *(*(a1 + 32) + 40);
    if (v2)
    {
      v2 = v2[7];
    }

    v3 = v2;
    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.RequestCompleted" withAnalytics:v3];
  }

  *(*(a1 + 32) + 64) = 1;
}

- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4
{
  v5 = a4;
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    request = self->_request;
    if (request)
    {
      request = request->_afDictationRequestParams;
    }

    v7 = request;
    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.RequestFailed" withAnalytics:v7];
  }

  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SFSpeechRecognitionTask_dictationConnection_speechRecognitionDidFail___block_invoke;
  v10[3] = &unk_1E797CB08;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(internalQueue, v10);
}

- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4
{
  v5 = a4;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__SFSpeechRecognitionTask_dictationConnection_speechRecordingDidFail___block_invoke;
  v8[3] = &unk_1E797CB08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

void __70__SFSpeechRecognitionTask_dictationConnection_speechRecordingDidFail___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56))
  {
    v2 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[SFSpeechRecognitionTask dictationConnection:speechRecordingDidFail:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_ERROR, "%s Ignoring subsequent recording error: %@", &v8, 0x16u);
    }
  }

  else
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;
  }

  *(*(a1 + 32) + 64) = 1;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SFSpeechRecognitionTask_dictationConnectionSpeechRecordingDidCancel___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFSpeechRecognitionTask_dictationConnectionSpeechRecordingDidEnd___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SFSpeechRecognitionTask_dictationConnectionSpeechRecordingDidBegin___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__177;
  v10 = __Block_byref_object_dispose__178;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SFSpeechRecognitionTask_error__block_invoke;
  v5[3] = &unk_1E797BC78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__SFSpeechRecognitionTask_error__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)cancel
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFSpeechRecognitionTask_cancel__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __33__SFSpeechRecognitionTask_cancel__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 67) = 1;
  [*(*(a1 + 32) + 8) cancelSpeech];
  v2 = *(*(a1 + 32) + 16);

  return [v2 cancelSpeech];
}

- (void)finish
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFSpeechRecognitionTask_finish__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __33__SFSpeechRecognitionTask_finish__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 66) = 1;
  [*(*(a1 + 32) + 8) stopSpeechWithOptions:0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 stopSpeech];
}

- (SFSpeechRecognitionTaskState)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SFSpeechRecognitionTask_state__block_invoke;
  v5[3] = &unk_1E797BC78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__SFSpeechRecognitionTask_state__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[64])
  {
    v2 = 4;
  }

  else if (v1[67])
  {
    v2 = 3;
  }

  else if (v1[66])
  {
    v2 = 2;
  }

  else
  {
    if (v1[65] != 1)
    {
      return result;
    }

    v2 = 1;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (id)_initWithRequest:(id)a3 queue:(id)a4 languageCode:(id)a5 taskHint:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v30.receiver = self;
  v30.super_class = SFSpeechRecognitionTask;
  v14 = [(SFSpeechRecognitionTask *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    objc_storeStrong(&v15->_externalQueue, a4);
    v16 = dispatch_queue_create("com.apple.Speech.Task.Internal", 0);
    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v16;

    v18 = [v13 copy];
    languageCode = v15->_languageCode;
    v15->_languageCode = v18;

    v20 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v20 UUIDString];
    requestIdentifier = v15->_requestIdentifier;
    v15->_requestIdentifier = v21;

    v23 = [v11 taskHint];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a6;
    }

    v15->_taskHint = v24;
    v25 = v15->_internalQueue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__SFSpeechRecognitionTask__initWithRequest_queue_languageCode_taskHint___block_invoke;
    v27[3] = &unk_1E797CB08;
    v28 = v15;
    v29 = v13;
    dispatch_async(v25, v27);
  }

  return v15;
}

void __72__SFSpeechRecognitionTask__initWithRequest_queue_languageCode_taskHint___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = *(*(a1 + 32) + 72);
  v18 = v2;
  if ([v2 requiresOnDeviceRecognition] && +[SFUtilities isSpeechXPCEnabled](SFUtilities, "isSpeechXPCEnabled"))
  {
    v4 = [v18 _forceUseSiriProcess];
    v5 = v18;
    v6 = v4 ^ 1;
  }

  else
  {
    v6 = 0;
    v5 = v18;
  }

  if (([v5 requiresOnDeviceRecognition] & 1) != 0 || !+[SFUtilities isSpeechXPCEnabled](SFUtilities, "isSpeechXPCEnabled") || !AFOfflineDictationCapable() || !MGGetBoolAnswer() || v3 == 1001 || objc_msgSend(v18, "_forceUseSiriProcess"))
  {
LABEL_15:
    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v7 = [v18 _searchRequest];

  if (!v7)
  {
    v11 = [SFSpeechAssetManager installedLanguagesForTaskHint:0];
    LOBYTE(v6) = [v11 containsObject:*(a1 + 40)] | v6;

    goto LABEL_15;
  }

  if (!v6)
  {
LABEL_13:
    v8 = [v18 _startedConnectionWithLanguageCode:*(*(a1 + 32) + 32) delegate:*(a1 + 32) taskHint:v3 requestIdentifier:*(*(a1 + 32) + 80)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;
    goto LABEL_17;
  }

LABEL_16:
  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  v14 = *(v12 + 80);
  v10 = [v18 taskIdentifier];
  v15 = [v18 _startedLocalConnectionWithLanguageCode:v13 delegate:v12 taskHint:v3 requestIdentifier:v14 taskIdentifier:v10];
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = v15;

LABEL_17:
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1 && SFLogInitIfNeeded_once != -1)
  {

    dispatch_once(&SFLogInitIfNeeded_once, &__block_literal_global_3109);
  }
}

@end