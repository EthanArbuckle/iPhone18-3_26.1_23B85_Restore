@interface SRSystemAssistantExperienceViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_bottomContentInsetComponents;
- (BOOL)_allowEmptyTranscriptItemUpdatesForCurrentTranscriptItems:(id)items;
- (BOOL)_alwaysObscureBackgroundContentWhenActive;
- (BOOL)_contentDiffersBetweenPlatterItems:(id)items andItems:(id)andItems;
- (BOOL)_isTextInputAndKeyboardShowing;
- (BOOL)_keyboardHasContentAtPoint:(CGPoint)point;
- (BOOL)_resultEligibleForIntelligentLightEffects;
- (BOOL)_shouldRenderResult;
- (BOOL)_smartDialogActiveTranscriptItemContainsViewController:(id)controller;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)didReceiveUpdateVisualResponseCommand:(id)command;
- (BOOL)isDisplayingResponse;
- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)interaction;
- (CGRect)_convertRectFromKeyboard:(CGRect)keyboard;
- (CGRect)_keyboardFrame;
- (CGSize)activeSmartDialogSize;
- (CGSize)latestDropletContentLayoutSize;
- (CGSize)maxSizeForSnippet;
- (CGSize)siriViewControllerVisibleContentArea:(id)area;
- (SRSystemAssistantExperienceViewController)init;
- (SRSystemAssistantExperienceViewControllerDelegate)delegate;
- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)insets;
- (double)boundingWidthForSnippetViewController:(id)controller;
- (double)dropletContentMaximumContainerHeight;
- (double)dropletContentMaximumContainerWidth;
- (double)siriViewControllerExpectedWidth:(id)width;
- (id)_contentPlatterViewFromViewController:(id)controller;
- (id)_createBackgroundView:(id)view;
- (id)_findSnippetViewControllerWithViewIdFromTranscriptItems:(id)items viewId:(id)id;
- (id)_snippetFromTranscriptItems;
- (id)createNewSmartDialog;
- (id)createSuggestionsViewProvider;
- (id)filterTranscriptItemsForSAEDialogBoxContent:(id)content;
- (id)localeForSiriViewController:(id)controller;
- (id)prepareForReportConcernAndCreateForm:(id)form additionalDomainProvidedFeedback:(id)feedback;
- (id)siriViewController:(id)controller disambiguationItemForListItem:(id)item disambiguationKey:(id)key;
- (id)siriViewController:(id)controller filteredDisambiguationListItems:(id)items;
- (id)siriViewController:(id)controller listItemToPickInAutodisambiguationForListItems:(id)items;
- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)location;
- (int)viewRegionForPresentedAceObject:(id)object;
- (int64_t)_mapSASRequestSourceToSuggestionsInputOrigin:(int64_t)origin;
- (int64_t)_mapSuggestionRequestTypeToSASSuggestionRequestType:(int64_t)type;
- (unint64_t)presentedResponseElements;
- (void)_addFeedbackButton;
- (void)_addSuggestionsToContainer;
- (void)_cancelFirstVisualIntelligenceRequestIfNeeded;
- (void)_didEndEditing;
- (void)_didPressReportConcernButton:(id)button additionalDomainProvidedFeedback:(id)feedback;
- (void)_executePendingBlocksForTransition;
- (void)_fadeOutContinuerSuggestionsIfAny;
- (void)_keyboardWillHideForAmbient:(id)ambient;
- (void)_keyboardWillShowForAmbient:(id)ambient;
- (void)_performResultAnimation:(BOOL)animation;
- (void)_popToRootViewControllerIfNeeded;
- (void)_prepContainerForFirstSnippetPresentation;
- (void)_presentContinuerSuggestions;
- (void)_presentSystemPromptEntryViewWithUtterance:(id)utterance alternatives:(id)alternatives;
- (void)_pushQueuedNavigationContentViewController;
- (void)_recursivelyNotifyVisibleViewControllers:(id)controllers withBlock:(id)block;
- (void)_registerForAmbientPresentationTraitChange;
- (void)_renderResult;
- (void)_reportConcernWithCardSection:(id)section additionalDomainProvidedFeedback:(id)feedback;
- (void)_requestKeyboardWithCompletion:(id)completion;
- (void)_resumeTouchDismissalPostMontaraOnboardingCompletion;
- (void)_setBottomContentInsetComponents:(id)components animatedWithDuration:(double)duration animationOptions:(unint64_t)options;
- (void)_setInputType:(int64_t)type;
- (void)_setKeyboardState:(id)state;
- (void)_setSmartDialogConversationActiveTranscriptItems:(id)items withCompletionBlock:(id)block;
- (void)_setStatusViewHidden:(BOOL)hidden;
- (void)_setUpConversationContinuerSuggestions:(int64_t)suggestions forRequestId:(id)id currentMode:(id)mode;
- (void)_setUpConversationStarterSuggestions:(int64_t)suggestions isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source;
- (void)_setupFeedbackButton;
- (void)_setupTextFieldForQuickTypeVisualIntelligence;
- (void)_siriRequestCommittedFromSuggestion:(id)suggestion encodedToolInvocationData:(id)data suggestionRequestType:(int64_t)type;
- (void)_siriRequestCommittedFromSuggestion:(id)suggestion suggestionRequestType:(int64_t)type;
- (void)_siriRequestCommittedFromSuggestionToolInvocation:(id)invocation;
- (void)_smartDialogSnippetLayoutDidUpdateForViewController:(id)controller;
- (void)_teardownTypeToSiriForVisualIntelligenceCameraWithUpdate;
- (void)_teardownTypeToSiriUI;
- (void)_updateAmbientAvailability;
- (void)_updateBottomContentInsetKeyboardComponent;
- (void)_updateHomeAffordanceVisibility;
- (void)_updateIsInAmbientWithInteractivity:(BOOL)interactivity;
- (void)_updateKeyboardStateFromNotification:(id)notification;
- (void)_updateSAEViewSize;
- (void)_updateStatusViewVisibility;
- (void)_willBeginEditingOfType:(int64_t)type;
- (void)animatedDisappearanceDidBeginWithDuration:(double)duration reason:(int64_t)reason;
- (void)cancelSpeakingForSiriViewController:(id)controller;
- (void)completedOnboardingFlowWithEnablementResult:(int64_t)result;
- (void)configureSmartDialog:(id)dialog;
- (void)containerView:(id)view requestsDismissalWithReason:(int64_t)reason;
- (void)didChangeText:(id)text;
- (void)didPresentContentWithAceObject:(id)object;
- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)suggestions;
- (void)didSetInputType:(int64_t)type;
- (void)didSetServerUtterance:(id)utterance;
- (void)didSetTranscriptItems;
- (void)dismissSiriResults;
- (void)dropletContentWillUpdateLayout:(id)layout withUpdatedContentSize:(CGSize)size animated:(BOOL)animated;
- (void)endTypeToSiriLatencyStateIfNeeded;
- (void)entryViewDidSubmit:(id)submit suggestionText:(id)text suggestionRequestType:(int64_t)type;
- (void)entryViewDidSubmit:(id)submit text:(id)text;
- (void)entryViewDidSubmit:(id)submit visualIntelligenceText:(id)text;
- (void)handleVoiceActivationRequestWithRequestOptions:(id)options;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)keyboardIsReadyToReceiveInput;
- (void)keyboardShouldDuckForLongSnippet:(CGPoint)snippet;
- (void)loadContinuerSuggestionsForRequest:(id)request currentMode:(id)mode;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)performPillCollapseAnimation;
- (void)performPillMergeAndCrossfadeAnimation;
- (void)performSinglePillExpandAnimation;
- (void)presentGenerativeAssistantOnboardingFlowWithCommand:(id)command completion:(id)completion;
- (void)presentLatencyPillAnimation;
- (void)presentResultAnimation:(BOOL)animation;
- (void)processSuggestionViewWrappers:(id)wrappers;
- (void)promptEntryDidDismissEditMenu:(id)menu;
- (void)promptEntryViewDidBeginEditing:(id)editing;
- (void)promptEntryViewDidEndEditing:(id)editing;
- (void)promptEntryViewDidLayoutSubviews:(id)subviews;
- (void)promptEntryViewWillPresentEditMenu:(id)menu;
- (void)removeResponseElementsIfNeeded:(unint64_t)needed;
- (void)reportConcernButtonTappedForSuggestion:(id)suggestion;
- (void)resignKeyboardIfNeeded;
- (void)setActiveRequestOptions:(id)options;
- (void)setBottomContentInset:(double)inset;
- (void)setDelegate:(id)delegate;
- (void)setDockFrame:(CGRect)frame;
- (void)setDropletContainerUserUtteranceViewHeight:(double)height;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setRevealRecognizedSpeech:(BOOL)speech;
- (void)setSmartDialogCardBlock:(id)block;
- (void)setSmartDialogPluginBlock:(id)block;
- (void)setTopContentInset:(double)inset animated:(BOOL)animated;
- (void)setUpConversationStarterSuggestionsWith:(int64_t)with;
- (void)setupTextFieldForTamale;
- (void)setupTextFieldForTextInput;
- (void)shouldBeginEditing;
- (void)siriDidActivate;
- (void)siriDidDeactivate;
- (void)siriDidStartSpeakingWithIdentifier:(id)identifier;
- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty;
- (void)siriDidTapOutsideContent;
- (void)siriDidUpdateASRWithRecognition:(id)recognition;
- (void)siriIsIdleAndQuiet;
- (void)siriSnippetViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier;
- (void)siriSnippetViewController:(id)controller informHostOfBackgroundView:(id)view isSnippetAsyncColored:(BOOL)colored;
- (void)siriSnippetViewController:(id)controller isBackgroundColorUpdateSuccessful:(BOOL)successful;
- (void)siriSnippetViewController:(id)controller performAceCommands:(id)commands sashItem:(id)item;
- (void)siriSnippetViewController:(id)controller pushSirilandSnippets:(id)snippets;
- (void)siriSnippetViewController:(id)controller willDismissViewController:(id)viewController;
- (void)siriSnippetViewController:(id)controller willPresentViewController:(id)viewController;
- (void)siriSnippetViewControllerViewDidLoad:(id)load;
- (void)siriViewController:(id)controller openURL:(id)l completion:(id)completion;
- (void)siriViewController:(id)controller openURL:(id)l launchOptions:(id)options completion:(id)completion;
- (void)siriViewController:(id)controller performAceCommands:(id)commands completion:(id)completion;
- (void)siriViewController:(id)controller speakText:(id)text completion:(id)completion;
- (void)siriViewControllerDidEndEditing;
- (void)siriViewControllerHeightDidChange;
- (void)siriViewControllerHeightDidChange:(id)change;
- (void)siriViewControllerHeightDidChange:(id)change pinTopOfSnippet:(BOOL)snippet;
- (void)siriViewControllerRequestDeviceUnlockWithCompletion:(id)completion;
- (void)siriViewControllerShouldOpenUrl:(id)url;
- (void)siriViewControllerShouldRequestTextInputWithUtterance:(id)utterance alternatives:(id)alternatives;
- (void)siriViewControllerViewDidAppear:(id)appear isTopLevelViewController:(BOOL)controller;
- (void)siriViewControllerViewDidDisappear:(id)disappear isTopLevelViewController:(BOOL)controller;
- (void)siriViewControllerWillBeginEditing;
- (void)siriWillStartRequest;
- (void)smartDialogContentDidChange;
- (void)switchPresentationToTextInput;
- (void)switchPresentationToVisualIntelligenceCameraInput;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSpeechRecognitionHypothesisForSuggestion:(id)suggestion;
- (void)updateTopInset:(double)inset animated:(BOOL)animated;
- (void)userDrilledIntoSnippet;
- (void)userTouchedSnippet;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPresentOnboardingFlow;
- (void)willPresentResult;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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
      layer = [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView layer];
      v11 = +[UIScreen mainScreen];
      traitCollection = [v11 traitCollection];
      [traitCollection displayCornerRadius];
      [layer setCornerRadius:v13 / 1.2];

      layer2 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView layer];
      [layer2 setMaskedCorners:12];

      layer3 = [(SiriSharedUISystemAssistantExperienceContainerView *)v3->_textFieldContainerView layer];
      [layer3 setMasksToBounds:1];
    }

    v16 = objc_alloc_init(SiriSharedUICompactResultViewController);
    resultViewController = v3->_resultViewController;
    v3->_resultViewController = v16;

    v18 = [[SiriUINavigationController alloc] initWithRootViewController:v3->_rootViewController];
    navigationController = v3->_navigationController;
    v3->_navigationController = v18;

    [(SiriUINavigationController *)v3->_navigationController setDelegate:v3];
    view = [(SiriUINavigationController *)v3->_navigationController view];
    [view recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    navigationBar = [(SiriUINavigationController *)v3->_navigationController navigationBar];
    [navigationBar recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v22 = [SiriSharedUICompactHostingInstrumentationSupplement alloc];
    _instrumentationManager = [(SRSystemAssistantExperienceViewController *)v3 _instrumentationManager];
    v24 = [v22 initWithInstrumentationManager:_instrumentationManager];
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
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  updateUserUtteranceVisibilityIfNeeded = [activeSmartDialogView updateUserUtteranceVisibilityIfNeeded];

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
  activeSmartDialogView2 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [activeSmartDialogView2 reloadView];

  if (updateUserUtteranceVisibilityIfNeeded)
  {
    v17 = objc_alloc_init(SISchemaUEITranscriptShown);
    [v17 setHasTranscriptShownReason:1];
    [v17 setTranscriptShownReason:updateUserUtteranceVisibilityIfNeeded];
    _instrumentationManager = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
    [_instrumentationManager emitInstrumentation:v17];

    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"TRANSCRIPTSHOWNREASON_UNKNOWN";
      if (updateUserUtteranceVisibilityIfNeeded == 1)
      {
        v20 = @"TRANSCRIPTSHOWNREASON_ALWAYS_SHOW";
      }

      if (updateUserUtteranceVisibilityIfNeeded == 2)
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
  activeSmartDialogView3 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [activeSmartDialogView3 updateContentSizeIfNecessary];
}

- (void)updateTopInset:(double)inset animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_topInset = inset;
  if ([UIApp activeInterfaceOrientation] - 1 <= 1)
  {
    view = [(SRSystemAssistantExperienceViewController *)self view];
    window = [view window];

    [window safeAreaInsets];
    v10 = v9 < inset;
    v11 = inset - v9 + 10.0;
    if (!v10)
    {
      v11 = 0.0;
    }

    if (!window)
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
    if (!animatedCopy)
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

  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  view = [_navigationController view];
  [(SRSystemAssistantExperienceViewController *)self addChildViewController:_navigationController];
  v6 = objc_alloc_init(AFUITouchPassThroughView);
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setOpaque:0];
  [v6 setAutoresizingMask:18];
  [v6 bounds];
  [view setFrame:?];
  [view setAutoresizingMask:18];
  [v6 addSubview:view];
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setAutoresizingMask:18];
  layer = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView layer];
  [layer setHitTestsAsOpaque:0];

  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setOpaque:0];
  [v6 addSubview:self->_textFieldContainerView];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  activeRequestOptions = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  if ([activeRequestOptions requestSource] != 48)
  {

    goto LABEL_8;
  }

  v10 = +[SASSystemState sharedSystemState];
  isInActiveCall = [v10 isInActiveCall];

  if ((isInActiveCall & 1) == 0)
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

  promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView setDelegate:self];

  [_navigationController didMoveToParentViewController:self];
  v16 = [[SiriSharedUIFeedbackController alloc] initWithNibName:0 bundle:0];
  feedbackController = self->_feedbackController;
  self->_feedbackController = v16;

  view2 = [(SiriSharedUIFeedbackController *)self->_feedbackController view];
  layer2 = [view2 layer];
  [layer2 setAllowsHitTesting:0];

  [(SRSystemAssistantExperienceViewController *)self setView:v6];
}

- (void)_didPressReportConcernButton:(id)button additionalDomainProvidedFeedback:(id)feedback
{
  buttonCopy = button;
  feedbackCopy = feedback;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  v9 = [delegate lockStateForSAEViewController:self];

  if ((v9 & 2) != 0)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001D63C;
    v11[3] = &unk_100166EF8;
    objc_copyWeak(&v14, &location);
    v12 = buttonCopy;
    v13 = feedbackCopy;
    [WeakRetained requestToHandlePasscodeUnlockWithClient:2 withCompletion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SRSystemAssistantExperienceViewController *)self _reportConcernWithCardSection:buttonCopy additionalDomainProvidedFeedback:feedbackCopy];
  }
}

- (void)_reportConcernWithCardSection:(id)section additionalDomainProvidedFeedback:(id)feedback
{
  sectionCopy = section;
  feedbackCopy = feedback;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  feedbackFormForCurrentRequest = [delegate feedbackFormForCurrentRequest];

  v10 = [(SRSystemAssistantExperienceViewController *)self prepareForReportConcernAndCreateForm:feedbackFormForCurrentRequest additionalDomainProvidedFeedback:feedbackCopy];

  if (sectionCopy)
  {
    racFeedbackSubfeatureId = [sectionCopy racFeedbackSubfeatureId];
    [v10 setSubFeature:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [sectionCopy racFeedbackLoggingContent];
    v13 = [NSString stringWithFormat:@"%@", racFeedbackLoggingContent];

    [v10 setDiagnosticContent:v13];
  }

  delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceDirectInvocation = [delegate2 isPresentingVisualIntelligenceDirectInvocation];

  if (isPresentingVisualIntelligenceDirectInvocation)
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
    userInput = [v10 userInput];
    siriDialog = [v10 siriDialog];
    *buf = 136315650;
    v22 = "[SRSystemAssistantExperienceViewController _reportConcernWithCardSection:additionalDomainProvidedFeedback:]";
    v23 = 2112;
    v24 = userInput;
    v25 = 2112;
    v26 = siriDialog;
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

- (void)configureSmartDialog:(id)dialog
{
  dialogCopy = dialog;
  [dialogCopy setInteractionDelegate:self];
  [dialogCopy setDropletContainerDelegate:self];
  layer = [dialogCopy layer];
  [layer setAllowsGroupOpacity:0];

  [dialogCopy setClipsToBounds:1];
  [dialogCopy setPopoverViewController:self];

  self->_resultPresentedInActiveSmartDialog = 0;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v8 viewDidLoad];
  view = [(SRSystemAssistantExperienceViewController *)self view];
  [view recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

  v4 = [SiriUIMultiNavigationTransitionController alloc];
  v5 = objc_alloc_init(SRSystemAssistantExperienceNavigationTransitionController);
  v6 = [v4 initWithPrimaryTransitionController:v5];

  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  [_navigationController setTransitionController:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v14 viewWillAppear:appear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v7 viewDidAppear:appear];
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  self->_presentationTime = v5;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidPresentUserInterface:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v5 viewWillDisappear:disappear];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewControllerViewWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v31.receiver = self;
  v31.super_class = SRSystemAssistantExperienceViewController;
  [(SRSystemAssistantExperienceViewController *)&v31 viewDidDisappear:disappear];
  userUtterance = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
  speech = [userUtterance speech];

  if (speech)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    userUtterance2 = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
    speech2 = [userUtterance2 speech];
    backingAceObject = [speech2 backingAceObject];
    [WeakRetained saeViewController:self viewDidDisappearForAceObject:backingAceObject];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  serverUtterances = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
  v11 = [serverUtterances countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(serverUtterances);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 saeViewController:self viewDidDisappearForAceObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [serverUtterances countByEnumeratingWithState:&v27 objects:v33 count:16];
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
  view = [(SRSystemAssistantExperienceViewController *)self view];
  window = [view window];

  if (SiriSharedUIDeviceIsPad())
  {
    v4 = window;
  }

  else
  {
    IsMac = SiriSharedUIDeviceIsMac();
    v4 = window;
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
    windowScene = [window windowScene];
    [windowScene interfaceOrientation];
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
      view2 = [(SRSystemAssistantExperienceViewController *)self view];
      [view2 setFrame:{v23, 0.0, v21, Height}];

      view3 = [(SRSystemAssistantExperienceViewController *)self view];
      [view3 safeAreaInsets];
      v27 = v26 + 16.0;

      view4 = [(SRSystemAssistantExperienceViewController *)self view];
      [view4 safeAreaInsets];
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
      _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      view5 = [_navigationController view];
      [view5 setFrame:{0.0, v27, Width, v32}];
    }

    else
    {
      v35 = v16 + v18 + SiriSharedUICompactLeftPaddingForShadowOutsetsiPad;
      IsRTL = SiriLanguageIsRTL();
      _navigationController = [(SRSystemAssistantExperienceViewController *)self view];
      v37 = v7;
      v38 = v9;
      v39 = v11;
      v40 = v13;
      if (IsRTL)
      {
        v41 = CGRectGetHeight(*&v37);
        v42 = 0.0;
        v43 = _navigationController;
      }

      else
      {
        v44 = CGRectGetWidth(*&v37) - v35;
        v51.origin.x = v7;
        v51.origin.y = v9;
        v51.size.width = v11;
        v51.size.height = v13;
        v41 = CGRectGetHeight(v51);
        v43 = _navigationController;
        v42 = v44;
      }

      [v43 setFrame:{v42, 0.0, v35, v41}];
    }
  }

LABEL_14:

  _objc_release_x1();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v13.receiver = self;
  v13.super_class = SRSystemAssistantExperienceViewController;
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  [(SRSystemAssistantExperienceViewController *)&v13 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E4CC;
  v12[3] = &unk_100166F20;
  v12[4] = self;
  [coordinatorCopy animateAlongsideTransition:v12 completion:0];

  verticalSizeClass = [collectionCopy verticalSizeClass];
  if (verticalSizeClass == 1)
  {
    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    isDisplayingResponse = [containerView isDisplayingResponse];

    if (isDisplayingResponse)
    {
      promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      [promptEntryView resignKeyboard];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SRSystemAssistantExperienceViewController;
  coordinatorCopy = coordinator;
  [(SRSystemAssistantExperienceViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection = [(SRSystemAssistantExperienceViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      userInterfaceStyle3 = [changeCopy userInterfaceStyle];
      traitCollection2 = [(SRSystemAssistantExperienceViewController *)self traitCollection];
      v14 = 136315650;
      v15 = "[SRSystemAssistantExperienceViewController traitCollectionDidChange:]";
      v16 = 2048;
      v17 = userInterfaceStyle3;
      v18 = 2048;
      userInterfaceStyle4 = [traitCollection2 userInterfaceStyle];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #smartDialog: previous userInteractionStyle:%ld, current userInteractionStyle:%ld", &v14, 0x20u);
    }

    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    traitCollection3 = [(SRSystemAssistantExperienceViewController *)self traitCollection];
    [activeSmartDialogView setUserInterfaceStyle:{objc_msgSend(traitCollection3, "userInterfaceStyle")}];
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
    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView setBottomFloatingButton:self->_feedbackButton];
  }
}

- (id)_snippetFromTranscriptItems
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeConversationTranscriptItems = [(SiriSharedUISAEViewState *)self->_viewState activeConversationTranscriptItems];
  v3 = [activeConversationTranscriptItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(activeConversationTranscriptItems);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        viewController = [v7 viewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

LABEL_13:
          viewController2 = [v7 viewController];
          view = [viewController2 view];

          goto LABEL_14;
        }

        viewController3 = [v7 viewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_13;
        }
      }

      v4 = [activeConversationTranscriptItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      view = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    view = 0;
  }

LABEL_14:

  return view;
}

- (id)_createBackgroundView:(id)view
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
    view = [(SRSystemAssistantExperienceViewController *)self view];
    traitCollection = [view traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v10 = ;
    [v6 setBackgroundColor:v10];

    layer = [v6 layer];
    v12 = layer;
    v13 = &kCAFilterPlusL;
    if (userInterfaceStyle != 1)
    {
      v13 = &kCAFilterPlusD;
    }

    [layer setCompositingFilter:*v13];

    layer2 = [v6 layer];
    LODWORD(v15) = 1053609165;
    [layer2 setOpacity:v15];

    contentView = [v4 contentView];
    [contentView addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [v6 leadingAnchor];
    contentView2 = [v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v20 setActive:1];

    bottomAnchor = [v6 bottomAnchor];
    contentView3 = [v4 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v24 setActive:1];

    trailingAnchor = [v6 trailingAnchor];
    contentView4 = [v4 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v28 setActive:1];

    topAnchor = [v6 topAnchor];
    contentView5 = [v4 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v32 setActive:1];
  }

  return v4;
}

- (void)setRevealRecognizedSpeech:(BOOL)speech
{
  speechCopy = speech;
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [activeSmartDialogView setRevealRecognizedSpeech:speechCopy];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(SRSystemAssistantExperienceViewController *)self _updateStatusViewVisibility];
}

- (void)updateSpeechRecognitionHypothesisForSuggestion:(id)suggestion
{
  viewState = self->_viewState;
  suggestionCopy = suggestion;
  activeSmartDialogView = [(SiriSharedUISAEViewState *)viewState activeSmartDialogView];
  [activeSmartDialogView setSpeechRecognitionHypothesisForSuggestion:suggestionCopy];
}

- (void)_setSmartDialogConversationActiveTranscriptItems:(id)items withCompletionBlock:(id)block
{
  itemsCopy = items;
  blockCopy = block;
  if ([itemsCopy count])
  {
    _snippetFromTranscriptItems = [(SRSystemAssistantExperienceViewController *)self _snippetFromTranscriptItems];
    if (_snippetFromTranscriptItems)
    {
      v9 = [(SRSystemAssistantExperienceViewController *)self _createBackgroundView:_snippetFromTranscriptItems];
      activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      [activeSmartDialogView setSnippetBackgroundView:v9];
    }
  }

  viewState = [(SRSystemAssistantExperienceViewController *)self viewState];
  activeSmartDialogView2 = [viewState activeSmartDialogView];
  activeTranscriptItems = [activeSmartDialogView2 activeTranscriptItems];

  if ([activeTranscriptItems count] && !objc_msgSend(itemsCopy, "count"))
  {
    v14 = [(SRSystemAssistantExperienceViewController *)self _allowEmptyTranscriptItemUpdatesForCurrentTranscriptItems:activeTranscriptItems];
  }

  else
  {
    v14 = 0;
  }

  if ([itemsCopy count] || v14)
  {
    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001F070;
    v17[3] = &unk_100166F48;
    objc_copyWeak(&v20, &location);
    v18 = itemsCopy;
    v19 = blockCopy;
    v15 = objc_retainBlock(v17);
    snippetUpdateBlock = self->snippetUpdateBlock;
    self->snippetUpdateBlock = v15;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_allowEmptyTranscriptItemUpdatesForCurrentTranscriptItems:(id)items
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        aceObject = [v8 aceObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          aceObject2 = [v8 aceObject];
          bundleName = [aceObject2 bundleName];
          v13 = [bundleName isEqualToString:@"SiriMailUIPlugin"];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  inputType = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  traitCollection = [(SRSystemAssistantExperienceViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (inputType == 1 && verticalSizeClass == 1)
  {
    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView resignKeyboard];
  }
}

- (void)presentResultAnimation:(BOOL)animation
{
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  superview = [activeSmartDialogView superview];
  if (superview)
  {
    v7 = superview;
    inputType = [(SiriSharedUISAEViewState *)self->_viewState inputType];

    if (inputType != 1)
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
  animationCopy = animation;
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

  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  conversationSnippetViews = [activeSmartDialogView conversationSnippetViews];
  if ([conversationSnippetViews count])
  {
    v5 = 1;
  }

  else
  {
    activeSmartDialogView2 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    activeTranscriptItems = [activeSmartDialogView2 activeTranscriptItems];
    v5 = [activeTranscriptItems count] != 0;
  }

  return v5;
}

- (void)_prepContainerForFirstSnippetPresentation
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView setIsFirstSnippet:1];

  containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  blurrableView = [containerView2 blurrableView];
  [blurrableView setAlpha:0.0];

  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7 * 0.5;
  containerView3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView3 frame];
  v11 = v10;
  containerView4 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView4 frame];
  v14 = v13;
  containerView5 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView5 setFrame:{0.0, v8, v11, v14}];

  containerView6 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView6 performAnimatedBlur:0 withDuration:0.6];
}

- (void)_performResultAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(SiriSharedUISAEViewState *)self->_viewState setSmartDialogAnimationInProgress:1];
  self->_resultPresentedInActiveSmartDialog = 1;
  if (animationCopy && (SiriSharedUIReducedMotionEnabled() & 1) == 0)
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

  _resultEligibleForIntelligentLightEffects = [(SRSystemAssistantExperienceViewController *)self _resultEligibleForIntelligentLightEffects];
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [containerView setResultWithResultView:activeSmartDialogView resultSize:_resultEligibleForIntelligentLightEffects eligibleForLightEffects:{self->_activeSmartDialogSize.width, self->_activeSmartDialogSize.height}];

  if (SiriSharedUIReducedMotionEnabled())
  {
    containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
    LODWORD(v15) = 1.0;
    [containerView2 reduceMotionCarouselWithDuration:animationCopy isFirstSnippet:v15];
  }

  if (animationCopy)
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
  v19 = animationCopy;
  dispatch_after(v17, &_dispatch_main_q, v18);
}

- (void)_presentContinuerSuggestions
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView removeContinuerSuggestions];

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

- (id)prepareForReportConcernAndCreateForm:(id)form additionalDomainProvidedFeedback:(id)feedback
{
  formCopy = form;
  feedbackCopy = feedback;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate cancelRequestForViewController:self];

  delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate2 siriSAEViewControllerRequestStopAttending:self];

  v10 = objc_alloc_init(SiriSharedUIFeedbackModel);
  domain = [formCopy domain];

  if (domain)
  {
    domain2 = [formCopy domain];
    v13 = [domain2 isEqualToString:SAUIFeedbackFormDomainDeviceExpertValue];

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      domain3 = [formCopy domain];
      v16 = [domain3 isEqualToString:SAUIFeedbackFormDomainSiriWithChatGPTValue];

      if (v16)
      {
        v14 = 3;
      }

      else
      {
        domain4 = [formCopy domain];
        v18 = [domain4 isEqualToString:SAUIFeedbackFormDomainSiriPQAValue];

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

  input = [formCopy input];

  if (input)
  {
    input2 = [formCopy input];
    [v10 setUserInput:input2];
  }

  else
  {
    input2 = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
    speech = [input2 speech];
    userUtterance = [speech userUtterance];
    bestTextInterpretation = [userUtterance bestTextInterpretation];
    [v10 setUserInput:bestTextInterpretation];
  }

  output = [formCopy output];

  if (output)
  {
    output2 = [formCopy output];
    [v10 setSiriDialog:output2];
  }

  else
  {
    v44 = v10;
    v45 = feedbackCopy;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    serverUtterances = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
    v27 = [serverUtterances countByEnumeratingWithState:&v46 objects:v50 count:16];
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
            objc_enumerationMutation(serverUtterances);
          }

          text = [*(*(&v46 + 1) + 8 * i) text];
          v33 = [(__CFString *)v30 stringByAppendingString:text];

          v30 = [v33 stringByAppendingString:@"\n"];
        }

        v28 = [serverUtterances countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = &stru_10016AE90;
    }

    v10 = v44;
    [v44 setSiriDialog:v30];

    feedbackCopy = v45;
  }

  subFeature = [formCopy subFeature];

  if (subFeature)
  {
    subFeature2 = [formCopy subFeature];
    [v10 setSubFeature:subFeature2];
  }

  view = [(SRSystemAssistantExperienceViewController *)self view];
  view2 = [(SRSystemAssistantExperienceViewController *)self view];
  [view2 bounds];
  v38 = [view _imageFromRect:?];

  v39 = UIImageJPEGRepresentation(v38, 1.0);
  [v10 setImageRepresentationOfSnippet:v39];

  visualIntelligenceCameraFeedImageData = [feedbackCopy visualIntelligenceCameraFeedImageData];
  [v10 setImageRepresentationOfRequestImage:visualIntelligenceCameraFeedImageData];

  [(SRSystemAssistantExperienceViewController *)self addChildViewController:self->_feedbackController];
  view3 = [(SRSystemAssistantExperienceViewController *)self view];
  view4 = [(SiriSharedUIFeedbackController *)self->_feedbackController view];
  [view3 insertSubview:view4 atIndex:0];

  [(SiriSharedUIFeedbackController *)self->_feedbackController didMoveToParentViewController:self];

  return v10;
}

- (void)reportConcernButtonTappedForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  feedbackFormForCurrentRequest = [delegate feedbackFormForCurrentRequest];

  [feedbackFormForCurrentRequest setSubFeature:@"related_questions_suggestions"];
  v7 = [(SRSystemAssistantExperienceViewController *)self prepareForReportConcernAndCreateForm:feedbackFormForCurrentRequest additionalDomainProvidedFeedback:0];
  domain = [feedbackFormForCurrentRequest domain];

  if (domain)
  {
    [v7 setFeedbackDomain:0];
  }

  [v7 setSiriSuggestionText:suggestionCopy];
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    userInput = [v7 userInput];
    siriSuggestionText = [v7 siriSuggestionText];
    v13 = 136315650;
    v14 = "[SRSystemAssistantExperienceViewController reportConcernButtonTappedForSuggestion:]";
    v15 = 2112;
    v16 = userInput;
    v17 = 2112;
    v18 = siriSuggestionText;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #feedback - donating feedback with input: %@, output: %@", &v13, 0x20u);
  }

  [(SiriSharedUIFeedbackController *)self->_feedbackController userDidReportConcernForSuggestionsWithModel:v7];
}

- (BOOL)_isTextInputAndKeyboardShowing
{
  _keyboardState = [(SRSystemAssistantExperienceViewController *)self _keyboardState];
  v4 = _keyboardState;
  if (_keyboardState)
  {
    [_keyboardState frameForAnimation];
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
  serverUtterances = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
  v3 = [serverUtterances countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(serverUtterances);
        }

        if (![SiriSharedUIUtilities utteranceViewEligibleForLightEffects:*(*(&v9 + 1) + 8 * i)])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [serverUtterances countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  resultContentView = [containerView resultContentView];

  if (SiriSharedUIReducedMotionEnabled())
  {
    containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
    v6 = SiriSharedUIMitosisDuration * 1.5;
    *&v6 = SiriSharedUIMitosisDuration * 1.5;
    [containerView2 reduceMotionCarouselWithDuration:0 isFirstSnippet:v6];
  }

  v7 = resultContentView == 0;
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
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView cleanupResultTransitionIfNeeded];

  containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [containerView2 setCollapseLoadingWith:activeSmartDialogView collapseLoadingSize:{self->_latestDropletContentLayoutSize.width, self->_latestDropletContentLayoutSize.height}];

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
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceCamera = [delegate isPresentingVisualIntelligenceCamera];

  if ((isPresentingVisualIntelligenceCamera & 1) == 0 && +[SiriSharedUIUtilities reportConcernButtonEnabled])
  {

    [(SRSystemAssistantExperienceViewController *)self _setupFeedbackButton];
  }
}

- (void)performPillMergeAndCrossfadeAnimation
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView setShouldPreserveResultSpace:{-[SiriSharedUISAEViewState shouldPreserveResultSpace](self->_viewState, "shouldPreserveResultSpace")}];

  [(SiriSharedUISAEViewState *)self->_viewState setSmartDialogAnimationInProgress:1];
  containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView2 setTransitionLoadingToResultWithResultSize:{self->_activeSmartDialogSize.width, self->_activeSmartDialogSize.height}];

  v5 = SiriSharedUIReducedMotionEnabled();
  containerView3 = [(SRSystemAssistantExperienceViewController *)self containerView];
  v7 = containerView3;
  v8 = SiriSharedUIMitosisDuration;
  *&v9 = SiriSharedUIMitosisDuration;
  if (v5)
  {
    [containerView3 reduceMotionMitosisWithDuration:1 intoSnippet:v9];
  }

  else
  {
    [containerView3 mitoseWithDuration:1 mitosingIntoSnippet:v9];
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
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [containerView setVoiceLoadingWith:activeSmartDialogView voiceLoadingSize:{self->_latestDropletContentLayoutSize.width, self->_latestDropletContentLayoutSize.height}];

  promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView stopLatencyAnimationIfNeeded];

  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  if (SiriSharedUIReducedMotionEnabled())
  {
    containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView2 transitionVoiceLoadingToLoading];
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
    _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    [_navigationController setPopToRootViewController:1];

    _navigationController2 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    v5 = [_navigationController2 popToRootViewControllerAnimated:1];

    self->_isDrilledIntoSnippet = 0;
  }
}

- (void)removeResponseElementsIfNeeded:(unint64_t)needed
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
  v7[6] = needed;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021D18;
  v6[3] = &unk_100167088;
  v6[4] = self;
  v6[5] = v8;
  v6[6] = needed;
  [UIView _animateUsingSpringBehavior:defaultSpringAnimationBehavior tracking:0 animations:v7 completion:v6];
  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  _Block_object_dispose(v8, 8);
}

- (unint64_t)presentedResponseElements
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  presentedResponseElements = [containerView presentedResponseElements];

  return presentedResponseElements;
}

- (void)animatedDisappearanceDidBeginWithDuration:(double)duration reason:(int64_t)reason
{
  if ((reason == 6 || reason == 24) && [(SiriSharedUISAEViewState *)self->_viewState inputType]!= 1)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController animatedDisappearanceDidBeginWithDuration:reason:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #dismissal Performing snippet blur-out", buf, 0xCu);
    }

    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView performAnimatedBlur:1 withDuration:duration];
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

    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView resignFirstResponder];

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
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  isDisplayingResponse = [containerView isDisplayingResponse];

  return isDisplayingResponse;
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  if (self->_shouldAbsorbSuggestionTap)
  {
    self->_shouldAbsorbSuggestionTap = 0;
LABEL_3:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
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
  transitionController = [(SiriUINavigationController *)self->_navigationController transitionController];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackIsPopping:](v9, "setNavigationStackIsPopping:", [transitionController operation] == 2);

  viewControllers = [(SiriUINavigationController *)self->_navigationController viewControllers];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackSize:](v9, "setNavigationStackSize:", [viewControllers count]);

  viewControllers2 = [(SiriUINavigationController *)self->_navigationController viewControllers];
  if ([viewControllers2 count] > 1)
  {

    goto LABEL_11;
  }

  navigationStackIsPopping = [(SRCompactViewControllerMutableContentTesterState *)v9 navigationStackIsPopping];

  if (navigationStackIsPopping)
  {
LABEL_11:
    view = [(SRSystemAssistantExperienceViewController *)self view];
    visibleViewController = [(SiriUINavigationController *)self->_navigationController visibleViewController];
    view2 = [visibleViewController view];
    [view convertPoint:view2 toView:{x, y}];
    v18 = v17;
    v20 = v19;

    _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    navigationBar = [_navigationController navigationBar];
    [navigationBar bounds];
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
    visibleViewController2 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
    objc_opt_class();
    LOBYTE(navigationBar) = objc_opt_isKindOfClass();

    if (navigationBar)
    {
      visibleViewController3 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
      -[SRCompactViewControllerMutableContentTesterState setMultiLevelViewHasContent:](v9, "setMultiLevelViewHasContent:", [visibleViewController3 hasContentAtPoint:{v18, v20}]);
    }

    else
    {
      [(SRCompactViewControllerMutableContentTesterState *)v9 setMultiLevelViewHasContent:1];
    }
  }

  [(SRCompactViewControllerMutableContentTesterState *)v9 setKeyboardHasContent:[(SRSystemAssistantExperienceViewController *)self _keyboardHasContentAtPoint:x, y]];
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  view3 = [(SRSystemAssistantExperienceViewController *)self view];
  [view3 convertPoint:containerView toView:{x, y}];
  v36 = v35;
  v38 = v37;

  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  view4 = [(SRSystemAssistantExperienceViewController *)self view];
  [view4 convertPoint:textFieldContainerView toView:{x, y}];
  v42 = v41;
  v44 = v43;

  [(SRSystemAssistantExperienceViewController *)self keyboardShouldDuckForLongSnippet:v36, v38];
  view5 = [(SRSystemAssistantExperienceViewController *)self view];
  window = [view5 window];

  if (window)
  {
    -[SRCompactViewControllerMutableContentTesterState setContextMenuIsPresented:](v9, "setContextMenuIsPresented:", [window contextMenuIsPresented]);
  }

  v47 = objc_alloc_init(SRCompactViewControllerContentTester);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100022544;
  v51[3] = &unk_1001670D8;
  v52 = v9;
  v54 = textFieldContainerView;
  v55 = completionCopy;
  v53 = v47;
  v56 = v42;
  v57 = v44;
  v48 = textFieldContainerView;
  v49 = v47;
  v50 = v9;
  [containerView hasContentAtPoint:v51 completion:{v36, v38}];

LABEL_17:
}

- (void)keyboardShouldDuckForLongSnippet:(CGPoint)snippet
{
  if (self->_shouldIgnoreKeyboardDuckingCheck)
  {
    self->_shouldIgnoreKeyboardDuckingCheck = 0;
  }

  else
  {
    y = snippet.y;
    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    v7 = v6 - self->_bottomContentInsetComponents.keyboard;
    textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [textFieldContainerView textFieldHeight];
    v10 = v7 - v9;

    if (y < v10 && self->_activeSmartDialogSize.height > v10)
    {
      promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      [promptEntryView resignFirstResponder];
    }
  }
}

- (CGSize)maxSizeForSnippet
{
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [activeSmartDialogView maxSnippetWidth];
  v5 = v4;

  v6 = +[AFPreferences sharedPreferences];
  if ([v6 alwaysShowRecognizedSpeech])
  {

LABEL_4:
    v5 = v5 + -16.0;
    goto LABEL_5;
  }

  activeSmartDialogView2 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  revealRecognizedSpeech = [activeSmartDialogView2 revealRecognizedSpeech];

  if (revealRecognizedSpeech)
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

- (void)_setBottomContentInsetComponents:(id)components animatedWithDuration:(double)duration animationOptions:(unint64_t)options
{
  p_bottomContentInsetComponents = &self->_bottomContentInsetComponents;
  if (self->_bottomContentInsetComponents.external != components.var0 || self->_bottomContentInsetComponents.keyboard != components.var1)
  {
    p_bottomContentInsetComponents->external = components.var0;
    self->_bottomContentInsetComponents.keyboard = components.var1;
    if (components.var0 >= components.var1)
    {
      var0 = components.var0;
    }

    else
    {
      var0 = components.var1;
    }

    if (components.var1 == 0.0 && components.var0 < 0.0)
    {
      v12 = components.var0;
    }

    else
    {
      v12 = var0;
    }

    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView setBottomContentInset:v12];

    textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [textFieldContainerView setBottomContentInset:v12];

    containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView2 setIsExternalKeyboardPresented:p_bottomContentInsetComponents->keyboard > 0.0];

    textFieldContainerView2 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [textFieldContainerView2 textFieldHeight];
    v18 = v17;
    containerView3 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView3 setTextFieldHeight:v18];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000229FC;
    v20[3] = &unk_100167010;
    v20[4] = self;
    [UIView _animateWithDuration:options delay:v20 options:0 animations:0 start:duration completion:0.0];
  }
}

- (void)setBottomContentInset:(double)inset
{
  [(SRSystemAssistantExperienceViewController *)self _bottomContentInsetComponents];

  [(SRSystemAssistantExperienceViewController *)self _setBottomContentInsetComponents:inset];
}

- (void)setDockFrame:(CGRect)frame
{
  height = frame.size.height;
  y = frame.origin.y;
  v6 = [(SRSystemAssistantExperienceViewController *)self view:frame.origin.x];
  [v6 frame];
  v8 = v7;

  IsPad = SiriUIDeviceIsPad();
  if (y <= v8)
  {
    if (!IsPad)
    {
      return;
    }

    view = [(SRSystemAssistantExperienceViewController *)self view];
    [view safeAreaInsets];
    v16 = v15 + 20.0;

    v13 = height - v16;
  }

  else
  {
    if (!IsPad)
    {
      return;
    }

    view2 = [(SRSystemAssistantExperienceViewController *)self view];
    [view2 safeAreaInsets];
    v12 = v11 + 20.0;

    v13 = -v12;
  }

  [(SRSystemAssistantExperienceViewController *)self setBottomContentInset:v13];
}

- (void)setTopContentInset:(double)inset animated:(BOOL)animated
{
  if (self->_topInset != inset)
  {
    [(SRSystemAssistantExperienceViewController *)self updateTopInset:animated animated:?];
  }
}

- (void)_updateBottomContentInsetKeyboardComponent
{
  [(SRSystemAssistantExperienceViewController *)self _bottomContentInsetComponents];
  v4 = v3;
  _keyboardState = [(SRSystemAssistantExperienceViewController *)self _keyboardState];
  [_keyboardState frameForAnimation];
  [(SRSystemAssistantExperienceViewController *)self _convertRectFromKeyboard:?];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v9 = 0.0;
  if (CGRectGetHeight(v20) != 0.0)
  {
    view = [(SRSystemAssistantExperienceViewController *)self view];
    [view bounds];
    v11 = CGRectGetHeight(v21);
    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView bounds];
    v13 = v11 - CGRectGetHeight(v22);

    containerView2 = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView2 bounds];
    v15 = CGRectGetHeight(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = v13 + v15 - CGRectGetMinY(v24);
  }

  animation = [_keyboardState animation];
  [animation duration];
  -[SRSystemAssistantExperienceViewController _setBottomContentInsetComponents:animatedWithDuration:animationOptions:](self, "_setBottomContentInsetComponents:animatedWithDuration:animationOptions:", [animation options], v4, v9, v17);
}

- (void)siriDidActivate
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]!= 1)
  {
    return;
  }

  activeRequestOptions = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  if ([activeRequestOptions requestSource] == 53)
  {

LABEL_6:
    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView updateRequestSourceIsQuickTypeTamale:1];

    [(SRSystemAssistantExperienceViewController *)self setupTextFieldForTamale];
    return;
  }

  activeRequestOptions2 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  requestSource = [activeRequestOptions2 requestSource];

  if (requestSource == 60)
  {
    goto LABEL_6;
  }

  activeRequestOptions3 = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  requestSource2 = [activeRequestOptions3 requestSource];

  promptEntryView2 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  v10 = promptEntryView2;
  if (requestSource2 == 59)
  {
    [promptEntryView2 updateRequestSourceIsQuickTypeTamale:1];

    [(SRSystemAssistantExperienceViewController *)self _setupTextFieldForQuickTypeVisualIntelligence];
  }

  else
  {
    [promptEntryView2 updateRequestSourceIsQuickTypeTamale:0];

    [(SRSystemAssistantExperienceViewController *)self setupTextFieldForTextInput];
  }
}

- (void)setupTextFieldForTextInput
{
  [(SRTypeToSiriKeyboardReadinessObserver *)self->_typeToSiriKeyboardReadinessObserver start];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceCamera = [delegate isPresentingVisualIntelligenceCamera];

  if (isPresentingVisualIntelligenceCamera)
  {
    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView resetIsInTamaleAndCollapsed];
  }

  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  promptEntryView2 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView2 minimumTextFieldHeight];
  [textFieldContainerView setTextFieldHeight:?];

  textFieldContainerView2 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  promptEntryView3 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [textFieldContainerView2 setTextFieldWithTextFieldView:promptEntryView3];

  promptEntryView4 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView4 becomeFirstResponder];

  activeRequestOptions = [(SRSystemAssistantExperienceViewController *)self activeRequestOptions];
  requestSource = [activeRequestOptions requestSource];

  if (requestSource == 56)
  {
    promptEntryView5 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView5 setIsInGenerativeAssistantTextFollowup];
  }
}

- (void)_setupTextFieldForQuickTypeVisualIntelligence
{
  [(SRTypeToSiriKeyboardReadinessObserver *)self->_typeToSiriKeyboardReadinessObserver start];
  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView minimumTextFieldHeight];
  [textFieldContainerView setTextFieldHeight:?];

  textFieldContainerView2 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  promptEntryView2 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [textFieldContainerView2 setTextFieldWithTextFieldView:promptEntryView2];

  promptEntryView3 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView3 becomeFirstResponder];

  promptEntryView4 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView4 setIsInGenerativeAssistantTextFollowup];
}

- (void)setupTextFieldForTamale
{
  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView minimumTextFieldHeight];
  [textFieldContainerView setTextFieldHeight:?];

  textFieldContainerView2 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  promptEntryView2 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [textFieldContainerView2 setTextFieldWithTextFieldView:promptEntryView2];

  textFieldContainerView3 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [textFieldContainerView3 updateKeyboardLightEffects:0];

  promptEntryView3 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView3 updateIsInTamaleAndCollapsed:1];
}

- (void)setUpConversationStarterSuggestionsWith:(int64_t)with
{
  inputType = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  self->_requestInvocationSource = with;
  if (inputType == 1)
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

    [(SRSystemAssistantExperienceViewController *)self _setUpConversationStarterSuggestions:1 isVoiceTrigger:with == 8 invocationSource:with];
  }
}

- (void)siriDidDeactivate
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]== 1)
  {
    [(SRTypeToSiriKeyboardReadinessObserver *)self->_typeToSiriKeyboardReadinessObserver stop];
    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView resignFirstResponder];
  }

  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_100167118];
}

- (int)viewRegionForPresentedAceObject:(id)object
{
  instrumentationSupplement = self->_instrumentationSupplement;
  viewState = self->_viewState;
  objectCopy = object;
  activeConversationTranscriptItems = [(SiriSharedUISAEViewState *)viewState activeConversationTranscriptItems];
  serverUtterances = [(SiriSharedUISAEViewState *)self->_viewState serverUtterances];
  LODWORD(instrumentationSupplement) = [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement viewRegionForPresentedAceObject:objectCopy resultTrasncriptItems:&__NSArray0__struct conversationTranscriptItems:activeConversationTranscriptItems serverUtterances:serverUtterances];

  return instrumentationSupplement;
}

- (BOOL)didReceiveUpdateVisualResponseCommand:(id)command
{
  commandCopy = command;
  viewId = [commandCopy viewId];
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  v7 = [activeSmartDialogView containsSmartDialogSnippetWithViewId:viewId];

  viewState = self->_viewState;
  if (v7)
  {
    activeSmartDialogView2 = [(SiriSharedUISAEViewState *)viewState activeSmartDialogView];
    stateData = [commandCopy stateData];
    [activeSmartDialogView2 updateSmartDialogSnippetWithData:stateData];
  }

  else
  {
    activeConversationTranscriptItems = [(SiriSharedUISAEViewState *)viewState activeConversationTranscriptItems];
    activeSmartDialogView2 = [(SRSystemAssistantExperienceViewController *)self _findSnippetViewControllerWithViewIdFromTranscriptItems:activeConversationTranscriptItems viewId:viewId];

    if (!activeSmartDialogView2)
    {
      storedConversationTranscriptItems = [(SiriSharedUISAEViewState *)self->_viewState storedConversationTranscriptItems];
      activeSmartDialogView2 = [(SRSystemAssistantExperienceViewController *)self _findSnippetViewControllerWithViewIdFromTranscriptItems:storedConversationTranscriptItems viewId:viewId];

      if (!activeSmartDialogView2)
      {
        v13 = 0;
        goto LABEL_7;
      }
    }

    stateData = [commandCopy stateData];
    [activeSmartDialogView2 updateSharedState:stateData];
  }

  v13 = 1;
LABEL_7:

  return v13;
}

- (id)_findSnippetViewControllerWithViewIdFromTranscriptItems:(id)items viewId:(id)id
{
  itemsCopy = items;
  idCopy = id;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = itemsCopy;
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
        viewController = [v13 viewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          viewController2 = [v13 viewController];
          aceObject = [viewController2 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            aceObject2 = [viewController2 aceObject];
            [aceObject2 viewId];
            v19 = v9;
            v20 = v10;
            v21 = v6;
            v23 = v22 = v11;
            v26 = [v23 isEqualToString:idCopy];

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

  viewController2 = 0;
LABEL_15:

  return viewController2;
}

- (void)setActiveRequestOptions:(id)options
{
  optionsCopy = options;
  if (self->_activeRequestOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_activeRequestOptions, options);
    [(SRSystemAssistantExperienceViewController *)self _updateAmbientAvailability];
    optionsCopy = v6;
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
  view = [(SRSystemAssistantExperienceViewController *)self view];
  traitCollection = [view traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSNumber numberWithBool:isAmbientPresented];
    v9 = 136315394;
    v10 = "[SRSystemAssistantExperienceViewController _updateAmbientAvailability]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #ambient - is Presented - %@", &v9, 0x16u);
  }

  [(SRSystemAssistantExperienceViewController *)self setIsInAmbient:isAmbientPresented];
}

- (void)setIsInAmbient:(BOOL)ambient
{
  if (self->_isInAmbient != ambient)
  {
    ambientCopy = ambient;
    self->_isInAmbient = ambient;
    [(SiriSharedUISAEViewState *)self->_viewState setIsInAmbient:?];
    if (self->_isInAmbient)
    {
      v5 = +[UIScreen mainScreen];
      [v5 scale];
      v7 = v6 * SiriSharedUICompactAmbientContentScaleAmount;

      _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      traitOverrides = [_navigationController traitOverrides];
      [traitOverrides setDisplayScale:v7];

      _navigationController2 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      traitOverrides2 = [_navigationController2 traitOverrides];
      [traitOverrides2 setUserInterfaceStyle:2];

      traitOverrides3 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      [traitOverrides3 setDisplayScale:v7];

      traitOverrides4 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      [traitOverrides4 setUserInterfaceStyle:2];
    }

    else
    {
      _navigationController3 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      traitOverrides5 = [_navigationController3 traitOverrides];
      v16 = objc_opt_self();
      [traitOverrides5 removeTrait:v16];

      _navigationController4 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
      traitOverrides6 = [_navigationController4 traitOverrides];
      v19 = objc_opt_self();
      [traitOverrides6 removeTrait:v19];

      traitOverrides7 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      v21 = objc_opt_self();
      [traitOverrides7 removeTrait:v21];

      traitOverrides4 = [(SRSystemAssistantExperienceViewController *)self traitOverrides];
      v22 = objc_opt_self();
      [traitOverrides4 removeTrait:v22];
    }

    [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView setIsInAmbient:self->_isInAmbient];
    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [activeSmartDialogView setIsInAmbient:ambientCopy];

    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView setIsInAmbient:ambientCopy];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    _navigationController5 = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    viewControllers = [_navigationController5 viewControllers];

    v27 = [viewControllers countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(viewControllers);
          }

          v31 = [(SRSystemAssistantExperienceViewController *)self _contentPlatterViewFromViewController:*(*(&v42 + 1) + 8 * v30)];
          [v31 setIsInAmbient:ambientCopy];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [viewControllers countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v28);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    _allTranscriptItems = [(SRSystemAssistantExperienceViewController *)self _allTranscriptItems];
    v33 = [_allTranscriptItems countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(_allTranscriptItems);
          }

          viewController = [*(*(&v38 + 1) + 8 * v36) viewController];
          if (objc_opt_respondsToSelector())
          {
            [viewController setIsInAmbient:self->_isInAmbient];
          }

          v36 = v36 + 1;
        }

        while (v34 != v36);
        v34 = [_allTranscriptItems countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v34);
    }
  }
}

- (void)_updateIsInAmbientWithInteractivity:(BOOL)interactivity
{
  if (self->_isInAmbient)
  {
    interactivityCopy = interactivity;
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v7 = v6 * SiriSharedUICompactAmbientContentScaleAmountForInteractivity;

    _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    traitOverrides = [_navigationController traitOverrides];
    [traitOverrides setDisplayScale:v7];

    self->_isInAmbientInteractivity = interactivityCopy;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    _allTranscriptItems = [(SRSystemAssistantExperienceViewController *)self _allTranscriptItems];
    v11 = [_allTranscriptItems countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(_allTranscriptItems);
          }

          viewController = [*(*(&v17 + 1) + 8 * v14) viewController];
          if (objc_opt_respondsToSelector())
          {
            [viewController setIsInAmbientInteractivity:interactivityCopy];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [_allTranscriptItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [activeSmartDialogView setIsInAmbientInteractivity:interactivityCopy];
  }
}

- (void)_setUpConversationStarterSuggestions:(int64_t)suggestions isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source
{
  triggerCopy = trigger;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  if ([delegate isPresentingVisualIntelligenceCamera])
  {
  }

  else
  {
    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    isPresentingVisualIntelligenceDirectInvocation = [delegate2 isPresentingVisualIntelligenceDirectInvocation];

    if ((isPresentingVisualIntelligenceDirectInvocation & 1) == 0)
    {
      delegate3 = [(SRSystemAssistantExperienceViewController *)self delegate];
      v11 = [delegate3 lockStateForSAEViewController:self];

      v12 = [(SRUIFPreferences *)self->_preferences BOOLForKey:SRUIFPreferencesConversationStartersShownSinceOSInstalled];
      if (!self->_suggestionsDisplayed)
      {
        v13 = v12;
        if (!self->_suggestionsViewProvider)
        {
          createSuggestionsViewProvider = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
          suggestionsViewProvider = self->_suggestionsViewProvider;
          self->_suggestionsViewProvider = createSuggestionsViewProvider;
        }

        objc_initWeak(&location, self);
        v16 = self->_suggestionsViewProvider;
        v17 = [(SRSystemAssistantExperienceViewController *)self _mapSASRequestSourceToSuggestionsInputOrigin:source];
        _instrumentationManager = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
        currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
        turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000243A4;
        v22[3] = &unk_100167190;
        objc_copyWeak(&v23, &location);
        v22[4] = self;
        v24 = v13;
        [(SiriSharedUISuggestionsViewInterface *)v16 fetchStarterSuggestionsViewsWithDeviceLocked:v11 == 2 isVoiceTrigger:triggerCopy invocationSource:v17 isFirstInvocationSinceOSInstalled:v13 ^ 1 turnId:turnIdentifier completion:v22];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)processSuggestionViewWrappers:(id)wrappers
{
  wrappersCopy = wrappers;
  v5 = [wrappersCopy count];
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
  [wrappersCopy enumerateObjectsUsingBlock:v14];

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

- (void)_siriRequestCommittedFromSuggestion:(id)suggestion suggestionRequestType:(int64_t)type
{
  suggestionCopy = suggestion;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewController:self siriRequestEnteredWithSuggestion:suggestionCopy suggestionRequestType:{-[SRSystemAssistantExperienceViewController _mapSuggestionRequestTypeToSASSuggestionRequestType:](self, "_mapSuggestionRequestTypeToSASSuggestionRequestType:", type)}];
}

- (void)_siriRequestCommittedFromSuggestion:(id)suggestion encodedToolInvocationData:(id)data suggestionRequestType:(int64_t)type
{
  suggestionCopy = suggestion;
  dataCopy = data;
  v10 = AFSiriLogContextConnection;
  v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if (dataCopy)
  {
    if (v11)
    {
      v12 = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController _siriRequestCommittedFromSuggestion:encodedToolInvocationData:suggestionRequestType:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #suggestions committing suggestion with invocation tool data", &v12, 0xCu);
    }

    [(SRSystemAssistantExperienceViewController *)self _siriRequestCommittedFromSuggestionToolInvocation:dataCopy];
  }

  else
  {
    if (v11)
    {
      v12 = 136315138;
      v13 = "[SRSystemAssistantExperienceViewController _siriRequestCommittedFromSuggestion:encodedToolInvocationData:suggestionRequestType:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #suggestions committing suggestion with text", &v12, 0xCu);
    }

    [(SRSystemAssistantExperienceViewController *)self _siriRequestCommittedFromSuggestion:suggestionCopy suggestionRequestType:type];
  }
}

- (void)_siriRequestCommittedFromSuggestionToolInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (invocationCopy)
  {
    delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
    _instrumentationManager = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
    currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
    [delegate viewController:self siriRequestEnteredWithSuggestionToolInvocation:invocationCopy turnIdentifier:turnIdentifier];
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

- (void)_setUpConversationContinuerSuggestions:(int64_t)suggestions forRequestId:(id)id currentMode:(id)mode
{
  idCopy = id;
  modeCopy = mode;
  suggestionsSpringAnimationBehavior = self->_suggestionsSpringAnimationBehavior;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100024E84;
  v19[3] = &unk_100167010;
  v19[4] = self;
  [UIView _animateUsingSpringBehavior:suggestionsSpringAnimationBehavior tracking:0 animations:v19 completion:0];
  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  v11 = [delegate lockStateForSAEViewController:self];

  self->_shouldShowSuggestions = 1;
  if (!self->_suggestionsViewProvider)
  {
    createSuggestionsViewProvider = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
    suggestionsViewProvider = self->_suggestionsViewProvider;
    self->_suggestionsViewProvider = createSuggestionsViewProvider;
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
  [(SiriSharedUISuggestionsViewInterface *)v14 fetchContinuerSuggestionsViewsWithRequestId:idCopy currentMode:modeCopy deviceLocked:v11 == 2 invocationSource:v15 completion:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (int64_t)_mapSASRequestSourceToSuggestionsInputOrigin:(int64_t)origin
{
  if (origin > 47)
  {
    if (origin != 50)
    {
      if (origin != 48)
      {
        return 0;
      }

      return 2;
    }

    return 3;
  }

  else
  {
    if (origin != 8)
    {
      if (origin != 16)
      {
        return 0;
      }

      return 2;
    }

    return 1;
  }
}

- (int64_t)_mapSuggestionRequestTypeToSASSuggestionRequestType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
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

- (void)loadContinuerSuggestionsForRequest:(id)request currentMode:(id)mode
{
  requestCopy = request;
  modeCopy = mode;
  if (_os_feature_enabled_impl())
  {
    [(SRSystemAssistantExperienceViewController *)self _setUpConversationContinuerSuggestions:[(SiriSharedUISAEViewState *)self->_viewState inputType] forRequestId:requestCopy currentMode:modeCopy];
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

- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestionsViewProvider = self->_suggestionsViewProvider;
  v8 = suggestionsCopy;
  if (!suggestionsViewProvider)
  {
    createSuggestionsViewProvider = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
    v7 = self->_suggestionsViewProvider;
    self->_suggestionsViewProvider = createSuggestionsViewProvider;

    suggestionsCopy = v8;
    suggestionsViewProvider = self->_suggestionsViewProvider;
  }

  [(SiriSharedUISuggestionsViewInterface *)suggestionsViewProvider setDialogPhase:suggestionsCopy];
}

- (void)siriDidStartSpeakingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025D28;
  v8[3] = &unk_100167378;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:v8];
}

- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty
{
  identifierCopy = identifier;
  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025E60;
  v10[3] = &unk_1001673A0;
  v11 = identifierCopy;
  emptyCopy = empty;
  v9 = identifierCopy;
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:v10];
}

- (void)siriDidUpdateASRWithRecognition:(id)recognition
{
  recognitionCopy = recognition;
  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025F8C;
  v8[3] = &unk_100167378;
  v9 = recognitionCopy;
  v7 = recognitionCopy;
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:v8];
}

- (void)siriDidTapOutsideContent
{
  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_1001673C0];
}

- (void)siriWillStartRequest
{
  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_1001673E0];
}

- (void)siriIsIdleAndQuiet
{
  _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_100167400];
}

- (void)_recursivelyNotifyVisibleViewControllers:(id)controllers withBlock:(id)block
{
  controllersCopy = controllers;
  blockCopy = block;
  if ([controllersCopy conformsToProtocol:&OBJC_PROTOCOL___SiriSharedUIViewControlling])
  {
    blockCopy[2](blockCopy, controllersCopy);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  childViewControllers = [controllersCopy childViewControllers];
  v9 = [childViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [(SRSystemAssistantExperienceViewController *)self _recursivelyNotifyVisibleViewControllers:*(*(&v13 + 1) + 8 * v12) withBlock:blockCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [childViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_pushQueuedNavigationContentViewController
{
  _queuedNavigationContentViewController = [(SRSystemAssistantExperienceViewController *)self _queuedNavigationContentViewController];
  if (_queuedNavigationContentViewController)
  {
    v5 = _queuedNavigationContentViewController;
    _navigationController = [(SRSystemAssistantExperienceViewController *)self _navigationController];
    [_navigationController pushViewController:v5 animated:1];

    [(SRSystemAssistantExperienceViewController *)self _setQueuedNavigationContentViewController:0];
    [(SRSystemAssistantExperienceViewController *)self userDrilledIntoSnippet];
    _queuedNavigationContentViewController = v5;
  }
}

- (void)siriViewController:(id)controller openURL:(id)l completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026514;
  v9[3] = &unk_100167428;
  completionCopy = completion;
  v8 = completionCopy;
  [(SRSystemAssistantExperienceViewController *)self siriViewController:controller openURL:l launchOptions:0 completion:v9];
}

- (void)siriViewController:(id)controller openURL:(id)l launchOptions:(id)options completion:(id)completion
{
  instrumentationSupplement = self->_instrumentationSupplement;
  completionCopy = completion;
  optionsCopy = options;
  lCopy = l;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:controller aceCommand:0 URL:lCopy appID:0 sashItem:0];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewController:self openURL:lCopy launchOptions:optionsCopy completion:completionCopy];
}

- (void)siriSnippetViewController:(id)controller performAceCommands:(id)commands sashItem:(id)item
{
  instrumentationSupplement = self->_instrumentationSupplement;
  commandsCopy = commands;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:controller aceCommands:commandsCopy sashItem:item];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewController:self performAceCommands:commandsCopy completion:0];
}

- (void)siriViewController:(id)controller performAceCommands:(id)commands completion:(id)completion
{
  completionCopy = completion;
  commandsCopy = commands;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewController:self performAceCommands:commandsCopy completion:completionCopy];
}

- (double)boundingWidthForSnippetViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate expectedContentWidth];
  v5 = v4;

  return v5;
}

- (id)siriViewController:(id)controller disambiguationItemForListItem:(id)item disambiguationKey:(id)key
{
  keyCopy = key;
  itemCopy = item;
  v8 = +[SiriUISnippetManager sharedInstance];
  v9 = [v8 disambiguationItemForListItem:itemCopy disambiguationKey:keyCopy];

  return v9;
}

- (id)siriViewController:(id)controller filteredDisambiguationListItems:(id)items
{
  itemsCopy = items;
  v5 = +[SiriUISnippetManager sharedInstance];
  v6 = [v5 filteredDisambiguationListItems:itemsCopy];

  return v6;
}

- (id)siriViewController:(id)controller listItemToPickInAutodisambiguationForListItems:(id)items
{
  itemsCopy = items;
  v5 = +[SiriUISnippetManager sharedInstance];
  v6 = [v5 listItemToPickInAutodisambiguationForListItems:itemsCopy];

  return v6;
}

- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)insets
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

- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)location
{
  locationCopy = location;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  v6 = [delegate effectiveCoreLocationBundleForSAEViewController:self];

  if (!v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAC5C(locationCopy, v7);
    }
  }

  return v6;
}

- (double)siriViewControllerExpectedWidth:(id)width
{
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [activeSmartDialogView portraitContentSize];
  v6 = v5;

  if (self->_isInAmbient && !self->_isInAmbientInteractivity)
  {
    return v6 / SiriSharedUICompactAmbientContentScaleAmount;
  }

  return v6;
}

- (void)siriViewControllerHeightDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    topViewController = [(SiriUINavigationController *)self->_navigationController topViewController];
    view = [topViewController view];
    superview = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView superview];

    if (view == superview)
    {
      [(SRSystemAssistantExperienceViewController *)self _smartDialogSnippetLayoutDidUpdateForViewController:changeCopy];
    }

    else
    {
      topViewController2 = [(SiriUINavigationController *)self->_navigationController topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        topViewController3 = [(SiriUINavigationController *)self->_navigationController topViewController];
        [topViewController3 contentViewDidUpdateSize];
      }
    }
  }
}

- (void)_smartDialogSnippetLayoutDidUpdateForViewController:(id)controller
{
  if ([(SRSystemAssistantExperienceViewController *)self _smartDialogActiveTranscriptItemContainsViewController:controller])
  {
    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [activeSmartDialogView snippetContentDidUpdate];
  }
}

- (BOOL)_smartDialogActiveTranscriptItemContainsViewController:(id)controller
{
  controllerCopy = controller;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  activeTranscriptItems = [activeSmartDialogView activeTranscriptItems];

  v7 = [activeTranscriptItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(activeTranscriptItems);
        }

        viewController = [*(*(&v15 + 1) + 8 * i) viewController];
        v12 = viewController;
        if (viewController == controllerCopy || ([viewController isEqual:controllerCopy] & 1) != 0)
        {

          v13 = 1;
          goto LABEL_13;
        }
      }

      v8 = [activeTranscriptItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)siriViewControllerHeightDidChange:(id)change pinTopOfSnippet:(BOOL)snippet
{
  v4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView:change];
  [v4 setNeedsLayout];
}

- (CGSize)siriViewControllerVisibleContentArea:(id)area
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)siriSnippetViewController:(id)controller pushSirilandSnippets:(id)snippets
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  snippetsCopy = snippets;
  v5 = [snippetsCopy countByEnumeratingWithState:&v35 objects:v40 count:16];
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
        objc_enumerationMutation(snippetsCopy);
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

      viewController = [v11 viewController];
      [viewController setAceObject:v10];

      viewController2 = [v11 viewController];
      [viewController2 wasAddedToTranscript];

      viewController3 = [v11 viewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view = [viewController3 view];
        [view layoutIfNeeded];
        v17 = viewController3;
        if (SiriUIDeviceIsPad())
        {
          [v17 setNavigating:1];
        }

        selfCopy4 = self;
        if (objc_opt_respondsToSelector())
        {
          shouldAutomaticallyScaleContentInAmbient = [view shouldAutomaticallyScaleContentInAmbient];
        }

        else
        {
          shouldAutomaticallyScaleContentInAmbient = 1;
        }

        [v17 setIsInAmbient:self->_isInAmbient];
        [v17 setDelegate:self];
        [(SiriSharedUICompactHostingInstrumentationSupplement *)self->_instrumentationSupplement configureSiriViewControllerWithCurrentTurn:v17];
        v19 = objc_alloc_init(SiriSharedUIContentPlatterViewController);
        navigationController = self->_navigationController;
        contentPlatterView = [v19 contentPlatterView];
        [contentPlatterView setDelegate:navigationController];

        v39 = v17;
        v22 = [NSArray arrayWithObjects:&v39 count:1];
        [v19 setContentViewControllers:v22];

        v23 = objc_alloc_init(SiriUINavigationContentViewController);
        [v23 setContentViewController:v19];
        if (self->_isInAmbient)
        {
          contentPlatterView2 = [v19 contentPlatterView];
          _resultViewController = [(SRSystemAssistantExperienceViewController *)self _resultViewController];
          compactResultView = [_resultViewController compactResultView];
          [contentPlatterView2 setDelegate:compactResultView];

          selfCopy4 = self;
        }

        contentPlatterView3 = [v19 contentPlatterView];
        [contentPlatterView3 setIsNextLevelCard:1];

        contentPlatterView4 = [v19 contentPlatterView];
        [contentPlatterView4 setIsInAmbient:selfCopy4->_isInAmbient];

        contentPlatterView5 = [v19 contentPlatterView];
        [contentPlatterView5 setAllowAutomaticContentViewsScaling:shouldAutomaticallyScaleContentInAmbient];

        [(SRSystemAssistantExperienceViewController *)selfCopy4 _updateAdditionalSafeAreaInsetsForNavigationContentViewController:v23];
        [(SRSystemAssistantExperienceViewController *)selfCopy4 _setQueuedNavigationContentViewController:v23];
        if ([v17 isLoading])
        {
          aceObject = [v17 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            selfCopy4 = self;
          }

          else
          {
            aceObject2 = [v17 aceObject];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            selfCopy4 = self;
            if ((isKindOfClass & 1) == 0)
            {
LABEL_25:
              [(SiriSharedUICompactHostingInstrumentationSupplement *)selfCopy4->_instrumentationSupplement logDrillInInteractionForSnippetViewControllerIfNecessary:v17];

              goto LABEL_26;
            }
          }
        }

        [(SRSystemAssistantExperienceViewController *)selfCopy4 _pushQueuedNavigationContentViewController];
        goto LABEL_25;
      }
    }

    v6 = [snippetsCopy countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_26:
}

- (void)siriSnippetViewControllerViewDidLoad:(id)load
{
  if (load)
  {
    [(SRSystemAssistantExperienceViewController *)self _smartDialogSnippetLayoutDidUpdateForViewController:?];
    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    [activeSmartDialogView setNeedsLayout];

    [(SRSystemAssistantExperienceViewController *)self _pushQueuedNavigationContentViewController];
  }
}

- (void)userTouchedSnippet
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate userTouchedSnippet];
}

- (void)siriSnippetViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self handleStartLocalRequest:requestCopy turnIdentifier:identifierCopy];
}

- (void)userDrilledIntoSnippet
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate userDrilledIntoSnippet];
}

- (void)siriSnippetViewController:(id)controller informHostOfBackgroundView:(id)view isSnippetAsyncColored:(BOOL)colored
{
  coloredCopy = colored;
  controllerCopy = controller;
  viewCopy = view;
  if (coloredCopy)
  {
    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    snippetBackgroundView = [activeSmartDialogView snippetBackgroundView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      snippetBackgroundView = snippetBackgroundView;
      activeSmartDialogView2 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      activeTranscriptItems = [activeSmartDialogView2 activeTranscriptItems];

      if (activeTranscriptItems)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        activeSmartDialogView3 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
        activeTranscriptItems2 = [activeSmartDialogView3 activeTranscriptItems];

        v16 = [activeTranscriptItems2 countByEnumeratingWithState:&v81 objects:v92 count:16];
        if (!v16)
        {
LABEL_13:

          goto LABEL_14;
        }

        v17 = v16;
        v75 = snippetBackgroundView;
        v76 = viewCopy;
        v18 = 0;
        v19 = *v82;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v82 != v19)
            {
              objc_enumerationMutation(activeTranscriptItems2);
            }

            viewController = [*(*(&v81 + 1) + 8 * i) viewController];
            objc_opt_class();
            v18 |= objc_opt_isKindOfClass() & (viewController == controllerCopy);
          }

          v17 = [activeTranscriptItems2 countByEnumeratingWithState:&v81 objects:v92 count:16];
        }

        while (v17);

        snippetBackgroundView = v75;
        viewCopy = v76;
        if ((v18 & 1) == 0)
        {
LABEL_14:
          [snippetBackgroundView bounds];
          [viewCopy setFrame:?];
          hasSmartDialogSnippet = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];
          v23 = &SiriSharedUISmartDialogSnippetCornerRadius;
          if (!hasSmartDialogSnippet)
          {
            v23 = &SiriSharedUISmartDialogPlatterCornerRadius;
          }

          [snippetBackgroundView setContinuousCornerRadius:*v23];
          v24 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s #background: get SearchUIBackgroundColorView", buf, 0xCu);
          }

          activeSmartDialogView4 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
          if ([activeSmartDialogView4 onlyContainsSnippet])
          {
            hasSmartDialogSnippet2 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];

            if (hasSmartDialogSnippet2)
            {
LABEL_22:

LABEL_57:
              goto LABEL_58;
            }

            [snippetBackgroundView removeFromSuperview];
            activeSmartDialogView5 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
            [activeSmartDialogView5 setSnippetBackgroundView:0];

            activeSmartDialogView4 = [(SRSystemAssistantExperienceViewController *)self containerView];
            activeSmartDialogView6 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
            [activeSmartDialogView4 updateBackgroundView:viewCopy smartDialogView:activeSmartDialogView6 isSnippetAsyncColored:1];
          }

          goto LABEL_22;
        }
      }

      activeTranscriptItems2 = [snippetBackgroundView contentView];
      [activeTranscriptItems2 addSubview:viewCopy];
      goto LABEL_13;
    }

    activeSmartDialogView7 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    snippetBackgroundView2 = [activeSmartDialogView7 snippetBackgroundView];
    if (snippetBackgroundView2)
    {

      goto LABEL_56;
    }

    activeSmartDialogView8 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    if ([activeSmartDialogView8 onlyContainsSnippet])
    {
      hasSmartDialogSnippet3 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];

      if (hasSmartDialogSnippet3)
      {
        goto LABEL_57;
      }

      activeSmartDialogView7 = [(SRSystemAssistantExperienceViewController *)self containerView];
      activeSmartDialogView9 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      [activeSmartDialogView7 updateBackgroundView:viewCopy smartDialogView:activeSmartDialogView9 isSnippetAsyncColored:1];
LABEL_54:

      goto LABEL_56;
    }

LABEL_55:

    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeSmartDialogView10 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    snippetBackgroundView3 = [activeSmartDialogView10 snippetBackgroundView];

    if (snippetBackgroundView3)
    {
      activeSmartDialogView11 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      snippetBackgroundView4 = [activeSmartDialogView11 snippetBackgroundView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        snippetBackgroundView = viewCopy;
        activeSmartDialogView12 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
        activeSmartDialogView7 = [activeSmartDialogView12 snippetBackgroundView];

        effect = [snippetBackgroundView effect];
        [activeSmartDialogView7 setEffect:effect];

        backgroundColor = [snippetBackgroundView backgroundColor];
        [activeSmartDialogView7 setBackgroundColor:backgroundColor];

        hasSmartDialogSnippet4 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];
        v39 = &SiriSharedUISmartDialogSnippetCornerRadius;
        if (!hasSmartDialogSnippet4)
        {
          v39 = &SiriSharedUISmartDialogPlatterCornerRadius;
        }

        v40 = *v39;
        layer = [activeSmartDialogView7 layer];
        [layer setCornerRadius:v40];

        v42 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          backgroundColor2 = [activeSmartDialogView7 backgroundColor];
          effect2 = [activeSmartDialogView7 effect];
          *buf = 136315650;
          v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
          v88 = 2112;
          v89 = backgroundColor2;
          v90 = 2112;
          v91 = effect2;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s #background: setting backgroundViewColor:%@, effect:%@", buf, 0x20u);
        }

        if ([(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet])
        {
          v46 = snippetBackgroundView;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          contentView = [activeSmartDialogView7 contentView];
          subviews = [contentView subviews];

          v49 = [subviews countByEnumeratingWithState:&v77 objects:v85 count:16];
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
                  objc_enumerationMutation(subviews);
                }

                [*(*(&v77 + 1) + 8 * j) removeFromSuperview];
              }

              v50 = [subviews countByEnumeratingWithState:&v77 objects:v85 count:16];
            }

            while (v50);
          }

          snippetBackgroundView = v46;
        }

        activeSmartDialogView8 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
        if ([activeSmartDialogView8 onlyContainsSnippet])
        {
          hasSmartDialogSnippet5 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];

          if (hasSmartDialogSnippet5)
          {
LABEL_56:

            goto LABEL_57;
          }

          [activeSmartDialogView7 removeFromSuperview];
          activeSmartDialogView13 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
          [activeSmartDialogView13 setSnippetBackgroundView:0];

          v56 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v56;
            backgroundColor3 = [activeSmartDialogView7 backgroundColor];
            effect3 = [activeSmartDialogView7 effect];
            *buf = 136315650;
            v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
            v88 = 2112;
            v89 = backgroundColor3;
            v90 = 2112;
            v91 = effect3;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s #background: updating the whole background backgroundViewColor:%@, effect:%@", buf, 0x20u);
          }

          activeSmartDialogView8 = [(SRSystemAssistantExperienceViewController *)self containerView];
          activeSmartDialogView14 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
          [activeSmartDialogView8 updateBackgroundView:activeSmartDialogView7 smartDialogView:activeSmartDialogView14 isSnippetAsyncColored:0];
        }

        goto LABEL_55;
      }
    }

    else
    {
      resultSnippetBackgroundView = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView resultSnippetBackgroundView];
      objc_opt_class();
      v63 = objc_opt_isKindOfClass();

      if (v63)
      {
        snippetBackgroundView = viewCopy;
        activeSmartDialogView7 = [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView resultSnippetBackgroundView];
        effect4 = [snippetBackgroundView effect];
        [activeSmartDialogView7 setEffect:effect4];

        backgroundColor4 = [snippetBackgroundView backgroundColor];
        [activeSmartDialogView7 setBackgroundColor:backgroundColor4];

        hasSmartDialogSnippet6 = [(SiriSharedUISAEViewState *)self->_viewState hasSmartDialogSnippet];
        v67 = &SiriSharedUISmartDialogSnippetCornerRadius;
        if (!hasSmartDialogSnippet6)
        {
          v67 = &SiriSharedUISmartDialogPlatterCornerRadius;
        }

        v68 = *v67;
        layer2 = [activeSmartDialogView7 layer];
        [layer2 setCornerRadius:v68];

        v70 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        activeSmartDialogView9 = v70;
        backgroundColor5 = [activeSmartDialogView7 backgroundColor];
        effect5 = [activeSmartDialogView7 effect];
        *buf = 136315650;
        v87 = "[SRSystemAssistantExperienceViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
        v88 = 2112;
        v89 = backgroundColor5;
        v90 = 2112;
        v91 = effect5;
        _os_log_impl(&_mh_execute_header, activeSmartDialogView9, OS_LOG_TYPE_DEFAULT, "%s #background: setting backgroundViewColor:%@, effect:%@", buf, 0x20u);

        goto LABEL_54;
      }
    }
  }

LABEL_58:
}

- (void)siriSnippetViewController:(id)controller isBackgroundColorUpdateSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  onlyContainsSnippet = [activeSmartDialogView onlyContainsSnippet];

  if (onlyContainsSnippet)
  {
    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView searchUIBackgroundColorUpdateSuccessful:successfulCopy];
  }
}

- (void)cancelSpeakingForSiriViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate stopSpeakingForSAEViewController:self];
}

- (void)siriViewController:(id)controller speakText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self speakText:textCopy isPhonetic:0 completion:completionCopy];
}

- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)interaction
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  v5 = [delegate lockStateForSAEViewController:self];

  return v5 != 0;
}

- (id)localeForSiriViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  v5 = [delegate localeForSAEViewController:self];

  return v5;
}

- (void)siriSnippetViewController:(id)controller willDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate siriSAEViewController:self willDismissViewController:viewControllerCopy];
}

- (void)siriSnippetViewController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate siriSAEViewController:self willPresentViewController:viewControllerCopy];
}

- (void)siriViewControllerViewDidAppear:(id)appear isTopLevelViewController:(BOOL)controller
{
  if (controller)
  {
    appearCopy = appear;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    aceObject = [appearCopy aceObject];

    [WeakRetained saeViewController:self viewDidAppearForAceObject:aceObject];
  }
}

- (void)siriViewControllerViewDidDisappear:(id)disappear isTopLevelViewController:(BOOL)controller
{
  if (controller)
  {
    disappearCopy = disappear;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    aceObject = [disappearCopy aceObject];

    [WeakRetained saeViewController:self viewDidDisappearForAceObject:aceObject];
  }
}

- (void)_setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self setStatusViewHidden:hiddenCopy];
}

- (void)_updateStatusViewVisibility
{
  v3 = [(SRSystemAssistantExperienceViewController *)self _hidesStatusViewForInputType:[(SiriSharedUISAEViewState *)self->_viewState inputType]];
  v4 = (v3 | [(SRSystemAssistantExperienceViewController *)self _snippetViewControllerRequestsStatusViewHidden]) & 1;

  [(SRSystemAssistantExperienceViewController *)self _setStatusViewHidden:v4];
}

- (void)_updateHomeAffordanceVisibility
{
  inputType = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  if (inputType != 3)
  {
    if (inputType == 2)
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

    if (inputType != 1)
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
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate toggleHomeAffordanceHidden:v5];
}

- (void)_willBeginEditingOfType:(int64_t)type
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self willBeginEditingOfType:type];
}

- (void)_didEndEditing
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewControllerDidEndEditing:self];
}

- (void)_updateKeyboardStateFromNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:UIKeyboardDidHideNotification];

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
    v8 = [[SRCompactKeyboardState alloc] initWithKeyboardNotification:notificationCopy];
    [(SRSystemAssistantExperienceViewController *)self _setKeyboardState:v8];
  }
}

- (void)_keyboardWillHideForAmbient:(id)ambient
{
  if (self->_isInAmbient)
  {
    [(SRSystemAssistantExperienceViewController *)self _updateIsInAmbientWithInteractivity:0];
  }
}

- (void)_keyboardWillShowForAmbient:(id)ambient
{
  if (self->_isInAmbient)
  {
    [(SRSystemAssistantExperienceViewController *)self _updateIsInAmbientWithInteractivity:1];
  }
}

- (void)_setKeyboardState:(id)state
{
  v4 = [state copy];
  keyboardState = self->_keyboardState;
  self->_keyboardState = v4;

  [(SRSystemAssistantExperienceViewController *)self _updateBottomContentInsetKeyboardComponent];
}

- (CGRect)_convertRectFromKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  view = [(SRSystemAssistantExperienceViewController *)self view];
  window = [view window];
  screen = [window screen];

  coordinateSpace = [screen coordinateSpace];
  view2 = [(SRSystemAssistantExperienceViewController *)self view];
  [view2 convertRect:coordinateSpace fromCoordinateSpace:{x, y, width, height}];
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
  _keyboardState = [(SRSystemAssistantExperienceViewController *)self _keyboardState];
  [_keyboardState frame];
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

- (void)_setInputType:(int64_t)type
{
  if ([(SiriSharedUISAEViewState *)self->_viewState inputType]!= type)
  {
    [(SiriSharedUISAEViewState *)self->_viewState setInputType:type];
    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView setInputType:type];

    [(SRSystemAssistantExperienceViewController *)self _updateTextRequestViewVisibility];

    [(SRSystemAssistantExperienceViewController *)self _updateStatusViewVisibility];
  }
}

- (BOOL)_alwaysObscureBackgroundContentWhenActive
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysObscureBackgroundContentWhenActive = [v2 alwaysObscureBackgroundContentWhenActive];

  return alwaysObscureBackgroundContentWhenActive;
}

- (BOOL)_keyboardHasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SRSystemAssistantExperienceViewController *)self _keyboardFrame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)_requestKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v9 = [(SRSystemAssistantExperienceViewController *)self _contentPlatterViewFromViewController:viewControllerCopy];
  viewControllers = [controllerCopy viewControllers];
  v11 = [viewControllers count];

  if (v11 == 2)
  {
    if (SiriSharedUIDeviceIsPhone() && !self->_isDrilledIntoSnippet)
    {
      delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
      [delegate updateEdgeLightWindowLevel:1];
    }

    self->_isDrilledIntoSnippet = 1;
    if (SiriSharedUIDeviceIsPad())
    {
      [controllerCopy setNavigationBarHidden:0 animated:animatedCopy];
      [v9 setFakeNavigationBarBackgroundHidden:1];
    }

    else
    {
      [controllerCopy setNavigationBarHidden:1 animated:animatedCopy];
    }

    textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [textFieldContainerView textFieldHeight];
    v21 = v20;

    if ((SiriSharedUIDeviceIsPad() & 1) == 0)
    {
      view = [(SRSystemAssistantExperienceViewController *)self view];
      [view safeAreaInsets];
      v21 = v21 + v23;
    }

    [v9 setMinimumScrollViewBottomInset:v21];
    navigationItem = [viewControllerCopy navigationItem];
    [navigationItem setHidesBackButton:1];

    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate2 toggleHomeAffordanceHidden:SiriSharedUIDeviceIsPhone() ^ 1];

    if ([(SiriSharedUISAEViewState *)self->_viewState inputType]== 1)
    {
      promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      [promptEntryView resignFirstResponder];
    }

    [(SRSystemAssistantExperienceViewController *)self updateTopInset:1 animated:self->_topInset];
    [(SiriSharedUISAEViewState *)self->_viewState setFinalAndDisplayedSmartDialog:0];
    [(SiriSharedUISAEViewState *)self->_viewState setActiveSmartDialogView:0];
  }

  else if (v11 == 1)
  {
    self->_isDrilledIntoSnippet = 0;
    [controllerCopy setNavigationBarHidden:1 animated:animatedCopy];
    [v9 setFakeNavigationBarBackgroundHidden:1];
    [(SRSystemAssistantExperienceViewController *)self _updateHomeAffordanceVisibility];
    if (SiriSharedUIDeviceIsPhone())
    {
      delegate3 = [(SRSystemAssistantExperienceViewController *)self delegate];
      [delegate3 updateEdgeLightWindowLevel:0];
    }

    [(SRSystemAssistantExperienceViewController *)self updateTopInset:1 animated:self->_topInset];
  }

  else if (v11 >= 3)
  {
    [controllerCopy setNavigationBarHidden:0 animated:animatedCopy];
    [v9 setFakeNavigationBarBackgroundHidden:0];
    textFieldContainerView2 = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
    [textFieldContainerView2 textFieldHeight];
    v16 = v15;

    if ((SiriSharedUIDeviceIsPad() & 1) == 0)
    {
      view2 = [(SRSystemAssistantExperienceViewController *)self view];
      [view2 safeAreaInsets];
      v16 = v16 + v18;
    }

    [v9 setMinimumScrollViewBottomInset:v16];
  }
}

- (id)_contentPlatterViewFromViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_class();
  v5 = sub_100019948(v4, controllerCopy);

  if (v5 && (v6 = objc_opt_class(), [v5 contentViewController], v7 = objc_claimAutoreleasedReturnValue(), sub_100019948(v6, v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    contentPlatterView = [v8 contentPlatterView];
  }

  else
  {
    contentPlatterView = 0;
  }

  return contentPlatterView;
}

- (BOOL)_contentDiffersBetweenPlatterItems:(id)items andItems:(id)andItems
{
  itemsCopy = items;
  andItemsCopy = andItems;
  v7 = [itemsCopy count];
  if (v7 == [andItemsCopy count])
  {
    if ([itemsCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [itemsCopy objectAtIndex:v8];
        v10 = [andItemsCopy objectAtIndex:v8];
        v11 = [SiriSharedUIUtilities contentDiffersBetweenItems:v10 andItems:v9];

        if (v11)
        {
          break;
        }

        ++v8;
      }

      while ([itemsCopy count] > v8);
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

- (void)dropletContentWillUpdateLayout:(id)layout withUpdatedContentSize:(CGSize)size animated:(BOOL)animated
{
  height = size.height;
  width = size.width;
  self->_latestDropletContentLayoutSize = size;
  viewState = self->_viewState;
  layoutCopy = layout;
  activeSmartDialogView = [(SiriSharedUISAEViewState *)viewState activeSmartDialogView];

  if (activeSmartDialogView == layoutCopy)
  {
    activeSmartDialogIsLatencyPill = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogIsLatencyPill];
    v12 = self->_viewState;
    if (activeSmartDialogIsLatencyPill)
    {
      userUtterance = [(SiriSharedUISAEViewState *)v12 userUtterance];
      speech = [userUtterance speech];
      isFinal = [speech isFinal];

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
      v29 = isFinal;
      v28[4] = self;
      [UIView _animateUsingSpringBehavior:defaultSpringAnimationBehavior tracking:0 animations:v30 completion:v28];
      view = [(SRSystemAssistantExperienceViewController *)self view];
      [view setNeedsLayout];

      view2 = [(SRSystemAssistantExperienceViewController *)self view];
LABEL_4:
      v19 = view2;
      [view2 layoutIfNeeded];

      return;
    }

    activeSmartDialogView2 = [(SiriSharedUISAEViewState *)v12 activeSmartDialogView];
    if (activeSmartDialogView2)
    {
      v21 = activeSmartDialogView2;
      activeSmartDialogView3 = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
      hasResult = [activeSmartDialogView3 hasResult];

      if (hasResult)
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
          view3 = [(SRSystemAssistantExperienceViewController *)self view];
          [view3 setNeedsLayout];

          view4 = [(SRSystemAssistantExperienceViewController *)self view];
          [view4 layoutIfNeeded];

          containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
          [containerView setNeedsLayout];

          view2 = [(SRSystemAssistantExperienceViewController *)self containerView];
          goto LABEL_4;
        }
      }
    }
  }
}

- (double)dropletContentMaximumContainerWidth
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView frame];
  v4 = v3;

  return v4;
}

- (double)dropletContentMaximumContainerHeight
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView frame];
  v4 = v3;

  return v4;
}

- (void)setDropletContainerUserUtteranceViewHeight:(double)height
{
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView setUserUtteranceViewHeight:height];
}

- (void)siriViewControllerHeightDidChange
{
  activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
  [activeSmartDialogView snippetContentDidUpdate];
}

- (void)siriViewControllerShouldOpenUrl:(id)url
{
  urlCopy = url;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewController:self openURL:urlCopy completion:0];
}

- (void)siriViewControllerShouldRequestTextInputWithUtterance:(id)utterance alternatives:(id)alternatives
{
  utteranceCopy = utterance;
  alternativesCopy = alternatives;
  v8 = objc_alloc_init(SISchemaUEITranscriptTapped);
  [v8 setExists:1];
  _instrumentationManager = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
  [_instrumentationManager emitInstrumentation:v8];

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
    delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate siriSAEViewControllerRequestsTextActivation:self withRequestSource:33];
  }

  [(SRSystemAssistantExperienceViewController *)self _presentSystemPromptEntryViewWithUtterance:utteranceCopy alternatives:alternativesCopy];
}

- (void)siriViewControllerRequestDeviceUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  v6 = [delegate lockStateForSAEViewController:self];

  if ((v6 & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000296B0;
    v8[3] = &unk_100167478;
    v9 = completionCopy;
    [WeakRetained requestToHandlePasscodeUnlockWithClient:0 withCompletion:v8];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)_presentSystemPromptEntryViewWithUtterance:(id)utterance alternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  utteranceCopy = utterance;
  promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView prefillWithText:utteranceCopy];

  promptEntryView2 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView2 becomeFirstResponder];

  promptEntryView3 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView3 setKeyboardSuggestions:alternativesCopy];

  v11 = [alternativesCopy count];
  if (v11)
  {
    promptEntryView4 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    [promptEntryView4 selectAllText];
  }
}

- (void)siriViewControllerWillBeginEditing
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate cancelRequestForViewController:self];

  delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate2 saeViewControllerRequestsHIDEventDefferal:self];

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRSystemAssistantExperienceViewController siriViewControllerWillBeginEditing]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while edit sheet is up", &v7, 0xCu);
  }

  delegate3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate3 saeViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)siriViewControllerDidEndEditing
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewControllerCancelHIDEventDefferal:self];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController siriViewControllerDidEndEditing]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - edit sheet is removed, no longer preventing touches from dismissing Siri", &v6, 0xCu);
  }

  delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate2 saeViewController:self preventOutsideTouchesFromDismissingSiri:0];
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

- (void)promptEntryViewWillPresentEditMenu:(id)menu
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController promptEntryViewWillPresentEditMenu:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while edit menu is up", &v6, 0xCu);
  }

  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)promptEntryDidDismissEditMenu:(id)menu
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController promptEntryDidDismissEditMenu:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - edit menu is removed, no longer preventing touches from dismissing Siri", &v6, 0xCu);
  }

  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)entryViewDidSubmit:(id)submit text:(id)text
{
  textCopy = text;
  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [textFieldContainerView removeSuggestions];

  self->_promptEntryViewSuggestionsSubmitting = 0;
  if (self->_inTapToEdit)
  {
    activeSmartDialogView = [(SiriSharedUISAEViewState *)self->_viewState activeSmartDialogView];
    userUtteranceViewModel = [activeSmartDialogView userUtteranceViewModel];
    asrAlternatives = [userUtteranceViewModel asrAlternatives];
    v10 = [asrAlternatives count] == 0;

    delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
    userUtterance = [(SiriSharedUISAEViewState *)self->_viewState userUtterance];
    speech = [userUtterance speech];
    userUtterance2 = [speech userUtterance];
    v15 = objc_alloc_init(AFUserUtteranceSelectionResults);
    [delegate viewController:self didFinishEditingUtteranceWithText:textCopy originalUserUtterance:userUtterance2 selectionResults:v15 showASR:v10];

    self->_inTapToEdit = 0;
  }

  else
  {
    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate2 viewController:self siriRequestEnteredWithText:textCopy];
  }

  suggestionsViewProvider = self->_suggestionsViewProvider;

  [(SiriSharedUISuggestionsViewInterface *)suggestionsViewProvider startNewTypingSession];
}

- (void)entryViewDidSubmit:(id)submit visualIntelligenceText:(id)text
{
  textCopy = text;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SRSystemAssistantExperienceViewController entryViewDidSubmit:visualIntelligenceText:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence Visual Intelligence direct routing delegate method called with text", &v9, 0xCu);
  }

  v7 = [[SASRequestOptions alloc] initWithRequestSource:60 uiPresentationIdentifier:@"com.apple.siri.SystemAssistantExperience"];
  [v7 setText:textCopy];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate siriSAEViewControllerRequestsTextRequest:self withRequestOptions:v7];
}

- (void)entryViewDidSubmit:(id)submit suggestionText:(id)text suggestionRequestType:(int64_t)type
{
  textCopy = text;
  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [textFieldContainerView removeSuggestions];

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

    delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate viewController:self siriRequestEnteredWithSuggestion:textCopy suggestionRequestType:{-[SRSystemAssistantExperienceViewController _mapSuggestionRequestTypeToSASSuggestionRequestType:](self, "_mapSuggestionRequestTypeToSASSuggestionRequestType:", type)}];
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
  textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
  [textFieldContainerView updateKeyboardLightEffects:1];

  [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
}

- (void)promptEntryViewDidBeginEditing:(id)editing
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  if ([delegate isPresentingVisualIntelligenceCamera])
  {
    isPresentingVisualIntelligenceDirectInvocation = 1;
  }

  else
  {
    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    isPresentingVisualIntelligenceDirectInvocation = [delegate2 isPresentingVisualIntelligenceDirectInvocation];
  }

  isInTamaleAndCollapsed = [(SystemAssistantPromptEntryView *)self->_promptEntryView isInTamaleAndCollapsed];
  delegate3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  if (isInTamaleAndCollapsed)
  {
    v9 = isPresentingVisualIntelligenceDirectInvocation == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = delegate3;
  if (v9)
  {
    [delegate3 viewController:self willChangeKeyboardVisibility:1];
  }

  else
  {
    [delegate3 cancelRequestForViewController:self];

    [(SRSystemAssistantExperienceViewController *)self removeResponseElementsIfNeeded:1];
  }
}

- (void)promptEntryViewDidEndEditing:(id)editing
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate viewController:self willChangeKeyboardVisibility:0];
}

- (void)_cancelFirstVisualIntelligenceRequestIfNeeded
{
  isInTamaleAndCollapsed = [(SystemAssistantPromptEntryView *)self->_promptEntryView isInTamaleAndCollapsed];
  firstPromptSubmitted = [(SystemAssistantPromptEntryView *)self->_promptEntryView firstPromptSubmitted];
  requestSourceIsQuickTypeTamale = [(SystemAssistantPromptEntryView *)self->_promptEntryView requestSourceIsQuickTypeTamale];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316162;
    v9 = "[SRSystemAssistantExperienceViewController _cancelFirstVisualIntelligenceRequestIfNeeded]";
    v10 = 1024;
    v11 = requestSourceIsQuickTypeTamale & ((isInTamaleAndCollapsed | firstPromptSubmitted) ^ 1);
    v12 = 1024;
    v13 = isInTamaleAndCollapsed & 1;
    v14 = 1024;
    v15 = firstPromptSubmitted & 1;
    v16 = 1024;
    v17 = requestSourceIsQuickTypeTamale;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #visual intelligence - shouldCancelActiveRequest: %d (firstPromptSubmitted: %d, isVisualIntelligenceDirectInvocationRequest: %d, isVisualIntelligenceDirectInvocationRequest: %d)", &v8, 0x24u);
  }

  if ((requestSourceIsQuickTypeTamale & ((isInTamaleAndCollapsed | firstPromptSubmitted) ^ 1)) != 0 && !self->_hasCanceledFirstVisualIntelligenceRequest)
  {
    delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate cancelRequestForViewController:self];

    [(SRSystemAssistantExperienceViewController *)self removeResponseElementsIfNeeded:1];
    self->_hasCanceledFirstVisualIntelligenceRequest = 1;
  }
}

- (void)didChangeText:(id)text
{
  textCopy = text;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self didChangeText:textCopy];

  delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  if ([delegate2 isPresentingVisualIntelligenceCamera])
  {

LABEL_4:
    if ([textCopy length] && !self->_hasCanceledFirstVisualIntelligenceRequest)
    {
      [(SRSystemAssistantExperienceViewController *)self _cancelFirstVisualIntelligenceRequestIfNeeded];
    }

    goto LABEL_16;
  }

  delegate3 = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceDirectInvocation = [delegate3 isPresentingVisualIntelligenceDirectInvocation];

  if (isPresentingVisualIntelligenceDirectInvocation)
  {
    goto LABEL_4;
  }

  if (!self->_promptEntryViewSuggestionsSubmitting)
  {
    [(SRSystemAssistantExperienceViewController *)self _fadeOutContinuerSuggestionsIfAny];
    if ([textCopy length])
    {
      delegate4 = [(SRSystemAssistantExperienceViewController *)self delegate];
      v10 = [delegate4 lockStateForSAEViewController:self];

      if (!self->_suggestionsViewProvider)
      {
        createSuggestionsViewProvider = [(SRSystemAssistantExperienceViewController *)self createSuggestionsViewProvider];
        suggestionsViewProvider = self->_suggestionsViewProvider;
        self->_suggestionsViewProvider = createSuggestionsViewProvider;
      }

      objc_initWeak(&location, self);
      v13 = self->_suggestionsViewProvider;
      _instrumentationManager = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
      currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
      turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002A5C4;
      v21[3] = &unk_100167248;
      objc_copyWeak(&v22, &location);
      v21[4] = self;
      [(SiriSharedUISuggestionsViewInterface *)v13 fetchAutoCompletionSuggestionsViewsWithQuery:textCopy deviceLocked:(v10 >> 1) & 1 turnId:turnIdentifier completion:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      getInitialSuggestionViewWrappers = [(SiriSharedUISuggestionsViewInterface *)self->_suggestionsViewProvider getInitialSuggestionViewWrappers];
      if ([getInitialSuggestionViewWrappers count])
      {
        [(SRSystemAssistantExperienceViewController *)self processSuggestionViewWrappers:getInitialSuggestionViewWrappers];
        [(SRSystemAssistantExperienceViewController *)self _addSuggestionsToContainer];
      }

      else
      {
        suggestionTexts = self->_suggestionTexts;
        self->_suggestionTexts = &__NSArray0__struct;

        suggestionViews = self->_suggestionViews;
        self->_suggestionViews = &__NSArray0__struct;

        textFieldContainerView = [(SRSystemAssistantExperienceViewController *)self textFieldContainerView];
        [textFieldContainerView removeSuggestions];
      }
    }
  }

LABEL_16:
}

- (void)_fadeOutContinuerSuggestionsIfAny
{
  if ([(NSArray *)self->_continuerSuggestionViews count])
  {
    containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
    [containerView removeContinuerSuggestions];

    continuerSuggestionViews = self->_continuerSuggestionViews;
    self->_continuerSuggestionViews = &__NSArray0__struct;
  }
}

- (void)promptEntryViewDidLayoutSubviews:(id)subviews
{
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_textFieldContainerView setNeedsLayout];
  textFieldContainerView = self->_textFieldContainerView;

  [(SiriSharedUISystemAssistantExperienceContainerView *)textFieldContainerView layoutIfNeeded];
}

- (void)handleVoiceActivationRequestWithRequestOptions:(id)options
{
  optionsCopy = options;
  [(SRSystemAssistantExperienceViewController *)self _setInputType:2];
  [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriUI];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate siriSAEViewControllerRequestsVoiceActivation:self withRequestOptions:optionsCopy];
}

- (void)_teardownTypeToSiriUI
{
  promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
  [promptEntryView resignFirstResponder];

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
  inputType = [(SiriSharedUISAEViewState *)self->_viewState inputType];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceCamera = [delegate isPresentingVisualIntelligenceCamera];

  if (!isPresentingVisualIntelligenceCamera || inputType == 3)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CADD8(isPresentingVisualIntelligenceCamera, inputType == 3, v7);
    }
  }

  else
  {
    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate2 siriResultsWillDismissInTamale];

    [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriForVisualIntelligenceCameraWithUpdate];
  }
}

- (void)_teardownTypeToSiriForVisualIntelligenceCameraWithUpdate
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceCamera = [delegate isPresentingVisualIntelligenceCamera];

  if (isPresentingVisualIntelligenceCamera)
  {
    promptEntryView = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
    isInTamaleAndCollapsed = [promptEntryView isInTamaleAndCollapsed];

    if (isInTamaleAndCollapsed)
    {
      promptEntryView2 = [(SRSystemAssistantExperienceViewController *)self promptEntryView];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10002AF68;
      v9[3] = &unk_100167010;
      v9[4] = self;
      [promptEntryView2 animateOutTextFieldAndButton:v9];
    }

    else
    {
      [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriUI];
      delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
      [delegate2 siriResultsDidDismissInTamale];
    }
  }

  else
  {

    [(SRSystemAssistantExperienceViewController *)self _teardownTypeToSiriUI];
  }
}

- (void)keyboardIsReadyToReceiveInput
{
  _instrumentationManager = [(SRSystemAssistantExperienceViewController *)self _instrumentationManager];
  v4 = SRUIFConstructLaunchContextForLaunchEnded();
  [_instrumentationManager emitInstrumentation:v4];

  typeToSiriKeyboardReadinessObserver = self->_typeToSiriKeyboardReadinessObserver;

  [(SRTypeToSiriKeyboardReadinessObserver *)typeToSiriKeyboardReadinessObserver stop];
}

- (void)containerView:(id)view requestsDismissalWithReason:(int64_t)reason
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  isPresentingVisualIntelligenceCamera = [delegate isPresentingVisualIntelligenceCamera];

  if (isPresentingVisualIntelligenceCamera)
  {

    [(SRSystemAssistantExperienceViewController *)self dismissSiriResults];
  }

  else
  {
    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate2 endSiriSessionForViewController:self withDismissalReason:reason];
  }
}

- (void)presentGenerativeAssistantOnboardingFlowWithCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  [(SRSystemAssistantExperienceViewController *)self setStoredGenerativeAssistantOnboardingCompletion:completion];
  aceId = [commandCopy aceId];
  [(SRSystemAssistantExperienceViewController *)self setGenerativeAssistantOnboardingCommandAceID:aceId];

  [(SiriSharedUIGenerativeAssistantOnboardingManager *)self->_montaraOnboardingManager presentOnboardingFlowForCommand:commandCopy];
}

- (void)willPresentOnboardingFlow
{
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView clearResultViewAndBackground];
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate siriSAEViewControllerRequestStopAttending:self];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRSystemAssistantExperienceViewController willPresentOnboardingFlow]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while presenting Montara onboarding flow", &v6, 0xCu);
  }

  delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate2 saeViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)completedOnboardingFlowWithEnablementResult:(int64_t)result
{
  [(SRSystemAssistantExperienceViewController *)self performSelector:"_resumeTouchDismissalPostMontaraOnboardingCompletion" withObject:0 afterDelay:1.0];
  storedGenerativeAssistantOnboardingCompletion = [(SRSystemAssistantExperienceViewController *)self storedGenerativeAssistantOnboardingCompletion];

  if (storedGenerativeAssistantOnboardingCompletion)
  {
    if (result == 2)
    {
      v9 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Siri/ExternalAIModel?view=signIn"];
      [(SRSystemAssistantExperienceViewController *)self siriViewControllerShouldOpenUrl:v9];
    }

    else if (result == 3)
    {
      v13 = objc_alloc_init(SACommandSucceeded);
      generativeAssistantOnboardingCommandAceID = [(SRSystemAssistantExperienceViewController *)self generativeAssistantOnboardingCommandAceID];
      [v13 setRefId:generativeAssistantOnboardingCommandAceID];

      storedGenerativeAssistantOnboardingCompletion2 = [(SRSystemAssistantExperienceViewController *)self storedGenerativeAssistantOnboardingCompletion];
      (storedGenerativeAssistantOnboardingCompletion2)[2](storedGenerativeAssistantOnboardingCompletion2, v13);

LABEL_10:

      return;
    }

    v13 = objc_alloc_init(SACommandFailed);
    generativeAssistantOnboardingCommandAceID2 = [(SRSystemAssistantExperienceViewController *)self generativeAssistantOnboardingCommandAceID];
    [v13 setRefId:generativeAssistantOnboardingCommandAceID2];

    storedGenerativeAssistantOnboardingCompletion3 = [(SRSystemAssistantExperienceViewController *)self storedGenerativeAssistantOnboardingCompletion];
    (storedGenerativeAssistantOnboardingCompletion3)[2](storedGenerativeAssistantOnboardingCompletion3, v13);

    delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate endSiriSessionForViewController:self withDismissalReason:10];

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

  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate saeViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)didSetInputType:(int64_t)type
{
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView setInputType:type];

  [(SRSystemAssistantExperienceViewController *)self _updateHomeAffordanceVisibility];
}

- (void)didSetServerUtterance:(id)utterance
{
  utteranceCopy = utterance;
  _resultEligibleForIntelligentLightEffects = [(SRSystemAssistantExperienceViewController *)self _resultEligibleForIntelligentLightEffects];
  containerView = [(SRSystemAssistantExperienceViewController *)self containerView];
  [containerView setResultEligibleForLightEffects:_resultEligibleForIntelligentLightEffects];

  if ([utteranceCopy count])
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002B63C;
    v9[3] = &unk_100166FE8;
    objc_copyWeak(&v11, &location);
    v10 = utteranceCopy;
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
  activeConversationTranscriptItems = [(SiriSharedUISAEViewState *)self->_viewState activeConversationTranscriptItems];
  v4 = [activeConversationTranscriptItems countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(activeConversationTranscriptItems);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        viewController = [v7 viewController];
        if (viewController)
        {
          [v16 addObject:viewController];
          parentViewController = [viewController parentViewController];

          if (!parentViewController)
          {
            [(SRSystemAssistantExperienceRootViewController *)self->_rootViewController addChildViewController:viewController];
            [viewController didMoveToParentViewController:self->_rootViewController];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = viewController;
            isHintItem = [v7 isHintItem];
            v12 = isHintItem;
            if (isHintItem)
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
            [viewController setIsInAmbient:self->_isInAmbient];
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

          if (!parentViewController)
          {
            [viewController didMoveToParentViewController:self->_rootViewController];
          }
        }
      }

      v4 = [activeConversationTranscriptItems countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  objc_initWeak(buf, self);
  activeConversationTranscriptItems2 = [(SiriSharedUISAEViewState *)self->_viewState activeConversationTranscriptItems];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002BA20;
  v17[3] = &unk_100166FE8;
  objc_copyWeak(&v19, buf);
  v15 = v16;
  v18 = v15;
  [(SRSystemAssistantExperienceViewController *)self _setSmartDialogConversationActiveTranscriptItems:activeConversationTranscriptItems2 withCompletionBlock:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)smartDialogContentDidChange
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate contentDidUpdate];
}

- (void)didPresentContentWithAceObject:(id)object
{
  objectCopy = object;
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  [delegate didPresentContentForSAEViewController:self];

  if (objectCopy)
  {
    delegate2 = [(SRSystemAssistantExperienceViewController *)self delegate];
    [delegate2 saeViewController:self viewDidAppearForAceObject:objectCopy];
  }
}

- (void)setSmartDialogCardBlock:(id)block
{
  self->smartDialogCardBlock = objc_retainBlock(block);

  _objc_release_x1();
}

- (void)willPresentResult
{
  [(SRSystemAssistantExperienceViewController *)self _popToRootViewControllerIfNeeded];
  [(SRSystemAssistantExperienceViewController *)self endTypeToSiriLatencyStateIfNeeded];

  [(SRSystemAssistantExperienceViewController *)self resignKeyboardIfNeeded];
}

- (id)filterTranscriptItemsForSAEDialogBoxContent:(id)content
{
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = content;
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
      aceObject = [v9 aceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_46;
      }

      v77 = v8;
      v73 = v9;
      aceObject2 = [v9 aceObject];
      siriui_card_compact = [aceObject2 siriui_card_compact];
      backingCard = [siriui_card_compact backingCard];
      cardSections = [backingCard cardSections];
      v16 = v6;
      if (cardSections)
      {
        [aceObject2 siriui_card_compact];
      }

      else
      {
        [aceObject2 siriui_card];
      }
      v17 = ;
      backingCard2 = [v17 backingCard];

      v19 = objc_alloc(v7[369]);
      v76 = aceObject2;
      v20 = aceObject2;
      v21 = backingCard2;
      cardData = [v20 cardData];
      v23 = [v19 initWithData:cardData];

      cardSections2 = [v23 cardSections];
      v25 = [cardSections2 count];
      cardSections3 = [backingCard2 cardSections];
      v27 = [cardSections3 count];

      v79 = backingCard2;
      if (v25 == v27)
      {
        cardSections4 = [backingCard2 cardSections];
        v29 = [cardSections4 count];

        if (v29)
        {
          v30 = 0;
          do
          {
            v31 = [v23 cardSectionsAtIndex:v30];
            cardSections5 = [v21 cardSections];
            v33 = [cardSections5 objectAtIndex:v30];

            v34 = [NSMutableDictionary alloc];
            racFeedbackLoggingContent = [v31 racFeedbackLoggingContent];
            v36 = [v34 initWithDictionary:racFeedbackLoggingContent];

            [v33 setRacFeedbackLoggingContent:v36];
            cardSections6 = [backingCard2 cardSections];
            v38 = [cardSections6 mutableCopy];

            v21 = backingCard2;
            [v38 replaceObjectAtIndex:v30 withObject:v33];
            [backingCard2 setCardSections:v38];

            ++v30;
            cardSections7 = [backingCard2 cardSections];
            v40 = [cardSections7 count];
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
      cardSections8 = [v21 cardSections];
      v43 = [cardSections8 countByEnumeratingWithState:&v81 objects:v93 count:16];
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
              objc_enumerationMutation(cardSections8);
            }

            v48 = *(*(&v81 + 1) + 8 * i);
            shouldShowInSmartDialog = [v48 shouldShowInSmartDialog];
            objc_opt_class();
            v50 = objc_opt_isKindOfClass();
            if (shouldShowInSmartDialog)
            {
              if (v50)
              {
                cardSections9 = [v48 cardSections];
                [v41 addObjectsFromArray:cardSections9];
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
              cardSections10 = [v52 cardSections];
              v54 = [cardSections10 count];

              if (v54)
              {
                cardSections11 = [v52 cardSections];
                v56 = [cardSections11 objectAtIndexedSubscript:0];

                if ([v56 shouldShowInSmartDialog])
                {
                  cardSections12 = [v52 cardSections];
                  [v41 addObjectsFromArray:cardSections12];

                  v45 = 1;
                }
              }
            }

            else
            {
              [v80 addObject:v48];
            }
          }

          v44 = [cardSections8 countByEnumeratingWithState:&v81 objects:v93 count:16];
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
        cardSections8 = [v76 copy];
        v60 = [[_SFPBCard alloc] initWithFacade:v79];
        data = [v60 data];
        [cardSections8 setCardData:data];

        viewController = [v73 viewController];
        objc_opt_class();
        LOBYTE(data) = objc_opt_isKindOfClass();

        v5 = v71;
        if (data)
        {
          viewController2 = [v73 viewController];
          if ([v80 count])
          {
            [viewController2 setSnippet:cardSections8];
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

- (void)setSmartDialogPluginBlock:(id)block
{
  self->smartDialogPluginBlock = objc_retainBlock(block);

  _objc_release_x1();
}

- (BOOL)alwaysShowRecognizedSpeech
{
  delegate = [(SRSystemAssistantExperienceViewController *)self delegate];
  alwaysShowRecognizedSpeech = [delegate alwaysShowRecognizedSpeech];

  return alwaysShowRecognizedSpeech;
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