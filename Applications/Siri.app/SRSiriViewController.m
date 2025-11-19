@interface SRSiriViewController
+ (double)_contentWidthForWidth:(double)result isPhone:(BOOL)a4 isZoomed:(BOOL)a5 isLargeFormatPad:(BOOL)a6;
+ (id)_exportedInterface;
+ (id)_speechIdentifierForConversationItem:(id)a3;
- ($5B118637EA29FD52B6AA7C9036D3A2A1)keyboardInfoForSiriPresentation:(SEL)a3;
- (AFUIAudioPlayer)_audioMessagePlayer;
- (AFUIAudioPlayer)_voicemailPlayer;
- (BOOL)_isReplayUItest;
- (BOOL)_isSiriIdleAndQuiet;
- (BOOL)_languageMatchesConversation:(id)a3;
- (BOOL)_presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:(id)a3;
- (BOOL)_resumesInterruptedAudioPlaybackForAttendingState:(BOOL)a3;
- (BOOL)_shouldLowerKeyboardForAddViewsCommand:(id)a3;
- (BOOL)_siriIsShowingPasscodeUnlock;
- (BOOL)_suppressTTSForErrorsAndInterstitials;
- (BOOL)_usesEventDrivenIdleAndQuietUpdates;
- (BOOL)inTextInputModeForSiriPresentation:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAutorotate;
- (BOOL)siriPresentation:(id)a3 itemAtIndexPathIsVirgin:(id)a4;
- (BOOL)siriPresentationShouldDelaySuggestions:(id)a3;
- (BOOL)siriSessionShouldRequestUpdateForViewWithIdentifier:(id)a3;
- (BOOL)textInputEnabled;
- (CGRect)_statusBarFrame;
- (CGRect)_systemContentFrame;
- (CGRect)frameForApplication:(id)a3;
- (CGRect)statusBarFrameForSiriPresentation:(id)a3;
- (NSMutableSet)_completedCommandAppPunchOutIds;
- (SRSiriViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)contentWidthForForSiriPresentation:(id)a3;
- (double)statusViewHeightForSiriPresentation:(id)a3;
- (id)_aceCommandWithIdentifier:(id)a3;
- (id)_activeConversation;
- (id)_activeConversationItemAtIndexPath:(id)a3;
- (id)_configuredSpeakableUtteranceParserForCommand:(id)a3 context:(id)a4 speakableText:(id)a5 subCompletion:(id)a6 speakPreparation:(id *)a7 speakCompletion:(id *)a8;
- (id)_conversationWithIdentifier:(id)a3;
- (id)_delayedConversationItemRevisionIdentifiers;
- (id)_dialogPhaseForItemAtIndexPath:(id)a3;
- (id)_metricsContextForItemWithAceCommandId:(id)a3;
- (id)_pendingPreSynthesisTasks;
- (id)_presentationViewController;
- (id)_presentedConversationItemRevisionIdentifiers;
- (id)_previousConversation;
- (id)_punchoutMetricsAceCommandIdForItemWithIdentifier:(id)a3;
- (id)_searchAddViewsForSpokenHintsView:(id)a3;
- (id)_startNewConversation;
- (id)_uiPresentationIdentifier;
- (id)activeRequestOptionsForSiriPresentation:(id)a3;
- (id)audioPlayer:(id)a3 audioURLForCommand:(id)a4;
- (id)conversationIdentifiersForSiriPresentation:(id)a3;
- (id)domainObjectForIdentifier:(id)a3;
- (id)localeForSiriPresentation:(id)a3;
- (id)preferredFocusEnvironments;
- (id)removeAlternativeFeatureViews:(id)a3;
- (id)siriPresentation:(id)a3 aceCommandIdentifierForItemAtIndexPath:(id)a4;
- (id)siriPresentation:(id)a3 aceObjectForItemAtIndexPath:(id)a4;
- (id)siriPresentation:(id)a3 additionalSpeechInterpretationsForRefId:(id)a4;
- (id)siriPresentation:(id)a3 domainObjectForIdentifier:(id)a4;
- (id)siriPresentation:(id)a3 identifierOfItemAtIndexPath:(id)a4;
- (id)siriPresentation:(id)a3 indexPathForItemWithIdentifier:(id)a4;
- (id)siriPresentation:(id)a3 updatedUserUtteranceForRefId:(id)a4;
- (int)_instrumentationPresentationForPresentationOptions:(int64_t)a3;
- (int)_instrumentationResponseModeForMode:(unint64_t)a3;
- (int)_mapSiriTransitionState:(int64_t)a3;
- (int64_t)_presentationOptions;
- (int64_t)_viewModeFromPresentationOptions:(int64_t)a3;
- (int64_t)siriPresentation:(id)a3 numberOfChildrenForItemAtIndexPath:(id)a4;
- (int64_t)siriPresentation:(id)a3 presentationStateForItemAtIndexPath:(id)a4;
- (int64_t)siriPresentation:(id)a3 typeOfItemAtIndexPath:(id)a4;
- (unint64_t)_MDModeToSRModeConverter:(unint64_t)a3;
- (unint64_t)_SRModeToMDModeConverter:(unint64_t)a3;
- (unint64_t)_readoutResultFromTTSResult:(int64_t)a3 error:(id)a4;
- (unint64_t)_readoutResultFromTitleResult:(unint64_t)a3 messageResult:(unint64_t)a4;
- (unint64_t)_responseModeToMDModeConverter:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activateConversation:(id)a3;
- (void)_activeRequestOptionsDidChange;
- (void)_addErrorUtterance:(id)a3;
- (void)_audioSessionRouteDidChange:(id)a3;
- (void)_cancelCurrentAudioMessagePlayback:(id)a3;
- (void)_cancelIdleTimer;
- (void)_cancelLastRootProvisionalSnippetFromLastRequestInConversation:(id)a3;
- (void)_cancelSpeechSynthesis;
- (void)_checkAndUpdateSiriIdleAndQuietStatusIfNeeded;
- (void)_checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded;
- (void)_checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:(id)a3;
- (void)_connectionWasInterrupted;
- (void)_connectionWasInvalidated;
- (void)_delayAceCommandSuccess:(id)a3 forDuration:(double)a4;
- (void)_deleteConversationWithIdentifier:(id)a3;
- (void)_deletePreviousConversation;
- (void)_didCompleteActionForAceCommand:(id)a3 success:(BOOL)a4;
- (void)_didReceiveAceCommand:(id)a3 completion:(id)a4;
- (void)_didStartActionForAceCommand:(id)a3;
- (void)_didStartActionForItemAtIndexPath:(id)a3 inConversation:(id)a4;
- (void)_dismissWithReason:(int64_t)a3;
- (void)_displayNotReadyError:(id)a3;
- (void)_emitRenderingEnded;
- (void)_emitRenderingStarted;
- (void)_enqueueSpokenSuggestionsFromAddViews:(id)a3;
- (void)_ensurePresentationForReplay;
- (void)_fetchAttendingState:(id)a3;
- (void)_handleRequestError:(id)a3 completion:(id)a4;
- (void)_idleTimerFired:(id)a3;
- (void)_insertUserUtteranceViewForSuggestion:(id)a3;
- (void)_insertUserUtteranceViewForText:(id)a3;
- (void)_invalidateConnection;
- (void)_logAceObjectPresented:(id)a3 dialogPhase:(id)a4;
- (void)_logAceObjectSpoken:(id)a3 dialogPhase:(id)a4 speakableText:(id)a5 dialogIdentifierOverride:(id)a6;
- (void)_logPatternExecutedEventForAddViewsCommand:(id)a3;
- (void)_logRevealSpeechCommandReceived:(id)a3;
- (void)_notifyPromptedUserForInput;
- (void)_openURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5 launchOptions:(id)a6 conversationId:(id)a7 completion:(id)a8;
- (void)_performAceCommand:(id)a3 conversationIdentifier:(id)a4 turnIdentifier:(id)a5 completion:(id)a6;
- (void)_performAppPunchOutCommand:(id)a3 conversationItemIdentifier:(id)a4 completion:(id)a5;
- (void)_performContinueOnDeviceCommand:(id)a3 completion:(id)a4;
- (void)_performGenericAceCommand:(id)a3 turnIdentifier:(id)a4 completion:(id)a5;
- (void)_performSayItCommand:(id)a3;
- (void)_performStartRequest:(id)a3 turnIdentifier:(id)a4 completion:(id)a5;
- (void)_presentAuthenticationDialogWithText:(id)a3;
- (void)_processAddViewsCommand:(id)a3 forMode:(unint64_t)a4 completion:(id)a5;
- (void)_registerReplyCallbackWithOverrideEnabled:(BOOL)a3;
- (void)_removePreviousConversationFromStore;
- (void)_replayWithTestEnviormentData;
- (void)_rescheduleIdleTimerIfNeeded;
- (void)_resetContext;
- (void)_restorePreviousConversation;
- (void)_runScrollRosterTestWithOptions:(id)a3;
- (void)_saveConversationWithCompletion:(id)a3;
- (void)_scheduleAudioResumptionAfterDelayInSec:(double)a3;
- (void)_scheduleIdleTimer;
- (void)_scheduleInterruptedAudioResumingIfNeeded;
- (void)_setListenAfterSpeakingForRequestFinished:(BOOL)a3;
- (void)_setRequestOptions:(id)a3;
- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)a3;
- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)a3 minimized:(BOOL)a4;
- (void)_setStatusBarFrame:(CGRect)a3;
- (void)_setStatusViewHeight:(double)a3;
- (void)_setupXPCListener;
- (void)_sharePatternIdFromAddViewsCommand:(id)a3;
- (void)_siriPresentation:(id)a3 speakTextForConversationItemIdentifier:(id)a4 delayed:(BOOL)a5;
- (void)_siriPresentation:(id)a3 speakTextForConversationItemIdentifierDidBecomeReady:(id)a4;
- (void)_speakEnqueuedSpokenSuggestion;
- (void)_speakText:(id)a3 audioData:(id)a4 ignoreMuteSwitch:(BOOL)a5 identifier:(id)a6 sessionId:(id)a7 preferredVoice:(id)a8 language:(id)a9 gender:(id)a10 promptStyle:(id)a11 provisionally:(BOOL)a12 eligibleAfterDuration:(double)a13 delayed:(BOOL)a14 canUseServerTTS:(BOOL)a15 speakableUtteranceParser:(id)a16 analyticsContext:(id)a17 speakableContextInfo:(id)a18 preparation:(id)a19 completion:(id)a20;
- (void)_speakText:(id)a3 identifier:(id)a4 sessionId:(id)a5 preferredVoice:(id)a6 promptStyle:(id)a7 provisionally:(BOOL)a8 eligibleAfterDuration:(double)a9 delayed:(BOOL)a10 canUseServerTTS:(BOOL)a11 speakableUtteranceParser:(id)a12 analyticsContext:(id)a13 speakableContextInfo:(id)a14 preparation:(id)a15 completion:(id)a16;
- (void)_startListenAfterSpeaking;
- (void)_startListenAfterSpeakingRequest;
- (void)_startRequestWithOptions:(id)a3;
- (void)_startScrollingWithOptions:(id)a3;
- (void)_synthesizeSpeechWithText:(id)a3 identifier:(id)a4 sessionId:(id)a5 isPhonetic:(BOOL)a6 provisionally:(BOOL)a7 completion:(id)a8;
- (void)_testDidReceiveAceCommand:(id)a3 completion:(id)a4;
- (void)_updateKeyboardState:(BOOL)a3 minimized:(BOOL)a4;
- (void)_updateKeyboardStateWithError:(id)a3;
- (void)_updateKeyboardStatusForAddViewsCommand:(id)a3;
- (void)_updateLanguageCode;
- (void)aceCommandRecords:(id)a3 didChangeResultForCommand:(id)a4 completion:(id)a5;
- (void)alertDidBeginPlaying:(id)a3;
- (void)animatedDisappearanceDidBeginWithDuration:(double)a3 reason:(int64_t)a4;
- (void)audioPlayer:(id)a3 didFinishPlayback:(id)a4;
- (void)audioPlayerStartPlaying:(id)a3;
- (void)cancelRequestForSiriPresentation:(id)a3;
- (void)controllerRequestScreenClearedWithClearASR:(BOOL)a3;
- (void)controllerRequestSiriBlurHidden:(BOOL)a3;
- (void)controllerRequestSiriDismissal;
- (void)controllerRequestSystemApertureCollapse;
- (void)controllerRequestTapsShared:(BOOL)a3;
- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4;
- (void)conversation:(id)a3 didRemoveItemsWithIdentifiers:(id)a4 atIndexPaths:(id)a5 parentItemIdentifiers:(id)a6;
- (void)dealloc;
- (void)didDetectGestureEvent:(int64_t)a3 inRegion:(int64_t)a4;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveHelpAction;
- (void)didReceiveOrbViewTapToCancelRequest;
- (void)didReceiveReportBugAction;
- (void)didReceiveShortTapActionWIthRequestOptions:(id)a3;
- (void)disableIdleTimerForSiriPresentation:(id)a3;
- (void)disableTouchIDFaceIDIfNecessaryForDucID:(id)a3;
- (void)dismissSiriPresentation:(id)a3 withReason:(int64_t)a4;
- (void)dismissSiriResults;
- (void)enableIdleTimerForSiriPresentation:(id)a3;
- (void)forceAudioSessionInactiveForSiriPresentation:(id)a3;
- (void)getScreenshotImageForSiriPresentation:(id)a3 withCompletion:(id)a4;
- (void)handlePasscodeUnlockForSiriPresentation:(id)a3 withClient:(unint64_t)a4 withCompletion:(id)a5;
- (void)handlePlayTrailer:(id)a3 completion:(id)a4;
- (void)hasContentAtPoint:(id)a3 completion:(id)a4;
- (void)hostApplicationDidBecomeActive;
- (void)hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:(id)a3;
- (void)hostApplicationPresentationStateUpdatedFromPresentationState:(int64_t)a3 toPresentationState:(int64_t)a4;
- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)a3;
- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)a3 atTime:(unint64_t)a4;
- (void)hostApplicationRequestsEmitUIStateTransitionForSiriDismissalWithReason:(int)a3 completion:(id)a4;
- (void)hostApplicationRequestsScreenshotWithCompletion:(id)a3;
- (void)hostApplicationWillEnterForeground;
- (void)hostApplicationWillResignActive;
- (void)invalidateConnectionForSiriPresentation:(id)a3;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)noteApplicationTransition;
- (void)notifyClientStateManagerSpeakingEnded:(id)a3;
- (void)orchestrationDidPresentResponseFullyInApp;
- (void)preloadPluginBundles;
- (void)preloadPresentationBundleWithIdentifier:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)runPPTWithOptions:(id)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setDockFrameValue:(id)a3;
- (void)setDomainObject:(id)a3 forIdentifier:(id)a4;
- (void)setHostFrontMostAppOrientation:(int64_t)a3;
- (void)setPresentation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setRequestOptions:(id)a3;
- (void)setSession:(id)a3;
- (void)setStatusBarFrameValue:(id)a3;
- (void)setStatusViewHeightNumber:(id)a3;
- (void)setSystemContentFrame:(CGRect)a3;
- (void)showAppUnlockForAppId:(id)a3 completion:(id)a4;
- (void)siriDidActivateFromSource:(int64_t)a3;
- (void)siriDidDeactivateWithCompletion:(id)a3;
- (void)siriDidHidePasscodeUnlock;
- (void)siriKeyboardViewDidChange:(id *)a3;
- (void)siriPresentation:(id)a3 activateConversationWithIdentifier:(id)a4;
- (void)siriPresentation:(id)a3 addSelectionResponse:(id)a4;
- (void)siriPresentation:(id)a3 didChangePeekMode:(unint64_t)a4;
- (void)siriPresentation:(id)a3 didChangeVisualState:(unint64_t)a4;
- (void)siriPresentation:(id)a3 didCorrectRecognition:(id)a4 correctionIdentifier:(id)a5 forConversationItemWithIdentifier:(id)a6 userSelectionResults:(id)a7;
- (void)siriPresentation:(id)a3 didCorrectRecognition:(id)a4 correctionIdentifier:(id)a5 forItemAtIndexPath:(id)a6;
- (void)siriPresentation:(id)a3 didDelayPresentationOfItemsWithIdentifiers:(id)a4;
- (void)siriPresentation:(id)a3 didDismissViewController:(id)a4;
- (void)siriPresentation:(id)a3 didEditSpeechRecognized:(id)a4 forInterval:(double)a5;
- (void)siriPresentation:(id)a3 didPresentConversationItemsWithIdentifiers:(id)a4;
- (void)siriPresentation:(id)a3 didPresentIntentWithBundleId:(id)a4;
- (void)siriPresentation:(id)a3 didPresentItemsAtIndexPaths:(id)a4;
- (void)siriPresentation:(id)a3 didPresentViewController:(id)a4;
- (void)siriPresentation:(id)a3 didScrollForInterval:(double)a4 metricsContext:(id)a5;
- (void)siriPresentation:(id)a3 didShowAceViewWithIdentifier:(id)a4 aceViewClass:(Class)a5 metricsContext:(id)a6 forInterval:(double)a7;
- (void)siriPresentation:(id)a3 didShowGuideStartTime:(id)a4 endTime:(id)a5;
- (void)siriPresentation:(id)a3 didShowTipWithIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6 flowID:(id)a7;
- (void)siriPresentation:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5;
- (void)siriPresentation:(id)a3 inputTypeDidChange:(int64_t)a4;
- (void)siriPresentation:(id)a3 insertAceViews:(id)a4 withDialogPhase:(id)a5 asItemsAtIndexPaths:(id)a6;
- (void)siriPresentation:(id)a3 openURL:(id)a4 conversationId:(id)a5 completion:(id)a6;
- (void)siriPresentation:(id)a3 reduceOrbOpacity:(BOOL)a4;
- (void)siriPresentation:(id)a3 removeItemsAtIndexPaths:(id)a4;
- (void)siriPresentation:(id)a3 requestHostBlurVisible:(BOOL)a4 reason:(int64_t)a5 fence:(id)a6;
- (void)siriPresentation:(id)a3 requestsKeyboardWithCompletion:(id)a4;
- (void)siriPresentation:(id)a3 requestsTouchPassThroughEnabled:(BOOL)a4;
- (void)siriPresentation:(id)a3 setBugReportingAvailable:(BOOL)a4;
- (void)siriPresentation:(id)a3 setDomainObject:(id)a4 forIdentifier:(id)a5;
- (void)siriPresentation:(id)a3 setFullScreenDimmingLayerVisible:(BOOL)a4 animated:(BOOL)a5;
- (void)siriPresentation:(id)a3 setHelpButtonEmphasized:(BOOL)a4;
- (void)siriPresentation:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5;
- (void)siriPresentation:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)siriPresentation:(id)a3 setStatusViewDisabled:(BOOL)a4;
- (void)siriPresentation:(id)a3 setStatusViewHidden:(BOOL)a4;
- (void)siriPresentation:(id)a3 setStatusViewUserInteractionEnabled:(BOOL)a4;
- (void)siriPresentation:(id)a3 setTypeToSiriViewHidden:(BOOL)a4;
- (void)siriPresentation:(id)a3 startEditedRequestWithText:(id)a4 correctionIdentifier:(id)a5 userSelectionResults:(id)a6;
- (void)siriPresentation:(id)a3 startRequestForSuggestion:(id)a4 inputType:(int64_t)a5 suggestionRequestType:(int64_t)a6;
- (void)siriPresentation:(id)a3 startRequestForSuggestionToolInvocation:(id)a4 turnIdentifier:(id)a5;
- (void)siriPresentation:(id)a3 startRequestForText:(id)a4;
- (void)siriPresentation:(id)a3 synthesizeSpeechWithPhoneticText:(id)a4 completion:(id)a5;
- (void)siriPresentation:(id)a3 synthesizeSpeechWithText:(id)a4 completion:(id)a5;
- (void)siriPresentation:(id)a3 viewDidAppearWithAceObject:(id)a4;
- (void)siriPresentation:(id)a3 viewDidAppearWithClassDescriptor:(id)a4 identifier:(id)a5;
- (void)siriPresentation:(id)a3 viewDidDisappearWithClassDescriptor:(id)a4 identifier:(id)a5;
- (void)siriPresentation:(id)a3 willBeginEditingOfType:(int64_t)a4;
- (void)siriPresentation:(id)a3 willChangeKeyboardVisibility:(BOOL)a4;
- (void)siriPresentation:(id)a3 willDiscardConversationItemsWithIdentifiers:(id)a4;
- (void)siriPresentation:(id)a3 willDismissViewController:(id)a4;
- (void)siriPresentation:(id)a3 willPresentViewController:(id)a4;
- (void)siriPresentationCancelHIDEventDefferal:(id)a3;
- (void)siriPresentationClearContext:(id)a3;
- (void)siriPresentationDidDismissBugReporter:(id)a3;
- (void)siriPresentationDidHideUnlockScreen:(id)a3;
- (void)siriPresentationDidPresentBugReporter:(id)a3;
- (void)siriPresentationDidPresentConversationFromBreadcrumb:(id)a3;
- (void)siriPresentationDidPresentDynamicSnippetWithInfo:(id)a3;
- (void)siriPresentationDidPresentUserInterface:(id)a3;
- (void)siriPresentationDidRequestRestartSpeechSynthesis:(id)a3;
- (void)siriPresentationDidResignFirstResponder:(id)a3;
- (void)siriPresentationKeyboardViewDidAppear:(id)a3;
- (void)siriPresentationMicButtonLongPressBegan:(id)a3;
- (void)siriPresentationMicButtonLongPressEnded:(id)a3;
- (void)siriPresentationMicButtonWasTapped:(id)a3;
- (void)siriPresentationPresentAcousticIDSpinner:(id)a3;
- (void)siriPresentationPulseHelpButton:(id)a3;
- (void)siriPresentationRemoveAcousticIDSpinner:(id)a3;
- (void)siriPresentationRequestsHIDEventDefferal:(id)a3;
- (void)siriPresentationRequestsStartAttendingForNonSpeechRequest:(id)a3 deviceID:(id)a4;
- (void)siriPresentationWillSendStartRequest:(id)a3;
- (void)siriResultsDidDismissInTamaleForSiriPresentation:(id)a3;
- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)a3;
- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)a3 peakLevel:(float)a4;
- (void)siriSessionDidBeginTaskWithIdentifier:(id)a3;
- (void)siriSessionDidChangeLockState:(unint64_t)a3;
- (void)siriSessionDidChangeNetworkAvailability;
- (void)siriSessionDidDetectMusic;
- (void)siriSessionDidDetectSpeechStartpoint;
- (void)siriSessionDidEnterLatencyState;
- (void)siriSessionDidFinishAcousticIDRequestWithSuccess:(BOOL)a3;
- (void)siriSessionDidFinishRequestWithError:(id)a3;
- (void)siriSessionDidInitializeSessionInfo:(id)a3;
- (void)siriSessionDidReceiveAddContentToViewCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveAddDialogsCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveAddViewsCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveAppPunchOutCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveAudioSessionInterruptionBeganWithUserInfo:(id)a3 machAbsoluteTime:(unint64_t)a4;
- (void)siriSessionDidReceiveClearScreenCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveCloseAssistantCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveContinueOnDeviceCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveDisambiguationItemSelected:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveExtendCurrentTTSCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveGetResponseAlternativesPlaybackCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveGuideUpdateCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveHideSiriOverlayCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveLatencyInformation:(id)a3;
- (void)siriSessionDidReceiveLaunchTVRemoteCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveListenForPronunciationCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveNLRoutingDecision:(id)a3;
- (void)siriSessionDidReceiveOpenLinkCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceivePaginateListCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceivePlayContentCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceivePlayNotificationSound:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceivePlayVoicemailCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceivePluginSnippetPrewarmCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceivePreSynthesizeTTSCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveRepeatItCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveRevealRecognizedSpeechCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSAUIChangePrimaryUtteranceCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSAUIShowFullScreenEffectCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSAUIShowRequestHandlingStatusCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSAUIShowSpeechAlternativesCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSayItCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSetSuggestedUtterancesCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSetUIGuidedAccessCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveShowHelpCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveShowNextCardCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveShowNextSnippetCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSmsPlayAudioCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSnippetConfigurationRequestCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveSpeechPartialResultCommand:(id)a3;
- (void)siriSessionDidReceiveSpeechRecognizedCommand:(id)a3;
- (void)siriSessionDidReceiveStartGenAIEnablementFlowCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveUpdateViewsCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidReceiveUpdateVisualResponseSnippetCommand:(id)a3 completion:(id)a4;
- (void)siriSessionDidRecognizedAdditionalSpeechInterpretation:(id)a3 refId:(id)a4;
- (void)siriSessionDidStartAcousticIDRequest;
- (void)siriSessionDidStartNewTurn:(id)a3;
- (void)siriSessionDidStartNewTurn:(id)a3 associatedLaunchStartContext:(id)a4 machAbsoluteTime:(double)a5 linkPreviousTurn:(BOOL)a6;
- (void)siriSessionDidTransitionFromState:(int64_t)a3 toState:(int64_t)a4 event:(int64_t)a5 machAbsoluteTransitionTime:(double)a6;
- (void)siriSessionDidUpdateAudioSessionID:(unsigned int)a3;
- (void)siriSessionDidUpdateRecognitionWithPhrases:(id)a3 utterances:(id)a4 refId:(id)a5;
- (void)siriSessionDidUpdateSessionInfo:(id)a3;
- (void)siriSessionGetRequestContextWithCompletionHandler:(id)a3;
- (void)siriSessionIsPresentingApplePaySheet;
- (void)siriSessionIsPresentingLocalAuthenticationUI;
- (void)siriSessionOpenURL:(id)a3 completionHandler:(id)a4;
- (void)siriSessionReplayAll:(unint64_t)a3 with:(id)a4;
- (void)siriSessionReplayAt:(unint64_t)a3 with:(id)a4;
- (void)siriSessionRequestedCancelPhotoSelectionWithAnimation:(BOOL)a3;
- (void)siriSessionRequestedPhotoSelectionWithPhotoPickerRequest:(id)a3 completion:(id)a4;
- (void)siriSessionRequestsDismissalForReason:(int64_t)a3;
- (void)siriSessionRequestsInstrumentingMessage:(id)a3 machAbsoluteTime:(double)a4;
- (void)siriSessionRequestsPlayPhaticWithCompletion:(id)a3;
- (void)siriSessionRequestsReadoutOfBulletin:(id)a3 completion:(id)a4;
- (void)siriSessionRequestsTTSDuckToVolume:(float)a3 rampTime:(double)a4 completion:(id)a5;
- (void)siriSessionResultForAceCommand:(id)a3 completion:(id)a4;
- (void)siriSessionSetReplayOverridePath:(id)a3;
- (void)siriSessionShouldPrewarmForPossibleTextRequest:(id)a3;
- (void)siriSessionSpeechRecordingDidCancel;
- (void)siriSessionSpeechRecordingDidChangeAVRecordRoute:(id)a3;
- (void)siriSessionSpeechRecordingDidEnd;
- (void)siriSessionSpeechRecordingDidFailWithError:(id)a3;
- (void)siriSessionWantsToCacheImage:(id)a3;
- (void)siriSessionWillCancelRequest;
- (void)siriSessionWillProcessAceCommand:(id)a3;
- (void)siriSessionWillProcessAppLaunchWithBundleIdentifier:(id)a3;
- (void)siriSessionWillStartRequest;
- (void)siriSessionWillStartRequestWithOptions:(id)a3 completion:(id)a4;
- (void)siriSessionWillStartUIRequestWithText:(id)a3 completionHandler:(id)a4;
- (void)siriWillActivateFromSource:(int64_t)a3;
- (void)siriWillBePresented:(int64_t)a3;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4;
- (void)siriWillHidePasscodeUnlockForResult:(int64_t)a3;
- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)a3;
- (void)siriWillStopAttending:(id)a3;
- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)a3;
- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)a3 queueIsEmpty:(BOOL)a4;
- (void)speechSynthesisGetPreparedTextForIdentifier:(id)a3 completion:(id)a4;
- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)a3;
- (void)startRequestForSuggestion:(id)a3 inputType:(int64_t)a4 suggestionRequestType:(int64_t)a5;
- (void)startRequestForText:(id)a3;
- (void)stopRecordingSpeechForSiriPresentation:(id)a3;
- (void)toggleHomeAffordanceHidden:(BOOL)a3;
- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)a3;
- (void)updateEdgeLightWindowLevel:(int64_t)a3;
- (void)updateToPresentationWithIdentifier:(id)a3 presentationProperties:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SRSiriViewController

- (id)_startNewConversation
{
  v3 = [(SRSiriViewController *)self _activeConversation];

  if (v3)
  {
    [(SRSiriViewController *)self _saveConversationWithCompletion:0];
  }

  v4 = [AFConversation alloc];
  v5 = [(SRSiriViewController *)self _language];
  v6 = [v5 spokenLanguageCode];
  v7 = [v4 initWithLanguageCode:v6];

  [v7 setDelegate:self];
  [(SRSiriViewController *)self _activateConversation:v7];
  v8 = [(SRSiriViewController *)self _presentation];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    v10 = [v7 identifier];
    [v9 siriDidStartNewConversationWithIdentifier:v10];
  }

  v11 = [v7 identifier];

  return v11;
}

- (id)_activeConversation
{
  v2 = [(SRSiriViewController *)self _conversations];
  v3 = [v2 lastObject];

  return v3;
}

- (id)_previousConversation
{
  v2 = [(SRSiriViewController *)self _conversations];
  v3 = [v2 count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 objectAtIndex:v3 - 2];
  }

  return v4;
}

+ (id)_exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFUIViewControllerServing];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFUISiriSession];
  [v2 setInterface:v3 forSelector:"setSession:" argumentIndex:0 ofReply:0];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v14 count:2];
  v5 = [NSSet setWithArray:v4];

  [v2 setClasses:v5 forSelector:"siriSessionGetRequestContextWithCompletionHandler:" argumentIndex:0 ofReply:1];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v2 setClasses:v7 forSelector:"siriSessionDidUpdateRecognitionWithPhrases:utterances:refId:" argumentIndex:0 ofReply:0];

  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  [v2 setClasses:v9 forSelector:"siriSessionDidUpdateRecognitionWithPhrases:utterances:refId:" argumentIndex:1 ofReply:0];

  v10 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v10 forSelector:"siriSessionDidInitializeSessionInfo:" argumentIndex:0 ofReply:0];

  v11 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v11 forSelector:"siriSessionDidUpdateSessionInfo:" argumentIndex:0 ofReply:0];

  v12 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v12 forSelector:"siriSessionDidReceivePlayContentCommand:completion:" argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_setupXPCListener
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[SRSiriViewController _setupXPCListener]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp Setting up XPC Listener in %@", buf, 0x16u);
  }

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.siri.app"];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener _setQueue:&_dispatch_main_q];
  [(NSXPCListener *)self->_listener setDelegate:self];
  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D18;
  block[3] = &unk_1001676A0;
  objc_copyWeak(&v7, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v4 viewDidLoad];
  v3 = [(SRSiriViewController *)self _analytics];
  [v3 logEventWithType:1502 context:0];
}

- (void)_updateLanguageCode
{
  v2 = [(SRSiriViewController *)self _language];
  v3 = [v2 spokenLanguageCode];

  AFUISetLanguageCode();
}

- (void)_cancelIdleTimer
{
  v3 = [(SRSiriViewController *)self _idleTimer];

  if (v3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SRSiriViewController _cancelIdleTimer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #idleTimer", &v6, 0xCu);
    }

    v5 = [(SRSiriViewController *)self _idleTimer];
    [v5 invalidate];

    [(SRSiriViewController *)self _setIdleTimer:0];
  }
}

- (void)hostApplicationDidBecomeActive
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 hostApplicationDidBecomeActive];
  }

  v6 = [(SRSiriViewController *)self _instrumentationManager];
  [v6 hostDidBecomeActive];
}

- (void)_rescheduleIdleTimerIfNeeded
{
  [(SRSiriViewController *)self _checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:0];
  v3 = [(SRSiriViewController *)self _isSiriIdleAndQuiet];
  v4 = [(SRSiriViewController *)self _isIdleTimerEnabled];
  v5 = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    v8 = [v7 isPresentingUIFromRemoteDevice];
  }

  else
  {
    v8 = 0;
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[SRSiriViewController _rescheduleIdleTimerIfNeeded]";
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #idleTimer idleAndQuiet=%i idleTimerEnabled=%i isPresentingUIFromRemoteDevice:%i", &v10, 0x1Eu);
  }

  if ((v4 & (v3 | v8)) == 1)
  {
    [(SRSiriViewController *)self _scheduleIdleTimer];
  }

  else
  {
    [(SRSiriViewController *)self _cancelIdleTimer];
  }
}

- (void)_scheduleInterruptedAudioResumingIfNeeded
{
  if (!self->_waitingForTelephonyToStart)
  {
    if ([(SRSiriViewController *)self _isSiriIdleAndQuiet])
    {
      objc_initWeak(&location, self);
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_1000081C0;
      v3[3] = &unk_1001677D8;
      objc_copyWeak(&v4, &location);
      [(SRSiriViewController *)self _fetchAttendingState:v3];
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

- (void)preloadPluginBundles
{
  v2 = +[SiriUICardProviderRegistry sharedInstance];
  [v2 preloadProviders];
}

- (id)preferredFocusEnvironments
{
  v3 = [(SRSiriViewController *)self _presentationViewController];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SRSiriViewController;
    v5 = [(SRSiriViewController *)&v8 preferredFocusEnvironments];
  }

  v6 = v5;

  return v6;
}

- (id)_presentationViewController
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SiriUIPresentation *)self->_presentation viewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded
{
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {

    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }

  else
  {

    [(SRSiriViewController *)self _rescheduleIdleTimerIfNeeded];
  }
}

- (BOOL)_usesEventDrivenIdleAndQuietUpdates
{
  v2 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldUseEventDrivenIdleAndQuietUpdates];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_restorePreviousConversation
{
  v3 = [(SRPreferences *)self->_preferences siriIsActive];
  [(SRPreferences *)self->_preferences setSiriIsActive:1];
  if ((v3 & 1) == 0)
  {
    if ((self->_lockState & 2) != 0)
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315394;
        *&location[4] = "[SRSiriViewController _restorePreviousConversation]";
        v9 = 2112;
        v10 = AFUIPreviousConversationIdentifier;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #conversation Host not allowing SR to load previous conversation { identifier: %@ }", location, 0x16u);
      }
    }

    else
    {
      objc_initWeak(location, self);
      conversationStore = self->_conversationStore;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100008AEC;
      v6[3] = &unk_100167E60;
      objc_copyWeak(&v7, location);
      [(AFConversationStore *)conversationStore fetchConversationWithIdentifier:AFUIPreviousConversationIdentifier completionBlock:v6];
      objc_destroyWeak(&v7);
      objc_destroyWeak(location);
    }
  }
}

- (BOOL)_isSiriIdleAndQuiet
{
  siriState = self->_siriState;
  if (siriState)
  {
    v4 = siriState == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  v6 = [(SRSiriViewController *)self _isRequestActive];
  v7 = [(SRSiriViewController *)self _isSpeechSynthesisSpeaking];
  v8 = [(SRSiriViewController *)self _isAudioPlayerPlaying];
  v9 = [(SRSiriViewController *)self _isWaitingForStartRequest];
  delaySessionEndForInPlacePunchout = self->_delaySessionEndForInPlacePunchout;
  v11 = v5 ^ 1 | v6 | v7 | v8 | v9 | delaySessionEndForInPlacePunchout | +[SiriSharedUIReplayUtilityWrapper shouldSkipAutoDismissal];
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"YES";
    v15 = 136316930;
    v16 = "[SRSiriViewController _isSiriIdleAndQuiet]";
    v17 = 2112;
    if (v11)
    {
      v13 = @"NO ";
    }

    v18 = v13;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6 & 1;
    v23 = 1024;
    v24 = v7 & 1;
    v25 = 1024;
    v26 = v8 & 1;
    v27 = 1024;
    v28 = v9 & 1;
    v29 = 1024;
    v30 = delaySessionEndForInPlacePunchout;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #idle %@ - inIdleState:%d requestActive:%d speaking:%d audioPlaying:%d waitingForStartRequest:%d delayingSessionEndForInPlacePunchout:%d", &v15, 0x3Au);
  }

  return (v11 & 1) == 0;
}

- (void)_activeRequestOptionsDidChange
{
  v2 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v2 activeRequestOptionsDidChange];
  }
}

- (void)_checkAndUpdateSiriIdleAndQuietStatusIfNeeded
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DCFC;
  v3[3] = &unk_1001677D8;
  objc_copyWeak(&v4, &location);
  [(SRSiriViewController *)self _checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)siriSessionWillStartRequest
{
  enqueuedSuggestion = self->_enqueuedSuggestion;
  self->_enqueuedSuggestion = 0;

  v4 = [(SRSiriViewController *)self _requestOptions];
  v5 = [v4 inputType];

  if (v5 == 2)
  {
    v6 = [(SRSiriViewController *)self _host];
    [v6 serviceDidRequestKeyboard:0];
  }

  if ([(SRSiriViewController *)self _isSpeechSynthesisSpeaking])
  {
    v7 = [(SRSiriViewController *)self _instrumentationManager];
    [v7 emitUserBargeInEventForBargedInTurn];
  }

  [(SRSiriViewController *)self _setRequestActive:1];
  [(SRSiriViewController *)self _setWaitingForStartRequest:0];
  [(SRSiriViewController *)self _reflectionDialogHasBeenPlayed:0];
  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
  self->_delaySessionEndForInPlacePunchout = 0;
  self->_keyboardEnabled = 1;
  [(SRSiriViewController *)self _setKeyboardLoweredAfterResponse:0];
  [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:0];
  [(SRSiriViewController *)self _cancelSpeechSynthesis];
  if ([(SRSiriViewController *)self _isUserUtteranceTapToEditInProgress])
  {
    [(SASRequestOptions *)self->_requestOptions setRequestSource:33];
  }

  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (([(SASRequestOptions *)self->_requestOptions isForBluetoothCar]& 1) != 0 || [(SASRequestOptions *)self->_requestOptions isHeadunitEyesFree])
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[SRSiriViewController siriSessionWillStartRequest]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s This is either a bluetooth car request or an eyes free request", &v18, 0xCu);
      }

      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[SRSiriViewController siriSessionWillStartRequest]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Emitting Trial Experimentation Analytics for A2DP / HFP experiment", &v18, 0xCu);
      }

      manager = self->_manager;
      v13 = [[NSUUID alloc] initWithUUIDString:@"dec00f3a-a3a4-4777-8e7a-6cdba66bfb3e"];
      v14 = objc_alloc_init(NSUUID);
      [(AIMLExperimentationAnalyticsManager *)manager emitTriggerForCodePathID:v13 requestID:v14 completionHandler:&stru_100168118];
    }

    v15 = [(SRSiriViewController *)self _presentation];
    [v15 siriRequestWillStartWithRequestOptions:self->_requestOptions];
  }

  v16 = [(SASRequestOptions *)self->_requestOptions requestSource];
  if (v16 == 51)
  {
    [(SRSiriViewController *)self _insertUserUtteranceViewForSuggestion:self->_requestText];
  }

  else if (v16 == 24)
  {
    [(SRSiriViewController *)self _insertUserUtteranceViewForText:self->_requestText];
  }

  else if ((v16 - 25) <= 1)
  {
    v17 = [(SASRequestOptions *)self->_requestOptions text];
    [(SRSiriViewController *)self _insertUserUtteranceViewForText:v17];
  }
}

- (int64_t)_presentationOptions
{
  v3 = [(SRSiriViewController *)self _requestOptions];
  v4 = [v3 isForBluetoothCar];

  if (v4)
  {
    return 8;
  }

  v6 = [(SRSiriViewController *)self _presentation];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = [(SRSiriViewController *)self _presentation];
  v9 = [v8 options];

  return v9;
}

- (void)_cancelSpeechSynthesis
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRSiriViewController _cancelSpeechSynthesis]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(SRUIFSpeechSynthesizing *)self->_ttsManager cancel];
  [(SRSiriViewController *)self notifyClientStateManagerSpeakingEnded:0];
}

- (BOOL)textInputEnabled
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(SASRequestOptions *)self->_requestOptions isTypeToSiriRequest])
  {
    return 0;
  }

  v3 = [(SRSiriViewController *)self _presentation];
  v4 = [v3 supportsTextInput];

  return v4;
}

- (void)_deletePreviousConversation
{
  v3 = [(SRSiriViewController *)self _previousConversation];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 identifier];
    [(SRSiriViewController *)self _deleteConversationWithIdentifier:v4];

    v3 = v5;
  }
}

- (AFUIAudioPlayer)_voicemailPlayer
{
  voicemailPlayer = self->_voicemailPlayer;
  if (!voicemailPlayer)
  {
    v4 = +[AFUIAudioPlayer voicemailPlayer];
    v5 = self->_voicemailPlayer;
    self->_voicemailPlayer = v4;

    [(AFUIAudioPlayer *)self->_voicemailPlayer setDelegate:self];
    voicemailPlayer = self->_voicemailPlayer;
  }

  return voicemailPlayer;
}

- (void)_removePreviousConversationFromStore
{
  v2 = [(SRSiriViewController *)self _conversationStore];
  [v2 removeConversationWithIdentifier:AFUIPreviousConversationIdentifier completionBlock:&stru_100167D98];
}

- (AFUIAudioPlayer)_audioMessagePlayer
{
  audioMessagePlayer = self->_audioMessagePlayer;
  if (!audioMessagePlayer)
  {
    v4 = +[AFUIAudioPlayer audioMessagePlayer];
    v5 = self->_audioMessagePlayer;
    self->_audioMessagePlayer = v4;

    [(AFUIAudioPlayer *)self->_audioMessagePlayer setDelegate:self];
    audioMessagePlayer = self->_audioMessagePlayer;
  }

  return audioMessagePlayer;
}

- (void)_startListenAfterSpeaking
{
  [(SRSiriViewController *)self _setAcousticIdAllowed:0];
  if ([(SASRequestOptions *)self->_requestOptions requestSource]== 24 || [(SASRequestOptions *)self->_requestOptions isSuggestionSourceWithTextInput])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      requestOptions = self->_requestOptions;
      v5 = v3;
      [(SASRequestOptions *)requestOptions requestSource];
      v6 = SASRequestSourceGetName();
      *buf = 136315394;
      v18 = "[SRSiriViewController _startListenAfterSpeaking]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #tts Not listening after speaking because requestSource == %@", buf, 0x16u);
    }

    return;
  }

  if (![(SASRequestOptions *)self->_requestOptions isForAppleTV])
  {
LABEL_11:
    if ([(SRSiriViewController *)self _isStartRequestAceCommandSent])
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[SRSiriViewController _startListenAfterSpeaking]";
        v11 = "%s #tts Not listening after speaking because SAStartRequest was sent during TTS";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else
    {
      v12 = +[AFPreferences sharedPreferences];
      v13 = [v12 listenAfterSpeakingDisabled];

      if (!v13)
      {
        objc_initWeak(buf, self);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100011B2C;
        v15[3] = &unk_1001677D8;
        objc_copyWeak(&v16, buf);
        [(SRSiriViewController *)self _fetchAttendingState:v15];
        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
        return;
      }

      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[SRSiriViewController _startListenAfterSpeaking]";
        v11 = "%s #tts Not listening after speaking because listenAfterSpeakingDisabled == YES";
        goto LABEL_17;
      }
    }

    self->_keyboardEnabled = 1;
    return;
  }

  v7 = [(SASRequestOptions *)self->_requestOptions requestInfo];
  if ([v7 afui_isRemoteHeadsetActivation])
  {

    goto LABEL_9;
  }

  v8 = [(SASRequestOptions *)self->_requestOptions afui_isTVFollowUpHearstActivation];

  if (v8)
  {
LABEL_9:
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[SRSiriViewController _startListenAfterSpeaking]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #tts #tv Allowing listening after speaking for multi-turn request on AppleTV when auto endpointing is on", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SRSiriViewController _startListenAfterSpeaking]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #tts #tv Not listening after speaking because requestSource is one of the request sources for AppleTV.", buf, 0xCu);
  }
}

- (void)_startListenAfterSpeakingRequest
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SRSiriViewController _startListenAfterSpeakingRequest]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Start listening. Starting new request after TTS completed", buf, 0xCu);
  }

  v4 = [SASRequestOptions alloc];
  v5 = [(SRSiriViewController *)self _uiPresentationIdentifier];
  v6 = [v4 initWithRequestSource:9 uiPresentationIdentifier:v5];

  v7 = [(SRSiriViewController *)self _requestOptions];
  [v6 setIsForBluetoothCar:{objc_msgSend(v7, "isForBluetoothCar")}];

  v8 = [(SRSiriViewController *)self _requestOptions];
  v9 = [v8 originalRequestOptions];
  if (v9)
  {
    [v6 setOriginalRequestOptions:v9];
  }

  else
  {
    v10 = [(SRSiriViewController *)self _requestOptions];
    [v6 setOriginalRequestOptions:v10];
  }

  [v6 setStartRecordingSoundId:self->_startRecordingSoundId];
  v11 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:5];
  v12 = objc_opt_new();
  [v12 setSpeechRequestOptions:v11];
  [v6 setRequestInfo:v12];
  objc_initWeak(buf, self);
  ttsManager = self->_ttsManager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015344;
  v15[3] = &unk_100168790;
  objc_copyWeak(&v18, buf);
  v14 = v6;
  v16 = v14;
  v17 = self;
  [(SRUIFSpeechSynthesizing *)ttsManager isSynthesisQueueEmpty:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (id)_uiPresentationIdentifier
{
  v3 = [(SRSiriViewController *)self _requestOptions];
  v4 = [v3 uiPresentationIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _requestOptions];
    v7 = [v6 uiPresentationIdentifier];
  }

  else
  {
    v8 = [(SRSiriViewController *)self _presentation];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) != 0 && (-[SRSiriViewController _presentation](self, "_presentation"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 options], v10, (v11 - 1) <= 7))
    {
      v7 = off_1001687F0[(v11 - 1)];
    }

    else
    {
      v7 = @"com.apple.siri.Compact";
    }
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 _setForcedUserInterfaceLayoutDirection:SiriLanguageIsRTL()];
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC568();
  }

  [(SRSiriViewController *)self _setIdleTimerEnabled:0];
  [(SRSiriViewController *)self _cancelIdleTimer];
  v8.receiver = self;
  v8.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v8 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v5 viewDidAppear:a3];
  [UIApp finishedIPTest:SUICPPTTestNameSiriBringupToSiriProcessViewControllerAppeared];
  v4 = [(SRSiriViewController *)self _analytics];
  [v4 logEventWithType:1513 context:0];

  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:0];
  if ([(SRSiriViewController *)self _isReplayUItest])
  {
    [(SRSiriViewController *)self _replayWithTestEnviormentData];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SRSiriViewController viewDidDisappear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v7 viewDidDisappear:v3];
  v6 = [(SRSiriViewController *)self _analytics];
  [v6 logEventWithType:1514 context:0];

  [(SRSiriViewController *)self _invalidateConnection];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v4 viewWillDisappear:a3];
  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [v7 animateAlongsideTransition:0 completion:&stru_100167CE0];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  listener = self->_listener;
  v9 = AFSiriLogContextConnection;
  if (listener == v6)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[SRSiriViewController listener:shouldAcceptNewConnection:]";
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp Accepting new XPC Connection: %@", buf, 0x16u);
    }

    v11 = &_dispatch_main_q;
    objc_initWeak(buf, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000568D0;
    v23[3] = &unk_100167D08;
    v12 = &_dispatch_main_q;
    v24 = &_dispatch_main_q;
    objc_copyWeak(&v25, buf);
    [v7 setInvalidationHandler:v23];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000569A0;
    v20 = &unk_100167D08;
    v13 = &_dispatch_main_q;
    v21 = &_dispatch_main_q;
    objc_copyWeak(&v22, buf);
    [v7 setInterruptionHandler:&v17];
    v14 = [objc_opt_class() _remoteViewControllerInterface];
    [v7 setRemoteObjectInterface:v14];

    v15 = [objc_opt_class() _exportedInterface];
    [v7 setExportedInterface:v15];

    [v7 setExportedObject:self];
    [v7 _setQueue:&_dispatch_main_q];
    [v7 resume];
    objc_storeStrong(&self->_connection, a4);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v10 = self->_listener;
    *buf = 136315906;
    v27 = "[SRSiriViewController listener:shouldAcceptNewConnection:]";
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s #xpcSiriApp Was asked to accept new connection from %@ for %@ instead of %@", buf, 0x2Au);
  }

  return listener == v6;
}

- (void)_connectionWasInvalidated
{
  v3 = [(NSXPCConnection *)self->_connection processIdentifier];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v6 = 136315650;
    v7 = "[SRSiriViewController _connectionWasInvalidated]";
    v8 = 1024;
    v9 = v3;
    v10 = 2112;
    v11 = connection;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp Connection from SpringBoard/CarPlay was invalidated pid=%d _connection=%@", &v6, 0x1Cu);
  }

  [(NSXPCConnection *)self->_connection setExportedObject:0];
}

- (void)_connectionWasInterrupted
{
  [(NSXPCConnection *)self->_connection processIdentifier];
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC5E8();
  }
}

- (SRSiriViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v49.receiver = self;
  v49.super_class = SRSiriViewController;
  v8 = [(SRSiriViewController *)&v49 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = +[SRApplication sharedApplication];
    [v9 setDataSource:v8];

    v10 = objc_alloc_init(SRPreferences);
    preferences = v8->_preferences;
    v8->_preferences = v10;

    v12 = [[AFUISiriLanguage alloc] initWithDelegate:v8];
    language = v8->_language;
    v8->_language = v12;

    [(SRSiriViewController *)v8 _updateLanguageCode];
    v14 = +[NSMutableArray array];
    conversations = v8->_conversations;
    v8->_conversations = v14;

    v16 = [(SRSiriViewController *)v8 _startNewConversation];
    v17 = objc_alloc_init(AFConversationStore);
    conversationStore = v8->_conversationStore;
    v8->_conversationStore = v17;

    v19 = objc_alloc_init(AFManagedStorageConnection);
    domainObjectStorageConnection = v8->_domainObjectStorageConnection;
    v8->_domainObjectStorageConnection = v19;

    v21 = objc_alloc_init(SRUIFAceCommandRecords);
    aceCommandRecords = v8->_aceCommandRecords;
    v8->_aceCommandRecords = v21;

    [(SRUIFAceCommandRecords *)v8->_aceCommandRecords setDelegate:v8];
    v23 = objc_alloc_init(NSMutableArray);
    repeatablePhrases = v8->_repeatablePhrases;
    v8->_repeatablePhrases = v23;

    v8->_acousticIdAllowed = 0;
    v25 = objc_alloc_init(NSMutableDictionary);
    synthesisPreparationDictionary = v8->_synthesisPreparationDictionary;
    v8->_synthesisPreparationDictionary = v25;

    v27 = objc_alloc_init(SRModeProvider);
    modeProvider = v8->_modeProvider;
    v8->_modeProvider = v27;

    v29 = objc_alloc_init(SRUIFAnalyticsSupplement);
    analyticsSupplement = v8->_analyticsSupplement;
    v8->_analyticsSupplement = v29;

    v31 = objc_alloc_init(SRUIFSpeechSynthesizer);
    ttsManager = v8->_ttsManager;
    v8->_ttsManager = v31;

    [(SRUIFSpeechSynthesizing *)v8->_ttsManager setDelegate:v8];
    [(SRUIFSpeechSynthesizing *)v8->_ttsManager setClientStateManagerDelegate:v8];
    v33 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v8->_ttsManager;
      *buf = 136315394;
      v51 = "[SRSiriViewController initWithNibName:bundle:]";
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s #tts 3 created _ttsManager:%@", buf, 0x16u);
    }

    v35 = +[AFUIDisambiguationAnalyticsManager sharedManager];
    [v35 setDataSource:v8];

    v36 = +[NSNotificationCenter defaultCenter];
    [v36 addObserver:v8 selector:"_audioSessionRouteDidChange:" name:AVAudioSessionRouteChangeNotification object:0];

    [(SRSiriViewController *)v8 _setupXPCListener];
    objc_initWeak(buf, v8);
    v37 = [SRSiriSystemUIController alloc];
    v38 = AFUIIsDeviceLiveActivitiesSupported();
    v39 = [(SRSiriSystemUIController *)v37 initWithDelegate:v8 systemUIDevice:v38 systemApertureSupportedDevice:AFUIIsDeviceSystemApertureEnabled()];
    systemUIController = v8->_systemUIController;
    v8->_systemUIController = v39;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005707C;
    block[3] = &unk_100167D30;
    objc_copyWeak(&v48, buf);
    v8->_mainRunLoopObserverRef = CFRunLoopObserverCreateWithHandler(0, 0x81uLL, 1u, 0, block);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, v8->_mainRunLoopObserverRef, UITrackingRunLoopMode);
    v42 = objc_alloc_init(AIMLExperimentationAnalyticsManager);
    manager = v8->_manager;
    v8->_manager = v42;

    v44 = objc_alloc_init(_TtC4Siri24ContinueOnCommandHandler);
    continueOnHandler = v8->_continueOnHandler;
    v8->_continueOnHandler = v44;

    objc_destroyWeak(&v48);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(SRSiriViewController *)self _idleTimer];
  [v3 invalidate];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];

  if (self->_mainRunLoopObserverRef)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveObserver(Main, self->_mainRunLoopObserverRef, UITrackingRunLoopMode);
    CFRelease(self->_mainRunLoopObserverRef);
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SRSiriViewController dealloc]";
    v11 = 2112;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp invalidating connection because of dealloc self=%@", buf, 0x16u);
  }

  [(SRSiriViewController *)self _invalidateConnection];
  v7 = objc_alloc_init(SRBackgroundTaskManager);
  objc_setAssociatedObject(self->_listener, @"NSXPCListenerInstanceAssociatedBackgroundTaskManagerIdentifier", v7, 1);
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  [(ContinueOnCommandHandler *)self->_continueOnHandler cancelActiveRequests];
  [(SRUIFSpeechSynthesizing *)self->_ttsManager invalidate];

  v8.receiver = self;
  v8.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v8 dealloc];
}

- (void)_invalidateConnection
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = 136315650;
    v6 = "[SRSiriViewController _invalidateConnection]";
    v7 = 2112;
    v8 = connection;
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp %@ %@", &v5, 0x20u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
}

- (BOOL)shouldAutorotate
{
  if (SiriUIDeviceIsZoomed())
  {
    return 0;
  }

  return SiriUIIsAllOrientationsSupported();
}

- (unint64_t)supportedInterfaceOrientations
{
  if ((SiriUIDeviceIsZoomed() & 1) != 0 || (SiriUIIsAllOrientationsSupported() & 1) == 0)
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

- (void)_cancelLastRootProvisionalSnippetFromLastRequestInConversation:(id)a3
{
  v3 = a3;
  [v3 removeTransientItems];
  v4 = [v3 numberOfChildrenForItemWithIdentifier:0];
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    while (1)
    {
      v6 = [NSIndexPath indexPathWithIndex:v5 - 2];
      v7 = [v3 itemAtIndexPath:v6];
      v8 = [v7 aceObject];
      if ([v7 type] == 1)
      {
        break;
      }

      if ([v7 presentationState] == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v10 = AFSiriLogContextConnection;
          v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
          if (isKindOfClass)
          {
            if (v11)
            {
              v13 = 136315138;
              v14 = "[SRSiriViewController _cancelLastRootProvisionalSnippetFromLastRequestInConversation:]";
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Not canceling SAUIPronunciationSnippet", &v13, 0xCu);
            }
          }

          else
          {
            if (v11)
            {
              v13 = 136315394;
              v14 = "[SRSiriViewController _cancelLastRootProvisionalSnippetFromLastRequestInConversation:]";
              v15 = 2112;
              v16 = v8;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Canceling provisional %@", &v13, 0x16u);
            }

            v12 = [v7 identifier];
            [v3 cancelItemWithIdentifier:v12];

            [v3 setSynchronizedWithServer:0];
          }

          break;
        }
      }

      if (--v5 <= 1)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)setBottomContentInset:(double)a3
{
  if (vabdd_f64(self->_bottomContentInset, a3) >= 0.00000011920929)
  {
    self->_bottomContentInset = a3;
    v4 = [(SRSiriViewController *)self _presentation];
    if (objc_opt_respondsToSelector())
    {
      [v4 setBottomContentInset:self->_bottomContentInset];
    }
  }
}

- (void)setSystemContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_systemContentFrame = a3;
  v7 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v9.origin.x = x;
    v9.origin.y = y;
    v9.size.width = width;
    v9.size.height = height;
    [v7 setTopContentInset:1 animated:CGRectGetMaxY(v9)];
  }
}

- (void)_setStatusBarFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_statusBarFrame = &self->_statusBarFrame;
  if (!CGRectEqualToRect(self->_statusBarFrame, a3))
  {
    p_statusBarFrame->origin.x = x;
    p_statusBarFrame->origin.y = y;
    p_statusBarFrame->size.width = width;
    p_statusBarFrame->size.height = height;
    v9 = [(SRSiriViewController *)self _presentation];
    if (objc_opt_respondsToSelector())
    {
      [v9 statusBarFrameDidChange];
    }
  }
}

- (void)setStatusBarFrameValue:(id)a3
{
  [a3 CGRectValue];

  [(SRSiriViewController *)self _setStatusBarFrame:?];
}

- (void)setDockFrameValue:(id)a3
{
  [a3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    [v12 dockFrameDidChange:{v5, v7, v9, v11}];
  }
}

- (void)_setStatusViewHeight:(double)a3
{
  self->_statusViewHeight = a3;
  v3 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    [v3 statusViewHeightDidChange];
  }
}

- (void)setStatusViewHeightNumber:(id)a3
{
  [a3 floatValue];
  v5 = v4;

  [(SRSiriViewController *)self _setStatusViewHeight:v5];
}

- (id)_conversationWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100057B18;
  v16 = sub_100057B28;
  v17 = 0;
  v5 = [(SRSiriViewController *)self _conversations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100057B30;
  v9[3] = &unk_100167D58;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_resetContext
{
  v2 = [(SRSiriViewController *)self _session];
  [v2 resetContextTypes:7];
}

- (void)_activateConversation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SRSiriViewController *)self _conversations];
    v6 = [(SRSiriViewController *)self _activeConversation];
    v7 = [(SRSiriViewController *)self _previousConversation];

    v8 = [v5 containsObject:v4];
    [v5 removeObject:v4];
    [v5 addObject:v4];
    if (v7 == v4)
    {
      v10 = [v4 isSynchronizedWithServer];
      v11 = AFSiriLogContextConnection;
      v12 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v15 = 136315138;
          v16 = "[SRSiriViewController _activateConversation:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Rolling back the last clear context for server synchronized conversation", &v15, 0xCu);
        }

        v13 = [(SRSiriViewController *)self _session];
        [v13 rollbackClearContext];
      }

      else if (v12)
      {
        v15 = 136315138;
        v16 = "[SRSiriViewController _activateConversation:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Clearing context for non synchronized conversation already performed via breadcrumb activation path", &v15, 0xCu);
      }

      v14 = [(SRSiriViewController *)self _session];
      [v14 setAlertContext];
    }

    else if ((v8 & 1) == 0 && [v5 count] >= 2)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SRSiriViewController _activateConversation:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Resetting context for more than one conversation loaded", &v15, 0xCu);
      }

      [(SRSiriViewController *)self _resetContext];
    }

    if (v6)
    {
      [(SRSiriViewController *)self _cancelLastRootProvisionalSnippetFromLastRequestInConversation:v6];
    }
  }
}

- (void)_saveConversationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFUIPreviousConversationIdentifier;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v7 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(SRSiriViewController *)self _presentation];
    v9 = [v8 canSaveConversations];

    if ((v9 & 1) == 0)
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "[SRSiriViewController _saveConversationWithCompletion:]";
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #conversation Presentation does not support conversation saving; not saving conversation { conversation: %@ }", buf, 0x16u);
      }

      if (v4)
      {
        v4[2](v4);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[SRSiriViewController _saveConversationWithCompletion:]";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #conversation Saving conversation to store { identifier: %@, conversation: %@ }", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v12 = [(SRSiriViewController *)self _conversationStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005811C;
  v13[3] = &unk_100167DC0;
  objc_copyWeak(&v17, buf);
  v14 = v5;
  v15 = v6;
  v16 = v4;
  [v12 saveConversation:v15 withIdentifier:v14 completionBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
LABEL_11:
}

- (void)_deleteConversationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _previousConversation];
  v6 = [v5 identifier];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    [(SRSiriViewController *)self _removePreviousConversationFromStore];
  }

  v8 = [(SRSiriViewController *)self _conversations];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000583BC;
  v12[3] = &unk_100167DE8;
  v9 = v4;
  v13 = v9;
  v10 = [v8 indexOfObjectPassingTest:v12];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(SRSiriViewController *)self _conversations];
    [v11 removeObjectAtIndex:v10];
  }
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = [(SRSiriViewController *)self textInputEnabled];
  if (a3 == 1 && v7)
  {
    [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:+[UIKeyboard isInHardwareKeyboardMode]^ 1];
  }

  v8.receiver = self;
  v8.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v8 motionEnded:a3 withEvent:v6];
}

- (BOOL)_languageMatchesConversation:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _language];
  v6 = [v5 spokenLanguageCode];
  v7 = [v4 languageCode];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  return v4;
}

- (id)_delayedConversationItemRevisionIdentifiers
{
  delayedConversationItemRevisionIdentifiers = self->_delayedConversationItemRevisionIdentifiers;
  if (!delayedConversationItemRevisionIdentifiers)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_delayedConversationItemRevisionIdentifiers;
    self->_delayedConversationItemRevisionIdentifiers = v4;

    delayedConversationItemRevisionIdentifiers = self->_delayedConversationItemRevisionIdentifiers;
  }

  return delayedConversationItemRevisionIdentifiers;
}

- (id)_presentedConversationItemRevisionIdentifiers
{
  presentedConversationItemRevisionIdentifiers = self->_presentedConversationItemRevisionIdentifiers;
  if (!presentedConversationItemRevisionIdentifiers)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_presentedConversationItemRevisionIdentifiers;
    self->_presentedConversationItemRevisionIdentifiers = v4;

    presentedConversationItemRevisionIdentifiers = self->_presentedConversationItemRevisionIdentifiers;
  }

  return presentedConversationItemRevisionIdentifiers;
}

- (id)_pendingPreSynthesisTasks
{
  pendingPreSynthesisTasks = self->_pendingPreSynthesisTasks;
  if (!pendingPreSynthesisTasks)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_pendingPreSynthesisTasks;
    self->_pendingPreSynthesisTasks = v4;

    pendingPreSynthesisTasks = self->_pendingPreSynthesisTasks;
  }

  return pendingPreSynthesisTasks;
}

- (NSMutableSet)_completedCommandAppPunchOutIds
{
  completedCommandAppPunchOutIds = self->_completedCommandAppPunchOutIds;
  if (!completedCommandAppPunchOutIds)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_completedCommandAppPunchOutIds;
    self->_completedCommandAppPunchOutIds = v4;

    completedCommandAppPunchOutIds = self->_completedCommandAppPunchOutIds;
  }

  return completedCommandAppPunchOutIds;
}

- (void)setHostFrontMostAppOrientation:(int64_t)a3
{
  v4 = +[SRApplication sharedApplication];
  [v4 setFrontMostAppOrientation:a3];
}

- (void)siriWillActivateFromSource:(int64_t)a3
{
  v5 = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    [v7 siriWillActivateFromSource:a3];
  }

  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
}

- (void)siriDidActivateFromSource:(int64_t)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [NSNumber numberWithInteger:a3];
    v17 = 136315394;
    v18 = "[SRSiriViewController siriDidActivateFromSource:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s source: %@", &v17, 0x16u);
  }

  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    [v10 siriDidActivateFromSource:a3];
  }

  testingContext = self->_testingContext;
  if (testingContext)
  {
    v12 = SUICPPTTestNameKey;
    v13 = [(NSDictionary *)testingContext objectForKey:SUICPPTTestNameKey];
    if (v13)
    {
      v14 = v13;
      v15 = [(NSDictionary *)self->_testingContext objectForKey:v12];
      v16 = [v15 hasPrefix:SUICPPTSiriBringupTestPrefix];

      if ((v16 & 1) == 0)
      {
        [(SRSiriViewController *)self runPPTWithOptions:self->_testingContext];
      }
    }
  }
}

- (void)siriWillBePresented:(int64_t)a3
{
  v5 = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    [v7 siriWillBePresented:a3];
  }
}

- (void)siriDidDeactivateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SRSiriViewController siriDidDeactivateWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v6 = objc_alloc_init(SRPreferences);
  if ([UIApp activeInterfaceOrientation])
  {
    -[SRPreferences setLastKnownInterfaceOrientation:](v6, "setLastKnownInterfaceOrientation:", [UIApp activeInterfaceOrientation]);
  }

  if (![(SRPreferences *)v6 hasPresentedSiriAdvancedFeaturesAssetsDownloadNotification]&& [(SRSiriViewController *)self _shouldShowDownloadAssetsNotificationPrompt]&& +[SRAssetsUtilities shouldShowAssetDownloadBanner])
  {
    v7 = objc_alloc_init(_TtC4Siri36SRAssetsDownloadBannerViewController);
    bannerViewController = self->_bannerViewController;
    self->_bannerViewController = v7;

    [(SRAssetsDownloadBannerViewController *)self->_bannerViewController showBannerFor:3.0];
    [(SRPreferences *)v6 setHasPresentedSiriAdvancedFeaturesAssetsDownloadNotification:1];
  }

  v9 = dispatch_group_create();
  v10 = [(SRSiriViewController *)self _presentation];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    dispatch_group_enter(v9);
    v12 = [(SRSiriViewController *)self _presentation];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100059020;
    v34[3] = &unk_100167010;
    v35 = v9;
    [v12 siriDidDeactivateWithCompletion:v34];

    v13 = v35;
  }

  else
  {
    v14 = [(SRSiriViewController *)self _presentation];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = [(SRSiriViewController *)self _presentation];
    [v13 siriDidDeactivate];
  }

LABEL_14:
  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SRSiriViewController siriDidDeactivateWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s #tts Siri deactivating. Cancelling any in flight TTS so we can release the audio session", &buf, 0xCu);
  }

  [(SRSiriViewController *)self _cancelSpeechSynthesis];
  v17 = [(SRSiriViewController *)self _requestOptions];
  v18 = [v17 requestSource] == 8;

  if (v18 && [(SRSiriViewController *)self _siriState]!= 3 && [(SRSiriViewController *)self _siriState])
  {
    *v41 = 0;
    *&v41[8] = v41;
    *&v41[16] = 0x2050000000;
    v19 = qword_10018F1E8;
    v42 = qword_10018F1E8;
    if (!qword_10018F1E8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v37 = sub_100075304;
      v38 = &unk_1001679F8;
      v39 = v41;
      sub_100075304(&buf);
      v19 = *(*&v41[8] + 24);
    }

    v20 = v19;
    _Block_object_dispose(v41, 8);
    [v19 notifyVoiceTriggeredSiriSessionCancelled];
  }

  v21 = [(SRSiriViewController *)self _preferences];
  [v21 setSiriIsActive:0];

  v22 = [(SRSiriViewController *)self _activeConversation];
  v23 = objc_alloc_init(NSIndexPath);
  v24 = [v22 numberOfChildrenForItemAtIndexPath:v23] > 0;

  if (v24)
  {
    dispatch_group_enter(v9);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100059028;
    v32[3] = &unk_100167010;
    v33 = v9;
    [(SRSiriViewController *)self _saveConversationWithCompletion:v32];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = sub_100057B18;
  v39 = sub_100057B28;
  v40 = objc_alloc_init(SRBackgroundTaskManager);
  v25 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(*(&buf + 1) + 40);
    *v41 = 136315394;
    *&v41[4] = "[SRSiriViewController siriDidDeactivateWithCompletion:]";
    *&v41[12] = 2112;
    *&v41[14] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Taking %@ to flush instrumentation", v41, 0x16u);
  }

  v27 = +[SRUIFInstrumentationManager sharedManager];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100059030;
  v31[3] = &unk_1001679F8;
  v31[4] = &buf;
  [v27 boostQueuedMessagesAndPerformOnQueueCompletion:v31 timeout:2.0];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100059108;
  v29[3] = &unk_1001678F8;
  v30 = v4;
  v28 = v4;
  dispatch_group_notify(v9, &_dispatch_main_q, v29);

  _Block_object_dispose(&buf, 8);
}

- (void)didReceiveOrbViewTapToCancelRequest
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 didReceiveOrbViewTapToCancelRequest];
  }
}

- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  v7 = [(SRSiriViewController *)self _presentation];
  v9 = v7;
  if (v6)
  {
    [v7 siriWillShowPasscodeUnlockAndCancelRequest:v3];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    v9 = [(SRSiriViewController *)self _presentation];
    [v9 siriWillShowPasscodeUnlock];
  }
}

- (void)siriWillHidePasscodeUnlockForResult:(int64_t)a3
{
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 siriWillHidePasscodeUnlock];
  }
}

- (void)siriDidHidePasscodeUnlock
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 siriDidHidePasscodeUnlock];
  }
}

- (void)showAppUnlockForAppId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SRSiriViewController *)self siriWillShowPasscodeUnlockAndCancelRequest:1];
  v8 = [APApplication applicationWithBundleIdentifier:v6];
  v9 = +[APGuard sharedGuard];
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SRSiriViewController showAppUnlockForAppId:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Authenticating via APGuard for App Unlock, appId=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100059580;
  v12[3] = &unk_100167E88;
  objc_copyWeak(&v14, buf);
  v11 = v7;
  v13 = v11;
  [v9 authenticateForSubject:v8 relayingAuditToken:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)startRequestForText:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v6 length])
  {
    v7 = [(SRSiriViewController *)self _presentation];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SRSiriViewController *)self _presentation];
      [v9 siriWillStartTextInputRequest];
    }

    v10 = [[SASRequestOptions alloc] initWithRequestSource:24];
    [v10 setText:v6];
    objc_storeStrong(&self->_requestText, v6);
    [(SRSiriViewController *)self _startRequestWithOptions:v10];
    v11 = [(SRSiriViewController *)self _host];
    [v11 serviceDidResetTextInput];
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC8D0();
  }
}

- (void)startRequestForSuggestion:(id)a3 inputType:(int64_t)a4 suggestionRequestType:(int64_t)a5
{
  v8 = a3;
  v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  if ([v10 length])
  {
    v11 = [[SASRequestOptions alloc] initWithRequestSource:51];
    [v11 setText:v10];
    [v11 setSuggestionRequestType:a5];
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = SASRequestInputTypeGetDescription();
      v15 = SASSuggestionRequestTypeGetDescription();
      v16 = 136315650;
      v17 = "[SRSiriViewController startRequestForSuggestion:inputType:suggestionRequestType:]";
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #suggestions startRequestForSuggestion inputType: %@ suggestionRequestType: %@", &v16, 0x20u);
    }

    [v11 setPreviousInteractionInputType:a4];
    objc_storeStrong(&self->_requestText, v10);
    [(SRSiriViewController *)self _startRequestWithOptions:v11];
  }
}

- (void)siriPresentation:(id)a3 startRequestForSuggestionToolInvocation:(id)a4 turnIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.ifflow.toolInvocation"];
  [v14 setUserData:v9];

  v11 = objc_alloc_init(SKIDirectInvocationContext);
  v12 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v11 payload:v14];
  v13 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v12];
  [(SRSiriViewController *)self siriPresentation:v10 handleStartLocalRequest:v13 turnIdentifier:v8];
}

- (void)siriKeyboardViewDidChange:(id *)a3
{
  if (a3)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CC950(self, v5, a3);
    }

    p_keyboardInfo = &self->_keyboardInfo;
    v8 = *&a3->var3.origin.y;
    v7 = *&a3->var3.size.height;
    *&self->_keyboardInfo.enabled = *&a3->var0;
    *&self->_keyboardInfo.keyboardFrame.origin.y = v8;
    *&self->_keyboardInfo.keyboardFrame.size.height = v7;
    v9 = [(SRSiriViewController *)self _presentation];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(SRSiriViewController *)self _presentation];
      v12 = *&p_keyboardInfo->keyboardFrame.origin.y;
      v13[0] = *&p_keyboardInfo->enabled;
      v13[1] = v12;
      v13[2] = *&p_keyboardInfo->keyboardFrame.size.height;
      [v11 updateKeyboardInfo:v13];
    }
  }
}

- (BOOL)_siriIsShowingPasscodeUnlock
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(SRSiriViewController *)self _presentation];
  v6 = [v5 siriIsShowingPasscodeUnlock];

  return v6;
}

- (void)setSession:(id)a3
{
  v5 = a3;
  if (self->_session != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_session, a3);
    v5 = v6;
  }
}

- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SRSiriViewController *)self _host];
  [v4 serviceDidRequestKeyboard:v3];
}

- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)a3 minimized:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(SRSiriViewController *)self _host];
  [v6 serviceDidRequestKeyboard:v5 minimized:v4];
}

- (void)didReceiveHelpAction
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 didReceiveHelpAction];
  }
}

- (void)didReceiveReportBugAction
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCA4C();
  }

  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 didReceiveReportBugAction];
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CCACC();
  }
}

- (void)didReceiveBugButtonLongPress
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCB4C();
  }

  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 didReceiveBugButtonLongPress];
  }
}

- (void)didReceiveShortTapActionWIthRequestOptions:(id)a3
{
  v7 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 shortTapActionWithRequestOptions:v7];
  }
}

- (void)_dismissWithReason:(int64_t)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASDismissalReasonGetName();
    v13 = 136315394;
    v14 = "[SRSiriViewController _dismissWithReason:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #punchout 9 %@", &v13, 0x16u);
  }

  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    v11 = [v10 dismissalUserInfo];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100167EC8];
  [v12 serviceRequestsDismissalWithUserInfo:v11 withReason:a3];
}

- (void)hostApplicationWillResignActive
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 hostApplicationWillResignActive];
  }

  v6 = [(SRSiriViewController *)self _instrumentationManager];
  [v6 hostWillResignActive];
}

- (void)hostApplicationWillEnterForeground
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 hostApplicationWillEnterForeground];
  }
}

- (void)hostApplicationRequestsEmitUIStateTransitionForSiriDismissalWithReason:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v9 = a4;
  v5 = +[SRUIFInstrumentationManager sharedManager];
  [v5 emitUIStateTransitionForSiriDismissalWithReason:v4];

  v6 = +[SRUIFInstrumentationManager sharedManager];
  v7 = [v6 currentInstrumentationTurnContext];
  v8 = [v7 turnIdentifier];

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _instrumentationManager];
  [v5 emitInstrumentation:v4];
}

- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)a3 atTime:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SRSiriViewController *)self _instrumentationManager];
  [v7 emitInstrumentation:v6 atTime:a4];
}

- (void)hostApplicationRequestsScreenshotWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SSUIService);
  [v4 showScreenshotUI];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSiriViewController hostApplicationRequestsScreenshotWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #screenshot: taking screenshot", &v6, 0xCu);
  }

  if (v3)
  {
    v3[2](v3, 1);
  }
}

- (void)hasContentAtPoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_preventOutsideTouchesFromDismissingSiri)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[SRSiriViewController hasContentAtPoint:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #dismissal - skipping content at point because _preventOutsideTouchesFromDismissingSiri is YES", buf, 0xCu);
    }

    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else if (v6 && ([v6 CGPointValue], v10 = v9, v12 = v11, SiriUIIsValidPoint()))
  {
    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005A77C;
    v19[3] = &unk_100167EF0;
    objc_copyWeak(v21, buf);
    v21[1] = v10;
    v21[2] = v12;
    v13 = v7;
    v19[4] = self;
    v20 = v13;
    v14 = objc_retainBlock(v19);
    v15 = [(SRSiriViewController *)self presentation];
    if (objc_opt_respondsToSelector())
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10005ACBC;
      v16[3] = &unk_100167F18;
      v17 = v13;
      v18 = v14;
      [v15 hasContentAtPoint:v16 completion:{*&v10, *&v12}];
    }

    else
    {
      (v14[2])(v14);
    }

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    v7[2](v7, 1);
  }
}

- (void)didDetectGestureEvent:(int64_t)a3 inRegion:(int64_t)a4
{
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCC48(v7, a3);
  }

  v8 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v8 didDetectGestureEvent:a3 inRegion:a4];
  }
}

- (void)noteApplicationTransition
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCD1C();
  }

  v3 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v3 noteApplicationTransition];
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4
{
  v8 = a4;
  v6 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v6 siriWillBeginTearDownForDismissalReason:a3 withOriginalDismissalOptions:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 siriWillBeginTearDownForDismissalReason:a3];
  }

  [(SRSiriSystemUIController *)self->_systemUIController tearDown];
  systemUIController = self->_systemUIController;
  self->_systemUIController = 0;
}

- (void)dismissSiriResults
{
  v2 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v2 dismissSiriResults];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v19 pressesBegan:v6 withEvent:a4];
  v7 = [v6 allObjects];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) key];
        v13 = [v12 keyCode];

        if (v13 == 41)
        {
          v14 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            sub_1000CCD9C(buf, &v21, v14);
          }

          [(SRSiriViewController *)self _dismissWithReason:70];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)hostApplicationPresentationStateUpdatedFromPresentationState:(int64_t)a3 toPresentationState:(int64_t)a4
{
  self->_presentationState = a4;
  v7 = [(SRSiriViewController *)self presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self presentation];
    [v9 presentationStateUpdatedFromPresentationState:a3 toPresentationState:a4];
  }
}

- (void)hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    requestActive = self->_requestActive;
    listenAfterSpeakingForRequestFinished = self->_listenAfterSpeakingForRequestFinished;
    v8 = 136315650;
    v9 = "[SRSiriViewController hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:]";
    v10 = 1024;
    v11 = requestActive;
    v12 = 1024;
    v13 = listenAfterSpeakingForRequestFinished;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Request Active:%d, LAS: %d", &v8, 0x18u);
  }

  if (!self->_requestActive && self->_listenAfterSpeakingForRequestFinished)
  {
    [(SRSiriViewController *)self _startListenAfterSpeaking];
    [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:0];
  }
}

- (void)animatedDisappearanceDidBeginWithDuration:(double)a3 reason:(int64_t)a4
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCDEC();
  }

  v7 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v7 animatedDisappearanceDidBeginWithDuration:a4 reason:a3];
  }
}

- (void)setPresentation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (self->_presentation != v9)
  {
    v12 = [(SRSiriViewController *)self view];
    v13 = [v12 window];
    [v13 frame];
    v53.origin.x = CGRectZero.origin.x;
    v53.origin.y = CGRectZero.origin.y;
    v53.size.width = CGRectZero.size.width;
    v53.size.height = CGRectZero.size.height;
    v14 = CGRectEqualToRect(v52, v53);

    if (v14)
    {
      v15 = [(SRSiriViewController *)self view];
      v16 = [v15 window];
      v17 = +[UIScreen mainScreen];
      [v17 bounds];
      [v16 setFrame:?];
    }

    v18 = self->_presentation;
    v19 = [(SRSiriViewController *)self _presentationViewController];
    v20 = AFSiriLogContextConnection;
    v21 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (!v21)
      {
        goto LABEL_14;
      }

      v22 = &stru_10016AE90;
      *buf = 136315906;
      v45 = "[SRSiriViewController setPresentation:animated:completion:]";
      if (v6)
      {
        v22 = @" (animated)";
      }

      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v9;
      v50 = 2112;
      v51 = v22;
      v23 = "%s Transitioning from presentation %@ to presentation %@%@";
      v24 = v20;
      v25 = 42;
    }

    else
    {
      if (!v21)
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v45 = "[SRSiriViewController setPresentation:animated:completion:]";
      v46 = 2112;
      v47 = v9;
      v23 = "%s Setting initial presentation to %@";
      v24 = v20;
      v25 = 22;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
LABEL_14:
    if (objc_opt_respondsToSelector())
    {
      [(SiriUIPresentation *)self->_presentation setDataSource:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SiriUIPresentation *)self->_presentation setDelegate:0];
    }

    objc_storeStrong(&self->_presentation, a3);
    if (objc_opt_respondsToSelector())
    {
      [(SiriUIPresentation *)self->_presentation setDelegate:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SiriUIPresentation *)self->_presentation setDataSource:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SiriUIPresentation *)self->_presentation setBottomContentInset:self->_bottomContentInset];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SiriUIPresentation *)self->_presentation setTopContentInset:1 animated:CGRectGetMaxY(self->_systemContentFrame)];
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [(SiriUIPresentation *)self->_presentation shouldAllowTouchPassThrough]^ 1;
    }

    else
    {
      v26 = 1;
    }

    v27 = [(SRSiriViewController *)self view];
    v28 = [v27 layer];
    [v28 setHitTestsAsOpaque:v26];

    v29 = [(SRSiriViewController *)self _presentationViewController];
    if (v29)
    {
      [(SRSiriViewController *)self addChildViewController:v29];
      [v29 didMoveToParentViewController:self];
      if (v6 && v19)
      {
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10005B990;
        v41[3] = &unk_100167A80;
        v42 = v19;
        v43 = v11;
        [(SRSiriViewController *)self transitionFromViewController:v42 toViewController:v29 duration:5242880 options:0 animations:v41 completion:0.2];

LABEL_49:
        goto LABEL_50;
      }

      v30 = [v29 view];
      [v30 setAutoresizingMask:18];

      v31 = [v29 view];
      v32 = [(SRSiriViewController *)self view];
      [v32 bounds];
      [v31 setFrame:?];

      v33 = [(SRSiriViewController *)self view];
      v34 = [v29 view];
      [v33 addSubview:v34];

      if (v19)
      {
        goto LABEL_36;
      }

      if (v18)
      {
        v39 = [(SRSiriViewController *)self _host];
        v37 = v39;
        if (v11)
        {
          v40 = v11;
        }

        else
        {
          v40 = &stru_100167F58;
        }

        [v39 serviceViewControllerRequestsPresentation:v40];
        goto LABEL_48;
      }
    }

    else if (v19)
    {
LABEL_36:
      [v19 willMoveToParentViewController:0];
      v35 = [v19 view];
      [v35 removeFromSuperview];

      [v19 removeFromParentViewController];
      if (v29)
      {
        goto LABEL_37;
      }

      v36 = [(SRSiriViewController *)self _host];
      v37 = v36;
      if (v11)
      {
        v38 = v11;
      }

      else
      {
        v38 = &stru_100167F78;
      }

      [v36 serviceViewControllerRequestsDismissalWithDismissalReason:0 completion:v38];
LABEL_48:

      goto LABEL_49;
    }

LABEL_37:
    if (v11)
    {
      v11->invoke(v11, 1);
    }

    goto LABEL_49;
  }

  if (v10)
  {
    v10->invoke(v10, 0);
  }

LABEL_50:
}

- (void)updateToPresentationWithIdentifier:(id)a3 presentationProperties:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v18 = a4;
  v10 = a6;
  v11 = a3;
  [(SRSiriViewController *)self _restorePreviousConversation];
  v12 = +[SRSiriPresentationPluginHost sharedSiriPresentationPluginHost];
  v13 = [v12 presentationWithIdentifier:v11 delegate:self dataSource:self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [v18 objectForKey:AFUIPresentationPropertiesShouldSuppressErrorTTSKey];
      [v13 setShouldSuppressErrorTTS:{objc_msgSend(v14, "BOOLValue")}];
    }

    v15 = [v18 objectForKey:AFUIPresentationPropertiesRequestSourceKey];
    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 siriWillActivateFromSource:{objc_msgSend(v15, "integerValue")}];
    }

    v16 = [v18 objectForKey:AFUIPresentationPropertiesShowsSensitiveUIKey];
    v17 = [v16 BOOLValue];

    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 setShowsSensitiveUI:v17];
    }

    [(SRSiriViewController *)self setPresentation:v13 animated:v7 completion:v10];
  }
}

- (CGRect)frameForApplication:(id)a3
{
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (-[SRSiriViewController _presentation](self, "_presentation"), v6 = objc_claimAutoreleasedReturnValue(), [v6 effectiveContentFrame], v8 = v7, v10 = v9, v12 = v11, v14 = v13, v6, v26.origin.x = CGRectZero.origin.x, v26.origin.y = CGRectZero.origin.y, v26.size.width = CGRectZero.size.width, v26.size.height = CGRectZero.size.height, v24.origin.x = v8, v24.origin.y = v10, v24.size.width = v12, v24.size.height = v14, CGRectEqualToRect(v24, v26)))
  {
    v15 = [(SRSiriViewController *)self view];
    [v15 frame];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
  }

  v20 = v8;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_openURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5 launchOptions:(id)a6 conversationId:(id)a7 completion:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(SRSiriViewController *)self _punchoutMetricsAceCommandIdForItemWithIdentifier:v17];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10005BEE8;
  v34[3] = &unk_100167FA0;
  v20 = v18;
  v35 = v20;
  v21 = [(SRSiriViewController *)self _hostWithErrorHandler:v34];
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10005BF08;
  v26[3] = &unk_100167FC8;
  objc_copyWeak(&v31, &location);
  v22 = v14;
  v27 = v22;
  v23 = v15;
  v28 = v23;
  v32 = v11;
  v24 = v20;
  v30 = v24;
  v25 = v19;
  v29 = v25;
  [v21 openURL:v22 bundleId:v23 inPlace:v11 launchOptions:v16 completion:v26];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)_delayAceCommandSuccess:(id)a3 forDuration:(double)a4
{
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 aceId];
    *buf = 136315650;
    v16 = "[SRSiriViewController _delayAceCommandSuccess:forDuration:]";
    v17 = 2048;
    v18 = a4;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord scheduling a delayed action of %f seconds for command %@", buf, 0x20u);
  }

  [(SRSiriViewController *)self _didStartActionForAceCommand:v6];
  objc_initWeak(buf, self);
  v10 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C210;
  block[3] = &unk_100167FF0;
  v14[1] = *&a4;
  v13 = v6;
  v11 = v6;
  objc_copyWeak(v14, buf);
  dispatch_after(v10, &_dispatch_main_q, block);
  objc_destroyWeak(v14);

  objc_destroyWeak(buf);
}

- (void)_didReceiveAceCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SRSiriViewController _didReceiveAceCommand:completion:]";
    v12 = 2112;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@ received ACE command: %@", &v10, 0x20u);
  }

  v9 = [(SRSiriViewController *)self _aceCommandRecords];
  [v9 registerAceCommand:v6 completion:v7];
}

- (void)_didStartActionForAceCommand:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 _afui_updateMapsAnalytics];
  }

  v5 = [(SRSiriViewController *)self _aceCommandRecords];
  [v5 recordActionStartedForAceCommand:v4];

  if ([(SASRequestOptions *)self->_requestOptions inputType]== 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (AFIsInternalInstall())
      {
        v14 = @"bestTextInterpretation";
        v6 = [v4 af_bestTextInterpretation];
        v15 = v6;
        v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        v7 = 0;
      }

      v9 = [(SRSiriViewController *)self _analytics];
      v10 = v9;
      v11 = 1505;
LABEL_14:
      [v9 logEventWithType:v11 context:v7];

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (AFIsInternalInstall())
      {
        v12 = @"bestTextInterpretation";
        v8 = [v4 af_bestTextInterpretation];
        v13 = v8;
        v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      }

      else
      {
        v7 = 0;
      }

      v9 = [(SRSiriViewController *)self _analytics];
      v10 = v9;
      v11 = 1507;
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_didStartActionForItemAtIndexPath:(id)a3 inConversation:(id)a4
{
  v5 = [a4 itemAtIndexPath:a3];
  v8 = [v5 aceCommandIdentifier];

  v6 = v8;
  if (v8)
  {
    v7 = [(SRSiriViewController *)self _aceCommandWithIdentifier:v8];
    [(SRSiriViewController *)self _didStartActionForAceCommand:v7];

    v6 = v8;
  }
}

- (id)_aceCommandWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _aceCommandRecords];
  v6 = [v5 aceCommandWithIdentifier:v4];

  return v6;
}

- (void)_speakText:(id)a3 identifier:(id)a4 sessionId:(id)a5 preferredVoice:(id)a6 promptStyle:(id)a7 provisionally:(BOOL)a8 eligibleAfterDuration:(double)a9 delayed:(BOOL)a10 canUseServerTTS:(BOOL)a11 speakableUtteranceParser:(id)a12 analyticsContext:(id)a13 speakableContextInfo:(id)a14 preparation:(id)a15 completion:(id)a16
{
  *(&v16 + 1) = __PAIR16__(a11, a10);
  LOBYTE(v16) = a8;
  [SRSiriViewController _speakText:"_speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:" audioData:a3 ignoreMuteSwitch:0 identifier:0 sessionId:a4 preferredVoice:a5 language:a6 gender:a9 promptStyle:0 provisionally:0 eligibleAfterDuration:a7 delayed:v16 canUseServerTTS:a12 speakableUtteranceParser:a13 analyticsContext:a14 speakableContextInfo:a15 preparation:a16 completion:?];
}

- (void)_speakText:(id)a3 audioData:(id)a4 ignoreMuteSwitch:(BOOL)a5 identifier:(id)a6 sessionId:(id)a7 preferredVoice:(id)a8 language:(id)a9 gender:(id)a10 promptStyle:(id)a11 provisionally:(BOOL)a12 eligibleAfterDuration:(double)a13 delayed:(BOOL)a14 canUseServerTTS:(BOOL)a15 speakableUtteranceParser:(id)a16 analyticsContext:(id)a17 speakableContextInfo:(id)a18 preparation:(id)a19 completion:(id)a20
{
  v25 = a3;
  v26 = a4;
  v57 = a6;
  v56 = a7;
  v52 = a8;
  v53 = a9;
  v54 = a10;
  v55 = a11;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v30 = a19;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10005CE04;
  v66[3] = &unk_100168018;
  v31 = a20;
  v67 = v31;
  v32 = objc_retainBlock(v66);
  if (v25)
  {
    v33 = [v25 length];
    if (!v26 && !v33)
    {
      goto LABEL_4;
    }
  }

  else if (!v26)
  {
LABEL_4:
    (v32[2])(v32, 2, 0);
    goto LABEL_35;
  }

  if (AFDeviceSupportsTTS())
  {
    v34 = AFSiriLogContextConnection;
    v35 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v35)
      {
        *buf = 136315138;
        v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s #tts 5 audioData", buf, 0xCu);
      }

      [(SRUIFSpeechSynthesizing *)self->_ttsManager enqueueAudioData:v26 identifier:v57 sessionId:v56 provisionally:a12 eligibleAfterDuration:v31 completion:a13];
      goto LABEL_35;
    }

    if (a15)
    {
      if (!v35)
      {
        goto LABEL_20;
      }

      *buf = 136315394;
      v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
      v70 = 2112;
      v71 = v25;
      v37 = "%s #tts 5 text:%@";
    }

    else
    {
      if (!v35)
      {
        goto LABEL_20;
      }

      *buf = 136315395;
      v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
      v70 = 2117;
      v71 = v25;
      v37 = "%s #tts 5 text:%{sensitive}@";
    }

    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, buf, 0x16u);
LABEL_20:
    v65 = 0;
    v64 = 0;
    v51 = [v27 parseStringWithFormat:v25 error:&v64 containsPrivacySensitiveContents:&v65];
    v48 = v64;
    if (!v51)
    {
      v45 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR);
      if (a15)
      {
        if (v45)
        {
          sub_1000CCEF8();
        }
      }

      else if (v45)
      {
        sub_1000CCE6C();
      }

      (v32[2])(v32, 2, 0);
      goto LABEL_34;
    }

    objc_initWeak(&location, self);
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10005CE1C;
    v58[3] = &unk_100168068;
    objc_copyWeak(&v61, &location);
    v60 = v30;
    v59 = v51;
    v62 = v65;
    v47 = objc_retainBlock(v58);
    v38 = +[NSUUID UUID];
    v50 = [v38 UUIDString];

    synthesisPreparationDictionary = self->_synthesisPreparationDictionary;
    v40 = objc_retainBlock(v47);
    [(NSMutableDictionary *)synthesisPreparationDictionary setObject:v40 forKey:v50];

    v41 = AFSiriLogContextConnection;
    v42 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    v43 = a15;
    if (a15)
    {
      if (v42)
      {
        *buf = 136315650;
        v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
        v70 = 2112;
        v71 = v25;
        v72 = 2112;
        v73 = v57;
        v44 = "%s #tts 6 Enqueuing %@ identifier=%@";
LABEL_29:
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 0x20u);
        v43 = a15;
      }
    }

    else if (v42)
    {
      *buf = 136315651;
      v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
      v70 = 2117;
      v71 = v25;
      v72 = 2112;
      v73 = v57;
      v44 = "%s #tts 6 Enqueuing %{sensitive}@ identifier=%@";
      goto LABEL_29;
    }

    BYTE3(v46) = v43 & (v65 ^ 1);
    BYTE2(v46) = a14;
    BYTE1(v46) = a12;
    LOBYTE(v46) = 0;
    [SRUIFSpeechSynthesizing enqueueText:"enqueueText:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:" identifier:v25 sessionId:v57 preferredVoice:v56 language:v52 gender:v53 promptStyle:v54 isPhonetic:a13 provisionally:v55 eligibleAfterDuration:v46 delayed:v50 canUseServerTTS:v32 preparationIdentifier:v28 completion:v29 analyticsContext:? speakableContextInfo:?];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
LABEL_34:

    goto LABEL_35;
  }

  v36 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s TTS not available on certain devices, marking as finished", buf, 0xCu);
  }

  (v32[2])(v32, 1, 0);
LABEL_35:
}

- (void)_didCompleteActionForAceCommand:(id)a3 success:(BOOL)a4
{
  v25 = a4;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(SRSiriViewController *)self _presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:v6])
  {
    v23 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[SRSiriViewController _didCompleteActionForAceCommand:success:]";
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s #tts 33 NOT recording SAUISayIt completed for SAUISayIt=%@", buf, 0x16u);
    }

    objc_storeStrong(&self->_previousSayItCommand, a3);
    v9 = [(SRSiriViewController *)self _aceCommandRecords];
    [v9 recordActionStoppedForAceCommand:v6];
    goto LABEL_20;
  }

  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[SRSiriViewController _didCompleteActionForAceCommand:success:]";
    v33 = 2112;
    v34 = v6;
    v35 = 1024;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #tts 33 recording command completed for aceCommand=%@ success=%i", buf, 0x1Cu);
  }

  v8 = [(SRSiriViewController *)self _aceCommandRecords];
  [v8 recordActionCompletedForAceCommand:v6 success:v25];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v10 = [v9 af_dialogPhase];
    v11 = [v10 isReflectionDialogPhase];

    if ((v11 & 1) == 0)
    {
      v24 = v6;
      v12 = [(SRSiriViewController *)self _aceCommandRecords];
      v13 = [v9 refId];
      v14 = [v12 pendingAddViewsWithReflectionDialogPhaseWithRefId:v13];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * i);
            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v32 = "[SRSiriViewController _didCompleteActionForAceCommand:success:]";
              v33 = 2112;
              v34 = v20;
              v35 = 1024;
              v36 = v25;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #tts recording reflectionDialogPhase command completed command=%@ success=%i", buf, 0x1Cu);
            }

            v22 = [(SRSiriViewController *)self _aceCommandRecords];
            [v22 recordActionCompletedForAceCommand:v20 success:1];
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }

      v6 = v24;
    }

LABEL_20:
  }
}

- (BOOL)_presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRSiriViewController *)self presentation];
    v8 = [v7 performSelector:"shouldProceedToNextCommandAtSpeechSynthesisEnd"];
    v9 = v8 != 0;

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(SRSiriViewController *)self presentation];
      v13 = @"doesn't allow";
      v15 = 136315906;
      v16 = "[SRSiriViewController _presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:]";
      v17 = 2112;
      v18 = v12;
      if (v8)
      {
        v13 = @"allows";
      }

      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #tts presentation:%@ %@ recording SAUISayIt=%@ completed", &v15, 0x2Au);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_synthesizeSpeechWithText:(id)a3 identifier:(id)a4 sessionId:(id)a5 isPhonetic:(BOOL)a6 provisionally:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = &stru_1001680A8;
  }

  v16 = a5;
  v17 = a4;
  v18 = objc_retainBlock(v15);
  v19 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SRSiriViewController _synthesizeSpeechWithText:identifier:sessionId:isPhonetic:provisionally:completion:]";
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s #tts Enqueueing text=%@", buf, 0x16u);
  }

  WORD1(v20) = 256;
  BYTE1(v20) = a7;
  LOBYTE(v20) = a6;
  [SRUIFSpeechSynthesizing enqueueText:"enqueueText:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:" identifier:v14 sessionId:v17 preferredVoice:v16 language:0 gender:0 promptStyle:0 isPhonetic:0.4 provisionally:0 eligibleAfterDuration:v20 delayed:0 canUseServerTTS:v18 preparationIdentifier:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

+ (id)_speechIdentifierForConversationItem:(id)a3
{
  v3 = a3;
  v4 = [v3 aceObject];
  v5 = [v4 aceId];

  if (!v5)
  {
    v5 = [v3 aceCommandIdentifier];
  }

  return v5;
}

- (void)speechSynthesisGetPreparedTextForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  synthesisPreparationDictionary = self->_synthesisPreparationDictionary;
  v8 = a4;
  v9 = [(NSMutableDictionary *)synthesisPreparationDictionary objectForKey:v6];
  v10 = AFSiriLogContextConnection;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[SRSiriViewController speechSynthesisGetPreparedTextForIdentifier:completion:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #tts 11 A Getting text for preparation identifier %@", &v11, 0x16u);
    }

    (v9)[2](v9, v8);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCF7C();
    }

    v8[2](v8, 0, 1);
  }

  [(NSMutableDictionary *)self->_synthesisPreparationDictionary removeObjectForKey:v6];
}

- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SRSiriViewController speechSynthesisDidStartSpeakingWithIdentifier:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #tts identifier=%@", &v9, 0x16u);
  }

  [UIApp finishedIPTest:SUICPPTTestNameSiriBringupToCarPlayMessageReading];
  self->_synthesisIsSpeaking = 1;
  self->_ttsSpokenForRequest = 1;
  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
  v6 = [(SRSiriViewController *)self _presentation];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SRSiriViewController *)self _presentation];
    [v8 siriDidStartSpeakingWithIdentifier:v4];
  }
}

- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)a3 queueIsEmpty:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[SRSiriViewController speechSynthesisDidStopSpeakingWithIdentifier:queueIsEmpty:]";
    v25 = 2112;
    v26 = v6;
    v27 = 1024;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #tts #punchout 6 identifier=%@ queueIsEmpty=%i", buf, 0x1Cu);
  }

  self->_synthesisIsSpeaking = 0;
  if (v4 && self->_enqueuedSuggestion)
  {
    [(SRSiriViewController *)self _speakEnqueuedSpokenSuggestion];
  }

  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    [v10 siriDidStopSpeakingWithIdentifier:v6 speechQueueIsEmpty:v4];
  }

  if (v4 && self->_ttsDelayedBlocks)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[SRSiriViewController speechSynthesisDidStopSpeakingWithIdentifier:queueIsEmpty:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #punchout 7 executing _ttsDelayedBlocks", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_ttsDelayedBlocks;
    v13 = [(AFQueue *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v18 + 1) + 8 * i) + 16))(*(*(&v18 + 1) + 8 * i));
        }

        v14 = [(AFQueue *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    ttsDelayedBlocks = self->_ttsDelayedBlocks;
    self->_ttsDelayedBlocks = 0;
  }
}

- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005DF88;
  v12[3] = &unk_1001680D0;
  v4 = a3;
  v13 = v4;
  v5 = objc_retainBlock(v12);
  objc_initWeak(&location, self);
  session = self->_session;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005DFA0;
  v8[3] = &unk_1001680F8;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [(AFUISiriSession *)session forceAudioSessionActiveWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)notifyClientStateManagerSpeakingEnded:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSiriViewController notifyClientStateManagerSpeakingEnded:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #tts", &v5, 0xCu);
  }

  [(AFUISiriSession *)self->_session notifyStateManagerSpeakingEnded];
}

- (id)domainObjectForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _domainObjectStorageConnection];
  v6 = [v4 absoluteString];

  v7 = [v5 domainObjectForKey:v6];

  v8 = [AceObject aceObjectWithDictionary:v7];

  return v8;
}

- (void)setDomainObject:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(SRSiriViewController *)self _domainObjectStorageConnection];
  v8 = [v7 dictionary];

  v9 = [v6 absoluteString];

  [v10 setDomainObject:v8 forKey:v9];
}

- (void)audioPlayerStartPlaying:(id)a3
{
  [(SRSiriViewController *)self _setAudioPlayerIsPlaying:1];
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {

    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }
}

- (void)audioPlayer:(id)a3 didFinishPlayback:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _setAudioPlayerIsPlaying:0];
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {
    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }

  v7 = [(SRSiriViewController *)self _session];
  [v7 forceAudioSessionActive];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _didCompleteActionForAceCommand:v6 success:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(SRSiriViewController *)self _activeConversation];
      v9 = [v13 conversationItemIdentifier];
      v10 = [v8 itemWithIdentifier:v9];

      v11 = [v10 aceCommandIdentifier];
      if (v11)
      {
        v12 = [(SRSiriViewController *)self _aceCommandWithIdentifier:v11];
        [(SRSiriViewController *)self _didCompleteActionForAceCommand:v12 success:1];
        [v13 setConversationItemIdentifier:0];
      }
    }
  }
}

- (id)audioPlayer:(id)a3 audioURLForCommand:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 message];
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_16:
      v13 = 0;
      goto LABEL_19;
    }

    v6 = v4;
    v7 = [v6 context];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v6 context];
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v9 = [v5 messageType];
  v10 = [v9 isEqualToString:SASmsSmsMessageTypeAudioMessageValue];

  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD074();
    }

    goto LABEL_16;
  }

  v11 = +[SiriUISnippetManager sharedInstance];
  v12 = [v11 speakableProviderForObject:v5];

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [v12 attachmentURLForExpression:SASmsSmsDeferredMessageKeyValue];
  }

  else
  {
    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (void)aceCommandRecords:(id)a3 didChangeResultForCommand:(id)a4 completion:(id)a5
{
  v10 = a5;
  v7 = a4;
  v8 = [(SRSiriViewController *)self _session];
  v9 = v8;
  if (v10)
  {
    [v8 resultDidChangeForAceCommand:v7 completion:v10];
  }

  else
  {
    [v8 resultDidChangeForAceCommand:v7];
  }
}

- (void)siriSessionWillProcessAceCommand:(id)a3
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = MDDialogTransformer;
  }

  else
  {
    v4 = SRModeDialogTransformer;
  }

  if (([(__objc2_class *)v4 supportsTransformationForAceCommand:v7]& 1) == 0)
  {
    v5 = [(SRSiriViewController *)self _analytics];
    v6 = [(SRSiriViewController *)self _instrumentationManager];
    [v5 logClientFeedbackPresented:v7 dialogIdentifierProvider:v6];
  }
}

- (void)siriSessionResultForAceCommand:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(SRSiriViewController *)self _aceCommandRecords];
  v9 = [v10 resultForAceCommand:v8];

  (*(a4 + 2))(v7, v9);
}

- (void)siriSessionWillStartRequestWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v8 acousticIdEnabled])
  {
    v9 = [(SRSiriViewController *)self _isAcousticIdAllowed];
  }

  else
  {
    v9 = 0;
  }

  [v8 setAcousticIdEnabled:v9];
  v10 = [(SRSiriViewController *)self _presentation];
  v11 = objc_opt_respondsToSelector();

  v12 = v8;
  if (v11)
  {
    v13 = [(SRSiriViewController *)self _presentation];
    v12 = [v13 configureOptionsForImminentRequest:v8];
  }

  v14 = [v12 requestInfo];
  v15 = [v14 speechRequestOptions];

  if ([v15 activationEvent] == 5)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      ttsSpokenForRequest = self->_ttsSpokenForRequest;
      v21 = 136315394;
      v22 = "[SRSiriViewController siriSessionWillStartRequestWithOptions:completion:]";
      v23 = 1024;
      LODWORD(v24) = ttsSpokenForRequest;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s ttsSpokenForRequest: %d", &v21, 0x12u);
    }

    if (self->_ttsSpokenForRequest)
    {
      v18 = 1;
    }

    else
    {
      v18 = 3;
    }

    [v15 setPresentationMode:v18];
    v19 = [v12 requestInfo];
    [v19 setSpeechRequestOptions:v15];
  }

  if ([v12 requestSource] == 43)
  {
    [(SRSiriViewController *)self _setWaitingForStartRequest:1];
  }

  [(SRModeProvider *)self->_modeProvider setRequestOptions:v12];
  v20 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[SRSiriViewController siriSessionWillStartRequestWithOptions:completion:]";
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Modified options:%@", &v21, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, v12);
  }
}

- (void)_updateKeyboardStateWithError:(id)a3
{
  v12 = a3;
  LOBYTE(v4) = self->_lastMinimized;
  if ([(SRSiriViewController *)self _siriIsShowingPasscodeUnlock])
  {
    v5 = 0;
    goto LABEL_19;
  }

  if ([(SASRequestOptions *)self->_requestOptions requestSource]== 21)
  {
    v5 = 1;
    LOBYTE(v4) = 1;
    goto LABEL_19;
  }

  if ([(SASRequestOptions *)self->_requestOptions inputType]== 2)
  {
    if (!self->_keyboardEnabled)
    {
      v5 = 0;
      LOBYTE(v4) = 0;
      goto LABEL_19;
    }

    v4 = +[UIKeyboard isInHardwareKeyboardMode]^ 1;
  }

  else if ([(SASRequestOptions *)self->_requestOptions requestSource]== 24)
  {
    if (self->_keyboardEnabled)
    {
      v6 = +[UIKeyboard isInHardwareKeyboardMode]^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    v7 = [v12 code] != 207 && objc_msgSend(v12, "code") != 203;
    LOBYTE(v4) = v6 & v7;
  }

  else
  {
    LOBYTE(v4) = (self->_requestOptions == 0) | v4;
  }

  v5 = 1;
LABEL_19:
  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    v11 = [v10 currentSnippetContainsFooterButtons];

    LOBYTE(v4) = v11 | v4;
  }

  [(SRSiriViewController *)self _updateKeyboardState:v5 minimized:v4 & 1];
}

- (void)siriSessionWillStartUIRequestWithText:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[AFSystemAssistantExperienceStatusManager saeAvailable])
  {
    [(SRSiriViewController *)self _insertUserUtteranceViewForText:v6];
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    v8 = objc_alloc_init(SAUIUserUtteranceView);
    [v8 setText:v6];
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    [v8 setAceId:v10];

    v11 = objc_alloc_init(SAUIAddViews);
    v17 = v8;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    [v11 setViews:v12];

    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    [v11 setAceId:v14];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005EF6C;
    v15[3] = &unk_100168140;
    v16 = v7;
    [(SRSiriViewController *)self siriSessionDidReceiveAddViewsCommand:v11 completion:v15];
  }
}

- (void)siriSessionReplayAll:(unint64_t)a3 with:(id)a4
{
  v6 = a4;
  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:1];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005F078;
  v7[3] = &unk_1001676A0;
  objc_copyWeak(&v8, &location);
  [SiriSharedUIReplayUtilityWrapper replayAll:a3 from:v6 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)siriSessionReplayAt:(unint64_t)a3 with:(id)a4
{
  v6 = a4;
  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:1];
  [SiriSharedUIReplayUtilityWrapper replayAt:a3 from:v6];
}

- (void)siriSessionSetReplayOverridePath:(id)a3
{
  v3 = [a3 path];
  [SiriSharedUIReplayUtilityWrapper setReplayOverridePath:v3];
}

- (void)siriSessionWillCancelRequest
{
  [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:0];
  [(SRSiriViewController *)self _cancelSpeechSynthesis];
  v3 = [(SRSiriViewController *)self _utteranceToSpeakAfterClearScreenCommand];
  v4 = [v3 length];

  if (v4)
  {
    v7 = +[AFSpeakableUtteranceParser sruif_speakableUtteranceParserForCurrentLanguage];
    [v7 setHandleTTSCodes:1];
    v5 = [(SRSiriViewController *)self _utteranceToSpeakAfterClearScreenCommand];
    LOWORD(v6) = 256;
    [(SRSiriViewController *)self _speakText:v5 identifier:0 sessionId:0 preferredVoice:0 promptStyle:0 provisionally:0 eligibleAfterDuration:0.0 delayed:v6 canUseServerTTS:v7 speakableUtteranceParser:0 analyticsContext:0 speakableContextInfo:0 preparation:0 completion:?];

    [(SRSiriViewController *)self _setUtteranceToSpeakAfterClearScreenCommand:0];
  }
}

- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)a3
{
  v5 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    *&v4 = a3;
    [v5 siriAudioRecordingDidChangePowerLevel:v4];
  }
}

- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)a3 peakLevel:(float)a4
{
  [(SRSiriViewController *)self siriSessionAudioRecordingDidChangePowerLevel:?];
  v9 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    *&v7 = a3;
    *&v8 = a4;
    [v9 siriAudioRecordingDidChangePowerLevel:v7 peakLevel:v8];
  }
}

- (void)siriSessionDidFinishRequestWithError:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"success";
    if (v4)
    {
      v6 = v4;
    }

    *buf = 136315394;
    v13 = "[SRSiriViewController siriSessionDidFinishRequestWithError:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #session %@", buf, 0x16u);
  }

  if ([(SRSiriViewController *)self textInputEnabled]&& [(SRSiriViewController *)self _isRequestActive]&& ![(SRSiriViewController *)self _isUserUtteranceTapToEditInProgress])
  {
    [(SRSiriViewController *)self _updateKeyboardStateWithError:v4];
    requestText = self->_requestText;
    self->_requestText = &stru_10016AE90;
  }

  [(SRUIFSpeechSynthesizing *)self->_ttsManager cancelProvisionalTasks];
  listenAfterSpeakingForRequestFinished = self->_listenAfterSpeakingForRequestFinished;
  [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:0];
  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005F560;
  v9[3] = &unk_100168168;
  v11 = listenAfterSpeakingForRequestFinished;
  objc_copyWeak(&v10, buf);
  [(SRSiriViewController *)self _handleRequestError:v4 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)siriSessionDidTransitionFromState:(int64_t)a3 toState:(int64_t)a4 event:(int64_t)a5 machAbsoluteTransitionTime:(double)a6
{
  v11 = [(SRSiriViewController *)self _instrumentationManager];
  [v11 processSessionEvent:a5 isSpeechSynthesisSpeaking:-[SRSiriViewController _isSpeechSynthesisSpeaking](self machAbsoluteTime:{"_isSpeechSynthesisSpeaking"), a6}];

  if (a4 != a3)
  {
    objc_initWeak(location, self);
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_10005FA38;
    v34 = &unk_100168190;
    objc_copyWeak(v35, location);
    v35[1] = a3;
    v35[2] = a4;
    v35[3] = *&a6;
    v12 = objc_retainBlock(&v31);
    v13 = v12;
    if (self->_initialInstrumentationTurnReceieved)
    {
      (v12[2])(v12);
    }

    else
    {
      instrumentationStateTransitionsPendingInitialTurn = self->_instrumentationStateTransitionsPendingInitialTurn;
      if (!instrumentationStateTransitionsPendingInitialTurn)
      {
        v15 = [NSMutableArray array:v31];
        v16 = self->_instrumentationStateTransitionsPendingInitialTurn;
        self->_instrumentationStateTransitionsPendingInitialTurn = v15;

        instrumentationStateTransitionsPendingInitialTurn = self->_instrumentationStateTransitionsPendingInitialTurn;
      }

      v17 = objc_retainBlock(v13);
      [(NSMutableArray *)instrumentationStateTransitionsPendingInitialTurn addObject:v17];
    }

    objc_destroyWeak(v35);
    objc_destroyWeak(location);
  }

  if ((a4 - 1) > 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = qword_1000F69E8[a4 - 1];
  }

  self->_siriState = v18;
  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded:v31];
  v19 = [(SRSiriViewController *)self _voicemailPlayer];
  [v19 stopPlaying];

  v20 = [(SRSiriViewController *)self _audioMessagePlayer];
  [v20 stopPlaying];

  v21 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = SRUIFSiriSessionStateGetDescription();
    v24 = SRUIFSiriSessionStateGetDescription();
    v25 = SRUIFSiriSessionEventGetDescription();
    *location = 136315906;
    *&location[4] = "[SRSiriViewController siriSessionDidTransitionFromState:toState:event:machAbsoluteTransitionTime:]";
    v37 = 2112;
    v38 = v23;
    v39 = 2112;
    v40 = v24;
    v41 = 2112;
    v42 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #state changing fromState: %@ toState: %@, event: %@", location, 0x2Au);
  }

  v26 = [(SRSiriViewController *)self _presentation];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v28 = [(SRSiriViewController *)self _presentation];
    v29 = v28;
    if ((a3 - 1) > 3)
    {
      v30 = 0;
    }

    else
    {
      v30 = qword_1000F69E8[a3 - 1];
    }

    [v28 siriDidTransitionFromState:v30 event:{sub_10005FB90(v28, a5)}];
  }
}

- (void)siriSessionDidStartNewTurn:(id)a3
{
  v4 = a3;
  [(SRSiriViewController *)self siriSessionDidStartNewTurn:v4 associatedLaunchStartContext:0 machAbsoluteTime:0 linkPreviousTurn:mach_absolute_time()];
}

- (void)siriSessionDidStartNewTurn:(id)a3 associatedLaunchStartContext:(id)a4 machAbsoluteTime:(double)a5 linkPreviousTurn:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(SRSiriViewController *)self _session];
    v15 = [v10 turnIdentifier];
    *buf = 136315650;
    v40 = "[SRSiriViewController siriSessionDidStartNewTurn:associatedLaunchStartContext:machAbsoluteTime:linkPreviousTurn:]";
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ indicates a new turn %@ has started", buf, 0x20u);
  }

  v16 = [(SRSiriViewController *)self _instrumentationManager];
  v17 = [v16 currentInstrumentationTurnContext];
  v18 = [v17 turnIdentifier];

  v19 = +[SRUIFInstrumentationManager sharedManager];
  [v19 storeCurrentInstrumentationTurnContext:v10];

  if (v11)
  {
    v20 = [(SRSiriViewController *)self _instrumentationManager];
    [v20 emitInstrumentation:v11 atTime:a5];
  }

  if (v6)
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v10 turnIdentifier];
      *buf = 136315650;
      v40 = "[SRSiriViewController siriSessionDidStartNewTurn:associatedLaunchStartContext:machAbsoluteTime:linkPreviousTurn:]";
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #instrumentation linking previous turn %@ with the new turn %@", buf, 0x20u);
    }

    v24 = objc_alloc_init(SISchemaConversationTrace);
    if (v18)
    {
      v25 = AFTurnIdentifierGetBytes();
    }

    else
    {
      v26 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD0F4(v26);
      }

      v25 = 0;
    }

    [v24 setPreviousTurnID:v25];
    v27 = [(SRSiriViewController *)self _instrumentationManager];
    [v27 emitInstrumentation:v24];
  }

  self->_initialInstrumentationTurnReceieved = 1;
  if ([(NSMutableArray *)self->_instrumentationStateTransitionsPendingInitialTurn count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = self->_instrumentationStateTransitionsPendingInitialTurn;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v35;
      do
      {
        v32 = 0;
        do
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v28);
          }

          (*(*(*(&v34 + 1) + 8 * v32) + 16))(*(*(&v34 + 1) + 8 * v32));
          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v30);
    }

    instrumentationStateTransitionsPendingInitialTurn = self->_instrumentationStateTransitionsPendingInitialTurn;
    self->_instrumentationStateTransitionsPendingInitialTurn = 0;
  }
}

- (void)siriSessionRequestsInstrumentingMessage:(id)a3 machAbsoluteTime:(double)a4
{
  v6 = a3;
  v7 = [(SRSiriViewController *)self _instrumentationManager];
  [v7 emitInstrumentation:v6 atTime:a4];
}

- (void)siriSessionGetRequestContextWithCompletionHandler:(id)a3
{
  v8 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    v7 = [v6 requestContext];
  }

  else
  {
    v7 = 0;
  }

  v8[2](v8, v7);
}

- (void)siriSessionDidChangeNetworkAvailability
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 siriNetworkAvailabilityDidChange];
  }
}

- (void)siriSessionDidChangeLockState:(unint64_t)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    lockState = self->_lockState;
    *buf = 136315650;
    v12 = "[SRSiriViewController siriSessionDidChangeLockState:]";
    v13 = 2048;
    v14 = lockState;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s old lockState=%zd, new lockState=%zd", buf, 0x20u);
  }

  v7 = self->_lockState;
  self->_lockState = a3;
  if ((a3 != 0) == (v7 == 0))
  {
    v8 = objc_alloc_init(SISchemaDeviceLockStateChanged);
    [v8 setIsDeviceLocked:a3 != 0];
    v9 = [(SRSiriViewController *)self _instrumentationManager];
    [v9 emitInstrumentation:v8];
  }

  if (!a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000602E8;
    block[3] = &unk_100167010;
    block[4] = self;
    if (qword_10018F1E0 != -1)
    {
      dispatch_once(&qword_10018F1E0, block);
    }
  }
}

- (void)siriSessionDidReceiveOpenLinkCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ref];
  v9 = [v8 scheme];
  if (![v9 caseInsensitiveCompare:@"prefs"] || !objc_msgSend(v9, "caseInsensitiveCompare:", @"audio-player-event"))
  {
    goto LABEL_16;
  }

  if (![v9 caseInsensitiveCompare:@"http"] || !objc_msgSend(v9, "caseInsensitiveCompare:", @"https"))
  {
    v10 = [v8 host];
    if ([v10 caseInsensitiveCompare:@"apple.com"])
    {
      v11 = [v10 rangeOfString:@".apple.com" options:13];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_16:
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[SRSiriViewController siriSessionDidReceiveOpenLinkCommand:completion:]";
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Opening URL:%@", buf, 0x16u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006061C;
    v18[3] = &unk_1001681B8;
    v20 = v7;
    v19 = v6;
    [(SRSiriViewController *)self _openURL:v8 bundleId:0 inPlace:0 launchOptions:0 conversationId:0 completion:v18];

    v16 = v20;
    goto LABEL_19;
  }

LABEL_7:
  v12 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 trustsURL:v8];

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SRSiriViewController siriSessionDidReceiveOpenLinkCommand:completion:]";
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Ignoring unsafe URL:%@", buf, 0x16u);
  }

  if (v7)
  {
    v15 = [v6 aceId];
    v16 = [SACommandFailed sruif_commandFailedWithRefId:v15];

    [v16 setReason:@"Ignoring potentially unsafe URL"];
    (*(v7 + 2))(v7, v16);
LABEL_19:
  }
}

- (void)siriSessionOpenURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  delaySessionEndForInPlacePunchout = self->_delaySessionEndForInPlacePunchout;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Replace";
    *buf = 136315650;
    v22 = "[SRSiriViewController siriSessionOpenURL:completionHandler:]";
    v23 = 2112;
    if (delaySessionEndForInPlacePunchout)
    {
      v10 = @"InPlace";
    }

    v24 = v10;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #punchout 1 Performing %@ punchout of URL: %@", buf, 0x20u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006095C;
  v19[3] = &unk_100167428;
  v11 = v7;
  v20 = v11;
  [(SRSiriViewController *)self _openURL:v6 bundleId:0 inPlace:delaySessionEndForInPlacePunchout launchOptions:0 conversationId:0 completion:v19];
  if (delaySessionEndForInPlacePunchout)
  {
    if (!self->_ttsDelayedBlocks)
    {
      v12 = objc_alloc_init(AFQueue);
      ttsDelayedBlocks = self->_ttsDelayedBlocks;
      self->_ttsDelayedBlocks = v12;
    }

    objc_initWeak(buf, self);
    v14 = self->_ttsDelayedBlocks;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100060974;
    v16[3] = &unk_100166FE8;
    objc_copyWeak(&v18, buf);
    v17 = v6;
    v15 = objc_retainBlock(v16);
    [(AFQueue *)v14 enqueueObject:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)siriSessionRequestsDismissalForReason:(int64_t)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASDismissalReasonGetName();
    v8 = 136315394;
    v9 = "[SRSiriViewController siriSessionRequestsDismissalForReason:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Siri Session is requesting dismissal %@", &v8, 0x16u);
  }

  [(SRSiriViewController *)self _dismissWithReason:a3];
}

- (void)siriSessionWantsToCacheImage:(id)a3
{
  v3 = a3;
  v4 = +[INCache sharedCache];
  [v4 addCacheableObject:v3];
}

- (void)siriSessionIsPresentingLocalAuthenticationUI
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 assistantUILocalizedStringForKey:@"ASSISTANT_PRESENTING_LOCAL_AUTHENTICATION_UI" table:0];

  [(SRSiriViewController *)self _presentAuthenticationDialogWithText:v4];
}

- (void)siriSessionIsPresentingApplePaySheet
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 assistantUILocalizedStringForKey:@"ASSISTANT_PRESENTING_APPLE_PAY_SHEET" table:0];

  [(SRSiriViewController *)self _presentAuthenticationDialogWithText:v4];
}

- (void)_presentAuthenticationDialogWithText:(id)a3
{
  v4 = a3;
  v11 = +[NSMutableArray array];
  v5 = objc_alloc_init(SAUIAddViews);
  [v5 setDialogPhase:SAUIDialogPhaseStatusValue];
  v6 = objc_alloc_init(SAUIAssistantUtteranceView);
  [v6 setText:v4];
  [v6 setSpeakableText:v4];

  [v11 addObject:v6];
  [v5 setViews:v11];
  v7 = [v5 dictionary];
  v8 = [AceObject aceObjectWithDictionary:v7];

  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  [v8 setAceId:v10];

  [(SRSiriViewController *)self _performGenericAceCommand:v8 turnIdentifier:0 completion:0];
}

- (void)siriSessionDidReceiveSpeechRecognizedCommand:(id)a3
{
  v4 = a3;
  v5 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  [v5 receivedReplayCommand:v4];

  if (AFIsInternalInstall())
  {
    v18 = @"bestTextInterpretation";
    v6 = [v4 af_bestTextInterpretation];
    v19 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SRSiriViewController *)self _analytics];
  [v8 logEventWithType:1506 context:v7];

  [(SRSiriViewController *)self _didReceiveAceCommand:v4];
  v9 = [(SRSiriViewController *)self _activeConversation];
  [v9 addItemForSpeechRecognizedCommand:v4];

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v4 af_userUtteranceValue];
    v13 = [v12 bestTextInterpretation];
    v14 = 136315394;
    v15 = "[SRSiriViewController siriSessionDidReceiveSpeechRecognizedCommand:]";
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Speech Recognized: %@", &v14, 0x16u);
  }
}

- (void)siriSessionDidRecognizedAdditionalSpeechInterpretation:(id)a3 refId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SRSiriViewController *)self _activeConversation];
  [v8 addAdditionalSpeechInterpretation:v7 refId:v6];
}

- (void)siriSessionDidUpdateRecognitionWithPhrases:(id)a3 utterances:(id)a4 refId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SRSiriViewController *)self _activeConversation];
  [v11 addRecognitionUpdateWithPhrases:v10 utterances:v9 refId:v8];
}

- (void)siriSessionDidReceiveSpeechPartialResultCommand:(id)a3
{
  v4 = a3;
  if (AFIsInternalInstall())
  {
    v21 = @"bestTextInterpretation";
    v5 = [v4 af_bestTextInterpretation];
    v22 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SRSiriViewController *)self _analytics];
  [v7 logEventWithType:1504 context:v6];

  v8 = [(SRSiriViewController *)self traitCollection];
  if ([v8 isAmbientPresented] && +[AFSystemAssistantExperienceStatusManager saeAvailable](AFSystemAssistantExperienceStatusManager, "saeAvailable"))
  {
    v9 = +[AFPreferences sharedPreferences];
    v10 = [v9 alwaysShowRecognizedSpeech];

    if (!v10)
    {
      goto LABEL_9;
    }

    v8 = [(SRSiriViewController *)self _host];
    [v8 requestHostBlurVisible:1 reason:2 fence:0];
  }

LABEL_9:
  [(SRSiriViewController *)self _didReceiveAceCommand:v4];
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SRSiriViewController siriSessionDidReceiveSpeechPartialResultCommand:]";
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Did receive partial speech result %@", &v17, 0x16u);
  }

  v12 = [(SRSiriViewController *)self _activeConversation];
  [v12 addItemForPartialResultCommand:v4];

  v13 = [(SRSiriViewController *)self _presentation];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [v4 af_bestTextInterpretation];
    v16 = [(SRSiriViewController *)self _presentation];
    [v16 siriDidUpdateASRWithRecognition:v15];
  }
}

- (id)removeAlternativeFeatureViews:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 views];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setViews:v4];

  return v3;
}

- (BOOL)_shouldLowerKeyboardForAddViewsCommand:(id)a3
{
  v3 = a3;
  v4 = [v3 views];
  v5 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v3 af_dialogPhase];
  LOBYTE(v5) = [v7 isReflectionDialogPhase];

  v8 = 0;
  if ((v5 & 1) == 0 && (isKindOfClass & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v3 views];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = [*(*(&v18 + 1) + 8 * v15) listenAfterSpeaking];
          v12 |= [v16 BOOLValue];

          v13 |= SiriUIAceViewHasButtons();
          v15 = v15 + 1;
        }

        while (v11 != v15);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
      v8 = v12 ^ 1 | v13;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

- (void)_updateKeyboardState:(BOOL)a3 minimized:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![(SRSiriViewController *)self _isKeyboardLoweredAfterResponse])
  {
    if ([(SASRequestOptions *)self->_requestOptions requestSource]== 24)
    {
      objc_initWeak(&location, self);
      v7 = [(SRSiriViewController *)self _host];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000617B4;
      v8[3] = &unk_1001681E0;
      objc_copyWeak(&v9, &location);
      v10 = v4;
      v11 = v5;
      [v7 serviceDidRequestCurrentTextInput:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    else if ([(SASRequestOptions *)self->_requestOptions inputType]== 2)
    {
      [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:v5 minimized:v4];

      [(SRSiriViewController *)self _setKeyboardLoweredAfterResponse:v4];
    }
  }
}

- (void)_updateKeyboardStatusForAddViewsCommand:(id)a3
{
  if ([(SRSiriViewController *)self _shouldLowerKeyboardForAddViewsCommand:a3])
  {
    v4 = +[UIKeyboard isInHardwareKeyboardMode]^ 1;
  }

  else
  {
    v4 = 0;
  }

  if ([(SASRequestOptions *)self->_requestOptions requestSource]== 24 || v4 && [(SASRequestOptions *)self->_requestOptions inputType]== 2)
  {
    v5 = [(SRSiriViewController *)self textInputEnabled];

    [(SRSiriViewController *)self _updateKeyboardState:v5 minimized:v4];
  }
}

- (void)siriSessionDidReceiveAddViewsCommand:(id)a3 completion:(id)a4
{
  v129 = a3;
  v127 = a4;
  v6 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  [v6 receivedReplayCommand:v129];

  v126 = [v129 af_dialogPhase];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 didReceiveAddViewsDialogPhaseForSuggestions:v126];
  }

  v128 = [v129 views];
  v10 = [v128 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v128 firstObject];
    [(SRSiriViewController *)self handlePlayTrailer:v12 completion:v127];

    goto LABEL_108;
  }

  v13 = [NSMutableString alloc];
  v14 = objc_opt_class();
  v15 = [v129 aceId];
  v16 = [v129 refId];
  v134 = [v13 initWithFormat:@"<%@: %@ refId:%@>\n", v14, v15, v16];

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = v128;
  v17 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
  if (!v17)
  {

    goto LABEL_43;
  }

  v132 = 0;
  v18 = *v141;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v141 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v140 + 1) + 8 * i);
      v21 = [SiriUIUtilities descriptionForAceView:v20];
      [v134 appendFormat:@"%@\n", v21];

      v22 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 136315394;
        v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        v147 = 2112;
        v148 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews view class: %@", buf, 0x16u);
      }

      v24 = [v20 dialog];
      v25 = v24 == 0;

      if (!v25)
      {
        v26 = AFSiriLogContextConnection;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        }

        v132 = 1;
      }

      v27 = [v20 aceId];
      v28 = v27 == 0;

      if (v28)
      {
        v29 = AFSiriLogContextConnection;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
          v147 = 2112;
          v148 = v20;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s View missing aceID can result in TTS speaking AddViews and SayIt out of order %@", buf, 0x16u);
        }

        v30 = [(SRSiriViewController *)self _analytics];
        v31 = AFAnalyticsContextCreateWithCommand();
        [v30 logEventWithType:1449 context:v31];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v20 dialogIdentifier];
        [(SRSiriViewController *)self disableTouchIDFaceIDIfNecessaryForDucID:v32];

        v33 = [v20 listenAfterSpeaking];
        self->_keyboardEnabled = [v33 BOOLValue] ^ 1;
      }

      responseViewId = self->_responseViewId;
      self->_responseViewId = 0;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v20 responseViewId];
        v36 = v35 == 0;

        if (!v36)
        {
          v37 = [v20 responseViewId];
          v38 = self->_responseViewId;
          self->_responseViewId = v37;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v20 responseViewId];
        if (v39)
        {
          v40 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
          v41 = [v40 isSiriDetached];

          if ((v41 & 1) == 0)
          {
            v42 = [v20 responseViewId];
            v43 = self->_responseViewId;
            self->_responseViewId = v42;

            v44 = [VRXVisualResponseShown alloc];
            v45 = [v20 cardData];
            v46 = [v44 initWithCardData:v45 responseViewId:self->_responseViewId];

            v47 = [(SRSiriViewController *)self _instrumentationManager];
            v48 = [v47 currentInstrumentationTurnContext];
            v49 = [v48 turnIdentifier];

            [v46 emitWithTurnIdentifier:v49];
          }
        }
      }

      v50 = [v20 dialog];

      if (v50)
      {
        v51 = [v20 dialog];
        v52 = [v51 dialogIdentifier];
        [(SRSiriViewController *)self disableTouchIDFaceIDIfNecessaryForDucID:v52];
      }

      if (!self->_listenAfterSpeakingForRequestFinished)
      {
        v53 = [v20 listenAfterSpeaking];
        if ([v53 BOOLValue])
        {
          v54 = [(SASRequestOptions *)self->_requestOptions isTypeToSiriRequest];

          if (v54)
          {
            goto LABEL_36;
          }

          [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:1];
          v53 = [v20 listenAfterSpeakingBehavior];
          v55 = [v53 startAlertSoundID];
          startRecordingSoundId = self->_startRecordingSoundId;
          self->_startRecordingSoundId = v55;
        }
      }

LABEL_36:
      v57 = [(SRSiriViewController *)self _presentation];
      v58 = objc_opt_respondsToSelector();

      if (v58)
      {
        v59 = [(SRSiriViewController *)self _presentation];
        v60 = [v20 delayDismissalMs];
        [v59 delayDismissalAfterIdleFires:v60];
      }
    }

    v17 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
  }

  while (v17);

  if (v132)
  {
    v61 = 1;
    goto LABEL_46;
  }

LABEL_43:
  if ([v129 sruif_isEmptyUtteranceView] && (-[SRSiriViewController _requestOptions](self, "_requestOptions"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "isForStark"), v62, (v63 & 1) == 0))
  {
    v125 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD198(v125, v129);
    }

    if (v127)
    {
      v104 = [v129 aceId];
      obja = [SACommandSucceeded sruif_commandSucceededWithRefId:v104];
      v127[2](v127, obja);
      goto LABEL_106;
    }
  }

  else
  {
    v61 = 0;
LABEL_46:
    v64 = [(SRSiriViewController *)self _presentation];
    v65 = objc_opt_respondsToSelector();

    if (v65)
    {
      v66 = [(SRSiriViewController *)self _presentation];
      v67 = [v129 feedbackForm];
      [v66 handleFeedbackForm:v67];
    }

    v68 = [v129 requestEndBehavior];
    if (v68)
    {
      v69 = [(SRSiriViewController *)self _presentation];
      v70 = objc_opt_respondsToSelector();

      if (v70)
      {
        objc_initWeak(buf, self);
        v137[0] = _NSConcreteStackBlock;
        v137[1] = 3221225472;
        v137[2] = sub_100062C60;
        v137[3] = &unk_100168208;
        objc_copyWeak(&v139, buf);
        v138 = v129;
        [(SRSiriViewController *)self _fetchAttendingState:v137];

        objc_destroyWeak(&v139);
        objc_destroyWeak(buf);
      }
    }

    v71 = v129;
    [(SRSiriViewController *)self _logPatternExecutedEventForAddViewsCommand:v71];
    [(SRSiriViewController *)self _sharePatternIdFromAddViewsCommand:v71];
    v72 = [v71 responseMode];
    v133 = [(SRSiriViewController *)self _responseModeToMDModeConverter:v72];

    v73 = [v71 responseMode];
    obja = [v73 lowercaseString];

    v74 = [v71 refId];
    addViewsRefId = self->_addViewsRefId;
    self->_addViewsRefId = v74;

    v76 = [v71 responseMode];
    self->_addViewsMode = [(SRSiriViewController *)self _responseModeToMDModeConverter:v76];

    v77 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = [v71 patternId];
      *buf = 136315394;
      v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
      v147 = 2112;
      v148 = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews patternId: [%@]", buf, 0x16u);
    }

    v79 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = self->_responseViewId;
      *buf = 136315394;
      v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
      v147 = 2112;
      v148 = v80;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews responseViewId: [%@]", buf, 0x16u);
    }

    v81 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = "false";
      if (v61)
      {
        v82 = "true";
      }

      *buf = 136315394;
      v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
      v147 = 2080;
      v148 = v82;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%s #modes snippetViewContainsDialog: %s", buf, 0x16u);
    }

    v83 = [v71 patternId];
    if ((v83 || [(NSString *)self->_responseViewId length]) && (v83, !v61))
    {
      v89 = v71;
    }

    else
    {
      v84 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%s #modes non-RF response - setting currentMode as computed mode passed from MAF through addViews for iOS bridging", buf, 0xCu);
      }

      v85 = [v71 sruif_dialogPhase];
      if ([v85 isReflectionDialogPhase])
      {
        v86 = [(SRSiriViewController *)self _suppressTTSForErrorsAndInterstitials];

        if (v86)
        {
          v85 = AFSiriLogContextConnection;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%s #modes Applying DisplayOnly mode to suppress interstitials from being spoken", buf, 0xCu);
          }

          v133 = 2;
          goto LABEL_69;
        }
      }

      else
      {
LABEL_69:
      }

      v87 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = MDModeGetName();
        *buf = 136315650;
        v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        v147 = 2112;
        v148 = v88;
        v149 = 2112;
        v150 = v134;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%s #modes %@ %@", buf, 0x20u);
      }

      v89 = [MDDialogTransformer transformAddViews:v71 forMode:v133];
    }

    v90 = [(SRSiriViewController *)self _requestOptions];
    [v90 requestSource];
    IsVisualIntelligenceDirectInvocation = SASRequestSourceIsVisualIntelligenceDirectInvocation();

    if (IsVisualIntelligenceDirectInvocation)
    {
      v92 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%s #modes Applying DisplayOnly mode to suppress TTS from being spoken for quickTypeTamale", buf, 0xCu);
      }

      v93 = [MDDialogTransformer transformAddViews:v89 forMode:2];

      v133 = 2;
      v89 = v93;
    }

    v94 = [v89 sruif_dialogPhase];
    v95 = [v94 isReflectionDialogPhase];

    if (v95)
    {
      [(SRSiriViewController *)self _reflectionDialogHasBeenPlayed:1];
    }

    if ([(SRSiriViewController *)self _presentationOptions]== 2)
    {
      v96 = 4;
    }

    else
    {
      v96 = +[SRVisualResponseTransformer currentIdiom];
    }

    v97 = [(SRSiriViewController *)self _viewModeFromPresentationOptions:[(SRSiriViewController *)self _presentationOptions]];
    systemUIController = self->_systemUIController;
    lockState = self->_lockState;
    v100 = [(SRSiriViewController *)self view];
    v101 = [v100 traitCollection];
    -[SRSiriSystemUIController updateSystemUIForAddViews:viewMode:lockState:isInAmbient:](systemUIController, "updateSystemUIForAddViews:viewMode:lockState:isInAmbient:", v89, v97, lockState, [v101 isAmbientPresented]);

    if ([(SRSiriSystemUIController *)self->_systemUIController shouldRedactSnippetForAddViews:v89])
    {
      v102 = [(SRSiriSystemUIController *)self->_systemUIController transformAddViews:v89 mode:[(SRSiriViewController *)self _MDModeToSRModeConverter:v133] idiom:v96];
      v103 = [(SRSiriSystemUIController *)self->_systemUIController presentingSystemUI];
      v104 = v102;

      if (v103)
      {
        v105 = AFSiriLogContextConnection;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%s System UI Presented. Setting didPresentSystemUI", buf, 0xCu);
        }

        v106 = [(SRSiriViewController *)self _presentation];
        v107 = objc_opt_respondsToSelector();

        if (v107)
        {
          v89 = [(SRSiriViewController *)self _presentation];
          [v89 didPresentSystemUI];
          goto LABEL_90;
        }
      }
    }

    else
    {
      v104 = [SRVisualResponseTransformer transformVisualResponse:v89 forMode:[(SRSiriViewController *)self _MDModeToSRModeConverter:v133] idiom:v96 shouldHideSnippet:0];
LABEL_90:
    }

    v108 = [(SRSiriViewController *)self _presentation];
    v109 = objc_opt_respondsToSelector();

    if (v109)
    {
      objc_initWeak(buf, self);
      v135[0] = _NSConcreteStackBlock;
      v135[1] = 3221225472;
      v135[2] = sub_100062CE8;
      v135[3] = &unk_100168230;
      objc_copyWeak(v136, buf);
      v136[1] = v133;
      [(SRSiriViewController *)self _fetchAttendingState:v135];
      objc_destroyWeak(v136);
      objc_destroyWeak(buf);
    }

    v110 = [v104 views];
    v111 = [v110 count] == 0;

    if (v111)
    {
      v119 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%s System UI Presented. Resetting ASR", buf, 0xCu);
      }

      v120 = [(SRSiriViewController *)self _presentation];
      v121 = objc_opt_respondsToSelector();

      if (v121)
      {
        v122 = [(SRSiriViewController *)self _presentation];
        [v122 resetViewsAndClearASR:1];
      }

      v123 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD270(v71);
      }

      if (v127)
      {
        v118 = [v71 aceId];
        v124 = [SACommandSucceeded sruif_commandSucceededWithRefId:v118];
        v127[2](v127, v124);

LABEL_104:
      }
    }

    else
    {
      v112 = [(SRSiriViewController *)self _analytics];
      v113 = [(SRSiriViewController *)self _instrumentationManager];
      [v112 logClientFeedbackPresented:v104 dialogIdentifierProvider:v113];

      analyticsSupplement = self->_analyticsSupplement;
      v115 = [(SRSiriViewController *)self _instrumentationResponseModeForMode:v133];
      v144 = v104;
      v116 = [NSArray arrayWithObjects:&v144 count:1];
      [(SRUIFAnalyticsSupplement *)analyticsSupplement didComputeMode:v115 forAceCommand:v71 generatedAceCommands:v116];

      [(SRSiriViewController *)self _processAddViewsCommand:v104 forMode:[(SRSiriViewController *)self _MDModeToSRModeConverter:v133] completion:v127];
      v117 = [(SRSiriViewController *)self _presentation];
      LOBYTE(v115) = objc_opt_respondsToSelector();

      if (v115)
      {
        v118 = [(SRSiriViewController *)self _presentation];
        [v118 loadContinuerSuggestionsForRequest:self->_addViewsRefId currentMode:obja dialogPhase:v126];
        goto LABEL_104;
      }
    }

LABEL_106:
  }

LABEL_108:
}

- (void)siriSessionRequestsTTSDuckToVolume:(float)a3 rampTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[SRSiriViewController siriSessionRequestsTTSDuckToVolume:rampTime:completion:]";
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Ducking TTS to %f over time %f", &v11, 0x20u);
  }

  *&v10 = a3;
  [(SRUIFSpeechSynthesizing *)self->_ttsManager duckTTSVolumeTo:v8 rampTime:v10 completion:a4];
}

- (void)siriSessionWillProcessAppLaunchWithBundleIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 siriWillProcessAppLaunchWithBundleIdentifier:v7];
  }

  [(SRSiriSystemUIController *)self->_systemUIController collapseSystemUI];
}

- (void)siriSessionDidEnterLatencyState
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 siriDidEnterLatencyState];
  }
}

- (void)siriSessionDidReceiveLatencyInformation:(id)a3
{
  v7 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 siriDidReceiveLatencyInformation:v7];
  }
}

- (void)siriSessionDidReceiveNLRoutingDecision:(id)a3
{
  v7 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 siriDidReceiveNLRoutingDecision:v7];
  }
}

- (void)siriSessionDidBeginTaskWithIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 siriDidBeginTaskWithIdentifier:v7];
  }
}

- (void)siriSessionDidReceiveContinueOnDeviceCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v6];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v6];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100063280;
  v10[3] = &unk_100168258;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(SRSiriViewController *)self _performContinueOnDeviceCommand:v8 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceivePluginSnippetPrewarmCommand:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 uiPluginBundleNames];
  v8 = v7;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [VRXVisualResponseProvider prewarmPlugin:*(*(&v15 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  if (v6)
  {
    v13 = [v5 aceId];
    v14 = [SACommandSucceeded sruif_commandSucceededWithRefId:v13];
    v6[2](v6, v14);
  }
}

- (void)siriSessionDidReceiveStartGenAIEnablementFlowCommand:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 siriDidReceiveStartGenAIEnablementFlowCommand:v10 completion:v6];
  }
}

- (void)orchestrationDidPresentResponseFullyInApp
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CD344();
  }

  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 didPresentResponseFullyInApp];
  }
}

- (void)controllerRequestSystemApertureCollapse
{
  v2 = [(SRSiriViewController *)self _host];
  [v2 requestSystemApertureCollapse];
}

- (void)controllerRequestSiriDismissal
{
  v3 = [(SRSiriViewController *)self _presentation];
  [(SRSiriViewController *)self dismissSiriPresentation:v3 withReason:55];
}

- (void)controllerRequestSiriBlurHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRSiriViewController *)self _host];
  [v5 requestHostBlurVisible:!v3 reason:2 fence:0];

  v6 = [(SRSiriViewController *)self traitCollection];
  v7 = [v6 isAmbientPresented];

  if (v7)
  {
    v8 = [(SRSiriViewController *)self _host];
    [v8 setFullScreenDimmingLayerVisible:!v3 animated:1];
  }
}

- (void)controllerRequestTapsShared:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRSiriViewController *)self _host];
  [v5 setShouldPassTouchesThroughToSpringBoard:v3];

  v7 = [(SRSiriViewController *)self view];
  v6 = [v7 layer];
  [v6 setHitTestsAsOpaque:v3 ^ 1];
}

- (void)controllerRequestScreenClearedWithClearASR:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    [v7 resetViewsAndClearASR:v3];
  }
}

- (void)_processAddViewsCommand:(id)a3 forMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v11 = [(SRSiriViewController *)self _presentation];
  v12 = objc_opt_respondsToSelector();

  v13 = v10;
  if (v12)
  {
    v14 = [(SRSiriViewController *)self _presentation];
    v13 = [v14 prepareAddViewsCommandForConversation:v10];
  }

  if (SiriUIDisableAlternativesFeature())
  {
    v15 = [(SRSiriViewController *)self removeAlternativeFeatureViews:v13];

    v13 = v15;
  }

  if ([(SRSiriViewController *)self textInputEnabled])
  {
    [(SRSiriViewController *)self _updateKeyboardStatusForAddViewsCommand:v13];
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100063C58;
  v39[3] = &unk_100168140;
  v34 = v9;
  v40 = v34;
  [(SRSiriViewController *)self _didReceiveAceCommand:v13 completion:v39];
  v16 = [v13 responseMode];
  v17 = [(SRSiriViewController *)self _responseModeToMDModeConverter:v16];

  if ((v17 == 3 || !v17) && _os_feature_enabled_impl())
  {
    [(SRSiriViewController *)self _enqueueSpokenSuggestionsFromAddViews:v10];
  }

  if (a4 == 2)
  {
    [SRUIFAddViewsDurationProvider minimumDisplayDurationForAddViews:v13];
    if (v18 > 0.0)
    {
      [(SRSiriViewController *)self _delayAceCommandSuccess:v13 forDuration:?];
    }
  }

  v19 = [v13 dialogPhase];
  v20 = [AFDialogPhase dialogPhaseForAceDialogPhase:v19];

  if (([v20 isTemporary] & 1) == 0 && (objc_msgSend(v20, "isConfirmedDialogPhase") & 1) == 0 && (objc_msgSend(v20, "isCancelledDialogPhase") & 1) == 0)
  {
    v21 = [(SRSiriViewController *)self _repeatablePhrases];
    [v21 removeAllObjects];

    repeatableAudioSayit = self->_repeatableAudioSayit;
    self->_repeatableAudioSayit = 0;
  }

  if (![v20 isTemporary] || objc_msgSend(v20, "isConfirmationDialogPhase"))
  {
    v23 = [(SRSiriViewController *)self _session];
    [v23 requestDidPresentViewForUICommand:v13];
  }

  if ([v20 isErrorDialogPhase])
  {
    v24 = [(SRSiriViewController *)self _session];
    [v24 requestDidPresentViewForErrorCommand:v13];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = [v13 views];
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * i);
        v31 = [v30 speakableText];
        if ([v31 length])
        {

          goto LABEL_34;
        }

        v32 = [v30 dialog];

        if (v32)
        {
          goto LABEL_34;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  v33 = [(SRSiriViewController *)self _activeConversation];
  [v33 addItemsForAddViewsCommand:v13];
}

- (void)disableTouchIDFaceIDIfNecessaryForDucID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((~LODWORD(self->_lockState) & 3) == 0 && (([v4 isEqualToString:@"misc#answerWhoAmI"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"misc#answerWhoseIsThis")))
  {
    v6 = +[BKDeviceManager availableDevices];
    v7 = [v6 firstObject];

    if (v7)
    {
      v15 = 0;
      v8 = [BKDevice deviceWithDescriptor:v7 error:&v15];
      v9 = v15;
      v10 = v9;
      if (v8)
      {
        v14 = v9;
        v11 = [v8 forceBioLockoutIfLockedForUser:501 error:&v14];
        v12 = v14;

        v13 = AFSiriLogContextConnection;
        if (v11)
        {
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v17 = "[SRSiriViewController disableTouchIDFaceIDIfNecessaryForDucID:]";
            v18 = 2112;
            v19 = v5;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Disabled BioLock for %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          sub_1000CD3C4();
        }

        v10 = v12;
      }

      else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD3C4();
      }
    }
  }
}

- (void)handlePlayTrailer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SAVCSPlayContent);
  v9 = [v6 utsId];
  [v8 setPlayTrailer:1];
  [v8 setContentType:SAVCSContentTypeMovieValue];
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];
  [v8 setAceId:v11];

  [v8 setUtsId:v9];
  v12 = [v6 hiresTrailerUri];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v6 lowresTrailerUri];
  }

  v15 = v14;

  v16 = [v6 lowresTrailerUri];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [v6 hiresTrailerUri];
  }

  v19 = v18;

  if (v15)
  {
    [v8 setHiresTrailerUri:v15];
    [v8 setLowresTrailerUri:v19];
    [(SRSiriViewController *)self siriSessionDidReceivePlayContentCommand:v8 completion:v7];
  }

  else
  {
    v20 = [[WLKCanonicalPlayablesRequest alloc] initWithCanonicalID:v9];
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000640B8;
    v21[3] = &unk_100168280;
    v22 = v8;
    objc_copyWeak(&v24, &location);
    v23 = v7;
    [v20 makeRequestWithCompletion:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)siriSessionDidReceiveAddDialogsCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v49 = a4;
  v7 = [NSMutableString alloc];
  v8 = objc_opt_class();
  v50 = v6;
  v9 = [v6 aceId];
  v10 = [v7 initWithFormat:@"<%@: %@>\n", v8, v9];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = [v6 dialogs];
  v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v12)
  {
    v13 = *v65;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v64 + 1) + 8 * i);
        v16 = [SiriUIUtilities descriptionForDialog:v15];
        [v10 appendFormat:@"%@\n", v16];

        v17 = [v15 dialogIdentifier];
        [(SRSiriViewController *)self disableTouchIDFaceIDIfNecessaryForDucID:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v12);
  }

  if (!self->_listenAfterSpeakingForRequestFinished)
  {
    v18 = [v50 listenAfterSpeaking];
    if (![v18 BOOLValue])
    {
LABEL_12:

      goto LABEL_13;
    }

    v19 = [(SASRequestOptions *)self->_requestOptions isTypeToSiriRequest];

    if ((v19 & 1) == 0)
    {
      [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:1];
      v18 = [v50 listenAfterSpeakingBehavior];
      v20 = [v18 startAlertSoundID];
      startRecordingSoundId = self->_startRecordingSoundId;
      self->_startRecordingSoundId = v20;

      goto LABEL_12;
    }
  }

LABEL_13:
  v22 = [v50 requestEndBehavior];
  if (v22)
  {
    v23 = [(SRSiriViewController *)self _presentation];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      objc_initWeak(location, self);
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100064A48;
      v61[3] = &unk_100168208;
      objc_copyWeak(&v63, location);
      v62 = v50;
      [(SRSiriViewController *)self _fetchAttendingState:v61];

      objc_destroyWeak(&v63);
      objc_destroyWeak(location);
    }
  }

  v25 = [v50 responseMode];
  v26 = [(SRSiriViewController *)self _responseModeToMDModeConverter:v25];

  v27 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136315138;
    *&location[4] = "[SRSiriViewController siriSessionDidReceiveAddDialogsCommand:completion:]";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s #modes non-RF response - setting currentMode as computed mode passed from MAF through addDialogs for iOS bridging", location, 0xCu);
  }

  v28 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
    v30 = MDModeGetName();
    *location = 136315650;
    *&location[4] = "[SRSiriViewController siriSessionDidReceiveAddDialogsCommand:completion:]";
    v70 = 2112;
    v71 = v30;
    v72 = 2112;
    v73 = v10;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s #modes %@ %@", location, 0x20u);
  }

  v31 = [MDDialogTransformer transformAddDialogs:v50 forMode:v26];
  [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement didComputeMode:[(SRSiriViewController *)self _instrumentationResponseModeForMode:v26] forAceCommand:v50 generatedAceCommands:v31];
  v32 = [(SRSiriViewController *)self _presentation];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    objc_initWeak(location, self);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100064AD0;
    v59[3] = &unk_100168230;
    objc_copyWeak(v60, location);
    v60[1] = v26;
    [(SRSiriViewController *)self _fetchAttendingState:v59];
    objc_destroyWeak(v60);
    objc_destroyWeak(location);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = v31;
  v35 = [v34 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v35)
  {
    v36 = *v56;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v55 + 1) + 8 * j);
        v39 = [(SRSiriViewController *)self _analytics];
        v40 = [(SRSiriViewController *)self _instrumentationManager];
        [v39 logClientFeedbackPresented:v38 dialogIdentifierProvider:v40];
      }

      v35 = [v34 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v35);
  }

  if ([v34 count])
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100064B40;
    v51[3] = &unk_1001682A8;
    v53 = [v34 count] - 1;
    v54 = v26;
    v51[4] = self;
    v52 = v49;
    [v34 enumerateObjectsUsingBlock:v51];
  }

  else
  {
    v41 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = [v50 aceId];
      *location = 136315394;
      *&location[4] = "[SRSiriViewController siriSessionDidReceiveAddDialogsCommand:completion:]";
      v70 = 2112;
      v71 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s #modes Transformed AddDialogs (aceId = %@) resulted in no commands", location, 0x16u);
    }

    v44 = [(SRSiriViewController *)self _presentation];
    v45 = objc_opt_respondsToSelector();

    if (v45)
    {
      v46 = [(SRSiriViewController *)self _presentation];
      [v46 didOmitDialogFromPresenting];
    }

    if (v49)
    {
      v47 = [v50 aceId];
      v48 = [SACommandSucceeded sruif_commandSucceededWithRefId:v47];
      (*(v49 + 2))(v49, v48);
    }
  }
}

- (void)siriSessionDidReceiveClearScreenCommand:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v15];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v15];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 startNewConversation];
  }

  else
  {
    v10 = [(SRSiriViewController *)self _startNewConversation];
  }

  v11 = [v15 initialView];
  v12 = [v11 speakableText];

  if ([v12 length])
  {
    [(SRSiriViewController *)self _setUtteranceToSpeakAfterClearScreenCommand:v12];
  }

  [(SRSiriViewController *)self _didCompleteActionForAceCommand:v15 success:1];
  if (v6)
  {
    v13 = objc_alloc_init(SACommandSucceeded);
    v14 = [v15 aceId];
    [v13 setRefId:v14];

    v6[2](v6, v13);
  }
}

- (void)siriSessionDidReceivePlayVoicemailCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(SRSiriViewController *)self _didReceiveAceCommand:v6 completion:a4];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v6];
  v7 = [(SRSiriViewController *)self _voicemailPlayer];
  [v7 setPlaybackCommand:v6];

  v8 = [(SRSiriViewController *)self _voicemailPlayer];
  [v8 startPlaying];
}

- (id)_configuredSpeakableUtteranceParserForCommand:(id)a3 context:(id)a4 speakableText:(id)a5 subCompletion:(id)a6 speakPreparation:(id *)a7 speakCompletion:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v32 = a6;
  v15 = +[AFSpeakableUtteranceParser sruif_speakableUtteranceParserForCurrentLanguage];
  [v15 setHandleTTSCodes:1];
  if ([v13 conformsToProtocol:&OBJC_PROTOCOL___SAAceIdentifiable])
  {
    v16 = v13;
    v17 = [v16 identifier];
    v13 = v16;
    if ([v17 isAMOSIdentifier])
    {
      v13 = [(SRSiriViewController *)self domainObjectForIdentifier:v17];
    }
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if (AFIsInternalInstall())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [SRUIFUtilities shouldRedactSpeakableTextForAceObject:v12];
      *(v49 + 24) = v18;
    }
  }

  if (![v15 sruif_hasExternalDomainsForStringWithFormat:v14 shouldRedactLog:*(v49 + 24)])
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      sub_1000CD4EC(v22, v52, v21);
    }

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v19 = +[SiriUISnippetManager sharedInstance];
  v20 = [v19 speakableProviderForObject:v13];

  if (v20)
  {
    [v15 registerProvider:v20 forNamespace:_AFSpeakableUtteranceParserObjDomain];
  }

LABEL_16:
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v23 = [v20 identifier];
    objc_initWeak(&location, self);
    if (v23)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000652E4;
      v41[3] = &unk_100168320;
      objc_copyWeak(&v46, &location);
      v24 = v23;
      v42 = v24;
      v43 = v20;
      v44 = v15;
      v45 = v14;
      v25 = objc_retainBlock(v41);

      objc_destroyWeak(&v46);
      goto LABEL_22;
    }
  }

  else
  {
    objc_initWeak(&location, self);
  }

  v24 = 0;
  v25 = 0;
LABEL_22:
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10006562C;
  v35[3] = &unk_100168348;
  objc_copyWeak(&v40, &location);
  v39 = &v48;
  v26 = v14;
  v36 = v26;
  v27 = v12;
  v37 = v27;
  v28 = v32;
  v38 = v28;
  v29 = objc_retainBlock(v35);
  if (a7)
  {
    *a7 = [v25 copy];
  }

  if (a8)
  {
    *a8 = [v29 copy];
  }

  v30 = v15;

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v48, 8);

  return v30;
}

- (void)siriSessionDidReceiveSmsPlayAudioCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(SRSiriViewController *)self _didReceiveAceCommand:v6 completion:a4];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v6];
  v7 = [(SRSiriViewController *)self _audioMessagePlayer];
  [v7 setPlaybackCommand:v6];

  v8 = [(SRSiriViewController *)self _audioMessagePlayer];
  [v8 startPlaying];
}

- (void)siriSessionDidReceivePlayNotificationSound:(id)a3 completion:(id)a4
{
  v7 = a3;
  [(SRSiriViewController *)self _didReceiveAceCommand:v7 completion:a4];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v7];
  [(AFUISiriSession *)self->_session forceAudioSessionActive];
  v8 = [[TLAlertConfiguration alloc] initWithType:2];
  [v8 setShouldIgnoreRingerSwitch:1];
  v9 = [TLAlert alertWithConfiguration:v8];
  [v9 setPlaybackObserver:self];
  objc_storeStrong(&self->_currentNotificationSound, a3);
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    currentNotificationSound = self->_currentNotificationSound;
    v12 = 136315650;
    v13 = "[SRSiriViewController siriSessionDidReceivePlayNotificationSound:completion:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = currentNotificationSound;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Playing notification sound %@ for command %@ ", &v12, 0x20u);
  }

  [v9 playWithCompletionHandler:&stru_100168368];
}

- (void)alertDidBeginPlaying:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SRSiriViewController alertDidBeginPlaying:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Alert %@ began playing", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, 1500000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100065D2C;
  v7[3] = &unk_100166FE8;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  dispatch_after(v6, &_dispatch_main_q, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)siriSessionDidReceiveSayItCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  addViewsRefId = self->_addViewsRefId;
  v11 = [v9 refId];
  LODWORD(addViewsRefId) = [(NSString *)addViewsRefId isEqualToString:v11];

  if (addViewsRefId && self->_addViewsMode == 2)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = MDModeGetName();
      *buf = 136315394;
      v32 = "[SRSiriViewController siriSessionDidReceiveSayItCommand:completion:]";
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing SayIt command because the mode is %@", buf, 0x16u);
    }

    if (v8)
    {
      v15 = [v9 refId];
      v16 = [SACommandSucceeded sruif_commandSucceededWithRefId:v15];
      v8[2](v8, v16);

LABEL_19:
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!self->_delaySessionEndForInPlacePunchout || ![_TtC4Siri24PrivacyDisclosureManager appRequiresPreflightWithAppBundleId:@"com.apple.Maps"])
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [SiriUIUtilities descriptionForSayIt:v9];
      *buf = 136315394;
      v32 = "[SRSiriViewController siriSessionDidReceiveSayItCommand:completion:]";
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #modes %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_previousSayItCommand, a3);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100066254;
    v29[3] = &unk_100168140;
    v30 = v8;
    [(SRSiriViewController *)self _didReceiveAceCommand:v9 completion:v29];
    v24 = [(SRSiriViewController *)self _session];
    [v24 requestDidPresentViewForUICommand:v9];

    v25 = [v9 audioData];
    if (v25)
    {
    }

    else
    {
      v26 = [v9 languageCode];
      if (!v26)
      {
        goto LABEL_18;
      }

      v27 = v26;
      v28 = [v9 message];

      if (!v28)
      {
        goto LABEL_18;
      }
    }

    objc_storeStrong(&self->_repeatableAudioSayit, a3);
LABEL_18:
    [(SRSiriViewController *)self _performSayItCommand:v9];
    v15 = v30;
    goto LABEL_19;
  }

  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[SRSiriViewController siriSessionDidReceiveSayItCommand:completion:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #modes #punchout Suppressing SayIt command because we are delaying the TTS session for a Maps punchout and the user hasn't accepted the Maps privacy disclosure policy", buf, 0xCu);
  }

  if (v8)
  {
    v15 = objc_alloc_init(SACommandIgnored);
    v18 = [v9 refId];
    [v15 setRefId:v18];

    v19 = objc_alloc_init(NSUUID);
    v20 = [v19 UUIDString];
    [v15 setAceId:v20];

    v8[2](v8, v15);
    goto LABEL_19;
  }

LABEL_20:
}

- (void)siriSessionDidReceiveRepeatItCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:self->_listenAfterSpeakingForRepeatable];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000666C4;
  v39[3] = &unk_100168140;
  v19 = v7;
  v40 = v19;
  v22 = self;
  [(SRSiriViewController *)self _didReceiveAceCommand:v6 completion:v39];
  v8 = [(SRSiriViewController *)self _session];
  [v8 requestDidPresentViewForUICommand:v6];

  v20 = [(SRSiriViewController *)v22 _repeatablePhrases];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = [v20 count];
  if (v22->_repeatableAudioSayit)
  {
    [(SRSiriViewController *)v22 _performSayItCommand:?];
  }

  else if (v36[3])
  {
    [(SRSiriViewController *)v22 _didStartActionForAceCommand:v6];
    objc_initWeak(&location, v22);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v20;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v6 aceId];
          v14 = [v6 refId];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100066730;
          v23[3] = &unk_1001683B8;
          v25 = &v35;
          objc_copyWeak(&v26, &location);
          v24 = v6;
          [(SRSiriViewController *)v22 _synthesizeText:v12 identifier:v13 sessionId:v14 completion:v23];

          objc_destroyWeak(&v26);
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v9);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [v6 contingency];

    if (v15)
    {
      [(SRSiriViewController *)v22 _didStartActionForAceCommand:v6];
      objc_initWeak(&location, v22);
      v16 = [v6 contingency];
      v17 = [v6 aceId];
      v18 = [v6 refId];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000666DC;
      v31[3] = &unk_100168390;
      objc_copyWeak(&v33, &location);
      v32 = v6;
      [(SRSiriViewController *)v22 _synthesizeText:v16 identifier:v17 sessionId:v18 completion:v31];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)siriSessionDidReceiveShowHelpCommand:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:1];
  [(SRSiriViewController *)self _didReceiveAceCommand:v7 completion:v6];

  v8 = [(SRSiriViewController *)self _session];
  [v8 requestDidPresentViewForUICommand:v7];

  v9 = [(SRSiriViewController *)self _activeConversation];
  [v9 addItemsForShowHelpCommand:v7];
}

- (void)siriSessionDidReceiveUpdateViewsCommand:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    v10 = [v9 prepareUpdateViewsCommandForConversation:v13];

    v11 = v10;
  }

  else
  {
    v11 = v13;
  }

  v14 = v11;
  [(SRSiriViewController *)self _didReceiveAceCommand:v11 completion:v6];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v14];
  v12 = [(SRSiriViewController *)self _activeConversation];
  [v12 updateWithUpdateViewsCommand:v14];

  [(SRSiriViewController *)self _didCompleteActionForAceCommand:v14 success:1];
}

- (void)siriSessionDidReceiveAppPunchOutCommand:(id)a3 completion:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 aceId];

  if (v10)
  {
    [(SRSiriViewController *)self _didReceiveAceCommand:v8];
  }

  objc_initWeak(&location, self);
  if (v9)
  {
    v11 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100066AD0;
    v13[3] = &unk_1001683E0;
    v10 = &v16;
    objc_copyWeak(&v16, &location);
    v4 = &v14;
    v14 = v8;
    v5 = &v15;
    v15 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_retainBlock(v11);
  [(SRSiriViewController *)self _performAppPunchOutCommand:v8 completion:v12];

  if (v9)
  {

    objc_destroyWeak(v10);
  }

  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveCloseAssistantCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = [v6 reason];
  v9 = [v8 isEqualToString:SAUICloseAssistantReasonEMPTY_RECOGNITIONValue];

  if (v9)
  {
    v10 = 53;
  }

  else
  {
    v10 = 10;
  }

  objc_initWeak(&location, self);
  ttsManager = self->_ttsManager;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100066D70;
  v14[3] = &unk_100168430;
  objc_copyWeak(v17, &location);
  v12 = v7;
  v16 = v12;
  v13 = v6;
  v15 = v13;
  v17[1] = v10;
  [(SRUIFSpeechSynthesizing *)ttsManager isSynthesisQueueEmpty:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveListenForPronunciationCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  ttsManager = self->_ttsManager;
  v9 = [v6 aceId];
  v10 = [v6 refId];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000672EC;
  v14[3] = &unk_100168458;
  objc_copyWeak(&v17, &location);
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  LODWORD(v13) = 0x1000000;
  [SRUIFSpeechSynthesizing enqueueText:"enqueueText:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:" identifier:0 sessionId:v9 preferredVoice:v10 language:0 gender:0 promptStyle:0 isPhonetic:0.0 provisionally:0 eligibleAfterDuration:v13 delayed:0 canUseServerTTS:v14 preparationIdentifier:0 completion:0 analyticsContext:? speakableContextInfo:?];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveSetSuggestedUtterancesCommand:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v14];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    v10 = [v14 utterances];
    v11 = [v14 language];
    [v9 updateSuggestedUtterances:v10 forLanguage:v11];
  }

  if (v6)
  {
    v12 = [v14 aceId];
    v13 = [SACommandSucceeded sruif_commandSucceededWithRefId:v12];
    v6[2](v6, v13);
  }
}

- (void)siriSessionDidReceiveGetResponseAlternativesPlaybackCommand:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v12];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 handleGetResponseAlternativesPlayback:v12];
  }

  if (v6)
  {
    v10 = [v12 aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:v10];
    v6[2](v6, v11);
  }
}

- (void)siriSessionDidReceiveSAUIShowFullScreenEffectCommand:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v12];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 showFullScreenEffect:v12];
  }

  if (v6)
  {
    v10 = [v12 aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:v10];
    v6[2](v6, v11);
  }
}

- (void)siriSessionDidReceiveSAUIShowSpeechAlternativesCommand:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v12];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 showSpeechAlternatives:v12];
  }

  if (v6)
  {
    v10 = [v12 aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:v10];
    v6[2](v6, v11);
  }
}

- (void)siriSessionDidReceiveSAUIShowRequestHandlingStatusCommand:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v20];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 showRequestHandlingStatus:v20];
  }

  else
  {
    v10 = [v20 requestHandlingStatus];

    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = [v20 requestHandlingStatus];
    v12 = [v11 isEqualToString:SAUIShowRequestHandlingStatusRequestHandlingStatusASR_NL_ON_SERVERValue];

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = [v20 requestHandlingStatus];
      v15 = [v14 isEqualToString:SAUIShowRequestHandlingStatusRequestHandlingStatusASR_ON_DEVICE_NL_ON_SERVERValue];

      if (v15)
      {
        v13 = 2;
      }

      else
      {
        v16 = [v20 requestHandlingStatus];
        v17 = [v16 isEqualToString:SAUIShowRequestHandlingStatusRequestHandlingStatusASR_NL_ON_DEVICEValue];

        if (v17)
        {
          v13 = 3;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    v9 = [(SRSiriViewController *)self _host];
    [v9 setRequestHandlingStatus:v13];
  }

LABEL_13:
  if (v6)
  {
    v18 = [v20 aceId];
    v19 = [SACommandSucceeded sruif_commandSucceededWithRefId:v18];
    v6[2](v6, v19);
  }
}

- (void)siriSessionDidReceiveSAUIChangePrimaryUtteranceCommand:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(SRSiriViewController *)self _didReceiveAceCommand:v12];
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 changeUtterance:v12];
  }

  if (v6)
  {
    v10 = [v12 aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:v10];
    v6[2](v6, v11);
  }
}

- (void)siriSessionDidReceiveSetUIGuidedAccessCommand:(id)a3 completion:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v16 toggle])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v16 value] ^ 1;
  }

  if (([v16 dryRun] & 1) != 0 || v7)
  {
    v11 = objc_alloc_init(SACommandFailed);
    [v11 setErrorCode:SASettingValueUnchangedErrorCode];
    v12 = [NSString stringWithFormat:@"Guided Access is already off"];
    [v11 setReason:v12];

    goto LABEL_22;
  }

  Availability = AXGuidedAccessGetAvailability();
  if (!_AXSGuidedAccessEnabled())
  {
    _AXSTripleClickAddOption();
    _AXSGuidedAccessSetEnabled();
    Availability = AXGuidedAccessGetAvailability();
  }

  v9 = -1;
  v10 = @"Guided Access failed for an unknown reason.";
  if (Availability > 3)
  {
    if (Availability <= 0xE)
    {
      if (((1 << Availability) & 0x2780) == 0)
      {
        if (((1 << Availability) & 0x5070) == 0)
        {
          if (Availability == 11)
          {
            v9 = SASettingGuidedAccessPasscodeRequiredErrorCode;
            v10 = @"Guided Access requires a pin code to be set.";
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v9 = SASettingGuidedAccessUnavailableForAppErrorCode;
      v10 = @"Guided Access can not be started over this application";
    }

LABEL_21:
    [(SRSiriViewController *)self _didReceiveAceCommand:v16];
    v11 = objc_alloc_init(SACommandFailed);
    [v11 setErrorCode:v9];
    [v11 setReason:v10];
LABEL_22:
    v13 = [v16 aceId];
    [v11 setRefId:v13];

    if (v6)
    {
      v6[2](v6, v11);
    }

    goto LABEL_24;
  }

  if ((Availability - 1) < 2)
  {
LABEL_20:
    v9 = SASettingGuidedAccessTemporarilyUnavailableErrorCode;
    v10 = @"Guided Access not available Right Now";
    goto LABEL_21;
  }

  if (Availability)
  {
    if (Availability == 3)
    {
      v9 = SASettingGuidedAccessUnavailableInRestoreOrUpdateErrorCode;
      v10 = @"Guided Access not available while restoring or updating";
    }

    goto LABEL_21;
  }

  [(SRSiriViewController *)self _didReceiveAceCommand:v16];
  v11 = objc_alloc_init(SACommandSucceeded);
  v14 = [v16 aceId];
  [v11 setRefId:v14];

  if (v6)
  {
    v6[2](v6, v11);
  }

  v15 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100168478];
  [v15 serviceStartGuidedAccess];

LABEL_24:
}

- (void)siriSessionDidReceiveHideSiriOverlayCommand:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    [v9 dismissRecordingOverlayAndHideSnippets:{objc_msgSend(v13, "hideSnippets")}];

    v10 = [(SRSiriViewController *)self _session];
    [v10 requestDidPresentViewForUICommand:v13];

    if (v6)
    {
      v11 = objc_alloc_init(SACommandSucceeded);
      v12 = [v13 aceId];
      [v11 setRefId:v12];

      v6[2](v6, v11);
    }
  }
}

- (void)siriSessionDidReceiveAddContentToViewCommand:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SRSiriViewController *)self _presentation];
    v10 = [v9 siriDidReceiveAdditionalContent:v13];

    if (v10)
    {
      v11 = objc_alloc_init(SACommandSucceeded);
    }

    else
    {
      v11 = objc_alloc_init(SACommandFailed);
      [v11 setReason:{@"The target view could either not be found, was not eligible, or couldn't be delivered the payload"}];
    }

    v12 = [v13 aceId];
    [v11 setRefId:v12];

    if (v6)
    {
      v6[2](v6, v11);
    }
  }
}

- (void)siriSessionDidReceiveGuideUpdateCommand:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AFUIGuideCacheManager sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100068140;
  v10[3] = &unk_1001681B8;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [v7 updateCacheWithGuideUpdate:v8 completion:v10];
}

- (void)siriSessionDidReceiveShowNextCardCommand:(id)a3 completion:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = +[SRUIFCardLoadingMonitor sharedInstance];
  v7 = [v10 cardSnippet];
  [v6 broadcastCardSnippet:v7];

  if (v5)
  {
    v8 = objc_alloc_init(SACommandSucceeded);
    v9 = [v10 aceId];
    [v8 setRefId:v9];

    v5[2](v5, v8);
  }
}

- (void)siriSessionDidReceiveShowNextSnippetCommand:(id)a3 completion:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = +[SRUIFCardLoadingMonitor sharedInstance];
  v7 = [v10 visualResponse];
  [v6 broadcastVisualResponseSnippet:v7];

  if (v5)
  {
    v8 = [v10 aceId];
    v9 = [SACommandSucceeded sruif_commandSucceededWithRefId:v8];
    v5[2](v5, v9);
  }
}

- (void)siriSessionDidReceiveUpdateVisualResponseSnippetCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    v11 = [v10 didReceiveUpdateVisualResponseCommand:v6];

    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v6 viewId];
      v15 = NSStringFromBOOL();
      v19 = 136315650;
      v20 = "[SRSiriViewController siriSessionDidReceiveUpdateVisualResponseSnippetCommand:completion:]";
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s command with viewId: %@ handled by presentation: %@", &v19, 0x20u);
    }

    [(SRSiriViewController *)self _logAceObjectPresented:v6 dialogPhase:0];
    if (v7)
    {
      v16 = [v6 aceId];
      if (v11)
      {
        [SACommandSucceeded sruif_commandSucceededWithRefId:v16];
      }

      else
      {
        [SACommandFailed sruif_commandFailedWithRefId:v16];
      }
      v18 = ;
      v7[2](v7, v18);
      goto LABEL_13;
    }
  }

  else
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SRSiriViewController siriSessionDidReceiveUpdateVisualResponseSnippetCommand:completion:]";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s presentation does not implement didReceiveUpdateVisualResponseCommand for command:%@", &v19, 0x16u);
    }

    if (v7)
    {
      v16 = [v6 aceId];
      v18 = [SACommandFailed sruif_commandFailedWithRefId:v16];
      v7[2](v7, v18);
LABEL_13:
    }
  }
}

- (void)siriSessionDidReceivePreSynthesizeTTSCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDA24();
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = v6;
  v9 = v7;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveDisambiguationItemSelected:(id)a3 completion:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = +[AFUIDisambiguationAnalyticsManager sharedManager];
  [v6 logDisambiguationItemSelected:v9];

  if (v5)
  {
    v7 = [v9 refId];
    v8 = [SACommandSucceeded sruif_commandSucceededWithRefId:v7];
    v5[2](v5, v8);
  }
}

- (void)siriSessionSpeechRecordingDidChangeAVRecordRoute:(id)a3
{
  v7 = a3;
  [(SRSiriViewController *)self _setCurrentAVRecordRoute:?];
  [UIApp finishedIPTest:SUICPPTTestNameSiriBringupTVSyntheticSpeechCapturedToSpeechRecording];
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 speechRecordingDidBeginOnRecordRoute:v7];
  }
}

- (void)siriSessionSpeechRecordingDidEnd
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    v5 = [(SRSiriViewController *)self _requestOptions];
    v6 = [(SRSiriViewController *)self _currentAVRecordRoute];
    [v7 speechRecordingDidEndForRequest:v5 onAVRecordRoute:v6];
  }
}

- (void)siriSessionSpeechRecordingDidCancel
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    v5 = [(SRSiriViewController *)self _requestOptions];
    v6 = [(SRSiriViewController *)self _currentAVRecordRoute];
    [v7 speechRecordingDidCancelForRequest:v5 onAVRecordRoute:v6];
  }
}

- (void)siriSessionSpeechRecordingDidFailWithError:(id)a3
{
  v9 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    v7 = [(SRSiriViewController *)self _requestOptions];
    v8 = [(SRSiriViewController *)self _currentAVRecordRoute];
    [v6 speechRecordingDidFailForRequest:v7 onAVRecordRoute:v8 withError:v9];
  }
}

- (BOOL)siriSessionShouldRequestUpdateForViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _activeConversation];
  v6 = [v5 containsItemForAceViewWithIdentifier:v4];

  return v6;
}

- (void)siriSessionDidDetectMusic
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 siriDidDetectMusic];
  }
}

- (void)siriSessionDidDetectSpeechStartpoint
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 speechRecordingDidDetectSpeechStartpoint];
  }
}

- (void)siriSessionDidUpdateAudioSessionID:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SRSiriViewController siriSessionDidUpdateAudioSessionID:]";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #tts 4 %u", &v10, 0x12u);
  }

  [(SRUIFSpeechSynthesizing *)self->_ttsManager setAudioSessionID:v3];
  v6 = [(SRSiriViewController *)self _requestOptions];
  if ([v6 isForBluetoothCar])
  {
    goto LABEL_6;
  }

  v7 = [(SRSiriViewController *)self _requestOptions];
  if ([v7 isAnnounceRequest])
  {

LABEL_6:
LABEL_7:
    [(SRUIFSpeechSynthesizing *)self->_ttsManager prewarmIfNeededKeepActive:1];
    return;
  }

  v8 = [(SRSiriViewController *)self _requestOptions];
  v9 = [v8 isForStark];

  if (v9)
  {
    goto LABEL_7;
  }
}

- (void)siriSessionDidReceiveAudioSessionInterruptionBeganWithUserInfo:(id)a3 machAbsoluteTime:(unint64_t)a4
{
  v9 = objc_alloc_init(SISchemaPNRFatalErrorInfo);
  [v9 setErrorDomain:kAFAssistantErrorDomain];
  v6 = [NSString stringWithFormat:@"%ld", 48];
  [v9 setErrorCode:v6];

  v7 = objc_alloc_init(SISchemaPNRFatalError);
  [v7 setError:v9];
  v8 = [(SRSiriViewController *)self _instrumentationManager];
  [v8 emitInstrumentation:v7 atTime:a4];
}

- (void)siriSessionRequestsPlayPhaticWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SRSiriViewController siriSessionRequestsPlayPhaticWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #phatic 5", buf, 0xCu);
  }

  ttsManager = self->_ttsManager;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000692A0;
  v8[3] = &unk_100168018;
  v9 = v4;
  v7 = v4;
  [(SRUIFSpeechSynthesizing *)ttsManager enqueuePhaticWithCompletion:v8];
}

- (void)siriSessionDidInitializeSessionInfo:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_siriSessionInfo, a3);
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIPresentation *)self->_presentation siriSessionDidInitializeSessionInfo:v5];
  }
}

- (void)siriSessionDidUpdateSessionInfo:(id)a3
{
  v4 = a3;
  [(SRUIFSiriSessionInfo *)self->_siriSessionInfo applyInfo:?];
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIPresentation *)self->_presentation siriSessionDidUpdateSessionInfo:v4];
  }
}

- (void)siriSessionDidReceivePlayContentCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIPresentation *)self->_presentation handlePlayContentCommand:v7 completion:v6];
  }
}

- (void)siriSessionDidReceiveLaunchTVRemoteCommand:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 hashedRouteId];
  v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006966C;
  v13[3] = &unk_1001684C8;
  v14 = objc_alloc_init(AFSecurityConnection);
  v15 = v7;
  v16 = v5;
  v17 = v6;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v14;
  [v12 processData:v8 usingProcedure:2 completion:v13];
}

- (void)siriSessionDidReceiveSnippetConfigurationRequestCommand:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v30 = objc_alloc_init(SAUISize);
  v8 = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [v8 maxSizeForSnippet];
    v10 = v9;
    v12 = v11;
    v13 = [(SRSiriViewController *)self view];
    v14 = [v13 traitCollection];
    v15 = [v14 isAmbientPresented];

    if (v15)
    {
      v10 = v10 / SiriSharedUICompactAmbientContentScaleAmount;
    }

    [v30 setWidth:v10];
    [v30 setHeight:v12];
    v16 = +[UIWindow _applicationKeyWindow];
    v17 = [v16 windowScene];
    v18 = [v17 screen];
    [v18 scale];
    [v30 setScale:?];
  }

  v19 = objc_alloc_init(SAUISnippetDisplayConfigurationResponse);
  [v19 setEstimatedVisibleSnippetDisplaySize:v30];
  v20 = [v7 aceId];

  [v19 setRefId:v20];
  [v19 setAccessibilityDifferentiateWithoutColor:UIAccessibilityShouldDifferentiateWithoutColor()];
  [v19 setAccessibilityInvertColors:UIAccessibilityIsInvertColorsEnabled()];
  [v19 setAccessibilityReduceMotion:UIAccessibilityIsReduceMotionEnabled()];
  [v19 setAccessibilityReduceTransparency:UIAccessibilityIsReduceTransparencyEnabled()];
  IsRTL = SiriSharedUILanguageIsRTL();
  v22 = &SAUITextDirectionRightToLeftValue;
  if (!IsRTL)
  {
    v22 = &SAUITextDirectionLeftToRightValue;
  }

  [v19 setTextDirection:*v22];
  v23 = [(SRSiriViewController *)self _presentationViewController];
  v24 = [v23 traitCollection];

  v25 = [v24 aceDisplayColorScheme];
  [v19 setDisplayColorScheme:v25];

  v26 = [v24 aceDisplayColorGamut];
  [v19 setDisplayGamut:v26];

  v27 = [v24 aceDynamicTypeSize];
  [v19 setDynamicTypeSize:v27];

  v28 = [v24 aceTextLegibilityWeight];
  [v19 setTextLegibilityWeight:v28];

  v29 = [v24 aceDisplayContrast];
  [v19 setDisplayContrast:v29];

  v6[2](v6, v19);
}

- (void)siriPresentation:(id)a3 requestHostBlurVisible:(BOOL)a4 reason:(int64_t)a5 fence:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (a5 == 2 && [(SRSiriSystemUIController *)self->_systemUIController presentingSystemUI])
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SRSiriViewController siriPresentation:requestHostBlurVisible:reason:fence:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #SystemAperture - Not blurring the lock screen for content presentation", &v14, 0xCu);
    }
  }

  else
  {
    v13 = [(SRSiriViewController *)self _host];
    [v13 requestHostBlurVisible:v8 reason:a5 fence:v11];
  }
}

- (void)siriPresentation:(id)a3 reduceOrbOpacity:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSiriViewController *)self _host];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SRSiriViewController *)self _host];
    [v8 reduceOrbOpacity:v4];
  }
}

- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSiriViewController *)self _activeConversation];

  if (v8 == v6)
  {
    [(SRSiriViewController *)self _deletePreviousConversation];
  }

  v9 = objc_alloc_init(NSArray);
  v10 = [v7 insertedItemIndexPaths];

  if (v10)
  {
    v11 = [v7 insertedItemIndexPaths];
    v12 = [v9 arrayByAddingObjectsFromArray:v11];

    v9 = v12;
  }

  v13 = [v7 updatedItemIndexPaths];

  if (v13)
  {
    v14 = [v7 updatedItemIndexPaths];
    v15 = [v9 arrayByAddingObjectsFromArray:v14];

    v9 = v15;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(SRSiriViewController *)self _didStartActionForItemAtIndexPath:*(*(&v25 + 1) + 8 * v20) inConversation:v6, v25];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }

  v21 = [(SRSiriViewController *)self _presentation];
  [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement storeDialogPhasesForItemsAtIndexPaths:v16 forConversation:v6];
  if ([(SRSiriViewController *)self _presentationSupportsConversationDidChangeWithTransaction:v21])
  {
    [v21 conversation:v6 didChangeWithTransaction:v7];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [v7 updatedItemIndexPaths];
      if ([v22 count])
      {
        [v21 conversation:v6 didUpdateItemsAtIndexPaths:v22];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [v7 insertedItemIndexPaths];
      if ([v23 count])
      {
        [v21 conversation:v6 didInsertItemsAtIndexPaths:v23];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v7 presentationStateChangedItemIndexPaths];
      if ([v24 count])
      {
        [v21 conversation:v6 didChangePresentationStateForItemsAtIndexPaths:v24];
      }
    }
  }
}

- (void)conversation:(id)a3 didRemoveItemsWithIdentifiers:(id)a4 atIndexPaths:(id)a5 parentItemIdentifiers:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(SRSiriViewController *)self _activeConversation];

  if (v13 == v15)
  {
    [(SRSiriViewController *)self _deletePreviousConversation];
  }

  v14 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    [v14 conversation:v15 didRemoveItemsWithIdentifiers:v10 atIndexPaths:v11 parentItemIdentifiers:v12];
  }
}

- (void)siriSessionDidReceiveExtendCurrentTTSCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_delaySessionEndForInPlacePunchout = 1;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SRSiriViewController siriSessionDidReceiveExtendCurrentTTSCommand:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #punchout received request to delay current session end for In Place Punchout", &v11, 0xCu);
  }

  v9 = [v6 aceId];
  v10 = [SACommandSucceeded sruif_commandSucceededWithRefId:v9];
  v7[2](v7, v10);
}

- (void)siriSessionDidReceiveRevealRecognizedSpeechCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    [v10 didReceiveRevealRecognizedSpeechCommand:v6];

    [(SRSiriViewController *)self _logAceObjectPresented:v6 dialogPhase:0];
    v11 = [v6 aceId];
    v12 = [SACommandSucceeded sruif_commandSucceededWithRefId:v11];
  }

  else
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[SRSiriViewController siriSessionDidReceiveRevealRecognizedSpeechCommand:completion:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s presentation does not implement didReceiveRevealRecognizedSpeechCommand for command:%@", &v15, 0x16u);
    }

    v11 = [v6 aceId];
    v12 = [SACommandFailed sruif_commandFailedWithRefId:v11];
  }

  v14 = v12;
  v7[2](v7, v12);

  [(SRSiriViewController *)self _logRevealSpeechCommandReceived:v6];
}

- (void)siriSessionDidReceivePaginateListCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    [v10 didReceivePaginateListCommand:v6 completion:v7];

    [(SRSiriViewController *)self _logAceObjectPresented:v6 dialogPhase:0];
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SRSiriViewController siriSessionDidReceivePaginateListCommand:completion:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s presentation does not implement didReceivePaginateListCommand for command:%@", &v14, 0x16u);
    }

    v12 = [v6 aceId];
    v13 = [SACommandFailed sruif_commandFailedWithRefId:v12];
    (*(v7 + 2))(v7, v13);
  }
}

- (id)conversationIdentifiersForSiriPresentation:(id)a3
{
  v3 = [(SRSiriViewController *)self _conversations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) identifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)siriPresentation:(id)a3 activateConversationWithIdentifier:(id)a4
{
  v5 = [(SRSiriViewController *)self _conversationWithIdentifier:a4];
  [(SRSiriViewController *)self _activateConversation:v5];
}

- (id)siriPresentation:(id)a3 identifierOfItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v7 = [v6 identifierOfItemAtIndexPath:v5];

  return v7;
}

- (id)siriPresentation:(id)a3 indexPathForItemWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v7 = [v6 indexPathForItemWithIdentifier:v5];

  return v7;
}

- (id)_activeConversationItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _activeConversation];
  v6 = [v5 itemAtIndexPath:v4];

  return v6;
}

- (int64_t)siriPresentation:(id)a3 typeOfItemAtIndexPath:(id)a4
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:a4];
  v5 = [v4 type];

  if ((v5 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int64_t)siriPresentation:(id)a3 numberOfChildrenForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v7 = [v6 numberOfChildrenForItemAtIndexPath:v5];

  return v7;
}

- (id)siriPresentation:(id)a3 aceObjectForItemAtIndexPath:(id)a4
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:a4];
  v5 = [v4 aceObject];

  return v5;
}

- (id)siriPresentation:(id)a3 aceCommandIdentifierForItemAtIndexPath:(id)a4
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:a4];
  v5 = [v4 aceCommandIdentifier];

  return v5;
}

- (void)siriPresentation:(id)a3 insertAceViews:(id)a4 withDialogPhase:(id)a5 asItemsAtIndexPaths:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(SRSiriViewController *)self _activeConversation];
  [v12 insertItemsForAceViews:v11 withDialogPhase:v10 atIndexPaths:v9];
}

- (void)siriPresentation:(id)a3 removeItemsAtIndexPaths:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  [v6 removeItemsAtIndexPaths:v5];
}

- (void)siriPresentation:(id)a3 addSelectionResponse:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  [v6 addSelectionResponse:v5];
}

- (id)siriPresentation:(id)a3 domainObjectForIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(SRSiriViewController *)self domainObjectStoreForSiriPresentation:a3];
  v8 = [v7 domainObjectForIdentifier:v6];

  return v8;
}

- (void)siriPresentation:(id)a3 setDomainObject:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SRSiriViewController *)self domainObjectStoreForSiriPresentation:a3];
  [v10 setDomainObject:v9 forIdentifier:v8];
}

- (BOOL)siriPresentation:(id)a3 itemAtIndexPathIsVirgin:(id)a4
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:a4];
  v5 = [v4 isVirgin];

  return v5;
}

- (double)contentWidthForForSiriPresentation:(id)a3
{
  v3 = [(SRSiriViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Width = CGRectGetWidth(v19);
  v13 = objc_opt_class();
  IsPhone = SiriUIDeviceIsPhone();
  IsZoomed = SiriUIDeviceIsZoomed();
  IsLargeFormatPad = SiriUIDeviceIsLargeFormatPad();

  [v13 _contentWidthForWidth:IsPhone isPhone:IsZoomed isZoomed:IsLargeFormatPad isLargeFormatPad:Width];
  return result;
}

+ (double)_contentWidthForWidth:(double)result isPhone:(BOOL)a4 isZoomed:(BOOL)a5 isLargeFormatPad:(BOOL)a6
{
  if (a4)
  {
    v6 = &SiriUIPhoneMaxContentWidth;
  }

  else
  {
    if (a6)
    {
      return SiriUILargeFormatPadContentWidth;
    }

    v6 = &SiriUIPadZoomedMaxContentWidth;
    if (!a5)
    {
      v6 = &SiriUIPadMaxContentWidth;
    }
  }

  if (*v6 <= result)
  {
    return *v6;
  }

  return result;
}

- (CGRect)statusBarFrameForSiriPresentation:(id)a3
{
  [(SRSiriViewController *)self _statusBarFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)statusViewHeightForSiriPresentation:(id)a3
{
  if ([(SRSiriViewController *)self textInputEnabled]&& (!self->_requestActive || [(SASRequestOptions *)self->_requestOptions inputType]!= 2))
  {
    return 0.0;
  }

  [(SRSiriViewController *)self _statusViewHeight];
  return result;
}

- ($5B118637EA29FD52B6AA7C9036D3A2A1)keyboardInfoForSiriPresentation:(SEL)a3
{
  size = self[2].var3.size;
  *&retstr->var0 = self[2].var3.origin;
  *&retstr->var3.origin.y = size;
  *&retstr->var3.size.height = *&self[2].var4;
  return self;
}

- (id)activeRequestOptionsForSiriPresentation:(id)a3
{
  if (![(SRSiriViewController *)self _isSiriIdleAndQuiet]|| ([(SASRequestOptions *)self->_requestOptions isTypeToSiriRequest]& 1) != 0 || [(SASRequestOptions *)self->_requestOptions isVisualIntelligenceRequest])
  {
    v4 = [(SASRequestOptions *)self->_requestOptions copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)siriPresentation:(id)a3 startRequestForText:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    [(SRSiriViewController *)self startRequestForText:v5];
  }
}

- (void)siriPresentation:(id)a3 startRequestForSuggestion:(id)a4 inputType:(int64_t)a5 suggestionRequestType:(int64_t)a6
{
  v9 = a4;
  if ([v9 length])
  {
    [(SRSiriViewController *)self startRequestForSuggestion:v9 inputType:a5 suggestionRequestType:a6];
  }
}

- (void)siriPresentationKeyboardViewDidAppear:(id)a3
{
  v4 = [(SRSiriViewController *)self _host];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _host];
    [v6 presentationDidPresentKeyboard];
  }
}

- (void)stopRecordingSpeechForSiriPresentation:(id)a3
{
  v3 = [(SRSiriViewController *)self _session];
  [v3 stopRecordingSpeech];
}

- (void)cancelRequestForSiriPresentation:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSiriViewController cancelRequestForSiriPresentation:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v5 = [(SRSiriViewController *)self _session];
  [v5 cancelRequest];
}

- (void)invalidateConnectionForSiriPresentation:(id)a3
{
  v3 = [(SRSiriViewController *)self _session];
  [v3 invalidateConnection];
}

- (void)siriResultsDidDismissInTamaleForSiriPresentation:(id)a3
{
  v3 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_1001684E8];
  [v3 siriResultsDidDismissInTamale];
}

- (void)forceAudioSessionInactiveForSiriPresentation:(id)a3
{
  v3 = [(SRSiriViewController *)self _session];
  [v3 forceAudioSessionInactive];
}

- (void)dismissSiriPresentation:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SRSiriViewController dismissSiriPresentation:withReason:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #idleTimer cancelling idle timer", &v9, 0xCu);
  }

  if ([(SRSiriViewController *)self _isReadingBulletinContentInCarPlayOutsideOfSiriSession])
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SRSiriViewController dismissSiriPresentation:withReason:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #cmas #carPlay received a dismissal request while we are reading bulletin content outside of a Siri session. Cancelling speech synthesis.", &v9, 0xCu);
    }

    [(SRSiriViewController *)self _cancelSpeechSynthesis];
  }

  [(SRSiriViewController *)self _setIdleTimerEnabled:0];
  [(SRSiriViewController *)self _cancelIdleTimer];
  [(SRSiriViewController *)self _dismissWithReason:a4];
}

- (void)siriWillStopAttending:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSiriViewController siriWillStopAttending:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #autodismiss telling session to stop attending for attention loss", &v6, 0xCu);
  }

  v5 = [(SRSiriViewController *)self _session];
  [v5 stopAttending];
}

- (void)siriSessionShouldPrewarmForPossibleTextRequest:(id)a3
{
  v3 = [(SRSiriViewController *)self _session];
  [v3 notifyTypingStarted];
}

- (void)_siriPresentation:(id)a3 speakTextForConversationItemIdentifier:(id)a4 delayed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  [(SRSiriViewController *)self _setStartRequestAceCommandSent:0];
  v10 = [(SRSiriViewController *)self _activeConversation];
  if ([v10 containsItemWithIdentifier:v9])
  {
    v11 = [v10 itemWithIdentifier:v9];
    v12 = [v11 aceCommandIdentifier];
    if (v12)
    {
      v13 = [(SRSiriViewController *)self _aceCommandWithIdentifier:v12];
      if (v13)
      {
        v14 = [(SRSiriViewController *)self _aceCommandRecords];
        v15 = [v14 resultForAceCommand:v13];

        if (v15 != 2)
        {
          v16 = [v11 type];
          v17 = [v11 aceObject];
          v53 = [objc_opt_class() _speechIdentifierForConversationItem:v11];
          v56 = v17;
          v45 = a5;
          if (v16 != 3)
          {
            v51 = 0;
            v52 = 0;
            v21 = 0;
            v22 = 0;
            v44 = 1;
LABEL_25:
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_10006BBD4;
            v59[3] = &unk_100167768;
            v60 = v8;
            v61 = v10;
            v62 = v9;
            v27 = v11;
            v63 = v27;
            v55 = v22;
            v58 = v21;
            v43 = objc_retainBlock(v59);
            v49 = [SRSiriViewController _configuredSpeakableUtteranceParserForCommand:"_configuredSpeakableUtteranceParserForCommand:context:speakableText:subCompletion:speakPreparation:speakCompletion:" context:v13 speakableText:v22 subCompletion:v21 speakPreparation:? speakCompletion:?];
            v50 = 0;
            v48 = 0;
            v28 = [v27 dialogPhase];
            [v28 isExpository];

            v29 = [v27 dialogPhase];
            v30 = [v29 aceDialogPhaseValue];

            if (v30)
            {
              v64 = @"dialogPhase";
              v65 = v30;
              v47 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            }

            else
            {
              v47 = 0;
            }

            v42 = v30;
            objc_opt_class();
            v46 = v12;
            v41 = v11;
            if (objc_opt_isKindOfClass())
            {
              [v27 aceObject];
              v32 = v31 = v13;
              v33 = [v32 preferredSpeakableTextVoice];
              v34 = [v32 preferredSpeakableTextPromptStyle];

              v35 = v33;
              v13 = v31;
              v12 = v46;
            }

            else
            {
              v35 = 0;
              v34 = 0;
            }

            BYTE1(v40) = v44;
            LOBYTE(v40) = v45;
            v36 = v35;
            [SRSiriViewController _speakText:"_speakText:identifier:sessionId:preferredVoice:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:" identifier:v58 sessionId:v53 preferredVoice:v52 promptStyle:0.4 provisionally:v40 eligibleAfterDuration:v49 delayed:v47 canUseServerTTS:v51 speakableUtteranceParser:v50 analyticsContext:v48 speakableContextInfo:? preparation:? completion:?];
            if (v58)
            {
              [v27 aceObject];
              v38 = v37 = v13;
              v39 = [v27 dialogPhase];
              [(SRSiriViewController *)self _logAceObjectSpoken:v38 dialogPhase:v39 speakableText:v58];

              v13 = v37;
              v12 = v46;
            }

            v11 = v41;
            goto LABEL_34;
          }

          v18 = v17;
          v54 = [v18 context];
          v52 = [v18 refId];
          v44 = [v18 canUseServerTTS];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 sruif_combinedSpeakableText];
          }

          else
          {
            [v18 speakableText];
          }
          v57 = ;
          if (AFDeviceSupportsTTS())
          {
            if (v57)
            {
              v23 = [(SRSiriViewController *)self _presentation];
              v24 = objc_opt_respondsToSelector();

              if (v24)
              {
                v25 = [(SRSiriViewController *)self _presentation];
                [v25 updateFeedbackFormWithSpeakableText:v57];
              }

              goto LABEL_24;
            }
          }

          else
          {
            v26 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v67 = "[SRSiriViewController _siriPresentation:speakTextForConversationItemIdentifier:delayed:]";
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s #tts Device does not support tts, overriding speakable text since tts is not supported", buf, 0xCu);
            }
          }

          v57 = 0;
LABEL_24:
          v51 = [v18 speakableContextInfo];

          v22 = v54;
          v21 = v57;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v20 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v67 = "[SRSiriViewController _siriPresentation:speakTextForConversationItemIdentifier:delayed:]";
        v68 = 2112;
        v69 = v9;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Not speaking conversation item:%@. Item missing aceCommandIdentifier.", buf, 0x16u);
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_35;
      }

      v13 = [v11 identifier];
      [v8 siriDidFinishActionsForConversationItemWithIdentifier:v13 inConversation:v10];
    }

LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v19 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "[SRSiriViewController _siriPresentation:speakTextForConversationItemIdentifier:delayed:]";
    v68 = 2112;
    v69 = v9;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Not speaking conversation item:%@. Item doesn't exist in activeConversation.", buf, 0x16u);
  }

LABEL_36:
}

- (void)_siriPresentation:(id)a3 speakTextForConversationItemIdentifierDidBecomeReady:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v8 = [v6 itemWithIdentifier:v5];

  v7 = [objc_opt_class() _speechIdentifierForConversationItem:v8];
  [(SRUIFSpeechSynthesizing *)self->_ttsManager processDelayedItem:v7];
}

- (void)siriPresentationDidPresentUserInterface:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceDidPresentUserInterface];
}

- (void)siriPresentation:(id)a3 didPresentConversationItemsWithIdentifiers:(id)a4
{
  v31 = a3;
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v33;
    *&v8 = 136315394;
    v29 = v8;
    v30 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [(SRSiriViewController *)self _activeConversation];
        v14 = [v13 containsItemWithIdentifier:v12];

        if (v14)
        {
          v15 = [(SRSiriViewController *)self _activeConversation];
          v16 = [v15 itemWithIdentifier:v12];

          v17 = [v16 revisionIdentifier];
          v18 = [(SRSiriViewController *)self _presentedConversationItemRevisionIdentifiers];
          v19 = [v18 containsObject:v17];

          if (v19)
          {
            v20 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v29;
              v37 = "[SRSiriViewController siriPresentation:didPresentConversationItemsWithIdentifiers:]";
              v38 = 2112;
              v39 = v16;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Ignoring conversation item because we have already presented it { item: %@ }", buf, 0x16u);
            }
          }

          else
          {
            v21 = v6;
            v22 = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
            v23 = [v22 containsObject:v17];

            v24 = AFSiriLogContextConnection;
            v25 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
            if (v23)
            {
              if (v25)
              {
                *buf = v29;
                v37 = "[SRSiriViewController siriPresentation:didPresentConversationItemsWithIdentifiers:]";
                v38 = 2112;
                v39 = v16;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Delayed conversation item was presented; processing { item: %@ }", buf, 0x16u);
              }

              v26 = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
              [v26 removeObject:v17];

              [(SRSiriViewController *)self _siriPresentation:v31 speakTextForConversationItemIdentifierDidBecomeReady:v12];
              v27 = [(SRSiriViewController *)self _presentedConversationItemRevisionIdentifiers];
              [v27 addObject:v17];
            }

            else
            {
              if (v25)
              {
                *buf = v29;
                v37 = "[SRSiriViewController siriPresentation:didPresentConversationItemsWithIdentifiers:]";
                v38 = 2112;
                v39 = v16;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Conversation item was presented for the first time; processing { item: %@ }", buf, 0x16u);
              }

              v28 = [(SRSiriViewController *)self _presentedConversationItemRevisionIdentifiers];
              [v28 addObject:v17];

              [(SRSiriViewController *)self _siriPresentation:v31 speakTextForConversationItemIdentifier:v12 delayed:0];
            }

            v6 = v21;
            v10 = v30;
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v9);
  }
}

- (void)siriPresentation:(id)a3 didPresentItemsAtIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSiriViewController *)self _activeConversation];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v8 identifierOfItemAtIndexPath:{*(*(&v16 + 1) + 8 * v14), v16}];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(SRSiriViewController *)self siriPresentation:v6 didPresentConversationItemsWithIdentifiers:v9];
}

- (void)siriPresentation:(id)a3 willDiscardConversationItemsWithIdentifiers:(id)a4
{
  v5 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 136315394;
    v19 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [(SRSiriViewController *)self _activeConversation];
        v13 = [v12 containsItemWithIdentifier:v11];

        if (v13)
        {
          v14 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v25 = "[SRSiriViewController siriPresentation:willDiscardConversationItemsWithIdentifiers:]";
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Discarded conversation item with identifier %@", buf, 0x16u);
          }

          v15 = [(SRSiriViewController *)self _activeConversation];
          v16 = [v15 itemWithIdentifier:v11];

          v17 = [v16 aceCommandIdentifier];
          v18 = [(SRSiriViewController *)self _aceCommandWithIdentifier:v17];
          [(SRSiriViewController *)self _didCompleteActionForAceCommand:v18 success:1];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)siriPresentation:(id)a3 didDelayPresentationOfItemsWithIdentifiers:(id)a4
{
  v23 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 136315394;
    v22 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [(SRSiriViewController *)self _activeConversation];
        v14 = [v13 containsItemWithIdentifier:v12];

        if (v14)
        {
          v15 = [(SRSiriViewController *)self _activeConversation];
          v16 = [v15 itemWithIdentifier:v12];

          v17 = [v16 revisionIdentifier];
          v18 = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
          v19 = [v18 containsObject:v17];

          if ((v19 & 1) == 0)
          {
            v20 = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
            [v20 addObject:v17];

            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v29 = "[SRSiriViewController siriPresentation:didDelayPresentationOfItemsWithIdentifiers:]";
              v30 = 2112;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Processed but delaying presentation for conversation item with identifier %@", buf, 0x16u);
            }

            [(SRSiriViewController *)self _siriPresentation:v23 speakTextForConversationItemIdentifier:v12 delayed:1];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (void)siriPresentation:(id)a3 synthesizeSpeechWithText:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006C734;
  v8[3] = &unk_100168018;
  v9 = a5;
  v7 = v9;
  [(SRSiriViewController *)self _synthesizeText:a4 identifier:0 sessionId:0 completion:v8];
}

- (void)siriPresentation:(id)a3 synthesizeSpeechWithPhoneticText:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006C7F8;
  v8[3] = &unk_100168018;
  v9 = a5;
  v7 = v9;
  [(SRSiriViewController *)self _synthesizePhoneticText:a4 identifier:0 sessionId:0 completion:v8];
}

- (int64_t)siriPresentation:(id)a3 presentationStateForItemAtIndexPath:(id)a4
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:a4];
  v5 = [v4 presentationState];

  return v5;
}

- (void)siriPresentation:(id)a3 didCorrectRecognition:(id)a4 correctionIdentifier:(id)a5 forConversationItemWithIdentifier:(id)a6 userSelectionResults:(id)a7
{
  v25 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(SRSiriViewController *)self _activeConversation];
  v15 = mach_absolute_time();
  if ([v14 containsItemWithIdentifier:v12])
  {
    v16 = [v14 itemWithIdentifier:v12];
    if ([v16 type] == 1)
    {
      v17 = [v16 aceObject];
      [v17 sruif_setRecognitionWithCorrectedSpeech:v25];
    }

    v18 = v15;
    v19 = [v14 indexPathForItemWithIdentifier:v12];
    [v14 removeItemsFollowingItemAtIndexPath:v19];

    if ([(SASRequestOptions *)self->_requestOptions requestSource]- 24 <= 2)
    {
      [(SASRequestOptions *)self->_requestOptions setText:0];
      requestText = self->_requestText;
      self->_requestText = &stru_10016AE90;
    }

    v21 = [(SRSiriViewController *)self _instrumentationManager];
    v22 = [v21 currentInstrumentationTurnContext];
    v23 = [v22 turnIdentifier];

    v24 = [(SRSiriViewController *)self _session];
    [v24 startCorrectedRequestWithText:v25 correctionIdentifier:v11 userSelectionResults:v13 turnIdentifier:v23 machAbsoluteTime:v18];
  }
}

- (void)siriPresentation:(id)a3 startEditedRequestWithText:(id)a4 correctionIdentifier:(id)a5 userSelectionResults:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(SRSiriViewController *)self _instrumentationManager];
  v13 = [v12 currentInstrumentationTurnContext];
  v16 = [v13 turnIdentifier];

  v14 = mach_absolute_time();
  v15 = [(SRSiriViewController *)self _session];
  [v15 startCorrectedRequestWithText:v11 correctionIdentifier:v10 userSelectionResults:v9 turnIdentifier:v16 machAbsoluteTime:v14];
}

- (void)siriPresentation:(id)a3 didCorrectRecognition:(id)a4 correctionIdentifier:(id)a5 forItemAtIndexPath:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SRSiriViewController *)self _activeConversation];
  v15 = [v14 identifierOfItemAtIndexPath:v10];

  [(SRSiriViewController *)self siriPresentation:v13 didCorrectRecognition:v12 correctionIdentifier:v11 forConversationItemWithIdentifier:v15 userSelectionResults:0];
}

- (void)_performAceCommand:(id)a3 conversationIdentifier:(id)a4 turnIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 sruif_aceCommandType];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      [(SRSiriViewController *)self _performContinueOnDeviceCommand:v10 completion:v13];
    }

    else if (v14 == 4)
    {
      [(SRSiriViewController *)self _performStartRequest:v10 turnIdentifier:v12 completion:v13];
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        [(SRSiriViewController *)self _performGenericAceCommand:v10 turnIdentifier:v12 completion:v13];
        break;
      case 2:
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10006CDA8;
        v18[3] = &unk_100167428;
        v19 = v13;
        [(SRSiriViewController *)self _performAppPunchOutCommand:v10 conversationItemIdentifier:v11 completion:v18];

        break;
      case 0:
        v15 = [NSString stringWithFormat:@"Cannot perform non-command: %@", v10];
        v16 = [NSException exceptionWithName:NSInvalidArgumentException reason:v15 userInfo:0];
        v17 = v16;

        objc_exception_throw(v16);
    }
  }
}

- (void)siriPresentation:(id)a3 openURL:(id)a4 conversationId:(id)a5 completion:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006CE78;
  v10[3] = &unk_100167428;
  v11 = a6;
  v9 = v11;
  [(SRSiriViewController *)self _openURL:a4 bundleId:0 inPlace:0 launchOptions:0 conversationId:a5 completion:v10];
}

- (void)enableIdleTimerForSiriPresentation:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSiriViewController enableIdleTimerForSiriPresentation:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Enabling idle timer at the presentation's request", &v5, 0xCu);
  }

  [(SRSiriViewController *)self _setIdleTimerEnabled:1];
  [(SRSiriViewController *)self _rescheduleIdleTimerIfNeeded];
}

- (void)disableIdleTimerForSiriPresentation:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSiriViewController disableIdleTimerForSiriPresentation:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Disabling idle timer at the presentation's request", &v5, 0xCu);
  }

  [(SRSiriViewController *)self _setIdleTimerEnabled:0];
  [(SRSiriViewController *)self _rescheduleIdleTimerIfNeeded];
}

- (void)siriPresentation:(id)a3 setStatusViewHidden:(BOOL)a4
{
  v4 = a4;
  v5 = [(SRSiriViewController *)self _host];
  [v5 setStatusViewHidden:v4];
}

- (void)siriPresentation:(id)a3 setTypeToSiriViewHidden:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSiriViewController *)self _host];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SRSiriViewController *)self _host];
    [v8 setTypeToSiriViewHidden:v4];
  }
}

- (void)siriPresentation:(id)a3 setFullScreenDimmingLayerVisible:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if ((SiriUIDeviceIsPad() & 1) == 0 && +[AFSystemAssistantExperienceStatusManager saeAvailable])
  {
    v8 = [(SRSiriViewController *)self view];
    v9 = [v8 layer];
    [v9 setHitTestsAsOpaque:v6];
  }

  v10 = [(SRSiriViewController *)self _host];
  [v10 setFullScreenDimmingLayerVisible:v6 animated:v5];
}

- (void)siriPresentation:(id)a3 inputTypeDidChange:(int64_t)a4
{
  v5 = [(SRSiriViewController *)self _host];
  [v5 inputTypeDidChange:a4];
}

- (void)siriPresentation:(id)a3 setStatusViewDisabled:(BOOL)a4
{
  v4 = a4;
  v5 = [(SRSiriViewController *)self _host];
  [v5 setStatusViewDisabled:v4];
}

- (void)siriPresentation:(id)a3 setStatusViewUserInteractionEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = [(SRSiriViewController *)self _host];
  [v5 setStatusViewUserInteractionEnabled:v4];
}

- (void)siriPresentation:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v7 = [(SRSiriViewController *)self _host];
  v6 = [v5 preferredStatusBarStyle];

  [v7 serviceWillPresentViewControllerWithStatusBarStyle:v6];
}

- (void)siriPresentation:(id)a3 didPresentViewController:(id)a4
{
  v5 = a4;
  v7 = [(SRSiriViewController *)self _host];
  v6 = [v5 preferredStatusBarStyle];

  [v7 serviceDidPresentViewControllerWithStatusBarStyle:v6];
}

- (void)siriPresentation:(id)a3 willDismissViewController:(id)a4
{
  v5 = a4;
  v7 = [(SRSiriViewController *)self _host];
  v6 = [v5 preferredStatusBarStyle];

  [v7 serviceWillDismissViewControllerWithStatusBarStyle:v6];
}

- (void)siriPresentation:(id)a3 didDismissViewController:(id)a4
{
  v5 = a4;
  v7 = [(SRSiriViewController *)self _host];
  v6 = [v5 preferredStatusBarStyle];

  [v7 serviceDidDismissViewControllerWithStatusBarStyle:v6];
}

- (void)siriPresentation:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = [(SRSiriViewController *)self _host];
  [v7 setStatusBarHidden:v6 animated:v5];
}

- (void)siriPresentation:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [(SRSiriViewController *)self _host];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006D5A8;
  v12[3] = &unk_1001674E0;
  v13 = v9;
  v11 = v9;
  [v10 setStatusBarHidden:v7 animated:v6 completion:v12];
}

- (void)siriPresentation:(id)a3 setHelpButtonEmphasized:(BOOL)a4
{
  v4 = a4;
  v5 = [(SRSiriViewController *)self _host];
  [v5 setHelpButtonEmphasized:v4];
}

- (void)siriPresentationPulseHelpButton:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 pulseHelpButton];
}

- (BOOL)siriPresentationShouldDelaySuggestions:(id)a3
{
  if (![(SRSiriViewController *)self textInputEnabled]|| (v4 = [(SASRequestOptions *)self->_requestOptions requestSource], v4 != 1))
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)siriPresentation:(id)a3 setBugReportingAvailable:(BOOL)a4
{
  v4 = a4;
  v5 = [(SRSiriViewController *)self _host];
  [v5 setBugReportingAvailable:v4];
}

- (void)siriPresentationDidPresentBugReporter:(id)a3
{
  v4 = [(SRSiriViewController *)self _host];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _host];
    [v6 serviceDidPresentBugReporter];
  }
}

- (void)siriPresentationDidDismissBugReporter:(id)a3
{
  v4 = [(SRSiriViewController *)self _host];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _host];
    [v6 serviceDidDismissBugReporter];
  }
}

- (void)getScreenshotImageForSiriPresentation:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(SRSiriViewController *)self _host];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006D8B0;
    v7[3] = &unk_100168510;
    v8 = v5;
    [v6 getScreenshotWithReplyHandler:v7];
  }
}

- (void)siriPresentationPresentAcousticIDSpinner:(id)a3
{
  v7 = objc_alloc_init(SAAIStartSession);
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  [v7 setAceId:v5];

  [(SRSiriViewController *)self _didReceiveAceCommand:v7];
  v6 = [(SRSiriViewController *)self _activeConversation];
  [v6 addItemForMusicStartSessionCommand:v7];
}

- (void)siriPresentationRemoveAcousticIDSpinner:(id)a3
{
  v4 = [(SRSiriViewController *)self _activeConversation];
  v8 = [v4 lastItem];

  if ([v8 type] == 5)
  {
    v5 = [v8 identifier];
    v6 = [NSSet setWithObject:v5];

    v7 = [(SRSiriViewController *)self _activeConversation];
    [v7 removeItemsWithIdentifiers:v6];
  }
}

- (void)siriPresentation:(id)a3 didEditSpeechRecognized:(id)a4 forInterval:(double)a5
{
  v7 = a4;
  v8 = [AFMetrics alloc];
  v9 = [v7 refId];

  v10 = [NSNumber numberWithDouble:a5];
  v12 = [v8 initWithOriginalCommandId:v9 category:4 duration:v10];

  v11 = [(SRSiriViewController *)self _session];
  [v11 recordUIMetrics:v12];
}

- (void)siriPresentation:(id)a3 didScrollForInterval:(double)a4 metricsContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    v9 = [(SRSiriViewController *)self _activeConversation];

    if (v9)
    {
      v10 = [(SRSiriViewController *)self _activeConversation];
      v11 = [v10 identifier];
      v12 = [(SRSiriViewController *)self _punchoutMetricsAceCommandIdForItemWithIdentifier:v11];

      v9 = [(SRSiriViewController *)self _metricsContextForItemWithAceCommandId:v12];
    }
  }

  v13 = [NSString stringWithFormat:@"%.02f", *&a4];
  v14 = v13;
  if (v9)
  {
    v22[0] = @"metricsContext";
    v22[1] = @"duration";
    v23[0] = v9;
    v23[1] = v13;
    v15 = v23;
    v16 = v22;
    v17 = 2;
  }

  else
  {
    v20 = @"duration";
    v21 = v13;
    v15 = &v21;
    v16 = &v20;
    v17 = 1;
  }

  v18 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v19 = [(SRSiriViewController *)self _analytics];
  [v19 logEventWithType:1432 context:v18];
}

- (void)siriPresentation:(id)a3 didShowAceViewWithIdentifier:(id)a4 aceViewClass:(Class)a5 metricsContext:(id)a6 forInterval:(double)a7
{
  v11 = a4;
  v12 = a6;
  v13 = [(SRSiriViewController *)self _activeConversation];
  v14 = [v13 containsItemWithIdentifier:v11];

  if (v14)
  {
    v15 = [(SRSiriViewController *)self _activeConversation];
    v16 = [v15 itemWithIdentifier:v11];

    objc_initWeak(&location, self);
    v17 = dispatch_get_global_queue(0, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006DE68;
    v19[3] = &unk_100168560;
    v22[1] = a5;
    v20 = v12;
    v21 = v16;
    v22[2] = *&a7;
    v18 = v16;
    objc_copyWeak(v22, &location);
    dispatch_async(v17, v19);

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (void)siriPresentation:(id)a3 didShowTipWithIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6 flowID:(id)a7
{
  v20 = a5;
  v11 = a6;
  v12 = a7;
  v13 = a4;
  v14 = [(SRSiriViewController *)self _activeConversation];
  v15 = [v14 containsItemWithIdentifier:v13];

  if (v15)
  {
    v16 = +[CKKnowledgeStore defaultSynchedKnowledgeStore];
    v17 = [[CKPermanentEventStore alloc] initWithKnowledgeStore:v16];
    v18 = [NSString stringWithFormat:@"%@#%@", v12, @"TipOnScreen"];
    v19 = [[CKEvent alloc] initWithIdentifier:v18 startDate:v20 endDate:v11 metadata:0];
    [v17 recordEvent:v19 completionHandler:&stru_100168580];
  }
}

- (void)siriPresentation:(id)a3 didShowGuideStartTime:(id)a4 endTime:(id)a5
{
  v6 = a5;
  v7 = a4;
  v10 = +[CKKnowledgeStore defaultSynchedKnowledgeStore];
  v8 = [[CKPermanentEventStore alloc] initWithKnowledgeStore:v10];
  v9 = [[CKEvent alloc] initWithIdentifier:@"SiriGuideShown" startDate:v7 endDate:v6 metadata:0];

  [v8 recordEvent:v9 completionHandler:&stru_1001685A0];
}

- (void)handlePasscodeUnlockForSiriPresentation:(id)a3 withClient:(unint64_t)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = [(SRSiriViewController *)self _host];
  [v8 handlePasscodeUnlockWithClient:a4 withCompletion:v7];
}

- (void)siriPresentationMicButtonWasTapped:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceDidDetectMicButtonTap];
}

- (void)siriPresentationMicButtonLongPressBegan:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceDidDetectMicButtonLongPressBegan];
}

- (void)siriPresentationMicButtonLongPressEnded:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceDidDetectMicButtonLongPressEnded];
}

- (void)siriPresentation:(id)a3 didChangePeekMode:(unint64_t)a4
{
  if (a4 - 1 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4;
  }

  v5 = [(SRSiriViewController *)self _host];
  [v5 servicePresentationDidChangePeekMode:v4];
}

- (void)siriPresentation:(id)a3 didChangeVisualState:(unint64_t)a4
{
  v5 = [(SRSiriViewController *)self _host];
  [v5 servicePresentationDidChangeVisualState:a4];
}

- (void)siriPresentation:(id)a3 willChangeKeyboardVisibility:(BOOL)a4
{
  v4 = a4;
  v5 = [(SRSiriViewController *)self _host];
  [v5 serviceViewControllerWillChangeKeyboardVisibility:v4];
}

- (void)siriPresentation:(id)a3 requestsKeyboardWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _host];
  [v6 serviceViewControllerRequestsKeyboardWithCompletion:v5];
}

- (void)siriPresentation:(id)a3 willBeginEditingOfType:(int64_t)a4
{
  if (a4 == 1)
  {
    [(SRSiriViewController *)self _setUserUtteranceTapToEditInProgress:1];
  }

  v5 = [(SRSiriViewController *)self _host];
  [v5 serviceWillBeginEditing];
}

- (void)siriPresentationDidResignFirstResponder:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceDidEndEditing];
}

- (void)siriPresentationRequestsHIDEventDefferal:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceRequestsHIDEventDefferal];
}

- (void)siriPresentationCancelHIDEventDefferal:(id)a3
{
  v3 = [(SRSiriViewController *)self _host];
  [v3 serviceCancelHIDEventDefferal];
}

- (void)siriPresentation:(id)a3 requestsTouchPassThroughEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Disabling";
    if (v4)
    {
      v7 = @"Enabling";
    }

    v10 = 136315394;
    v11 = "[SRSiriViewController siriPresentation:requestsTouchPassThroughEnabled:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@ touch pass through on SRSiriViewController", &v10, 0x16u);
  }

  v8 = [(SRSiriViewController *)self view];
  v9 = [v8 layer];
  [v9 setHitTestsAsOpaque:!v4];
}

- (void)siriPresentation:(id)a3 didPresentIntentWithBundleId:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _host];
  [v6 servicePresentedIntentWithBundleId:v5];
}

- (void)siriPresentationClearContext:(id)a3
{
  v3 = [(SRSiriViewController *)self _session];
  [v3 clearContext];
}

- (id)siriPresentation:(id)a3 additionalSpeechInterpretationsForRefId:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v7 = [v6 additionalSpeechInterpretationsForRefId:v5];

  return v7;
}

- (id)siriPresentation:(id)a3 updatedUserUtteranceForRefId:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _activeConversation];
  v7 = [v6 updatedUserUtteranceForRefId:v5];

  return v7;
}

- (void)siriPresentationDidPresentConversationFromBreadcrumb:(id)a3
{
  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:+[UIKeyboard isInHardwareKeyboardMode]^ 1];
  v4 = [(SRSiriViewController *)self _host];
  [v4 serviceDidPresentConversationFromBreadcrumb];
}

- (BOOL)inTextInputModeForSiriPresentation:(id)a3
{
  v4 = [(SRSiriViewController *)self textInputEnabled];
  if (v4)
  {
    LOBYTE(v4) = !self->_requestActive || [(SASRequestOptions *)self->_requestOptions requestSource]!= 8 && (!SiriUIIsHTTForTextInputEnabled() || [(SASRequestOptions *)self->_requestOptions inputType]!= 2) || self->_keyboardInfo.keyboardHeight > 0.0;
  }

  return v4;
}

- (void)siriPresentationDidHideUnlockScreen:(id)a3
{
  v4 = +[UIKeyboard isInHardwareKeyboardMode]^ 1;

  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:v4];
}

- (void)siriPresentationWillSendStartRequest:(id)a3
{
  [(SRSiriViewController *)self _setStartRequestAceCommandSent:1];

  [(SRSiriViewController *)self _cancelSpeechSynthesis];
}

- (void)siriPresentationRequestsStartAttendingForNonSpeechRequest:(id)a3 deviceID:(id)a4
{
  v5 = a4;
  v6 = [(SRSiriViewController *)self _session];
  [v6 startAttendingWithDeviceID:v5];
}

- (id)localeForSiriPresentation:(id)a3
{
  v4 = [NSLocale alloc];
  v5 = [(SRSiriViewController *)self _language];
  v6 = [v5 spokenLanguageCode];
  v7 = [v4 initWithLocaleIdentifier:v6];

  return v7;
}

- (void)siriPresentationDidRequestRestartSpeechSynthesis:(id)a3
{
  previousSayItCommand = self->_previousSayItCommand;
  if (previousSayItCommand)
  {
    [(SRSiriViewController *)self siriSessionDidReceiveSayItCommand:previousSayItCommand completion:0];
  }
}

- (void)siriPresentationDidPresentDynamicSnippetWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _session];
  [v5 siriUIDidPresentDynamicSnippetWithInfo:v4];
}

- (void)siriPresentation:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SRSiriViewController siriPresentation:handleStartLocalRequest:turnIdentifier:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Handling startLocalRequest : %@", &v12, 0x16u);
  }

  v10 = mach_absolute_time();
  v11 = [(SRSiriViewController *)self _session];
  [v11 performAceCommand:v7 turnIdentifier:v8 machAbsoluteTime:v10];
}

- (void)_emitRenderingStarted
{
  v3 = objc_alloc_init(SISchemaUEIUIRenderingStarted);
  [v3 setExists:1];
  v4 = objc_alloc_init(SISchemaUEIUIRenderingContext);
  [v4 setStartedOrChanged:v3];
  v5 = [(SRSiriViewController *)self _instrumentationManager];
  [v5 emitInstrumentation:v4];

  self->_uiRenderSignpost = os_signpost_id_generate(AFSiriLogContextPerformance);
  v6 = AFSiriLogContextPerformance;
  v7 = v6;
  uiRenderSignpost = self->_uiRenderSignpost;
  if (uiRenderSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = 136315394;
    v10 = "SiriX";
    v11 = 2080;
    v12 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, uiRenderSignpost, "UIRenderTime", "%s %s", &v9, 0x16u);
  }
}

- (void)_emitRenderingEnded
{
  v3 = objc_alloc_init(SISchemaUEIUIRenderingEnded);
  [v3 setExists:1];
  v4 = objc_alloc_init(SISchemaUEIUIRenderingContext);
  [v4 setEnded:v3];
  v5 = [(SRSiriViewController *)self _instrumentationManager];
  [v5 emitInstrumentation:v4];

  v6 = AFSiriLogContextPerformance;
  v7 = v6;
  uiRenderSignpost = self->_uiRenderSignpost;
  if (uiRenderSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, uiRenderSignpost, "UIRenderTime", "", v9, 2u);
  }
}

- (void)siriPresentation:(id)a3 viewDidAppearWithAceObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 encodedClassName];
  v9 = [v6 aceId];
  [(SRSiriViewController *)self siriPresentation:v7 viewDidAppearWithClassDescriptor:v8 identifier:v9];

  v10 = [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement dialogPhaseForAceObject:v6];
  if (!v10)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[SRSiriViewController siriPresentation:viewDidAppearWithAceObject:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Dialog phase is unexpectedly nil for aceObject : %@", &v12, 0x16u);
    }
  }

  [(SRSiriViewController *)self _logAceObjectPresented:v6 dialogPhase:v10];
}

- (void)siriPresentation:(id)a3 viewDidAppearWithClassDescriptor:(id)a4 identifier:(id)a5
{
  v10 = a4;
  v7 = a5;
  [(SRSiriViewController *)self _emitRenderingEnded];
  v8 = +[NSMutableDictionary dictionary];
  if ([v10 length])
  {
    [v8 setObject:v10 forKeyedSubscript:@"viewClass"];
  }

  if ([v7 length])
  {
    [v8 setObject:v7 forKeyedSubscript:@"identifier"];
  }

  v9 = [(SRSiriViewController *)self _analytics];
  [v9 logEventWithType:1461 context:v8];
}

- (void)siriPresentation:(id)a3 viewDidDisappearWithClassDescriptor:(id)a4 identifier:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = +[NSMutableDictionary dictionary];
  if ([v10 length])
  {
    [v8 setObject:v10 forKeyedSubscript:@"viewClass"];
  }

  if ([v7 length])
  {
    [v8 setObject:v7 forKeyedSubscript:@"identifier"];
  }

  v9 = [(SRSiriViewController *)self _analytics];
  [v9 logEventWithType:1462 context:v8];
}

- (void)toggleHomeAffordanceHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SRSiriViewController *)self _host];
  [v4 toggleHomeAffordanceHidden:v3];
}

- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)a3
{
  v3 = a3;
  v4 = [(SRSiriViewController *)self _host];
  [v4 toggleSiriHomeAffordanceGestureControl:v3];
}

- (void)updateEdgeLightWindowLevel:(int64_t)a3
{
  v4 = [(SRSiriViewController *)self _host];
  [v4 updateEdgeLightWindowLevel:a3];
}

- (void)_insertUserUtteranceViewForText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v24 = self;
    v5 = objc_alloc_init(SASToken);
    [v5 setText:v4];
    v6 = objc_alloc_init(SASInterpretation);
    v28 = v5;
    v7 = [NSArray arrayWithObjects:&v28 count:1];
    [v6 setTokens:v7];

    v8 = objc_alloc_init(SASPhrase);
    v27 = v6;
    v9 = [NSArray arrayWithObjects:&v27 count:1];
    [v8 setInterpretations:v9];

    v10 = objc_alloc_init(SASRecognition);
    v26 = v8;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    [v10 setPhrases:v11];

    v12 = objc_alloc_init(SASSpeechRecognized);
    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    [v12 setAceId:v14];

    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];
    [v12 setRefId:v16];

    [v12 setTitle:v4];
    [v12 setRecognition:v10];
    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];
    [v12 setSessionId:v18];

    v19 = objc_alloc_init(SASSpeechPartialResult);
    v25 = v5;
    v20 = [NSArray arrayWithObjects:&v25 count:1];
    [v19 setTokens:v20];

    v21 = +[NSUUID UUID];
    v22 = [v21 UUIDString];
    [v19 setAceId:v22];

    v23 = [v12 refId];
    [v19 setRefId:v23];

    [(SRSiriViewController *)v24 siriSessionDidReceiveSpeechPartialResultCommand:v19];
    [(SRSiriViewController *)v24 siriSessionDidReceiveSpeechRecognizedCommand:v12];
  }
}

- (void)_insertUserUtteranceViewForSuggestion:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_alloc_init(SASToken);
    [v4 setText:v3];
    v5 = objc_alloc_init(SASInterpretation);
    v25 = v4;
    v29 = v4;
    v6 = [NSArray arrayWithObjects:&v29 count:1];
    [v5 setTokens:v6];

    v7 = objc_alloc_init(SASPhrase);
    v28 = v5;
    v8 = [NSArray arrayWithObjects:&v28 count:1];
    [v7 setInterpretations:v8];

    v9 = objc_alloc_init(SASRecognition);
    v27 = v7;
    v10 = [NSArray arrayWithObjects:&v27 count:1];
    [v9 setPhrases:v10];

    v11 = objc_alloc_init(SASSpeechRecognized);
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    [v11 setAceId:v13];

    v14 = +[NSUUID UUID];
    v15 = [v14 UUIDString];
    [v11 setRefId:v15];

    [v11 setTitle:v3];
    [v11 setRecognition:v9];
    v16 = +[NSUUID UUID];
    v17 = [v16 UUIDString];
    [v11 setSessionId:v17];

    v18 = [v11 recognition];
    v19 = [v11 refId];
    v20 = [v11 sessionId];
    v21 = [v18 af_userUtteranceValueWithRefId:v19 sessionId:v20];

    v22 = [[SRUIFSpeechRecognitionHypothesis alloc] initWithUserUtterance:v21 backingAceObject:0 isFinal:1];
    v23 = [(SRSiriViewController *)self _presentation];
    LOBYTE(v4) = objc_opt_respondsToSelector();

    if (v4)
    {
      v24 = [(SRSiriViewController *)self _presentation];
      [v24 updateSpeechRecognitionHypothesisForSuggestion:v22];

      [(SRSiriViewController *)self siriSessionDidReceiveSpeechRecognizedCommand:v11];
    }
  }
}

- (void)siriSessionRequestsReadoutOfBulletin:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #cmas #carPlay %@", buf, 0x16u);
  }

  if (v6)
  {
    v16 = v7;
    [(SRSiriViewController *)self _setReadingBulletinContentInCarPlayOutsideOfSiriSession:1];
    v9 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    objc_initWeak(&location, self);
    v10 = [v6 title];
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315394;
      v33 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #cmas #carPlay Title of emergency bulletin to speak: %@", v32, 0x16u);
    }

    v12 = [v10 length];
    if (v12)
    {
      dispatch_group_enter(v9);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10006FFE4;
      v26[3] = &unk_1001683B8;
      v28 = buf;
      objc_copyWeak(&v29, &location);
      v27 = v9;
      [(SRSiriViewController *)self _synthesizeText:v10 identifier:0 sessionId:0 completion:v26];

      objc_destroyWeak(&v29);
    }

    v13 = [v6 message];
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315394;
      v33 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s #cmas #carPlay Message of emergency bulletin to speak: %@", v32, 0x16u);
    }

    if ([v13 length])
    {
      dispatch_group_enter(v9);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10007005C;
      v22[3] = &unk_1001683B8;
      v24 = v31;
      objc_copyWeak(&v25, &location);
      v23 = v9;
      [(SRSiriViewController *)self _synthesizeText:v13 identifier:0 sessionId:0 completion:v22];

      objc_destroyWeak(&v25);
    }

    else if (!v12)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CDE8C();
      }

      v16[2](v16, 4);
      goto LABEL_16;
    }

    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315138;
      v33 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s #cmas #carPlay Waiting for synthesis to complete", v32, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000700D4;
    block[3] = &unk_1001685E8;
    objc_copyWeak(&v21, &location);
    v19 = buf;
    v20 = v31;
    block[4] = self;
    v18 = v16;
    dispatch_group_notify(v9, &_dispatch_main_q, block);

    objc_destroyWeak(&v21);
LABEL_16:

    objc_destroyWeak(&location);
    _Block_object_dispose(v31, 8);
    _Block_object_dispose(buf, 8);

    v7 = v16;
  }
}

- (unint64_t)_readoutResultFromTTSResult:(int64_t)a3 error:(id)a4
{
  v5 = a4;
  if (a3 == 1 && [SRUIFSpeechSynthesisUtility isSpeechSynthesisErrorUserCancelled:v5])
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[SRSiriViewController _readoutResultFromTTSResult:error:]";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #cmas #carPlay received a user cancelled voice services error, setting state to AFUIBulletinReadoutResultSynthesisCancelled. %@", &v8, 0x16u);
    }

    a3 = 3;
  }

  else
  {
    if (v5 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDF8C();
    }

    if ((a3 - 1) >= 3)
    {
      a3 = 0;
    }
  }

  return a3;
}

- (unint64_t)_readoutResultFromTitleResult:(unint64_t)a3 messageResult:(unint64_t)a4
{
  result = 2;
  if (a3 != 2 && a4 != 2)
  {
    result = 3;
    if (a3 != 3 && a4 != 3)
    {
      if (a3 == 1 && !a4 || a3 <= 1 && a4 == 1)
      {
        return 1;
      }

      else
      {
        v6 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE008(v6, a3);
        }

        return 0;
      }
    }
  }

  return result;
}

- (void)_setRequestOptions:(id)a3
{
  objc_storeStrong(&self->_requestOptions, a3);

  [(SRSiriViewController *)self _activeRequestOptionsDidChange];
}

- (void)setRequestOptions:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[SRSiriViewController setRequestOptions:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v11, 0x16u);
  }

  [(SRSiriViewController *)self _setRequestOptions:v4];
  [(SRModeProvider *)self->_modeProvider setRequestOptions:v4];
  if ([v4 isInitialBringUp])
  {
    [(SRSiriViewController *)self _setAcousticIdAllowed:1];
  }

  v6 = [v4 testingContext];
  testingContext = self->_testingContext;
  self->_testingContext = v6;

  v8 = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSiriViewController *)self _presentation];
    [v10 configureForRequestOptions:v4];
  }
}

- (void)_startRequestWithOptions:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SRSiriViewController _startRequestWithOptions:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v6 = [(SRSiriViewController *)self _instrumentationManager];
  v7 = [v6 currentInstrumentationTurnContext];
  v8 = [v7 turnIdentifier];

  if (v8)
  {
    [v4 setPreviousTurnIdentifier:v8];
  }

  [(SRSiriViewController *)self _setWaitingForStartRequest:1];
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {
    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }

  v9 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100168608];
  [v9 serviceStartRequestWithOptions:v4];
}

- (void)siriSessionDidStartAcousticIDRequest
{
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SRSiriViewController *)self _presentation];
    [v5 acousticIDRequestDidStart];
  }
}

- (void)siriSessionDidFinishAcousticIDRequestWithSuccess:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRSiriViewController *)self _presentation];
    [v7 acousticIDRequestDidFinishWithSuccess:v3];
  }
}

- (void)siriSessionRequestedCancelPhotoSelectionWithAnimation:(BOOL)a3
{
  phPicker = self->_phPicker;
  if (phPicker)
  {
    [(SiriSharedUIPhPicker *)phPicker dismissPhotoPickerIfExistsWithAnimation:a3];
  }
}

- (void)siriSessionRequestedPhotoSelectionWithPhotoPickerRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  phPicker = self->_phPicker;
  if (!phPicker)
  {
    v9 = objc_alloc_init(SiriSharedUIPhPicker);
    v10 = self->_phPicker;
    self->_phPicker = v9;

    phPicker = self->_phPicker;
  }

  v11 = [(SRSiriViewController *)self _presentationViewController];
  v12 = [v6 searchQuery];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100070AF4;
  v14[3] = &unk_100168630;
  v15 = v7;
  v13 = v7;
  [(SiriSharedUIPhPicker *)phPicker presentPhotoPicker:v11 withSearchString:v12 withSelectionLimit:0 completion:v14];
}

- (void)preloadPresentationBundleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SRSiriPresentationPluginHost sharedSiriPresentationPluginHost];
  [v4 preloadPresentationBundleWithIdentifier:v3];
}

- (id)_dialogPhaseForItemAtIndexPath:(id)a3
{
  v3 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:a3];
  v4 = [v3 dialogPhase];

  return v4;
}

- (void)_performGenericAceCommand:(id)a3 turnIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = mach_absolute_time();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _performSayItCommand:v8];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _cancelCurrentTTS:v8];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _cancelCurrentAudioMessagePlayback:v8];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v11;
  if (self->_previousSayItCommand)
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      previousSayItCommand = self->_previousSayItCommand;
      v17 = 136315650;
      v18 = "[SRSiriViewController _performGenericAceCommand:turnIdentifier:completion:]";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = previousSayItCommand;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #tts recording _previousSayItCommand completed before processing ace command=%@, previousSayItCommand=%@", &v17, 0x20u);
    }

    [(SRSiriViewController *)self _didCompleteActionForAceCommand:self->_previousSayItCommand success:1];
    v15 = self->_previousSayItCommand;
    self->_previousSayItCommand = 0;
  }

  v16 = [(SRSiriViewController *)self _session];
  [v16 performAceCommand:v8 turnIdentifier:v9 machAbsoluteTime:v12];

  if (v10)
  {
LABEL_15:
    v10[2](v10, 1);
  }

LABEL_16:
}

- (void)_performStartRequest:(id)a3 turnIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 inputOrigin];
    v12 = SASRequestSourceFromSAInputOrigin();

    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[SRSiriViewController _performStartRequest:turnIdentifier:completion:]";
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s SAStartLocalRequest set requestSource: %ld", &v21, 0x16u);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = [SASRequestOptions alloc];
  v15 = [(SRSiriViewController *)self _uiPresentationIdentifier];
  v16 = [v14 initWithRequestSource:v12 uiPresentationIdentifier:v15];

  v17 = [(SRSiriViewController *)self _requestOptions];
  [v16 setIsForBluetoothCar:{objc_msgSend(v17, "isForBluetoothCar")}];

  v18 = [(SRSiriViewController *)self _requestOptions];
  v19 = [v18 originalRequestOptions];
  if (v19)
  {
    [v16 setOriginalRequestOptions:v19];
  }

  else
  {
    v20 = [(SRSiriViewController *)self _requestOptions];
    [v16 setOriginalRequestOptions:v20];
  }

  [v16 setStartRecordingSoundId:self->_startRecordingSoundId];
  [(SRSiriViewController *)self setRequestOptions:v16];
  [(SRSiriViewController *)self siriWillActivateFromSource:v12];
  [(SRSiriViewController *)self _performGenericAceCommand:v8 turnIdentifier:v10 completion:v9];

  [(SRSiriViewController *)self siriDidActivateFromSource:v12];
}

- (void)_performSayItCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v4 message];
  v30 = 0;
  v31 = 0;
  v28 = v5;
  v27 = [(SRSiriViewController *)self _configuredSpeakableUtteranceParserForCommand:v4 context:v5 speakableText:v6 subCompletion:0 speakPreparation:&v31 speakCompletion:&v30];
  v29 = v31;
  v7 = v30;

  if (!self->_listenAfterSpeakingForRequestFinished)
  {
    v8 = [v4 listenAfterSpeaking];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:1];
      v10 = [v4 listenAfterSpeakingBehavior];
      v11 = [v10 startAlertSoundID];
      startRecordingSoundId = self->_startRecordingSoundId;
      self->_startRecordingSoundId = v11;
    }
  }

  [(SRSiriViewController *)self _didStartActionForAceCommand:v4];
  v13 = [v4 voiceName];

  if (v13)
  {
    v14 = objc_alloc_init(SAVoice);
    v15 = [v4 voiceName];
    [v14 setName:v15];

    v16 = [v4 languageCode];
    v26 = v14;
    [v14 setLanguageString:v16];
  }

  else
  {
    v26 = 0;
  }

  v17 = [v4 message];
  v18 = [v4 audioData];
  v19 = [v4 sruif_ignoresMuteSwitch];
  v20 = [v4 aceId];
  v21 = [v4 refId];
  v22 = [v4 languageCode];
  v23 = [v4 gender];
  BYTE2(v25) = [v4 canUseServerTTS];
  LOWORD(v25) = 0;
  [SRSiriViewController _speakText:"_speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:" audioData:v17 ignoreMuteSwitch:v18 identifier:v19 sessionId:v20 preferredVoice:v21 language:v26 gender:0.0 promptStyle:v22 provisionally:v23 eligibleAfterDuration:0 delayed:v25 canUseServerTTS:v27 speakableUtteranceParser:0 analyticsContext:0 speakableContextInfo:v29 preparation:v7 completion:?];

  v24 = [v4 message];
  [(SRSiriViewController *)self _logAceObjectSpoken:v4 dialogPhase:0 speakableText:v24];
}

- (void)_cancelCurrentAudioMessagePlayback:(id)a3
{
  v4 = [(SRSiriViewController *)self _audioMessagePlayer];
  [v4 stopPlaying];

  v7 = [(SRSiriViewController *)self _audioMessagePlayer];
  v5 = [(SRSiriViewController *)self _audioMessagePlayer];
  v6 = [v5 playbackCommand];
  [(SRSiriViewController *)self audioPlayer:v7 didFinishPlayback:v6];
}

- (void)_performAppPunchOutCommand:(id)a3 conversationItemIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 bundleId];
  if (v11)
  {

LABEL_4:
    v13 = [v8 refId];
    if (!v13)
    {
      v13 = [(SRSiriViewController *)self _punchoutMetricsAceCommandIdForItemWithIdentifier:v9];
      if (!v13)
      {
        v13 = [v8 aceId];
      }
    }

    v14 = v13;
    v15 = [v8 bundleId];
    v16 = [NSString stringWithFormat:@"%@-%@", v14, v15];

    v17 = [(SRSiriViewController *)self _completedCommandAppPunchOutIds];
    LOBYTE(v15) = [v17 containsObject:v16];

    if (v15)
    {
      goto LABEL_34;
    }

    v38 = v9;
    v18 = [(SRSiriViewController *)self _completedCommandAppPunchOutIds];
    [v18 addObject:v16];

    v19 = [v8 launchOptions];
    v20 = [NSMutableArray arrayWithArray:v19];

    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CE150();
    }

    if (AFIsPersistentSiriAvailable() && [(SASRequestOptions *)self->_requestOptions inputType]!= 1)
    {
      v21 = SAUIAppPunchOutLaunchOptionsRetainSiriValue;
    }

    else
    {
      v21 = SAUIAppPunchOutLaunchOptionsRetainSiriValue;
      [v20 removeObject:SAUIAppPunchOutLaunchOptionsRetainSiriValue];
      [v20 removeObject:SAUIAppPunchOutLaunchOptionsRemoveResponseUIValue];
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CE1CC();
      }
    }

    v37 = [v20 containsObject:v21];
    if (v37)
    {
      [v20 containsObject:SAUIAppPunchOutLaunchOptionsRemoveResponseUIValue];
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CE2C8();
      }

      if ([v20 containsObject:SAUIAppPunchOutLaunchOptionsClearContextValue])
      {
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CE35C();
        }

        v22 = 1;
        goto LABEL_28;
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CE248();
    }

    v22 = 0;
LABEL_28:
    objc_initWeak(location, self);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000719FC;
    v49[3] = &unk_100168658;
    objc_copyWeak(&v55, location);
    v23 = v20;
    v50 = v23;
    v51 = v14;
    v24 = v8;
    v56 = v22;
    v52 = v24;
    v53 = self;
    v25 = v10;
    v54 = v25;
    v39 = objc_retainBlock(v49);
    v26 = [v24 alternativePunchOut];

    if (v26)
    {
      v27 = [v24 alternativePunchOut];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100071BA8;
      v47[3] = &unk_1001674E0;
      v48 = v25;
      [(SRSiriViewController *)self _performGenericAceCommand:v27 turnIdentifier:0 completion:v47];
      v28 = &v48;
    }

    else
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100071BC4;
      v44[3] = &unk_100168680;
      v29 = v24;
      v45 = v29;
      v30 = v39;
      v46 = v30;
      v36 = [(SRSiriViewController *)self _hostWithErrorHandler:v44];
      v31 = [(SRSiriViewController *)self _presentation];
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        v33 = [(SRSiriViewController *)self _presentation];
        [v33 siriWillPunchOutWithOptions:v23];
      }

      v34 = [v29 punchOutUri];
      v35 = [v29 bundleId];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100071C40;
      v40[3] = &unk_1001686F8;
      v42 = v30;
      v41 = v29;
      objc_copyWeak(&v43, location);
      [v36 openURL:v34 bundleId:v35 inPlace:v37 launchOptions:0 completion:v40];
      v28 = &v45;

      objc_destroyWeak(&v43);
      v27 = v46;
    }

    v9 = v38;

    objc_destroyWeak(&v55);
    objc_destroyWeak(location);

LABEL_34:
    goto LABEL_35;
  }

  v12 = [v8 punchOutUri];

  if (v12)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE3DC();
    if (!v10)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:
    (*(v10 + 2))(v10, 0, 0);
  }

LABEL_35:
}

- (void)_performContinueOnDeviceCommand:(id)a3 completion:(id)a4
{
  v6 = a4;
  continueOnHandler = self->_continueOnHandler;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100072070;
  v9[3] = &unk_100167FA0;
  v10 = v6;
  v8 = v6;
  [(ContinueOnCommandHandler *)continueOnHandler handle:a3 completionHandler:v9];
}

- (void)_scheduleIdleTimer
{
  [(SRSiriViewController *)self _cancelIdleTimer];
  v3 = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  v5 = 5.0;
  if (v4)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    [v6 idleTimerInterval];
    v5 = v7;
  }

  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SRSiriViewController _scheduleIdleTimer]";
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #idleTimer idleTimerInterval=%f seconds", &v10, 0x16u);
  }

  v9 = [NSTimer scheduledTimerWithTimeInterval:self target:"_idleTimerFired:" selector:0 userInfo:0 repeats:v5];
  [(SRSiriViewController *)self _setIdleTimer:v9];
}

- (void)_idleTimerFired:(id)a3
{
  v4 = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRSiriViewController *)self _presentation];
    v7 = [v6 shouldDismissForIdling];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SRSiriViewController *)self _isIdleTimerEnabled];
  v9 = [(SRSiriViewController *)self _isSiriIdleAndQuiet];
  v10 = [(SRSiriViewController *)self _presentation];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SRSiriViewController *)self _presentation];
    v13 = [v12 isPresentingUIFromRemoteDevice];
  }

  else
  {
    v13 = 0;
  }

  v14 = AFSiriLogContextConnection;
  v15 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if ((v7 & v8 & (v9 | v13)) == 1)
  {
    if (v15)
    {
      v19 = 136315138;
      v20 = "[SRSiriViewController _idleTimerFired:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #idleTimer Dismissing Siri", &v19, 0xCu);
    }

    [(SRSiriViewController *)self _cancelIdleTimer];
    v16 = [(SRSiriViewController *)self _presentation];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(SRSiriViewController *)self _presentation];
      [v18 siriWillDismissWithReason:1 completion:0];
    }

    [(SRSiriViewController *)self _dismissWithReason:4];
  }

  else
  {
    if (v15)
    {
      v19 = 136316162;
      v20 = "[SRSiriViewController _idleTimerFired:]";
      v21 = 1024;
      v22 = v7;
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #idleTimer Not dismissing Siri - readyToDismiss:%d idleAndQuiet:%d idleTimerEnabled:%d isPresentingUIFromRemoteDevice:%d", &v19, 0x24u);
    }

    [(SRSiriViewController *)self _rescheduleIdleTimerIfNeeded];
  }
}

- (void)_checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:(id)a3
{
  v8 = a3;
  v4 = [(SRSiriViewController *)self _isSiriIdleAndQuiet];
  v5 = [(SRSiriViewController *)self _wasSiriIdleAndQuiet];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(SRSiriViewController *)self _setWasSiriIdleAndQuiet:v6];
  if (v5 != v6)
  {
    v7 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100168718];
    [v7 siriIdleAndQuietStatusDidChange:v4];

    [(SRSiriViewController *)self _scheduleInterruptedAudioResumingIfNeeded];
    if (v8)
    {
      v8[2](v8, v4);
    }
  }
}

- (void)_scheduleAudioResumptionAfterDelayInSec:(double)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SRSiriViewController _scheduleAudioResumptionAfterDelayInSec:]";
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Scheduling interrupted audio to be resumed in %lf seconds", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072710;
  block[3] = &unk_1001676A0;
  objc_copyWeak(&v8, buf);
  dispatch_after(v6, &_dispatch_main_q, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (BOOL)_resumesInterruptedAudioPlaybackForAttendingState:(BOOL)a3
{
  v3 = a3;
  v4 = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 shouldResumeInterruptedAudioPlaybackForAttendingState:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleRequestError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE68C();
    }

    v8 = [SRErrorUtility userStringForError:v6 modeProvider:self->_modeProvider reflectionDialogWasPlayed:[(SRSiriViewController *)self _reflectionDialogHasBeenPlayed]];
    v9 = [(SRSiriViewController *)self _instrumentationManager];
    [v9 emitRequestFailedWithError:v6];

    v10 = [v6 domain];
    if ([v10 isEqualToString:kAFAssistantErrorDomain])
    {
      v11 = [v6 code];

      if (v11 == 6)
      {
        v12 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "[SRSiriViewController _handleRequestError:completion:]";
          v18 = 2114;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #errorHandling handling kAFErrorNotReady: %{public}@ locally", buf, 0x16u);
        }

        [(SRSiriViewController *)self _displayNotReadyError:v7];
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (v8)
    {
      [(SRSiriViewController *)self _addErrorUtterance:v8];
      if (![(SRSiriViewController *)self _suppressTTSForErrorsAndInterstitials])
      {
        v13 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "[SRSiriViewController _handleRequestError:completion:]";
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #errorHandling speaking error TTS with error string: '%@'", buf, 0x16u);
        }

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100072B80;
        v14[3] = &unk_100168018;
        v15 = v7;
        [(SRSiriViewController *)self _synthesizeText:v8 identifier:0 sessionId:0 completion:v14];

        goto LABEL_20;
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE708();
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (!v7)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    (*(v7 + 2))(v7, v8 != 0);
    goto LABEL_20;
  }

  +[SRErrorUtility resetErrorState];
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

LABEL_21:
}

- (void)_displayNotReadyError:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 assistantUILocalizedStringForKey:@"ASSISTANT_NOT_READY_TITLE" table:0];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 assistantUILocalizedStringForKey:@"ASSISTANT_NOT_READY_MESSAGE" table:0];

  [(SRSiriViewController *)self _addErrorUtterance:v6];
  [(SRSiriViewController *)self _addErrorUtterance:v8];
  [(SRSiriViewController *)self _synthesizeText:v6 identifier:0 sessionId:0 completion:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100072D04;
  v10[3] = &unk_100168018;
  v11 = v4;
  v9 = v4;
  [(SRSiriViewController *)self _synthesizeText:v8 identifier:0 sessionId:0 completion:v10];
}

- (id)_searchAddViewsForSpokenHintsView:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a3 views];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = SAAceViewUIItemTypeItemTypeHintValue;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 itemType];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          v13 = v9;

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SRSiriViewController _searchAddViewsForSpokenHintsView:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #suggestions No hints SAAceView in the SAUIAddViews.", buf, 0xCu);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)_enqueueSpokenSuggestionsFromAddViews:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _searchAddViewsForSpokenHintsView:v4];
  if (v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SRSiriViewController _enqueueSpokenSuggestionsFromAddViews:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #suggestions We found a hints SAAceView in the SAUIAddViews. Querying SiriSuggestions for potential spoken hints.", buf, 0xCu);
    }

    [(SRUIFAceCommandRecords *)self->_aceCommandRecords recordActionStartedForAceCommand:v4];
    objc_initWeak(buf, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100073074;
    v7[3] = &unk_100168768;
    objc_copyWeak(&v9, buf);
    v8 = v4;
    [_TtC4Siri31SiriUISpokenSuggestionsProvider fetchTopSpokenSuggestionFrom:v8 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)_speakEnqueuedSpokenSuggestion
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SRSiriViewController _speakEnqueuedSpokenSuggestion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #suggestions Request TTS finished. Calling exposure callback and speaking hint TTS.", buf, 0xCu);
  }

  v4 = self->_enqueuedSuggestion;
  enqueuedSuggestion = self->_enqueuedSuggestion;
  self->_enqueuedSuggestion = 0;

  [(SiriUISuggestion *)v4 siriDidSpeakHint];
  objc_initWeak(buf, self);
  v6 = [(SiriUISuggestion *)v4 spokenText];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073380;
  v8[3] = &unk_100168390;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [(SRSiriViewController *)self _synthesizeText:v6 identifier:0 sessionId:0 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_logRevealSpeechCommandReceived:(id)a3
{
  v4 = [a3 recognition];
  v5 = [v4 utterances];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v16 + 1) + 8 * i) confidenceScore];
        v10 = v10 + v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  if ([v6 count])
  {
    v10 = v10 / [v6 count];
  }

  v20 = @"confidenceScore";
  v13 = [NSNumber numberWithDouble:v10, v16];
  v21 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v15 = [(SRSiriViewController *)self _analytics];
  [v15 logEventWithType:1459 context:v14];
}

- (void)_addErrorUtterance:(id)a3
{
  v4 = a3;
  v11 = +[NSMutableArray array];
  v5 = objc_alloc_init(SAUIAddViews);
  [v5 setDialogPhase:SAUIDialogPhaseErrorValue];
  v6 = objc_alloc_init(SAUIAssistantUtteranceView);
  [v6 setText:v4];

  [v11 addObject:v6];
  [v5 setViews:v11];
  v7 = [v5 dictionary];
  v8 = [AceObject aceObjectWithDictionary:v7];

  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  [v8 setAceId:v10];

  [(SRSiriViewController *)self _performGenericAceCommand:v8 turnIdentifier:0 completion:0];
}

- (void)_audioSessionRouteDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
  v6 = [v5 unsignedIntegerValue];

  if (v6 == 2)
  {

    [(SRSiriViewController *)self _cancelSpeechSynthesis];
  }
}

- (void)_fetchAttendingState:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _session];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073974;
  v7[3] = &unk_1001674E0;
  v8 = v4;
  v6 = v4;
  [v5 fetchAttendingState:v7];
}

- (void)_notifyPromptedUserForInput
{
  v2 = [(SRSiriViewController *)self _session];
  [v2 promptedUserForInput];
}

- (id)_punchoutMetricsAceCommandIdForItemWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (-[SRSiriViewController _activeConversation](self, "_activeConversation"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsItemWithIdentifier:v4], v5, v6) && (-[SRSiriViewController _activeConversation](self, "_activeConversation"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "itemWithIdentifier:", v4), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    while (1)
    {
      v9 = [v8 aceCommandIdentifier];
      if (v9)
      {
        break;
      }

      v10 = [(SRSiriViewController *)self _activeConversation];
      v11 = [v8 identifier];
      v12 = [v10 parentOfItemWithIdentifier:v11];

      v8 = v12;
      if (!v12)
      {
        v13 = 0;
        goto LABEL_12;
      }
    }

    v13 = v9;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_metricsContextForItemWithAceCommandId:(id)a3
{
  v4 = a3;
  v5 = [(SRSiriViewController *)self _aceCommandRecords];
  v6 = [v5 aceCommandWithIdentifier:v4];

  if (v6)
  {
    v7 = [v6 refId];

    v8 = 0;
    if (v4 && v7)
    {
      v15[0] = @"i";
      v9 = [v6 refId];
      v15[1] = @"a";
      v16[0] = v9;
      v16[1] = v4;
      v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

      v14 = 0;
      v11 = [NSJSONSerialization dataWithJSONObject:v10 options:0 error:&v14];
      v12 = v14;
      if (v11)
      {
        v8 = [[NSString alloc] initWithData:v11 encoding:4];
      }

      else
      {
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE784();
        }

        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_logAceObjectPresented:(id)a3 dialogPhase:(id)a4
{
  v17 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(SRSiriViewController *)self _instrumentationManager];
    v8 = [v17 aceId];
    [v7 emitPartialSpeechTranscriptionEventForAceObjectWithIdentifier:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(SRSiriViewController *)self _instrumentationManager];
      v8 = [v17 aceId];
      [v7 emitFinalSpeechTranscriptionEventForAceObjectWithIdentifier:v8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [(SRSiriViewController *)self _instrumentationPresentationForPresentationOptions:[(SRSiriViewController *)self _presentationOptions]];
        analyticsSupplement = self->_analyticsSupplement;
        v11 = [v17 refId];
        v12 = [(SRUIFAnalyticsSupplement *)analyticsSupplement computedModeForRefId:v11];

        v13 = [(SRSiriViewController *)self _presentation];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = [(SRSiriViewController *)self _presentation];
          v16 = [v15 viewRegionForPresentedAceObject:v17];
        }

        else
        {
          v16 = 0;
        }

        v7 = [(SRSiriViewController *)self _instrumentationManager];
        [v7 emitUUFRShownForAceObject:v17 presentationType:v9 dialogPhase:v6 mode:v12 viewRegion:v16];
        goto LABEL_8;
      }

      v7 = [(SRSiriViewController *)self _instrumentationManager];
      v8 = [v17 aceId];
      [v7 emitRevealSpeechTranscriptionEventForAceObjectWithIdentifier:v8];
    }
  }

LABEL_8:
}

- (void)_logAceObjectSpoken:(id)a3 dialogPhase:(id)a4 speakableText:(id)a5 dialogIdentifierOverride:(id)a6
{
  v21 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(SRSiriViewController *)self _instrumentationPresentationForPresentationOptions:[(SRSiriViewController *)self _presentationOptions]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v21;
    if (_os_feature_enabled_impl())
    {
      if (![MDDialogTransformer supportsTransformationForAceCommand:v14])
      {
        goto LABEL_8;
      }
    }

    else if (![SRModeDialogTransformer supportsTransformationForAceCommand:v14])
    {
LABEL_8:
      v16 = [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement computedModeForAceCommand:v14];
      goto LABEL_9;
    }

    analyticsSupplement = self->_analyticsSupplement;
    v18 = [v14 refId];
    v19 = [(SRUIFAnalyticsSupplement *)analyticsSupplement computedModeForRefId:v18];

    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v15 = self->_analyticsSupplement;
  v14 = [v21 refId];
  v16 = [(SRUIFAnalyticsSupplement *)v15 computedModeForRefId:v14];
LABEL_9:
  v19 = v16;
LABEL_10:

  v20 = [(SRSiriViewController *)self _instrumentationManager];
  [v20 emitUUFRSpokenForAceObject:v21 presentationType:v13 dialogPhase:v12 mode:v19 speakableText:v11 dialogIdentifierOverride:v10];
}

- (int)_instrumentationResponseModeForMode:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1000F6AA0[a3];
  }
}

- (int)_mapSiriTransitionState:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1000F6A08[a3];
  }
}

- (int)_instrumentationPresentationForPresentationOptions:(int64_t)a3
{
  v4 = [(SRSiriViewController *)self traitCollection];
  v5 = [v4 isAmbientPresented];

  if (v5)
  {
    return 7;
  }

  if (a3 > 8)
  {
    return 0;
  }

  return dword_1000F6A1C[a3];
}

- (unint64_t)_MDModeToSRModeConverter:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 1;
  }

  else
  {
    return qword_1000F6A40[a3];
  }
}

- (unint64_t)_SRModeToMDModeConverter:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 != 0;
  }
}

- (unint64_t)_responseModeToMDModeConverter:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"displayonly"])
  {
    v4 = 2;
  }

  else
  {
    if (([v3 isEqualToString:@"displayforward"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"voiceonly"])
      {
        v4 = 0;
        goto LABEL_9;
      }

      if ([v3 isEqualToString:@"voiceforward"])
      {
        v4 = 3;
        goto LABEL_9;
      }

      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[SRSiriViewController _responseModeToMDModeConverter:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #modes Incompatible ResponseMode sent via addViews. Defaulting to DisplayForward", &v7, 0xCu);
      }
    }

    v4 = 1;
  }

LABEL_9:

  return v4;
}

- (BOOL)_suppressTTSForErrorsAndInterstitials
{
  v3 = [(SRSiriViewController *)self _requestOptions];
  v4 = [v3 requestInfo];
  v5 = [v4 activationEvent];

  v6 = [(SRSiriViewController *)self _requestOptions];
  if ([v6 requestSource] == 27 || v5 == 6)
  {
  }

  else
  {

    if (v5 != 9)
    {
      modeProvider = self->_modeProvider;

      return [(SRModeProvider *)modeProvider displayOnlyModeForInterstitialsAndErrors];
    }
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SRSiriViewController _suppressTTSForErrorsAndInterstitials]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #errorHandling suppressing interstitial and error TTS for spoken messages", &v10, 0xCu);
  }

  return 1;
}

- (void)_setListenAfterSpeakingForRequestFinished:(BOOL)a3
{
  self->_listenAfterSpeakingForRequestFinished = a3;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    listenAfterSpeakingForRequestFinished = self->_listenAfterSpeakingForRequestFinished;
    v6 = 136315394;
    v7 = "[SRSiriViewController _setListenAfterSpeakingForRequestFinished:]";
    v8 = 1024;
    v9 = listenAfterSpeakingForRequestFinished;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s listenAfterSpeaking - %d", &v6, 0x12u);
  }
}

- (void)_sharePatternIdFromAddViewsCommand:(id)a3
{
  v3 = a3;
  v4 = [v3 patternId];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 views];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v3 patternId];
            v13 = [v11 viewId];

            [VRXVisualResponseProvider setPatternId:v12 forViewId:v13];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)_logPatternExecutedEventForAddViewsCommand:(id)a3
{
  v16 = a3;
  v4 = [v16 patternId];
  if (v4 || [(NSString *)self->_responseViewId length])
  {
    v5 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
    v6 = [v5 isSiriDetached];

    if ((v6 & 1) == 0)
    {
      v7 = [VRXPatternExecutedInstrumentationEvent alloc];
      v8 = [v16 patternId];
      v9 = [v16 patternType];
      responseViewId = self->_responseViewId;
      v11 = [v16 responseMode];
      v12 = [v7 initWithPatternId:v8 patternType:v9 responseViewId:responseViewId responseMode:v11];

      v13 = [(SRSiriViewController *)self _instrumentationManager];
      v14 = [v13 currentInstrumentationTurnContext];
      v15 = [v14 turnIdentifier];

      [v12 emitWithTurnIdentifier:v15];
    }
  }
}

- (int64_t)_viewModeFromPresentationOptions:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 7;
  }

  else
  {
    return qword_1000F6A60[a3 - 1];
  }
}

- (void)_ensurePresentationForReplay
{
  if (!self->_presentation)
  {
    v3 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
    [v3 setIsSiriDetached];

    v4 = [[SRSystemAssistantExperiencePresentation alloc] initWithDelegate:self dataSource:self];
    presentation = self->_presentation;
    self->_presentation = v4;

    v20 = [(SiriUIPresentation *)self->_presentation viewController];
    [(SRSiriViewController *)self addChildViewController:v20];
    v6 = [(SRSiriViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v20 view];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(SRSiriViewController *)self view];
    v17 = [v20 view];
    [v16 addSubview:v17];

    [v20 didMoveToParentViewController:self];
    v18 = [(SRSiriViewController *)self view];
    [v18 setNeedsLayout];

    v19 = [(SRSiriViewController *)self view];
    [v19 layoutIfNeeded];
  }
}

- (void)_registerReplyCallbackWithOverrideEnabled:(BOOL)a3
{
  objc_initWeak(&location, self);
  if (a3 || (+[SiriSharedUIReplayUtilityWrapper sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100074B38;
    v5[3] = &unk_1001687B8;
    objc_copyWeak(&v6, &location);
    [SiriSharedUIReplayUtilityWrapper registerReplayCallback:v5];
    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

- (BOOL)_isReplayUItest
{
  v2 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  v3 = [v2 isReplayTestEnv];

  return v3;
}

- (void)_replayWithTestEnviormentData
{
  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:1];
  v2 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  [v2 replayWithTestEnviormentData];
}

- (CGRect)_statusBarFrame
{
  x = self->_statusBarFrame.origin.x;
  y = self->_statusBarFrame.origin.y;
  width = self->_statusBarFrame.size.width;
  height = self->_statusBarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_systemContentFrame
{
  x = self->_systemContentFrame.origin.x;
  y = self->_systemContentFrame.origin.y;
  width = self->_systemContentFrame.size.width;
  height = self->_systemContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)runPPTWithOptions:(id)a3
{
  v8 = a3;
  v4 = SUICPPTTestNameKey;
  v5 = [v8 objectForKey:SUICPPTTestNameKey];

  v6 = v8;
  if (v5)
  {
    v7 = [v8 objectForKey:v4];
    if ([v7 isEqualToString:SUICPPTTestNameSiriScrollTeamRoster])
    {
      [(SRSiriViewController *)self _runScrollRosterTestWithOptions:v8];
    }

    v6 = v8;
  }
}

- (void)_runScrollRosterTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SAUIAddViews);
  v6 = [[NSData alloc] initWithBase64EncodedString:&cfstr_Gv8ccagsxwjcxa options:0];
  v7 = [SAUISnippet alloc];
  v18[0] = @"cardData";
  v18[1] = @"$class";
  v19[0] = v6;
  v19[1] = @"Snippet";
  v18[2] = @"$group";
  v18[3] = @"aceId";
  v19[2] = @"com.apple.ace.ui.card";
  v19[3] = @"fakeId";
  v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v9 = [v7 initWithDictionary:v8];

  [v9 setItemType:SAAceViewUIItemTypeItemTypeResultValue];
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  [v5 setViews:v10];

  [(SRSiriViewController *)self _testDidReceiveAceCommand:v5 completion:0];
  objc_initWeak(&location, self);
  v11 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075858;
  block[3] = &unk_100166FE8;
  objc_copyWeak(&v15, &location);
  v14 = v4;
  v12 = v4;
  dispatch_after(v11, &_dispatch_main_q, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_startScrollingWithOptions:(id)a3
{
  v4 = +[AFSystemAssistantExperienceStatusManager saeAvailable];
  v5 = [(SRSiriViewController *)self _presentationViewController];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 viewState];
    v8 = [v7 activeSmartDialogView];

    v9 = [v8 contentContainerView];
  }

  else
  {
    v10 = [v5 view];

    v8 = [v10 snippetView];
    v9 = [v8 contentPlatterScrollView];
    v6 = v10;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000759D4;
  v11[3] = &unk_100167010;
  v11[4] = self;
  [v9 _performNaturalScrollTest:SUICPPTTestNameSiriScrollTeamRoster completionHandler:v11];
}

- (void)_testDidReceiveAceCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(SRSiriViewController *)self _didReceiveAceCommand:v6 completion:a4];
  v7 = [(SRSiriViewController *)self _activeConversation];
  [v7 addItemsForAddViewsCommand:v6];

  v8 = [(SRSiriViewController *)self _session];
  [v8 stopRecordingSpeech];
}

@end