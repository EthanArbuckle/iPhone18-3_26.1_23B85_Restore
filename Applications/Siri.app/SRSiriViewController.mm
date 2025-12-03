@interface SRSiriViewController
+ (double)_contentWidthForWidth:(double)result isPhone:(BOOL)phone isZoomed:(BOOL)zoomed isLargeFormatPad:(BOOL)pad;
+ (id)_exportedInterface;
+ (id)_speechIdentifierForConversationItem:(id)item;
- ($5B118637EA29FD52B6AA7C9036D3A2A1)keyboardInfoForSiriPresentation:(SEL)presentation;
- (AFUIAudioPlayer)_audioMessagePlayer;
- (AFUIAudioPlayer)_voicemailPlayer;
- (BOOL)_isReplayUItest;
- (BOOL)_isSiriIdleAndQuiet;
- (BOOL)_languageMatchesConversation:(id)conversation;
- (BOOL)_presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:(id)command;
- (BOOL)_resumesInterruptedAudioPlaybackForAttendingState:(BOOL)state;
- (BOOL)_shouldLowerKeyboardForAddViewsCommand:(id)command;
- (BOOL)_siriIsShowingPasscodeUnlock;
- (BOOL)_suppressTTSForErrorsAndInterstitials;
- (BOOL)_usesEventDrivenIdleAndQuietUpdates;
- (BOOL)inTextInputModeForSiriPresentation:(id)presentation;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAutorotate;
- (BOOL)siriPresentation:(id)presentation itemAtIndexPathIsVirgin:(id)virgin;
- (BOOL)siriPresentationShouldDelaySuggestions:(id)suggestions;
- (BOOL)siriSessionShouldRequestUpdateForViewWithIdentifier:(id)identifier;
- (BOOL)textInputEnabled;
- (CGRect)_statusBarFrame;
- (CGRect)_systemContentFrame;
- (CGRect)frameForApplication:(id)application;
- (CGRect)statusBarFrameForSiriPresentation:(id)presentation;
- (NSMutableSet)_completedCommandAppPunchOutIds;
- (SRSiriViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)contentWidthForForSiriPresentation:(id)presentation;
- (double)statusViewHeightForSiriPresentation:(id)presentation;
- (id)_aceCommandWithIdentifier:(id)identifier;
- (id)_activeConversation;
- (id)_activeConversationItemAtIndexPath:(id)path;
- (id)_configuredSpeakableUtteranceParserForCommand:(id)command context:(id)context speakableText:(id)text subCompletion:(id)completion speakPreparation:(id *)preparation speakCompletion:(id *)speakCompletion;
- (id)_conversationWithIdentifier:(id)identifier;
- (id)_delayedConversationItemRevisionIdentifiers;
- (id)_dialogPhaseForItemAtIndexPath:(id)path;
- (id)_metricsContextForItemWithAceCommandId:(id)id;
- (id)_pendingPreSynthesisTasks;
- (id)_presentationViewController;
- (id)_presentedConversationItemRevisionIdentifiers;
- (id)_previousConversation;
- (id)_punchoutMetricsAceCommandIdForItemWithIdentifier:(id)identifier;
- (id)_searchAddViewsForSpokenHintsView:(id)view;
- (id)_startNewConversation;
- (id)_uiPresentationIdentifier;
- (id)activeRequestOptionsForSiriPresentation:(id)presentation;
- (id)audioPlayer:(id)player audioURLForCommand:(id)command;
- (id)conversationIdentifiersForSiriPresentation:(id)presentation;
- (id)domainObjectForIdentifier:(id)identifier;
- (id)localeForSiriPresentation:(id)presentation;
- (id)preferredFocusEnvironments;
- (id)removeAlternativeFeatureViews:(id)views;
- (id)siriPresentation:(id)presentation aceCommandIdentifierForItemAtIndexPath:(id)path;
- (id)siriPresentation:(id)presentation aceObjectForItemAtIndexPath:(id)path;
- (id)siriPresentation:(id)presentation additionalSpeechInterpretationsForRefId:(id)id;
- (id)siriPresentation:(id)presentation domainObjectForIdentifier:(id)identifier;
- (id)siriPresentation:(id)presentation identifierOfItemAtIndexPath:(id)path;
- (id)siriPresentation:(id)presentation indexPathForItemWithIdentifier:(id)identifier;
- (id)siriPresentation:(id)presentation updatedUserUtteranceForRefId:(id)id;
- (int)_instrumentationPresentationForPresentationOptions:(int64_t)options;
- (int)_instrumentationResponseModeForMode:(unint64_t)mode;
- (int)_mapSiriTransitionState:(int64_t)state;
- (int64_t)_presentationOptions;
- (int64_t)_viewModeFromPresentationOptions:(int64_t)options;
- (int64_t)siriPresentation:(id)presentation numberOfChildrenForItemAtIndexPath:(id)path;
- (int64_t)siriPresentation:(id)presentation presentationStateForItemAtIndexPath:(id)path;
- (int64_t)siriPresentation:(id)presentation typeOfItemAtIndexPath:(id)path;
- (unint64_t)_MDModeToSRModeConverter:(unint64_t)converter;
- (unint64_t)_SRModeToMDModeConverter:(unint64_t)converter;
- (unint64_t)_readoutResultFromTTSResult:(int64_t)result error:(id)error;
- (unint64_t)_readoutResultFromTitleResult:(unint64_t)result messageResult:(unint64_t)messageResult;
- (unint64_t)_responseModeToMDModeConverter:(id)converter;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activateConversation:(id)conversation;
- (void)_activeRequestOptionsDidChange;
- (void)_addErrorUtterance:(id)utterance;
- (void)_audioSessionRouteDidChange:(id)change;
- (void)_cancelCurrentAudioMessagePlayback:(id)playback;
- (void)_cancelIdleTimer;
- (void)_cancelLastRootProvisionalSnippetFromLastRequestInConversation:(id)conversation;
- (void)_cancelSpeechSynthesis;
- (void)_checkAndUpdateSiriIdleAndQuietStatusIfNeeded;
- (void)_checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded;
- (void)_checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:(id)handler;
- (void)_connectionWasInterrupted;
- (void)_connectionWasInvalidated;
- (void)_delayAceCommandSuccess:(id)success forDuration:(double)duration;
- (void)_deleteConversationWithIdentifier:(id)identifier;
- (void)_deletePreviousConversation;
- (void)_didCompleteActionForAceCommand:(id)command success:(BOOL)success;
- (void)_didReceiveAceCommand:(id)command completion:(id)completion;
- (void)_didStartActionForAceCommand:(id)command;
- (void)_didStartActionForItemAtIndexPath:(id)path inConversation:(id)conversation;
- (void)_dismissWithReason:(int64_t)reason;
- (void)_displayNotReadyError:(id)error;
- (void)_emitRenderingEnded;
- (void)_emitRenderingStarted;
- (void)_enqueueSpokenSuggestionsFromAddViews:(id)views;
- (void)_ensurePresentationForReplay;
- (void)_fetchAttendingState:(id)state;
- (void)_handleRequestError:(id)error completion:(id)completion;
- (void)_idleTimerFired:(id)fired;
- (void)_insertUserUtteranceViewForSuggestion:(id)suggestion;
- (void)_insertUserUtteranceViewForText:(id)text;
- (void)_invalidateConnection;
- (void)_logAceObjectPresented:(id)presented dialogPhase:(id)phase;
- (void)_logAceObjectSpoken:(id)spoken dialogPhase:(id)phase speakableText:(id)text dialogIdentifierOverride:(id)override;
- (void)_logPatternExecutedEventForAddViewsCommand:(id)command;
- (void)_logRevealSpeechCommandReceived:(id)received;
- (void)_notifyPromptedUserForInput;
- (void)_openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options conversationId:(id)conversationId completion:(id)completion;
- (void)_performAceCommand:(id)command conversationIdentifier:(id)identifier turnIdentifier:(id)turnIdentifier completion:(id)completion;
- (void)_performAppPunchOutCommand:(id)command conversationItemIdentifier:(id)identifier completion:(id)completion;
- (void)_performContinueOnDeviceCommand:(id)command completion:(id)completion;
- (void)_performGenericAceCommand:(id)command turnIdentifier:(id)identifier completion:(id)completion;
- (void)_performSayItCommand:(id)command;
- (void)_performStartRequest:(id)request turnIdentifier:(id)identifier completion:(id)completion;
- (void)_presentAuthenticationDialogWithText:(id)text;
- (void)_processAddViewsCommand:(id)command forMode:(unint64_t)mode completion:(id)completion;
- (void)_registerReplyCallbackWithOverrideEnabled:(BOOL)enabled;
- (void)_removePreviousConversationFromStore;
- (void)_replayWithTestEnviormentData;
- (void)_rescheduleIdleTimerIfNeeded;
- (void)_resetContext;
- (void)_restorePreviousConversation;
- (void)_runScrollRosterTestWithOptions:(id)options;
- (void)_saveConversationWithCompletion:(id)completion;
- (void)_scheduleAudioResumptionAfterDelayInSec:(double)sec;
- (void)_scheduleIdleTimer;
- (void)_scheduleInterruptedAudioResumingIfNeeded;
- (void)_setListenAfterSpeakingForRequestFinished:(BOOL)finished;
- (void)_setRequestOptions:(id)options;
- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)enabled;
- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)enabled minimized:(BOOL)minimized;
- (void)_setStatusBarFrame:(CGRect)frame;
- (void)_setStatusViewHeight:(double)height;
- (void)_setupXPCListener;
- (void)_sharePatternIdFromAddViewsCommand:(id)command;
- (void)_siriPresentation:(id)presentation speakTextForConversationItemIdentifier:(id)identifier delayed:(BOOL)delayed;
- (void)_siriPresentation:(id)presentation speakTextForConversationItemIdentifierDidBecomeReady:(id)ready;
- (void)_speakEnqueuedSpokenSuggestion;
- (void)_speakText:(id)text audioData:(id)data ignoreMuteSwitch:(BOOL)switch identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)self0 promptStyle:(id)self1 provisionally:(BOOL)self2 eligibleAfterDuration:(double)self3 delayed:(BOOL)self4 canUseServerTTS:(BOOL)self5 speakableUtteranceParser:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8 preparation:(id)self9 completion:(id)completion;
- (void)_speakText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice promptStyle:(id)style provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration delayed:(BOOL)self0 canUseServerTTS:(BOOL)self1 speakableUtteranceParser:(id)self2 analyticsContext:(id)self3 speakableContextInfo:(id)self4 preparation:(id)self5 completion:(id)self6;
- (void)_startListenAfterSpeaking;
- (void)_startListenAfterSpeakingRequest;
- (void)_startRequestWithOptions:(id)options;
- (void)_startScrollingWithOptions:(id)options;
- (void)_synthesizeSpeechWithText:(id)text identifier:(id)identifier sessionId:(id)id isPhonetic:(BOOL)phonetic provisionally:(BOOL)provisionally completion:(id)completion;
- (void)_testDidReceiveAceCommand:(id)command completion:(id)completion;
- (void)_updateKeyboardState:(BOOL)state minimized:(BOOL)minimized;
- (void)_updateKeyboardStateWithError:(id)error;
- (void)_updateKeyboardStatusForAddViewsCommand:(id)command;
- (void)_updateLanguageCode;
- (void)aceCommandRecords:(id)records didChangeResultForCommand:(id)command completion:(id)completion;
- (void)alertDidBeginPlaying:(id)playing;
- (void)animatedDisappearanceDidBeginWithDuration:(double)duration reason:(int64_t)reason;
- (void)audioPlayer:(id)player didFinishPlayback:(id)playback;
- (void)audioPlayerStartPlaying:(id)playing;
- (void)cancelRequestForSiriPresentation:(id)presentation;
- (void)controllerRequestScreenClearedWithClearASR:(BOOL)r;
- (void)controllerRequestSiriBlurHidden:(BOOL)hidden;
- (void)controllerRequestSiriDismissal;
- (void)controllerRequestSystemApertureCollapse;
- (void)controllerRequestTapsShared:(BOOL)shared;
- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction;
- (void)conversation:(id)conversation didRemoveItemsWithIdentifiers:(id)identifiers atIndexPaths:(id)paths parentItemIdentifiers:(id)itemIdentifiers;
- (void)dealloc;
- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveHelpAction;
- (void)didReceiveOrbViewTapToCancelRequest;
- (void)didReceiveReportBugAction;
- (void)didReceiveShortTapActionWIthRequestOptions:(id)options;
- (void)disableIdleTimerForSiriPresentation:(id)presentation;
- (void)disableTouchIDFaceIDIfNecessaryForDucID:(id)d;
- (void)dismissSiriPresentation:(id)presentation withReason:(int64_t)reason;
- (void)dismissSiriResults;
- (void)enableIdleTimerForSiriPresentation:(id)presentation;
- (void)forceAudioSessionInactiveForSiriPresentation:(id)presentation;
- (void)getScreenshotImageForSiriPresentation:(id)presentation withCompletion:(id)completion;
- (void)handlePasscodeUnlockForSiriPresentation:(id)presentation withClient:(unint64_t)client withCompletion:(id)completion;
- (void)handlePlayTrailer:(id)trailer completion:(id)completion;
- (void)hasContentAtPoint:(id)point completion:(id)completion;
- (void)hostApplicationDidBecomeActive;
- (void)hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:(id)command;
- (void)hostApplicationPresentationStateUpdatedFromPresentationState:(int64_t)state toPresentationState:(int64_t)presentationState;
- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)event;
- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)event atTime:(unint64_t)time;
- (void)hostApplicationRequestsEmitUIStateTransitionForSiriDismissalWithReason:(int)reason completion:(id)completion;
- (void)hostApplicationRequestsScreenshotWithCompletion:(id)completion;
- (void)hostApplicationWillEnterForeground;
- (void)hostApplicationWillResignActive;
- (void)invalidateConnectionForSiriPresentation:(id)presentation;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)noteApplicationTransition;
- (void)notifyClientStateManagerSpeakingEnded:(id)ended;
- (void)orchestrationDidPresentResponseFullyInApp;
- (void)preloadPluginBundles;
- (void)preloadPresentationBundleWithIdentifier:(id)identifier;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)runPPTWithOptions:(id)options;
- (void)setBottomContentInset:(double)inset;
- (void)setDockFrameValue:(id)value;
- (void)setDomainObject:(id)object forIdentifier:(id)identifier;
- (void)setHostFrontMostAppOrientation:(int64_t)orientation;
- (void)setPresentation:(id)presentation animated:(BOOL)animated completion:(id)completion;
- (void)setRequestOptions:(id)options;
- (void)setSession:(id)session;
- (void)setStatusBarFrameValue:(id)value;
- (void)setStatusViewHeightNumber:(id)number;
- (void)setSystemContentFrame:(CGRect)frame;
- (void)showAppUnlockForAppId:(id)id completion:(id)completion;
- (void)siriDidActivateFromSource:(int64_t)source;
- (void)siriDidDeactivateWithCompletion:(id)completion;
- (void)siriDidHidePasscodeUnlock;
- (void)siriKeyboardViewDidChange:(id *)change;
- (void)siriPresentation:(id)presentation activateConversationWithIdentifier:(id)identifier;
- (void)siriPresentation:(id)presentation addSelectionResponse:(id)response;
- (void)siriPresentation:(id)presentation didChangePeekMode:(unint64_t)mode;
- (void)siriPresentation:(id)presentation didChangeVisualState:(unint64_t)state;
- (void)siriPresentation:(id)presentation didCorrectRecognition:(id)recognition correctionIdentifier:(id)identifier forConversationItemWithIdentifier:(id)withIdentifier userSelectionResults:(id)results;
- (void)siriPresentation:(id)presentation didCorrectRecognition:(id)recognition correctionIdentifier:(id)identifier forItemAtIndexPath:(id)path;
- (void)siriPresentation:(id)presentation didDelayPresentationOfItemsWithIdentifiers:(id)identifiers;
- (void)siriPresentation:(id)presentation didDismissViewController:(id)controller;
- (void)siriPresentation:(id)presentation didEditSpeechRecognized:(id)recognized forInterval:(double)interval;
- (void)siriPresentation:(id)presentation didPresentConversationItemsWithIdentifiers:(id)identifiers;
- (void)siriPresentation:(id)presentation didPresentIntentWithBundleId:(id)id;
- (void)siriPresentation:(id)presentation didPresentItemsAtIndexPaths:(id)paths;
- (void)siriPresentation:(id)presentation didPresentViewController:(id)controller;
- (void)siriPresentation:(id)presentation didScrollForInterval:(double)interval metricsContext:(id)context;
- (void)siriPresentation:(id)presentation didShowAceViewWithIdentifier:(id)identifier aceViewClass:(Class)class metricsContext:(id)context forInterval:(double)interval;
- (void)siriPresentation:(id)presentation didShowGuideStartTime:(id)time endTime:(id)endTime;
- (void)siriPresentation:(id)presentation didShowTipWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate flowID:(id)d;
- (void)siriPresentation:(id)presentation handleStartLocalRequest:(id)request turnIdentifier:(id)identifier;
- (void)siriPresentation:(id)presentation inputTypeDidChange:(int64_t)change;
- (void)siriPresentation:(id)presentation insertAceViews:(id)views withDialogPhase:(id)phase asItemsAtIndexPaths:(id)paths;
- (void)siriPresentation:(id)presentation openURL:(id)l conversationId:(id)id completion:(id)completion;
- (void)siriPresentation:(id)presentation reduceOrbOpacity:(BOOL)opacity;
- (void)siriPresentation:(id)presentation removeItemsAtIndexPaths:(id)paths;
- (void)siriPresentation:(id)presentation requestHostBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence;
- (void)siriPresentation:(id)presentation requestsKeyboardWithCompletion:(id)completion;
- (void)siriPresentation:(id)presentation requestsTouchPassThroughEnabled:(BOOL)enabled;
- (void)siriPresentation:(id)presentation setBugReportingAvailable:(BOOL)available;
- (void)siriPresentation:(id)presentation setDomainObject:(id)object forIdentifier:(id)identifier;
- (void)siriPresentation:(id)presentation setFullScreenDimmingLayerVisible:(BOOL)visible animated:(BOOL)animated;
- (void)siriPresentation:(id)presentation setHelpButtonEmphasized:(BOOL)emphasized;
- (void)siriPresentation:(id)presentation setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)siriPresentation:(id)presentation setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)siriPresentation:(id)presentation setStatusViewDisabled:(BOOL)disabled;
- (void)siriPresentation:(id)presentation setStatusViewHidden:(BOOL)hidden;
- (void)siriPresentation:(id)presentation setStatusViewUserInteractionEnabled:(BOOL)enabled;
- (void)siriPresentation:(id)presentation setTypeToSiriViewHidden:(BOOL)hidden;
- (void)siriPresentation:(id)presentation startEditedRequestWithText:(id)text correctionIdentifier:(id)identifier userSelectionResults:(id)results;
- (void)siriPresentation:(id)presentation startRequestForSuggestion:(id)suggestion inputType:(int64_t)type suggestionRequestType:(int64_t)requestType;
- (void)siriPresentation:(id)presentation startRequestForSuggestionToolInvocation:(id)invocation turnIdentifier:(id)identifier;
- (void)siriPresentation:(id)presentation startRequestForText:(id)text;
- (void)siriPresentation:(id)presentation synthesizeSpeechWithPhoneticText:(id)text completion:(id)completion;
- (void)siriPresentation:(id)presentation synthesizeSpeechWithText:(id)text completion:(id)completion;
- (void)siriPresentation:(id)presentation viewDidAppearWithAceObject:(id)object;
- (void)siriPresentation:(id)presentation viewDidAppearWithClassDescriptor:(id)descriptor identifier:(id)identifier;
- (void)siriPresentation:(id)presentation viewDidDisappearWithClassDescriptor:(id)descriptor identifier:(id)identifier;
- (void)siriPresentation:(id)presentation willBeginEditingOfType:(int64_t)type;
- (void)siriPresentation:(id)presentation willChangeKeyboardVisibility:(BOOL)visibility;
- (void)siriPresentation:(id)presentation willDiscardConversationItemsWithIdentifiers:(id)identifiers;
- (void)siriPresentation:(id)presentation willDismissViewController:(id)controller;
- (void)siriPresentation:(id)presentation willPresentViewController:(id)controller;
- (void)siriPresentationCancelHIDEventDefferal:(id)defferal;
- (void)siriPresentationClearContext:(id)context;
- (void)siriPresentationDidDismissBugReporter:(id)reporter;
- (void)siriPresentationDidHideUnlockScreen:(id)screen;
- (void)siriPresentationDidPresentBugReporter:(id)reporter;
- (void)siriPresentationDidPresentConversationFromBreadcrumb:(id)breadcrumb;
- (void)siriPresentationDidPresentDynamicSnippetWithInfo:(id)info;
- (void)siriPresentationDidPresentUserInterface:(id)interface;
- (void)siriPresentationDidRequestRestartSpeechSynthesis:(id)synthesis;
- (void)siriPresentationDidResignFirstResponder:(id)responder;
- (void)siriPresentationKeyboardViewDidAppear:(id)appear;
- (void)siriPresentationMicButtonLongPressBegan:(id)began;
- (void)siriPresentationMicButtonLongPressEnded:(id)ended;
- (void)siriPresentationMicButtonWasTapped:(id)tapped;
- (void)siriPresentationPresentAcousticIDSpinner:(id)spinner;
- (void)siriPresentationPulseHelpButton:(id)button;
- (void)siriPresentationRemoveAcousticIDSpinner:(id)spinner;
- (void)siriPresentationRequestsHIDEventDefferal:(id)defferal;
- (void)siriPresentationRequestsStartAttendingForNonSpeechRequest:(id)request deviceID:(id)d;
- (void)siriPresentationWillSendStartRequest:(id)request;
- (void)siriResultsDidDismissInTamaleForSiriPresentation:(id)presentation;
- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level;
- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level peakLevel:(float)peakLevel;
- (void)siriSessionDidBeginTaskWithIdentifier:(id)identifier;
- (void)siriSessionDidChangeLockState:(unint64_t)state;
- (void)siriSessionDidChangeNetworkAvailability;
- (void)siriSessionDidDetectMusic;
- (void)siriSessionDidDetectSpeechStartpoint;
- (void)siriSessionDidEnterLatencyState;
- (void)siriSessionDidFinishAcousticIDRequestWithSuccess:(BOOL)success;
- (void)siriSessionDidFinishRequestWithError:(id)error;
- (void)siriSessionDidInitializeSessionInfo:(id)info;
- (void)siriSessionDidReceiveAddContentToViewCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveAddDialogsCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveAddViewsCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveAppPunchOutCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveAudioSessionInterruptionBeganWithUserInfo:(id)info machAbsoluteTime:(unint64_t)time;
- (void)siriSessionDidReceiveClearScreenCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveCloseAssistantCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveContinueOnDeviceCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveDisambiguationItemSelected:(id)selected completion:(id)completion;
- (void)siriSessionDidReceiveExtendCurrentTTSCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveGetResponseAlternativesPlaybackCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveGuideUpdateCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveHideSiriOverlayCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveLatencyInformation:(id)information;
- (void)siriSessionDidReceiveLaunchTVRemoteCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveListenForPronunciationCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveNLRoutingDecision:(id)decision;
- (void)siriSessionDidReceiveOpenLinkCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceivePaginateListCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceivePlayContentCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceivePlayNotificationSound:(id)sound completion:(id)completion;
- (void)siriSessionDidReceivePlayVoicemailCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceivePluginSnippetPrewarmCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceivePreSynthesizeTTSCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveRepeatItCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveRevealRecognizedSpeechCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSAUIChangePrimaryUtteranceCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSAUIShowFullScreenEffectCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSAUIShowRequestHandlingStatusCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSAUIShowSpeechAlternativesCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSayItCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSetSuggestedUtterancesCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSetUIGuidedAccessCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveShowHelpCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveShowNextCardCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveShowNextSnippetCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSmsPlayAudioCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSnippetConfigurationRequestCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveSpeechPartialResultCommand:(id)command;
- (void)siriSessionDidReceiveSpeechRecognizedCommand:(id)command;
- (void)siriSessionDidReceiveStartGenAIEnablementFlowCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveUpdateViewsCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveUpdateVisualResponseSnippetCommand:(id)command completion:(id)completion;
- (void)siriSessionDidRecognizedAdditionalSpeechInterpretation:(id)interpretation refId:(id)id;
- (void)siriSessionDidStartAcousticIDRequest;
- (void)siriSessionDidStartNewTurn:(id)turn;
- (void)siriSessionDidStartNewTurn:(id)turn associatedLaunchStartContext:(id)context machAbsoluteTime:(double)time linkPreviousTurn:(BOOL)previousTurn;
- (void)siriSessionDidTransitionFromState:(int64_t)state toState:(int64_t)toState event:(int64_t)event machAbsoluteTransitionTime:(double)time;
- (void)siriSessionDidUpdateAudioSessionID:(unsigned int)d;
- (void)siriSessionDidUpdateRecognitionWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id;
- (void)siriSessionDidUpdateSessionInfo:(id)info;
- (void)siriSessionGetRequestContextWithCompletionHandler:(id)handler;
- (void)siriSessionIsPresentingApplePaySheet;
- (void)siriSessionIsPresentingLocalAuthenticationUI;
- (void)siriSessionOpenURL:(id)l completionHandler:(id)handler;
- (void)siriSessionReplayAll:(unint64_t)all with:(id)with;
- (void)siriSessionReplayAt:(unint64_t)at with:(id)with;
- (void)siriSessionRequestedCancelPhotoSelectionWithAnimation:(BOOL)animation;
- (void)siriSessionRequestedPhotoSelectionWithPhotoPickerRequest:(id)request completion:(id)completion;
- (void)siriSessionRequestsDismissalForReason:(int64_t)reason;
- (void)siriSessionRequestsInstrumentingMessage:(id)message machAbsoluteTime:(double)time;
- (void)siriSessionRequestsPlayPhaticWithCompletion:(id)completion;
- (void)siriSessionRequestsReadoutOfBulletin:(id)bulletin completion:(id)completion;
- (void)siriSessionRequestsTTSDuckToVolume:(float)volume rampTime:(double)time completion:(id)completion;
- (void)siriSessionResultForAceCommand:(id)command completion:(id)completion;
- (void)siriSessionSetReplayOverridePath:(id)path;
- (void)siriSessionShouldPrewarmForPossibleTextRequest:(id)request;
- (void)siriSessionSpeechRecordingDidCancel;
- (void)siriSessionSpeechRecordingDidChangeAVRecordRoute:(id)route;
- (void)siriSessionSpeechRecordingDidEnd;
- (void)siriSessionSpeechRecordingDidFailWithError:(id)error;
- (void)siriSessionWantsToCacheImage:(id)image;
- (void)siriSessionWillCancelRequest;
- (void)siriSessionWillProcessAceCommand:(id)command;
- (void)siriSessionWillProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)siriSessionWillStartRequest;
- (void)siriSessionWillStartRequestWithOptions:(id)options completion:(id)completion;
- (void)siriSessionWillStartUIRequestWithText:(id)text completionHandler:(id)handler;
- (void)siriWillActivateFromSource:(int64_t)source;
- (void)siriWillBePresented:(int64_t)presented;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options;
- (void)siriWillHidePasscodeUnlockForResult:(int64_t)result;
- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)request;
- (void)siriWillStopAttending:(id)attending;
- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)identifier;
- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty;
- (void)speechSynthesisGetPreparedTextForIdentifier:(id)identifier completion:(id)completion;
- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)completion;
- (void)startRequestForSuggestion:(id)suggestion inputType:(int64_t)type suggestionRequestType:(int64_t)requestType;
- (void)startRequestForText:(id)text;
- (void)stopRecordingSpeechForSiriPresentation:(id)presentation;
- (void)toggleHomeAffordanceHidden:(BOOL)hidden;
- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)control;
- (void)updateEdgeLightWindowLevel:(int64_t)level;
- (void)updateToPresentationWithIdentifier:(id)identifier presentationProperties:(id)properties animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SRSiriViewController

- (id)_startNewConversation
{
  _activeConversation = [(SRSiriViewController *)self _activeConversation];

  if (_activeConversation)
  {
    [(SRSiriViewController *)self _saveConversationWithCompletion:0];
  }

  v4 = [AFConversation alloc];
  _language = [(SRSiriViewController *)self _language];
  spokenLanguageCode = [_language spokenLanguageCode];
  v7 = [v4 initWithLanguageCode:spokenLanguageCode];

  [v7 setDelegate:self];
  [(SRSiriViewController *)self _activateConversation:v7];
  _presentation = [(SRSiriViewController *)self _presentation];
  LOBYTE(spokenLanguageCode) = objc_opt_respondsToSelector();

  if (spokenLanguageCode)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    identifier = [v7 identifier];
    [_presentation2 siriDidStartNewConversationWithIdentifier:identifier];
  }

  identifier2 = [v7 identifier];

  return identifier2;
}

- (id)_activeConversation
{
  _conversations = [(SRSiriViewController *)self _conversations];
  lastObject = [_conversations lastObject];

  return lastObject;
}

- (id)_previousConversation
{
  _conversations = [(SRSiriViewController *)self _conversations];
  v3 = [_conversations count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [_conversations objectAtIndex:v3 - 2];
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
    selfCopy = self;
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
  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1502 context:0];
}

- (void)_updateLanguageCode
{
  _language = [(SRSiriViewController *)self _language];
  spokenLanguageCode = [_language spokenLanguageCode];

  AFUISetLanguageCode();
}

- (void)_cancelIdleTimer
{
  _idleTimer = [(SRSiriViewController *)self _idleTimer];

  if (_idleTimer)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SRSiriViewController _cancelIdleTimer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #idleTimer", &v6, 0xCu);
    }

    _idleTimer2 = [(SRSiriViewController *)self _idleTimer];
    [_idleTimer2 invalidate];

    [(SRSiriViewController *)self _setIdleTimer:0];
  }
}

- (void)hostApplicationDidBecomeActive
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 hostApplicationDidBecomeActive];
  }

  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager hostDidBecomeActive];
}

- (void)_rescheduleIdleTimerIfNeeded
{
  [(SRSiriViewController *)self _checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:0];
  _isSiriIdleAndQuiet = [(SRSiriViewController *)self _isSiriIdleAndQuiet];
  _isIdleTimerEnabled = [(SRSiriViewController *)self _isIdleTimerEnabled];
  _presentation = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    isPresentingUIFromRemoteDevice = [_presentation2 isPresentingUIFromRemoteDevice];
  }

  else
  {
    isPresentingUIFromRemoteDevice = 0;
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[SRSiriViewController _rescheduleIdleTimerIfNeeded]";
    v12 = 1024;
    v13 = _isSiriIdleAndQuiet;
    v14 = 1024;
    v15 = _isIdleTimerEnabled;
    v16 = 1024;
    v17 = isPresentingUIFromRemoteDevice;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #idleTimer idleAndQuiet=%i idleTimerEnabled=%i isPresentingUIFromRemoteDevice:%i", &v10, 0x1Eu);
  }

  if ((_isIdleTimerEnabled & (_isSiriIdleAndQuiet | isPresentingUIFromRemoteDevice)) == 1)
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
  _presentationViewController = [(SRSiriViewController *)self _presentationViewController];
  v4 = _presentationViewController;
  if (_presentationViewController)
  {
    v9 = _presentationViewController;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SRSiriViewController;
    preferredFocusEnvironments = [(SRSiriViewController *)&v8 preferredFocusEnvironments];
  }

  v6 = preferredFocusEnvironments;

  return v6;
}

- (id)_presentationViewController
{
  if (objc_opt_respondsToSelector())
  {
    viewController = [(SiriUIPresentation *)self->_presentation viewController];
  }

  else
  {
    viewController = 0;
  }

  return viewController;
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
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    shouldUseEventDrivenIdleAndQuietUpdates = [_presentation shouldUseEventDrivenIdleAndQuietUpdates];
  }

  else
  {
    shouldUseEventDrivenIdleAndQuietUpdates = 0;
  }

  return shouldUseEventDrivenIdleAndQuietUpdates;
}

- (void)_restorePreviousConversation
{
  siriIsActive = [(SRPreferences *)self->_preferences siriIsActive];
  [(SRPreferences *)self->_preferences setSiriIsActive:1];
  if ((siriIsActive & 1) == 0)
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
  _isRequestActive = [(SRSiriViewController *)self _isRequestActive];
  _isSpeechSynthesisSpeaking = [(SRSiriViewController *)self _isSpeechSynthesisSpeaking];
  _isAudioPlayerPlaying = [(SRSiriViewController *)self _isAudioPlayerPlaying];
  _isWaitingForStartRequest = [(SRSiriViewController *)self _isWaitingForStartRequest];
  delaySessionEndForInPlacePunchout = self->_delaySessionEndForInPlacePunchout;
  v11 = v5 ^ 1 | _isRequestActive | _isSpeechSynthesisSpeaking | _isAudioPlayerPlaying | _isWaitingForStartRequest | delaySessionEndForInPlacePunchout | +[SiriSharedUIReplayUtilityWrapper shouldSkipAutoDismissal];
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
    v22 = _isRequestActive & 1;
    v23 = 1024;
    v24 = _isSpeechSynthesisSpeaking & 1;
    v25 = 1024;
    v26 = _isAudioPlayerPlaying & 1;
    v27 = 1024;
    v28 = _isWaitingForStartRequest & 1;
    v29 = 1024;
    v30 = delaySessionEndForInPlacePunchout;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #idle %@ - inIdleState:%d requestActive:%d speaking:%d audioPlaying:%d waitingForStartRequest:%d delayingSessionEndForInPlacePunchout:%d", &v15, 0x3Au);
  }

  return (v11 & 1) == 0;
}

- (void)_activeRequestOptionsDidChange
{
  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation activeRequestOptionsDidChange];
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

  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  inputType = [_requestOptions inputType];

  if (inputType == 2)
  {
    _host = [(SRSiriViewController *)self _host];
    [_host serviceDidRequestKeyboard:0];
  }

  if ([(SRSiriViewController *)self _isSpeechSynthesisSpeaking])
  {
    _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
    [_instrumentationManager emitUserBargeInEventForBargedInTurn];
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

  _presentation = [(SRSiriViewController *)self _presentation];
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

    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriRequestWillStartWithRequestOptions:self->_requestOptions];
  }

  requestSource = [(SASRequestOptions *)self->_requestOptions requestSource];
  if (requestSource == 51)
  {
    [(SRSiriViewController *)self _insertUserUtteranceViewForSuggestion:self->_requestText];
  }

  else if (requestSource == 24)
  {
    [(SRSiriViewController *)self _insertUserUtteranceViewForText:self->_requestText];
  }

  else if ((requestSource - 25) <= 1)
  {
    text = [(SASRequestOptions *)self->_requestOptions text];
    [(SRSiriViewController *)self _insertUserUtteranceViewForText:text];
  }
}

- (int64_t)_presentationOptions
{
  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  isForBluetoothCar = [_requestOptions isForBluetoothCar];

  if (isForBluetoothCar)
  {
    return 8;
  }

  _presentation = [(SRSiriViewController *)self _presentation];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  _presentation2 = [(SRSiriViewController *)self _presentation];
  options = [_presentation2 options];

  return options;
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

  _presentation = [(SRSiriViewController *)self _presentation];
  supportsTextInput = [_presentation supportsTextInput];

  return supportsTextInput;
}

- (void)_deletePreviousConversation
{
  _previousConversation = [(SRSiriViewController *)self _previousConversation];
  if (_previousConversation)
  {
    v5 = _previousConversation;
    identifier = [_previousConversation identifier];
    [(SRSiriViewController *)self _deleteConversationWithIdentifier:identifier];

    _previousConversation = v5;
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
  _conversationStore = [(SRSiriViewController *)self _conversationStore];
  [_conversationStore removeConversationWithIdentifier:AFUIPreviousConversationIdentifier completionBlock:&stru_100167D98];
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
      listenAfterSpeakingDisabled = [v12 listenAfterSpeakingDisabled];

      if (!listenAfterSpeakingDisabled)
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

  requestInfo = [(SASRequestOptions *)self->_requestOptions requestInfo];
  if ([requestInfo afui_isRemoteHeadsetActivation])
  {

    goto LABEL_9;
  }

  afui_isTVFollowUpHearstActivation = [(SASRequestOptions *)self->_requestOptions afui_isTVFollowUpHearstActivation];

  if (afui_isTVFollowUpHearstActivation)
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
  _uiPresentationIdentifier = [(SRSiriViewController *)self _uiPresentationIdentifier];
  v6 = [v4 initWithRequestSource:9 uiPresentationIdentifier:_uiPresentationIdentifier];

  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  [v6 setIsForBluetoothCar:{objc_msgSend(_requestOptions, "isForBluetoothCar")}];

  _requestOptions2 = [(SRSiriViewController *)self _requestOptions];
  originalRequestOptions = [_requestOptions2 originalRequestOptions];
  if (originalRequestOptions)
  {
    [v6 setOriginalRequestOptions:originalRequestOptions];
  }

  else
  {
    _requestOptions3 = [(SRSiriViewController *)self _requestOptions];
    [v6 setOriginalRequestOptions:_requestOptions3];
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
  selfCopy = self;
  [(SRUIFSpeechSynthesizing *)ttsManager isSynthesisQueueEmpty:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (id)_uiPresentationIdentifier
{
  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  uiPresentationIdentifier = [_requestOptions uiPresentationIdentifier];
  v5 = [uiPresentationIdentifier length];

  if (v5)
  {
    _requestOptions2 = [(SRSiriViewController *)self _requestOptions];
    uiPresentationIdentifier2 = [_requestOptions2 uiPresentationIdentifier];
  }

  else
  {
    _presentation = [(SRSiriViewController *)self _presentation];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) != 0 && (-[SRSiriViewController _presentation](self, "_presentation"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 options], v10, (v11 - 1) <= 7))
    {
      uiPresentationIdentifier2 = off_1001687F0[(v11 - 1)];
    }

    else
    {
      uiPresentationIdentifier2 = @"com.apple.siri.Compact";
    }
  }

  return uiPresentationIdentifier2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(SRSiriViewController *)&v8 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v5 viewDidAppear:appear];
  [UIApp finishedIPTest:SUICPPTTestNameSiriBringupToSiriProcessViewControllerAppeared];
  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1513 context:0];

  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:0];
  if ([(SRSiriViewController *)self _isReplayUItest])
  {
    [(SRSiriViewController *)self _replayWithTestEnviormentData];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SRSiriViewController viewDidDisappear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v7 viewDidDisappear:disappearCopy];
  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1514 context:0];

  [(SRSiriViewController *)self _invalidateConnection];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v4 viewWillDisappear:disappear];
  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [coordinatorCopy animateAlongsideTransition:0 completion:&stru_100167CE0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  listener = self->_listener;
  v9 = AFSiriLogContextConnection;
  if (listener == listenerCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[SRSiriViewController listener:shouldAcceptNewConnection:]";
      v28 = 2112;
      v29 = connectionCopy;
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
    [connectionCopy setInvalidationHandler:v23];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000569A0;
    v20 = &unk_100167D08;
    v13 = &_dispatch_main_q;
    v21 = &_dispatch_main_q;
    objc_copyWeak(&v22, buf);
    [connectionCopy setInterruptionHandler:&v17];
    _remoteViewControllerInterface = [objc_opt_class() _remoteViewControllerInterface];
    [connectionCopy setRemoteObjectInterface:_remoteViewControllerInterface];

    _exportedInterface = [objc_opt_class() _exportedInterface];
    [connectionCopy setExportedInterface:_exportedInterface];

    [connectionCopy setExportedObject:self];
    [connectionCopy _setQueue:&_dispatch_main_q];
    [connectionCopy resume];
    objc_storeStrong(&self->_connection, connection);
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
    v29 = connectionCopy;
    v30 = 2112;
    v31 = listenerCopy;
    v32 = 2112;
    v33 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s #xpcSiriApp Was asked to accept new connection from %@ for %@ instead of %@", buf, 0x2Au);
  }

  return listener == listenerCopy;
}

- (void)_connectionWasInvalidated
{
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v6 = 136315650;
    v7 = "[SRSiriViewController _connectionWasInvalidated]";
    v8 = 1024;
    v9 = processIdentifier;
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

- (SRSiriViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v49.receiver = self;
  v49.super_class = SRSiriViewController;
  v8 = [(SRSiriViewController *)&v49 initWithNibName:nameCopy bundle:bundleCopy];
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

    _startNewConversation = [(SRSiriViewController *)v8 _startNewConversation];
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
  _idleTimer = [(SRSiriViewController *)self _idleTimer];
  [_idleTimer invalidate];

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
    selfCopy = self;
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
    selfCopy = self;
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

- (void)_cancelLastRootProvisionalSnippetFromLastRequestInConversation:(id)conversation
{
  conversationCopy = conversation;
  [conversationCopy removeTransientItems];
  v4 = [conversationCopy numberOfChildrenForItemWithIdentifier:0];
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    while (1)
    {
      v6 = [NSIndexPath indexPathWithIndex:v5 - 2];
      v7 = [conversationCopy itemAtIndexPath:v6];
      aceObject = [v7 aceObject];
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
              v16 = aceObject;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Canceling provisional %@", &v13, 0x16u);
            }

            identifier = [v7 identifier];
            [conversationCopy cancelItemWithIdentifier:identifier];

            [conversationCopy setSynchronizedWithServer:0];
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

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
}

- (void)setBottomContentInset:(double)inset
{
  if (vabdd_f64(self->_bottomContentInset, inset) >= 0.00000011920929)
  {
    self->_bottomContentInset = inset;
    _presentation = [(SRSiriViewController *)self _presentation];
    if (objc_opt_respondsToSelector())
    {
      [_presentation setBottomContentInset:self->_bottomContentInset];
    }
  }
}

- (void)setSystemContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_systemContentFrame = frame;
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v9.origin.x = x;
    v9.origin.y = y;
    v9.size.width = width;
    v9.size.height = height;
    [_presentation setTopContentInset:1 animated:CGRectGetMaxY(v9)];
  }
}

- (void)_setStatusBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_statusBarFrame = &self->_statusBarFrame;
  if (!CGRectEqualToRect(self->_statusBarFrame, frame))
  {
    p_statusBarFrame->origin.x = x;
    p_statusBarFrame->origin.y = y;
    p_statusBarFrame->size.width = width;
    p_statusBarFrame->size.height = height;
    _presentation = [(SRSiriViewController *)self _presentation];
    if (objc_opt_respondsToSelector())
    {
      [_presentation statusBarFrameDidChange];
    }
  }
}

- (void)setStatusBarFrameValue:(id)value
{
  [value CGRectValue];

  [(SRSiriViewController *)self _setStatusBarFrame:?];
}

- (void)setDockFrameValue:(id)value
{
  [value CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    [_presentation dockFrameDidChange:{v5, v7, v9, v11}];
  }
}

- (void)_setStatusViewHeight:(double)height
{
  self->_statusViewHeight = height;
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    [_presentation statusViewHeightDidChange];
  }
}

- (void)setStatusViewHeightNumber:(id)number
{
  [number floatValue];
  v5 = v4;

  [(SRSiriViewController *)self _setStatusViewHeight:v5];
}

- (id)_conversationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100057B18;
  v16 = sub_100057B28;
  v17 = 0;
  _conversations = [(SRSiriViewController *)self _conversations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100057B30;
  v9[3] = &unk_100167D58;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [_conversations enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_resetContext
{
  _session = [(SRSiriViewController *)self _session];
  [_session resetContextTypes:7];
}

- (void)_activateConversation:(id)conversation
{
  conversationCopy = conversation;
  if (conversationCopy)
  {
    _conversations = [(SRSiriViewController *)self _conversations];
    _activeConversation = [(SRSiriViewController *)self _activeConversation];
    _previousConversation = [(SRSiriViewController *)self _previousConversation];

    v8 = [_conversations containsObject:conversationCopy];
    [_conversations removeObject:conversationCopy];
    [_conversations addObject:conversationCopy];
    if (_previousConversation == conversationCopy)
    {
      isSynchronizedWithServer = [conversationCopy isSynchronizedWithServer];
      v11 = AFSiriLogContextConnection;
      v12 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
      if (isSynchronizedWithServer)
      {
        if (v12)
        {
          v15 = 136315138;
          v16 = "[SRSiriViewController _activateConversation:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Rolling back the last clear context for server synchronized conversation", &v15, 0xCu);
        }

        _session = [(SRSiriViewController *)self _session];
        [_session rollbackClearContext];
      }

      else if (v12)
      {
        v15 = 136315138;
        v16 = "[SRSiriViewController _activateConversation:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Clearing context for non synchronized conversation already performed via breadcrumb activation path", &v15, 0xCu);
      }

      _session2 = [(SRSiriViewController *)self _session];
      [_session2 setAlertContext];
    }

    else if ((v8 & 1) == 0 && [_conversations count] >= 2)
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

    if (_activeConversation)
    {
      [(SRSiriViewController *)self _cancelLastRootProvisionalSnippetFromLastRequestInConversation:_activeConversation];
    }
  }
}

- (void)_saveConversationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFUIPreviousConversationIdentifier;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    canSaveConversations = [_presentation2 canSaveConversations];

    if ((canSaveConversations & 1) == 0)
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "[SRSiriViewController _saveConversationWithCompletion:]";
        v20 = 2112;
        v21 = _activeConversation;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #conversation Presentation does not support conversation saving; not saving conversation { conversation: %@ }", buf, 0x16u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
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
    v23 = _activeConversation;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #conversation Saving conversation to store { identifier: %@, conversation: %@ }", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  _conversationStore = [(SRSiriViewController *)self _conversationStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005811C;
  v13[3] = &unk_100167DC0;
  objc_copyWeak(&v17, buf);
  v14 = v5;
  v15 = _activeConversation;
  v16 = completionCopy;
  [_conversationStore saveConversation:v15 withIdentifier:v14 completionBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
LABEL_11:
}

- (void)_deleteConversationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _previousConversation = [(SRSiriViewController *)self _previousConversation];
  identifier = [_previousConversation identifier];
  v7 = [identifierCopy isEqual:identifier];

  if (v7)
  {
    [(SRSiriViewController *)self _removePreviousConversationFromStore];
  }

  _conversations = [(SRSiriViewController *)self _conversations];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000583BC;
  v12[3] = &unk_100167DE8;
  v9 = identifierCopy;
  v13 = v9;
  v10 = [_conversations indexOfObjectPassingTest:v12];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _conversations2 = [(SRSiriViewController *)self _conversations];
    [_conversations2 removeObjectAtIndex:v10];
  }
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  textInputEnabled = [(SRSiriViewController *)self textInputEnabled];
  if (ended == 1 && textInputEnabled)
  {
    [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:+[UIKeyboard isInHardwareKeyboardMode]^ 1];
  }

  v8.receiver = self;
  v8.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v8 motionEnded:ended withEvent:eventCopy];
}

- (BOOL)_languageMatchesConversation:(id)conversation
{
  conversationCopy = conversation;
  _language = [(SRSiriViewController *)self _language];
  spokenLanguageCode = [_language spokenLanguageCode];
  languageCode = [conversationCopy languageCode];

  LOBYTE(conversationCopy) = [spokenLanguageCode isEqualToString:languageCode];
  return conversationCopy;
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

- (void)setHostFrontMostAppOrientation:(int64_t)orientation
{
  v4 = +[SRApplication sharedApplication];
  [v4 setFrontMostAppOrientation:orientation];
}

- (void)siriWillActivateFromSource:(int64_t)source
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriWillActivateFromSource:source];
  }

  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
}

- (void)siriDidActivateFromSource:(int64_t)source
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [NSNumber numberWithInteger:source];
    v17 = 136315394;
    v18 = "[SRSiriViewController siriDidActivateFromSource:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s source: %@", &v17, 0x16u);
  }

  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidActivateFromSource:source];
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

- (void)siriWillBePresented:(int64_t)presented
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriWillBePresented:presented];
  }
}

- (void)siriDidDeactivateWithCompletion:(id)completion
{
  completionCopy = completion;
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
  _presentation = [(SRSiriViewController *)self _presentation];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    dispatch_group_enter(v9);
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100059020;
    v34[3] = &unk_100167010;
    v35 = v9;
    [_presentation2 siriDidDeactivateWithCompletion:v34];

    _presentation4 = v35;
  }

  else
  {
    _presentation3 = [(SRSiriViewController *)self _presentation];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

    _presentation4 = [(SRSiriViewController *)self _presentation];
    [_presentation4 siriDidDeactivate];
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
  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  v18 = [_requestOptions requestSource] == 8;

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

  _preferences = [(SRSiriViewController *)self _preferences];
  [_preferences setSiriIsActive:0];

  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v23 = objc_alloc_init(NSIndexPath);
  v24 = [_activeConversation numberOfChildrenForItemAtIndexPath:v23] > 0;

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
  v30 = completionCopy;
  v28 = completionCopy;
  dispatch_group_notify(v9, &_dispatch_main_q, v29);

  _Block_object_dispose(&buf, 8);
}

- (void)didReceiveOrbViewTapToCancelRequest
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceiveOrbViewTapToCancelRequest];
  }
}

- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)request
{
  requestCopy = request;
  _presentation = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  _presentation2 = [(SRSiriViewController *)self _presentation];
  _presentation3 = _presentation2;
  if (v6)
  {
    [_presentation2 siriWillShowPasscodeUnlockAndCancelRequest:requestCopy];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    _presentation3 = [(SRSiriViewController *)self _presentation];
    [_presentation3 siriWillShowPasscodeUnlock];
  }
}

- (void)siriWillHidePasscodeUnlockForResult:(int64_t)result
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriWillHidePasscodeUnlock];
  }
}

- (void)siriDidHidePasscodeUnlock
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidHidePasscodeUnlock];
  }
}

- (void)showAppUnlockForAppId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  [(SRSiriViewController *)self siriWillShowPasscodeUnlockAndCancelRequest:1];
  v8 = [APApplication applicationWithBundleIdentifier:idCopy];
  v9 = +[APGuard sharedGuard];
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SRSiriViewController showAppUnlockForAppId:completion:]";
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Authenticating via APGuard for App Unlock, appId=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100059580;
  v12[3] = &unk_100167E88;
  objc_copyWeak(&v14, buf);
  v11 = completionCopy;
  v13 = v11;
  [v9 authenticateForSubject:v8 relayingAuditToken:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)startRequestForText:(id)text
{
  textCopy = text;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:v5];

  if ([v6 length])
  {
    _presentation = [(SRSiriViewController *)self _presentation];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      _presentation2 = [(SRSiriViewController *)self _presentation];
      [_presentation2 siriWillStartTextInputRequest];
    }

    v10 = [[SASRequestOptions alloc] initWithRequestSource:24];
    [v10 setText:v6];
    objc_storeStrong(&self->_requestText, v6);
    [(SRSiriViewController *)self _startRequestWithOptions:v10];
    _host = [(SRSiriViewController *)self _host];
    [_host serviceDidResetTextInput];
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC8D0();
  }
}

- (void)startRequestForSuggestion:(id)suggestion inputType:(int64_t)type suggestionRequestType:(int64_t)requestType
{
  suggestionCopy = suggestion;
  v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v10 = [suggestionCopy stringByTrimmingCharactersInSet:v9];

  if ([v10 length])
  {
    v11 = [[SASRequestOptions alloc] initWithRequestSource:51];
    [v11 setText:v10];
    [v11 setSuggestionRequestType:requestType];
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

    [v11 setPreviousInteractionInputType:type];
    objc_storeStrong(&self->_requestText, v10);
    [(SRSiriViewController *)self _startRequestWithOptions:v11];
  }
}

- (void)siriPresentation:(id)presentation startRequestForSuggestionToolInvocation:(id)invocation turnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  invocationCopy = invocation;
  presentationCopy = presentation;
  v14 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.ifflow.toolInvocation"];
  [v14 setUserData:invocationCopy];

  v11 = objc_alloc_init(SKIDirectInvocationContext);
  v12 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v11 payload:v14];
  v13 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v12];
  [(SRSiriViewController *)self siriPresentation:presentationCopy handleStartLocalRequest:v13 turnIdentifier:identifierCopy];
}

- (void)siriKeyboardViewDidChange:(id *)change
{
  if (change)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CC950(self, v5, change);
    }

    p_keyboardInfo = &self->_keyboardInfo;
    v8 = *&change->var3.origin.y;
    v7 = *&change->var3.size.height;
    *&self->_keyboardInfo.enabled = *&change->var0;
    *&self->_keyboardInfo.keyboardFrame.origin.y = v8;
    *&self->_keyboardInfo.keyboardFrame.size.height = v7;
    _presentation = [(SRSiriViewController *)self _presentation];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      _presentation2 = [(SRSiriViewController *)self _presentation];
      v12 = *&p_keyboardInfo->keyboardFrame.origin.y;
      v13[0] = *&p_keyboardInfo->enabled;
      v13[1] = v12;
      v13[2] = *&p_keyboardInfo->keyboardFrame.size.height;
      [_presentation2 updateKeyboardInfo:v13];
    }
  }
}

- (BOOL)_siriIsShowingPasscodeUnlock
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  _presentation2 = [(SRSiriViewController *)self _presentation];
  siriIsShowingPasscodeUnlock = [_presentation2 siriIsShowingPasscodeUnlock];

  return siriIsShowingPasscodeUnlock;
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  if (self->_session != sessionCopy)
  {
    v6 = sessionCopy;
    objc_storeStrong(&self->_session, session);
    sessionCopy = v6;
  }
}

- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidRequestKeyboard:enabledCopy];
}

- (void)_setShowKeyboardIfTextInputEnabled:(BOOL)enabled minimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  enabledCopy = enabled;
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidRequestKeyboard:enabledCopy minimized:minimizedCopy];
}

- (void)didReceiveHelpAction
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceiveHelpAction];
  }
}

- (void)didReceiveReportBugAction
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCA4C();
  }

  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceiveReportBugAction];
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

  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceiveBugButtonLongPress];
  }
}

- (void)didReceiveShortTapActionWIthRequestOptions:(id)options
{
  optionsCopy = options;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 shortTapActionWithRequestOptions:optionsCopy];
  }
}

- (void)_dismissWithReason:(int64_t)reason
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

  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    dismissalUserInfo = [_presentation2 dismissalUserInfo];
  }

  else
  {
    dismissalUserInfo = 0;
  }

  v12 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100167EC8];
  [v12 serviceRequestsDismissalWithUserInfo:dismissalUserInfo withReason:reason];
}

- (void)hostApplicationWillResignActive
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 hostApplicationWillResignActive];
  }

  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager hostWillResignActive];
}

- (void)hostApplicationWillEnterForeground
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 hostApplicationWillEnterForeground];
  }
}

- (void)hostApplicationRequestsEmitUIStateTransitionForSiriDismissalWithReason:(int)reason completion:(id)completion
{
  v4 = *&reason;
  completionCopy = completion;
  v5 = +[SRUIFInstrumentationManager sharedManager];
  [v5 emitUIStateTransitionForSiriDismissalWithReason:v4];

  v6 = +[SRUIFInstrumentationManager sharedManager];
  currentInstrumentationTurnContext = [v6 currentInstrumentationTurnContext];
  turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, turnIdentifier);
  }
}

- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)event
{
  eventCopy = event;
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:eventCopy];
}

- (void)hostApplicationRequestsEmitInstrumentationEvent:(id)event atTime:(unint64_t)time
{
  eventCopy = event;
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:eventCopy atTime:time];
}

- (void)hostApplicationRequestsScreenshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(SSUIService);
  [v4 showScreenshotUI];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSiriViewController hostApplicationRequestsScreenshotWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #screenshot: taking screenshot", &v6, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)hasContentAtPoint:(id)point completion:(id)completion
{
  pointCopy = point;
  completionCopy = completion;
  if (self->_preventOutsideTouchesFromDismissingSiri)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[SRSiriViewController hasContentAtPoint:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #dismissal - skipping content at point because _preventOutsideTouchesFromDismissingSiri is YES", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else if (pointCopy && ([pointCopy CGPointValue], v10 = v9, v12 = v11, SiriUIIsValidPoint()))
  {
    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005A77C;
    v19[3] = &unk_100167EF0;
    objc_copyWeak(v21, buf);
    v21[1] = v10;
    v21[2] = v12;
    v13 = completionCopy;
    v19[4] = self;
    v20 = v13;
    v14 = objc_retainBlock(v19);
    presentation = [(SRSiriViewController *)self presentation];
    if (objc_opt_respondsToSelector())
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10005ACBC;
      v16[3] = &unk_100167F18;
      v17 = v13;
      v18 = v14;
      [presentation hasContentAtPoint:v16 completion:{*&v10, *&v12}];
    }

    else
    {
      (v14[2])(v14);
    }

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region
{
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCC48(v7, event);
  }

  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation didDetectGestureEvent:event inRegion:region];
  }
}

- (void)noteApplicationTransition
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCD1C();
  }

  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation noteApplicationTransition];
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options
{
  optionsCopy = options;
  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation siriWillBeginTearDownForDismissalReason:reason withOriginalDismissalOptions:optionsCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [presentation siriWillBeginTearDownForDismissalReason:reason];
  }

  [(SRSiriSystemUIController *)self->_systemUIController tearDown];
  systemUIController = self->_systemUIController;
  self->_systemUIController = 0;
}

- (void)dismissSiriResults
{
  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation dismissSiriResults];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v19.receiver = self;
  v19.super_class = SRSiriViewController;
  [(SRSiriViewController *)&v19 pressesBegan:beganCopy withEvent:event];
  allObjects = [beganCopy allObjects];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [allObjects countByEnumeratingWithState:&v15 objects:v22 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) key];
        keyCode = [v12 keyCode];

        if (keyCode == 41)
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
      v9 = [allObjects countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)hostApplicationPresentationStateUpdatedFromPresentationState:(int64_t)state toPresentationState:(int64_t)presentationState
{
  self->_presentationState = presentationState;
  presentation = [(SRSiriViewController *)self presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    presentation2 = [(SRSiriViewController *)self presentation];
    [presentation2 presentationStateUpdatedFromPresentationState:state toPresentationState:presentationState];
  }
}

- (void)hostApplicationDidSuccessfullyHandleCommandsInDelayedActionCommand:(id)command
{
  commandCopy = command;
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

- (void)animatedDisappearanceDidBeginWithDuration:(double)duration reason:(int64_t)reason
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CCDEC();
  }

  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation animatedDisappearanceDidBeginWithDuration:reason reason:duration];
  }
}

- (void)setPresentation:(id)presentation animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  presentationCopy = presentation;
  completionCopy = completion;
  v11 = completionCopy;
  if (self->_presentation != presentationCopy)
  {
    view = [(SRSiriViewController *)self view];
    window = [view window];
    [window frame];
    v53.origin.x = CGRectZero.origin.x;
    v53.origin.y = CGRectZero.origin.y;
    v53.size.width = CGRectZero.size.width;
    v53.size.height = CGRectZero.size.height;
    v14 = CGRectEqualToRect(v52, v53);

    if (v14)
    {
      view2 = [(SRSiriViewController *)self view];
      window2 = [view2 window];
      v17 = +[UIScreen mainScreen];
      [v17 bounds];
      [window2 setFrame:?];
    }

    v18 = self->_presentation;
    _presentationViewController = [(SRSiriViewController *)self _presentationViewController];
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
      if (animatedCopy)
      {
        v22 = @" (animated)";
      }

      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = presentationCopy;
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
      v47 = presentationCopy;
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

    objc_storeStrong(&self->_presentation, presentation);
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

    view3 = [(SRSiriViewController *)self view];
    layer = [view3 layer];
    [layer setHitTestsAsOpaque:v26];

    _presentationViewController2 = [(SRSiriViewController *)self _presentationViewController];
    if (_presentationViewController2)
    {
      [(SRSiriViewController *)self addChildViewController:_presentationViewController2];
      [_presentationViewController2 didMoveToParentViewController:self];
      if (animatedCopy && _presentationViewController)
      {
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10005B990;
        v41[3] = &unk_100167A80;
        v42 = _presentationViewController;
        v43 = v11;
        [(SRSiriViewController *)self transitionFromViewController:v42 toViewController:_presentationViewController2 duration:5242880 options:0 animations:v41 completion:0.2];

LABEL_49:
        goto LABEL_50;
      }

      view4 = [_presentationViewController2 view];
      [view4 setAutoresizingMask:18];

      view5 = [_presentationViewController2 view];
      view6 = [(SRSiriViewController *)self view];
      [view6 bounds];
      [view5 setFrame:?];

      view7 = [(SRSiriViewController *)self view];
      view8 = [_presentationViewController2 view];
      [view7 addSubview:view8];

      if (_presentationViewController)
      {
        goto LABEL_36;
      }

      if (v18)
      {
        _host = [(SRSiriViewController *)self _host];
        v37 = _host;
        if (v11)
        {
          v40 = v11;
        }

        else
        {
          v40 = &stru_100167F58;
        }

        [_host serviceViewControllerRequestsPresentation:v40];
        goto LABEL_48;
      }
    }

    else if (_presentationViewController)
    {
LABEL_36:
      [_presentationViewController willMoveToParentViewController:0];
      view9 = [_presentationViewController view];
      [view9 removeFromSuperview];

      [_presentationViewController removeFromParentViewController];
      if (_presentationViewController2)
      {
        goto LABEL_37;
      }

      _host2 = [(SRSiriViewController *)self _host];
      v37 = _host2;
      if (v11)
      {
        v38 = v11;
      }

      else
      {
        v38 = &stru_100167F78;
      }

      [_host2 serviceViewControllerRequestsDismissalWithDismissalReason:0 completion:v38];
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

  if (completionCopy)
  {
    completionCopy->invoke(completionCopy, 0);
  }

LABEL_50:
}

- (void)updateToPresentationWithIdentifier:(id)identifier presentationProperties:(id)properties animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  propertiesCopy = properties;
  completionCopy = completion;
  identifierCopy = identifier;
  [(SRSiriViewController *)self _restorePreviousConversation];
  v12 = +[SRSiriPresentationPluginHost sharedSiriPresentationPluginHost];
  v13 = [v12 presentationWithIdentifier:identifierCopy delegate:self dataSource:self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [propertiesCopy objectForKey:AFUIPresentationPropertiesShouldSuppressErrorTTSKey];
      [v13 setShouldSuppressErrorTTS:{objc_msgSend(v14, "BOOLValue")}];
    }

    v15 = [propertiesCopy objectForKey:AFUIPresentationPropertiesRequestSourceKey];
    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 siriWillActivateFromSource:{objc_msgSend(v15, "integerValue")}];
    }

    v16 = [propertiesCopy objectForKey:AFUIPresentationPropertiesShowsSensitiveUIKey];
    bOOLValue = [v16 BOOLValue];

    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 setShowsSensitiveUI:bOOLValue];
    }

    [(SRSiriViewController *)self setPresentation:v13 animated:animatedCopy completion:completionCopy];
  }
}

- (CGRect)frameForApplication:(id)application
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (-[SRSiriViewController _presentation](self, "_presentation"), v6 = objc_claimAutoreleasedReturnValue(), [v6 effectiveContentFrame], v8 = v7, v10 = v9, v12 = v11, v14 = v13, v6, v26.origin.x = CGRectZero.origin.x, v26.origin.y = CGRectZero.origin.y, v26.size.width = CGRectZero.size.width, v26.size.height = CGRectZero.size.height, v24.origin.x = v8, v24.origin.y = v10, v24.size.width = v12, v24.size.height = v14, CGRectEqualToRect(v24, v26)))
  {
    view = [(SRSiriViewController *)self view];
    [view frame];
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

- (void)_openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options conversationId:(id)conversationId completion:(id)completion
{
  placeCopy = place;
  lCopy = l;
  idCopy = id;
  optionsCopy = options;
  conversationIdCopy = conversationId;
  completionCopy = completion;
  v19 = [(SRSiriViewController *)self _punchoutMetricsAceCommandIdForItemWithIdentifier:conversationIdCopy];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10005BEE8;
  v34[3] = &unk_100167FA0;
  v20 = completionCopy;
  v35 = v20;
  v21 = [(SRSiriViewController *)self _hostWithErrorHandler:v34];
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10005BF08;
  v26[3] = &unk_100167FC8;
  objc_copyWeak(&v31, &location);
  v22 = lCopy;
  v27 = v22;
  v23 = idCopy;
  v28 = v23;
  v32 = placeCopy;
  v24 = v20;
  v30 = v24;
  v25 = v19;
  v29 = v25;
  [v21 openURL:v22 bundleId:v23 inPlace:placeCopy launchOptions:optionsCopy completion:v26];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)_delayAceCommandSuccess:(id)success forDuration:(double)duration
{
  successCopy = success;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    aceId = [successCopy aceId];
    *buf = 136315650;
    v16 = "[SRSiriViewController _delayAceCommandSuccess:forDuration:]";
    v17 = 2048;
    durationCopy = duration;
    v19 = 2112;
    v20 = aceId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord scheduling a delayed action of %f seconds for command %@", buf, 0x20u);
  }

  [(SRSiriViewController *)self _didStartActionForAceCommand:successCopy];
  objc_initWeak(buf, self);
  v10 = dispatch_time(0, (duration * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C210;
  block[3] = &unk_100167FF0;
  v14[1] = *&duration;
  v13 = successCopy;
  v11 = successCopy;
  objc_copyWeak(v14, buf);
  dispatch_after(v10, &_dispatch_main_q, block);
  objc_destroyWeak(v14);

  objc_destroyWeak(buf);
}

- (void)_didReceiveAceCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SRSiriViewController _didReceiveAceCommand:completion:]";
    v12 = 2112;
    selfCopy = self;
    v14 = 2112;
    v15 = commandCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@ received ACE command: %@", &v10, 0x20u);
  }

  _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
  [_aceCommandRecords registerAceCommand:commandCopy completion:completionCopy];
}

- (void)_didStartActionForAceCommand:(id)command
{
  commandCopy = command;
  if (objc_opt_respondsToSelector())
  {
    [commandCopy _afui_updateMapsAnalytics];
  }

  _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
  [_aceCommandRecords recordActionStartedForAceCommand:commandCopy];

  if ([(SASRequestOptions *)self->_requestOptions inputType]== 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (AFIsInternalInstall())
      {
        v14 = @"bestTextInterpretation";
        af_bestTextInterpretation = [commandCopy af_bestTextInterpretation];
        v15 = af_bestTextInterpretation;
        v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        v7 = 0;
      }

      _analytics = [(SRSiriViewController *)self _analytics];
      v10 = _analytics;
      v11 = 1505;
LABEL_14:
      [_analytics logEventWithType:v11 context:v7];

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (AFIsInternalInstall())
      {
        v12 = @"bestTextInterpretation";
        af_bestTextInterpretation2 = [commandCopy af_bestTextInterpretation];
        v13 = af_bestTextInterpretation2;
        v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      }

      else
      {
        v7 = 0;
      }

      _analytics = [(SRSiriViewController *)self _analytics];
      v10 = _analytics;
      v11 = 1507;
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_didStartActionForItemAtIndexPath:(id)path inConversation:(id)conversation
{
  v5 = [conversation itemAtIndexPath:path];
  aceCommandIdentifier = [v5 aceCommandIdentifier];

  v6 = aceCommandIdentifier;
  if (aceCommandIdentifier)
  {
    v7 = [(SRSiriViewController *)self _aceCommandWithIdentifier:aceCommandIdentifier];
    [(SRSiriViewController *)self _didStartActionForAceCommand:v7];

    v6 = aceCommandIdentifier;
  }
}

- (id)_aceCommandWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
  v6 = [_aceCommandRecords aceCommandWithIdentifier:identifierCopy];

  return v6;
}

- (void)_speakText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice promptStyle:(id)style provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration delayed:(BOOL)self0 canUseServerTTS:(BOOL)self1 speakableUtteranceParser:(id)self2 analyticsContext:(id)self3 speakableContextInfo:(id)self4 preparation:(id)self5 completion:(id)self6
{
  *(&v16 + 1) = __PAIR16__(s, delayed);
  LOBYTE(v16) = provisionally;
  [SRSiriViewController _speakText:"_speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:" audioData:text ignoreMuteSwitch:0 identifier:0 sessionId:identifier preferredVoice:id language:voice gender:duration promptStyle:0 provisionally:0 eligibleAfterDuration:style delayed:v16 canUseServerTTS:parser speakableUtteranceParser:context analyticsContext:info speakableContextInfo:preparation preparation:completion completion:?];
}

- (void)_speakText:(id)text audioData:(id)data ignoreMuteSwitch:(BOOL)switch identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)self0 promptStyle:(id)self1 provisionally:(BOOL)self2 eligibleAfterDuration:(double)self3 delayed:(BOOL)self4 canUseServerTTS:(BOOL)self5 speakableUtteranceParser:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8 preparation:(id)self9 completion:(id)completion
{
  textCopy = text;
  dataCopy = data;
  identifierCopy = identifier;
  idCopy = id;
  voiceCopy = voice;
  languageCopy = language;
  genderCopy = gender;
  styleCopy = style;
  parserCopy = parser;
  contextCopy = context;
  infoCopy = info;
  preparationCopy = preparation;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10005CE04;
  v66[3] = &unk_100168018;
  completionCopy = completion;
  v67 = completionCopy;
  v32 = objc_retainBlock(v66);
  if (textCopy)
  {
    v33 = [textCopy length];
    if (!dataCopy && !v33)
    {
      goto LABEL_4;
    }
  }

  else if (!dataCopy)
  {
LABEL_4:
    (v32[2])(v32, 2, 0);
    goto LABEL_35;
  }

  if (AFDeviceSupportsTTS())
  {
    v34 = AFSiriLogContextConnection;
    v35 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (dataCopy)
    {
      if (v35)
      {
        *buf = 136315138;
        v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s #tts 5 audioData", buf, 0xCu);
      }

      [(SRUIFSpeechSynthesizing *)self->_ttsManager enqueueAudioData:dataCopy identifier:identifierCopy sessionId:idCopy provisionally:provisionally eligibleAfterDuration:completionCopy completion:duration];
      goto LABEL_35;
    }

    if (s)
    {
      if (!v35)
      {
        goto LABEL_20;
      }

      *buf = 136315394;
      v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
      v70 = 2112;
      v71 = textCopy;
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
      v71 = textCopy;
      v37 = "%s #tts 5 text:%{sensitive}@";
    }

    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, buf, 0x16u);
LABEL_20:
    v65 = 0;
    v64 = 0;
    v51 = [parserCopy parseStringWithFormat:textCopy error:&v64 containsPrivacySensitiveContents:&v65];
    v48 = v64;
    if (!v51)
    {
      v45 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR);
      if (s)
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
    v60 = preparationCopy;
    v59 = v51;
    v62 = v65;
    v47 = objc_retainBlock(v58);
    v38 = +[NSUUID UUID];
    uUIDString = [v38 UUIDString];

    synthesisPreparationDictionary = self->_synthesisPreparationDictionary;
    v40 = objc_retainBlock(v47);
    [(NSMutableDictionary *)synthesisPreparationDictionary setObject:v40 forKey:uUIDString];

    v41 = AFSiriLogContextConnection;
    v42 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    sCopy2 = s;
    if (s)
    {
      if (v42)
      {
        *buf = 136315650;
        v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
        v70 = 2112;
        v71 = textCopy;
        v72 = 2112;
        v73 = identifierCopy;
        v44 = "%s #tts 6 Enqueuing %@ identifier=%@";
LABEL_29:
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 0x20u);
        sCopy2 = s;
      }
    }

    else if (v42)
    {
      *buf = 136315651;
      v69 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]";
      v70 = 2117;
      v71 = textCopy;
      v72 = 2112;
      v73 = identifierCopy;
      v44 = "%s #tts 6 Enqueuing %{sensitive}@ identifier=%@";
      goto LABEL_29;
    }

    BYTE3(v46) = sCopy2 & (v65 ^ 1);
    BYTE2(v46) = delayed;
    BYTE1(v46) = provisionally;
    LOBYTE(v46) = 0;
    [SRUIFSpeechSynthesizing enqueueText:"enqueueText:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:" identifier:textCopy sessionId:identifierCopy preferredVoice:idCopy language:voiceCopy gender:languageCopy promptStyle:genderCopy isPhonetic:duration provisionally:styleCopy eligibleAfterDuration:v46 delayed:uUIDString canUseServerTTS:v32 preparationIdentifier:contextCopy completion:infoCopy analyticsContext:? speakableContextInfo:?];

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

- (void)_didCompleteActionForAceCommand:(id)command success:(BOOL)success
{
  successCopy = success;
  commandCopy = command;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(SRSiriViewController *)self _presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:commandCopy])
  {
    v23 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[SRSiriViewController _didCompleteActionForAceCommand:success:]";
      v33 = 2112;
      v34 = commandCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s #tts 33 NOT recording SAUISayIt completed for SAUISayIt=%@", buf, 0x16u);
    }

    objc_storeStrong(&self->_previousSayItCommand, command);
    _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
    [_aceCommandRecords recordActionStoppedForAceCommand:commandCopy];
    goto LABEL_20;
  }

  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[SRSiriViewController _didCompleteActionForAceCommand:success:]";
    v33 = 2112;
    v34 = commandCopy;
    v35 = 1024;
    v36 = successCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #tts 33 recording command completed for aceCommand=%@ success=%i", buf, 0x1Cu);
  }

  _aceCommandRecords2 = [(SRSiriViewController *)self _aceCommandRecords];
  [_aceCommandRecords2 recordActionCompletedForAceCommand:commandCopy success:successCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _aceCommandRecords = commandCopy;
    af_dialogPhase = [_aceCommandRecords af_dialogPhase];
    isReflectionDialogPhase = [af_dialogPhase isReflectionDialogPhase];

    if ((isReflectionDialogPhase & 1) == 0)
    {
      v24 = commandCopy;
      _aceCommandRecords3 = [(SRSiriViewController *)self _aceCommandRecords];
      refId = [_aceCommandRecords refId];
      v14 = [_aceCommandRecords3 pendingAddViewsWithReflectionDialogPhaseWithRefId:refId];

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
              v36 = successCopy;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #tts recording reflectionDialogPhase command completed command=%@ success=%i", buf, 0x1Cu);
            }

            _aceCommandRecords4 = [(SRSiriViewController *)self _aceCommandRecords];
            [_aceCommandRecords4 recordActionCompletedForAceCommand:v20 success:1];
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }

      commandCopy = v24;
    }

LABEL_20:
  }
}

- (BOOL)_presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:(id)command
{
  commandCopy = command;
  presentation = [(SRSiriViewController *)self presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    presentation2 = [(SRSiriViewController *)self presentation];
    v8 = [presentation2 performSelector:"shouldProceedToNextCommandAtSpeechSynthesisEnd"];
    v9 = v8 != 0;

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      presentation3 = [(SRSiriViewController *)self presentation];
      v13 = @"doesn't allow";
      v15 = 136315906;
      v16 = "[SRSiriViewController _presentationAllowsRecordingActionCompletedForSpeechSynthesisCommand:]";
      v17 = 2112;
      v18 = presentation3;
      if (v8)
      {
        v13 = @"allows";
      }

      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = commandCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #tts presentation:%@ %@ recording SAUISayIt=%@ completed", &v15, 0x2Au);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_synthesizeSpeechWithText:(id)text identifier:(id)identifier sessionId:(id)id isPhonetic:(BOOL)phonetic provisionally:(BOOL)provisionally completion:(id)completion
{
  textCopy = text;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &stru_1001680A8;
  }

  idCopy = id;
  identifierCopy = identifier;
  v18 = objc_retainBlock(completionCopy);
  v19 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SRSiriViewController _synthesizeSpeechWithText:identifier:sessionId:isPhonetic:provisionally:completion:]";
    v23 = 2112;
    v24 = textCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s #tts Enqueueing text=%@", buf, 0x16u);
  }

  WORD1(v20) = 256;
  BYTE1(v20) = provisionally;
  LOBYTE(v20) = phonetic;
  [SRUIFSpeechSynthesizing enqueueText:"enqueueText:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:" identifier:textCopy sessionId:identifierCopy preferredVoice:idCopy language:0 gender:0 promptStyle:0 isPhonetic:0.4 provisionally:0 eligibleAfterDuration:v20 delayed:0 canUseServerTTS:v18 preparationIdentifier:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

+ (id)_speechIdentifierForConversationItem:(id)item
{
  itemCopy = item;
  aceObject = [itemCopy aceObject];
  aceId = [aceObject aceId];

  if (!aceId)
  {
    aceId = [itemCopy aceCommandIdentifier];
  }

  return aceId;
}

- (void)speechSynthesisGetPreparedTextForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  synthesisPreparationDictionary = self->_synthesisPreparationDictionary;
  completionCopy = completion;
  v9 = [(NSMutableDictionary *)synthesisPreparationDictionary objectForKey:identifierCopy];
  v10 = AFSiriLogContextConnection;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[SRSiriViewController speechSynthesisGetPreparedTextForIdentifier:completion:]";
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #tts 11 A Getting text for preparation identifier %@", &v11, 0x16u);
    }

    (v9)[2](v9, completionCopy);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCF7C();
    }

    completionCopy[2](completionCopy, 0, 1);
  }

  [(NSMutableDictionary *)self->_synthesisPreparationDictionary removeObjectForKey:identifierCopy];
}

- (void)speechSynthesisDidStartSpeakingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SRSiriViewController speechSynthesisDidStartSpeakingWithIdentifier:]";
    v11 = 2112;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #tts identifier=%@", &v9, 0x16u);
  }

  [UIApp finishedIPTest:SUICPPTTestNameSiriBringupToCarPlayMessageReading];
  self->_synthesisIsSpeaking = 1;
  self->_ttsSpokenForRequest = 1;
  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
  _presentation = [(SRSiriViewController *)self _presentation];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidStartSpeakingWithIdentifier:identifierCopy];
  }
}

- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty
{
  emptyCopy = empty;
  identifierCopy = identifier;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[SRSiriViewController speechSynthesisDidStopSpeakingWithIdentifier:queueIsEmpty:]";
    v25 = 2112;
    v26 = identifierCopy;
    v27 = 1024;
    v28 = emptyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #tts #punchout 6 identifier=%@ queueIsEmpty=%i", buf, 0x1Cu);
  }

  self->_synthesisIsSpeaking = 0;
  if (emptyCopy && self->_enqueuedSuggestion)
  {
    [(SRSiriViewController *)self _speakEnqueuedSpokenSuggestion];
  }

  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidStopSpeakingWithIdentifier:identifierCopy speechQueueIsEmpty:emptyCopy];
  }

  if (emptyCopy && self->_ttsDelayedBlocks)
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

- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005DF88;
  v12[3] = &unk_1001680D0;
  completionCopy = completion;
  v13 = completionCopy;
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

- (void)notifyClientStateManagerSpeakingEnded:(id)ended
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

- (id)domainObjectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _domainObjectStorageConnection = [(SRSiriViewController *)self _domainObjectStorageConnection];
  absoluteString = [identifierCopy absoluteString];

  v7 = [_domainObjectStorageConnection domainObjectForKey:absoluteString];

  v8 = [AceObject aceObjectWithDictionary:v7];

  return v8;
}

- (void)setDomainObject:(id)object forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectCopy = object;
  _domainObjectStorageConnection = [(SRSiriViewController *)self _domainObjectStorageConnection];
  dictionary = [objectCopy dictionary];

  absoluteString = [identifierCopy absoluteString];

  [_domainObjectStorageConnection setDomainObject:dictionary forKey:absoluteString];
}

- (void)audioPlayerStartPlaying:(id)playing
{
  [(SRSiriViewController *)self _setAudioPlayerIsPlaying:1];
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {

    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }
}

- (void)audioPlayer:(id)player didFinishPlayback:(id)playback
{
  playerCopy = player;
  playbackCopy = playback;
  [(SRSiriViewController *)self _setAudioPlayerIsPlaying:0];
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {
    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }

  _session = [(SRSiriViewController *)self _session];
  [_session forceAudioSessionActive];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _didCompleteActionForAceCommand:playbackCopy success:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _activeConversation = [(SRSiriViewController *)self _activeConversation];
      conversationItemIdentifier = [playerCopy conversationItemIdentifier];
      v10 = [_activeConversation itemWithIdentifier:conversationItemIdentifier];

      aceCommandIdentifier = [v10 aceCommandIdentifier];
      if (aceCommandIdentifier)
      {
        v12 = [(SRSiriViewController *)self _aceCommandWithIdentifier:aceCommandIdentifier];
        [(SRSiriViewController *)self _didCompleteActionForAceCommand:v12 success:1];
        [playerCopy setConversationItemIdentifier:0];
      }
    }
  }
}

- (id)audioPlayer:(id)player audioURLForCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message = [commandCopy message];
    if (!message)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      message = 0;
LABEL_16:
      v13 = 0;
      goto LABEL_19;
    }

    v6 = commandCopy;
    context = [v6 context];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      message = [v6 context];
    }

    else
    {
      message = 0;
    }

    if (!message)
    {
      goto LABEL_16;
    }
  }

  messageType = [message messageType];
  v10 = [messageType isEqualToString:SASmsSmsMessageTypeAudioMessageValue];

  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD074();
    }

    goto LABEL_16;
  }

  v11 = +[SiriUISnippetManager sharedInstance];
  v12 = [v11 speakableProviderForObject:message];

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

- (void)aceCommandRecords:(id)records didChangeResultForCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  _session = [(SRSiriViewController *)self _session];
  v9 = _session;
  if (completionCopy)
  {
    [_session resultDidChangeForAceCommand:commandCopy completion:completionCopy];
  }

  else
  {
    [_session resultDidChangeForAceCommand:commandCopy];
  }
}

- (void)siriSessionWillProcessAceCommand:(id)command
{
  commandCopy = command;
  if (_os_feature_enabled_impl())
  {
    v4 = MDDialogTransformer;
  }

  else
  {
    v4 = SRModeDialogTransformer;
  }

  if (([(__objc2_class *)v4 supportsTransformationForAceCommand:commandCopy]& 1) == 0)
  {
    _analytics = [(SRSiriViewController *)self _analytics];
    _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
    [_analytics logClientFeedbackPresented:commandCopy dialogIdentifierProvider:_instrumentationManager];
  }
}

- (void)siriSessionResultForAceCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
  v9 = [_aceCommandRecords resultForAceCommand:commandCopy];

  (*(completion + 2))(completionCopy, v9);
}

- (void)siriSessionWillStartRequestWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = optionsCopy;
  if ([v8 acousticIdEnabled])
  {
    _isAcousticIdAllowed = [(SRSiriViewController *)self _isAcousticIdAllowed];
  }

  else
  {
    _isAcousticIdAllowed = 0;
  }

  [v8 setAcousticIdEnabled:_isAcousticIdAllowed];
  _presentation = [(SRSiriViewController *)self _presentation];
  v11 = objc_opt_respondsToSelector();

  v12 = v8;
  if (v11)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v12 = [_presentation2 configureOptionsForImminentRequest:v8];
  }

  requestInfo = [v12 requestInfo];
  speechRequestOptions = [requestInfo speechRequestOptions];

  if ([speechRequestOptions activationEvent] == 5)
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

    [speechRequestOptions setPresentationMode:v18];
    requestInfo2 = [v12 requestInfo];
    [requestInfo2 setSpeechRequestOptions:speechRequestOptions];
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v12);
  }
}

- (void)_updateKeyboardStateWithError:(id)error
{
  errorCopy = error;
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

    v7 = [errorCopy code] != 207 && objc_msgSend(errorCopy, "code") != 203;
    LOBYTE(v4) = v6 & v7;
  }

  else
  {
    LOBYTE(v4) = (self->_requestOptions == 0) | v4;
  }

  v5 = 1;
LABEL_19:
  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    currentSnippetContainsFooterButtons = [_presentation2 currentSnippetContainsFooterButtons];

    LOBYTE(v4) = currentSnippetContainsFooterButtons | v4;
  }

  [(SRSiriViewController *)self _updateKeyboardState:v5 minimized:v4 & 1];
}

- (void)siriSessionWillStartUIRequestWithText:(id)text completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  if (+[AFSystemAssistantExperienceStatusManager saeAvailable])
  {
    [(SRSiriViewController *)self _insertUserUtteranceViewForText:textCopy];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    v8 = objc_alloc_init(SAUIUserUtteranceView);
    [v8 setText:textCopy];
    v9 = +[NSUUID UUID];
    uUIDString = [v9 UUIDString];
    [v8 setAceId:uUIDString];

    v11 = objc_alloc_init(SAUIAddViews);
    v17 = v8;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    [v11 setViews:v12];

    v13 = +[NSUUID UUID];
    uUIDString2 = [v13 UUIDString];
    [v11 setAceId:uUIDString2];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005EF6C;
    v15[3] = &unk_100168140;
    v16 = handlerCopy;
    [(SRSiriViewController *)self siriSessionDidReceiveAddViewsCommand:v11 completion:v15];
  }
}

- (void)siriSessionReplayAll:(unint64_t)all with:(id)with
{
  withCopy = with;
  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:1];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005F078;
  v7[3] = &unk_1001676A0;
  objc_copyWeak(&v8, &location);
  [SiriSharedUIReplayUtilityWrapper replayAll:all from:withCopy completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)siriSessionReplayAt:(unint64_t)at with:(id)with
{
  withCopy = with;
  [(SRSiriViewController *)self _registerReplyCallbackWithOverrideEnabled:1];
  [SiriSharedUIReplayUtilityWrapper replayAt:at from:withCopy];
}

- (void)siriSessionSetReplayOverridePath:(id)path
{
  path = [path path];
  [SiriSharedUIReplayUtilityWrapper setReplayOverridePath:path];
}

- (void)siriSessionWillCancelRequest
{
  [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:0];
  [(SRSiriViewController *)self _cancelSpeechSynthesis];
  _utteranceToSpeakAfterClearScreenCommand = [(SRSiriViewController *)self _utteranceToSpeakAfterClearScreenCommand];
  v4 = [_utteranceToSpeakAfterClearScreenCommand length];

  if (v4)
  {
    v7 = +[AFSpeakableUtteranceParser sruif_speakableUtteranceParserForCurrentLanguage];
    [v7 setHandleTTSCodes:1];
    _utteranceToSpeakAfterClearScreenCommand2 = [(SRSiriViewController *)self _utteranceToSpeakAfterClearScreenCommand];
    LOWORD(v6) = 256;
    [(SRSiriViewController *)self _speakText:_utteranceToSpeakAfterClearScreenCommand2 identifier:0 sessionId:0 preferredVoice:0 promptStyle:0 provisionally:0 eligibleAfterDuration:0.0 delayed:v6 canUseServerTTS:v7 speakableUtteranceParser:0 analyticsContext:0 speakableContextInfo:0 preparation:0 completion:?];

    [(SRSiriViewController *)self _setUtteranceToSpeakAfterClearScreenCommand:0];
  }
}

- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level
{
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    *&v4 = level;
    [_presentation siriAudioRecordingDidChangePowerLevel:v4];
  }
}

- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level peakLevel:(float)peakLevel
{
  [(SRSiriViewController *)self siriSessionAudioRecordingDidChangePowerLevel:?];
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    *&v7 = level;
    *&v8 = peakLevel;
    [_presentation siriAudioRecordingDidChangePowerLevel:v7 peakLevel:v8];
  }
}

- (void)siriSessionDidFinishRequestWithError:(id)error
{
  errorCopy = error;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"success";
    if (errorCopy)
    {
      v6 = errorCopy;
    }

    *buf = 136315394;
    v13 = "[SRSiriViewController siriSessionDidFinishRequestWithError:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #session %@", buf, 0x16u);
  }

  if ([(SRSiriViewController *)self textInputEnabled]&& [(SRSiriViewController *)self _isRequestActive]&& ![(SRSiriViewController *)self _isUserUtteranceTapToEditInProgress])
  {
    [(SRSiriViewController *)self _updateKeyboardStateWithError:errorCopy];
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
  [(SRSiriViewController *)self _handleRequestError:errorCopy completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)siriSessionDidTransitionFromState:(int64_t)state toState:(int64_t)toState event:(int64_t)event machAbsoluteTransitionTime:(double)time
{
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager processSessionEvent:event isSpeechSynthesisSpeaking:-[SRSiriViewController _isSpeechSynthesisSpeaking](self machAbsoluteTime:{"_isSpeechSynthesisSpeaking"), time}];

  if (toState != state)
  {
    objc_initWeak(location, self);
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_10005FA38;
    v34 = &unk_100168190;
    objc_copyWeak(v35, location);
    v35[1] = state;
    v35[2] = toState;
    v35[3] = *&time;
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

  if ((toState - 1) > 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = qword_1000F69E8[toState - 1];
  }

  self->_siriState = v18;
  [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded:v31];
  _voicemailPlayer = [(SRSiriViewController *)self _voicemailPlayer];
  [_voicemailPlayer stopPlaying];

  _audioMessagePlayer = [(SRSiriViewController *)self _audioMessagePlayer];
  [_audioMessagePlayer stopPlaying];

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

  _presentation = [(SRSiriViewController *)self _presentation];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v29 = _presentation2;
    if ((state - 1) > 3)
    {
      v30 = 0;
    }

    else
    {
      v30 = qword_1000F69E8[state - 1];
    }

    [_presentation2 siriDidTransitionFromState:v30 event:{sub_10005FB90(_presentation2, event)}];
  }
}

- (void)siriSessionDidStartNewTurn:(id)turn
{
  turnCopy = turn;
  [(SRSiriViewController *)self siriSessionDidStartNewTurn:turnCopy associatedLaunchStartContext:0 machAbsoluteTime:0 linkPreviousTurn:mach_absolute_time()];
}

- (void)siriSessionDidStartNewTurn:(id)turn associatedLaunchStartContext:(id)context machAbsoluteTime:(double)time linkPreviousTurn:(BOOL)previousTurn
{
  previousTurnCopy = previousTurn;
  turnCopy = turn;
  contextCopy = context;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    _session = [(SRSiriViewController *)self _session];
    turnIdentifier = [turnCopy turnIdentifier];
    *buf = 136315650;
    v40 = "[SRSiriViewController siriSessionDidStartNewTurn:associatedLaunchStartContext:machAbsoluteTime:linkPreviousTurn:]";
    v41 = 2112;
    v42 = _session;
    v43 = 2112;
    v44 = turnIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ indicates a new turn %@ has started", buf, 0x20u);
  }

  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
  turnIdentifier2 = [currentInstrumentationTurnContext turnIdentifier];

  v19 = +[SRUIFInstrumentationManager sharedManager];
  [v19 storeCurrentInstrumentationTurnContext:turnCopy];

  if (contextCopy)
  {
    _instrumentationManager2 = [(SRSiriViewController *)self _instrumentationManager];
    [_instrumentationManager2 emitInstrumentation:contextCopy atTime:time];
  }

  if (previousTurnCopy)
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      turnIdentifier3 = [turnCopy turnIdentifier];
      *buf = 136315650;
      v40 = "[SRSiriViewController siriSessionDidStartNewTurn:associatedLaunchStartContext:machAbsoluteTime:linkPreviousTurn:]";
      v41 = 2112;
      v42 = turnIdentifier2;
      v43 = 2112;
      v44 = turnIdentifier3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #instrumentation linking previous turn %@ with the new turn %@", buf, 0x20u);
    }

    v24 = objc_alloc_init(SISchemaConversationTrace);
    if (turnIdentifier2)
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
    _instrumentationManager3 = [(SRSiriViewController *)self _instrumentationManager];
    [_instrumentationManager3 emitInstrumentation:v24];
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

- (void)siriSessionRequestsInstrumentingMessage:(id)message machAbsoluteTime:(double)time
{
  messageCopy = message;
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:messageCopy atTime:time];
}

- (void)siriSessionGetRequestContextWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    requestContext = [_presentation2 requestContext];
  }

  else
  {
    requestContext = 0;
  }

  handlerCopy[2](handlerCopy, requestContext);
}

- (void)siriSessionDidChangeNetworkAvailability
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriNetworkAvailabilityDidChange];
  }
}

- (void)siriSessionDidChangeLockState:(unint64_t)state
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
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s old lockState=%zd, new lockState=%zd", buf, 0x20u);
  }

  v7 = self->_lockState;
  self->_lockState = state;
  if ((state != 0) == (v7 == 0))
  {
    v8 = objc_alloc_init(SISchemaDeviceLockStateChanged);
    [v8 setIsDeviceLocked:state != 0];
    _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
    [_instrumentationManager emitInstrumentation:v8];
  }

  if (!state)
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

- (void)siriSessionDidReceiveOpenLinkCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = [commandCopy ref];
  scheme = [v8 scheme];
  if (![scheme caseInsensitiveCompare:@"prefs"] || !objc_msgSend(scheme, "caseInsensitiveCompare:", @"audio-player-event"))
  {
    goto LABEL_16;
  }

  if (![scheme caseInsensitiveCompare:@"http"] || !objc_msgSend(scheme, "caseInsensitiveCompare:", @"https"))
  {
    host = [v8 host];
    if ([host caseInsensitiveCompare:@"apple.com"])
    {
      v11 = [host rangeOfString:@".apple.com" options:13];

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
    v20 = completionCopy;
    v19 = commandCopy;
    [(SRSiriViewController *)self _openURL:v8 bundleId:0 inPlace:0 launchOptions:0 conversationId:0 completion:v18];

    v16 = v20;
    goto LABEL_19;
  }

LABEL_7:
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v13 = [_presentation trustsURL:v8];

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

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v16 = [SACommandFailed sruif_commandFailedWithRefId:aceId];

    [v16 setReason:@"Ignoring potentially unsafe URL"];
    (*(completionCopy + 2))(completionCopy, v16);
LABEL_19:
  }
}

- (void)siriSessionOpenURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
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
    v26 = lCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #punchout 1 Performing %@ punchout of URL: %@", buf, 0x20u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006095C;
  v19[3] = &unk_100167428;
  v11 = handlerCopy;
  v20 = v11;
  [(SRSiriViewController *)self _openURL:lCopy bundleId:0 inPlace:delaySessionEndForInPlacePunchout launchOptions:0 conversationId:0 completion:v19];
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
    v17 = lCopy;
    v15 = objc_retainBlock(v16);
    [(AFQueue *)v14 enqueueObject:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)siriSessionRequestsDismissalForReason:(int64_t)reason
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

  [(SRSiriViewController *)self _dismissWithReason:reason];
}

- (void)siriSessionWantsToCacheImage:(id)image
{
  imageCopy = image;
  v4 = +[INCache sharedCache];
  [v4 addCacheableObject:imageCopy];
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

- (void)_presentAuthenticationDialogWithText:(id)text
{
  textCopy = text;
  v11 = +[NSMutableArray array];
  v5 = objc_alloc_init(SAUIAddViews);
  [v5 setDialogPhase:SAUIDialogPhaseStatusValue];
  v6 = objc_alloc_init(SAUIAssistantUtteranceView);
  [v6 setText:textCopy];
  [v6 setSpeakableText:textCopy];

  [v11 addObject:v6];
  [v5 setViews:v11];
  dictionary = [v5 dictionary];
  v8 = [AceObject aceObjectWithDictionary:dictionary];

  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];
  [v8 setAceId:uUIDString];

  [(SRSiriViewController *)self _performGenericAceCommand:v8 turnIdentifier:0 completion:0];
}

- (void)siriSessionDidReceiveSpeechRecognizedCommand:(id)command
{
  commandCopy = command;
  v5 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  [v5 receivedReplayCommand:commandCopy];

  if (AFIsInternalInstall())
  {
    v18 = @"bestTextInterpretation";
    af_bestTextInterpretation = [commandCopy af_bestTextInterpretation];
    v19 = af_bestTextInterpretation;
    v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v7 = 0;
  }

  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1506 context:v7];

  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addItemForSpeechRecognizedCommand:commandCopy];

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    af_userUtteranceValue = [commandCopy af_userUtteranceValue];
    bestTextInterpretation = [af_userUtteranceValue bestTextInterpretation];
    v14 = 136315394;
    v15 = "[SRSiriViewController siriSessionDidReceiveSpeechRecognizedCommand:]";
    v16 = 2112;
    v17 = bestTextInterpretation;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Speech Recognized: %@", &v14, 0x16u);
  }
}

- (void)siriSessionDidRecognizedAdditionalSpeechInterpretation:(id)interpretation refId:(id)id
{
  idCopy = id;
  interpretationCopy = interpretation;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addAdditionalSpeechInterpretation:interpretationCopy refId:idCopy];
}

- (void)siriSessionDidUpdateRecognitionWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id
{
  idCopy = id;
  utterancesCopy = utterances;
  phrasesCopy = phrases;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addRecognitionUpdateWithPhrases:phrasesCopy utterances:utterancesCopy refId:idCopy];
}

- (void)siriSessionDidReceiveSpeechPartialResultCommand:(id)command
{
  commandCopy = command;
  if (AFIsInternalInstall())
  {
    v21 = @"bestTextInterpretation";
    af_bestTextInterpretation = [commandCopy af_bestTextInterpretation];
    v22 = af_bestTextInterpretation;
    v6 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  }

  else
  {
    v6 = 0;
  }

  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1504 context:v6];

  traitCollection = [(SRSiriViewController *)self traitCollection];
  if ([traitCollection isAmbientPresented] && +[AFSystemAssistantExperienceStatusManager saeAvailable](AFSystemAssistantExperienceStatusManager, "saeAvailable"))
  {
    v9 = +[AFPreferences sharedPreferences];
    alwaysShowRecognizedSpeech = [v9 alwaysShowRecognizedSpeech];

    if (!alwaysShowRecognizedSpeech)
    {
      goto LABEL_9;
    }

    traitCollection = [(SRSiriViewController *)self _host];
    [traitCollection requestHostBlurVisible:1 reason:2 fence:0];
  }

LABEL_9:
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SRSiriViewController siriSessionDidReceiveSpeechPartialResultCommand:]";
    v19 = 2112;
    v20 = commandCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Did receive partial speech result %@", &v17, 0x16u);
  }

  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addItemForPartialResultCommand:commandCopy];

  _presentation = [(SRSiriViewController *)self _presentation];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    af_bestTextInterpretation2 = [commandCopy af_bestTextInterpretation];
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidUpdateASRWithRecognition:af_bestTextInterpretation2];
  }
}

- (id)removeAlternativeFeatureViews:(id)views
{
  viewsCopy = views;
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  views = [viewsCopy views];
  v6 = [views countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(views);
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

      v7 = [views countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [viewsCopy setViews:v4];

  return viewsCopy;
}

- (BOOL)_shouldLowerKeyboardForAddViewsCommand:(id)command
{
  commandCopy = command;
  views = [commandCopy views];
  firstObject = [views firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  af_dialogPhase = [commandCopy af_dialogPhase];
  LOBYTE(firstObject) = [af_dialogPhase isReflectionDialogPhase];

  v8 = 0;
  if ((firstObject & 1) == 0 && (isKindOfClass & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    views2 = [commandCopy views];
    v10 = [views2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(views2);
          }

          listenAfterSpeaking = [*(*(&v18 + 1) + 8 * v15) listenAfterSpeaking];
          v12 |= [listenAfterSpeaking BOOLValue];

          v13 |= SiriUIAceViewHasButtons();
          v15 = v15 + 1;
        }

        while (v11 != v15);
        v11 = [views2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)_updateKeyboardState:(BOOL)state minimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  stateCopy = state;
  if (![(SRSiriViewController *)self _isKeyboardLoweredAfterResponse])
  {
    if ([(SASRequestOptions *)self->_requestOptions requestSource]== 24)
    {
      objc_initWeak(&location, self);
      _host = [(SRSiriViewController *)self _host];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000617B4;
      v8[3] = &unk_1001681E0;
      objc_copyWeak(&v9, &location);
      v10 = minimizedCopy;
      v11 = stateCopy;
      [_host serviceDidRequestCurrentTextInput:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    else if ([(SASRequestOptions *)self->_requestOptions inputType]== 2)
    {
      [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:stateCopy minimized:minimizedCopy];

      [(SRSiriViewController *)self _setKeyboardLoweredAfterResponse:minimizedCopy];
    }
  }
}

- (void)_updateKeyboardStatusForAddViewsCommand:(id)command
{
  if ([(SRSiriViewController *)self _shouldLowerKeyboardForAddViewsCommand:command])
  {
    v4 = +[UIKeyboard isInHardwareKeyboardMode]^ 1;
  }

  else
  {
    v4 = 0;
  }

  if ([(SASRequestOptions *)self->_requestOptions requestSource]== 24 || v4 && [(SASRequestOptions *)self->_requestOptions inputType]== 2)
  {
    textInputEnabled = [(SRSiriViewController *)self textInputEnabled];

    [(SRSiriViewController *)self _updateKeyboardState:textInputEnabled minimized:v4];
  }
}

- (void)siriSessionDidReceiveAddViewsCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v6 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  [v6 receivedReplayCommand:commandCopy];

  af_dialogPhase = [commandCopy af_dialogPhase];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceiveAddViewsDialogPhaseForSuggestions:af_dialogPhase];
  }

  views = [commandCopy views];
  firstObject = [views firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    firstObject2 = [views firstObject];
    [(SRSiriViewController *)self handlePlayTrailer:firstObject2 completion:completionCopy];

    goto LABEL_108;
  }

  v13 = [NSMutableString alloc];
  v14 = objc_opt_class();
  aceId = [commandCopy aceId];
  refId = [commandCopy refId];
  v134 = [v13 initWithFormat:@"<%@: %@ refId:%@>\n", v14, aceId, refId];

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = views;
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

      dialog = [v20 dialog];
      v25 = dialog == 0;

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

      aceId2 = [v20 aceId];
      v28 = aceId2 == 0;

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

        _analytics = [(SRSiriViewController *)self _analytics];
        v31 = AFAnalyticsContextCreateWithCommand();
        [_analytics logEventWithType:1449 context:v31];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dialogIdentifier = [v20 dialogIdentifier];
        [(SRSiriViewController *)self disableTouchIDFaceIDIfNecessaryForDucID:dialogIdentifier];

        listenAfterSpeaking = [v20 listenAfterSpeaking];
        self->_keyboardEnabled = [listenAfterSpeaking BOOLValue] ^ 1;
      }

      responseViewId = self->_responseViewId;
      self->_responseViewId = 0;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        responseViewId = [v20 responseViewId];
        v36 = responseViewId == 0;

        if (!v36)
        {
          responseViewId2 = [v20 responseViewId];
          v38 = self->_responseViewId;
          self->_responseViewId = responseViewId2;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        responseViewId3 = [v20 responseViewId];
        if (responseViewId3)
        {
          v40 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
          isSiriDetached = [v40 isSiriDetached];

          if ((isSiriDetached & 1) == 0)
          {
            responseViewId4 = [v20 responseViewId];
            v43 = self->_responseViewId;
            self->_responseViewId = responseViewId4;

            v44 = [VRXVisualResponseShown alloc];
            cardData = [v20 cardData];
            v46 = [v44 initWithCardData:cardData responseViewId:self->_responseViewId];

            _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
            currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
            turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

            [v46 emitWithTurnIdentifier:turnIdentifier];
          }
        }
      }

      dialog2 = [v20 dialog];

      if (dialog2)
      {
        dialog3 = [v20 dialog];
        dialogIdentifier2 = [dialog3 dialogIdentifier];
        [(SRSiriViewController *)self disableTouchIDFaceIDIfNecessaryForDucID:dialogIdentifier2];
      }

      if (!self->_listenAfterSpeakingForRequestFinished)
      {
        listenAfterSpeaking2 = [v20 listenAfterSpeaking];
        if ([listenAfterSpeaking2 BOOLValue])
        {
          isTypeToSiriRequest = [(SASRequestOptions *)self->_requestOptions isTypeToSiriRequest];

          if (isTypeToSiriRequest)
          {
            goto LABEL_36;
          }

          [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:1];
          listenAfterSpeaking2 = [v20 listenAfterSpeakingBehavior];
          startAlertSoundID = [listenAfterSpeaking2 startAlertSoundID];
          startRecordingSoundId = self->_startRecordingSoundId;
          self->_startRecordingSoundId = startAlertSoundID;
        }
      }

LABEL_36:
      _presentation3 = [(SRSiriViewController *)self _presentation];
      v58 = objc_opt_respondsToSelector();

      if (v58)
      {
        _presentation4 = [(SRSiriViewController *)self _presentation];
        delayDismissalMs = [v20 delayDismissalMs];
        [_presentation4 delayDismissalAfterIdleFires:delayDismissalMs];
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
  if ([commandCopy sruif_isEmptyUtteranceView] && (-[SRSiriViewController _requestOptions](self, "_requestOptions"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "isForStark"), v62, (v63 & 1) == 0))
  {
    v125 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD198(v125, commandCopy);
    }

    if (completionCopy)
    {
      aceId3 = [commandCopy aceId];
      obja = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId3];
      completionCopy[2](completionCopy, obja);
      goto LABEL_106;
    }
  }

  else
  {
    v61 = 0;
LABEL_46:
    _presentation5 = [(SRSiriViewController *)self _presentation];
    v65 = objc_opt_respondsToSelector();

    if (v65)
    {
      _presentation6 = [(SRSiriViewController *)self _presentation];
      feedbackForm = [commandCopy feedbackForm];
      [_presentation6 handleFeedbackForm:feedbackForm];
    }

    requestEndBehavior = [commandCopy requestEndBehavior];
    if (requestEndBehavior)
    {
      _presentation7 = [(SRSiriViewController *)self _presentation];
      v70 = objc_opt_respondsToSelector();

      if (v70)
      {
        objc_initWeak(buf, self);
        v137[0] = _NSConcreteStackBlock;
        v137[1] = 3221225472;
        v137[2] = sub_100062C60;
        v137[3] = &unk_100168208;
        objc_copyWeak(&v139, buf);
        v138 = commandCopy;
        [(SRSiriViewController *)self _fetchAttendingState:v137];

        objc_destroyWeak(&v139);
        objc_destroyWeak(buf);
      }
    }

    v71 = commandCopy;
    [(SRSiriViewController *)self _logPatternExecutedEventForAddViewsCommand:v71];
    [(SRSiriViewController *)self _sharePatternIdFromAddViewsCommand:v71];
    responseMode = [v71 responseMode];
    v133 = [(SRSiriViewController *)self _responseModeToMDModeConverter:responseMode];

    responseMode2 = [v71 responseMode];
    obja = [responseMode2 lowercaseString];

    refId2 = [v71 refId];
    addViewsRefId = self->_addViewsRefId;
    self->_addViewsRefId = refId2;

    responseMode3 = [v71 responseMode];
    self->_addViewsMode = [(SRSiriViewController *)self _responseModeToMDModeConverter:responseMode3];

    v77 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      patternId = [v71 patternId];
      *buf = 136315394;
      v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
      v147 = 2112;
      v148 = patternId;
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

    patternId2 = [v71 patternId];
    if ((patternId2 || [(NSString *)self->_responseViewId length]) && (patternId2, !v61))
    {
      _presentation9 = v71;
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

      sruif_dialogPhase = [v71 sruif_dialogPhase];
      if ([sruif_dialogPhase isReflectionDialogPhase])
      {
        _suppressTTSForErrorsAndInterstitials = [(SRSiriViewController *)self _suppressTTSForErrorsAndInterstitials];

        if (_suppressTTSForErrorsAndInterstitials)
        {
          sruif_dialogPhase = AFSiriLogContextConnection;
          if (os_log_type_enabled(sruif_dialogPhase, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
            _os_log_impl(&_mh_execute_header, sruif_dialogPhase, OS_LOG_TYPE_DEFAULT, "%s #modes Applying DisplayOnly mode to suppress interstitials from being spoken", buf, 0xCu);
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

      _presentation9 = [MDDialogTransformer transformAddViews:v71 forMode:v133];
    }

    _requestOptions = [(SRSiriViewController *)self _requestOptions];
    [_requestOptions requestSource];
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

      v93 = [MDDialogTransformer transformAddViews:_presentation9 forMode:2];

      v133 = 2;
      _presentation9 = v93;
    }

    sruif_dialogPhase2 = [_presentation9 sruif_dialogPhase];
    isReflectionDialogPhase = [sruif_dialogPhase2 isReflectionDialogPhase];

    if (isReflectionDialogPhase)
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
    view = [(SRSiriViewController *)self view];
    traitCollection = [view traitCollection];
    -[SRSiriSystemUIController updateSystemUIForAddViews:viewMode:lockState:isInAmbient:](systemUIController, "updateSystemUIForAddViews:viewMode:lockState:isInAmbient:", _presentation9, v97, lockState, [traitCollection isAmbientPresented]);

    if ([(SRSiriSystemUIController *)self->_systemUIController shouldRedactSnippetForAddViews:_presentation9])
    {
      v102 = [(SRSiriSystemUIController *)self->_systemUIController transformAddViews:_presentation9 mode:[(SRSiriViewController *)self _MDModeToSRModeConverter:v133] idiom:v96];
      presentingSystemUI = [(SRSiriSystemUIController *)self->_systemUIController presentingSystemUI];
      aceId3 = v102;

      if (presentingSystemUI)
      {
        v105 = AFSiriLogContextConnection;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%s System UI Presented. Setting didPresentSystemUI", buf, 0xCu);
        }

        _presentation8 = [(SRSiriViewController *)self _presentation];
        v107 = objc_opt_respondsToSelector();

        if (v107)
        {
          _presentation9 = [(SRSiriViewController *)self _presentation];
          [_presentation9 didPresentSystemUI];
          goto LABEL_90;
        }
      }
    }

    else
    {
      aceId3 = [SRVisualResponseTransformer transformVisualResponse:_presentation9 forMode:[(SRSiriViewController *)self _MDModeToSRModeConverter:v133] idiom:v96 shouldHideSnippet:0];
LABEL_90:
    }

    _presentation10 = [(SRSiriViewController *)self _presentation];
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

    views2 = [aceId3 views];
    v111 = [views2 count] == 0;

    if (v111)
    {
      v119 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v146 = "[SRSiriViewController siriSessionDidReceiveAddViewsCommand:completion:]";
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%s System UI Presented. Resetting ASR", buf, 0xCu);
      }

      _presentation11 = [(SRSiriViewController *)self _presentation];
      v121 = objc_opt_respondsToSelector();

      if (v121)
      {
        _presentation12 = [(SRSiriViewController *)self _presentation];
        [_presentation12 resetViewsAndClearASR:1];
      }

      v123 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD270(v71);
      }

      if (completionCopy)
      {
        aceId4 = [v71 aceId];
        v124 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId4];
        completionCopy[2](completionCopy, v124);

LABEL_104:
      }
    }

    else
    {
      _analytics2 = [(SRSiriViewController *)self _analytics];
      _instrumentationManager2 = [(SRSiriViewController *)self _instrumentationManager];
      [_analytics2 logClientFeedbackPresented:aceId3 dialogIdentifierProvider:_instrumentationManager2];

      analyticsSupplement = self->_analyticsSupplement;
      v115 = [(SRSiriViewController *)self _instrumentationResponseModeForMode:v133];
      v144 = aceId3;
      v116 = [NSArray arrayWithObjects:&v144 count:1];
      [(SRUIFAnalyticsSupplement *)analyticsSupplement didComputeMode:v115 forAceCommand:v71 generatedAceCommands:v116];

      [(SRSiriViewController *)self _processAddViewsCommand:aceId3 forMode:[(SRSiriViewController *)self _MDModeToSRModeConverter:v133] completion:completionCopy];
      _presentation13 = [(SRSiriViewController *)self _presentation];
      LOBYTE(v115) = objc_opt_respondsToSelector();

      if (v115)
      {
        aceId4 = [(SRSiriViewController *)self _presentation];
        [aceId4 loadContinuerSuggestionsForRequest:self->_addViewsRefId currentMode:obja dialogPhase:af_dialogPhase];
        goto LABEL_104;
      }
    }

LABEL_106:
  }

LABEL_108:
}

- (void)siriSessionRequestsTTSDuckToVolume:(float)volume rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[SRSiriViewController siriSessionRequestsTTSDuckToVolume:rampTime:completion:]";
    v13 = 2048;
    volumeCopy = volume;
    v15 = 2048;
    timeCopy = time;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Ducking TTS to %f over time %f", &v11, 0x20u);
  }

  *&v10 = volume;
  [(SRUIFSpeechSynthesizing *)self->_ttsManager duckTTSVolumeTo:completionCopy rampTime:v10 completion:time];
}

- (void)siriSessionWillProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriWillProcessAppLaunchWithBundleIdentifier:identifierCopy];
  }

  [(SRSiriSystemUIController *)self->_systemUIController collapseSystemUI];
}

- (void)siriSessionDidEnterLatencyState
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidEnterLatencyState];
  }
}

- (void)siriSessionDidReceiveLatencyInformation:(id)information
{
  informationCopy = information;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidReceiveLatencyInformation:informationCopy];
  }
}

- (void)siriSessionDidReceiveNLRoutingDecision:(id)decision
{
  decisionCopy = decision;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidReceiveNLRoutingDecision:decisionCopy];
  }
}

- (void)siriSessionDidBeginTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidBeginTaskWithIdentifier:identifierCopy];
  }
}

- (void)siriSessionDidReceiveContinueOnDeviceCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  [(SRSiriViewController *)self _didStartActionForAceCommand:commandCopy];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100063280;
  v10[3] = &unk_100168258;
  objc_copyWeak(&v13, &location);
  v8 = commandCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(SRSiriViewController *)self _performContinueOnDeviceCommand:v8 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceivePluginSnippetPrewarmCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  uiPluginBundleNames = [commandCopy uiPluginBundleNames];
  v8 = uiPluginBundleNames;
  if (uiPluginBundleNames)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [uiPluginBundleNames countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v14 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v14);
  }
}

- (void)siriSessionDidReceiveStartGenAIEnablementFlowCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidReceiveStartGenAIEnablementFlowCommand:commandCopy completion:completionCopy];
  }
}

- (void)orchestrationDidPresentResponseFullyInApp
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CD344();
  }

  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didPresentResponseFullyInApp];
  }
}

- (void)controllerRequestSystemApertureCollapse
{
  _host = [(SRSiriViewController *)self _host];
  [_host requestSystemApertureCollapse];
}

- (void)controllerRequestSiriDismissal
{
  _presentation = [(SRSiriViewController *)self _presentation];
  [(SRSiriViewController *)self dismissSiriPresentation:_presentation withReason:55];
}

- (void)controllerRequestSiriBlurHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _host = [(SRSiriViewController *)self _host];
  [_host requestHostBlurVisible:!hiddenCopy reason:2 fence:0];

  traitCollection = [(SRSiriViewController *)self traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  if (isAmbientPresented)
  {
    _host2 = [(SRSiriViewController *)self _host];
    [_host2 setFullScreenDimmingLayerVisible:!hiddenCopy animated:1];
  }
}

- (void)controllerRequestTapsShared:(BOOL)shared
{
  sharedCopy = shared;
  _host = [(SRSiriViewController *)self _host];
  [_host setShouldPassTouchesThroughToSpringBoard:sharedCopy];

  view = [(SRSiriViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:sharedCopy ^ 1];
}

- (void)controllerRequestScreenClearedWithClearASR:(BOOL)r
{
  rCopy = r;
  _presentation = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 resetViewsAndClearASR:rCopy];
  }
}

- (void)_processAddViewsCommand:(id)command forMode:(unint64_t)mode completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v10 = commandCopy;
  _presentation = [(SRSiriViewController *)self _presentation];
  v12 = objc_opt_respondsToSelector();

  v13 = v10;
  if (v12)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v13 = [_presentation2 prepareAddViewsCommandForConversation:v10];
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
  v34 = completionCopy;
  v40 = v34;
  [(SRSiriViewController *)self _didReceiveAceCommand:v13 completion:v39];
  responseMode = [v13 responseMode];
  v17 = [(SRSiriViewController *)self _responseModeToMDModeConverter:responseMode];

  if ((v17 == 3 || !v17) && _os_feature_enabled_impl())
  {
    [(SRSiriViewController *)self _enqueueSpokenSuggestionsFromAddViews:v10];
  }

  if (mode == 2)
  {
    [SRUIFAddViewsDurationProvider minimumDisplayDurationForAddViews:v13];
    if (v18 > 0.0)
    {
      [(SRSiriViewController *)self _delayAceCommandSuccess:v13 forDuration:?];
    }
  }

  dialogPhase = [v13 dialogPhase];
  v20 = [AFDialogPhase dialogPhaseForAceDialogPhase:dialogPhase];

  if (([v20 isTemporary] & 1) == 0 && (objc_msgSend(v20, "isConfirmedDialogPhase") & 1) == 0 && (objc_msgSend(v20, "isCancelledDialogPhase") & 1) == 0)
  {
    _repeatablePhrases = [(SRSiriViewController *)self _repeatablePhrases];
    [_repeatablePhrases removeAllObjects];

    repeatableAudioSayit = self->_repeatableAudioSayit;
    self->_repeatableAudioSayit = 0;
  }

  if (![v20 isTemporary] || objc_msgSend(v20, "isConfirmationDialogPhase"))
  {
    _session = [(SRSiriViewController *)self _session];
    [_session requestDidPresentViewForUICommand:v13];
  }

  if ([v20 isErrorDialogPhase])
  {
    _session2 = [(SRSiriViewController *)self _session];
    [_session2 requestDidPresentViewForErrorCommand:v13];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  views = [v13 views];
  v26 = [views countByEnumeratingWithState:&v35 objects:v41 count:16];
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
          objc_enumerationMutation(views);
        }

        v30 = *(*(&v35 + 1) + 8 * i);
        speakableText = [v30 speakableText];
        if ([speakableText length])
        {

          goto LABEL_34;
        }

        dialog = [v30 dialog];

        if (dialog)
        {
          goto LABEL_34;
        }
      }

      v27 = [views countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addItemsForAddViewsCommand:v13];
}

- (void)disableTouchIDFaceIDIfNecessaryForDucID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if ((~LODWORD(self->_lockState) & 3) == 0 && (([dCopy isEqualToString:@"misc#answerWhoAmI"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"misc#answerWhoseIsThis")))
  {
    v6 = +[BKDeviceManager availableDevices];
    firstObject = [v6 firstObject];

    if (firstObject)
    {
      v15 = 0;
      v8 = [BKDevice deviceWithDescriptor:firstObject error:&v15];
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

- (void)handlePlayTrailer:(id)trailer completion:(id)completion
{
  trailerCopy = trailer;
  completionCopy = completion;
  v8 = objc_alloc_init(SAVCSPlayContent);
  utsId = [trailerCopy utsId];
  [v8 setPlayTrailer:1];
  [v8 setContentType:SAVCSContentTypeMovieValue];
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  [v8 setAceId:uUIDString];

  [v8 setUtsId:utsId];
  hiresTrailerUri = [trailerCopy hiresTrailerUri];
  v13 = hiresTrailerUri;
  if (hiresTrailerUri)
  {
    lowresTrailerUri = hiresTrailerUri;
  }

  else
  {
    lowresTrailerUri = [trailerCopy lowresTrailerUri];
  }

  v15 = lowresTrailerUri;

  lowresTrailerUri2 = [trailerCopy lowresTrailerUri];
  v17 = lowresTrailerUri2;
  if (lowresTrailerUri2)
  {
    hiresTrailerUri2 = lowresTrailerUri2;
  }

  else
  {
    hiresTrailerUri2 = [trailerCopy hiresTrailerUri];
  }

  v19 = hiresTrailerUri2;

  if (v15)
  {
    [v8 setHiresTrailerUri:v15];
    [v8 setLowresTrailerUri:v19];
    [(SRSiriViewController *)self siriSessionDidReceivePlayContentCommand:v8 completion:completionCopy];
  }

  else
  {
    v20 = [[WLKCanonicalPlayablesRequest alloc] initWithCanonicalID:utsId];
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000640B8;
    v21[3] = &unk_100168280;
    v22 = v8;
    objc_copyWeak(&v24, &location);
    v23 = completionCopy;
    [v20 makeRequestWithCompletion:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)siriSessionDidReceiveAddDialogsCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v7 = [NSMutableString alloc];
  v8 = objc_opt_class();
  v50 = commandCopy;
  aceId = [commandCopy aceId];
  v10 = [v7 initWithFormat:@"<%@: %@>\n", v8, aceId];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  dialogs = [commandCopy dialogs];
  v12 = [dialogs countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v12)
  {
    v13 = *v65;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(dialogs);
        }

        v15 = *(*(&v64 + 1) + 8 * i);
        v16 = [SiriUIUtilities descriptionForDialog:v15];
        [v10 appendFormat:@"%@\n", v16];

        dialogIdentifier = [v15 dialogIdentifier];
        [(SRSiriViewController *)self disableTouchIDFaceIDIfNecessaryForDucID:dialogIdentifier];
      }

      v12 = [dialogs countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v12);
  }

  if (!self->_listenAfterSpeakingForRequestFinished)
  {
    listenAfterSpeaking = [v50 listenAfterSpeaking];
    if (![listenAfterSpeaking BOOLValue])
    {
LABEL_12:

      goto LABEL_13;
    }

    isTypeToSiriRequest = [(SASRequestOptions *)self->_requestOptions isTypeToSiriRequest];

    if ((isTypeToSiriRequest & 1) == 0)
    {
      [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:1];
      listenAfterSpeaking = [v50 listenAfterSpeakingBehavior];
      startAlertSoundID = [listenAfterSpeaking startAlertSoundID];
      startRecordingSoundId = self->_startRecordingSoundId;
      self->_startRecordingSoundId = startAlertSoundID;

      goto LABEL_12;
    }
  }

LABEL_13:
  requestEndBehavior = [v50 requestEndBehavior];
  if (requestEndBehavior)
  {
    _presentation = [(SRSiriViewController *)self _presentation];
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

  responseMode = [v50 responseMode];
  v26 = [(SRSiriViewController *)self _responseModeToMDModeConverter:responseMode];

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
  _presentation2 = [(SRSiriViewController *)self _presentation];
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
        _analytics = [(SRSiriViewController *)self _analytics];
        _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
        [_analytics logClientFeedbackPresented:v38 dialogIdentifierProvider:_instrumentationManager];
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
    v52 = completionCopy;
    [v34 enumerateObjectsUsingBlock:v51];
  }

  else
  {
    v41 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      aceId2 = [v50 aceId];
      *location = 136315394;
      *&location[4] = "[SRSiriViewController siriSessionDidReceiveAddDialogsCommand:completion:]";
      v70 = 2112;
      v71 = aceId2;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s #modes Transformed AddDialogs (aceId = %@) resulted in no commands", location, 0x16u);
    }

    _presentation3 = [(SRSiriViewController *)self _presentation];
    v45 = objc_opt_respondsToSelector();

    if (v45)
    {
      _presentation4 = [(SRSiriViewController *)self _presentation];
      [_presentation4 didOmitDialogFromPresenting];
    }

    if (completionCopy)
    {
      aceId3 = [v50 aceId];
      v48 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId3];
      (*(completionCopy + 2))(completionCopy, v48);
    }
  }
}

- (void)siriSessionDidReceiveClearScreenCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  [(SRSiriViewController *)self _didStartActionForAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 startNewConversation];
  }

  else
  {
    _startNewConversation = [(SRSiriViewController *)self _startNewConversation];
  }

  initialView = [commandCopy initialView];
  speakableText = [initialView speakableText];

  if ([speakableText length])
  {
    [(SRSiriViewController *)self _setUtteranceToSpeakAfterClearScreenCommand:speakableText];
  }

  [(SRSiriViewController *)self _didCompleteActionForAceCommand:commandCopy success:1];
  if (completionCopy)
  {
    v13 = objc_alloc_init(SACommandSucceeded);
    aceId = [commandCopy aceId];
    [v13 setRefId:aceId];

    completionCopy[2](completionCopy, v13);
  }
}

- (void)siriSessionDidReceivePlayVoicemailCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy completion:completion];
  [(SRSiriViewController *)self _didStartActionForAceCommand:commandCopy];
  _voicemailPlayer = [(SRSiriViewController *)self _voicemailPlayer];
  [_voicemailPlayer setPlaybackCommand:commandCopy];

  _voicemailPlayer2 = [(SRSiriViewController *)self _voicemailPlayer];
  [_voicemailPlayer2 startPlaying];
}

- (id)_configuredSpeakableUtteranceParserForCommand:(id)command context:(id)context speakableText:(id)text subCompletion:(id)completion speakPreparation:(id *)preparation speakCompletion:(id *)speakCompletion
{
  commandCopy = command;
  contextCopy = context;
  textCopy = text;
  completionCopy = completion;
  v15 = +[AFSpeakableUtteranceParser sruif_speakableUtteranceParserForCurrentLanguage];
  [v15 setHandleTTSCodes:1];
  if ([contextCopy conformsToProtocol:&OBJC_PROTOCOL___SAAceIdentifiable])
  {
    v16 = contextCopy;
    identifier = [v16 identifier];
    contextCopy = v16;
    if ([identifier isAMOSIdentifier])
    {
      contextCopy = [(SRSiriViewController *)self domainObjectForIdentifier:identifier];
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
      v18 = [SRUIFUtilities shouldRedactSpeakableTextForAceObject:commandCopy];
      *(v49 + 24) = v18;
    }
  }

  if (![v15 sruif_hasExternalDomainsForStringWithFormat:textCopy shouldRedactLog:*(v49 + 24)])
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
  v20 = [v19 speakableProviderForObject:contextCopy];

  if (v20)
  {
    [v15 registerProvider:v20 forNamespace:_AFSpeakableUtteranceParserObjDomain];
  }

LABEL_16:
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    identifier2 = [v20 identifier];
    objc_initWeak(&location, self);
    if (identifier2)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000652E4;
      v41[3] = &unk_100168320;
      objc_copyWeak(&v46, &location);
      v24 = identifier2;
      v42 = v24;
      v43 = v20;
      v44 = v15;
      v45 = textCopy;
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
  v26 = textCopy;
  v36 = v26;
  v27 = commandCopy;
  v37 = v27;
  v28 = completionCopy;
  v38 = v28;
  v29 = objc_retainBlock(v35);
  if (preparation)
  {
    *preparation = [v25 copy];
  }

  if (speakCompletion)
  {
    *speakCompletion = [v29 copy];
  }

  v30 = v15;

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v48, 8);

  return v30;
}

- (void)siriSessionDidReceiveSmsPlayAudioCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy completion:completion];
  [(SRSiriViewController *)self _didStartActionForAceCommand:commandCopy];
  _audioMessagePlayer = [(SRSiriViewController *)self _audioMessagePlayer];
  [_audioMessagePlayer setPlaybackCommand:commandCopy];

  _audioMessagePlayer2 = [(SRSiriViewController *)self _audioMessagePlayer];
  [_audioMessagePlayer2 startPlaying];
}

- (void)siriSessionDidReceivePlayNotificationSound:(id)sound completion:(id)completion
{
  soundCopy = sound;
  [(SRSiriViewController *)self _didReceiveAceCommand:soundCopy completion:completion];
  [(SRSiriViewController *)self _didStartActionForAceCommand:soundCopy];
  [(AFUISiriSession *)self->_session forceAudioSessionActive];
  v8 = [[TLAlertConfiguration alloc] initWithType:2];
  [v8 setShouldIgnoreRingerSwitch:1];
  v9 = [TLAlert alertWithConfiguration:v8];
  [v9 setPlaybackObserver:self];
  objc_storeStrong(&self->_currentNotificationSound, sound);
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

- (void)alertDidBeginPlaying:(id)playing
{
  playingCopy = playing;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SRSiriViewController alertDidBeginPlaying:]";
    v11 = 2112;
    v12 = playingCopy;
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

- (void)siriSessionDidReceiveSayItCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v9 = commandCopy;
  addViewsRefId = self->_addViewsRefId;
  refId = [v9 refId];
  LODWORD(addViewsRefId) = [(NSString *)addViewsRefId isEqualToString:refId];

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

    if (completionCopy)
    {
      refId2 = [v9 refId];
      v16 = [SACommandSucceeded sruif_commandSucceededWithRefId:refId2];
      completionCopy[2](completionCopy, v16);

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

    objc_storeStrong(&self->_previousSayItCommand, command);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100066254;
    v29[3] = &unk_100168140;
    v30 = completionCopy;
    [(SRSiriViewController *)self _didReceiveAceCommand:v9 completion:v29];
    _session = [(SRSiriViewController *)self _session];
    [_session requestDidPresentViewForUICommand:v9];

    audioData = [v9 audioData];
    if (audioData)
    {
    }

    else
    {
      languageCode = [v9 languageCode];
      if (!languageCode)
      {
        goto LABEL_18;
      }

      v27 = languageCode;
      message = [v9 message];

      if (!message)
      {
        goto LABEL_18;
      }
    }

    objc_storeStrong(&self->_repeatableAudioSayit, command);
LABEL_18:
    [(SRSiriViewController *)self _performSayItCommand:v9];
    refId2 = v30;
    goto LABEL_19;
  }

  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[SRSiriViewController siriSessionDidReceiveSayItCommand:completion:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #modes #punchout Suppressing SayIt command because we are delaying the TTS session for a Maps punchout and the user hasn't accepted the Maps privacy disclosure policy", buf, 0xCu);
  }

  if (completionCopy)
  {
    refId2 = objc_alloc_init(SACommandIgnored);
    refId3 = [v9 refId];
    [refId2 setRefId:refId3];

    v19 = objc_alloc_init(NSUUID);
    uUIDString = [v19 UUIDString];
    [refId2 setAceId:uUIDString];

    completionCopy[2](completionCopy, refId2);
    goto LABEL_19;
  }

LABEL_20:
}

- (void)siriSessionDidReceiveRepeatItCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:self->_listenAfterSpeakingForRepeatable];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000666C4;
  v39[3] = &unk_100168140;
  v19 = completionCopy;
  v40 = v19;
  selfCopy = self;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy completion:v39];
  _session = [(SRSiriViewController *)self _session];
  [_session requestDidPresentViewForUICommand:commandCopy];

  _repeatablePhrases = [(SRSiriViewController *)selfCopy _repeatablePhrases];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = [_repeatablePhrases count];
  if (selfCopy->_repeatableAudioSayit)
  {
    [(SRSiriViewController *)selfCopy _performSayItCommand:?];
  }

  else if (v36[3])
  {
    [(SRSiriViewController *)selfCopy _didStartActionForAceCommand:commandCopy];
    objc_initWeak(&location, selfCopy);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = _repeatablePhrases;
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
          aceId = [commandCopy aceId];
          refId = [commandCopy refId];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100066730;
          v23[3] = &unk_1001683B8;
          v25 = &v35;
          objc_copyWeak(&v26, &location);
          v24 = commandCopy;
          [(SRSiriViewController *)selfCopy _synthesizeText:v12 identifier:aceId sessionId:refId completion:v23];

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
    contingency = [commandCopy contingency];

    if (contingency)
    {
      [(SRSiriViewController *)selfCopy _didStartActionForAceCommand:commandCopy];
      objc_initWeak(&location, selfCopy);
      contingency2 = [commandCopy contingency];
      aceId2 = [commandCopy aceId];
      refId2 = [commandCopy refId];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000666DC;
      v31[3] = &unk_100168390;
      objc_copyWeak(&v33, &location);
      v32 = commandCopy;
      [(SRSiriViewController *)selfCopy _synthesizeText:contingency2 identifier:aceId2 sessionId:refId2 completion:v31];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)siriSessionDidReceiveShowHelpCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:1];
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy completion:completionCopy];

  _session = [(SRSiriViewController *)self _session];
  [_session requestDidPresentViewForUICommand:commandCopy];

  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addItemsForShowHelpCommand:commandCopy];
}

- (void)siriSessionDidReceiveUpdateViewsCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v10 = [_presentation2 prepareUpdateViewsCommandForConversation:commandCopy];

    v11 = v10;
  }

  else
  {
    v11 = commandCopy;
  }

  v14 = v11;
  [(SRSiriViewController *)self _didReceiveAceCommand:v11 completion:completionCopy];
  [(SRSiriViewController *)self _didStartActionForAceCommand:v14];
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation updateWithUpdateViewsCommand:v14];

  [(SRSiriViewController *)self _didCompleteActionForAceCommand:v14 success:1];
}

- (void)siriSessionDidReceiveAppPunchOutCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  aceId = [commandCopy aceId];

  if (aceId)
  {
    [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  }

  objc_initWeak(&location, self);
  if (completionCopy)
  {
    v11 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100066AD0;
    v13[3] = &unk_1001683E0;
    aceId = &v16;
    objc_copyWeak(&v16, &location);
    v4 = &v14;
    v14 = commandCopy;
    v5 = &v15;
    v15 = completionCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_retainBlock(v11);
  [(SRSiriViewController *)self _performAppPunchOutCommand:commandCopy completion:v12];

  if (completionCopy)
  {

    objc_destroyWeak(aceId);
  }

  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveCloseAssistantCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  kdebug_trace();
  reason = [commandCopy reason];
  v9 = [reason isEqualToString:SAUICloseAssistantReasonEMPTY_RECOGNITIONValue];

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
  v12 = completionCopy;
  v16 = v12;
  v13 = commandCopy;
  v15 = v13;
  v17[1] = v10;
  [(SRUIFSpeechSynthesizing *)ttsManager isSynthesisQueueEmpty:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveListenForPronunciationCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_initWeak(&location, self);
  ttsManager = self->_ttsManager;
  aceId = [commandCopy aceId];
  refId = [commandCopy refId];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000672EC;
  v14[3] = &unk_100168458;
  objc_copyWeak(&v17, &location);
  v11 = commandCopy;
  v15 = v11;
  v12 = completionCopy;
  v16 = v12;
  LODWORD(v13) = 0x1000000;
  [SRUIFSpeechSynthesizing enqueueText:"enqueueText:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:" identifier:0 sessionId:aceId preferredVoice:refId language:0 gender:0 promptStyle:0 isPhonetic:0.0 provisionally:0 eligibleAfterDuration:v13 delayed:0 canUseServerTTS:v14 preparationIdentifier:0 completion:0 analyticsContext:? speakableContextInfo:?];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveSetSuggestedUtterancesCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    utterances = [commandCopy utterances];
    language = [commandCopy language];
    [_presentation2 updateSuggestedUtterances:utterances forLanguage:language];
  }

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v13 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v13);
  }
}

- (void)siriSessionDidReceiveGetResponseAlternativesPlaybackCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 handleGetResponseAlternativesPlayback:commandCopy];
  }

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)siriSessionDidReceiveSAUIShowFullScreenEffectCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 showFullScreenEffect:commandCopy];
  }

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)siriSessionDidReceiveSAUIShowSpeechAlternativesCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 showSpeechAlternatives:commandCopy];
  }

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)siriSessionDidReceiveSAUIShowRequestHandlingStatusCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 showRequestHandlingStatus:commandCopy];
  }

  else
  {
    requestHandlingStatus = [commandCopy requestHandlingStatus];

    if (!requestHandlingStatus)
    {
      goto LABEL_13;
    }

    requestHandlingStatus2 = [commandCopy requestHandlingStatus];
    v12 = [requestHandlingStatus2 isEqualToString:SAUIShowRequestHandlingStatusRequestHandlingStatusASR_NL_ON_SERVERValue];

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      requestHandlingStatus3 = [commandCopy requestHandlingStatus];
      v15 = [requestHandlingStatus3 isEqualToString:SAUIShowRequestHandlingStatusRequestHandlingStatusASR_ON_DEVICE_NL_ON_SERVERValue];

      if (v15)
      {
        v13 = 2;
      }

      else
      {
        requestHandlingStatus4 = [commandCopy requestHandlingStatus];
        v17 = [requestHandlingStatus4 isEqualToString:SAUIShowRequestHandlingStatusRequestHandlingStatusASR_NL_ON_DEVICEValue];

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

    _presentation2 = [(SRSiriViewController *)self _host];
    [_presentation2 setRequestHandlingStatus:v13];
  }

LABEL_13:
  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v19 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v19);
  }
}

- (void)siriSessionDidReceiveSAUIChangePrimaryUtteranceCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 changeUtterance:commandCopy];
  }

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v11 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)siriSessionDidReceiveSetUIGuidedAccessCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if ([commandCopy toggle])
  {
    v7 = 0;
  }

  else
  {
    v7 = [commandCopy value] ^ 1;
  }

  if (([commandCopy dryRun] & 1) != 0 || v7)
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
    [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
    v11 = objc_alloc_init(SACommandFailed);
    [v11 setErrorCode:v9];
    [v11 setReason:v10];
LABEL_22:
    aceId = [commandCopy aceId];
    [v11 setRefId:aceId];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v11);
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

  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy];
  v11 = objc_alloc_init(SACommandSucceeded);
  aceId2 = [commandCopy aceId];
  [v11 setRefId:aceId2];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }

  v15 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100168478];
  [v15 serviceStartGuidedAccess];

LABEL_24:
}

- (void)siriSessionDidReceiveHideSiriOverlayCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 dismissRecordingOverlayAndHideSnippets:{objc_msgSend(commandCopy, "hideSnippets")}];

    _session = [(SRSiriViewController *)self _session];
    [_session requestDidPresentViewForUICommand:commandCopy];

    if (completionCopy)
    {
      v11 = objc_alloc_init(SACommandSucceeded);
      aceId = [commandCopy aceId];
      [v11 setRefId:aceId];

      completionCopy[2](completionCopy, v11);
    }
  }
}

- (void)siriSessionDidReceiveAddContentToViewCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v10 = [_presentation2 siriDidReceiveAdditionalContent:commandCopy];

    if (v10)
    {
      v11 = objc_alloc_init(SACommandSucceeded);
    }

    else
    {
      v11 = objc_alloc_init(SACommandFailed);
      [v11 setReason:{@"The target view could either not be found, was not eligible, or couldn't be delivered the payload"}];
    }

    aceId = [commandCopy aceId];
    [v11 setRefId:aceId];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v11);
    }
  }
}

- (void)siriSessionDidReceiveGuideUpdateCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v7 = +[AFUIGuideCacheManager sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100068140;
  v10[3] = &unk_1001681B8;
  v11 = commandCopy;
  v12 = completionCopy;
  v8 = commandCopy;
  v9 = completionCopy;
  [v7 updateCacheWithGuideUpdate:v8 completion:v10];
}

- (void)siriSessionDidReceiveShowNextCardCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v6 = +[SRUIFCardLoadingMonitor sharedInstance];
  cardSnippet = [commandCopy cardSnippet];
  [v6 broadcastCardSnippet:cardSnippet];

  if (completionCopy)
  {
    v8 = objc_alloc_init(SACommandSucceeded);
    aceId = [commandCopy aceId];
    [v8 setRefId:aceId];

    completionCopy[2](completionCopy, v8);
  }
}

- (void)siriSessionDidReceiveShowNextSnippetCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v6 = +[SRUIFCardLoadingMonitor sharedInstance];
  visualResponse = [commandCopy visualResponse];
  [v6 broadcastVisualResponseSnippet:visualResponse];

  if (completionCopy)
  {
    aceId = [commandCopy aceId];
    v9 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
    completionCopy[2](completionCopy, v9);
  }
}

- (void)siriSessionDidReceiveUpdateVisualResponseSnippetCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    v11 = [_presentation2 didReceiveUpdateVisualResponseCommand:commandCopy];

    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      viewId = [commandCopy viewId];
      v15 = NSStringFromBOOL();
      v19 = 136315650;
      v20 = "[SRSiriViewController siriSessionDidReceiveUpdateVisualResponseSnippetCommand:completion:]";
      v21 = 2112;
      v22 = viewId;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s command with viewId: %@ handled by presentation: %@", &v19, 0x20u);
    }

    [(SRSiriViewController *)self _logAceObjectPresented:commandCopy dialogPhase:0];
    if (completionCopy)
    {
      aceId = [commandCopy aceId];
      if (v11)
      {
        [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
      }

      else
      {
        [SACommandFailed sruif_commandFailedWithRefId:aceId];
      }
      v18 = ;
      completionCopy[2](completionCopy, v18);
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
      v22 = commandCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s presentation does not implement didReceiveUpdateVisualResponseCommand for command:%@", &v19, 0x16u);
    }

    if (completionCopy)
    {
      aceId = [commandCopy aceId];
      v18 = [SACommandFailed sruif_commandFailedWithRefId:aceId];
      completionCopy[2](completionCopy, v18);
LABEL_13:
    }
  }
}

- (void)siriSessionDidReceivePreSynthesizeTTSCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDA24();
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = commandCopy;
  v9 = completionCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)siriSessionDidReceiveDisambiguationItemSelected:(id)selected completion:(id)completion
{
  selectedCopy = selected;
  completionCopy = completion;
  v6 = +[AFUIDisambiguationAnalyticsManager sharedManager];
  [v6 logDisambiguationItemSelected:selectedCopy];

  if (completionCopy)
  {
    refId = [selectedCopy refId];
    v8 = [SACommandSucceeded sruif_commandSucceededWithRefId:refId];
    completionCopy[2](completionCopy, v8);
  }
}

- (void)siriSessionSpeechRecordingDidChangeAVRecordRoute:(id)route
{
  routeCopy = route;
  [(SRSiriViewController *)self _setCurrentAVRecordRoute:?];
  [UIApp finishedIPTest:SUICPPTTestNameSiriBringupTVSyntheticSpeechCapturedToSpeechRecording];
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 speechRecordingDidBeginOnRecordRoute:routeCopy];
  }
}

- (void)siriSessionSpeechRecordingDidEnd
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    _requestOptions = [(SRSiriViewController *)self _requestOptions];
    _currentAVRecordRoute = [(SRSiriViewController *)self _currentAVRecordRoute];
    [_presentation2 speechRecordingDidEndForRequest:_requestOptions onAVRecordRoute:_currentAVRecordRoute];
  }
}

- (void)siriSessionSpeechRecordingDidCancel
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    _requestOptions = [(SRSiriViewController *)self _requestOptions];
    _currentAVRecordRoute = [(SRSiriViewController *)self _currentAVRecordRoute];
    [_presentation2 speechRecordingDidCancelForRequest:_requestOptions onAVRecordRoute:_currentAVRecordRoute];
  }
}

- (void)siriSessionSpeechRecordingDidFailWithError:(id)error
{
  errorCopy = error;
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    _requestOptions = [(SRSiriViewController *)self _requestOptions];
    _currentAVRecordRoute = [(SRSiriViewController *)self _currentAVRecordRoute];
    [_presentation2 speechRecordingDidFailForRequest:_requestOptions onAVRecordRoute:_currentAVRecordRoute withError:errorCopy];
  }
}

- (BOOL)siriSessionShouldRequestUpdateForViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v6 = [_activeConversation containsItemForAceViewWithIdentifier:identifierCopy];

  return v6;
}

- (void)siriSessionDidDetectMusic
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 siriDidDetectMusic];
  }
}

- (void)siriSessionDidDetectSpeechStartpoint
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 speechRecordingDidDetectSpeechStartpoint];
  }
}

- (void)siriSessionDidUpdateAudioSessionID:(unsigned int)d
{
  v3 = *&d;
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
  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  if ([_requestOptions isForBluetoothCar])
  {
    goto LABEL_6;
  }

  _requestOptions2 = [(SRSiriViewController *)self _requestOptions];
  if ([_requestOptions2 isAnnounceRequest])
  {

LABEL_6:
LABEL_7:
    [(SRUIFSpeechSynthesizing *)self->_ttsManager prewarmIfNeededKeepActive:1];
    return;
  }

  _requestOptions3 = [(SRSiriViewController *)self _requestOptions];
  isForStark = [_requestOptions3 isForStark];

  if (isForStark)
  {
    goto LABEL_7;
  }
}

- (void)siriSessionDidReceiveAudioSessionInterruptionBeganWithUserInfo:(id)info machAbsoluteTime:(unint64_t)time
{
  v9 = objc_alloc_init(SISchemaPNRFatalErrorInfo);
  [v9 setErrorDomain:kAFAssistantErrorDomain];
  v6 = [NSString stringWithFormat:@"%ld", 48];
  [v9 setErrorCode:v6];

  v7 = objc_alloc_init(SISchemaPNRFatalError);
  [v7 setError:v9];
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:v7 atTime:time];
}

- (void)siriSessionRequestsPlayPhaticWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v9 = completionCopy;
  v7 = completionCopy;
  [(SRUIFSpeechSynthesizing *)ttsManager enqueuePhaticWithCompletion:v8];
}

- (void)siriSessionDidInitializeSessionInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_siriSessionInfo, info);
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIPresentation *)self->_presentation siriSessionDidInitializeSessionInfo:infoCopy];
  }
}

- (void)siriSessionDidUpdateSessionInfo:(id)info
{
  infoCopy = info;
  [(SRUIFSiriSessionInfo *)self->_siriSessionInfo applyInfo:?];
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIPresentation *)self->_presentation siriSessionDidUpdateSessionInfo:infoCopy];
  }
}

- (void)siriSessionDidReceivePlayContentCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    [(SiriUIPresentation *)self->_presentation handlePlayContentCommand:commandCopy completion:completionCopy];
  }
}

- (void)siriSessionDidReceiveLaunchTVRemoteCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  hashedRouteId = [commandCopy hashedRouteId];
  v8 = [[NSData alloc] initWithBase64EncodedString:hashedRouteId options:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006966C;
  v13[3] = &unk_1001684C8;
  v14 = objc_alloc_init(AFSecurityConnection);
  v15 = hashedRouteId;
  v16 = commandCopy;
  v17 = completionCopy;
  v9 = commandCopy;
  v10 = completionCopy;
  v11 = hashedRouteId;
  v12 = v14;
  [v12 processData:v8 usingProcedure:2 completion:v13];
}

- (void)siriSessionDidReceiveSnippetConfigurationRequestCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  v30 = objc_alloc_init(SAUISize);
  presentation = [(SRSiriViewController *)self presentation];
  if (objc_opt_respondsToSelector())
  {
    [presentation maxSizeForSnippet];
    v10 = v9;
    v12 = v11;
    view = [(SRSiriViewController *)self view];
    traitCollection = [view traitCollection];
    isAmbientPresented = [traitCollection isAmbientPresented];

    if (isAmbientPresented)
    {
      v10 = v10 / SiriSharedUICompactAmbientContentScaleAmount;
    }

    [v30 setWidth:v10];
    [v30 setHeight:v12];
    v16 = +[UIWindow _applicationKeyWindow];
    windowScene = [v16 windowScene];
    screen = [windowScene screen];
    [screen scale];
    [v30 setScale:?];
  }

  v19 = objc_alloc_init(SAUISnippetDisplayConfigurationResponse);
  [v19 setEstimatedVisibleSnippetDisplaySize:v30];
  aceId = [commandCopy aceId];

  [v19 setRefId:aceId];
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
  _presentationViewController = [(SRSiriViewController *)self _presentationViewController];
  traitCollection2 = [_presentationViewController traitCollection];

  aceDisplayColorScheme = [traitCollection2 aceDisplayColorScheme];
  [v19 setDisplayColorScheme:aceDisplayColorScheme];

  aceDisplayColorGamut = [traitCollection2 aceDisplayColorGamut];
  [v19 setDisplayGamut:aceDisplayColorGamut];

  aceDynamicTypeSize = [traitCollection2 aceDynamicTypeSize];
  [v19 setDynamicTypeSize:aceDynamicTypeSize];

  aceTextLegibilityWeight = [traitCollection2 aceTextLegibilityWeight];
  [v19 setTextLegibilityWeight:aceTextLegibilityWeight];

  aceDisplayContrast = [traitCollection2 aceDisplayContrast];
  [v19 setDisplayContrast:aceDisplayContrast];

  completionCopy[2](completionCopy, v19);
}

- (void)siriPresentation:(id)presentation requestHostBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence
{
  visibleCopy = visible;
  presentationCopy = presentation;
  fenceCopy = fence;
  if (reason == 2 && [(SRSiriSystemUIController *)self->_systemUIController presentingSystemUI])
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
    _host = [(SRSiriViewController *)self _host];
    [_host requestHostBlurVisible:visibleCopy reason:reason fence:fenceCopy];
  }
}

- (void)siriPresentation:(id)presentation reduceOrbOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  _host = [(SRSiriViewController *)self _host];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _host2 = [(SRSiriViewController *)self _host];
    [_host2 reduceOrbOpacity:opacityCopy];
  }
}

- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction
{
  conversationCopy = conversation;
  transactionCopy = transaction;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];

  if (_activeConversation == conversationCopy)
  {
    [(SRSiriViewController *)self _deletePreviousConversation];
  }

  v9 = objc_alloc_init(NSArray);
  insertedItemIndexPaths = [transactionCopy insertedItemIndexPaths];

  if (insertedItemIndexPaths)
  {
    insertedItemIndexPaths2 = [transactionCopy insertedItemIndexPaths];
    v12 = [v9 arrayByAddingObjectsFromArray:insertedItemIndexPaths2];

    v9 = v12;
  }

  updatedItemIndexPaths = [transactionCopy updatedItemIndexPaths];

  if (updatedItemIndexPaths)
  {
    updatedItemIndexPaths2 = [transactionCopy updatedItemIndexPaths];
    v15 = [v9 arrayByAddingObjectsFromArray:updatedItemIndexPaths2];

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

        [(SRSiriViewController *)self _didStartActionForItemAtIndexPath:*(*(&v25 + 1) + 8 * v20) inConversation:conversationCopy, v25];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }

  _presentation = [(SRSiriViewController *)self _presentation];
  [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement storeDialogPhasesForItemsAtIndexPaths:v16 forConversation:conversationCopy];
  if ([(SRSiriViewController *)self _presentationSupportsConversationDidChangeWithTransaction:_presentation])
  {
    [_presentation conversation:conversationCopy didChangeWithTransaction:transactionCopy];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      updatedItemIndexPaths3 = [transactionCopy updatedItemIndexPaths];
      if ([updatedItemIndexPaths3 count])
      {
        [_presentation conversation:conversationCopy didUpdateItemsAtIndexPaths:updatedItemIndexPaths3];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      insertedItemIndexPaths3 = [transactionCopy insertedItemIndexPaths];
      if ([insertedItemIndexPaths3 count])
      {
        [_presentation conversation:conversationCopy didInsertItemsAtIndexPaths:insertedItemIndexPaths3];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      presentationStateChangedItemIndexPaths = [transactionCopy presentationStateChangedItemIndexPaths];
      if ([presentationStateChangedItemIndexPaths count])
      {
        [_presentation conversation:conversationCopy didChangePresentationStateForItemsAtIndexPaths:presentationStateChangedItemIndexPaths];
      }
    }
  }
}

- (void)conversation:(id)conversation didRemoveItemsWithIdentifiers:(id)identifiers atIndexPaths:(id)paths parentItemIdentifiers:(id)itemIdentifiers
{
  conversationCopy = conversation;
  identifiersCopy = identifiers;
  pathsCopy = paths;
  itemIdentifiersCopy = itemIdentifiers;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];

  if (_activeConversation == conversationCopy)
  {
    [(SRSiriViewController *)self _deletePreviousConversation];
  }

  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    [_presentation conversation:conversationCopy didRemoveItemsWithIdentifiers:identifiersCopy atIndexPaths:pathsCopy parentItemIdentifiers:itemIdentifiersCopy];
  }
}

- (void)siriSessionDidReceiveExtendCurrentTTSCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  self->_delaySessionEndForInPlacePunchout = 1;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SRSiriViewController siriSessionDidReceiveExtendCurrentTTSCommand:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #punchout received request to delay current session end for In Place Punchout", &v11, 0xCu);
  }

  aceId = [commandCopy aceId];
  v10 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
  completionCopy[2](completionCopy, v10);
}

- (void)siriSessionDidReceiveRevealRecognizedSpeechCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceiveRevealRecognizedSpeechCommand:commandCopy];

    [(SRSiriViewController *)self _logAceObjectPresented:commandCopy dialogPhase:0];
    aceId = [commandCopy aceId];
    v12 = [SACommandSucceeded sruif_commandSucceededWithRefId:aceId];
  }

  else
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[SRSiriViewController siriSessionDidReceiveRevealRecognizedSpeechCommand:completion:]";
      v17 = 2112;
      v18 = commandCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s presentation does not implement didReceiveRevealRecognizedSpeechCommand for command:%@", &v15, 0x16u);
    }

    aceId = [commandCopy aceId];
    v12 = [SACommandFailed sruif_commandFailedWithRefId:aceId];
  }

  v14 = v12;
  completionCopy[2](completionCopy, v12);

  [(SRSiriViewController *)self _logRevealSpeechCommandReceived:commandCopy];
}

- (void)siriSessionDidReceivePaginateListCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 didReceivePaginateListCommand:commandCopy completion:completionCopy];

    [(SRSiriViewController *)self _logAceObjectPresented:commandCopy dialogPhase:0];
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[SRSiriViewController siriSessionDidReceivePaginateListCommand:completion:]";
      v16 = 2112;
      v17 = commandCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s presentation does not implement didReceivePaginateListCommand for command:%@", &v14, 0x16u);
    }

    aceId = [commandCopy aceId];
    v13 = [SACommandFailed sruif_commandFailedWithRefId:aceId];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (id)conversationIdentifiersForSiriPresentation:(id)presentation
{
  _conversations = [(SRSiriViewController *)self _conversations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_conversations count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = _conversations;
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

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        [v4 addObject:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)siriPresentation:(id)presentation activateConversationWithIdentifier:(id)identifier
{
  v5 = [(SRSiriViewController *)self _conversationWithIdentifier:identifier];
  [(SRSiriViewController *)self _activateConversation:v5];
}

- (id)siriPresentation:(id)presentation identifierOfItemAtIndexPath:(id)path
{
  pathCopy = path;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v7 = [_activeConversation identifierOfItemAtIndexPath:pathCopy];

  return v7;
}

- (id)siriPresentation:(id)presentation indexPathForItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v7 = [_activeConversation indexPathForItemWithIdentifier:identifierCopy];

  return v7;
}

- (id)_activeConversationItemAtIndexPath:(id)path
{
  pathCopy = path;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v6 = [_activeConversation itemAtIndexPath:pathCopy];

  return v6;
}

- (int64_t)siriPresentation:(id)presentation typeOfItemAtIndexPath:(id)path
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:path];
  type = [v4 type];

  if ((type - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (int64_t)siriPresentation:(id)presentation numberOfChildrenForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v7 = [_activeConversation numberOfChildrenForItemAtIndexPath:pathCopy];

  return v7;
}

- (id)siriPresentation:(id)presentation aceObjectForItemAtIndexPath:(id)path
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:path];
  aceObject = [v4 aceObject];

  return aceObject;
}

- (id)siriPresentation:(id)presentation aceCommandIdentifierForItemAtIndexPath:(id)path
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:path];
  aceCommandIdentifier = [v4 aceCommandIdentifier];

  return aceCommandIdentifier;
}

- (void)siriPresentation:(id)presentation insertAceViews:(id)views withDialogPhase:(id)phase asItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  phaseCopy = phase;
  viewsCopy = views;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation insertItemsForAceViews:viewsCopy withDialogPhase:phaseCopy atIndexPaths:pathsCopy];
}

- (void)siriPresentation:(id)presentation removeItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation removeItemsAtIndexPaths:pathsCopy];
}

- (void)siriPresentation:(id)presentation addSelectionResponse:(id)response
{
  responseCopy = response;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addSelectionResponse:responseCopy];
}

- (id)siriPresentation:(id)presentation domainObjectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(SRSiriViewController *)self domainObjectStoreForSiriPresentation:presentation];
  v8 = [v7 domainObjectForIdentifier:identifierCopy];

  return v8;
}

- (void)siriPresentation:(id)presentation setDomainObject:(id)object forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectCopy = object;
  v10 = [(SRSiriViewController *)self domainObjectStoreForSiriPresentation:presentation];
  [v10 setDomainObject:objectCopy forIdentifier:identifierCopy];
}

- (BOOL)siriPresentation:(id)presentation itemAtIndexPathIsVirgin:(id)virgin
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:virgin];
  isVirgin = [v4 isVirgin];

  return isVirgin;
}

- (double)contentWidthForForSiriPresentation:(id)presentation
{
  view = [(SRSiriViewController *)self view];
  [view frame];
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

+ (double)_contentWidthForWidth:(double)result isPhone:(BOOL)phone isZoomed:(BOOL)zoomed isLargeFormatPad:(BOOL)pad
{
  if (phone)
  {
    v6 = &SiriUIPhoneMaxContentWidth;
  }

  else
  {
    if (pad)
    {
      return SiriUILargeFormatPadContentWidth;
    }

    v6 = &SiriUIPadZoomedMaxContentWidth;
    if (!zoomed)
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

- (CGRect)statusBarFrameForSiriPresentation:(id)presentation
{
  [(SRSiriViewController *)self _statusBarFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)statusViewHeightForSiriPresentation:(id)presentation
{
  if ([(SRSiriViewController *)self textInputEnabled]&& (!self->_requestActive || [(SASRequestOptions *)self->_requestOptions inputType]!= 2))
  {
    return 0.0;
  }

  [(SRSiriViewController *)self _statusViewHeight];
  return result;
}

- ($5B118637EA29FD52B6AA7C9036D3A2A1)keyboardInfoForSiriPresentation:(SEL)presentation
{
  size = self[2].var3.size;
  *&retstr->var0 = self[2].var3.origin;
  *&retstr->var3.origin.y = size;
  *&retstr->var3.size.height = *&self[2].var4;
  return self;
}

- (id)activeRequestOptionsForSiriPresentation:(id)presentation
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

- (void)siriPresentation:(id)presentation startRequestForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    [(SRSiriViewController *)self startRequestForText:textCopy];
  }
}

- (void)siriPresentation:(id)presentation startRequestForSuggestion:(id)suggestion inputType:(int64_t)type suggestionRequestType:(int64_t)requestType
{
  suggestionCopy = suggestion;
  if ([suggestionCopy length])
  {
    [(SRSiriViewController *)self startRequestForSuggestion:suggestionCopy inputType:type suggestionRequestType:requestType];
  }
}

- (void)siriPresentationKeyboardViewDidAppear:(id)appear
{
  _host = [(SRSiriViewController *)self _host];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _host2 = [(SRSiriViewController *)self _host];
    [_host2 presentationDidPresentKeyboard];
  }
}

- (void)stopRecordingSpeechForSiriPresentation:(id)presentation
{
  _session = [(SRSiriViewController *)self _session];
  [_session stopRecordingSpeech];
}

- (void)cancelRequestForSiriPresentation:(id)presentation
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSiriViewController cancelRequestForSiriPresentation:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  _session = [(SRSiriViewController *)self _session];
  [_session cancelRequest];
}

- (void)invalidateConnectionForSiriPresentation:(id)presentation
{
  _session = [(SRSiriViewController *)self _session];
  [_session invalidateConnection];
}

- (void)siriResultsDidDismissInTamaleForSiriPresentation:(id)presentation
{
  v3 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_1001684E8];
  [v3 siriResultsDidDismissInTamale];
}

- (void)forceAudioSessionInactiveForSiriPresentation:(id)presentation
{
  _session = [(SRSiriViewController *)self _session];
  [_session forceAudioSessionInactive];
}

- (void)dismissSiriPresentation:(id)presentation withReason:(int64_t)reason
{
  presentationCopy = presentation;
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
  [(SRSiriViewController *)self _dismissWithReason:reason];
}

- (void)siriWillStopAttending:(id)attending
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSiriViewController siriWillStopAttending:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #autodismiss telling session to stop attending for attention loss", &v6, 0xCu);
  }

  _session = [(SRSiriViewController *)self _session];
  [_session stopAttending];
}

- (void)siriSessionShouldPrewarmForPossibleTextRequest:(id)request
{
  _session = [(SRSiriViewController *)self _session];
  [_session notifyTypingStarted];
}

- (void)_siriPresentation:(id)presentation speakTextForConversationItemIdentifier:(id)identifier delayed:(BOOL)delayed
{
  presentationCopy = presentation;
  identifierCopy = identifier;
  [(SRSiriViewController *)self _setStartRequestAceCommandSent:0];
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  if ([_activeConversation containsItemWithIdentifier:identifierCopy])
  {
    v11 = [_activeConversation itemWithIdentifier:identifierCopy];
    aceCommandIdentifier = [v11 aceCommandIdentifier];
    if (aceCommandIdentifier)
    {
      identifier = [(SRSiriViewController *)self _aceCommandWithIdentifier:aceCommandIdentifier];
      if (identifier)
      {
        _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
        v15 = [_aceCommandRecords resultForAceCommand:identifier];

        if (v15 != 2)
        {
          type = [v11 type];
          aceObject = [v11 aceObject];
          v53 = [objc_opt_class() _speechIdentifierForConversationItem:v11];
          v56 = aceObject;
          delayedCopy = delayed;
          if (type != 3)
          {
            speakableContextInfo = 0;
            refId = 0;
            v21 = 0;
            v22 = 0;
            canUseServerTTS = 1;
LABEL_25:
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 3221225472;
            v59[2] = sub_10006BBD4;
            v59[3] = &unk_100167768;
            v60 = presentationCopy;
            v61 = _activeConversation;
            v62 = identifierCopy;
            v27 = v11;
            v63 = v27;
            v55 = v22;
            v58 = v21;
            v43 = objc_retainBlock(v59);
            v49 = [SRSiriViewController _configuredSpeakableUtteranceParserForCommand:"_configuredSpeakableUtteranceParserForCommand:context:speakableText:subCompletion:speakPreparation:speakCompletion:" context:identifier speakableText:v22 subCompletion:v21 speakPreparation:? speakCompletion:?];
            v50 = 0;
            v48 = 0;
            dialogPhase = [v27 dialogPhase];
            [dialogPhase isExpository];

            dialogPhase2 = [v27 dialogPhase];
            aceDialogPhaseValue = [dialogPhase2 aceDialogPhaseValue];

            if (aceDialogPhaseValue)
            {
              v64 = @"dialogPhase";
              v65 = aceDialogPhaseValue;
              v47 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            }

            else
            {
              v47 = 0;
            }

            v42 = aceDialogPhaseValue;
            objc_opt_class();
            v46 = aceCommandIdentifier;
            v41 = v11;
            if (objc_opt_isKindOfClass())
            {
              [v27 aceObject];
              v32 = v31 = identifier;
              preferredSpeakableTextVoice = [v32 preferredSpeakableTextVoice];
              preferredSpeakableTextPromptStyle = [v32 preferredSpeakableTextPromptStyle];

              v35 = preferredSpeakableTextVoice;
              identifier = v31;
              aceCommandIdentifier = v46;
            }

            else
            {
              v35 = 0;
              preferredSpeakableTextPromptStyle = 0;
            }

            BYTE1(v40) = canUseServerTTS;
            LOBYTE(v40) = delayedCopy;
            v36 = v35;
            [SRSiriViewController _speakText:"_speakText:identifier:sessionId:preferredVoice:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:" identifier:v58 sessionId:v53 preferredVoice:refId promptStyle:0.4 provisionally:v40 eligibleAfterDuration:v49 delayed:v47 canUseServerTTS:speakableContextInfo speakableUtteranceParser:v50 analyticsContext:v48 speakableContextInfo:? preparation:? completion:?];
            if (v58)
            {
              [v27 aceObject];
              v38 = v37 = identifier;
              dialogPhase3 = [v27 dialogPhase];
              [(SRSiriViewController *)self _logAceObjectSpoken:v38 dialogPhase:dialogPhase3 speakableText:v58];

              identifier = v37;
              aceCommandIdentifier = v46;
            }

            v11 = v41;
            goto LABEL_34;
          }

          v18 = aceObject;
          context = [v18 context];
          refId = [v18 refId];
          canUseServerTTS = [v18 canUseServerTTS];
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
              _presentation = [(SRSiriViewController *)self _presentation];
              v24 = objc_opt_respondsToSelector();

              if (v24)
              {
                _presentation2 = [(SRSiriViewController *)self _presentation];
                [_presentation2 updateFeedbackFormWithSpeakableText:v57];
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
          speakableContextInfo = [v18 speakableContextInfo];

          v22 = context;
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
        v69 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Not speaking conversation item:%@. Item missing aceCommandIdentifier.", buf, 0x16u);
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_35;
      }

      identifier = [v11 identifier];
      [presentationCopy siriDidFinishActionsForConversationItemWithIdentifier:identifier inConversation:_activeConversation];
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
    v69 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Not speaking conversation item:%@. Item doesn't exist in activeConversation.", buf, 0x16u);
  }

LABEL_36:
}

- (void)_siriPresentation:(id)presentation speakTextForConversationItemIdentifierDidBecomeReady:(id)ready
{
  readyCopy = ready;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v8 = [_activeConversation itemWithIdentifier:readyCopy];

  v7 = [objc_opt_class() _speechIdentifierForConversationItem:v8];
  [(SRUIFSpeechSynthesizing *)self->_ttsManager processDelayedItem:v7];
}

- (void)siriPresentationDidPresentUserInterface:(id)interface
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidPresentUserInterface];
}

- (void)siriPresentation:(id)presentation didPresentConversationItemsWithIdentifiers:(id)identifiers
{
  presentationCopy = presentation;
  identifiersCopy = identifiers;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [identifiersCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        _activeConversation = [(SRSiriViewController *)self _activeConversation];
        v14 = [_activeConversation containsItemWithIdentifier:v12];

        if (v14)
        {
          _activeConversation2 = [(SRSiriViewController *)self _activeConversation];
          v16 = [_activeConversation2 itemWithIdentifier:v12];

          revisionIdentifier = [v16 revisionIdentifier];
          _presentedConversationItemRevisionIdentifiers = [(SRSiriViewController *)self _presentedConversationItemRevisionIdentifiers];
          v19 = [_presentedConversationItemRevisionIdentifiers containsObject:revisionIdentifier];

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
            v21 = identifiersCopy;
            _delayedConversationItemRevisionIdentifiers = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
            v23 = [_delayedConversationItemRevisionIdentifiers containsObject:revisionIdentifier];

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

              _delayedConversationItemRevisionIdentifiers2 = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
              [_delayedConversationItemRevisionIdentifiers2 removeObject:revisionIdentifier];

              [(SRSiriViewController *)self _siriPresentation:presentationCopy speakTextForConversationItemIdentifierDidBecomeReady:v12];
              _presentedConversationItemRevisionIdentifiers2 = [(SRSiriViewController *)self _presentedConversationItemRevisionIdentifiers];
              [_presentedConversationItemRevisionIdentifiers2 addObject:revisionIdentifier];
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

              _presentedConversationItemRevisionIdentifiers3 = [(SRSiriViewController *)self _presentedConversationItemRevisionIdentifiers];
              [_presentedConversationItemRevisionIdentifiers3 addObject:revisionIdentifier];

              [(SRSiriViewController *)self _siriPresentation:presentationCopy speakTextForConversationItemIdentifier:v12 delayed:0];
            }

            identifiersCopy = v21;
            v10 = v30;
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v9);
  }
}

- (void)siriPresentation:(id)presentation didPresentItemsAtIndexPaths:(id)paths
{
  presentationCopy = presentation;
  pathsCopy = paths;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pathsCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = pathsCopy;
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

        v15 = [_activeConversation identifierOfItemAtIndexPath:{*(*(&v16 + 1) + 8 * v14), v16}];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(SRSiriViewController *)self siriPresentation:presentationCopy didPresentConversationItemsWithIdentifiers:v9];
}

- (void)siriPresentation:(id)presentation willDiscardConversationItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [identifiersCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        _activeConversation = [(SRSiriViewController *)self _activeConversation];
        v13 = [_activeConversation containsItemWithIdentifier:v11];

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

          _activeConversation2 = [(SRSiriViewController *)self _activeConversation];
          v16 = [_activeConversation2 itemWithIdentifier:v11];

          aceCommandIdentifier = [v16 aceCommandIdentifier];
          v18 = [(SRSiriViewController *)self _aceCommandWithIdentifier:aceCommandIdentifier];
          [(SRSiriViewController *)self _didCompleteActionForAceCommand:v18 success:1];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [identifiersCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)siriPresentation:(id)presentation didDelayPresentationOfItemsWithIdentifiers:(id)identifiers
{
  presentationCopy = presentation;
  identifiersCopy = identifiers;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [identifiersCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        _activeConversation = [(SRSiriViewController *)self _activeConversation];
        v14 = [_activeConversation containsItemWithIdentifier:v12];

        if (v14)
        {
          _activeConversation2 = [(SRSiriViewController *)self _activeConversation];
          v16 = [_activeConversation2 itemWithIdentifier:v12];

          revisionIdentifier = [v16 revisionIdentifier];
          _delayedConversationItemRevisionIdentifiers = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
          v19 = [_delayedConversationItemRevisionIdentifiers containsObject:revisionIdentifier];

          if ((v19 & 1) == 0)
          {
            _delayedConversationItemRevisionIdentifiers2 = [(SRSiriViewController *)self _delayedConversationItemRevisionIdentifiers];
            [_delayedConversationItemRevisionIdentifiers2 addObject:revisionIdentifier];

            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v29 = "[SRSiriViewController siriPresentation:didDelayPresentationOfItemsWithIdentifiers:]";
              v30 = 2112;
              v31 = revisionIdentifier;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Processed but delaying presentation for conversation item with identifier %@", buf, 0x16u);
            }

            [(SRSiriViewController *)self _siriPresentation:presentationCopy speakTextForConversationItemIdentifier:v12 delayed:1];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (void)siriPresentation:(id)presentation synthesizeSpeechWithText:(id)text completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006C734;
  v8[3] = &unk_100168018;
  completionCopy = completion;
  v7 = completionCopy;
  [(SRSiriViewController *)self _synthesizeText:text identifier:0 sessionId:0 completion:v8];
}

- (void)siriPresentation:(id)presentation synthesizeSpeechWithPhoneticText:(id)text completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006C7F8;
  v8[3] = &unk_100168018;
  completionCopy = completion;
  v7 = completionCopy;
  [(SRSiriViewController *)self _synthesizePhoneticText:text identifier:0 sessionId:0 completion:v8];
}

- (int64_t)siriPresentation:(id)presentation presentationStateForItemAtIndexPath:(id)path
{
  v4 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:path];
  presentationState = [v4 presentationState];

  return presentationState;
}

- (void)siriPresentation:(id)presentation didCorrectRecognition:(id)recognition correctionIdentifier:(id)identifier forConversationItemWithIdentifier:(id)withIdentifier userSelectionResults:(id)results
{
  recognitionCopy = recognition;
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  resultsCopy = results;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v15 = mach_absolute_time();
  if ([_activeConversation containsItemWithIdentifier:withIdentifierCopy])
  {
    v16 = [_activeConversation itemWithIdentifier:withIdentifierCopy];
    if ([v16 type] == 1)
    {
      aceObject = [v16 aceObject];
      [aceObject sruif_setRecognitionWithCorrectedSpeech:recognitionCopy];
    }

    v18 = v15;
    v19 = [_activeConversation indexPathForItemWithIdentifier:withIdentifierCopy];
    [_activeConversation removeItemsFollowingItemAtIndexPath:v19];

    if ([(SASRequestOptions *)self->_requestOptions requestSource]- 24 <= 2)
    {
      [(SASRequestOptions *)self->_requestOptions setText:0];
      requestText = self->_requestText;
      self->_requestText = &stru_10016AE90;
    }

    _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
    currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

    _session = [(SRSiriViewController *)self _session];
    [_session startCorrectedRequestWithText:recognitionCopy correctionIdentifier:identifierCopy userSelectionResults:resultsCopy turnIdentifier:turnIdentifier machAbsoluteTime:v18];
  }
}

- (void)siriPresentation:(id)presentation startEditedRequestWithText:(id)text correctionIdentifier:(id)identifier userSelectionResults:(id)results
{
  resultsCopy = results;
  identifierCopy = identifier;
  textCopy = text;
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
  turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

  v14 = mach_absolute_time();
  _session = [(SRSiriViewController *)self _session];
  [_session startCorrectedRequestWithText:textCopy correctionIdentifier:identifierCopy userSelectionResults:resultsCopy turnIdentifier:turnIdentifier machAbsoluteTime:v14];
}

- (void)siriPresentation:(id)presentation didCorrectRecognition:(id)recognition correctionIdentifier:(id)identifier forItemAtIndexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  recognitionCopy = recognition;
  presentationCopy = presentation;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v15 = [_activeConversation identifierOfItemAtIndexPath:pathCopy];

  [(SRSiriViewController *)self siriPresentation:presentationCopy didCorrectRecognition:recognitionCopy correctionIdentifier:identifierCopy forConversationItemWithIdentifier:v15 userSelectionResults:0];
}

- (void)_performAceCommand:(id)command conversationIdentifier:(id)identifier turnIdentifier:(id)turnIdentifier completion:(id)completion
{
  commandCopy = command;
  identifierCopy = identifier;
  turnIdentifierCopy = turnIdentifier;
  completionCopy = completion;
  sruif_aceCommandType = [commandCopy sruif_aceCommandType];
  if (sruif_aceCommandType > 2)
  {
    if (sruif_aceCommandType == 3)
    {
      [(SRSiriViewController *)self _performContinueOnDeviceCommand:commandCopy completion:completionCopy];
    }

    else if (sruif_aceCommandType == 4)
    {
      [(SRSiriViewController *)self _performStartRequest:commandCopy turnIdentifier:turnIdentifierCopy completion:completionCopy];
    }
  }

  else
  {
    switch(sruif_aceCommandType)
    {
      case 1:
        [(SRSiriViewController *)self _performGenericAceCommand:commandCopy turnIdentifier:turnIdentifierCopy completion:completionCopy];
        break;
      case 2:
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10006CDA8;
        v18[3] = &unk_100167428;
        v19 = completionCopy;
        [(SRSiriViewController *)self _performAppPunchOutCommand:commandCopy conversationItemIdentifier:identifierCopy completion:v18];

        break;
      case 0:
        commandCopy = [NSString stringWithFormat:@"Cannot perform non-command: %@", commandCopy];
        v16 = [NSException exceptionWithName:NSInvalidArgumentException reason:commandCopy userInfo:0];
        v17 = v16;

        objc_exception_throw(v16);
    }
  }
}

- (void)siriPresentation:(id)presentation openURL:(id)l conversationId:(id)id completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006CE78;
  v10[3] = &unk_100167428;
  completionCopy = completion;
  v9 = completionCopy;
  [(SRSiriViewController *)self _openURL:l bundleId:0 inPlace:0 launchOptions:0 conversationId:id completion:v10];
}

- (void)enableIdleTimerForSiriPresentation:(id)presentation
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

- (void)disableIdleTimerForSiriPresentation:(id)presentation
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

- (void)siriPresentation:(id)presentation setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _host = [(SRSiriViewController *)self _host];
  [_host setStatusViewHidden:hiddenCopy];
}

- (void)siriPresentation:(id)presentation setTypeToSiriViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _host = [(SRSiriViewController *)self _host];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _host2 = [(SRSiriViewController *)self _host];
    [_host2 setTypeToSiriViewHidden:hiddenCopy];
  }
}

- (void)siriPresentation:(id)presentation setFullScreenDimmingLayerVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if ((SiriUIDeviceIsPad() & 1) == 0 && +[AFSystemAssistantExperienceStatusManager saeAvailable])
  {
    view = [(SRSiriViewController *)self view];
    layer = [view layer];
    [layer setHitTestsAsOpaque:visibleCopy];
  }

  _host = [(SRSiriViewController *)self _host];
  [_host setFullScreenDimmingLayerVisible:visibleCopy animated:animatedCopy];
}

- (void)siriPresentation:(id)presentation inputTypeDidChange:(int64_t)change
{
  _host = [(SRSiriViewController *)self _host];
  [_host inputTypeDidChange:change];
}

- (void)siriPresentation:(id)presentation setStatusViewDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  _host = [(SRSiriViewController *)self _host];
  [_host setStatusViewDisabled:disabledCopy];
}

- (void)siriPresentation:(id)presentation setStatusViewUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _host = [(SRSiriViewController *)self _host];
  [_host setStatusViewUserInteractionEnabled:enabledCopy];
}

- (void)siriPresentation:(id)presentation willPresentViewController:(id)controller
{
  controllerCopy = controller;
  _host = [(SRSiriViewController *)self _host];
  preferredStatusBarStyle = [controllerCopy preferredStatusBarStyle];

  [_host serviceWillPresentViewControllerWithStatusBarStyle:preferredStatusBarStyle];
}

- (void)siriPresentation:(id)presentation didPresentViewController:(id)controller
{
  controllerCopy = controller;
  _host = [(SRSiriViewController *)self _host];
  preferredStatusBarStyle = [controllerCopy preferredStatusBarStyle];

  [_host serviceDidPresentViewControllerWithStatusBarStyle:preferredStatusBarStyle];
}

- (void)siriPresentation:(id)presentation willDismissViewController:(id)controller
{
  controllerCopy = controller;
  _host = [(SRSiriViewController *)self _host];
  preferredStatusBarStyle = [controllerCopy preferredStatusBarStyle];

  [_host serviceWillDismissViewControllerWithStatusBarStyle:preferredStatusBarStyle];
}

- (void)siriPresentation:(id)presentation didDismissViewController:(id)controller
{
  controllerCopy = controller;
  _host = [(SRSiriViewController *)self _host];
  preferredStatusBarStyle = [controllerCopy preferredStatusBarStyle];

  [_host serviceDidDismissViewControllerWithStatusBarStyle:preferredStatusBarStyle];
}

- (void)siriPresentation:(id)presentation setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  _host = [(SRSiriViewController *)self _host];
  [_host setStatusBarHidden:hiddenCopy animated:animatedCopy];
}

- (void)siriPresentation:(id)presentation setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  _host = [(SRSiriViewController *)self _host];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006D5A8;
  v12[3] = &unk_1001674E0;
  v13 = completionCopy;
  v11 = completionCopy;
  [_host setStatusBarHidden:hiddenCopy animated:animatedCopy completion:v12];
}

- (void)siriPresentation:(id)presentation setHelpButtonEmphasized:(BOOL)emphasized
{
  emphasizedCopy = emphasized;
  _host = [(SRSiriViewController *)self _host];
  [_host setHelpButtonEmphasized:emphasizedCopy];
}

- (void)siriPresentationPulseHelpButton:(id)button
{
  _host = [(SRSiriViewController *)self _host];
  [_host pulseHelpButton];
}

- (BOOL)siriPresentationShouldDelaySuggestions:(id)suggestions
{
  if (![(SRSiriViewController *)self textInputEnabled]|| (v4 = [(SASRequestOptions *)self->_requestOptions requestSource], v4 != 1))
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)siriPresentation:(id)presentation setBugReportingAvailable:(BOOL)available
{
  availableCopy = available;
  _host = [(SRSiriViewController *)self _host];
  [_host setBugReportingAvailable:availableCopy];
}

- (void)siriPresentationDidPresentBugReporter:(id)reporter
{
  _host = [(SRSiriViewController *)self _host];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _host2 = [(SRSiriViewController *)self _host];
    [_host2 serviceDidPresentBugReporter];
  }
}

- (void)siriPresentationDidDismissBugReporter:(id)reporter
{
  _host = [(SRSiriViewController *)self _host];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _host2 = [(SRSiriViewController *)self _host];
    [_host2 serviceDidDismissBugReporter];
  }
}

- (void)getScreenshotImageForSiriPresentation:(id)presentation withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    _host = [(SRSiriViewController *)self _host];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006D8B0;
    v7[3] = &unk_100168510;
    v8 = completionCopy;
    [_host getScreenshotWithReplyHandler:v7];
  }
}

- (void)siriPresentationPresentAcousticIDSpinner:(id)spinner
{
  v7 = objc_alloc_init(SAAIStartSession);
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  [v7 setAceId:uUIDString];

  [(SRSiriViewController *)self _didReceiveAceCommand:v7];
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addItemForMusicStartSessionCommand:v7];
}

- (void)siriPresentationRemoveAcousticIDSpinner:(id)spinner
{
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  lastItem = [_activeConversation lastItem];

  if ([lastItem type] == 5)
  {
    identifier = [lastItem identifier];
    v6 = [NSSet setWithObject:identifier];

    _activeConversation2 = [(SRSiriViewController *)self _activeConversation];
    [_activeConversation2 removeItemsWithIdentifiers:v6];
  }
}

- (void)siriPresentation:(id)presentation didEditSpeechRecognized:(id)recognized forInterval:(double)interval
{
  recognizedCopy = recognized;
  v8 = [AFMetrics alloc];
  refId = [recognizedCopy refId];

  v10 = [NSNumber numberWithDouble:interval];
  v12 = [v8 initWithOriginalCommandId:refId category:4 duration:v10];

  _session = [(SRSiriViewController *)self _session];
  [_session recordUIMetrics:v12];
}

- (void)siriPresentation:(id)presentation didScrollForInterval:(double)interval metricsContext:(id)context
{
  presentationCopy = presentation;
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = [(SRSiriViewController *)self _activeConversation];

    if (contextCopy)
    {
      _activeConversation = [(SRSiriViewController *)self _activeConversation];
      identifier = [_activeConversation identifier];
      v12 = [(SRSiriViewController *)self _punchoutMetricsAceCommandIdForItemWithIdentifier:identifier];

      contextCopy = [(SRSiriViewController *)self _metricsContextForItemWithAceCommandId:v12];
    }
  }

  v13 = [NSString stringWithFormat:@"%.02f", *&interval];
  v14 = v13;
  if (contextCopy)
  {
    v22[0] = @"metricsContext";
    v22[1] = @"duration";
    v23[0] = contextCopy;
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
  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1432 context:v18];
}

- (void)siriPresentation:(id)presentation didShowAceViewWithIdentifier:(id)identifier aceViewClass:(Class)class metricsContext:(id)context forInterval:(double)interval
{
  identifierCopy = identifier;
  contextCopy = context;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v14 = [_activeConversation containsItemWithIdentifier:identifierCopy];

  if (v14)
  {
    _activeConversation2 = [(SRSiriViewController *)self _activeConversation];
    v16 = [_activeConversation2 itemWithIdentifier:identifierCopy];

    objc_initWeak(&location, self);
    v17 = dispatch_get_global_queue(0, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006DE68;
    v19[3] = &unk_100168560;
    v22[1] = class;
    v20 = contextCopy;
    v21 = v16;
    v22[2] = *&interval;
    v18 = v16;
    objc_copyWeak(v22, &location);
    dispatch_async(v17, v19);

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (void)siriPresentation:(id)presentation didShowTipWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate flowID:(id)d
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  identifierCopy = identifier;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v15 = [_activeConversation containsItemWithIdentifier:identifierCopy];

  if (v15)
  {
    v16 = +[CKKnowledgeStore defaultSynchedKnowledgeStore];
    v17 = [[CKPermanentEventStore alloc] initWithKnowledgeStore:v16];
    v18 = [NSString stringWithFormat:@"%@#%@", dCopy, @"TipOnScreen"];
    v19 = [[CKEvent alloc] initWithIdentifier:v18 startDate:dateCopy endDate:endDateCopy metadata:0];
    [v17 recordEvent:v19 completionHandler:&stru_100168580];
  }
}

- (void)siriPresentation:(id)presentation didShowGuideStartTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  v10 = +[CKKnowledgeStore defaultSynchedKnowledgeStore];
  v8 = [[CKPermanentEventStore alloc] initWithKnowledgeStore:v10];
  v9 = [[CKEvent alloc] initWithIdentifier:@"SiriGuideShown" startDate:timeCopy endDate:endTimeCopy metadata:0];

  [v8 recordEvent:v9 completionHandler:&stru_1001685A0];
}

- (void)handlePasscodeUnlockForSiriPresentation:(id)presentation withClient:(unint64_t)client withCompletion:(id)completion
{
  completionCopy = completion;
  _host = [(SRSiriViewController *)self _host];
  [_host handlePasscodeUnlockWithClient:client withCompletion:completionCopy];
}

- (void)siriPresentationMicButtonWasTapped:(id)tapped
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidDetectMicButtonTap];
}

- (void)siriPresentationMicButtonLongPressBegan:(id)began
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidDetectMicButtonLongPressBegan];
}

- (void)siriPresentationMicButtonLongPressEnded:(id)ended
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidDetectMicButtonLongPressEnded];
}

- (void)siriPresentation:(id)presentation didChangePeekMode:(unint64_t)mode
{
  if (mode - 1 >= 3)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  _host = [(SRSiriViewController *)self _host];
  [_host servicePresentationDidChangePeekMode:modeCopy];
}

- (void)siriPresentation:(id)presentation didChangeVisualState:(unint64_t)state
{
  _host = [(SRSiriViewController *)self _host];
  [_host servicePresentationDidChangeVisualState:state];
}

- (void)siriPresentation:(id)presentation willChangeKeyboardVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  _host = [(SRSiriViewController *)self _host];
  [_host serviceViewControllerWillChangeKeyboardVisibility:visibilityCopy];
}

- (void)siriPresentation:(id)presentation requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  _host = [(SRSiriViewController *)self _host];
  [_host serviceViewControllerRequestsKeyboardWithCompletion:completionCopy];
}

- (void)siriPresentation:(id)presentation willBeginEditingOfType:(int64_t)type
{
  if (type == 1)
  {
    [(SRSiriViewController *)self _setUserUtteranceTapToEditInProgress:1];
  }

  _host = [(SRSiriViewController *)self _host];
  [_host serviceWillBeginEditing];
}

- (void)siriPresentationDidResignFirstResponder:(id)responder
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidEndEditing];
}

- (void)siriPresentationRequestsHIDEventDefferal:(id)defferal
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceRequestsHIDEventDefferal];
}

- (void)siriPresentationCancelHIDEventDefferal:(id)defferal
{
  _host = [(SRSiriViewController *)self _host];
  [_host serviceCancelHIDEventDefferal];
}

- (void)siriPresentation:(id)presentation requestsTouchPassThroughEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Disabling";
    if (enabledCopy)
    {
      v7 = @"Enabling";
    }

    v10 = 136315394;
    v11 = "[SRSiriViewController siriPresentation:requestsTouchPassThroughEnabled:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@ touch pass through on SRSiriViewController", &v10, 0x16u);
  }

  view = [(SRSiriViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:!enabledCopy];
}

- (void)siriPresentation:(id)presentation didPresentIntentWithBundleId:(id)id
{
  idCopy = id;
  _host = [(SRSiriViewController *)self _host];
  [_host servicePresentedIntentWithBundleId:idCopy];
}

- (void)siriPresentationClearContext:(id)context
{
  _session = [(SRSiriViewController *)self _session];
  [_session clearContext];
}

- (id)siriPresentation:(id)presentation additionalSpeechInterpretationsForRefId:(id)id
{
  idCopy = id;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v7 = [_activeConversation additionalSpeechInterpretationsForRefId:idCopy];

  return v7;
}

- (id)siriPresentation:(id)presentation updatedUserUtteranceForRefId:(id)id
{
  idCopy = id;
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  v7 = [_activeConversation updatedUserUtteranceForRefId:idCopy];

  return v7;
}

- (void)siriPresentationDidPresentConversationFromBreadcrumb:(id)breadcrumb
{
  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:+[UIKeyboard isInHardwareKeyboardMode]^ 1];
  _host = [(SRSiriViewController *)self _host];
  [_host serviceDidPresentConversationFromBreadcrumb];
}

- (BOOL)inTextInputModeForSiriPresentation:(id)presentation
{
  textInputEnabled = [(SRSiriViewController *)self textInputEnabled];
  if (textInputEnabled)
  {
    LOBYTE(textInputEnabled) = !self->_requestActive || [(SASRequestOptions *)self->_requestOptions requestSource]!= 8 && (!SiriUIIsHTTForTextInputEnabled() || [(SASRequestOptions *)self->_requestOptions inputType]!= 2) || self->_keyboardInfo.keyboardHeight > 0.0;
  }

  return textInputEnabled;
}

- (void)siriPresentationDidHideUnlockScreen:(id)screen
{
  v4 = +[UIKeyboard isInHardwareKeyboardMode]^ 1;

  [(SRSiriViewController *)self _setShowKeyboardIfTextInputEnabled:1 minimized:v4];
}

- (void)siriPresentationWillSendStartRequest:(id)request
{
  [(SRSiriViewController *)self _setStartRequestAceCommandSent:1];

  [(SRSiriViewController *)self _cancelSpeechSynthesis];
}

- (void)siriPresentationRequestsStartAttendingForNonSpeechRequest:(id)request deviceID:(id)d
{
  dCopy = d;
  _session = [(SRSiriViewController *)self _session];
  [_session startAttendingWithDeviceID:dCopy];
}

- (id)localeForSiriPresentation:(id)presentation
{
  v4 = [NSLocale alloc];
  _language = [(SRSiriViewController *)self _language];
  spokenLanguageCode = [_language spokenLanguageCode];
  v7 = [v4 initWithLocaleIdentifier:spokenLanguageCode];

  return v7;
}

- (void)siriPresentationDidRequestRestartSpeechSynthesis:(id)synthesis
{
  previousSayItCommand = self->_previousSayItCommand;
  if (previousSayItCommand)
  {
    [(SRSiriViewController *)self siriSessionDidReceiveSayItCommand:previousSayItCommand completion:0];
  }
}

- (void)siriPresentationDidPresentDynamicSnippetWithInfo:(id)info
{
  infoCopy = info;
  _session = [(SRSiriViewController *)self _session];
  [_session siriUIDidPresentDynamicSnippetWithInfo:infoCopy];
}

- (void)siriPresentation:(id)presentation handleStartLocalRequest:(id)request turnIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SRSiriViewController siriPresentation:handleStartLocalRequest:turnIdentifier:]";
    v14 = 2112;
    v15 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Handling startLocalRequest : %@", &v12, 0x16u);
  }

  v10 = mach_absolute_time();
  _session = [(SRSiriViewController *)self _session];
  [_session performAceCommand:requestCopy turnIdentifier:identifierCopy machAbsoluteTime:v10];
}

- (void)_emitRenderingStarted
{
  v3 = objc_alloc_init(SISchemaUEIUIRenderingStarted);
  [v3 setExists:1];
  v4 = objc_alloc_init(SISchemaUEIUIRenderingContext);
  [v4 setStartedOrChanged:v3];
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:v4];

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
  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:v4];

  v6 = AFSiriLogContextPerformance;
  v7 = v6;
  uiRenderSignpost = self->_uiRenderSignpost;
  if (uiRenderSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, uiRenderSignpost, "UIRenderTime", "", v9, 2u);
  }
}

- (void)siriPresentation:(id)presentation viewDidAppearWithAceObject:(id)object
{
  objectCopy = object;
  presentationCopy = presentation;
  encodedClassName = [objectCopy encodedClassName];
  aceId = [objectCopy aceId];
  [(SRSiriViewController *)self siriPresentation:presentationCopy viewDidAppearWithClassDescriptor:encodedClassName identifier:aceId];

  v10 = [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement dialogPhaseForAceObject:objectCopy];
  if (!v10)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[SRSiriViewController siriPresentation:viewDidAppearWithAceObject:]";
      v14 = 2112;
      v15 = objectCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Dialog phase is unexpectedly nil for aceObject : %@", &v12, 0x16u);
    }
  }

  [(SRSiriViewController *)self _logAceObjectPresented:objectCopy dialogPhase:v10];
}

- (void)siriPresentation:(id)presentation viewDidAppearWithClassDescriptor:(id)descriptor identifier:(id)identifier
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  [(SRSiriViewController *)self _emitRenderingEnded];
  v8 = +[NSMutableDictionary dictionary];
  if ([descriptorCopy length])
  {
    [v8 setObject:descriptorCopy forKeyedSubscript:@"viewClass"];
  }

  if ([identifierCopy length])
  {
    [v8 setObject:identifierCopy forKeyedSubscript:@"identifier"];
  }

  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1461 context:v8];
}

- (void)siriPresentation:(id)presentation viewDidDisappearWithClassDescriptor:(id)descriptor identifier:(id)identifier
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v8 = +[NSMutableDictionary dictionary];
  if ([descriptorCopy length])
  {
    [v8 setObject:descriptorCopy forKeyedSubscript:@"viewClass"];
  }

  if ([identifierCopy length])
  {
    [v8 setObject:identifierCopy forKeyedSubscript:@"identifier"];
  }

  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1462 context:v8];
}

- (void)toggleHomeAffordanceHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _host = [(SRSiriViewController *)self _host];
  [_host toggleHomeAffordanceHidden:hiddenCopy];
}

- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)control
{
  controlCopy = control;
  _host = [(SRSiriViewController *)self _host];
  [_host toggleSiriHomeAffordanceGestureControl:controlCopy];
}

- (void)updateEdgeLightWindowLevel:(int64_t)level
{
  _host = [(SRSiriViewController *)self _host];
  [_host updateEdgeLightWindowLevel:level];
}

- (void)_insertUserUtteranceViewForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    selfCopy = self;
    v5 = objc_alloc_init(SASToken);
    [v5 setText:textCopy];
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
    uUIDString = [v13 UUIDString];
    [v12 setAceId:uUIDString];

    v15 = +[NSUUID UUID];
    uUIDString2 = [v15 UUIDString];
    [v12 setRefId:uUIDString2];

    [v12 setTitle:textCopy];
    [v12 setRecognition:v10];
    v17 = +[NSUUID UUID];
    uUIDString3 = [v17 UUIDString];
    [v12 setSessionId:uUIDString3];

    v19 = objc_alloc_init(SASSpeechPartialResult);
    v25 = v5;
    v20 = [NSArray arrayWithObjects:&v25 count:1];
    [v19 setTokens:v20];

    v21 = +[NSUUID UUID];
    uUIDString4 = [v21 UUIDString];
    [v19 setAceId:uUIDString4];

    refId = [v12 refId];
    [v19 setRefId:refId];

    [(SRSiriViewController *)selfCopy siriSessionDidReceiveSpeechPartialResultCommand:v19];
    [(SRSiriViewController *)selfCopy siriSessionDidReceiveSpeechRecognizedCommand:v12];
  }
}

- (void)_insertUserUtteranceViewForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if ([suggestionCopy length])
  {
    v4 = objc_alloc_init(SASToken);
    [v4 setText:suggestionCopy];
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
    uUIDString = [v12 UUIDString];
    [v11 setAceId:uUIDString];

    v14 = +[NSUUID UUID];
    uUIDString2 = [v14 UUIDString];
    [v11 setRefId:uUIDString2];

    [v11 setTitle:suggestionCopy];
    [v11 setRecognition:v9];
    v16 = +[NSUUID UUID];
    uUIDString3 = [v16 UUIDString];
    [v11 setSessionId:uUIDString3];

    recognition = [v11 recognition];
    refId = [v11 refId];
    sessionId = [v11 sessionId];
    v21 = [recognition af_userUtteranceValueWithRefId:refId sessionId:sessionId];

    v22 = [[SRUIFSpeechRecognitionHypothesis alloc] initWithUserUtterance:v21 backingAceObject:0 isFinal:1];
    _presentation = [(SRSiriViewController *)self _presentation];
    LOBYTE(v4) = objc_opt_respondsToSelector();

    if (v4)
    {
      _presentation2 = [(SRSiriViewController *)self _presentation];
      [_presentation2 updateSpeechRecognitionHypothesisForSuggestion:v22];

      [(SRSiriViewController *)self siriSessionDidReceiveSpeechRecognizedCommand:v11];
    }
  }
}

- (void)siriSessionRequestsReadoutOfBulletin:(id)bulletin completion:(id)completion
{
  bulletinCopy = bulletin;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = bulletinCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #cmas #carPlay %@", buf, 0x16u);
  }

  if (bulletinCopy)
  {
    v16 = completionCopy;
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
    title = [bulletinCopy title];
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315394;
      v33 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
      v34 = 2112;
      v35 = title;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #cmas #carPlay Title of emergency bulletin to speak: %@", v32, 0x16u);
    }

    v12 = [title length];
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
      [(SRSiriViewController *)self _synthesizeText:title identifier:0 sessionId:0 completion:v26];

      objc_destroyWeak(&v29);
    }

    message = [bulletinCopy message];
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315394;
      v33 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]";
      v34 = 2112;
      v35 = message;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s #cmas #carPlay Message of emergency bulletin to speak: %@", v32, 0x16u);
    }

    if ([message length])
    {
      dispatch_group_enter(v9);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10007005C;
      v22[3] = &unk_1001683B8;
      v24 = v31;
      objc_copyWeak(&v25, &location);
      v23 = v9;
      [(SRSiriViewController *)self _synthesizeText:message identifier:0 sessionId:0 completion:v22];

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

    completionCopy = v16;
  }
}

- (unint64_t)_readoutResultFromTTSResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  if (result == 1 && [SRUIFSpeechSynthesisUtility isSpeechSynthesisErrorUserCancelled:errorCopy])
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[SRSiriViewController _readoutResultFromTTSResult:error:]";
      v10 = 2112;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #cmas #carPlay received a user cancelled voice services error, setting state to AFUIBulletinReadoutResultSynthesisCancelled. %@", &v8, 0x16u);
    }

    result = 3;
  }

  else
  {
    if (errorCopy && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDF8C();
    }

    if ((result - 1) >= 3)
    {
      result = 0;
    }
  }

  return result;
}

- (unint64_t)_readoutResultFromTitleResult:(unint64_t)result messageResult:(unint64_t)messageResult
{
  result = 2;
  if (result != 2 && messageResult != 2)
  {
    result = 3;
    if (result != 3 && messageResult != 3)
    {
      if (result == 1 && !messageResult || result <= 1 && messageResult == 1)
      {
        return 1;
      }

      else
      {
        v6 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE008(v6, result);
        }

        return 0;
      }
    }
  }

  return result;
}

- (void)_setRequestOptions:(id)options
{
  objc_storeStrong(&self->_requestOptions, options);

  [(SRSiriViewController *)self _activeRequestOptionsDidChange];
}

- (void)setRequestOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[SRSiriViewController setRequestOptions:]";
    v13 = 2112;
    v14 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v11, 0x16u);
  }

  [(SRSiriViewController *)self _setRequestOptions:optionsCopy];
  [(SRModeProvider *)self->_modeProvider setRequestOptions:optionsCopy];
  if ([optionsCopy isInitialBringUp])
  {
    [(SRSiriViewController *)self _setAcousticIdAllowed:1];
  }

  testingContext = [optionsCopy testingContext];
  testingContext = self->_testingContext;
  self->_testingContext = testingContext;

  _presentation = [(SRSiriViewController *)self _presentation];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 configureForRequestOptions:optionsCopy];
  }
}

- (void)_startRequestWithOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SRSiriViewController _startRequestWithOptions:]";
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
  turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

  if (turnIdentifier)
  {
    [optionsCopy setPreviousTurnIdentifier:turnIdentifier];
  }

  [(SRSiriViewController *)self _setWaitingForStartRequest:1];
  if ([(SRSiriViewController *)self _usesEventDrivenIdleAndQuietUpdates])
  {
    [(SRSiriViewController *)self _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
  }

  v9 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100168608];
  [v9 serviceStartRequestWithOptions:optionsCopy];
}

- (void)siriSessionDidStartAcousticIDRequest
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 acousticIDRequestDidStart];
  }
}

- (void)siriSessionDidFinishAcousticIDRequestWithSuccess:(BOOL)success
{
  successCopy = success;
  _presentation = [(SRSiriViewController *)self _presentation];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 acousticIDRequestDidFinishWithSuccess:successCopy];
  }
}

- (void)siriSessionRequestedCancelPhotoSelectionWithAnimation:(BOOL)animation
{
  phPicker = self->_phPicker;
  if (phPicker)
  {
    [(SiriSharedUIPhPicker *)phPicker dismissPhotoPickerIfExistsWithAnimation:animation];
  }
}

- (void)siriSessionRequestedPhotoSelectionWithPhotoPickerRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  phPicker = self->_phPicker;
  if (!phPicker)
  {
    v9 = objc_alloc_init(SiriSharedUIPhPicker);
    v10 = self->_phPicker;
    self->_phPicker = v9;

    phPicker = self->_phPicker;
  }

  _presentationViewController = [(SRSiriViewController *)self _presentationViewController];
  searchQuery = [requestCopy searchQuery];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100070AF4;
  v14[3] = &unk_100168630;
  v15 = completionCopy;
  v13 = completionCopy;
  [(SiriSharedUIPhPicker *)phPicker presentPhotoPicker:_presentationViewController withSearchString:searchQuery withSelectionLimit:0 completion:v14];
}

- (void)preloadPresentationBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SRSiriPresentationPluginHost sharedSiriPresentationPluginHost];
  [v4 preloadPresentationBundleWithIdentifier:identifierCopy];
}

- (id)_dialogPhaseForItemAtIndexPath:(id)path
{
  v3 = [(SRSiriViewController *)self _activeConversationItemAtIndexPath:path];
  dialogPhase = [v3 dialogPhase];

  return dialogPhase;
}

- (void)_performGenericAceCommand:(id)command turnIdentifier:(id)identifier completion:(id)completion
{
  commandCopy = command;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = mach_absolute_time();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _performSayItCommand:commandCopy];
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _cancelCurrentTTS:commandCopy];
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRSiriViewController *)self _cancelCurrentAudioMessagePlayback:commandCopy];
    if (!completionCopy)
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
      v20 = commandCopy;
      v21 = 2112;
      v22 = previousSayItCommand;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #tts recording _previousSayItCommand completed before processing ace command=%@, previousSayItCommand=%@", &v17, 0x20u);
    }

    [(SRSiriViewController *)self _didCompleteActionForAceCommand:self->_previousSayItCommand success:1];
    v15 = self->_previousSayItCommand;
    self->_previousSayItCommand = 0;
  }

  _session = [(SRSiriViewController *)self _session];
  [_session performAceCommand:commandCopy turnIdentifier:identifierCopy machAbsoluteTime:v12];

  if (completionCopy)
  {
LABEL_15:
    completionCopy[2](completionCopy, 1);
  }

LABEL_16:
}

- (void)_performStartRequest:(id)request turnIdentifier:(id)identifier completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    inputOrigin = [requestCopy inputOrigin];
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
  _uiPresentationIdentifier = [(SRSiriViewController *)self _uiPresentationIdentifier];
  v16 = [v14 initWithRequestSource:v12 uiPresentationIdentifier:_uiPresentationIdentifier];

  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  [v16 setIsForBluetoothCar:{objc_msgSend(_requestOptions, "isForBluetoothCar")}];

  _requestOptions2 = [(SRSiriViewController *)self _requestOptions];
  originalRequestOptions = [_requestOptions2 originalRequestOptions];
  if (originalRequestOptions)
  {
    [v16 setOriginalRequestOptions:originalRequestOptions];
  }

  else
  {
    _requestOptions3 = [(SRSiriViewController *)self _requestOptions];
    [v16 setOriginalRequestOptions:_requestOptions3];
  }

  [v16 setStartRecordingSoundId:self->_startRecordingSoundId];
  [(SRSiriViewController *)self setRequestOptions:v16];
  [(SRSiriViewController *)self siriWillActivateFromSource:v12];
  [(SRSiriViewController *)self _performGenericAceCommand:requestCopy turnIdentifier:identifierCopy completion:completionCopy];

  [(SRSiriViewController *)self siriDidActivateFromSource:v12];
}

- (void)_performSayItCommand:(id)command
{
  commandCopy = command;
  context = [commandCopy context];
  message = [commandCopy message];
  v30 = 0;
  v31 = 0;
  v28 = context;
  v27 = [(SRSiriViewController *)self _configuredSpeakableUtteranceParserForCommand:commandCopy context:context speakableText:message subCompletion:0 speakPreparation:&v31 speakCompletion:&v30];
  v29 = v31;
  v7 = v30;

  if (!self->_listenAfterSpeakingForRequestFinished)
  {
    listenAfterSpeaking = [commandCopy listenAfterSpeaking];
    bOOLValue = [listenAfterSpeaking BOOLValue];

    if (bOOLValue)
    {
      [(SRSiriViewController *)self _setListenAfterSpeakingForRequestFinished:1];
      listenAfterSpeakingBehavior = [commandCopy listenAfterSpeakingBehavior];
      startAlertSoundID = [listenAfterSpeakingBehavior startAlertSoundID];
      startRecordingSoundId = self->_startRecordingSoundId;
      self->_startRecordingSoundId = startAlertSoundID;
    }
  }

  [(SRSiriViewController *)self _didStartActionForAceCommand:commandCopy];
  voiceName = [commandCopy voiceName];

  if (voiceName)
  {
    v14 = objc_alloc_init(SAVoice);
    voiceName2 = [commandCopy voiceName];
    [v14 setName:voiceName2];

    languageCode = [commandCopy languageCode];
    v26 = v14;
    [v14 setLanguageString:languageCode];
  }

  else
  {
    v26 = 0;
  }

  message2 = [commandCopy message];
  audioData = [commandCopy audioData];
  sruif_ignoresMuteSwitch = [commandCopy sruif_ignoresMuteSwitch];
  aceId = [commandCopy aceId];
  refId = [commandCopy refId];
  languageCode2 = [commandCopy languageCode];
  gender = [commandCopy gender];
  BYTE2(v25) = [commandCopy canUseServerTTS];
  LOWORD(v25) = 0;
  [SRSiriViewController _speakText:"_speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:" audioData:message2 ignoreMuteSwitch:audioData identifier:sruif_ignoresMuteSwitch sessionId:aceId preferredVoice:refId language:v26 gender:0.0 promptStyle:languageCode2 provisionally:gender eligibleAfterDuration:0 delayed:v25 canUseServerTTS:v27 speakableUtteranceParser:0 analyticsContext:0 speakableContextInfo:v29 preparation:v7 completion:?];

  message3 = [commandCopy message];
  [(SRSiriViewController *)self _logAceObjectSpoken:commandCopy dialogPhase:0 speakableText:message3];
}

- (void)_cancelCurrentAudioMessagePlayback:(id)playback
{
  _audioMessagePlayer = [(SRSiriViewController *)self _audioMessagePlayer];
  [_audioMessagePlayer stopPlaying];

  _audioMessagePlayer2 = [(SRSiriViewController *)self _audioMessagePlayer];
  _audioMessagePlayer3 = [(SRSiriViewController *)self _audioMessagePlayer];
  playbackCommand = [_audioMessagePlayer3 playbackCommand];
  [(SRSiriViewController *)self audioPlayer:_audioMessagePlayer2 didFinishPlayback:playbackCommand];
}

- (void)_performAppPunchOutCommand:(id)command conversationItemIdentifier:(id)identifier completion:(id)completion
{
  commandCopy = command;
  identifierCopy = identifier;
  completionCopy = completion;
  bundleId = [commandCopy bundleId];
  if (bundleId)
  {

LABEL_4:
    refId = [commandCopy refId];
    if (!refId)
    {
      refId = [(SRSiriViewController *)self _punchoutMetricsAceCommandIdForItemWithIdentifier:identifierCopy];
      if (!refId)
      {
        refId = [commandCopy aceId];
      }
    }

    v14 = refId;
    bundleId2 = [commandCopy bundleId];
    v16 = [NSString stringWithFormat:@"%@-%@", v14, bundleId2];

    _completedCommandAppPunchOutIds = [(SRSiriViewController *)self _completedCommandAppPunchOutIds];
    LOBYTE(bundleId2) = [_completedCommandAppPunchOutIds containsObject:v16];

    if (bundleId2)
    {
      goto LABEL_34;
    }

    v38 = identifierCopy;
    _completedCommandAppPunchOutIds2 = [(SRSiriViewController *)self _completedCommandAppPunchOutIds];
    [_completedCommandAppPunchOutIds2 addObject:v16];

    launchOptions = [commandCopy launchOptions];
    v20 = [NSMutableArray arrayWithArray:launchOptions];

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
    v24 = commandCopy;
    v56 = v22;
    v52 = v24;
    selfCopy = self;
    v25 = completionCopy;
    v54 = v25;
    v39 = objc_retainBlock(v49);
    alternativePunchOut = [v24 alternativePunchOut];

    if (alternativePunchOut)
    {
      alternativePunchOut2 = [v24 alternativePunchOut];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100071BA8;
      v47[3] = &unk_1001674E0;
      v48 = v25;
      [(SRSiriViewController *)self _performGenericAceCommand:alternativePunchOut2 turnIdentifier:0 completion:v47];
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
      _presentation = [(SRSiriViewController *)self _presentation];
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        _presentation2 = [(SRSiriViewController *)self _presentation];
        [_presentation2 siriWillPunchOutWithOptions:v23];
      }

      punchOutUri = [v29 punchOutUri];
      bundleId3 = [v29 bundleId];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100071C40;
      v40[3] = &unk_1001686F8;
      v42 = v30;
      v41 = v29;
      objc_copyWeak(&v43, location);
      [v36 openURL:punchOutUri bundleId:bundleId3 inPlace:v37 launchOptions:0 completion:v40];
      v28 = &v45;

      objc_destroyWeak(&v43);
      alternativePunchOut2 = v46;
    }

    identifierCopy = v38;

    objc_destroyWeak(&v55);
    objc_destroyWeak(location);

LABEL_34:
    goto LABEL_35;
  }

  punchOutUri2 = [commandCopy punchOutUri];

  if (punchOutUri2)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE3DC();
    if (!completionCopy)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if (completionCopy)
  {
LABEL_16:
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_35:
}

- (void)_performContinueOnDeviceCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  continueOnHandler = self->_continueOnHandler;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100072070;
  v9[3] = &unk_100167FA0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(ContinueOnCommandHandler *)continueOnHandler handle:command completionHandler:v9];
}

- (void)_scheduleIdleTimer
{
  [(SRSiriViewController *)self _cancelIdleTimer];
  _presentation = [(SRSiriViewController *)self _presentation];
  v4 = objc_opt_respondsToSelector();

  v5 = 5.0;
  if (v4)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    [_presentation2 idleTimerInterval];
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

- (void)_idleTimerFired:(id)fired
{
  _presentation = [(SRSiriViewController *)self _presentation];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _presentation2 = [(SRSiriViewController *)self _presentation];
    shouldDismissForIdling = [_presentation2 shouldDismissForIdling];
  }

  else
  {
    shouldDismissForIdling = 0;
  }

  _isIdleTimerEnabled = [(SRSiriViewController *)self _isIdleTimerEnabled];
  _isSiriIdleAndQuiet = [(SRSiriViewController *)self _isSiriIdleAndQuiet];
  _presentation3 = [(SRSiriViewController *)self _presentation];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    _presentation4 = [(SRSiriViewController *)self _presentation];
    isPresentingUIFromRemoteDevice = [_presentation4 isPresentingUIFromRemoteDevice];
  }

  else
  {
    isPresentingUIFromRemoteDevice = 0;
  }

  v14 = AFSiriLogContextConnection;
  v15 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if ((shouldDismissForIdling & _isIdleTimerEnabled & (_isSiriIdleAndQuiet | isPresentingUIFromRemoteDevice)) == 1)
  {
    if (v15)
    {
      v19 = 136315138;
      v20 = "[SRSiriViewController _idleTimerFired:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #idleTimer Dismissing Siri", &v19, 0xCu);
    }

    [(SRSiriViewController *)self _cancelIdleTimer];
    _presentation5 = [(SRSiriViewController *)self _presentation];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      _presentation6 = [(SRSiriViewController *)self _presentation];
      [_presentation6 siriWillDismissWithReason:1 completion:0];
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
      v22 = shouldDismissForIdling;
      v23 = 1024;
      v24 = _isSiriIdleAndQuiet;
      v25 = 1024;
      v26 = _isIdleTimerEnabled;
      v27 = 1024;
      v28 = isPresentingUIFromRemoteDevice;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #idleTimer Not dismissing Siri - readyToDismiss:%d idleAndQuiet:%d idleTimerEnabled:%d isPresentingUIFromRemoteDevice:%d", &v19, 0x24u);
    }

    [(SRSiriViewController *)self _rescheduleIdleTimerIfNeeded];
  }
}

- (void)_checkAndUpdateSiriIsIdleAndQuietStatusWithChangeHandler:(id)handler
{
  handlerCopy = handler;
  _isSiriIdleAndQuiet = [(SRSiriViewController *)self _isSiriIdleAndQuiet];
  _wasSiriIdleAndQuiet = [(SRSiriViewController *)self _wasSiriIdleAndQuiet];
  if (_isSiriIdleAndQuiet)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(SRSiriViewController *)self _setWasSiriIdleAndQuiet:v6];
  if (_wasSiriIdleAndQuiet != v6)
  {
    v7 = [(SRSiriViewController *)self _hostWithErrorHandler:&stru_100168718];
    [v7 siriIdleAndQuietStatusDidChange:_isSiriIdleAndQuiet];

    [(SRSiriViewController *)self _scheduleInterruptedAudioResumingIfNeeded];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, _isSiriIdleAndQuiet);
    }
  }
}

- (void)_scheduleAudioResumptionAfterDelayInSec:(double)sec
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SRSiriViewController _scheduleAudioResumptionAfterDelayInSec:]";
    v11 = 2048;
    secCopy = sec;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Scheduling interrupted audio to be resumed in %lf seconds", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, (sec * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072710;
  block[3] = &unk_1001676A0;
  objc_copyWeak(&v8, buf);
  dispatch_after(v6, &_dispatch_main_q, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (BOOL)_resumesInterruptedAudioPlaybackForAttendingState:(BOOL)state
{
  stateCopy = state;
  _presentation = [(SRSiriViewController *)self _presentation];
  if (objc_opt_respondsToSelector())
  {
    v5 = [_presentation shouldResumeInterruptedAudioPlaybackForAttendingState:stateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleRequestError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if (errorCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE68C();
    }

    v8 = [SRErrorUtility userStringForError:errorCopy modeProvider:self->_modeProvider reflectionDialogWasPlayed:[(SRSiriViewController *)self _reflectionDialogHasBeenPlayed]];
    _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
    [_instrumentationManager emitRequestFailedWithError:errorCopy];

    domain = [errorCopy domain];
    if ([domain isEqualToString:kAFAssistantErrorDomain])
    {
      code = [errorCopy code];

      if (code == 6)
      {
        v12 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "[SRSiriViewController _handleRequestError:completion:]";
          v18 = 2114;
          v19 = errorCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #errorHandling handling kAFErrorNotReady: %{public}@ locally", buf, 0x16u);
        }

        [(SRSiriViewController *)self _displayNotReadyError:completionCopy];
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
        v15 = completionCopy;
        [(SRSiriViewController *)self _synthesizeText:v8 identifier:0 sessionId:0 completion:v14];

        goto LABEL_20;
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE708();
      if (!completionCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (!completionCopy)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    (*(completionCopy + 2))(completionCopy, v8 != 0);
    goto LABEL_20;
  }

  +[SRErrorUtility resetErrorState];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_21:
}

- (void)_displayNotReadyError:(id)error
{
  errorCopy = error;
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
  v11 = errorCopy;
  v9 = errorCopy;
  [(SRSiriViewController *)self _synthesizeText:v8 identifier:0 sessionId:0 completion:v10];
}

- (id)_searchAddViewsForSpokenHintsView:(id)view
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  views = [view views];
  v4 = [views countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(views);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        itemType = [v9 itemType];
        v11 = [itemType isEqualToString:v7];

        if (v11)
        {
          v13 = v9;

          goto LABEL_13;
        }
      }

      v5 = [views countByEnumeratingWithState:&v15 objects:v21 count:16];
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

- (void)_enqueueSpokenSuggestionsFromAddViews:(id)views
{
  viewsCopy = views;
  v5 = [(SRSiriViewController *)self _searchAddViewsForSpokenHintsView:viewsCopy];
  if (v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SRSiriViewController _enqueueSpokenSuggestionsFromAddViews:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #suggestions We found a hints SAAceView in the SAUIAddViews. Querying SiriSuggestions for potential spoken hints.", buf, 0xCu);
    }

    [(SRUIFAceCommandRecords *)self->_aceCommandRecords recordActionStartedForAceCommand:viewsCopy];
    objc_initWeak(buf, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100073074;
    v7[3] = &unk_100168768;
    objc_copyWeak(&v9, buf);
    v8 = viewsCopy;
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
  spokenText = [(SiriUISuggestion *)v4 spokenText];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073380;
  v8[3] = &unk_100168390;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [(SRSiriViewController *)self _synthesizeText:spokenText identifier:0 sessionId:0 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_logRevealSpeechCommandReceived:(id)received
{
  recognition = [received recognition];
  utterances = [recognition utterances];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = utterances;
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

  _analytics = [(SRSiriViewController *)self _analytics];
  [_analytics logEventWithType:1459 context:v14];
}

- (void)_addErrorUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v11 = +[NSMutableArray array];
  v5 = objc_alloc_init(SAUIAddViews);
  [v5 setDialogPhase:SAUIDialogPhaseErrorValue];
  v6 = objc_alloc_init(SAUIAssistantUtteranceView);
  [v6 setText:utteranceCopy];

  [v11 addObject:v6];
  [v5 setViews:v11];
  dictionary = [v5 dictionary];
  v8 = [AceObject aceObjectWithDictionary:dictionary];

  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];
  [v8 setAceId:uUIDString];

  [(SRSiriViewController *)self _performGenericAceCommand:v8 turnIdentifier:0 completion:0];
}

- (void)_audioSessionRouteDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue == 2)
  {

    [(SRSiriViewController *)self _cancelSpeechSynthesis];
  }
}

- (void)_fetchAttendingState:(id)state
{
  stateCopy = state;
  _session = [(SRSiriViewController *)self _session];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073974;
  v7[3] = &unk_1001674E0;
  v8 = stateCopy;
  v6 = stateCopy;
  [_session fetchAttendingState:v7];
}

- (void)_notifyPromptedUserForInput
{
  _session = [(SRSiriViewController *)self _session];
  [_session promptedUserForInput];
}

- (id)_punchoutMetricsAceCommandIdForItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (-[SRSiriViewController _activeConversation](self, "_activeConversation"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsItemWithIdentifier:identifierCopy], v5, v6) && (-[SRSiriViewController _activeConversation](self, "_activeConversation"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "itemWithIdentifier:", identifierCopy), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    while (1)
    {
      aceCommandIdentifier = [v8 aceCommandIdentifier];
      if (aceCommandIdentifier)
      {
        break;
      }

      _activeConversation = [(SRSiriViewController *)self _activeConversation];
      identifier = [v8 identifier];
      v12 = [_activeConversation parentOfItemWithIdentifier:identifier];

      v8 = v12;
      if (!v12)
      {
        v13 = 0;
        goto LABEL_12;
      }
    }

    v13 = aceCommandIdentifier;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_metricsContextForItemWithAceCommandId:(id)id
{
  idCopy = id;
  _aceCommandRecords = [(SRSiriViewController *)self _aceCommandRecords];
  v6 = [_aceCommandRecords aceCommandWithIdentifier:idCopy];

  if (v6)
  {
    refId = [v6 refId];

    v8 = 0;
    if (idCopy && refId)
    {
      v15[0] = @"i";
      refId2 = [v6 refId];
      v15[1] = @"a";
      v16[0] = refId2;
      v16[1] = idCopy;
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

- (void)_logAceObjectPresented:(id)presented dialogPhase:(id)phase
{
  presentedCopy = presented;
  phaseCopy = phase;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
    aceId = [presentedCopy aceId];
    [_instrumentationManager emitPartialSpeechTranscriptionEventForAceObjectWithIdentifier:aceId];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
      aceId = [presentedCopy aceId];
      [_instrumentationManager emitFinalSpeechTranscriptionEventForAceObjectWithIdentifier:aceId];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [(SRSiriViewController *)self _instrumentationPresentationForPresentationOptions:[(SRSiriViewController *)self _presentationOptions]];
        analyticsSupplement = self->_analyticsSupplement;
        refId = [presentedCopy refId];
        v12 = [(SRUIFAnalyticsSupplement *)analyticsSupplement computedModeForRefId:refId];

        _presentation = [(SRSiriViewController *)self _presentation];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          _presentation2 = [(SRSiriViewController *)self _presentation];
          v16 = [_presentation2 viewRegionForPresentedAceObject:presentedCopy];
        }

        else
        {
          v16 = 0;
        }

        _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
        [_instrumentationManager emitUUFRShownForAceObject:presentedCopy presentationType:v9 dialogPhase:phaseCopy mode:v12 viewRegion:v16];
        goto LABEL_8;
      }

      _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
      aceId = [presentedCopy aceId];
      [_instrumentationManager emitRevealSpeechTranscriptionEventForAceObjectWithIdentifier:aceId];
    }
  }

LABEL_8:
}

- (void)_logAceObjectSpoken:(id)spoken dialogPhase:(id)phase speakableText:(id)text dialogIdentifierOverride:(id)override
{
  spokenCopy = spoken;
  overrideCopy = override;
  textCopy = text;
  phaseCopy = phase;
  v13 = [(SRSiriViewController *)self _instrumentationPresentationForPresentationOptions:[(SRSiriViewController *)self _presentationOptions]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    refId2 = spokenCopy;
    if (_os_feature_enabled_impl())
    {
      if (![MDDialogTransformer supportsTransformationForAceCommand:refId2])
      {
        goto LABEL_8;
      }
    }

    else if (![SRModeDialogTransformer supportsTransformationForAceCommand:refId2])
    {
LABEL_8:
      v16 = [(SRUIFAnalyticsSupplement *)self->_analyticsSupplement computedModeForAceCommand:refId2];
      goto LABEL_9;
    }

    analyticsSupplement = self->_analyticsSupplement;
    refId = [refId2 refId];
    v19 = [(SRUIFAnalyticsSupplement *)analyticsSupplement computedModeForRefId:refId];

    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v15 = self->_analyticsSupplement;
  refId2 = [spokenCopy refId];
  v16 = [(SRUIFAnalyticsSupplement *)v15 computedModeForRefId:refId2];
LABEL_9:
  v19 = v16;
LABEL_10:

  _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
  [_instrumentationManager emitUUFRSpokenForAceObject:spokenCopy presentationType:v13 dialogPhase:phaseCopy mode:v19 speakableText:textCopy dialogIdentifierOverride:overrideCopy];
}

- (int)_instrumentationResponseModeForMode:(unint64_t)mode
{
  if (mode > 3)
  {
    return 0;
  }

  else
  {
    return dword_1000F6AA0[mode];
  }
}

- (int)_mapSiriTransitionState:(int64_t)state
{
  if (state > 4)
  {
    return 0;
  }

  else
  {
    return dword_1000F6A08[state];
  }
}

- (int)_instrumentationPresentationForPresentationOptions:(int64_t)options
{
  traitCollection = [(SRSiriViewController *)self traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  if (isAmbientPresented)
  {
    return 7;
  }

  if (options > 8)
  {
    return 0;
  }

  return dword_1000F6A1C[options];
}

- (unint64_t)_MDModeToSRModeConverter:(unint64_t)converter
{
  if (converter > 3)
  {
    return 1;
  }

  else
  {
    return qword_1000F6A40[converter];
  }
}

- (unint64_t)_SRModeToMDModeConverter:(unint64_t)converter
{
  if (converter == 2)
  {
    return 2;
  }

  else
  {
    return converter != 0;
  }
}

- (unint64_t)_responseModeToMDModeConverter:(id)converter
{
  lowercaseString = [converter lowercaseString];
  if ([lowercaseString isEqualToString:@"displayonly"])
  {
    v4 = 2;
  }

  else
  {
    if (([lowercaseString isEqualToString:@"displayforward"] & 1) == 0)
    {
      if ([lowercaseString isEqualToString:@"voiceonly"])
      {
        v4 = 0;
        goto LABEL_9;
      }

      if ([lowercaseString isEqualToString:@"voiceforward"])
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
  _requestOptions = [(SRSiriViewController *)self _requestOptions];
  requestInfo = [_requestOptions requestInfo];
  activationEvent = [requestInfo activationEvent];

  _requestOptions2 = [(SRSiriViewController *)self _requestOptions];
  if ([_requestOptions2 requestSource] == 27 || activationEvent == 6)
  {
  }

  else
  {

    if (activationEvent != 9)
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

- (void)_setListenAfterSpeakingForRequestFinished:(BOOL)finished
{
  self->_listenAfterSpeakingForRequestFinished = finished;
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

- (void)_sharePatternIdFromAddViewsCommand:(id)command
{
  commandCopy = command;
  patternId = [commandCopy patternId];

  if (patternId)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    views = [commandCopy views];
    v6 = [views countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(views);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            patternId2 = [commandCopy patternId];
            viewId = [v11 viewId];

            [VRXVisualResponseProvider setPatternId:patternId2 forViewId:viewId];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [views countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)_logPatternExecutedEventForAddViewsCommand:(id)command
{
  commandCopy = command;
  patternId = [commandCopy patternId];
  if (patternId || [(NSString *)self->_responseViewId length])
  {
    v5 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
    isSiriDetached = [v5 isSiriDetached];

    if ((isSiriDetached & 1) == 0)
    {
      v7 = [VRXPatternExecutedInstrumentationEvent alloc];
      patternId2 = [commandCopy patternId];
      patternType = [commandCopy patternType];
      responseViewId = self->_responseViewId;
      responseMode = [commandCopy responseMode];
      v12 = [v7 initWithPatternId:patternId2 patternType:patternType responseViewId:responseViewId responseMode:responseMode];

      _instrumentationManager = [(SRSiriViewController *)self _instrumentationManager];
      currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
      turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

      [v12 emitWithTurnIdentifier:turnIdentifier];
    }
  }
}

- (int64_t)_viewModeFromPresentationOptions:(int64_t)options
{
  if ((options - 1) > 7)
  {
    return 7;
  }

  else
  {
    return qword_1000F6A60[options - 1];
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

    viewController = [(SiriUIPresentation *)self->_presentation viewController];
    [(SRSiriViewController *)self addChildViewController:viewController];
    view = [(SRSiriViewController *)self view];
    [view bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    view2 = [viewController view];
    [view2 setFrame:{v8, v10, v12, v14}];

    view3 = [(SRSiriViewController *)self view];
    view4 = [viewController view];
    [view3 addSubview:view4];

    [viewController didMoveToParentViewController:self];
    view5 = [(SRSiriViewController *)self view];
    [view5 setNeedsLayout];

    view6 = [(SRSiriViewController *)self view];
    [view6 layoutIfNeeded];
  }
}

- (void)_registerReplyCallbackWithOverrideEnabled:(BOOL)enabled
{
  objc_initWeak(&location, self);
  if (enabled || (+[SiriSharedUIReplayUtilityWrapper sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
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
  isReplayTestEnv = [v2 isReplayTestEnv];

  return isReplayTestEnv;
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

- (void)runPPTWithOptions:(id)options
{
  optionsCopy = options;
  v4 = SUICPPTTestNameKey;
  v5 = [optionsCopy objectForKey:SUICPPTTestNameKey];

  v6 = optionsCopy;
  if (v5)
  {
    v7 = [optionsCopy objectForKey:v4];
    if ([v7 isEqualToString:SUICPPTTestNameSiriScrollTeamRoster])
    {
      [(SRSiriViewController *)self _runScrollRosterTestWithOptions:optionsCopy];
    }

    v6 = optionsCopy;
  }
}

- (void)_runScrollRosterTestWithOptions:(id)options
{
  optionsCopy = options;
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
  v14 = optionsCopy;
  v12 = optionsCopy;
  dispatch_after(v11, &_dispatch_main_q, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_startScrollingWithOptions:(id)options
{
  v4 = +[AFSystemAssistantExperienceStatusManager saeAvailable];
  _presentationViewController = [(SRSiriViewController *)self _presentationViewController];
  v6 = _presentationViewController;
  if (v4)
  {
    viewState = [_presentationViewController viewState];
    activeSmartDialogView = [viewState activeSmartDialogView];

    contentContainerView = [activeSmartDialogView contentContainerView];
  }

  else
  {
    view = [_presentationViewController view];

    activeSmartDialogView = [view snippetView];
    contentContainerView = [activeSmartDialogView contentPlatterScrollView];
    v6 = view;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000759D4;
  v11[3] = &unk_100167010;
  v11[4] = self;
  [contentContainerView _performNaturalScrollTest:SUICPPTTestNameSiriScrollTeamRoster completionHandler:v11];
}

- (void)_testDidReceiveAceCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  [(SRSiriViewController *)self _didReceiveAceCommand:commandCopy completion:completion];
  _activeConversation = [(SRSiriViewController *)self _activeConversation];
  [_activeConversation addItemsForAddViewsCommand:commandCopy];

  _session = [(SRSiriViewController *)self _session];
  [_session stopRecordingSpeech];
}

@end