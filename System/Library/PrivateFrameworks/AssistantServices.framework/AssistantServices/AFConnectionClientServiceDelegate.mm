@interface AFConnectionClientServiceDelegate
- (AFConnectionClientServiceDelegate)initWithConnection:(id)connection targetQueue:(id)queue;
- (id)_connectionDelegate;
- (void)aceConnectionWillRetryOnError:(id)error;
- (void)acousticIDRequestDidFinishWithSuccess:(BOOL)success;
- (void)acousticIDRequestWillStart;
- (void)appLaunchFailedWithBundleIdentifier:(id)identifier;
- (void)audioPlaybackRequestDidStart:(id)start;
- (void)audioPlaybackRequestDidStop:(id)stop error:(id)error;
- (void)audioPlaybackRequestWillStart:(id)start;
- (void)audioSessionDidBecomeActive:(BOOL)active;
- (void)audioSessionDidBeginInterruptionWithUserInfo:(id)info;
- (void)audioSessionDidEndInterruption:(BOOL)interruption userInfo:(id)info;
- (void)audioSessionIDChanged:(unsigned int)changed;
- (void)audioSessionWillBecomeActive:(BOOL)active;
- (void)cacheImage:(id)image;
- (void)endWaitingForEmergency;
- (void)extensionRequestFinishedForApplication:(id)application error:(id)error;
- (void)extensionRequestWillStartForApplication:(id)application;
- (void)getBulletinContext:(id)context;
- (void)invalidateCurrentUserActivity;
- (void)musicWasDetected;
- (void)networkDidBecomeActive;
- (void)quickStopWasHandledWithActions:(unint64_t)actions;
- (void)requestDidAskForTimeoutExtension:(double)extension;
- (void)requestDidReceiveCommand:(id)command reply:(id)reply;
- (void)requestDidUpdateResponseMode:(id)mode;
- (void)requestHandleCommand:(id)command reply:(id)reply;
- (void)requestReplayAllRecordedViews:(unint64_t)views with:(id)with;
- (void)requestReplayRecordedViewAt:(unint64_t)at with:(id)with;
- (void)requestRequestedDismissAssistant;
- (void)requestRequestedDismissAssistantWithReason:(int64_t)reason;
- (void)requestRequestedOpenApplicationWithBundleID:(id)d URL:(id)l reply:(id)reply;
- (void)requestRequestedOpenURL:(id)l reply:(id)reply;
- (void)requestSetReplayEnabled:(BOOL)enabled;
- (void)requestSetReplayOverridePath:(id)path;
- (void)setUserActivityInfo:(id)info webpageURL:(id)l;
- (void)shouldSpeakChanged:(BOOL)changed;
- (void)speechRecognitionDidFail:(id)fail;
- (void)speechRecognized:(id)recognized;
- (void)speechRecognizedAdditionalInterpretation:(id)interpretation refId:(id)id;
- (void)speechRecognizedPartialResult:(id)result;
- (void)speechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d reply:(id)reply;
- (void)speechRecordingDidCancelWithReply:(id)reply;
- (void)speechRecordingDidChangeAVRecordRoute:(id)route isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time reply:(id)reply;
- (void)speechRecordingDidEndWithReply:(id)reply;
- (void)speechRecordingDidFail:(id)fail reply:(id)reply;
- (void)speechRecordingDidUpdateRecognitionPhrases:(id)phrases utterances:(id)utterances refId:(id)id;
- (void)speechRecordingPerformTwoShotPromptWithType:(int64_t)type reply:(id)reply;
- (void)speechRecordingStartpointDetectedWithReply:(id)reply;
- (void)speechRecordingWillBeginRecognitionUpdateForTask:(id)task;
- (void)speechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper reply:(id)reply;
- (void)startPlaybackDidFail:(int64_t)fail;
- (void)startUIRequestWithInfo:(id)info completion:(id)completion;
- (void)startUIRequestWithText:(id)text completion:(id)completion;
- (void)willProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)willProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion;
- (void)willStopRecordingWithSignpostID:(unint64_t)d;
@end

@implementation AFConnectionClientServiceDelegate

void __66__AFConnectionClientServiceDelegate_invalidateCurrentUserActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateInvalidateCurrentUserActivity];
}

- (void)networkDidBecomeActive
{
  objc_copyWeak(&to, &self->_connection);
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AFConnectionClientServiceDelegate_networkDidBecomeActive__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &to);
  dispatch_async(targetQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&to);
}

- (void)invalidateCurrentUserActivity
{
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AFConnectionClientServiceDelegate_invalidateCurrentUserActivity__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(targetQueue, block);
}

- (id)_connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  delegate = [WeakRetained delegate];

  return delegate;
}

void __59__AFConnectionClientServiceDelegate_networkDidBecomeActive__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _markNetworkDidBecomeActive];
}

- (void)endWaitingForEmergency
{
  currentCoordinator = [MEMORY[0x1E69CE398] currentCoordinator];
  [currentCoordinator endWaitingForEmergency];
}

- (void)appLaunchFailedWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_copyWeak(&to, &self->_connection);
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AFConnectionClientServiceDelegate_appLaunchFailedWithBundleIdentifier___block_invoke;
  block[3] = &unk_1E73470E0;
  objc_copyWeak(&v9, &to);
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(targetQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&to);
}

void __73__AFConnectionClientServiceDelegate_appLaunchFailedWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tellDelegateFailedToLaunchAppWithBundleIdentifier:*(a1 + 32)];
}

- (void)willProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_copyWeak(&to, &self->_connection);
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AFConnectionClientServiceDelegate_willProcessAppLaunchWithBundleIdentifier___block_invoke;
  block[3] = &unk_1E73470E0;
  objc_copyWeak(&v9, &to);
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(targetQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&to);
}

void __78__AFConnectionClientServiceDelegate_willProcessAppLaunchWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tellDelegateWillProcessAppLaunchWithBundleIdentifier:*(a1 + 32)];
}

- (void)audioSessionDidBecomeActive:(BOOL)active
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AFConnectionClientServiceDelegate_audioSessionDidBecomeActive___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(targetQueue, v4);
}

void __65__AFConnectionClientServiceDelegate_audioSessionDidBecomeActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateAudioSessionDidBecomeActive:*(a1 + 40)];
}

- (void)audioSessionWillBecomeActive:(BOOL)active
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AFConnectionClientServiceDelegate_audioSessionWillBecomeActive___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(targetQueue, v4);
}

void __66__AFConnectionClientServiceDelegate_audioSessionWillBecomeActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateAudioSessionWillBecomeActive:*(a1 + 40)];
}

- (void)startPlaybackDidFail:(int64_t)fail
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AFConnectionClientServiceDelegate_startPlaybackDidFail___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = fail;
  dispatch_async(targetQueue, v4);
}

void __58__AFConnectionClientServiceDelegate_startPlaybackDidFail___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateStartPlaybackDidFail:*(a1 + 40)];
}

- (void)willProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  targetQueue = self->_targetQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__AFConnectionClientServiceDelegate_willProcessStartPlayback_intent_completion___block_invoke;
  v13[3] = &unk_1E7343940;
  v13[4] = self;
  v14 = intentCopy;
  v15 = completionCopy;
  playbackCopy = playback;
  v11 = completionCopy;
  v12 = intentCopy;
  dispatch_async(targetQueue, v13);
}

void __80__AFConnectionClientServiceDelegate_willProcessStartPlayback_intent_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellDelegateWillProcessStartPlayback:a1[7] intent:a1[5] completion:a1[6]];
}

- (void)audioPlaybackRequestDidStop:(id)stop error:(id)error
{
  stopCopy = stop;
  errorCopy = error;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AFConnectionClientServiceDelegate_audioPlaybackRequestDidStop_error___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = stopCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = stopCopy;
  dispatch_async(targetQueue, block);
}

void __71__AFConnectionClientServiceDelegate_audioPlaybackRequestDidStop_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellDelegateAudioPlaybackRequestDidStop:a1[5] error:a1[6]];
}

- (void)audioPlaybackRequestDidStart:(id)start
{
  startCopy = start;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFConnectionClientServiceDelegate_audioPlaybackRequestDidStart___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(targetQueue, v7);
}

void __66__AFConnectionClientServiceDelegate_audioPlaybackRequestDidStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateAudioPlaybackRequestDidStart:*(a1 + 40)];
}

- (void)audioPlaybackRequestWillStart:(id)start
{
  startCopy = start;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AFConnectionClientServiceDelegate_audioPlaybackRequestWillStart___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(targetQueue, v7);
}

void __67__AFConnectionClientServiceDelegate_audioPlaybackRequestWillStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateAudioPlaybackRequestWillStart:*(a1 + 40)];
}

- (void)audioSessionDidEndInterruption:(BOOL)interruption userInfo:(id)info
{
  infoCopy = info;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__AFConnectionClientServiceDelegate_audioSessionDidEndInterruption_userInfo___block_invoke;
  block[3] = &unk_1E7344368;
  interruptionCopy = interruption;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(targetQueue, block);
}

void __77__AFConnectionClientServiceDelegate_audioSessionDidEndInterruption_userInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateAudioSessionDidEndInterruption:*(a1 + 48) userInfo:*(a1 + 40)];
}

- (void)audioSessionDidBeginInterruptionWithUserInfo:(id)info
{
  infoCopy = info;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__AFConnectionClientServiceDelegate_audioSessionDidBeginInterruptionWithUserInfo___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(targetQueue, v7);
}

void __82__AFConnectionClientServiceDelegate_audioSessionDidBeginInterruptionWithUserInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateAudioSessionDidBeginInterruptionWithUserInfo:*(a1 + 40)];
}

- (void)speechRecognitionDidFail:(id)fail
{
  failCopy = fail;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AFConnectionClientServiceDelegate_speechRecognitionDidFail___block_invoke;
  block[3] = &unk_1E73484C0;
  v9 = failCopy;
  v10 = a2;
  block[4] = self;
  v7 = failCopy;
  dispatch_async(targetQueue, block);
}

void __62__AFConnectionClientServiceDelegate_speechRecognitionDidFail___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = NSStringFromSelector(*(a1 + 48));
  [WeakRetained _cancelRequestTimeoutForReason:v3];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v4 _tellSpeechDelegateRecognitionDidFail:*(a1 + 40)];
}

- (void)speechRecognizedPartialResult:(id)result
{
  resultCopy = result;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AFConnectionClientServiceDelegate_speechRecognizedPartialResult___block_invoke;
  block[3] = &unk_1E73484C0;
  v9 = resultCopy;
  v10 = a2;
  block[4] = self;
  v7 = resultCopy;
  dispatch_async(targetQueue, block);
}

void __67__AFConnectionClientServiceDelegate_speechRecognizedPartialResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = NSStringFromSelector(*(a1 + 48));
  [WeakRetained _extendExistingRequestTimeoutForReason:v3];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v4 _tellSpeechDelegateSpeechRecognizedPartialResult:*(a1 + 40)];
}

- (void)speechRecordingWillBeginRecognitionUpdateForTask:(id)task
{
  taskCopy = task;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__AFConnectionClientServiceDelegate_speechRecordingWillBeginRecognitionUpdateForTask___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(targetQueue, v7);
}

void __86__AFConnectionClientServiceDelegate_speechRecordingWillBeginRecognitionUpdateForTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellSpeechDelegateRecognitionUpdateWillBeginForTask:*(a1 + 40)];
}

- (void)speechRecordingDidUpdateRecognitionPhrases:(id)phrases utterances:(id)utterances refId:(id)id
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  idCopy = id;
  targetQueue = self->_targetQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__AFConnectionClientServiceDelegate_speechRecordingDidUpdateRecognitionPhrases_utterances_refId___block_invoke;
  v15[3] = &unk_1E7349398;
  v15[4] = self;
  v16 = phrasesCopy;
  v17 = utterancesCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = utterancesCopy;
  v14 = phrasesCopy;
  dispatch_async(targetQueue, v15);
}

void __97__AFConnectionClientServiceDelegate_speechRecordingDidUpdateRecognitionPhrases_utterances_refId___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellSpeechDelegateRecordingDidUpdateRecognitionPhrases:a1[5] utterances:a1[6] refId:a1[7]];
}

- (void)speechRecognizedAdditionalInterpretation:(id)interpretation refId:(id)id
{
  interpretationCopy = interpretation;
  idCopy = id;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AFConnectionClientServiceDelegate_speechRecognizedAdditionalInterpretation_refId___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = interpretationCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = interpretationCopy;
  dispatch_async(targetQueue, block);
}

void __84__AFConnectionClientServiceDelegate_speechRecognizedAdditionalInterpretation_refId___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellSpeechDelegateRecognizedAdditionalSpeechInterpretation:a1[5] refId:a1[6]];
}

- (void)speechRecognized:(id)recognized
{
  recognizedCopy = recognized;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AFConnectionClientServiceDelegate_speechRecognized___block_invoke;
  block[3] = &unk_1E73484C0;
  v9 = recognizedCopy;
  v10 = a2;
  block[4] = self;
  v7 = recognizedCopy;
  dispatch_async(targetQueue, block);
}

void __54__AFConnectionClientServiceDelegate_speechRecognized___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = NSStringFromSelector(*(a1 + 48));
  [WeakRetained _markSpeechRecognized];
  [WeakRetained _extendRequestTimeoutForReason:v2 durationInSeconds:0.0];
  [WeakRetained _tellSpeechDelegateSpeechRecognized:*(a1 + 40)];
  [WeakRetained _beginInterstitialsForReason:v2];
}

- (void)willStopRecordingWithSignpostID:(unint64_t)d
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFConnectionClientServiceDelegate_willStopRecordingWithSignpostID___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(targetQueue, v4);
}

void __69__AFConnectionClientServiceDelegate_willStopRecordingWithSignpostID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _willStopRecordingWithSignpostID:*(a1 + 40)];
}

- (void)speechRecordingDidFail:(id)fail reply:(id)reply
{
  failCopy = fail;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AFConnectionClientServiceDelegate_speechRecordingDidFail_reply___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = failCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = failCopy;
  dispatch_async(targetQueue, block);
}

uint64_t __66__AFConnectionClientServiceDelegate_speechRecordingDidFail_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _speechRecordingDidFailWithError:a1[5]];

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)speechRecordingDidCancelWithReply:(id)reply
{
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AFConnectionClientServiceDelegate_speechRecordingDidCancelWithReply___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(targetQueue, v7);
}

void __71__AFConnectionClientServiceDelegate_speechRecordingDidCancelWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _updateStateIfNotInSync];
  [WeakRetained _checkAndSetIsCapturingSpeech:0];
  [WeakRetained _tellSpeechDelegateRecordingDidCancel];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)speechRecordingDidEndWithReply:(id)reply
{
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AFConnectionClientServiceDelegate_speechRecordingDidEndWithReply___block_invoke;
  block[3] = &unk_1E73484E8;
  v9 = replyCopy;
  v10 = a2;
  block[4] = self;
  v7 = replyCopy;
  dispatch_async(targetQueue, block);
}

void __68__AFConnectionClientServiceDelegate_speechRecordingDidEndWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = NSStringFromSelector(*(a1 + 48));
  [WeakRetained _extendRequestTimeoutForReason:v2 durationInSeconds:0.0];
  [WeakRetained _checkAndSetIsCapturingSpeech:0];
  [WeakRetained _tellSpeechDelegateRecordingDidEnd];
  [WeakRetained _beginInterstitialsForReason:v2];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)speechRecordingPerformTwoShotPromptWithType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__AFConnectionClientServiceDelegate_speechRecordingPerformTwoShotPromptWithType_reply___block_invoke;
  block[3] = &unk_1E73484E8;
  v10 = replyCopy;
  typeCopy = type;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(targetQueue, block);
}

void __87__AFConnectionClientServiceDelegate_speechRecordingPerformTwoShotPromptWithType_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellSpeechDelegateToPerformTwoShotPromptWithType:a1[6] reply:a1[5]];
}

- (void)speechRecordingStartpointDetectedWithReply:(id)reply
{
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__AFConnectionClientServiceDelegate_speechRecordingStartpointDetectedWithReply___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(targetQueue, v7);
}

uint64_t __80__AFConnectionClientServiceDelegate_speechRecordingStartpointDetectedWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellSpeechDelegateRecordingDidDetectStartpoint];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)speechRecordingDidChangeAVRecordRoute:(id)route isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time reply:(id)reply
{
  routeCopy = route;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__AFConnectionClientServiceDelegate_speechRecordingDidChangeAVRecordRoute_isDucking_isTwoShot_speechEndHostTime_reply___block_invoke;
  block[3] = &unk_1E7341AB8;
  block[4] = self;
  v18 = routeCopy;
  duckingCopy = ducking;
  shotCopy = shot;
  v19 = replyCopy;
  timeCopy = time;
  v15 = replyCopy;
  v16 = routeCopy;
  dispatch_async(targetQueue, block);
}

void __119__AFConnectionClientServiceDelegate_speechRecordingDidChangeAVRecordRoute_isDucking_isTwoShot_speechEndHostTime_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setRecordRoute:*(a1 + 40)];
  if (*(a1 + 64) == 1)
  {
    [WeakRetained _markIsDucking];
  }

  if (*(a1 + 65) == 1)
  {
    [WeakRetained _markIsTwoShot];
  }

  v2 = WeakRetained;
  if (*(a1 + 56))
  {
    [WeakRetained _updateSpeechEndHostTime:?];
    v2 = WeakRetained;
  }

  [v2 _tellSpeechDelegateRecordingDidChangeAVRecordRoute:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)speechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d reply:(id)reply
{
  routeCopy = route;
  replyCopy = reply;
  kdebug_trace();
  targetQueue = self->_targetQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__AFConnectionClientServiceDelegate_speechRecordingDidBeginOnAVRecordRoute_audioSessionID_reply___block_invoke;
  v13[3] = &unk_1E7344390;
  dCopy = d;
  v13[4] = self;
  v14 = routeCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = routeCopy;
  dispatch_async(targetQueue, v13);
}

void __97__AFConnectionClientServiceDelegate_speechRecordingDidBeginOnAVRecordRoute_audioSessionID_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setAudioSessionID:*(a1 + 56)];
  [WeakRetained _setRecordRoute:*(a1 + 40)];
  [WeakRetained _tellSpeechDelegateRecordingDidBeginOnAVRecordRoute:*(a1 + 40) audioSessionID:*(a1 + 56)];
  [WeakRetained _updateStateIfNotInSync];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)speechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper reply:(id)reply
{
  wrapperCopy = wrapper;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AFConnectionClientServiceDelegate_speechRecordingWillBeginWithInputAudioPowerXPCWrapper_reply___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = wrapperCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = wrapperCopy;
  dispatch_async(targetQueue, block);
}

uint64_t __97__AFConnectionClientServiceDelegate_speechRecordingWillBeginWithInputAudioPowerXPCWrapper_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained _startInputAudioPowerUpdatesWithXPCWrapper:a1[5]];

  v4 = objc_loadWeakRetained((a1[4] + 8));
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[5];
  }

  [v4 _tellSpeechDelegateRecordingWillBeginWithInputAudioPowerXPCWrapper:v6];

  result = a1[6];
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)aceConnectionWillRetryOnError:(id)error
{
  errorCopy = error;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AFConnectionClientServiceDelegate_aceConnectionWillRetryOnError___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(targetQueue, v7);
}

void __67__AFConnectionClientServiceDelegate_aceConnectionWillRetryOnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _aceConnectionWillRetryOnError:*(a1 + 40)];
}

- (void)audioSessionIDChanged:(unsigned int)changed
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AFConnectionClientServiceDelegate_audioSessionIDChanged___block_invoke;
  v4[3] = &unk_1E7346BE8;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(targetQueue, v4);
}

void __59__AFConnectionClientServiceDelegate_audioSessionIDChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setAudioSessionID:*(a1 + 40)];
}

- (void)shouldSpeakChanged:(BOOL)changed
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AFConnectionClientServiceDelegate_shouldSpeakChanged___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(targetQueue, v4);
}

void __56__AFConnectionClientServiceDelegate_shouldSpeakChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setShouldSpeak:*(a1 + 40)];
}

- (void)extensionRequestFinishedForApplication:(id)application error:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AFConnectionClientServiceDelegate_extensionRequestFinishedForApplication_error___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = applicationCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = applicationCopy;
  dispatch_async(targetQueue, block);
}

void __82__AFConnectionClientServiceDelegate_extensionRequestFinishedForApplication_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellDelegateExtensionRequestFinishedForApplication:a1[5] error:a1[6]];
}

- (void)extensionRequestWillStartForApplication:(id)application
{
  applicationCopy = application;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AFConnectionClientServiceDelegate_extensionRequestWillStartForApplication___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = applicationCopy;
  v6 = applicationCopy;
  dispatch_async(targetQueue, v7);
}

void __77__AFConnectionClientServiceDelegate_extensionRequestWillStartForApplication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateExtensionRequestWillStartForApplication:*(a1 + 40)];
}

- (void)cacheImage:(id)image
{
  imageCopy = image;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AFConnectionClientServiceDelegate_cacheImage___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = imageCopy;
  v6 = imageCopy;
  dispatch_async(targetQueue, v7);
}

void __48__AFConnectionClientServiceDelegate_cacheImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateCacheImage:*(a1 + 40)];
}

- (void)setUserActivityInfo:(id)info webpageURL:(id)l
{
  infoCopy = info;
  lCopy = l;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AFConnectionClientServiceDelegate_setUserActivityInfo_webpageURL___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = infoCopy;
  v13 = lCopy;
  v9 = lCopy;
  v10 = infoCopy;
  dispatch_async(targetQueue, block);
}

void __68__AFConnectionClientServiceDelegate_setUserActivityInfo_webpageURL___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _tellDelegateSetUserActivityInfo:a1[5] webpageURL:a1[6]];
}

- (void)acousticIDRequestDidFinishWithSuccess:(BOOL)success
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AFConnectionClientServiceDelegate_acousticIDRequestDidFinishWithSuccess___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  successCopy = success;
  dispatch_async(targetQueue, v4);
}

void __75__AFConnectionClientServiceDelegate_acousticIDRequestDidFinishWithSuccess___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateDidFinishAcousticIDRequestWithSuccess:*(a1 + 40)];
}

- (void)musicWasDetected
{
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AFConnectionClientServiceDelegate_musicWasDetected__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(targetQueue, block);
}

void __53__AFConnectionClientServiceDelegate_musicWasDetected__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateDidDetectMusic];
}

- (void)acousticIDRequestWillStart
{
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AFConnectionClientServiceDelegate_acousticIDRequestWillStart__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(targetQueue, block);
}

void __63__AFConnectionClientServiceDelegate_acousticIDRequestWillStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellDelegateWillStartAcousticIDRequest];
}

- (void)getBulletinContext:(id)context
{
  contextCopy = context;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AFConnectionClientServiceDelegate_getBulletinContext___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(targetQueue, v7);
}

void __56__AFConnectionClientServiceDelegate_getBulletinContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v2 = [WeakRetained _cachedBulletins];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)quickStopWasHandledWithActions:(unint64_t)actions
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AFConnectionClientServiceDelegate_quickStopWasHandledWithActions___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = actions;
  dispatch_async(targetQueue, v4);
}

void __68__AFConnectionClientServiceDelegate_quickStopWasHandledWithActions___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 136315650;
    v9 = "[AFConnectionClientServiceDelegate quickStopWasHandledWithActions:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s %@ Got quick stop handled message with actions %tu taken.", &v8, 0x20u);
  }

  v5 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v5 assistantConnection:WeakRetained didHandleQuickStopWithAction:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestDidAskForTimeoutExtension:(double)extension
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFConnectionClientServiceDelegate_requestDidAskForTimeoutExtension___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  *&v4[5] = extension;
  dispatch_async(targetQueue, v4);
}

void __70__AFConnectionClientServiceDelegate_requestDidAskForTimeoutExtension___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained requestDidAskForTimeoutExtension:*(a1 + 40)];
}

- (void)requestDidUpdateResponseMode:(id)mode
{
  modeCopy = mode;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFConnectionClientServiceDelegate_requestDidUpdateResponseMode___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = modeCopy;
  v6 = modeCopy;
  dispatch_async(targetQueue, v7);
}

void __66__AFConnectionClientServiceDelegate_requestDidUpdateResponseMode___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[AFFeatureFlags isStateFeedbackEnabled])
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v8 = 136315650;
      v9 = "[AFConnectionClientServiceDelegate requestDidUpdateResponseMode:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #modes %@ Got update to response mode : %@", &v8, 0x20u);
    }

    v5 = [*(a1 + 32) _connectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      [v5 assistantConnection:WeakRetained didUpdateResponseMode:*(a1 + 40)];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestRequestedDismissAssistantWithReason:(int64_t)reason
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__AFConnectionClientServiceDelegate_requestRequestedDismissAssistantWithReason___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(targetQueue, v4);
}

void __80__AFConnectionClientServiceDelegate_requestRequestedDismissAssistantWithReason___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 136315650;
    v9 = "[AFConnectionClientServiceDelegate requestRequestedDismissAssistantWithReason:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s %@ Got dismiss assistant message with reason : %ld", &v8, 0x20u);
  }

  v5 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v5 assistantConnection:WeakRetained dismissAssistantWithReason:*(a1 + 40)];
LABEL_7:

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v5 assistantConnectionDismissAssistant:WeakRetained];
    goto LABEL_7;
  }

LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestRequestedDismissAssistant
{
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AFConnectionClientServiceDelegate_requestRequestedDismissAssistant__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(targetQueue, block);
}

void __69__AFConnectionClientServiceDelegate_requestRequestedDismissAssistant__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[AFConnectionClientServiceDelegate requestRequestedDismissAssistant]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s %@ Got dismiss assistant message", &v7, 0x16u);
  }

  v4 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 assistantConnectionDismissAssistant:WeakRetained];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestRequestedOpenURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AFConnectionClientServiceDelegate_requestRequestedOpenURL_reply___block_invoke;
  block[3] = &unk_1E73496E8;
  v12 = lCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = lCopy;
  dispatch_async(targetQueue, block);
}

void __67__AFConnectionClientServiceDelegate_requestRequestedOpenURL_reply___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v6 = [*(a1 + 40) _connectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      [v6 assistantConnection:WeakRetained openURL:*(a1 + 32) completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[AFConnectionClientServiceDelegate requestRequestedOpenURL:reply:]_block_invoke";
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Unexpected nil URL", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)requestRequestedOpenApplicationWithBundleID:(id)d URL:(id)l reply:(id)reply
{
  dCopy = d;
  lCopy = l;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__AFConnectionClientServiceDelegate_requestRequestedOpenApplicationWithBundleID_URL_reply___block_invoke;
  v15[3] = &unk_1E73479F0;
  v16 = dCopy;
  selfCopy = self;
  v18 = lCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = lCopy;
  v14 = dCopy;
  dispatch_async(targetQueue, v15);
}

void __91__AFConnectionClientServiceDelegate_requestRequestedOpenApplicationWithBundleID_URL_reply___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v6 = [*(a1 + 40) _connectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      [v6 assistantConnection:WeakRetained openApplicationWithBundleID:*(a1 + 32) URL:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[AFConnectionClientServiceDelegate requestRequestedOpenApplicationWithBundleID:URL:reply:]_block_invoke";
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Unexpected nil bundle ID", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)requestHandleCommand:(id)command reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AFConnectionClientServiceDelegate_requestHandleCommand_reply___block_invoke;
  block[3] = &unk_1E73496E8;
  v12 = commandCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = commandCopy;
  dispatch_async(targetQueue, block);
}

void __64__AFConnectionClientServiceDelegate_requestHandleCommand_reply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1 && (ClientCommandDeliveryDelay = _AFPreferencesGetClientCommandDeliveryDelay(), ClientCommandDeliveryDelay > 0.0))
  {
    v3 = ClientCommandDeliveryDelay;
    v4 = [MEMORY[0x1E696AE30] processInfo];
    [v4 systemUptime];
    v6 = v5;

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      *buf = 136315650;
      v25 = "[AFConnectionClientServiceDelegate requestHandleCommand:reply:]_block_invoke";
      v26 = 2112;
      v27 = v17;
      v28 = 2048;
      v29 = v3;
      _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s Delaying delivery of client command %@ by %f seconds...", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    v9 = [WeakRetained _activeRequestUUID];

    v10 = dispatch_time(0, (v3 * 1000000000.0));
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(v12 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AFConnectionClientServiceDelegate_requestHandleCommand_reply___block_invoke_758;
    block[3] = &unk_1E7342CF0;
    block[4] = v12;
    v20 = v9;
    v21 = v11;
    v23 = v6;
    v22 = *(a1 + 48);
    v14 = v9;
    dispatch_after(v10, v13, block);

    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v18 = objc_loadWeakRetained((*(a1 + 40) + 8));
    [v18 _handleCommand:*(a1 + 32) reply:*(a1 + 48)];
    v16 = *MEMORY[0x1E69E9840];
  }
}

void __64__AFConnectionClientServiceDelegate_requestHandleCommand_reply___block_invoke_758(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained _activeRequestUUID];
  v4 = [v3 isEqual:*(a1 + 40)];

  v5 = AFSiriLogContextConnection;
  v6 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v9 = *(a1 + 48);
      v10 = MEMORY[0x1E696AE30];
      v11 = v5;
      v12 = [v10 processInfo];
      [v12 systemUptime];
      v14 = v13 - *(a1 + 64);
      v16 = 136315650;
      v17 = "[AFConnectionClientServiceDelegate requestHandleCommand:reply:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      v20 = 2048;
      v21 = v14;
      _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s Delayed delivery of client command %@ by %f seconds.", &v16, 0x20u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v7 _handleCommand:*(a1 + 48) reply:*(a1 + 56)];
  }

  else if (v6)
  {
    v15 = *(a1 + 48);
    v16 = 136315394;
    v17 = "[AFConnectionClientServiceDelegate requestHandleCommand:reply:]_block_invoke";
    v18 = 2112;
    v19 = v15;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s Dropping delayed client command %@ because request already ended.", &v16, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestDidReceiveCommand:(id)command reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AFConnectionClientServiceDelegate_requestDidReceiveCommand_reply___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = commandCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = commandCopy;
  dispatch_async(targetQueue, block);
}

void __68__AFConnectionClientServiceDelegate_requestDidReceiveCommand_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AFConnectionClientServiceDelegate_requestDidReceiveCommand_reply___block_invoke_2;
  v4[3] = &unk_1E7341828;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [WeakRetained _handleCommand:v3 reply:v4];
}

uint64_t __68__AFConnectionClientServiceDelegate_requestDidReceiveCommand_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestSetReplayOverridePath:(id)path
{
  pathCopy = path;
  targetQueue = self->_targetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFConnectionClientServiceDelegate_requestSetReplayOverridePath___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_async(targetQueue, v7);
}

void __66__AFConnectionClientServiceDelegate_requestSetReplayOverridePath___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v3 assistantConnection:WeakRetained setReplayOverridePath:*(a1 + 40)];
  }
}

- (void)requestSetReplayEnabled:(BOOL)enabled
{
  targetQueue = self->_targetQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AFConnectionClientServiceDelegate_requestSetReplayEnabled___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(targetQueue, v4);
}

void __61__AFConnectionClientServiceDelegate_requestSetReplayEnabled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v3 assistantConnection:WeakRetained setReplayEnabled:*(a1 + 40)];
  }
}

- (void)requestReplayRecordedViewAt:(unint64_t)at with:(id)with
{
  withCopy = with;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AFConnectionClientServiceDelegate_requestReplayRecordedViewAt_with___block_invoke;
  block[3] = &unk_1E73484C0;
  v10 = withCopy;
  atCopy = at;
  block[4] = self;
  v8 = withCopy;
  dispatch_async(targetQueue, block);
}

void __70__AFConnectionClientServiceDelegate_requestReplayRecordedViewAt_with___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = v3;
      v7 = [v4 path];
      v10 = 136315650;
      v11 = "[AFConnectionClientServiceDelegate requestReplayRecordedViewAt:with:]_block_invoke";
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s #ReplayAt. index: %lu,  recordingDataURL: %@", &v10, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v2 assistantConnection:WeakRetained replayAt:*(a1 + 48) with:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)requestReplayAllRecordedViews:(unint64_t)views with:(id)with
{
  withCopy = with;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AFConnectionClientServiceDelegate_requestReplayAllRecordedViews_with___block_invoke;
  block[3] = &unk_1E73484C0;
  v10 = withCopy;
  viewsCopy = views;
  block[4] = self;
  v8 = withCopy;
  dispatch_async(targetQueue, block);
}

void __72__AFConnectionClientServiceDelegate_requestReplayAllRecordedViews_with___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = v3;
      v7 = [v4 path];
      v10 = 136315650;
      v11 = "[AFConnectionClientServiceDelegate requestReplayAllRecordedViews:with:]_block_invoke";
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s #ReplayAll. intervalSeconds: %lu,  recordingDataURL: %@", &v10, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v2 assistantConnection:WeakRetained replayAll:*(a1 + 48) with:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequestWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AFConnectionClientServiceDelegate_startUIRequestWithInfo_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(targetQueue, block);
}

void __71__AFConnectionClientServiceDelegate_startUIRequestWithInfo_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _startUIRequestWithInfo:a1[5] completion:a1[6]];
}

- (void)startUIRequestWithText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AFConnectionClientServiceDelegate_startUIRequestWithText_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = textCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = textCopy;
  dispatch_async(targetQueue, block);
}

void __71__AFConnectionClientServiceDelegate_startUIRequestWithText_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained _startUIRequestWithText:a1[5] completion:a1[6]];
}

- (AFConnectionClientServiceDelegate)initWithConnection:(id)connection targetQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = AFConnectionClientServiceDelegate;
  v8 = [(AFConnectionClientServiceDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    if (queueCopy)
    {
      v10 = queueCopy;
      targetQueue = v9->_targetQueue;
      v9->_targetQueue = v10;
    }

    else
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      targetQueue = v9->_targetQueue;
      v9->_targetQueue = v12;
    }
  }

  return v9;
}

@end