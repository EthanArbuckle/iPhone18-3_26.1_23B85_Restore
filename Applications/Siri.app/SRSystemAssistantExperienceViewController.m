@interface SRSystemAssistantExperienceViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_bottomContentInsetComponents;
- (BOOL)_allowEmptyTranscriptItemUpdatesForCurrentTranscriptItems:(id)a3;
- (BOOL)_alwaysObscureBackgroundContentWhenActive;
- (BOOL)_contentDiffersBetweenPlatterItems:(id)a3 andItems:(id)a4;
- (BOOL)_isTextInputAndKeyboardShowing;
- (BOOL)_keyboardHasContentAtPoint:(CGPoint)a3;
- (BOOL)_resultEligibleForIntelligentLightEffects;
- (BOOL)_shouldRenderResult;
- (BOOL)_smartDialogActiveTranscriptItemContainsViewController:(id)a3;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)didReceiveUpdateVisualResponseCommand:(id)a3;
- (BOOL)isDisplayingResponse;
- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)a3;
- (CGRect)_convertRectFromKeyboard:(CGRect)a3;
- (CGRect)_keyboardFrame;
- (CGSize)activeSmartDialogSize;
- (CGSize)latestDropletContentLayoutSize;
- (CGSize)maxSizeForSnippet;
- (CGSize)siriViewControllerVisibleContentArea:(id)a3;
- (SRSystemAssistantExperienceViewController)init;
- (SRSystemAssistantExperienceViewControllerDelegate)delegate;
- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)a3;
- (double)boundingWidthForSnippetViewController:(id)a3;
- (double)dropletContentMaximumContainerHeight;
- (double)dropletContentMaximumContainerWidth;
- (double)siriViewControllerExpectedWidth:(id)a3;
- (id)_contentPlatterViewFromViewController:(id)a3;
- (id)_createBackgroundView:(id)a3;
- (id)_findSnippetViewControllerWithViewIdFromTranscriptItems:(id)a3 viewId:(id)a4;
- (id)_snippetFromTranscriptItems;
- (id)createNewSmartDialog;
- (id)createSuggestionsViewProvider;
- (id)filterTranscriptItemsForSAEDialogBoxContent:(id)a3;
- (id)localeForSiriViewController:(id)a3;
- (id)prepareForReportConcernAndCreateForm:(id)a3 additionalDomainProvidedFeedback:(id)a4;
- (id)siriViewController:(id)a3 disambiguationItemForListItem:(id)a4 disambiguationKey:(id)a5;
- (id)siriViewController:(id)a3 filteredDisambiguationListItems:(id)a4;
- (id)siriViewController:(id)a3 listItemToPickInAutodisambiguationForListItems:(id)a4;
- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)a3;
- (int)viewRegionForPresentedAceObject:(id)a3;
- (int64_t)_mapSASRequestSourceToSuggestionsInputOrigin:(int64_t)a3;
- (int64_t)_mapSuggestionRequestTypeToSASSuggestionRequestType:(int64_t)a3;
- (unint64_t)presentedResponseElements;
- (void)_addFeedbackButton;
- (void)_addSuggestionsToContainer;
- (void)_cancelFirstVisualIntelligenceRequestIfNeeded;
- (void)_didEndEditing;
- (void)_didPressReportConcernButton:(id)a3 additionalDomainProvidedFeedback:(id)a4;
- (void)_executePendingBlocksForTransition;
- (void)_fadeOutContinuerSuggestionsIfAny;
- (void)_keyboardWillHideForAmbient:(id)a3;
- (void)_keyboardWillShowForAmbient:(id)a3;
- (void)_performResultAnimation:(BOOL)a3;
- (void)_popToRootViewControllerIfNeeded;
- (void)_prepContainerForFirstSnippetPresentation;
- (void)_presentContinuerSuggestions;
- (void)_presentSystemPromptEntryViewWithUtterance:(id)a3 alternatives:(id)a4;
- (void)_pushQueuedNavigationContentViewController;
- (void)_recursivelyNotifyVisibleViewControllers:(id)a3 withBlock:(id)a4;
- (void)_registerForAmbientPresentationTraitChange;
- (void)_renderResult;
- (void)_reportConcernWithCardSection:(id)a3 additionalDomainProvidedFeedback:(id)a4;
- (void)_requestKeyboardWithCompletion:(id)a3;
- (void)_resumeTouchDismissalPostMontaraOnboardingCompletion;
- (void)_setBottomContentInsetComponents:(id)a3 animatedWithDuration:(double)a4 animationOptions:(unint64_t)a5;
- (void)_setInputType:(int64_t)a3;
- (void)_setKeyboardState:(id)a3;
- (void)_setSmartDialogConversationActiveTranscriptItems:(id)a3 withCompletionBlock:(id)a4;
- (void)_setStatusViewHidden:(BOOL)a3;
- (void)_setUpConversationContinuerSuggestions:(int64_t)a3 forRequestId:(id)a4 currentMode:(id)a5;
- (void)_setUpConversationStarterSuggestions:(int64_t)a3 isVoiceTrigger:(BOOL)a4 invocationSource:(int64_t)a5;
- (void)_setupFeedbackButton;
- (void)_setupTextFieldForQuickTypeVisualIntelligence;
- (void)_siriRequestCommittedFromSuggestion:(id)a3 encodedToolInvocationData:(id)a4 suggestionRequestType:(int64_t)a5;
- (void)_siriRequestCommittedFromSuggestion:(id)a3 suggestionRequestType:(int64_t)a4;
- (void)_siriRequestCommittedFromSuggestionToolInvocation:(id)a3;
- (void)_smartDialogSnippetLayoutDidUpdateForViewController:(id)a3;
- (void)_teardownTypeToSiriForVisualIntelligenceCameraWithUpdate;
- (void)_teardownTypeToSiriUI;
- (void)_updateAmbientAvailability;
- (void)_updateBottomContentInsetKeyboardComponent;
- (void)_updateHomeAffordanceVisibility;
- (void)_updateIsInAmbientWithInteractivity:(BOOL)a3;
- (void)_updateKeyboardStateFromNotification:(id)a3;
- (void)_updateSAEViewSize;
- (void)_updateStatusViewVisibility;
- (void)_willBeginEditingOfType:(int64_t)a3;
- (void)animatedDisappearanceDidBeginWithDuration:(double)a3 reason:(int64_t)a4;
- (void)cancelSpeakingForSiriViewController:(id)a3;
- (void)completedOnboardingFlowWithEnablementResult:(int64_t)a3;
- (void)configureSmartDialog:(id)a3;
- (void)containerView:(id)a3 requestsDismissalWithReason:(int64_t)a4;
- (void)didChangeText:(id)a3;
- (void)didPresentContentWithAceObject:(id)a3;
- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)a3;
- (void)didSetInputType:(int64_t)a3;
- (void)didSetServerUtterance:(id)a3;
- (void)didSetTranscriptItems;
- (void)dismissSiriResults;
- (void)dropletContentWillUpdateLayout:(id)a3 withUpdatedContentSize:(CGSize)a4 animated:(BOOL)a5;
- (void)endTypeToSiriLatencyStateIfNeeded;
- (void)entryViewDidSubmit:(id)a3 suggestionText:(id)a4 suggestionRequestType:(int64_t)a5;
- (void)entryViewDidSubmit:(id)a3 text:(id)a4;
- (void)entryViewDidSubmit:(id)a3 visualIntelligenceText:(id)a4;
- (void)handleVoiceActivationRequestWithRequestOptions:(id)a3;
- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)keyboardIsReadyToReceiveInput;
- (void)keyboardShouldDuckForLongSnippet:(CGPoint)a3;
- (void)loadContinuerSuggestionsForRequest:(id)a3 currentMode:(id)a4;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)performPillCollapseAnimation;
- (void)performPillMergeAndCrossfadeAnimation;
- (void)performSinglePillExpandAnimation;
- (void)presentGenerativeAssistantOnboardingFlowWithCommand:(id)a3 completion:(id)a4;
- (void)presentLatencyPillAnimation;
- (void)presentResultAnimation:(BOOL)a3;
- (void)processSuggestionViewWrappers:(id)a3;
- (void)promptEntryDidDismissEditMenu:(id)a3;
- (void)promptEntryViewDidBeginEditing:(id)a3;
- (void)promptEntryViewDidEndEditing:(id)a3;
- (void)promptEntryViewDidLayoutSubviews:(id)a3;
- (void)promptEntryViewWillPresentEditMenu:(id)a3;
- (void)removeResponseElementsIfNeeded:(unint64_t)a3;
- (void)reportConcernButtonTappedForSuggestion:(id)a3;
- (void)resignKeyboardIfNeeded;
- (void)setActiveRequestOptions:(id)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setDockFrame:(CGRect)a3;
- (void)setDropletContainerUserUtteranceViewHeight:(double)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setRevealRecognizedSpeech:(BOOL)a3;
- (void)setSmartDialogCardBlock:(id)a3;
- (void)setSmartDialogPluginBlock:(id)a3;
- (void)setTopContentInset:(double)a3 animated:(BOOL)a4;
- (void)setUpConversationStarterSuggestionsWith:(int64_t)a3;
- (void)setupTextFieldForTamale;
- (void)setupTextFieldForTextInput;
- (void)shouldBeginEditing;
- (void)siriDidActivate;
- (void)siriDidDeactivate;
- (void)siriDidStartSpeakingWithIdentifier:(id)a3;
- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4;
- (void)siriDidTapOutsideContent;
- (void)siriDidUpdateASRWithRecognition:(id)a3;
- (void)siriIsIdleAndQuiet;
- (void)siriSnippetViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5;
- (void)siriSnippetViewController:(id)a3 informHostOfBackgroundView:(id)a4 isSnippetAsyncColored:(BOOL)a5;
- (void)siriSnippetViewController:(id)a3 isBackgroundColorUpdateSuccessful:(BOOL)a4;
- (void)siriSnippetViewController:(id)a3 performAceCommands:(id)a4 sashItem:(id)a5;
- (void)siriSnippetViewController:(id)a3 pushSirilandSnippets:(id)a4;
- (void)siriSnippetViewController:(id)a3 willDismissViewController:(id)a4;
- (void)siriSnippetViewController:(id)a3 willPresentViewController:(id)a4;
- (void)siriSnippetViewControllerViewDidLoad:(id)a3;
- (void)siriViewController:(id)a3 openURL:(id)a4 completion:(id)a5;
- (void)siriViewController:(id)a3 openURL:(id)a4 launchOptions:(id)a5 completion:(id)a6;
- (void)siriViewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5;
- (void)siriViewController:(id)a3 speakText:(id)a4 completion:(id)a5;
- (void)siriViewControllerDidEndEditing;
- (void)siriViewControllerHeightDidChange;
- (void)siriViewControllerHeightDidChange:(id)a3;
- (void)siriViewControllerHeightDidChange:(id)a3 pinTopOfSnippet:(BOOL)a4;
- (void)siriViewControllerRequestDeviceUnlockWithCompletion:(id)a3;
- (void)siriViewControllerShouldOpenUrl:(id)a3;
- (void)siriViewControllerShouldRequestTextInputWithUtterance:(id)a3 alternatives:(id)a4;
- (void)siriViewControllerViewDidAppear:(id)a3 isTopLevelViewController:(BOOL)a4;
- (void)siriViewControllerViewDidDisappear:(id)a3 isTopLevelViewController:(BOOL)a4;
- (void)siriViewControllerWillBeginEditing;
- (void)siriWillStartRequest;
- (void)smartDialogContentDidChange;
- (void)switchPresentationToTextInput;
- (void)switchPresentationToVisualIntelligenceCameraInput;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSpeechRecognitionHypothesisForSuggestion:(id)a3;
- (void)updateTopInset:(double)a3 animated:(BOOL)a4;
- (void)userDrilledIntoSnippet;
- (void)userTouchedSnippet;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPresentOnboardingFlow;
- (void)willPresentResult;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SRSystemAssistantExperienceViewController

- (SRSystemAssistantExperienceViewController)init
{
  v52.receiver = self;
  v52.super_class = SRSystemAssistantExperienceViewController;
  v2 = [(SRSystemAssistantExperienceViewController *)&v52 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    v2->_animatingPillSize = 0;
    v4 = objc_alloc_init(SiriSharedUISystemAssistantExperienceContainerView);
    containerView = v3->_containerView;
    v3->_containerView = v4;

    [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_containerView setDelegate:v3];
    v6 = [[SRSystemAssistantExperienceRootViewController alloc] initWithContainerView:v3->_containerView];
    rootViewController = v3->_rootViewController;
    v3->_rootViewController = v6;

    v8 = objc_alloc_init(SiriSharedUISystemAssistantExperienceContainerView);
    textFieldContainerView = v3->_textFieldContainerView;
    v3->_textFieldContainerView = v8;

    [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView setDelegate:v3];
    if (SiriSharedUIDeviceIsPhone())
    {
      v10 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView layer];
      v11 = +[UIScreen mainScreen];
      v12 = [v11 traitCollection];
      [v12 displayCornerRadius];
      [v10 setCornerRadius:v13 / 1.2];

      v14 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView layer];
      [v14 setMaskedCorners:12];

      v15 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView layer];
      [v15 setMasksToBounds:1];
    }

    v16 = objc_alloc_init(SiriSharedUICompactResultViewController);
    resultViewController = v3->_resultViewController;
    v3->_resultViewController = v16;

    v18 = [[SiriUINavigationController alloc] initWithRootViewController:v3->_rootViewController];
    navigationController = v3->_navigationController;
    v3->_navigationController = v18;

    [(SiriUINavigationController *)v3->_navigationController setDelegate:v3];
    v20 = [(SiriUINavigationController *)v3->_navigationController view];
    [v20 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v21 = [(SiriUINavigationController *)v3->_navigationController navigationBar];
    [v21 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v22 = [SiriSharedUICompactHostingInstrumentationSupplement alloc];
    v23 = [(SRSystemAssistantExperienceViewController *)v3 _instrumentationManager];
    v24 = [v22 initWithInstrumentationManager:v23];
    instrumentationSupplement = v3->_instrumentationSupplement;
    v3->_instrumentationSupplement = v24;

    v26 = [[SiriSharedUISAEViewState alloc] initWithContainerView:v3->_containerView];
    viewState = v3->_viewState;
    v3->_viewState = v26;

    [(SiriSharedUISAEViewState *)v3->_viewState setDelegate:v3];
    [(SRSystemAssistantExperienceViewController *)v3 _registerForAmbientPresentationTraitChange];
    v28 = [SRUIFPreferences alloc];
    v29 = [v28 initWithSuiteName:SRUIFPreferencesDefaultDomain];
    preferences = v3->_preferences;
    v3->_preferences = v29;

    if (SiriSharedUIReducedMotionEnabled())
    {
      v31 = 1.0;
    }

    else
    {
      v31 = SiriSharedUISAEContainerSpringDampingRatio;
    }

    if (SiriSharedUIReducedMotionEnabled())
    {
      v32 = 0.5;
    }

    else
    {
      v32 = SiriSharedUISAEContainerSpringResponse;
    }

    v33 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v31 response:v32];
    defaultSpringAnimationBehavior = v3->_defaultSpringAnimationBehavior;
    v3->_defaultSpringAnimationBehavior = v33;

    if (SiriSharedUIReducedMotionEnabled())
    {
      v35 = 1.0;
    }

    else
    {
      v35 = SiriSharedUISAEContainerPillMergeSpringDampingRatio;
    }

    if (SiriSharedUIReducedMotionEnabled())
    {
      v36 = 0.5;
    }

    else
    {
      v36 = SiriSharedUISAEContainerPillMergeSpringResponse;
    }

    v37 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v35 response:v36];
    pillMergeSpringAnimationBehavior = v3->_pillMergeSpringAnimationBehavior;
    v3->_pillMergeSpringAnimationBehavior = v37;

    if (SiriSharedUIReducedMotionEnabled())
    {
      v39 = 1.0;
    }

    else
    {
      v39 = SiriSharedUISAEContainerPostPillMergeSpringDampingRatio;
    }

    if (SiriSharedUIReducedMotionEnabled())
    {
      v40 = 0.5;
    }

    else
    {
      v40 = SiriSharedUISAEContainerPostPillMergeSpringResponse;
    }

    v41 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v39 response:v40];
    postPillMergeSpringAnimationBehavior = v3->_postPillMergeSpringAnimationBehavior;
    v3->_postPillMergeSpringAnimationBehavior = v41;

    if (SiriSharedUIReducedMotionEnabled())
    {
      v43 = 1.0;
    }

    else
    {
      v43 = SiriSharedUISAESuggestionsSpringDampingRatio;
    }

    if (SiriSharedUIReducedMotionEnabled())
    {
      v44 = 0.5;
    }

    else
    {
      v44 = SiriSharedUISAESuggestionsSpringResponse;
    }

    v45 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v43 response:v44];
    suggestionsSpringAnimationBehavior = v3->_suggestionsSpringAnimationBehavior;
    v3->_suggestionsSpringAnimationBehavior = v45;

    v47 = [[SRTypeToSiriKeyboardReadinessObserver alloc] initWithDelegate:v3];
    typeToSiriKeyboardReadinessObserver = v3->_typeToSiriKeyboardReadinessObserver;
    v3->_typeToSiriKeyboardReadinessObserver = v47;

    v3->_shouldShowSuggestions = 1;
    v49 = [[SiriSharedUIGenerativeAssistantOnboardingManager alloc] initWithDelegate:v3];
    montaraOnboardingManager = v3->_montaraOnboardingManager;
    v3->_montaraOnboardingManager = v49;

    v3->_inTapToEdit = 0;
  }

  return v3;
}

- (void)_executePendingBlocksForTransition
{
  v3 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v4 = [v3 updateUserUtteranceVisibilityIfNeeded];

  serverUtteranceUpdateBlock = self->serverUtteranceUpdateBlock;
  v6 = serverUtteranceUpdateBlock != 0;
  if (serverUtteranceUpdateBlock)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SRSystemAssistantExperienceViewController _executePendingBlocksForTransition]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #smartdialog performing server utterance update", &v23, 0xCu);
    }

    (*(self->serverUtteranceUpdateBlock + 2))();
    v8 = self->serverUtteranceUpdateBlock;
    self->serverUtteranceUpdateBlock = 0;
  }

  if (self->smartDialogCardBlock)
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SRSystemAssistantExperienceViewController _executePendingBlocksForTransition]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #smartdialog performing smart dialog card update", &v23, 0xCu);
    }

    (*(self->smartDialogCardBlock + 2))();
    smartDialogCardBlock = self->smartDialogCardBlock;
    self->smartDialogCardBlock = 0;

    v6 = 1;
  }

  if (self->smartDialogPluginBlock)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SRSystemAssistantExperienceViewController _executePendingBlocksForTransition]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #smartdialog performing smart dialog plugin update", &v23, 0xCu);
    }

    (*(self->smartDialogPluginBlock + 2))();
    smartDialogPluginBlock = self->smartDialogPluginBlock;
    self->smartDialogPluginBlock = 0;

    p_snippetUpdateBlock = &self->snippetUpdateBlock;
    if (!self->snippetUpdateBlock)
    {
      goto LABEL_18;
    }
  }

  else
  {
    p_snippetUpdateBlock = &self->snippetUpdateBlock;
    if (!self->snippetUpdateBlock)
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }
  }

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "[SRSystemAssistantExperienceViewController _executePendingBlocksForTransition]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #smartdialog performing snippet update", &v23, 0xCu);
  }

  (*(*p_snippetUpdateBlock + 2))();
  v15 = *p_snippetUpdateBlock;
  *p_snippetUpdateBlock = 0;

LABEL_18:
  v16 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v16 reloadView];

  if (v4)
  {
    v17 = objc_alloc_init(SISchemaUEITranscriptShown);
    [v17 setHasTranscriptShownReason:1];
    [v17 setTranscriptShownReason:v4];
    v18 = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
    [v18 emitInstrumentation:v17];

    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"TRANSCRIPTSHOWNREASON_UNKNOWN";
      if (v4 == 1)
      {
        v20 = @"TRANSCRIPTSHOWNREASON_ALWAYS_SHOW";
      }

      if (v4 == 2)
      {
        v20 = @"TRANSCRIPTSHOWNREASON_RECEIVED_SHOW_TRANSCRIPT_COMMAND";
      }

      v23 = 136315394;
      v24 = "[SRSystemAssistantExperienceViewController _executePendingBlocksForTransition]";
      v25 = 2112;
      v26 = v20;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #instrumentation transcript shown for reason %@", &v23, 0x16u);
    }
  }

LABEL_26:
  v22 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v22 updateContentSizeIfNecessary];
}

- (void)updateTopInset:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_topInset = a3;
  if ([UIApp activeInterfaceOrientation] - 1 <= 1)
  {
    v7 = [(SRSystemAssistantExperienceViewController *)self view];
    v8 = [v7 window];

    [v8 safeAreaInsets];
    v10 = v9 < a3;
    v11 = a3 - v9 + 10.0;
    if (!v10)
    {
      v11 = 0.0;
    }

    if (!v8)
    {
      v11 = 0.0;
    }

    if (self->_isDrilledIntoSnippet)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    v14[1] = 3221225472;
    v13 = 0.3;
    v14[0] = _NSConcreteStackBlock;
    v14[2] = sub_10001D010;
    v14[3] = &unk_100166EA8;
    if (!v4)
    {
      v13 = 0.0;
    }

    v14[4] = self;
    *&v14[5] = v12;
    [UIView _animateWithDuration:196608 delay:v14 options:0 animations:0 start:v13 completion:?];
  }
}

- (void)loadView
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[SRSystemAssistantExperienceViewController loadView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v5 = [v4 view];
  [(SRSystemAssistantExperienceViewController *)self addChildViewController:v4];
  v6 = objc_alloc_init(AFUITouchPassThroughView);
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setOpaque:0];
  [v6 setAutoresizingMask:18];
  [v6 bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];
  [v6 addSubview:v5];
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setAutoresizingMask:18];
  v8 = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView layer];
  [v8 setHitTestsAsOpaque:0];

  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setOpaque:0];
  [v6 addSubview:self->_textFieldContainerView];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  v9 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  if ([v9 requestSource] != 48)
  {

    goto LABEL_8;
  }

  v10 = +[SASSystemState sharedSystemState];
  v11 = [v10 isInActiveCall];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    v13 = [UIImage _systemImageNamed:@"microphone"];
    objc_initWeak(buf, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001D46C;
    v20[3] = &unk_100166ED0;
    objc_copyWeak(&v21, buf);
    v12 = [UIAction actionWithTitle:@"microphone" image:v13 identifier:0 handler:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);

    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = [[_TtC4Siri30SystemAssistantPromptEntryView alloc] initWithFrame:v12 dictationReplacementAction:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SRSystemAssistantExperienceViewController *)self setPromptEntryView:v14];

  v15 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v15 setDelegate:self];

  [v4 didMoveToParentViewController:self];
  v16 = [[SiriSharedUIFeedbackController alloc] initWithNibName:0 bundle:0];
  feedbackController = self->_feedbackController;
  self->_feedbackController = v16;

  v18 = [(SiriSharedUIFeedbackController *)self->_feedbackController view];
  v19 = [v18 layer];
  [v19 setAllowsHitTesting:0];

  [(SRSystemAssistantExperienceViewController *)self setView:v6];
}

- (void)_didPressReportConcernButton:(id)a3 additionalDomainProvidedFeedback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v9 = [v8 lockStateForSAEViewController:self];

  if ((v9 & 2) != 0)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001D63C;
    v11[3] = &unk_100166EF8;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    [WeakRetained requestToHandlePasscodeUnlockWithClient:2 withCompletion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SRSystemAssistantExperienceViewController *)self _reportConcernWithCardSection:v6 additionalDomainProvidedFeedback:v7];
  }
}

- (void)_reportConcernWithCardSection:(id)a3 additionalDomainProvidedFeedback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v9 = [v8 feedbackFormForCurrentRequest];

  v10 = [(SRSystemAssistantExperienceViewController *)self prepareForReportConcernAndCreateForm:v9 additionalDomainProvidedFeedback:v7];

  if (v6)
  {
    v11 = [v6 racFeedbackSubfeatureId];
    [v10 setSubFeature:v11];

    v12 = [v6 racFeedbackLoggingContent];
    v13 = [NSString stringWithFormat:@"%@", v12];

    [v10 setDiagnosticContent:v13];
  }

  v14 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v15 = [v14 isPresentingVisualIntelligenceDirectInvocation];

  if (v15)
  {
    [v10 setFeedbackDomain:4];
    [v10 setSubFeature:@"ask_chatgpt"];
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "[SRSystemAssistantExperienceViewController _reportConcernWithCardSection:additionalDomainProvidedFeedback:]";
      v23 = 2048;
      v24 = 4;
      v25 = 2080;
      v26 = "ask_chatgpt";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s #feedback - VisualIntelligence response, set feedbackDomain: %ld, subFeature: %s", buf, 0x20u);
    }
  }

  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v10 userInput];
    v20 = [v10 siriDialog];
    *buf = 136315650;
    v22 = "[SRSystemAssistantExperienceViewController _reportConcernWithCardSection:additionalDomainProvidedFeedback:]";
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s #feedback - donating feedback with input: %@, output: %@", buf, 0x20u);
  }

  [(SiriSharedUIFeedbackController *)self->_feedbackController userDidReportConcernWithModel:v10];
}

- (id)createNewSmartDialog
{
  v3 = [[SiriSharedUISmartDialogView alloc] initWithResultView:0];
  [(SRSystemAssistantExperienceViewController *)self configureSmartDialog:v3];

  return v3;
}

- (void)configureSmartDialog:(id)a3
{
  v4 = a3;
  [v4 setInteractionDelegate:self];
  [v4 setDropletContainerDelegate:self];
  v5 = [v4 layer];
  [v5 setAllowsGroupOpacity:0];

  [v4 setClipsToBounds:1];
  [v4 setPopoverViewController:self];

  self->_resultPresentedInActiveSmartDialog = 0;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v8 viewDidLoad];
  v3 = [(SRSystemAssistantExperienceViewController *)self view];
  [v3 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

  v4 = [SiriUIMultiNavigationTransitionController alloc];
  v5 = objc_alloc_init(SRSystemAssistantExperienceNavigationTransitionController);
  v6 = [v4 initWithPrimaryTransitionController:v5];

  v7 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  [v7 setTransitionController:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v14 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = sub_10001DC74();
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObserver:self selector:"_updateKeyboardStateFromNotification:" name:*(*(&v10 + 1) + 8 * i) object:{0, v10}];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [v4 addObserver:self selector:"_keyboardWillShowForAmbient:" name:UIKeyboardWillShowNotification object:0];
  [v4 addObserver:self selector:"_keyboardWillHideForAmbient:" name:UIKeyboardWillHideNotification object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v7 viewDidAppear:a3];
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  self->_presentationTime = v5;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidPresentUserInterface:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v5 viewWillDisappear:a3];
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v4 viewControllerViewWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v31.receiver = self;
  v31.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v31 viewDidDisappear:a3];
  v4 = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
  v5 = [v4 speech];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
    v8 = [v7 speech];
    v9 = [v8 backingAceObject];
    [WeakRetained saeViewController:self viewDidDisappearForAceObject:v9];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 saeViewController:self viewDidDisappearForAceObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v12);
  }

  v17 = +[NSNotificationCenter defaultCenter];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = sub_10001DC74();
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v17 removeObserver:self name:*(*(&v23 + 1) + 8 * v22) object:{0, v23}];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v20);
  }

  [v17 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v17 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  [(SRSystemAssistantExperienceViewController *)self _setKeyboardState:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v3 viewWillLayoutSubviews];
  [(SRSystemAssistantExperienceViewController *)self _updateSAEViewSize];
}

- (void)_updateSAEViewSize
{
  v3 = [(SRSystemAssistantExperienceViewController *)self view];
  v45 = [v3 window];

  if (SiriSharedUIDeviceIsPad())
  {
    v4 = v45;
  }

  else
  {
    IsMac = SiriSharedUIDeviceIsMac();
    v4 = v45;
    if (!IsMac)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v45 windowScene];
    [v14 interfaceOrientation];
    SiriSharedUICompactSlideOverContentSpacingOnPad();
    v16 = v15;
    v18 = v17;

    if (SiriUIDeviceIsPad())
    {
      IsLargeFormatPad = SiriUIDeviceIsLargeFormatPad();
      v20 = &SiriSharedUISAEContentMaxWidthPadLarge;
      if (!IsLargeFormatPad)
      {
        v20 = &SiriSharedUISAEContentMaxWidthPadRegular;
      }

      v21 = *v20;
      v47.origin.x = v7;
      v47.origin.y = v9;
      v47.size.width = v11;
      v47.size.height = v13;
      Height = CGRectGetHeight(v47);
      v48.origin.x = v7;
      v48.origin.y = v9;
      v48.size.width = v11;
      v48.size.height = v13;
      v23 = (CGRectGetWidth(v48) - v21) * 0.5;
      v24 = [(SRSystemAssistantExperienceViewController *)self view];
      [v24 setFrame:{v23, 0.0, v21, Height}];

      v25 = [(SRSystemAssistantExperienceViewController *)self view];
      [v25 safeAreaInsets];
      v27 = v26 + 16.0;

      v28 = [(SRSystemAssistantExperienceViewController *)self view];
      [v28 safeAreaInsets];
      v30 = v29 + 20.0;

      v49.origin.y = 0.0;
      v49.origin.x = v23;
      v49.size.width = v21;
      v49.size.height = Height;
      Width = CGRectGetWidth(v49);
      v50.origin.y = 0.0;
      v50.origin.x = v23;
      v50.size.width = v21;
      v50.size.height = Height;
      v32 = CGRectGetHeight(v50) - v27 - v30;
      v33 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      v34 = [v33 view];
      [v34 setFrame:{0.0, v27, Width, v32}];
    }

    else
    {
      v35 = v16 + v18 + SiriSharedUICompactLeftPaddingForShadowOutsetsiPad;
      IsRTL = SiriLanguageIsRTL();
      v33 = [(SRSystemAssistantExperienceViewController *)self view];
      v37 = v7;
      v38 = v9;
      v39 = v11;
      v40 = v13;
      if (IsRTL)
      {
        v41 = CGRectGetHeight(*&v37);
        v42 = 0.0;
        v43 = v33;
      }

      else
      {
        v44 = CGRectGetWidth(*&v37) - v35;
        v51.origin.x = v7;
        v51.origin.y = v9;
        v51.size.width = v11;
        v51.size.height = v13;
        v41 = CGRectGetHeight(v51);
        v43 = v33;
        v42 = v44;
      }

      [v43 setFrame:{v42, 0.0, v35, v41}];
    }
  }

LABEL_14:

  _objc_release_x1();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v13.receiver = self;
  v13.super_class = SRSystemAssistantExperienceViewController;
  v6 = a4;
  v7 = a3;
  [(SRSystemAssistantExperienceViewController *)&v13 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E4CC;
  v12[3] = &unk_100166F20;
  v12[4] = self;
  [v6 animateAlongsideTransition:v12 completion:0];

  v8 = [v7 verticalSizeClass];
  if (v8 == 1)
  {
    v9 = [(SRSystemAssistantExperienceViewController *)self containerView];
    v10 = [v9 isDisplayingResponse];

    if (v10)
    {
      v11 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      [v11 resignKeyboard];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SRSystemAssistantExperienceViewController;
  v7 = a4;
  [(SRSystemAssistantExperienceViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (height <= width)
  {
    [(SRSystemAssistantExperienceViewController *)self _updateAmbientAvailability];
  }

  else
  {
    [(SRSystemAssistantExperienceViewController *)self setIsInAmbient:0];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001E608;
  v8[3] = &unk_100166F20;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInterfaceStyle];
  v6 = [(SRSystemAssistantExperienceViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 userInterfaceStyle];
      v11 = [(SRSystemAssistantExperienceViewController *)self traitCollection];
      v14 = 136315650;
      v15 = "[SRSystemAssistantExperienceViewController traitCollectionDidChange:]";
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = [v11 userInterfaceStyle];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #smartDialog: previous userInteractionStyle:%ld, current userInteractionStyle:%ld", &v14, 0x20u);
    }

    v12 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    v13 = [(SRSystemAssistantExperienceViewController *)self traitCollection];
    [v12 setUserInterfaceStyle:{objc_msgSend(v13, "userInterfaceStyle")}];
  }
}

- (void)_setupFeedbackButton
{
  if (!self->_feedbackButton)
  {
    v3 = [_TtC4Siri16SRFeedbackButton buttonWithType:1];
    feedbackButton = self->_feedbackButton;
    self->_feedbackButton = v3;

    [(SRFeedbackButton *)self->_feedbackButton addTarget:self action:"userDidReportConcern" forControlEvents:64];
    v5 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v5 setBottomFloatingButton:self->_feedbackButton];
  }
}

- (id)_snippetFromTranscriptItems
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(SiriSharedUISAEViewState *)self->_viewState activeConversationTranscriptItems];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 viewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

LABEL_13:
          v12 = [v7 viewController];
          v11 = [v12 view];

          goto LABEL_14;
        }

        v9 = [v7 viewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)_createBackgroundView:(id)a3
{
  v4 = objc_alloc_init(SiriSharedUISmartDialogBackgroundView);
  [v4 setClipsToBounds:1];
  if ([(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315138;
      v35 = "[SRSystemAssistantExperienceViewController _createBackgroundView:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #background: snippet insecting in SmartDialogContainer, use insetPlatter material for background", &v34, 0xCu);
    }

    v6 = objc_alloc_init(UIView);
    v7 = [(SRSystemAssistantExperienceViewController *)self view];
    v8 = [v7 traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == 1)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v10 = ;
    [v6 setBackgroundColor:v10];

    v11 = [v6 layer];
    v12 = v11;
    v13 = &kCAFilterPlusL;
    if (v9 != 1)
    {
      v13 = &kCAFilterPlusD;
    }

    [v11 setCompositingFilter:*v13];

    v14 = [v6 layer];
    LODWORD(v15) = 1053609165;
    [v14 setOpacity:v15];

    v16 = [v4 contentView];
    [v16 addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v6 leadingAnchor];
    v18 = [v4 contentView];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [v6 bottomAnchor];
    v22 = [v4 contentView];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [v6 trailingAnchor];
    v26 = [v4 contentView];
    v27 = [v26 trailingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [v6 topAnchor];
    v30 = [v4 contentView];
    v31 = [v30 topAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v32 setActive:1];
  }

  return v4;
}

- (void)setRevealRecognizedSpeech:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v4 setRevealRecognizedSpeech:v3];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(SRSystemAssistantExperienceViewController *)self _updateStatusViewVisibility];
}

- (void)updateSpeechRecognitionHypothesisForSuggestion:(id)a3
{
  viewState = self->_viewState;
  v4 = a3;
  v5 = [(SiriSharedUISAEViewState *)viewState activeSmartDialogView];
  [v5 setSpeechRecognitionHypothesisForSuggestion:v4];
}

- (void)_setSmartDialogConversationActiveTranscriptItems:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(SRSystemAssistantExperienceViewController *)self _snippetFromTranscriptItems];
    if (v8)
    {
      v9 = [(SRSystemAssistantExperienceViewController *)self _createBackgroundView:v8];
      v10 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      [v10 setSnippetBackgroundView:v9];
    }
  }

  v11 = [(SRSystemAssistantExperienceViewController *)self viewState];
  v12 = [v11 activeSmartDialogView];
  v13 = [v12 activeTranscriptItems];

  if ([v13 count] && !objc_msgSend(v6, "count"))
  {
    v14 = [(SRSystemAssistantExperienceViewController *)self _allowEmptyTranscriptItemUpdatesForCurrentTranscriptItems:v13];
  }

  else
  {
    v14 = 0;
  }

  if ([v6 count] || v14)
  {
    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001F070;
    v17[3] = &unk_100166F48;
    objc_copyWeak(&v20, &location);
    v18 = v6;
    v19 = v7;
    v15 = objc_retainBlock(v17);
    snippetUpdateBlock = self->snippetUpdateBlock;
    self->snippetUpdateBlock = v15;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_allowEmptyTranscriptItemUpdatesForCurrentTranscriptItems:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 aceObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v11 = [v8 aceObject];
          v12 = [v11 bundleName];
          v13 = [v12 isEqualToString:@"SiriMailUIPlugin"];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)endTypeToSiriLatencyStateIfNeeded
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]== 1)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[SRSystemAssistantExperienceViewController endTypeToSiriLatencyStateIfNeeded]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Stopping type-to-Siri latency animation", &v4, 0xCu);
    }

    [(SystemAssistantPromptEntryView *)self->_promptEntryView stopLatencyAnimationIfNeeded];
  }
}

- (void)resignKeyboardIfNeeded
{
  v3 = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  v4 = [(SRSystemAssistantExperienceViewController *)self traitCollection];
  v5 = [v4 verticalSizeClass];

  if (v3 == 1 && v5 == 1)
  {
    v7 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v7 resignKeyboard];
  }
}

- (void)presentResultAnimation:(BOOL)a3
{
  v5 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    v8 = [(SiriSharedUISAEViewState *)self->_viewState inputType];

    if (v8 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001F548;
  v11[3] = &unk_100166F70;
  objc_copyWeak(&v12, &location);
  v13 = a3;
  v9 = objc_retainBlock(v11);
  renderResultBlock = self->renderResultBlock;
  self->renderResultBlock = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
LABEL_6:
  [(SRSystemAssistantExperienceViewController *)self _executePendingBlocksForTransition];
}

- (void)_renderResult
{
  v4 = objc_retainBlock(self->renderResultBlock);
  renderResultBlock = self->renderResultBlock;
  self->renderResultBlock = 0;

  v4[2]();
}

- (BOOL)_shouldRenderResult
{
  if (self->_activeSmartDialogSize.height <= 0.0 || !self->renderResultBlock)
  {
    return 0;
  }

  if (![(SiriSharedUISAEViewState *)self->_viewState upcomingResultHasSnippet])
  {
    return 1;
  }

  v3 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v4 = [v3 conversationSnippetViews];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v7 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    v8 = [v7 activeTranscriptItems];
    v5 = [v8 count] != 0;
  }

  return v5;
}

- (void)_prepContainerForFirstSnippetPresentation
{
  v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v3 setIsFirstSnippet:1];

  v4 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v5 = [v4 blurrableView];
  [v5 setAlpha:0.0];

  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7 * 0.5;
  v9 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v9 frame];
  v11 = v10;
  v12 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v12 frame];
  v14 = v13;
  v15 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v15 setFrame:{0.0, v8, v11, v14}];

  v16 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v16 performAnimatedBlur:0 withDuration:0.6];
}

- (void)_performResultAnimation:(BOOL)a3
{
  v3 = a3;
  [(SiriSharedUISAEViewState *)self->_viewState setSmartDialogAnimationInProgress:1];
  self->_resultPresentedInActiveSmartDialog = 1;
  if (v3 && (SiriSharedUIReducedMotionEnabled() & 1) == 0)
  {
    [(SRSystemAssistantExperienceViewController *)self _prepContainerForFirstSnippetPresentation];
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SRSystemAssistantExperienceViewController _performResultAnimation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #droplet presenting result with no latency", buf, 0xCu);
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    width = self->_activeSmartDialogSize.width;
    height = self->_activeSmartDialogSize.height;
    v9 = v6;
    v24.width = width;
    v24.height = height;
    v10 = NSStringFromSize(v24);
    *buf = 136315394;
    v21 = "[SRSystemAssistantExperienceViewController _performResultAnimation:]";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #droplet present snippet now with size:%@!", buf, 0x16u);
  }

  v11 = [(SRSystemAssistantExperienceViewController *)self _resultEligibleForIntelligentLightEffects];
  v12 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v13 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v12 setResultWithResultView:v13 resultSize:v11 eligibleForLightEffects:{self->_activeSmartDialogSize.width, self->_activeSmartDialogSize.height}];

  if (SiriSharedUIReducedMotionEnabled())
  {
    v14 = [(SRSystemAssistantExperienceViewController *)self containerView];
    LODWORD(v15) = 1.0;
    [v14 reduceMotionCarouselWithDuration:v3 isFirstSnippet:v15];
  }

  if (v3)
  {
    v16 = 0;
  }

  else
  {
    v16 = 100000000;
  }

  v17 = dispatch_time(0, v16);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001FAA8;
  v18[3] = &unk_100166F98;
  v18[4] = self;
  v19 = v3;
  dispatch_after(v17, &_dispatch_main_q, v18);
}

- (void)_presentContinuerSuggestions
{
  v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v3 removeContinuerSuggestions];

  if (![(SRSystemAssistantExperienceViewController *)self _isTextInputAndKeyboardShowing]&& !self->_isInAmbient)
  {
    if ([(NSArray *)self->_continuerSuggestionViews count])
    {
      v4 = self->_continuerSuggestionViews;
      objc_initWeak(location, self);
      v5 = dispatch_time(0, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10001FF00;
      v8[3] = &unk_100166FE8;
      objc_copyWeak(&v10, location);
      v9 = v4;
      v6 = v4;
      dispatch_after(v5, &_dispatch_main_q, v8);

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    else
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 136315138;
        *(location + 4) = "[SRSystemAssistantExperienceViewController _presentContinuerSuggestions]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #suggestions: Skipping _presentContinuerSuggestions as they are nil or empty", location, 0xCu);
      }
    }
  }
}

- (id)prepareForReportConcernAndCreateForm:(id)a3 additionalDomainProvidedFeedback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v8 cancelRequestForViewController:self];

  v9 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v9 siriSAEViewControllerRequestStopAttending:self];

  v10 = objc_alloc_init(SiriSharedUIFeedbackModel);
  v11 = [v6 domain];

  if (v11)
  {
    v12 = [v6 domain];
    v13 = [v12 isEqualToString:SAUIFeedbackFormDomainDeviceExpertValue];

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v15 = [v6 domain];
      v16 = [v15 isEqualToString:SAUIFeedbackFormDomainSiriWithChatGPTValue];

      if (v16)
      {
        v14 = 3;
      }

      else
      {
        v17 = [v6 domain];
        v18 = [v17 isEqualToString:SAUIFeedbackFormDomainSiriPQAValue];

        if (v18)
        {
          v14 = 2;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    [v10 setFeedbackDomain:v14];
  }

  v19 = [v6 input];

  if (v19)
  {
    v20 = [v6 input];
    [v10 setUserInput:v20];
  }

  else
  {
    v20 = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
    v21 = [v20 speech];
    v22 = [v21 userUtterance];
    v23 = [v22 bestTextInterpretation];
    [v10 setUserInput:v23];
  }

  v24 = [v6 output];

  if (v24)
  {
    v25 = [v6 output];
    [v10 setSiriDialog:v25];
  }

  else
  {
    v44 = v10;
    v45 = v7;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      v30 = &stru_10016AE90;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = [*(*(&v46 + 1) + 8 * i) text];
          v33 = [(__CFString *)v30 stringByAppendingString:v32];

          v30 = [v33 stringByAppendingString:@"\n"];
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = &stru_10016AE90;
    }

    v10 = v44;
    [v44 setSiriDialog:v30];

    v7 = v45;
  }

  v34 = [v6 subFeature];

  if (v34)
  {
    v35 = [v6 subFeature];
    [v10 setSubFeature:v35];
  }

  v36 = [(SRSystemAssistantExperienceViewController *)self view];
  v37 = [(SRSystemAssistantExperienceViewController *)self view];
  [v37 bounds];
  v38 = [v36 _imageFromRect:?];

  v39 = UIImageJPEGRepresentation(v38, 1.0);
  [v10 setImageRepresentationOfSnippet:v39];

  v40 = [v7 visualIntelligenceCameraFeedImageData];
  [v10 setImageRepresentationOfRequestImage:v40];

  [(SRSystemAssistantExperienceViewController *)self addChildViewController:self->_feedbackController];
  v41 = [(SRSystemAssistantExperienceViewController *)self view];
  v42 = [(SiriSharedUIFeedbackController *)self->_feedbackController view];
  [v41 insertSubview:v42 atIndex:0];

  [(SiriSharedUIFeedbackController *)self->_feedbackController didMoveToParentViewController:self];

  return v10;
}

- (void)reportConcernButtonTappedForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v6 = [v5 feedbackFormForCurrentRequest];

  [v6 setSubFeature:@"related_questions_suggestions"];
  v7 = [(SRSystemAssistantExperienceViewController *)self prepareForReportConcernAndCreateForm:v6 additionalDomainProvidedFeedback:0];
  v8 = [v6 domain];

  if (v8)
  {
    [v7 setFeedbackDomain:0];
  }

  [v7 setSiriSuggestionText:v4];
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 userInput];
    v12 = [v7 siriSuggestionText];
    v13 = 136315650;
    v14 = "[SRSystemAssistantExperienceViewController reportConcernButtonTappedForSuggestion:]";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #feedback - donating feedback with input: %@, output: %@", &v13, 0x20u);
  }

  [(SiriSharedUIFeedbackController *)self->_feedbackController userDidReportConcernForSuggestionsWithModel:v7];
}

- (BOOL)_isTextInputAndKeyboardShowing
{
  v3 = [(SRSystemAssistantExperienceViewController *)self _keyboardState];
  v4 = v3;
  if (v3)
  {
    [v3 frameForAnimation];
    [(SRSystemAssistantExperienceViewController *)self _convertRectFromKeyboard:?];
    v5 = CGRectGetHeight(v8) != 0.0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SiriSharedUISAEViewState *)self->_viewState inputType]== 1;

  return v6 && v5;
}

- (BOOL)_resultEligibleForIntelligentLightEffects
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![SiriSharedUIUtilities utteranceViewEligibleForLightEffects:*(*(&v9 + 1) + 8 * i)])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)performSinglePillExpandAnimation
{
  [(SiriSharedUISAEViewState *)self->_viewState setSmartDialogAnimationInProgress:1];
  self->_resultPresentedInActiveSmartDialog = 1;
  v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v4 = [v3 resultContentView];

  if (SiriSharedUIReducedMotionEnabled())
  {
    v5 = [(SRSystemAssistantExperienceViewController *)self containerView];
    v6 = SiriSharedUIMitosisDuration * 1.5;
    *&v6 = SiriSharedUIMitosisDuration * 1.5;
    [v5 reduceMotionCarouselWithDuration:0 isFirstSnippet:v6];
  }

  v7 = v4 == 0;
  if (SiriSharedUIReducedMotionEnabled())
  {
    v8 = 100000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = dispatch_time(0, v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002097C;
  v10[3] = &unk_100166F98;
  v10[4] = self;
  v11 = v7;
  dispatch_after(v9, &_dispatch_main_q, v10);
}

- (void)performPillCollapseAnimation
{
  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  self->_resultPresentedInActiveSmartDialog = 0;
  [(SiriSharedUISAEViewState *)self->_viewState setFinalAndDisplayedSmartDialog:0];
  v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v3 cleanupResultTransitionIfNeeded];

  v4 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v5 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v4 setCollapseLoadingWith:v5 collapseLoadingSize:{self->_latestDropletContentLayoutSize.width, self->_latestDropletContentLayoutSize.height}];

  defaultSpringAnimationBehavior = self->_defaultSpringAnimationBehavior;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020EEC;
  v8[3] = &unk_100167010;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020F30;
  v7[3] = &unk_100167038;
  v7[4] = self;
  [UIView _animateUsingSpringBehavior:defaultSpringAnimationBehavior tracking:0 animations:v8 completion:v7];
}

- (void)_addFeedbackButton
{
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v4 = [v3 isPresentingVisualIntelligenceCamera];

  if ((v4 & 1) == 0 && +[SiriSharedUIUtilities reportConcernButtonEnabled])
  {

    [(SRSystemAssistantExperienceViewController *)self _setupFeedbackButton];
  }
}

- (void)performPillMergeAndCrossfadeAnimation
{
  v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v3 setShouldPreserveResultSpace:{-[SiriSharedUISAEViewState shouldPreserveResultSpace](self->_viewState, "shouldPreserveResultSpace")}];

  [(SiriSharedUISAEViewState *)self->_viewState setSmartDialogAnimationInProgress:1];
  v4 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v4 setTransitionLoadingToResultWithResultSize:{self->_activeSmartDialogSize.width, self->_activeSmartDialogSize.height}];

  v5 = SiriSharedUIReducedMotionEnabled();
  v6 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v7 = v6;
  v8 = SiriSharedUIMitosisDuration;
  *&v9 = SiriSharedUIMitosisDuration;
  if (v5)
  {
    [v6 reduceMotionMitosisWithDuration:1 intoSnippet:v9];
  }

  else
  {
    [v6 mitoseWithDuration:1 mitosingIntoSnippet:v9];
  }

  v10 = dispatch_time(0, (v8 * 0.75 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000211D0;
  block[3] = &unk_100167010;
  block[4] = self;
  dispatch_after(v10, &_dispatch_main_q, block);
  v11 = dispatch_time(0, (v8 * 0.85 * 1000000000.0));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000214E4;
  v12[3] = &unk_100167010;
  v12[4] = self;
  dispatch_after(v11, &_dispatch_main_q, v12);
}

- (void)presentLatencyPillAnimation
{
  [(SRSystemAssistantExperienceViewController *)self _popToRootViewControllerIfNeeded];
  v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v3 setVoiceLoadingWith:v4 voiceLoadingSize:{self->_latestDropletContentLayoutSize.width, self->_latestDropletContentLayoutSize.height}];

  v5 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v5 stopLatencyAnimationIfNeeded];

  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  if (SiriSharedUIReducedMotionEnabled())
  {
    v6 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v6 transitionVoiceLoadingToLoading];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000219E0;
    v7[3] = &unk_100167010;
    v7[4] = self;
    [UIView _performWithoutRetargetingAnimations:v7];
  }
}

- (void)_popToRootViewControllerIfNeeded
{
  if (self->_isDrilledIntoSnippet)
  {
    v3 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    [v3 setPopToRootViewController:1];

    v4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    v5 = [v4 popToRootViewControllerAnimated:1];

    self->_isDrilledIntoSnippet = 0;
  }
}

- (void)removeResponseElementsIfNeeded:(unint64_t)a3
{
  [(SiriSharedUISAEViewState *)self->_viewState setFinalAndDisplayedSmartDialog:0];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100021C94;
  v8[4] = sub_100021CA4;
  v9 = 0;
  defaultSpringAnimationBehavior = self->_defaultSpringAnimationBehavior;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021CAC;
  v7[3] = &unk_100167060;
  v7[4] = self;
  v7[5] = v8;
  v7[6] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021D18;
  v6[3] = &unk_100167088;
  v6[4] = self;
  v6[5] = v8;
  v6[6] = a3;
  [UIView _animateUsingSpringBehavior:defaultSpringAnimationBehavior tracking:0 animations:v7 completion:v6];
  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  _Block_object_dispose(v8, 8);
}

- (unint64_t)presentedResponseElements
{
  v2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v3 = [v2 presentedResponseElements];

  return v3;
}

- (void)animatedDisappearanceDidBeginWithDuration:(double)a3 reason:(int64_t)a4
{
  if ((a4 == 6 || a4 == 24) && [(SiriSharedUISAEViewState *)self->_viewState inputType]!= 1)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController animatedDisappearanceDidBeginWithDuration:reason:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #dismissal Performing snippet blur-out", buf, 0xCu);
    }

    v7 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v7 performAnimatedBlur:1 withDuration:a3];
  }

  else if ([(SiriSharedUISAEViewState *)self->_viewState inputType]== 1)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController animatedDisappearanceDidBeginWithDuration:reason:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #dismissal Resigning keyboard", buf, 0xCu);
    }

    v9 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v9 resignFirstResponder];

    suggestionsSpringAnimationBehavior = self->_suggestionsSpringAnimationBehavior;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100022010;
    v11[3] = &unk_100167010;
    v11[4] = self;
    [UIView _animateUsingSpringBehavior:suggestionsSpringAnimationBehavior tracking:0 animations:v11 completion:0];
  }
}

- (BOOL)isDisplayingResponse
{
  v2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v3 = [v2 isDisplayingResponse];

  return v3;
}

- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self->_shouldAbsorbSuggestionTap)
  {
    self->_shouldAbsorbSuggestionTap = 0;
LABEL_3:
    if (v7)
    {
      v7[2](v7, 1);
    }

    goto LABEL_17;
  }

  if ([(SiriSharedUIFeedbackController *)self->_feedbackController isProvidingFeedback])
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = "[SRSystemAssistantExperienceViewController hasContentAtPoint:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #dismissal - tap during feedback session", buf, 0xCu);
    }

    goto LABEL_3;
  }

  v9 = objc_alloc_init(SRCompactViewControllerMutableContentTesterState);
  [(SRCompactViewControllerMutableContentTesterState *)v9 setDeviceIsPad:SiriUIDeviceIsPad()];
  v10 = [(SiriUINavigationController *)self->_navigationController transitionController];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackIsPopping:](v9, "setNavigationStackIsPopping:", [v10 operation] == 2);

  v11 = [(SiriUINavigationController *)self->_navigationController viewControllers];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackSize:](v9, "setNavigationStackSize:", [v11 count]);

  v12 = [(SiriUINavigationController *)self->_navigationController viewControllers];
  if ([v12 count] > 1)
  {

    goto LABEL_11;
  }

  v13 = [(SRCompactViewControllerMutableContentTesterState *)v9 navigationStackIsPopping];

  if (v13)
  {
LABEL_11:
    v14 = [(SRSystemAssistantExperienceViewController *)self view];
    v15 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
    v16 = [v15 view];
    [v14 convertPoint:v16 toView:{x, y}];
    v18 = v17;
    v20 = v19;

    v21 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    v22 = [v21 navigationBar];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v61.origin.x = v24;
    v61.origin.y = v26;
    v61.size.width = v28;
    v61.size.height = v30;
    v60.x = v18;
    v60.y = v20;
    [(SRCompactViewControllerMutableContentTesterState *)v9 setNavigationBarHasContent:CGRectContainsPoint(v61, v60)];
    v31 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
    objc_opt_class();
    LOBYTE(v22) = objc_opt_isKindOfClass();

    if (v22)
    {
      v32 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
      -[SRCompactViewControllerMutableContentTesterState setMultiLevelViewHasContent:](v9, "setMultiLevelViewHasContent:", [v32 hasContentAtPoint:{v18, v20}]);
    }

    else
    {
      [(SRCompactViewControllerMutableContentTesterState *)v9 setMultiLevelViewHasContent:1];
    }
  }

  [(SRCompactViewControllerMutableContentTesterState *)v9 setKeyboardHasContent:[(SRSystemAssistantExperienceViewController *)self _keyboardHasContentAtPoint:x, y]];
  v33 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v34 = [(SRSystemAssistantExperienceViewController *)self view];
  [v34 convertPoint:v33 toView:{x, y}];
  v36 = v35;
  v38 = v37;

  v39 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v40 = [(SRSystemAssistantExperienceViewController *)self view];
  [v40 convertPoint:v39 toView:{x, y}];
  v42 = v41;
  v44 = v43;

  [(SRSystemAssistantExperienceViewController *)self keyboardShouldDuckForLongSnippet:v36, v38];
  v45 = [(SRSystemAssistantExperienceViewController *)self view];
  v46 = [v45 window];

  if (v46)
  {
    -[SRCompactViewControllerMutableContentTesterState setContextMenuIsPresented:](v9, "setContextMenuIsPresented:", [v46 contextMenuIsPresented]);
  }

  v47 = objc_alloc_init(SRCompactViewControllerContentTester);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100022544;
  v51[3] = &unk_1001670D8;
  v52 = v9;
  v54 = v39;
  v55 = v7;
  v53 = v47;
  v56 = v42;
  v57 = v44;
  v48 = v39;
  v49 = v47;
  v50 = v9;
  [v33 hasContentAtPoint:v51 completion:{v36, v38}];

LABEL_17:
}

- (void)keyboardShouldDuckForLongSnippet:(CGPoint)a3
{
  if (self->_shouldIgnoreKeyboardDuckingCheck)
  {
    self->_shouldIgnoreKeyboardDuckingCheck = 0;
  }

  else
  {
    y = a3.y;
    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    v7 = v6 - self->_bottomContentInsetComponents.keyboard;
    v8 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [v8 textFieldHeight];
    v10 = v7 - v9;

    if (y < v10 && self->_activeSmartDialogSize.height > v10)
    {
      v11 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      [v11 resignFirstResponder];
    }
  }
}

- (CGSize)maxSizeForSnippet
{
  v3 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v3 maxSnippetWidth];
  v5 = v4;

  v6 = +[AFPreferences sharedPreferences];
  if ([v6 alwaysShowRecognizedSpeech])
  {

LABEL_4:
    v5 = v5 + -16.0;
    goto LABEL_5;
  }

  v7 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v8 = [v7 revealRecognizedSpeech];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
  v9 = INFINITY;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)_setBottomContentInsetComponents:(id)a3 animatedWithDuration:(double)a4 animationOptions:(unint64_t)a5
{
  p_bottomContentInsetComponents = &self->_bottomContentInsetComponents;
  if (self->_bottomContentInsetComponents.external != a3.var0 || self->_bottomContentInsetComponents.keyboard != a3.var1)
  {
    p_bottomContentInsetComponents->external = a3.var0;
    self->_bottomContentInsetComponents.keyboard = a3.var1;
    if (a3.var0 >= a3.var1)
    {
      var0 = a3.var0;
    }

    else
    {
      var0 = a3.var1;
    }

    if (a3.var1 == 0.0 && a3.var0 < 0.0)
    {
      v12 = a3.var0;
    }

    else
    {
      v12 = var0;
    }

    v13 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v13 setBottomContentInset:v12];

    v14 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [v14 setBottomContentInset:v12];

    v15 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v15 setIsExternalKeyboardPresented:p_bottomContentInsetComponents->keyboard > 0.0];

    v16 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [v16 textFieldHeight];
    v18 = v17;
    v19 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v19 setTextFieldHeight:v18];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000229FC;
    v20[3] = &unk_100167010;
    v20[4] = self;
    [UIView _animateWithDuration:a5 delay:v20 options:0 animations:0 start:a4 completion:0.0];
  }
}

- (void)setBottomContentInset:(double)a3
{
  [(SRSystemAssistantExperienceViewController *)self _bottomContentInsetComponents];

  [(SRSystemAssistantExperienceViewController *)self _setBottomContentInsetComponents:a3];
}

- (void)setDockFrame:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  v6 = [(SRSystemAssistantExperienceViewController *)self view:a3.origin.x];
  [v6 frame];
  v8 = v7;

  IsPad = SiriUIDeviceIsPad();
  if (y <= v8)
  {
    if (!IsPad)
    {
      return;
    }

    v14 = [(SRSystemAssistantExperienceViewController *)self view];
    [v14 safeAreaInsets];
    v16 = v15 + 20.0;

    v13 = height - v16;
  }

  else
  {
    if (!IsPad)
    {
      return;
    }

    v10 = [(SRSystemAssistantExperienceViewController *)self view];
    [v10 safeAreaInsets];
    v12 = v11 + 20.0;

    v13 = -v12;
  }

  [(SRSystemAssistantExperienceViewController *)self setBottomContentInset:v13];
}

- (void)setTopContentInset:(double)a3 animated:(BOOL)a4
{
  if (self->_topInset != a3)
  {
    [(SRSystemAssistantExperienceViewController *)self updateTopInset:a4 animated:?];
  }
}

- (void)_updateBottomContentInsetKeyboardComponent
{
  [(SRSystemAssistantExperienceViewController *)self _bottomContentInsetComponents];
  v4 = v3;
  v18 = [(SRSystemAssistantExperienceViewController *)self _keyboardState];
  [v18 frameForAnimation];
  [(SRSystemAssistantExperienceViewController *)self _convertRectFromKeyboard:?];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v9 = 0.0;
  if (CGRectGetHeight(v20) != 0.0)
  {
    v10 = [(SRSystemAssistantExperienceViewController *)self view];
    [v10 bounds];
    v11 = CGRectGetHeight(v21);
    v12 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v12 bounds];
    v13 = v11 - CGRectGetHeight(v22);

    v14 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v14 bounds];
    v15 = CGRectGetHeight(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = v13 + v15 - CGRectGetMinY(v24);
  }

  v16 = [v18 animation];
  [v16 duration];
  -[SRSystemAssistantExperienceViewController _setBottomContentInsetComponents:animatedWithDuration:animationOptions:](self, "_setBottomContentInsetComponents:animatedWithDuration:animationOptions:", [v16 options], v4, v9, v17);
}

- (void)siriDidActivate
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]!= 1)
  {
    return;
  }

  v3 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  if ([v3 requestSource] == 53)
  {

LABEL_6:
    v6 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v6 updateRequestSourceIsQuickTypeTamale:1];

    [(SRSystemAssistantExperienceViewController *)self setupTextFieldForTamale];
    return;
  }

  v4 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  v5 = [v4 requestSource];

  if (v5 == 60)
  {
    goto LABEL_6;
  }

  v7 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  v8 = [v7 requestSource];

  v9 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  v10 = v9;
  if (v8 == 59)
  {
    [v9 updateRequestSourceIsQuickTypeTamale:1];

    [(SRSystemAssistantExperienceViewController *)self _setupTextFieldForQuickTypeVisualIntelligence];
  }

  else
  {
    [v9 updateRequestSourceIsQuickTypeTamale:0];

    [(SRSystemAssistantExperienceViewController *)self setupTextFieldForTextInput];
  }
}

- (void)setupTextFieldForTextInput
{
  [(SRTypeToSiriKeyboardReadinessObserver *)self->_typeToSiriKeyboardReadinessObserver start];
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v4 = [v3 isPresentingVisualIntelligenceCamera];

  if (v4)
  {
    v5 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v5 resetIsInTamaleAndCollapsed];
  }

  v6 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v7 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v7 minimumTextFieldHeight];
  [v6 setTextFieldHeight:?];

  v8 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v9 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v8 setTextFieldWithTextFieldView:v9];

  v10 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v10 becomeFirstResponder];

  v11 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  v12 = [v11 requestSource];

  if (v12 == 56)
  {
    v13 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v13 setIsInGenerativeAssistantTextFollowup];
  }
}

- (void)_setupTextFieldForQuickTypeVisualIntelligence
{
  [(SRTypeToSiriKeyboardReadinessObserver *)self->_typeToSiriKeyboardReadinessObserver start];
  v3 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v4 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v4 minimumTextFieldHeight];
  [v3 setTextFieldHeight:?];

  v5 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v6 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v5 setTextFieldWithTextFieldView:v6];

  v7 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v7 becomeFirstResponder];

  v8 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v8 setIsInGenerativeAssistantTextFollowup];
}

- (void)setupTextFieldForTamale
{
  v3 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v4 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v4 minimumTextFieldHeight];
  [v3 setTextFieldHeight:?];

  v5 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  v6 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v5 setTextFieldWithTextFieldView:v6];

  v7 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [v7 updateKeyboardLightEffects:0];

  v8 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v8 updateIsInTamaleAndCollapsed:1];
}

- (void)setUpConversationStarterSuggestionsWith:(int64_t)a3
{
  v5 = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  self->_requestInvocationSource = a3;
  if (v5 == 1)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = SASRequestSourceGetName();
      v9 = SiriSharedUIViewModelInputTypeGetDescription();
      v10 = 136315650;
      v11 = "[SRSystemAssistantExperienceViewController setUpConversationStarterSuggestionsWith:]";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #suggestions source is %@, inputType is %@, setting up conversation starter suggestions", &v10, 0x20u);
    }

    [(SRSystemAssistantExperienceViewController *)self _setUpConversationStarterSuggestions:1 isVoiceTrigger:a3 == 8 invocationSource:a3];
  }
}

- (void)siriDidDeactivate
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]== 1)
  {
    [(SRTypeToSiriKeyboardReadinessObserver *)self->_typeToSiriKeyboardReadinessObserver stop];
    v3 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v3 resignFirstResponder];
  }

  v5 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v4 = [v5 visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v4 withBlock:&stru_100167118];
}

- (int)viewRegionForPresentedAceObject:(id)a3
{
  instrumentationSupplement = self->_instrumentationSupplement;
  viewState = self->_viewState;
  v6 = a3;
  v7 = [(SiriSharedUISAEViewState *)viewState activeConversationTranscriptItems];
  v8 = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
  LODWORD(instrumentationSupplement) = [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement viewRegionForPresentedAceObject:v6 resultTrasncriptItems:&__NSArray0__struct conversationTranscriptItems:v7 serverUtterances:v8];

  return instrumentationSupplement;
}

- (BOOL)didReceiveUpdateVisualResponseCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 viewId];
  v6 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v7 = [v6 containsSmartDialogSnippetWithViewId:v5];

  viewState = self->_viewState;
  if (v7)
  {
    v9 = [(SiriSharedUISAEViewState *)viewState activeSmartDialogView];
    v10 = [v4 stateData];
    [v9 updateSmartDialogSnippetWithData:v10];
  }

  else
  {
    v11 = [(SiriSharedUISAEViewState *)viewState activeConversationTranscriptItems];
    v9 = [(SRSystemAssistantExperienceViewController *)self _findSnippetViewControllerWithViewIdFromTranscriptItems:v11 viewId:v5];

    if (!v9)
    {
      v12 = [(SiriSharedUISAEViewState *)self->_viewState storedConversationTranscriptItems];
      v9 = [(SRSystemAssistantExperienceViewController *)self _findSnippetViewControllerWithViewIdFromTranscriptItems:v12 viewId:v5];

      if (!v9)
      {
        v13 = 0;
        goto LABEL_7;
      }
    }

    v10 = [v4 stateData];
    [v9 updateSharedState:v10];
  }

  v13 = 1;
LABEL_7:

  return v13;
}

- (id)_findSnippetViewControllerWithViewIdFromTranscriptItems:(id)a3 viewId:(id)a4
{
  v5 = a3;
  v25 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = &off_10018A000;
    v11 = &swift_allocError_ptr;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 viewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v13 viewController];
          v17 = [v16 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v16 aceObject];
            [v18 viewId];
            v19 = v9;
            v20 = v10;
            v21 = v6;
            v23 = v22 = v11;
            v26 = [v23 isEqualToString:v25];

            v11 = v22;
            v6 = v21;
            v10 = v20;
            v9 = v19;

            if (v26)
            {
              goto LABEL_15;
            }
          }

          else
          {
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)setActiveRequestOptions:(id)a3
{
  v5 = a3;
  if (self->_activeRequestOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activeRequestOptions, a3);
    [(SRSystemAssistantExperienceViewController *)self _updateAmbientAvailability];
    v5 = v6;
  }
}

- (void)_registerForAmbientPresentationTraitChange
{
  [(SRSystemAssistantExperienceViewController *)self _updateAmbientAvailability];
  objc_initWeak(&location, self);
  v3 = objc_opt_self();
  v9 = v3;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023980;
  v6[3] = &unk_100167140;
  objc_copyWeak(&v7, &location);
  v5 = [(SRSystemAssistantExperienceViewController *)self registerForTraitChanges:v4 withHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_updateAmbientAvailability
{
  v3 = [(SRSystemAssistantExperienceViewController *)self view];
  v4 = [v3 traitCollection];
  v5 = [v4 isAmbientPresented];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSNumber numberWithBool:v5];
    v9 = 136315394;
    v10 = "[SRSystemAssistantExperienceViewController _updateAmbientAvailability]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #ambient - is Presented - %@", &v9, 0x16u);
  }

  [(SRSystemAssistantExperienceViewController *)self setIsInAmbient:v5];
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient != a3)
  {
    v3 = a3;
    self->_isInAmbient = a3;
    [(SiriSharedUISAEViewState *)self->_viewState setIsInAmbient:?];
    if (self->_isInAmbient)
    {
      v5 = +[UIScreen mainScreen];
      [v5 scale];
      v7 = v6 * SiriSharedUICompactAmbientContentScaleAmount;

      v8 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      v9 = [v8 traitOverrides];
      [v9 setDisplayScale:v7];

      v10 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      v11 = [v10 traitOverrides];
      [v11 setUserInterfaceStyle:2];

      v12 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      [v12 setDisplayScale:v7];

      v13 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      [v13 setUserInterfaceStyle:2];
    }

    else
    {
      v14 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      v15 = [v14 traitOverrides];
      v16 = objc_opt_self();
      [v15 removeTrait:v16];

      v17 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      v18 = [v17 traitOverrides];
      v19 = objc_opt_self();
      [v18 removeTrait:v19];

      v20 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      v21 = objc_opt_self();
      [v20 removeTrait:v21];

      v13 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      v22 = objc_opt_self();
      [v13 removeTrait:v22];
    }

    [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView setIsInAmbient:self->_isInAmbient];
    v23 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [v23 setIsInAmbient:v3];

    v24 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v24 setIsInAmbient:v3];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v25 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    v26 = [v25 viewControllers];

    v27 = [v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        v30 = 0;
        do
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [(SRSystemAssistantExperienceViewController *)self _contentPlatterViewFromViewController:*(*(&v42 + 1) + 8 * v30)];
          [v31 setIsInAmbient:v3];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v28);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = [(SRSystemAssistantExperienceViewController *)self _allTranscriptItems];
    v33 = [v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v39;
      do
      {
        v36 = 0;
        do
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v38 + 1) + 8 * v36) viewController];
          if (objc_opt_respondsToSelector())
          {
            [v37 setIsInAmbient:self->_isInAmbient];
          }

          v36 = v36 + 1;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v34);
    }
  }
}

- (void)_updateIsInAmbientWithInteractivity:(BOOL)a3
{
  if (self->_isInAmbient)
  {
    v3 = a3;
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v7 = v6 * SiriSharedUICompactAmbientContentScaleAmountForInteractivity;

    v8 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    v9 = [v8 traitOverrides];
    [v9 setDisplayScale:v7];

    self->_isInAmbientInteractivity = v3;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(SRSystemAssistantExperienceViewController *)self _allTranscriptItems];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * v14) viewController];
          if (objc_opt_respondsToSelector())
          {
            [v15 setIsInAmbientInteractivity:v3];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v16 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [v16 setIsInAmbientInteractivity:v3];
  }
}

- (void)_setUpConversationStarterSuggestions:(int64_t)a3 isVoiceTrigger:(BOOL)a4 invocationSource:(int64_t)a5
{
  v6 = a4;
  v21 = [(SRSystemAssistantExperienceViewController *)self delegate];
  if ([v21 isPresentingVisualIntelligenceCamera])
  {
  }

  else
  {
    v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
    v9 = [v8 isPresentingVisualIntelligenceDirectInvocation];

    if ((v9 & 1) == 0)
    {
      v10 = [(SRSystemAssistantExperienceViewController *)self delegate];
      v11 = [v10 lockStateForSAEViewController:self];

      v12 = [(SRUIFPreferences *)self->_preferences BOOLForKey:SRUIFPreferencesConversationStartersShownSinceOSInstalled];
      if (!self->_suggestionsDisplayed)
      {
        v13 = v12;
        if (!self->_suggestionsViewProvider)
        {
          v14 = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
          suggestionsViewProvider = self->_suggestionsViewProvider;
          self->_suggestionsViewProvider = v14;
        }

        objc_initWeak(&location, self);
        v16 = self->_suggestionsViewProvider;
        v17 = [(SRSystemAssistantExperienceViewController *)self _mapSASRequestSourceToSuggestionsInputOrigin:a5];
        v18 = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
        v19 = [v18 currentInstrumentationTurnContext];
        v20 = [v19 turnIdentifier];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000243A4;
        v22[3] = &unk_100167190;
        objc_copyWeak(&v23, &location);
        v22[4] = self;
        v24 = v13;
        [(SiriSharedUISuggestionsViewInterface *)v16 fetchStarterSuggestionsViewsWithDeviceLocked:v11 == 2 isVoiceTrigger:v6 invocationSource:v17 isFirstInvocationSinceOSInstalled:v13 ^ 1 turnId:v20 completion:v22];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)processSuggestionViewWrappers:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [NSMutableArray arrayWithCapacity:v5];
  v7 = [NSMutableArray arrayWithCapacity:v5];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100024764;
  v14[3] = &unk_1001671B8;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  [v4 enumerateObjectsUsingBlock:v14];

  suggestionTexts = self->_suggestionTexts;
  self->_suggestionTexts = v8;
  v11 = v8;

  suggestionViews = self->_suggestionViews;
  self->_suggestionViews = v9;
  v13 = v9;
}

- (void)_addSuggestionsToContainer
{
  if (!self->_userInputRecognizedForSuggestions && [(NSArray *)self->_suggestionViews count])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      suggestionTexts = self->_suggestionTexts;
      *buf = 136315394;
      v8 = "[SRSystemAssistantExperienceViewController _addSuggestionsToContainer]";
      v9 = 2112;
      v10 = suggestionTexts;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #suggestions: Adding suggestions starter views to container, %@", buf, 0x16u);
    }

    if (self->_sensitiveUIEnabled)
    {
      [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setSuggestions:self->_suggestionViews];
      self->_suggestionsDisplayed = 1;
    }

    if (self->_shouldShowSuggestions)
    {
      [(SRSystemAssistantExperienceViewController *)self _logSuggestionsWereShownCallback];
      suggestionsSpringAnimationBehavior = self->_suggestionsSpringAnimationBehavior;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000249C4;
      v6[3] = &unk_100167010;
      v6[4] = self;
      [UIView _animateUsingSpringBehavior:suggestionsSpringAnimationBehavior tracking:0 animations:v6 completion:0];
    }

    else
    {
      [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView transitionToSuggestionsCollapsedWithIndex:-1 animated:0 completionBlock:&stru_1001671D8];
    }
  }
}

- (void)_siriRequestCommittedFromSuggestion:(id)a3 suggestionRequestType:(int64_t)a4
{
  v6 = a3;
  v7 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v7 viewController:self siriRequestEnteredWithSuggestion:v6 suggestionRequestType:{-[SRSystemAssistantExperienceViewController _mapSuggestionRequestTypeToSASSuggestionRequestType:](self, "_mapSuggestionRequestTypeToSASSuggestionRequestType:", a4)}];
}

- (void)_siriRequestCommittedFromSuggestion:(id)a3 encodedToolInvocationData:(id)a4 suggestionRequestType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextConnection;
  v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController _siriRequestCommittedFromSuggestion:encodedToolInvocationData:suggestionRequestType:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #suggestions committing suggestion with invocation tool data", &v12, 0xCu);
    }

    [(SRSystemAssistantExperienceViewController *)self _siriRequestCommittedFromSuggestionToolInvocation:v9];
  }

  else
  {
    if (v11)
    {
      v12 = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController _siriRequestCommittedFromSuggestion:encodedToolInvocationData:suggestionRequestType:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #suggestions committing suggestion with text", &v12, 0xCu);
    }

    [(SRSystemAssistantExperienceViewController *)self _siriRequestCommittedFromSuggestion:v8 suggestionRequestType:a5];
  }
}

- (void)_siriRequestCommittedFromSuggestionToolInvocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
    v6 = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
    v7 = [v6 currentInstrumentationTurnContext];
    v8 = [v7 turnIdentifier];
    [v5 viewController:self siriRequestEnteredWithSuggestionToolInvocation:v4 turnIdentifier:v8];
  }

  else
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAAE8(v9);
    }
  }
}

- (void)_setUpConversationContinuerSuggestions:(int64_t)a3 forRequestId:(id)a4 currentMode:(id)a5
{
  v7 = a4;
  v8 = a5;
  suggestionsSpringAnimationBehavior = self->_suggestionsSpringAnimationBehavior;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100024E84;
  v19[3] = &unk_100167010;
  v19[4] = self;
  [UIView _animateUsingSpringBehavior:suggestionsSpringAnimationBehavior tracking:0 animations:v19 completion:0];
  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  v10 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v11 = [v10 lockStateForSAEViewController:self];

  self->_shouldShowSuggestions = 1;
  if (!self->_suggestionsViewProvider)
  {
    v12 = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
    suggestionsViewProvider = self->_suggestionsViewProvider;
    self->_suggestionsViewProvider = v12;
  }

  objc_initWeak(&location, self);
  v14 = self->_suggestionsViewProvider;
  v15 = [(SRSystemAssistantExperienceViewController *)self _mapSASRequestSourceToSuggestionsInputOrigin:self->_requestInvocationSource];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100024EAC;
  v16[3] = &unk_100167248;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  [(SiriSharedUISuggestionsViewInterface *)v14 fetchContinuerSuggestionsViewsWithRequestId:v7 currentMode:v8 deviceLocked:v11 == 2 invocationSource:v15 completion:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (int64_t)_mapSASRequestSourceToSuggestionsInputOrigin:(int64_t)a3
{
  if (a3 > 47)
  {
    if (a3 != 50)
    {
      if (a3 != 48)
      {
        return 0;
      }

      return 2;
    }

    return 3;
  }

  else
  {
    if (a3 != 8)
    {
      if (a3 != 16)
      {
        return 0;
      }

      return 2;
    }

    return 1;
  }
}

- (int64_t)_mapSuggestionRequestTypeToSASSuggestionRequestType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)createSuggestionsViewProvider
{
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100025450;
  v13[3] = &unk_100167270;
  objc_copyWeak(&v14, &location);
  v2 = objc_retainBlock(v13);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000254B4;
  v11[3] = &unk_100167270;
  objc_copyWeak(&v12, &location);
  v3 = objc_retainBlock(v11);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100025754;
  v9[3] = &unk_100167270;
  objc_copyWeak(&v10, &location);
  v4 = objc_retainBlock(v9);
  v5 = [[SiriSharedUISuggestionsViewInterface alloc] initWithStartersPressDown:v2 startersPressUp:v3 continuersPressDown:&stru_1001672D8 continuersPressUp:v4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025AD0;
  v7[3] = &unk_100167350;
  objc_copyWeak(&v8, &location);
  [v5 setContextMenuHandler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v5;
}

- (void)loadContinuerSuggestionsForRequest:(id)a3 currentMode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    [(SRSystemAssistantExperienceViewController *)self _setUpConversationContinuerSuggestions:[(SiriSharedUISAEViewState *)self->_viewState inputType] forRequestId:v6 currentMode:v7];
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CABE4(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)a3
{
  v4 = a3;
  suggestionsViewProvider = self->_suggestionsViewProvider;
  v8 = v4;
  if (!suggestionsViewProvider)
  {
    v6 = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
    v7 = self->_suggestionsViewProvider;
    self->_suggestionsViewProvider = v6;

    v4 = v8;
    suggestionsViewProvider = self->_suggestionsViewProvider;
  }

  [(SiriSharedUISuggestionsViewInterface *)suggestionsViewProvider setDialogPhase:v4];
}

- (void)siriDidStartSpeakingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v6 = [v5 visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025D28;
  v8[3] = &unk_100167378;
  v9 = v4;
  v7 = v4;
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v6 withBlock:v8];
}

- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4
{
  v6 = a3;
  v7 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v8 = [v7 visibleViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025E60;
  v10[3] = &unk_1001673A0;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v8 withBlock:v10];
}

- (void)siriDidUpdateASRWithRecognition:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v6 = [v5 visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025F8C;
  v8[3] = &unk_100167378;
  v9 = v4;
  v7 = v4;
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v6 withBlock:v8];
}

- (void)siriDidTapOutsideContent
{
  v4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v3 = [v4 visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v3 withBlock:&stru_1001673C0];
}

- (void)siriWillStartRequest
{
  v4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v3 = [v4 visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v3 withBlock:&stru_1001673E0];
}

- (void)siriIsIdleAndQuiet
{
  v4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  v3 = [v4 visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:v3 withBlock:&stru_100167400];
}

- (void)_recursivelyNotifyVisibleViewControllers:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___SiriSharedUIViewControlling])
  {
    v7[2](v7, v6);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v6 childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:*(*(&v13 + 1) + 8 * v12) withBlock:v7];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_pushQueuedNavigationContentViewController
{
  v3 = [(SRSystemAssistantExperienceViewController *)self _queuedNavigationContentViewController];
  if (v3)
  {
    v5 = v3;
    v4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    [v4 pushViewController:v5 animated:1];

    [(SRSystemAssistantExperienceViewController *)self _setQueuedNavigationContentViewController:0];
    [(SRSystemAssistantExperienceViewController *)self userDrilledIntoSnippet];
    v3 = v5;
  }
}

- (void)siriViewController:(id)a3 openURL:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026514;
  v9[3] = &unk_100167428;
  v10 = a5;
  v8 = v10;
  [(SRSystemAssistantExperienceViewController *)self siriViewController:a3 openURL:a4 launchOptions:0 completion:v9];
}

- (void)siriViewController:(id)a3 openURL:(id)a4 launchOptions:(id)a5 completion:(id)a6
{
  instrumentationSupplement = self->_instrumentationSupplement;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:a3 aceCommand:0 URL:v13 appID:0 sashItem:0];
  v14 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v14 viewController:self openURL:v13 launchOptions:v12 completion:v11];
}

- (void)siriSnippetViewController:(id)a3 performAceCommands:(id)a4 sashItem:(id)a5
{
  instrumentationSupplement = self->_instrumentationSupplement;
  v9 = a4;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:a3 aceCommands:v9 sashItem:a5];
  v10 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v10 viewController:self performAceCommands:v9 completion:0];
}

- (void)siriViewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v9 viewController:self performAceCommands:v8 completion:v7];
}

- (double)boundingWidthForSnippetViewController:(id)a3
{
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v3 expectedContentWidth];
  v5 = v4;

  return v5;
}

- (id)siriViewController:(id)a3 disambiguationItemForListItem:(id)a4 disambiguationKey:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[SiriUISnippetManager sharedInstance];
  v9 = [v8 disambiguationItemForListItem:v7 disambiguationKey:v6];

  return v9;
}

- (id)siriViewController:(id)a3 filteredDisambiguationListItems:(id)a4
{
  v4 = a4;
  v5 = +[SiriUISnippetManager sharedInstance];
  v6 = [v5 filteredDisambiguationListItems:v4];

  return v6;
}

- (id)siriViewController:(id)a3 listItemToPickInAutodisambiguationForListItems:(id)a4
{
  v4 = a4;
  v5 = +[SiriUISnippetManager sharedInstance];
  v6 = [v5 listItemToPickInAutodisambiguationForListItems:v4];

  return v6;
}

- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)a3
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v6 = [v5 effectiveCoreLocationBundleForSAEViewController:self];

  if (!v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAC5C(v4, v7);
    }
  }

  return v6;
}

- (double)siriViewControllerExpectedWidth:(id)a3
{
  v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v4 portraitContentSize];
  v6 = v5;

  if (self->_isInAmbient && !self->_isInAmbientInteractivity)
  {
    return v6 / SiriSharedUICompactAmbientContentScaleAmount;
  }

  return v6;
}

- (void)siriViewControllerHeightDidChange:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(SiriUINavigationController *)self->_navigationController topViewController];
    v5 = [v4 view];
    v6 = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView superview];

    if (v5 == v6)
    {
      [(SRSystemAssistantExperienceViewController *)self _smartDialogSnippetLayoutDidUpdateForViewController:v10];
    }

    else
    {
      v7 = [(SiriUINavigationController *)self->_navigationController topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [(SiriUINavigationController *)self->_navigationController topViewController];
        [v9 contentViewDidUpdateSize];
      }
    }
  }
}

- (void)_smartDialogSnippetLayoutDidUpdateForViewController:(id)a3
{
  if ([(SRSystemAssistantExperienceViewController *)self _smartDialogActiveTranscriptItemContainsViewController:a3])
  {
    v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [v4 snippetContentDidUpdate];
  }
}

- (BOOL)_smartDialogActiveTranscriptItemContainsViewController:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v6 = [v5 activeTranscriptItems];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) viewController];
        v12 = v11;
        if (v11 == v4 || ([v11 isEqual:v4] & 1) != 0)
        {

          v13 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (void)siriViewControllerHeightDidChange:(id)a3 pinTopOfSnippet:(BOOL)a4
{
  v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView:a3];
  [v4 setNeedsLayout];
}

- (CGSize)siriViewControllerVisibleContentArea:(id)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)siriSnippetViewController:(id)a3 pushSirilandSnippets:(id)a4
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = a4;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  v7 = *v36;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v36 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      v10 = v9;
      v11 = [SRLocalSnippetManager transcriptItemForObject:v10];
      if (!v11)
      {
        v12 = +[SiriUISnippetManager sharedInstance];
        v11 = [v12 transcriptItemForObject:v10 sizeClass:1];
      }

      v13 = [v11 viewController];
      [v13 setAceObject:v10];

      v14 = [v11 viewController];
      [v14 wasAddedToTranscript];

      v15 = [v11 viewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 view];
        [v16 layoutIfNeeded];
        v17 = v15;
        if (SiriUIDeviceIsPad())
        {
          [v17 setNavigating:1];
        }

        v18 = self;
        if (objc_opt_respondsToSelector())
        {
          v33 = [v16 shouldAutomaticallyScaleContentInAmbient];
        }

        else
        {
          v33 = 1;
        }

        [v17 setIsInAmbient:self->_isInAmbient];
        [v17 setDelegate:self];
        [(SiriSharedUICompactHostingInstrumentationSupplement *)self->_instrumentationSupplement configureSiriViewControllerWithCurrentTurn:v17];
        v19 = objc_alloc_init(SiriSharedUIContentPlatterViewController);
        navigationController = self->_navigationController;
        v21 = [v19 contentPlatterView];
        [v21 setDelegate:navigationController];

        v39 = v17;
        v22 = [NSArray arrayWithObjects:&v39 count:1];
        [v19 setContentViewControllers:v22];

        v23 = objc_alloc_init(SiriUINavigationContentViewController);
        [v23 setContentViewController:v19];
        if (self->_isInAmbient)
        {
          v24 = [v19 contentPlatterView];
          v25 = [(SRSystemAssistantExperienceViewController *)self _resultViewController];
          v26 = [v25 compactResultView];
          [v24 setDelegate:v26];

          v18 = self;
        }

        v27 = [v19 contentPlatterView];
        [v27 setIsNextLevelCard:1];

        v28 = [v19 contentPlatterView];
        [v28 setIsInAmbient:v18->_isInAmbient];

        v29 = [v19 contentPlatterView];
        [v29 setAllowAutomaticContentViewsScaling:v33];

        [(SRSystemAssistantExperienceViewController *)v18 _updateAdditionalSafeAreaInsetsForNavigationContentViewController:v23];
        [(SRSystemAssistantExperienceViewController *)v18 _setQueuedNavigationContentViewController:v23];
        if ([v17 isLoading])
        {
          v30 = [v17 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v18 = self;
          }

          else
          {
            v31 = [v17 aceObject];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v18 = self;
            if ((isKindOfClass & 1) == 0)
            {
LABEL_25:
              [(SiriSharedUICompactHostingInstrumentationSupplement *)v18->_instrumentationSupplement logDrillInInteractionForSnippetViewControllerIfNecessary:v17];

              goto LABEL_26;
            }
          }
        }

        [(SRSystemAssistantExperienceViewController *)v18 _pushQueuedNavigationContentViewController];
        goto LABEL_25;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_26:
}

- (void)siriSnippetViewControllerViewDidLoad:(id)a3
{
  if (a3)
  {
    [(SRSystemAssistantExperienceViewController *)self _smartDialogSnippetLayoutDidUpdateForViewController:?];
    v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [v4 setNeedsLayout];

    [(SRSystemAssistantExperienceViewController *)self _pushQueuedNavigationContentViewController];
  }
}

- (void)userTouchedSnippet
{
  v2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v2 userTouchedSnippet];
}

- (void)siriSnippetViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v9 saeViewController:self handleStartLocalRequest:v8 turnIdentifier:v7];
}

- (void)userDrilledIntoSnippet
{
  v2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v2 userDrilledIntoSnippet];
}

- (void)siriSnippetViewController:(id)a3 informHostOfBackgroundView:(id)a4 isSnippetAsyncColored:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    v11 = [v10 snippetBackgroundView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v11;
      v12 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      v13 = [v12 activeTranscriptItems];

      if (v13)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v14 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
        v15 = [v14 activeTranscriptItems];

        v16 = [v15 countByEnumeratingWithState:&v81 objects:v92 count:16];
        if (!v16)
        {
LABEL_13:

          goto LABEL_14;
        }

        v17 = v16;
        v75 = v11;
        v76 = v9;
        v18 = 0;
        v19 = *v82;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v82 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = [*(*(&v81 + 1) + 8 * i) viewController];
            objc_opt_class();
            v18 |= objc_opt_isKindOfClass() & (v21 == v8);
          }

          v17 = [v15 countByEnumeratingWithState:&v81 objects:v92 count:16];
        }

        while (v17);

        v11 = v75;
        v9 = v76;
        if ((v18 & 1) == 0)
        {
LABEL_14:
          [v11 bounds];
          [v9 setFrame:?];
          v22 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];
          v23 = &SiriSharedUISmartDialogSnippetCornerRadius;
          if (!v22)
          {
            v23 = &SiriSharedUISmartDialogPlatterCornerRadius;
          }

          [v11 setContinuousCornerRadius:*v23];
          v24 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s #background: get SearchUIBackgroundColorView", buf, 0xCu);
          }

          v25 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
          if ([v25 onlyContainsSnippet])
          {
            v26 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];

            if (v26)
            {
LABEL_22:

LABEL_57:
              goto LABEL_58;
            }

            [v11 removeFromSuperview];
            v27 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
            [v27 setSnippetBackgroundView:0];

            v25 = [(SRSystemAssistantExperienceViewController *)self containerView];
            v28 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
            [v25 updateBackgroundView:v9 smartDialogView:v28 isSnippetAsyncColored:1];
          }

          goto LABEL_22;
        }
      }

      v15 = [v11 contentView];
      [v15 addSubview:v9];
      goto LABEL_13;
    }

    v35 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    v61 = [v35 snippetBackgroundView];
    if (v61)
    {

      goto LABEL_56;
    }

    v53 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    if ([v53 onlyContainsSnippet])
    {
      v74 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];

      if (v74)
      {
        goto LABEL_57;
      }

      v35 = [(SRSystemAssistantExperienceViewController *)self containerView];
      v71 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      [v35 updateBackgroundView:v9 smartDialogView:v71 isSnippetAsyncColored:1];
LABEL_54:

      goto LABEL_56;
    }

LABEL_55:

    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    v30 = [v29 snippetBackgroundView];

    if (v30)
    {
      v31 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      v32 = [v31 snippetBackgroundView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = v9;
        v34 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
        v35 = [v34 snippetBackgroundView];

        v36 = [v11 effect];
        [v35 setEffect:v36];

        v37 = [v11 backgroundColor];
        [v35 setBackgroundColor:v37];

        v38 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];
        v39 = &SiriSharedUISmartDialogSnippetCornerRadius;
        if (!v38)
        {
          v39 = &SiriSharedUISmartDialogPlatterCornerRadius;
        }

        v40 = *v39;
        v41 = [v35 layer];
        [v41 setCornerRadius:v40];

        v42 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          v44 = [v35 backgroundColor];
          v45 = [v35 effect];
          *buf = 136315650;
          v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
          v88 = 2112;
          v89 = v44;
          v90 = 2112;
          v91 = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s #background: setting backgroundViewColor:%@, effect:%@", buf, 0x20u);
        }

        if ([(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet])
        {
          v46 = v11;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v47 = [v35 contentView];
          v48 = [v47 subviews];

          v49 = [v48 countByEnumeratingWithState:&v77 objects:v85 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v78;
            do
            {
              for (j = 0; j != v50; j = j + 1)
              {
                if (*v78 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                [*(*(&v77 + 1) + 8 * j) removeFromSuperview];
              }

              v50 = [v48 countByEnumeratingWithState:&v77 objects:v85 count:16];
            }

            while (v50);
          }

          v11 = v46;
        }

        v53 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
        if ([v53 onlyContainsSnippet])
        {
          v54 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];

          if (v54)
          {
LABEL_56:

            goto LABEL_57;
          }

          [v35 removeFromSuperview];
          v55 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
          [v55 setSnippetBackgroundView:0];

          v56 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v56;
            v58 = [v35 backgroundColor];
            v59 = [v35 effect];
            *buf = 136315650;
            v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
            v88 = 2112;
            v89 = v58;
            v90 = 2112;
            v91 = v59;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s #background: updating the whole background backgroundViewColor:%@, effect:%@", buf, 0x20u);
          }

          v53 = [(SRSystemAssistantExperienceViewController *)self containerView];
          v60 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
          [v53 updateBackgroundView:v35 smartDialogView:v60 isSnippetAsyncColored:0];
        }

        goto LABEL_55;
      }
    }

    else
    {
      v62 = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView resultSnippetBackgroundView];
      objc_opt_class();
      v63 = objc_opt_isKindOfClass();

      if (v63)
      {
        v11 = v9;
        v35 = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView resultSnippetBackgroundView];
        v64 = [v11 effect];
        [v35 setEffect:v64];

        v65 = [v11 backgroundColor];
        [v35 setBackgroundColor:v65];

        v66 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];
        v67 = &SiriSharedUISmartDialogSnippetCornerRadius;
        if (!v66)
        {
          v67 = &SiriSharedUISmartDialogPlatterCornerRadius;
        }

        v68 = *v67;
        v69 = [v35 layer];
        [v69 setCornerRadius:v68];

        v70 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v71 = v70;
        v72 = [v35 backgroundColor];
        v73 = [v35 effect];
        *buf = 136315650;
        v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
        v88 = 2112;
        v89 = v72;
        v90 = 2112;
        v91 = v73;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%s #background: setting backgroundViewColor:%@, effect:%@", buf, 0x20u);

        goto LABEL_54;
      }
    }
  }

LABEL_58:
}

- (void)siriSnippetViewController:(id)a3 isBackgroundColorUpdateSuccessful:(BOOL)a4
{
  v4 = a4;
  v6 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v7 = [v6 onlyContainsSnippet];

  if (v7)
  {
    v8 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v8 searchUIBackgroundColorUpdateSuccessful:v4];
  }
}

- (void)cancelSpeakingForSiriViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v4 stopSpeakingForSAEViewController:self];
}

- (void)siriViewController:(id)a3 speakText:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v9 saeViewController:self speakText:v8 isPhonetic:0 completion:v7];
}

- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)a3
{
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v5 = [v4 lockStateForSAEViewController:self];

  return v5 != 0;
}

- (id)localeForSiriViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v5 = [v4 localeForSAEViewController:self];

  return v5;
}

- (void)siriSnippetViewController:(id)a3 willDismissViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v6 siriSAEViewController:self willDismissViewController:v5];
}

- (void)siriSnippetViewController:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v6 siriSAEViewController:self willPresentViewController:v5];
}

- (void)siriViewControllerViewDidAppear:(id)a3 isTopLevelViewController:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 aceObject];

    [WeakRetained saeViewController:self viewDidAppearForAceObject:v6];
  }
}

- (void)siriViewControllerViewDidDisappear:(id)a3 isTopLevelViewController:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 aceObject];

    [WeakRetained saeViewController:self viewDidDisappearForAceObject:v6];
  }
}

- (void)_setStatusViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self setStatusViewHidden:v3];
}

- (void)_updateStatusViewVisibility
{
  v3 = [(SRSystemAssistantExperienceViewController *)self _hidesStatusViewForInputType:[(SiriSharedUISAEViewState *)self->_viewState inputType]];
  v4 = (v3 | [(SRSystemAssistantExperienceViewController *)self _snippetViewControllerRequestsStatusViewHidden]) & 1;

  [(SRSystemAssistantExperienceViewController *)self _setStatusViewHidden:v4];
}

- (void)_updateHomeAffordanceVisibility
{
  v3 = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SRSystemAssistantExperienceViewController _updateHomeAffordanceVisibility]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #homeAffordance: toggleHomeAffordanceHidden: YES for input type speech", &v8, 0xCu);
      }

      v5 = 1;
      goto LABEL_9;
    }

    if (v3 != 1)
    {
      return;
    }
  }

  v4 = AFSiriLogContextConnection;
  v5 = 0;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SRSystemAssistantExperienceViewController _updateHomeAffordanceVisibility]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #homeAffordance: toggleHomeAffordanceHidden: NO for input type text", &v8, 0xCu);
    v5 = 0;
  }

LABEL_9:
  v7 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v7 toggleHomeAffordanceHidden:v5];
}

- (void)_willBeginEditingOfType:(int64_t)a3
{
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self willBeginEditingOfType:a3];
}

- (void)_didEndEditing
{
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v3 saeViewControllerDidEndEditing:self];
}

- (void)_updateKeyboardStateFromNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:UIKeyboardDidHideNotification];

  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SRSystemAssistantExperienceViewController _updateKeyboardStateFromNotification:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #dismissal Resetting keyboard state since keyboard did hide", &v9, 0xCu);
    }

    [(SRSystemAssistantExperienceViewController *)self _setKeyboardState:0];
  }

  else
  {
    v8 = [[SRCompactKeyboardState alloc] initWithKeyboardNotification:v4];
    [(SRSystemAssistantExperienceViewController *)self _setKeyboardState:v8];
  }
}

- (void)_keyboardWillHideForAmbient:(id)a3
{
  if (self->_isInAmbient)
  {
    [(SRSystemAssistantExperienceViewController *)self _updateIsInAmbientWithInteractivity:0];
  }
}

- (void)_keyboardWillShowForAmbient:(id)a3
{
  if (self->_isInAmbient)
  {
    [(SRSystemAssistantExperienceViewController *)self _updateIsInAmbientWithInteractivity:1];
  }
}

- (void)_setKeyboardState:(id)a3
{
  v4 = [a3 copy];
  keyboardState = self->_keyboardState;
  self->_keyboardState = v4;

  [(SRSystemAssistantExperienceViewController *)self _updateBottomContentInsetKeyboardComponent];
}

- (CGRect)_convertRectFromKeyboard:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SRSystemAssistantExperienceViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 screen];

  v11 = [v10 coordinateSpace];
  v12 = [(SRSystemAssistantExperienceViewController *)self view];
  [v12 convertRect:v11 fromCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)_keyboardFrame
{
  v3 = [(SRSystemAssistantExperienceViewController *)self _keyboardState];
  [v3 frame];
  [(SRSystemAssistantExperienceViewController *)self _convertRectFromKeyboard:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_setInputType:(int64_t)a3
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]!= a3)
  {
    [(SiriSharedUISAEViewState *)self->_viewState setInputType:a3];
    v5 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v5 setInputType:a3];

    [(SRSystemAssistantExperienceViewController *)self _updateTextRequestViewVisibility];

    [(SRSystemAssistantExperienceViewController *)self _updateStatusViewVisibility];
  }
}

- (BOOL)_alwaysObscureBackgroundContentWhenActive
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 alwaysObscureBackgroundContentWhenActive];

  return v3;
}

- (BOOL)_keyboardHasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SRSystemAssistantExperienceViewController *)self _keyboardFrame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)_requestKeyboardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self requestsKeyboardWithCompletion:v4];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v27 = a3;
  v8 = a4;
  v9 = [(SRSystemAssistantExperienceViewController *)self _contentPlatterViewFromViewController:v8];
  v10 = [v27 viewControllers];
  v11 = [v10 count];

  if (v11 == 2)
  {
    if (SiriSharedUIDeviceIsPhone() && !self->_isDrilledIntoSnippet)
    {
      v13 = [(SRSystemAssistantExperienceViewController *)self delegate];
      [v13 updateEdgeLightWindowLevel:1];
    }

    self->_isDrilledIntoSnippet = 1;
    if (SiriSharedUIDeviceIsPad())
    {
      [v27 setNavigationBarHidden:0 animated:v5];
      [v9 setFakeNavigationBarBackgroundHidden:1];
    }

    else
    {
      [v27 setNavigationBarHidden:1 animated:v5];
    }

    v19 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [v19 textFieldHeight];
    v21 = v20;

    if ((SiriSharedUIDeviceIsPad() & 1) == 0)
    {
      v22 = [(SRSystemAssistantExperienceViewController *)self view];
      [v22 safeAreaInsets];
      v21 = v21 + v23;
    }

    [v9 setMinimumScrollViewBottomInset:v21];
    v24 = [v8 navigationItem];
    [v24 setHidesBackButton:1];

    v25 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v25 toggleHomeAffordanceHidden:SiriSharedUIDeviceIsPhone() ^ 1];

    if ([(SiriSharedUISAEViewState *)self->_viewState inputType]== 1)
    {
      v26 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      [v26 resignFirstResponder];
    }

    [(SRSystemAssistantExperienceViewController *)self updateTopInset:1 animated:self->_topInset];
    [(SiriSharedUISAEViewState *)self->_viewState setFinalAndDisplayedSmartDialog:0];
    [(SiriSharedUISAEViewState *)self->_viewState setActiveSmartDialogView:0];
  }

  else if (v11 == 1)
  {
    self->_isDrilledIntoSnippet = 0;
    [v27 setNavigationBarHidden:1 animated:v5];
    [v9 setFakeNavigationBarBackgroundHidden:1];
    [(SRSystemAssistantExperienceViewController *)self _updateHomeAffordanceVisibility];
    if (SiriSharedUIDeviceIsPhone())
    {
      v12 = [(SRSystemAssistantExperienceViewController *)self delegate];
      [v12 updateEdgeLightWindowLevel:0];
    }

    [(SRSystemAssistantExperienceViewController *)self updateTopInset:1 animated:self->_topInset];
  }

  else if (v11 >= 3)
  {
    [v27 setNavigationBarHidden:0 animated:v5];
    [v9 setFakeNavigationBarBackgroundHidden:0];
    v14 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [v14 textFieldHeight];
    v16 = v15;

    if ((SiriSharedUIDeviceIsPad() & 1) == 0)
    {
      v17 = [(SRSystemAssistantExperienceViewController *)self view];
      [v17 safeAreaInsets];
      v16 = v16 + v18;
    }

    [v9 setMinimumScrollViewBottomInset:v16];
  }
}

- (id)_contentPlatterViewFromViewController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = sub_100019948(v4, v3);

  if (v5 && (v6 = objc_opt_class(), [v5 contentViewController], v7 = objc_claimAutoreleasedReturnValue(), sub_100019948(v6, v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [v8 contentPlatterView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_contentDiffersBetweenPlatterItems:(id)a3 andItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndex:v8];
        v10 = [v6 objectAtIndex:v8];
        v11 = [SiriSharedUIUtilities contentDiffersBetweenItems:v10 andItems:v9];

        if (v11)
        {
          break;
        }

        ++v8;
      }

      while ([v5 count] > v8);
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (void)dropletContentWillUpdateLayout:(id)a3 withUpdatedContentSize:(CGSize)a4 animated:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  self->_latestDropletContentLayoutSize = a4;
  viewState = self->_viewState;
  v9 = a3;
  v10 = [(SiriSharedUISAEViewState *)viewState activeSmartDialogView];

  if (v10 == v9)
  {
    v11 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogIsLatencyPill];
    v12 = self->_viewState;
    if (v11)
    {
      v13 = [(SiriSharedUISAEViewState *)v12 userUtterance];
      v14 = [v13 speech];
      v15 = [v14 isFinal];

      defaultSpringAnimationBehavior = self->_defaultSpringAnimationBehavior;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100028FA0;
      v30[3] = &unk_100167450;
      v30[4] = self;
      *&v30[5] = width;
      *&v30[6] = height;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100028FF4;
      v28[3] = &unk_100166FC0;
      v29 = v15;
      v28[4] = self;
      [UIView _animateUsingSpringBehavior:defaultSpringAnimationBehavior tracking:0 animations:v30 completion:v28];
      v17 = [(SRSystemAssistantExperienceViewController *)self view];
      [v17 setNeedsLayout];

      v18 = [(SRSystemAssistantExperienceViewController *)self view];
LABEL_4:
      v19 = v18;
      [v18 layoutIfNeeded];

      return;
    }

    v20 = [(SiriSharedUISAEViewState *)v12 activeSmartDialogView];
    if (v20)
    {
      v21 = v20;
      v22 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      v23 = [v22 hasResult];

      if (v23)
      {
        self->_activeSmartDialogSize.width = width;
        self->_activeSmartDialogSize.height = height;
        if ([(SRSystemAssistantExperienceViewController *)self _shouldRenderResult])
        {

          [(SRSystemAssistantExperienceViewController *)self _renderResult];
        }

        else if (self->_resultPresentedInActiveSmartDialog)
        {
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1000290D8;
          v27[3] = &unk_100167450;
          v27[4] = self;
          *&v27[5] = width;
          *&v27[6] = height;
          [UIView _performWithoutRetargetingAnimations:v27];
          v24 = [(SRSystemAssistantExperienceViewController *)self view];
          [v24 setNeedsLayout];

          v25 = [(SRSystemAssistantExperienceViewController *)self view];
          [v25 layoutIfNeeded];

          v26 = [(SRSystemAssistantExperienceViewController *)self containerView];
          [v26 setNeedsLayout];

          v18 = [(SRSystemAssistantExperienceViewController *)self containerView];
          goto LABEL_4;
        }
      }
    }
  }
}

- (double)dropletContentMaximumContainerWidth
{
  v2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (double)dropletContentMaximumContainerHeight
{
  v2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (void)setDropletContainerUserUtteranceViewHeight:(double)a3
{
  v4 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v4 setUserUtteranceViewHeight:a3];
}

- (void)siriViewControllerHeightDidChange
{
  v2 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [v2 snippetContentDidUpdate];
}

- (void)siriViewControllerShouldOpenUrl:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 viewController:self openURL:v4 completion:0];
}

- (void)siriViewControllerShouldRequestTextInputWithUtterance:(id)a3 alternatives:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SISchemaUEITranscriptTapped);
  [v8 setExists:1];
  v9 = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
  [v9 emitInstrumentation:v8];

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRSystemAssistantExperienceViewController siriViewControllerShouldRequestTextInputWithUtterance:alternatives:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation transcript tapped", &v12, 0xCu);
  }

  self->_inTapToEdit = 1;
  self->_shouldIgnoreKeyboardDuckingCheck = 1;
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]!= 1)
  {
    [(SRSystemAssistantExperienceViewController *)self removeResponseElementsIfNeeded:1];
    [(SRSystemAssistantExperienceViewController *)self _setInputType:1];
    [(SRSystemAssistantExperienceViewController *)self siriDidActivate];
    v11 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v11 siriSAEViewControllerRequestsTextActivation:self withRequestSource:33];
  }

  [(SRSystemAssistantExperienceViewController *)self _presentSystemPromptEntryViewWithUtterance:v6 alternatives:v7];
}

- (void)siriViewControllerRequestDeviceUnlockWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v6 = [v5 lockStateForSAEViewController:self];

  if ((v6 & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000296B0;
    v8[3] = &unk_100167478;
    v9 = v4;
    [WeakRetained requestToHandlePasscodeUnlockWithClient:0 withCompletion:v8];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (void)_presentSystemPromptEntryViewWithUtterance:(id)a3 alternatives:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v8 prefillWithText:v7];

  v9 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v9 becomeFirstResponder];

  v10 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v10 setKeyboardSuggestions:v6];

  v11 = [v6 count];
  if (v11)
  {
    v12 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [v12 selectAllText];
  }
}

- (void)siriViewControllerWillBeginEditing
{
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v3 cancelRequestForViewController:self];

  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v4 saeViewControllerRequestsHIDEventDefferal:self];

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRSystemAssistantExperienceViewController siriViewControllerWillBeginEditing]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while edit sheet is up", &v7, 0xCu);
  }

  v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v6 saeViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)siriViewControllerDidEndEditing
{
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v3 saeViewControllerCancelHIDEventDefferal:self];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController siriViewControllerDidEndEditing]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - edit sheet is removed, no longer preventing touches from dismissing Siri", &v6, 0xCu);
  }

  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)switchPresentationToTextInput
{
  [(SRSystemAssistantExperienceViewController *)self _setInputType:1];

  [(SRSystemAssistantExperienceViewController *)self siriDidActivate];
}

- (void)switchPresentationToVisualIntelligenceCameraInput
{
  [(SRSystemAssistantExperienceViewController *)self _setInputType:3];

  [(SRSystemAssistantExperienceViewController *)self siriDidActivate];
}

- (void)promptEntryViewWillPresentEditMenu:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController promptEntryViewWillPresentEditMenu:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while edit menu is up", &v6, 0xCu);
  }

  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)promptEntryDidDismissEditMenu:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController promptEntryDidDismissEditMenu:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - edit menu is removed, no longer preventing touches from dismissing Siri", &v6, 0xCu);
  }

  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)entryViewDidSubmit:(id)a3 text:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [v6 removeSuggestions];

  self->_promptEntryViewSuggestionsSubmitting = 0;
  if (self->_inTapToEdit)
  {
    v7 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    v8 = [v7 userUtteranceViewModel];
    v9 = [v8 asrAlternatives];
    v10 = [v9 count] == 0;

    v11 = [(SRSystemAssistantExperienceViewController *)self delegate];
    v12 = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
    v13 = [v12 speech];
    v14 = [v13 userUtterance];
    v15 = objc_alloc_init(AFUserUtteranceSelectionResults);
    [v11 viewController:self didFinishEditingUtteranceWithText:v5 originalUserUtterance:v14 selectionResults:v15 showASR:v10];

    self->_inTapToEdit = 0;
  }

  else
  {
    v16 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v16 viewController:self siriRequestEnteredWithText:v5];
  }

  suggestionsViewProvider = self->_suggestionsViewProvider;

  [(SiriSharedUISuggestionsViewInterface *)suggestionsViewProvider startNewTypingSession];
}

- (void)entryViewDidSubmit:(id)a3 visualIntelligenceText:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SRSystemAssistantExperienceViewController entryViewDidSubmit:visualIntelligenceText:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence Visual Intelligence direct routing delegate method called with text", &v9, 0xCu);
  }

  v7 = [[SASRequestOptions alloc] initWithRequestSource:60 uiPresentationIdentifier:@"com.apple.siri.SystemAssistantExperience"];
  [v7 setText:v5];
  v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v8 siriSAEViewControllerRequestsTextRequest:self withRequestOptions:v7];
}

- (void)entryViewDidSubmit:(id)a3 suggestionText:(id)a4 suggestionRequestType:(int64_t)a5
{
  v7 = a4;
  v8 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [v8 removeSuggestions];

  encodedToolInvocationDataForTappedSuggestion = self->_encodedToolInvocationDataForTappedSuggestion;
  v10 = AFSiriLogContextConnection;
  v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if (encodedToolInvocationDataForTappedSuggestion)
  {
    if (v11)
    {
      v16 = 136315138;
      v17 = "[SRSystemAssistantExperienceViewController entryViewDidSubmit:suggestionText:suggestionRequestType:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #suggestions committing suggestion from promptEntryView with invocation tool data", &v16, 0xCu);
    }

    [(SRSystemAssistantExperienceViewController *)self _siriRequestCommittedFromSuggestionToolInvocation:self->_encodedToolInvocationDataForTappedSuggestion];
  }

  else
  {
    if (v11)
    {
      v16 = 136315138;
      v17 = "[SRSystemAssistantExperienceViewController entryViewDidSubmit:suggestionText:suggestionRequestType:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #suggestions committing suggestion from promptEntryView with text", &v16, 0xCu);
    }

    v12 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v12 viewController:self siriRequestEnteredWithSuggestion:v7 suggestionRequestType:{-[SRSystemAssistantExperienceViewController _mapSuggestionRequestTypeToSASSuggestionRequestType:](self, "_mapSuggestionRequestTypeToSASSuggestionRequestType:", a5)}];
  }

  [(SiriSharedUISuggestionsViewInterface *)self->_suggestionsViewProvider startNewTypingSession];
  self->_promptEntryViewSuggestionsSubmitting = 0;
  suggestionTexts = self->_suggestionTexts;
  self->_suggestionTexts = &__NSArray0__struct;

  suggestionViews = self->_suggestionViews;
  self->_suggestionViews = &__NSArray0__struct;

  v15 = self->_encodedToolInvocationDataForTappedSuggestion;
  self->_encodedToolInvocationDataForTappedSuggestion = 0;
}

- (void)shouldBeginEditing
{
  v3 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [v3 updateKeyboardLightEffects:1];

  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
}

- (void)promptEntryViewDidBeginEditing:(id)a3
{
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  if ([v4 isPresentingVisualIntelligenceCamera])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
    v5 = [v6 isPresentingVisualIntelligenceDirectInvocation];
  }

  v7 = [(SystemAssistantPromptEntryView *)self->_promptEntryView isInTamaleAndCollapsed];
  v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
  if (v7)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v8;
  if (v9)
  {
    [v8 viewController:self willChangeKeyboardVisibility:1];
  }

  else
  {
    [v8 cancelRequestForViewController:self];

    [(SRSystemAssistantExperienceViewController *)self removeResponseElementsIfNeeded:1];
  }
}

- (void)promptEntryViewDidEndEditing:(id)a3
{
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v4 viewController:self willChangeKeyboardVisibility:0];
}

- (void)_cancelFirstVisualIntelligenceRequestIfNeeded
{
  v3 = [(SystemAssistantPromptEntryView *)self->_promptEntryView isInTamaleAndCollapsed];
  v4 = [(SystemAssistantPromptEntryView *)self->_promptEntryView firstPromptSubmitted];
  v5 = [(SystemAssistantPromptEntryView *)self->_promptEntryView requestSourceIsQuickTypeTamale];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316162;
    v9 = "[SRSystemAssistantExperienceViewController _cancelFirstVisualIntelligenceRequestIfNeeded]";
    v10 = 1024;
    v11 = v5 & ((v3 | v4) ^ 1);
    v12 = 1024;
    v13 = v3 & 1;
    v14 = 1024;
    v15 = v4 & 1;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #visual intelligence - shouldCancelActiveRequest: %d (firstPromptSubmitted: %d, isVisualIntelligenceDirectInvocationRequest: %d, isVisualIntelligenceDirectInvocationRequest: %d)", &v8, 0x24u);
  }

  if ((v5 & ((v3 | v4) ^ 1)) != 0 && !self->_hasCanceledFirstVisualIntelligenceRequest)
  {
    v7 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v7 cancelRequestForViewController:self];

    [(SRSystemAssistantExperienceViewController *)self removeResponseElementsIfNeeded:1];
    self->_hasCanceledFirstVisualIntelligenceRequest = 1;
  }
}

- (void)didChangeText:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self didChangeText:v4];

  v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
  if ([v6 isPresentingVisualIntelligenceCamera])
  {

LABEL_4:
    if ([v4 length] && !self->_hasCanceledFirstVisualIntelligenceRequest)
    {
      [(SRSystemAssistantExperienceViewController *)self _cancelFirstVisualIntelligenceRequestIfNeeded];
    }

    goto LABEL_16;
  }

  v7 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v8 = [v7 isPresentingVisualIntelligenceDirectInvocation];

  if (v8)
  {
    goto LABEL_4;
  }

  if (!self->_promptEntryViewSuggestionsSubmitting)
  {
    [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
    if ([v4 length])
    {
      v9 = [(SRSystemAssistantExperienceViewController *)self delegate];
      v10 = [v9 lockStateForSAEViewController:self];

      if (!self->_suggestionsViewProvider)
      {
        v11 = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
        suggestionsViewProvider = self->_suggestionsViewProvider;
        self->_suggestionsViewProvider = v11;
      }

      objc_initWeak(&location, self);
      v13 = self->_suggestionsViewProvider;
      v14 = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
      v15 = [v14 currentInstrumentationTurnContext];
      v16 = [v15 turnIdentifier];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002A5C4;
      v21[3] = &unk_100167248;
      objc_copyWeak(&v22, &location);
      v21[4] = self;
      [(SiriSharedUISuggestionsViewInterface *)v13 fetchAutoCompletionSuggestionsViewsWithQuery:v4 deviceLocked:(v10 >> 1) & 1 turnId:v16 completion:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v17 = [(SiriSharedUISuggestionsViewInterface *)self->_suggestionsViewProvider getInitialSuggestionViewWrappers];
      if ([v17 count])
      {
        [(SRSystemAssistantExperienceViewController *)self processSuggestionViewWrappers:v17];
        [(SRSystemAssistantExperienceViewController *)self _addSuggestionsToContainer];
      }

      else
      {
        suggestionTexts = self->_suggestionTexts;
        self->_suggestionTexts = &__NSArray0__struct;

        suggestionViews = self->_suggestionViews;
        self->_suggestionViews = &__NSArray0__struct;

        v20 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
        [v20 removeSuggestions];
      }
    }
  }

LABEL_16:
}

- (void)_fadeOutContinuerSuggestionsIfAny
{
  if ([(NSArray *)self->_continuerSuggestionViews count])
  {
    v3 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [v3 removeContinuerSuggestions];

    continuerSuggestionViews = self->_continuerSuggestionViews;
    self->_continuerSuggestionViews = &__NSArray0__struct;
  }
}

- (void)promptEntryViewDidLayoutSubviews:(id)a3
{
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setNeedsLayout];
  textFieldContainerView = self->_textFieldContainerView;

  [(SiriSharedUISystemAssistantExperienceContainerView *)textFieldContainerView layoutIfNeeded];
}

- (void)handleVoiceActivationRequestWithRequestOptions:(id)a3
{
  v4 = a3;
  [(SRSystemAssistantExperienceViewController *)self _setInputType:2];
  [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriUI];
  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 siriSAEViewControllerRequestsVoiceActivation:self withRequestOptions:v4];
}

- (void)_teardownTypeToSiriUI
{
  v3 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [v3 resignFirstResponder];

  suggestionsSpringAnimationBehavior = self->_suggestionsSpringAnimationBehavior;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002AC48;
  v6[3] = &unk_100167010;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002ACA0;
  v5[3] = &unk_100167038;
  v5[4] = self;
  [UIView _animateUsingSpringBehavior:suggestionsSpringAnimationBehavior tracking:0 animations:v6 completion:v5];
}

- (void)dismissSiriResults
{
  v3 = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v5 = [v4 isPresentingVisualIntelligenceCamera];

  if (!v5 || v3 == 3)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CADD8(v5, v3 == 3, v7);
    }
  }

  else
  {
    v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v6 siriResultsWillDismissInTamale];

    [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriForVisualIntelligenceCameraWithUpdate];
  }
}

- (void)_teardownTypeToSiriForVisualIntelligenceCameraWithUpdate
{
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v4 = [v3 isPresentingVisualIntelligenceCamera];

  if (v4)
  {
    v5 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    v6 = [v5 isInTamaleAndCollapsed];

    if (v6)
    {
      v7 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10002AF68;
      v9[3] = &unk_100167010;
      v9[4] = self;
      [v7 animateOutTextFieldAndButton:v9];
    }

    else
    {
      [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriUI];
      v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
      [v8 siriResultsDidDismissInTamale];
    }
  }

  else
  {

    [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriUI];
  }
}

- (void)keyboardIsReadyToReceiveInput
{
  v3 = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
  v4 = SRUIFConstructLaunchContextForLaunchEnded();
  [v3 emitInstrumentation:v4];

  typeToSiriKeyboardReadinessObserver = self->_typeToSiriKeyboardReadinessObserver;

  [(SRTypeToSiriKeyboardReadinessObserver *)typeToSiriKeyboardReadinessObserver stop];
}

- (void)containerView:(id)a3 requestsDismissalWithReason:(int64_t)a4
{
  v6 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v7 = [v6 isPresentingVisualIntelligenceCamera];

  if (v7)
  {

    [(SRSystemAssistantExperienceViewController *)self dismissSiriResults];
  }

  else
  {
    v8 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v8 endSiriSessionForViewController:self withDismissalReason:a4];
  }
}

- (void)presentGenerativeAssistantOnboardingFlowWithCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  [(SRSystemAssistantExperienceViewController *)self setStoredGenerativeAssistantOnboardingCompletion:a4];
  v6 = [v7 aceId];
  [(SRSystemAssistantExperienceViewController *)self setGenerativeAssistantOnboardingCommandAceID:v6];

  [(SiriSharedUIGenerativeAssistantOnboardingManager *)self->_montaraOnboardingManager presentOnboardingFlowForCommand:v7];
}

- (void)willPresentOnboardingFlow
{
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView clearResultViewAndBackground];
  v3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v3 siriSAEViewControllerRequestStopAttending:self];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController willPresentOnboardingFlow]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while presenting Montara onboarding flow", &v6, 0xCu);
  }

  v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v5 saeViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)completedOnboardingFlowWithEnablementResult:(int64_t)a3
{
  [(SRSystemAssistantExperienceViewController *)self performSelector:"_resumeTouchDismissalPostMontaraOnboardingCompletion" withObject:0 afterDelay:1.0];
  v5 = [(SRSystemAssistantExperienceViewController *)self storedGenerativeAssistantOnboardingCompletion];

  if (v5)
  {
    if (a3 == 2)
    {
      v9 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Siri/ExternalAIModel?view=signIn"];
      [(SRSystemAssistantExperienceViewController *)self siriViewControllerShouldOpenUrl:v9];
    }

    else if (a3 == 3)
    {
      v13 = objc_alloc_init(SACommandSucceeded);
      v6 = [(SRSystemAssistantExperienceViewController *)self generativeAssistantOnboardingCommandAceID];
      [v13 setRefId:v6];

      v7 = [(SRSystemAssistantExperienceViewController *)self storedGenerativeAssistantOnboardingCompletion];
      (v7)[2](v7, v13);

LABEL_10:

      return;
    }

    v13 = objc_alloc_init(SACommandFailed);
    v10 = [(SRSystemAssistantExperienceViewController *)self generativeAssistantOnboardingCommandAceID];
    [v13 setRefId:v10];

    v11 = [(SRSystemAssistantExperienceViewController *)self storedGenerativeAssistantOnboardingCompletion];
    (v11)[2](v11, v13);

    v12 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v12 endSiriSessionForViewController:self withDismissalReason:10];

    goto LABEL_10;
  }

  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CAE78(v8);
  }
}

- (void)_resumeTouchDismissalPostMontaraOnboardingCompletion
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSystemAssistantExperienceViewController _resumeTouchDismissalPostMontaraOnboardingCompletion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #dismissal - Montara onboarding flow complete, no longer preventing touches from dismissing Siri", &v5, 0xCu);
  }

  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v4 saeViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)didSetInputType:(int64_t)a3
{
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView setInputType:a3];

  [(SRSystemAssistantExperienceViewController *)self _updateHomeAffordanceVisibility];
}

- (void)didSetServerUtterance:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self _resultEligibleForIntelligentLightEffects];
  v6 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [v6 setResultEligibleForLightEffects:v5];

  if ([v4 count])
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002B63C;
    v9[3] = &unk_100166FE8;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v7 = objc_retainBlock(v9);
    serverUtteranceUpdateBlock = self->serverUtteranceUpdateBlock;
    self->serverUtteranceUpdateBlock = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)didSetTranscriptItems
{
  v16 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(SiriSharedUISAEViewState *)self->_viewState activeConversationTranscriptItems];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 viewController];
        if (v8)
        {
          [v16 addObject:v8];
          v9 = [v8 parentViewController];

          if (!v9)
          {
            [(SRSystemAssistantExperienceRootViewController *)self->_rootViewController addChildViewController:v8];
            [v8 didMoveToParentViewController:self->_rootViewController];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v8;
            v11 = [v7 isHintItem];
            v12 = v11;
            if (v11)
            {
              [v10 setIsHint:1];
            }

            [v10 setDelegate:self];
          }

          else
          {
            v12 = 0;
          }

          if (objc_opt_respondsToSelector())
          {
            [v8 setIsInAmbient:self->_isInAmbient];
          }

          if ((v12 & self->_isInAmbient) == 1)
          {
            v13 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v25 = "[SRSystemAssistantExperienceViewController didSetTranscriptItems]";
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #ambient removed hint view in ambient mode from conversationSnippets", buf, 0xCu);
            }
          }

          if (!v9)
          {
            [v8 didMoveToParentViewController:self->_rootViewController];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  objc_initWeak(buf, self);
  v14 = [(SiriSharedUISAEViewState *)self->_viewState activeConversationTranscriptItems];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002BA20;
  v17[3] = &unk_100166FE8;
  objc_copyWeak(&v19, buf);
  v15 = v16;
  v18 = v15;
  [(SRSystemAssistantExperienceViewController *)self _setSmartDialogConversationActiveTranscriptItems:v14 withCompletionBlock:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)smartDialogContentDidChange
{
  v2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v2 contentDidUpdate];
}

- (void)didPresentContentWithAceObject:(id)a3
{
  v6 = a3;
  v4 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [v4 didPresentContentForSAEViewController:self];

  if (v6)
  {
    v5 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [v5 saeViewController:self viewDidAppearForAceObject:v6];
  }
}

- (void)setSmartDialogCardBlock:(id)a3
{
  self->smartDialogCardBlock = objc_retainBlock(a3);

  _objc_release_x1();
}

- (void)willPresentResult
{
  [(SRSystemAssistantExperienceViewController *)self _popToRootViewControllerIfNeeded];
  [(SRSystemAssistantExperienceViewController *)self endTypeToSiriLatencyStateIfNeeded];

  [(SRSystemAssistantExperienceViewController *)self resignKeyboardIfNeeded];
}

- (id)filterTranscriptItemsForSAEDialogBoxContent:(id)a3
{
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
  if (!v3)
  {
    goto LABEL_48;
  }

  v5 = v3;
  v6 = *v86;
  v7 = &swift_allocError_ptr;
  *&v4 = 136315394;
  v68 = v4;
  v70 = *v86;
  do
  {
    v8 = 0;
    v71 = v5;
    do
    {
      if (*v86 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v85 + 1) + 8 * v8);
      v10 = [v9 aceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_46;
      }

      v77 = v8;
      v73 = v9;
      v12 = [v9 aceObject];
      v13 = [v12 siriui_card_compact];
      v14 = [v13 backingCard];
      v15 = [v14 cardSections];
      v16 = v6;
      if (v15)
      {
        [v12 siriui_card_compact];
      }

      else
      {
        [v12 siriui_card];
      }
      v17 = ;
      v18 = [v17 backingCard];

      v19 = objc_alloc(v7[369]);
      v76 = v12;
      v20 = v12;
      v21 = v18;
      v22 = [v20 cardData];
      v23 = [v19 initWithData:v22];

      v24 = [v23 cardSections];
      v25 = [v24 count];
      v26 = [v18 cardSections];
      v27 = [v26 count];

      v79 = v18;
      if (v25 == v27)
      {
        v28 = [v18 cardSections];
        v29 = [v28 count];

        if (v29)
        {
          v30 = 0;
          do
          {
            v31 = [v23 cardSectionsAtIndex:v30];
            v32 = [v21 cardSections];
            v33 = [v32 objectAtIndex:v30];

            v34 = [NSMutableDictionary alloc];
            v35 = [v31 racFeedbackLoggingContent];
            v36 = [v34 initWithDictionary:v35];

            [v33 setRacFeedbackLoggingContent:v36];
            v37 = [v18 cardSections];
            v38 = [v37 mutableCopy];

            v21 = v18;
            [v38 replaceObjectAtIndex:v30 withObject:v33];
            [v18 setCardSections:v38];

            ++v30;
            v39 = [v18 cardSections];
            v40 = [v39 count];
          }

          while (v40 > v30);
        }
      }

      v75 = v23;
      v78 = [v21 copy];
      v80 = objc_alloc_init(NSMutableArray);
      v41 = objc_alloc_init(NSMutableArray);
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v42 = [v21 cardSections];
      v43 = [v42 countByEnumeratingWithState:&v81 objects:v93 count:16];
      v74 = v43 != 0;
      if (v43)
      {
        v44 = v43;
        v45 = 0;
        v46 = *v82;
        do
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v82 != v46)
            {
              objc_enumerationMutation(v42);
            }

            v48 = *(*(&v81 + 1) + 8 * i);
            v49 = [v48 shouldShowInSmartDialog];
            objc_opt_class();
            v50 = objc_opt_isKindOfClass();
            if (v49)
            {
              if (v50)
              {
                v51 = [v48 cardSections];
                [v41 addObjectsFromArray:v51];
              }

              else
              {
                [v41 addObject:v48];
              }

              v45 = 1;
            }

            else if (v50)
            {
              v52 = v48;
              v53 = [v52 cardSections];
              v54 = [v53 count];

              if (v54)
              {
                v55 = [v52 cardSections];
                v56 = [v55 objectAtIndexedSubscript:0];

                if ([v56 shouldShowInSmartDialog])
                {
                  v57 = [v52 cardSections];
                  [v41 addObjectsFromArray:v57];

                  v45 = 1;
                }
              }
            }

            else
            {
              [v80 addObject:v48];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v81 objects:v93 count:16];
        }

        while (v44);

        v7 = &swift_allocError_ptr;
        if ((v45 & 1) == 0)
        {
          v64 = 0;
          v6 = v70;
          v5 = v71;
          v65 = v75;
          v59 = v76;
          v66 = v79;
          goto LABEL_45;
        }

        v58 = AFSiriLogContextConnection;
        v59 = v76;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v68;
          v90 = "[SRSystemAssistantExperienceViewController filterTranscriptItemsForSAEDialogBoxContent:]";
          v91 = 2112;
          v92 = v80;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s #dialogbox found card content for dialog box: %@", buf, 0x16u);
        }

        [v79 setCardSections:v80];
        v42 = [v76 copy];
        v60 = [[_SFPBCard alloc] initWithFacade:v79];
        v61 = [v60 data];
        [v42 setCardData:v61];

        v62 = [v73 viewController];
        objc_opt_class();
        LOBYTE(v61) = objc_opt_isKindOfClass();

        v5 = v71;
        if (v61)
        {
          v63 = [v73 viewController];
          if ([v80 count])
          {
            [v63 setSnippet:v42];
          }

          else
          {
            [v73 setViewController:0];
          }
        }

        [v78 setCardSections:v41];
        v69 = v78;
        v6 = v70;
      }

      else
      {
        v5 = v71;
        v59 = v76;
        v7 = &swift_allocError_ptr;
        v6 = v16;
      }

      v66 = v79;
      v65 = v75;
      v64 = v74;
LABEL_45:

      v8 = v77;
      if (v64)
      {
        goto LABEL_49;
      }

LABEL_46:
      v8 = v8 + 1;
    }

    while (v8 != v5);
    v5 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
  }

  while (v5);
LABEL_48:
  v69 = 0;
LABEL_49:

  return v69;
}

- (void)setSmartDialogPluginBlock:(id)a3
{
  self->smartDialogPluginBlock = objc_retainBlock(a3);

  _objc_release_x1();
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  v3 = [v2 alwaysShowRecognizedSpeech];

  return v3;
}

- (SRSystemAssistantExperienceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)activeSmartDialogSize
{
  width = self->_activeSmartDialogSize.width;
  height = self->_activeSmartDialogSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)latestDropletContentLayoutSize
{
  width = self->_latestDropletContentLayoutSize.width;
  height = self->_latestDropletContentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_bottomContentInsetComponents
{
  external = self->_bottomContentInsetComponents.external;
  keyboard = self->_bottomContentInsetComponents.keyboard;
  result.var1 = keyboard;
  result.var0 = external;
  return result;
}

@end