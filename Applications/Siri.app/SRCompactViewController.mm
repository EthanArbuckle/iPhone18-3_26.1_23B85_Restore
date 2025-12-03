@interface SRCompactViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_bottomContentInsetComponents;
- (BOOL)_alwaysObscureBackgroundContentWhenActive;
- (BOOL)_contentDiffersBetweenPlatterItems:(id)items andItems:(id)andItems;
- (BOOL)_keyboardHasContentAtPoint:(CGPoint)point;
- (BOOL)_navigationBarHasContentAtPoint:(CGPoint)point;
- (BOOL)_shouldMoveViewStackForTapToEdit;
- (BOOL)_updateActiveTranscriptItems:(id)items;
- (BOOL)contentDiffersBetweenItems:(id)items andItems:(id)andItems;
- (BOOL)didReceiveUpdateVisualResponseCommand:(id)command;
- (BOOL)hasContentAtPoint:(CGPoint)point;
- (BOOL)shouldBeginDismissalGestureRecognizer:(id)recognizer withTouch:(id)touch;
- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)interaction;
- (CGRect)_convertRectFromKeyboard:(CGRect)keyboard;
- (CGRect)_keyboardFrame;
- (CGSize)maxSizeForSnippet;
- (CGSize)siriViewControllerVisibleContentArea:(id)area;
- (SRCompactViewController)init;
- (SRCompactViewControllerDelegate)delegate;
- (SiriSharedUICompactView)_compactView;
- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)insets;
- (double)boundingWidthForSnippetViewController:(id)controller;
- (double)maximumHeightForCompactView:(id)view;
- (double)siriViewControllerExpectedWidth:(id)width;
- (id)localeForSiriViewController:(id)controller;
- (id)siriViewController:(id)controller disambiguationItemForListItem:(id)item disambiguationKey:(id)key;
- (id)siriViewController:(id)controller filteredDisambiguationListItems:(id)items;
- (id)siriViewController:(id)controller listItemToPickInAutodisambiguationForListItems:(id)items;
- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)location;
- (void)_didEndEditing;
- (void)_keyboardWillHideForAmbient:(id)ambient;
- (void)_keyboardWillShowForAmbient:(id)ambient;
- (void)_pushQueuedNavigationContentViewController;
- (void)_recursivelyNotifyVisibleViewControllers:(id)controllers withBlock:(id)block;
- (void)_registerForAmbientPresentationTraitChange;
- (void)_requestKeyboardWithCompletion:(id)completion;
- (void)_requestPresentationBackgroundBlurVisible:(BOOL)visible forReason:(int64_t)reason;
- (void)_setActiveAdditionalPlatterTranscriptItems:(id)items;
- (void)_setActiveConversationTranscriptItems:(id)items;
- (void)_setBottomContentInsetComponents:(id)components animatedWithDuration:(double)duration animationOptions:(unint64_t)options;
- (void)_setInputType:(int64_t)type;
- (void)_setKeyboardState:(id)state;
- (void)_setServerUtterances:(id)utterances;
- (void)_setSpeechRecognitionHypothesis:(id)hypothesis;
- (void)_setStatusViewHidden:(BOOL)hidden;
- (void)_updateAdditionalSafeAreaInsetsForNavigationContentViewController:(id)controller;
- (void)_updateAmbientAvailability;
- (void)_updateBottomContentInsetKeyboardComponent;
- (void)_updateCompactViewSize;
- (void)_updateIsInAmbientWithInteractivity:(BOOL)interactivity;
- (void)_updateKeyboardStateFromNotification:(id)notification;
- (void)_updateStatusViewVisibility;
- (void)_updateTextRequestViewVisibility;
- (void)_willBeginEditingOfType:(int64_t)type;
- (void)blurFromRootNavigationTransitionController:(id)controller requestHostBlurVisible:(BOOL)visible requestPresentationBlurVisible:(BOOL)blurVisible;
- (void)cancelSpeakingForSiriViewController:(id)controller;
- (void)compactView:(id)view didChangeEffectiveBottomContentInsetAnimatedWithContext:(id)context;
- (void)compactView:(id)view viewDidAppearForAceObject:(id)object;
- (void)compactView:(id)view viewDidDisappearForAceObject:(id)object;
- (void)compactViewModelDidChange:(id)change withDiff:(unint64_t)diff;
- (void)dismissalGestureRecognizerDidFinish:(id)finish shouldDismiss:(BOOL)dismiss;
- (void)editableUtterancePresenter:(id)presenter didFinishEditingWithText:(id)text selectionResults:(id)results shouldStartNewRequest:(BOOL)request;
- (void)editableUtterancePresenter:(id)presenter openURL:(id)l;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)scrollDidBeginFromView:(id)view;
- (void)scrollDidEndFromView:(id)view;
- (void)setActiveRequestOptions:(id)options;
- (void)setBottomContentInset:(double)inset;
- (void)setDelegate:(id)delegate;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setTopContentInset:(double)inset animated:(BOOL)animated;
- (void)showFullScreenEffect:(id)effect;
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
- (void)siriViewController:(id)controller performAceCommands:(id)commands completion:(id)completion;
- (void)siriViewController:(id)controller speakText:(id)text completion:(id)completion;
- (void)siriViewControllerDidEndEditing:(id)editing;
- (void)siriViewControllerHeightDidChange:(id)change;
- (void)siriViewControllerHeightDidChange:(id)change pinTopOfSnippet:(BOOL)snippet;
- (void)siriViewControllerRequestsDeviceUnlock:(id)unlock completion:(id)completion;
- (void)siriViewControllerViewDidAppear:(id)appear isTopLevelViewController:(BOOL)controller;
- (void)siriViewControllerViewDidDisappear:(id)disappear isTopLevelViewController:(BOOL)controller;
- (void)siriViewControllerWillBeginEditing:(id)editing;
- (void)siriWillStartRequest;
- (void)tapToEditRequestedFromView:(id)view;
- (void)textRequestController:(id)controller siriRequestCommittedWithText:(id)text;
- (void)textRequestControllerDidEndTextEditMenuInteraction:(id)interaction;
- (void)textRequestControllerWillBeginTextEditMenuInteraction:(id)interaction;
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
- (void)willDismissEditableUtterancePresenter:(id)presenter transitionCoordinator:(id)coordinator;
@end

@implementation SRCompactViewController

- (SRCompactViewController)init
{
  v22.receiver = self;
  v22.super_class = SRCompactViewController;
  v2 = [(SRCompactViewController *)&v22 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(SiriSharedUIViewStackContainerController);
    viewStackContainerController = v2->_viewStackContainerController;
    v2->_viewStackContainerController = v3;

    v5 = objc_alloc_init(SiriSharedUICompactResultViewController);
    resultViewController = v2->_resultViewController;
    v2->_resultViewController = v5;

    v7 = objc_alloc_init(SRCompactTextRequestViewController);
    textRequestViewController = v2->_textRequestViewController;
    v2->_textRequestViewController = v7;

    view = [(SRCompactTextRequestViewController *)v2->_textRequestViewController view];
    [view recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v10 = [SiriUINavigationController alloc];
    _viewStackContainerController = [(SRCompactViewController *)v2 _viewStackContainerController];
    v12 = [v10 initWithRootViewController:_viewStackContainerController];
    navigationController = v2->_navigationController;
    v2->_navigationController = v12;

    [(SiriUINavigationController *)v2->_navigationController setDelegate:v2];
    view2 = [(SiriUINavigationController *)v2->_navigationController view];
    [view2 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    navigationBar = [(SiriUINavigationController *)v2->_navigationController navigationBar];
    [navigationBar recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v2->_siriViewControllerIsEditing = 0;
    v16 = objc_alloc_init(SiriUIBackgroundBlurViewController);
    [(SRCompactViewController *)v2 setBackgroundBlurViewController:v16];

    [(SRCompactTextRequestViewController *)v2->_textRequestViewController setDelegate:v2];
    v17 = [SiriSharedUICompactHostingInstrumentationSupplement alloc];
    _instrumentationManager = [(SRCompactViewController *)v2 _instrumentationManager];
    v19 = [v17 initWithInstrumentationManager:_instrumentationManager];
    instrumentationSupplement = v2->_instrumentationSupplement;
    v2->_instrumentationSupplement = v19;

    [(SRCompactViewController *)v2 _registerForAmbientPresentationTraitChange];
  }

  return v2;
}

- (SiriSharedUICompactView)_compactView
{
  view = [(SRCompactViewController *)self view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [NSString stringWithFormat:@"Expected -view to return an SiriSharedUICompactView instance, but got %@ instead", view];
    v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
    v6 = v5;

    objc_exception_throw(v5);
  }

  return view;
}

- (void)updateTopInset:(double)inset animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_topInset = inset;
  if ([UIApp activeInterfaceOrientation] - 1 <= 1)
  {
    view = [(SRCompactViewController *)self view];
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
    v14[2] = sub_100036578;
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
    v38 = "[SRCompactViewController loadView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  backgroundBlurViewController = [(SRCompactViewController *)self backgroundBlurViewController];
  view = [backgroundBlurViewController view];
  v31 = backgroundBlurViewController;
  [(SRCompactViewController *)self addChildViewController:backgroundBlurViewController];
  _navigationController = [(SRCompactViewController *)self _navigationController];
  view2 = [_navigationController view];
  v27 = _navigationController;
  [(SRCompactViewController *)self addChildViewController:_navigationController];
  _viewStackContainerController = [(SRCompactViewController *)self _viewStackContainerController];
  viewStackContainer = [_viewStackContainerController viewStackContainer];
  _resultViewController = [(SRCompactViewController *)self _resultViewController];
  compactResultView = [_resultViewController compactResultView];
  v25 = _resultViewController;
  v26 = _viewStackContainerController;
  [_viewStackContainerController addChildViewController:_resultViewController];
  _textRequestViewController = [(SRCompactViewController *)self _textRequestViewController];
  view3 = [_textRequestViewController view];
  if (_textRequestViewController)
  {
    [(SRCompactViewController *)self addChildViewController:_textRequestViewController];
  }

  v24 = _textRequestViewController;
  v9 = [SiriSharedUICompactConversationView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v14 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = +[SiriSharedUITranscriptItem additionalContentViewPlatterCategories];
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[SiriSharedUICompactAdditionalContentView alloc] initWithFrame:objc_msgSend(*(*(&v32 + 1) + 8 * i) platterCategory:{"integerValue"), CGRectZero.origin.x, y, width, height}];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v21 = [[SiriSharedUICompactView alloc] initWithFrame:view backgroundBlurView:view2 navigationView:compactResultView resultView:v13 conversationView:v14 additionalContentViews:view3 textRequestView:CGRectZero.origin.x viewStackContainer:{y, width, height, viewStackContainer}];
  [v21 setAutoresizingMask:18];
  [v21 setDelegate:self];
  [v31 didMoveToParentViewController:self];
  [v27 didMoveToParentViewController:self];
  [v25 didMoveToParentViewController:v26];
  [v24 didMoveToParentViewController:self];
  [(SRCompactViewController *)self setView:v21];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v22 viewDidLoad];
  view = [(SRCompactViewController *)self view];
  [view recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

  IsPad = SiriUIDeviceIsPad();
  if (IsPad)
  {
    v5 = [SRCardStackNavigationTransitionController alloc];
    _resultViewController = [(SRCompactViewController *)self _resultViewController];
    v7 = [(SRCardStackNavigationTransitionController *)v5 initWithCompactResultViewController:_resultViewController];

    [(SRCompactViewController *)self _setNavigationStackLayoutController:v7];
    v8 = 2;
  }

  else
  {
    v9 = [SiriUIMultiNavigationTransitionController alloc];
    v10 = objc_alloc_init(SRBarSlideNavigationTransitionController);
    v7 = [v9 initWithPrimaryTransitionController:v10];

    v11 = [[SRBlurFromRootNavigationTransitionController alloc] initWithDelegate:self];
    [(SRCardStackNavigationTransitionController *)v7 addAdditionalCoordinationController:v11];

    v8 = 1;
  }

  _navigationController = [(SRCompactViewController *)self _navigationController];
  [_navigationController setTransitionController:v7];

  v13 = [[SiriSharedUIPanDismissalGestureRecognizer alloc] initWithDismissalDelegate:self dismissalStyle:v8];
  dismissalPanGestureRecognizer = self->_dismissalPanGestureRecognizer;
  self->_dismissalPanGestureRecognizer = v13;

  if (IsPad)
  {
    view2 = [(SRCompactViewController *)self view];
    layer = [view2 layer];
    [layer setAllowsGroupOpacity:0];

    view3 = [(SRCompactViewController *)self view];
    [view3 addGestureRecognizer:self->_dismissalPanGestureRecognizer];
  }

  else
  {
    view3 = [(SRCompactViewController *)self _compactView];
    resultView = [view3 resultView];
    hostingView = [resultView hostingView];
    layer2 = [hostingView layer];
    [layer2 setAllowsGroupOpacity:0];

    resultView2 = [view3 resultView];
    [resultView2 setDismissalGestureRecognizer:self->_dismissalPanGestureRecognizer];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v14 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = sub_100036D88();
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
  v8.receiver = self;
  v8.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v8 viewDidAppear:appear];
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  self->_presentationTime = v5;

  if ([(SRCompactViewController *)self _alwaysObscureBackgroundContentWhenActive])
  {
    delegate = [(SRCompactViewController *)self delegate];
    [delegate viewController:self requestsHostBackgroundBlurVisible:1 reason:1 fence:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidPresentUserInterface:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v5 viewWillDisappear:disappear];
  [(SRCompactEditableUtterancePresenter *)self->_editableUtterancePresenter dismissEditableUtteranceViewControllerAndShouldStartNewRequest:1 completion:0];
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewControllerViewWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v28.receiver = self;
  v28.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v28 viewDidDisappear:disappear];
  _speechRecognitionHypothesis = [(SRCompactViewController *)self _speechRecognitionHypothesis];

  if (_speechRecognitionHypothesis)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    backingAceObject = [(SRUIFSpeechRecognitionHypothesis *)self->_speechRecognitionHypothesis backingAceObject];
    [WeakRetained compactViewController:self viewDidDisappearForAceObject:backingAceObject];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_serverUtterances;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 compactViewController:self viewDidDisappearForAceObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = sub_100036D88();
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 removeObserver:self name:*(*(&v20 + 1) + 8 * v19) object:{0, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v17);
  }

  [v14 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v14 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  [(SRCompactViewController *)self _setKeyboardState:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v3 viewWillLayoutSubviews];
  [(SRCompactViewController *)self _updateCompactViewSize];
}

- (void)_updateCompactViewSize
{
  view = [(SRCompactViewController *)self view];
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
      goto LABEL_9;
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

    v19 = v16 + v18 + SiriSharedUICompactLeftPaddingForShadowOutsetsiPad;
    LODWORD(windowScene) = SiriLanguageIsRTL();
    view2 = [(SRCompactViewController *)self view];
    v21 = v7;
    v22 = v9;
    v23 = v11;
    v24 = v13;
    if (windowScene)
    {
      Height = CGRectGetHeight(*&v21);
      v26 = 0.0;
    }

    else
    {
      v26 = CGRectGetWidth(*&v21) - v19;
      v29.origin.x = v7;
      v29.origin.y = v9;
      v29.size.width = v11;
      v29.size.height = v13;
      Height = CGRectGetHeight(v29);
    }

    [view2 setFrame:{v26, 0.0, v19, Height}];
  }

LABEL_9:

  _objc_release_x1();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = SRCompactViewController;
  coordinatorCopy = coordinator;
  [(SRCompactViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(SRCompactViewController *)self _updateAmbientAvailability];
  _navigationStackLayoutController = [(SRCompactViewController *)self _navigationStackLayoutController];
  v9[4] = _navigationStackLayoutController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000374BC;
  v10[3] = &unk_100166F20;
  v10[4] = _navigationStackLayoutController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000374C4;
  v9[3] = &unk_100166F20;
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
}

- (void)compactViewModelDidChange:(id)change withDiff:(unint64_t)diff
{
  diffCopy = diff;
  changeCopy = change;
  inputType = [changeCopy inputType];
  resultTranscriptItems = [changeCopy resultTranscriptItems];
  conversationTranscriptItems = [changeCopy conversationTranscriptItems];
  additionalPlatterTranscriptItems = [changeCopy additionalPlatterTranscriptItems];
  serverUtterances = [changeCopy serverUtterances];
  speechRecognitionHypothesis = [changeCopy speechRecognitionHypothesis];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = SiriSharedUIViewModelInputTypeGetDescription();
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact Setting input type to : %@", buf, 0x16u);
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = resultTranscriptItems;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #compact Setting active transcript items to : %@", buf, 0x16u);
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = conversationTranscriptItems;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #compact Setting active conversation transcript items to : %@", buf, 0x16u);
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = additionalPlatterTranscriptItems;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #compact Setting additional active platter transcript items to : %@", buf, 0x16u);
  }

  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = serverUtterances;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #compact Setting server utterances to : %@", buf, 0x16u);
  }

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = speechRecognitionHypothesis;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #compact Setting speech recognition hypothesis to : %@", buf, 0x16u);
  }

  v32 = [resultTranscriptItems count] != 0;
  requireFinalSpeechHypothesisBeforeAppearance = [(SRCompactViewController *)self requireFinalSpeechHypothesisBeforeAppearance];
  userUtterance = [speechRecognitionHypothesis userUtterance];

  if (requireFinalSpeechHypothesisBeforeAppearance && ([speechRecognitionHypothesis isFinal] & 1) != 0)
  {
    requireFinalSpeechHypothesisBeforeAppearance = 0;
  }

  v30 = userUtterance == 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = additionalPlatterTranscriptItems;
  v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v51;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v17 += [*(*(&v50 + 1) + 8 * i) count];
      }

      v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v16);
    v31 = v17 > 0;
  }

  else
  {
    v31 = 0;
  }

  if ([serverUtterances count] && self->_isInAmbient)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = serverUtterances;
    v21 = 0;
    v22 = [v20 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v22)
    {
      v23 = *v47;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dialogIdentifier = [*(*(&v46 + 1) + 8 * j) dialogIdentifier];
          v26 = [dialogIdentifier isEqual:@"PlaybackControls#SilenceInterstitials"];

          v21 |= v26;
        }

        v22 = [v20 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v21 = 0;
  }

  if ([resultTranscriptItems count] || objc_msgSend(conversationTranscriptItems, "count") != 0 || v31 || (((objc_msgSend(serverUtterances, "count") == 0) | v21) & (v30 | requireFinalSpeechHypothesisBeforeAppearance) & 1) == 0)
  {
    delegate = [(SRCompactViewController *)self delegate];
    [delegate didPresentContentForCompactViewController:self];
  }

  if ((diffCopy & 1) != 0 && [resultTranscriptItems count])
  {
    delegate2 = [(SRCompactViewController *)self delegate];
    [delegate2 didBeginProcessingConversationItems];
  }

  objc_initWeak(buf, self);
  _compactView = [(SRCompactViewController *)self _compactView];
  objc_copyWeak(v41, buf);
  v42 = diffCopy & 1;
  v41[1] = inputType;
  v43 = (diffCopy & 0x2F) != 0;
  v44 = v32;
  v45 = (diffCopy & 0x20) != 0;
  [_compactView prepareForUpdatesWithDiff:? updateBlock:?];

  objc_destroyWeak(v41);
  objc_destroyWeak(buf);
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(SRCompactViewController *)self _updateStatusViewVisibility];
}

- (BOOL)_updateActiveTranscriptItems:(id)items
{
  itemsCopy = items;
  _compactView = [(SRCompactViewController *)self _compactView];
  if ([(NSArray *)self->_activeTranscriptItems isEqualToArray:itemsCopy])
  {
LABEL_2:
    [_compactView setShowSnippetView:1 animated:1];
    v6 = 0;
    goto LABEL_33;
  }

  if (![(SRCompactViewController *)self contentDiffersBetweenItems:self->_activeTranscriptItems andItems:itemsCopy])
  {
    v26 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v50 = "[SRCompactViewController _updateActiveTranscriptItems:]";
      v51 = 2112;
      v52 = itemsCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s #compact: Transcript items %@ have the same content, not updating our compact view", buf, 0x16u);
    }

    goto LABEL_2;
  }

  v36 = _compactView;
  _navigationController = [(SRCompactViewController *)self _navigationController];
  v8 = [_navigationController popToRootViewControllerAnimated:1];

  v37 = itemsCopy;
  v9 = [itemsCopy copy];
  activeTranscriptItems = self->_activeTranscriptItems;
  self->_activeTranscriptItems = v9;

  v11 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_activeTranscriptItems;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v44;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(obj);
        }

        viewController = [*(*(&v43 + 1) + 8 * i) viewController];
        [v11 addObject:viewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v15;
          v19 = v11;
          v20 = v14;
          v21 = viewController;
          selfCopy = self;
          [v21 setDelegate:self];
          sashItem = [v21 sashItem];
          applicationBundleIdentifier = [sashItem applicationBundleIdentifier];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            appBundleId = [v21 appBundleId];

            applicationBundleIdentifier = appBundleId;
          }

          v14 = applicationBundleIdentifier;
          self = selfCopy;
          v11 = v19;
          v15 = v18;
        }

        if (objc_opt_respondsToSelector())
        {
          [viewController setIsInAmbient:self->_isInAmbient];
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  _compactView = v36;
  if (self->_isInAmbient)
  {
    [v36 configureAmbientAppIconForBundleIdentifier:v14];
  }

  v27 = objc_alloc_init(SRCompactResultPlatterViewController);
  [(SRCompactResultPlatterViewController *)v27 setSiriContentViewControllers:v11];
  _resultViewController = [(SRCompactViewController *)self _resultViewController];
  [_resultViewController setContentPlatterViewController:v27];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v29 = v11;
  v30 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v39 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v34 updateBackgroundIfNeeded];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v31);
  }

  v6 = 1;
  itemsCopy = v37;
LABEL_33:

  return v6;
}

- (void)_setActiveConversationTranscriptItems:(id)items
{
  itemsCopy = items;
  if ([(NSArray *)self->_activeConversationTranscriptItems isEqualToArray:itemsCopy]|| ![(SRCompactViewController *)self contentDiffersBetweenItems:itemsCopy andItems:self->_activeConversationTranscriptItems])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[SRCompactViewController _setActiveConversationTranscriptItems:]";
      v33 = 2112;
      v34 = itemsCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: Conversation Transcript has the same content, not updating our compact view for items: %@", buf, 0x16u);
    }
  }

  v24 = itemsCopy;
  v6 = [itemsCopy copy];
  activeConversationTranscriptItems = self->_activeConversationTranscriptItems;
  self->_activeConversationTranscriptItems = v6;

  v25 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_activeConversationTranscriptItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        viewController = [v13 viewController];
        v15 = viewController;
        if (viewController)
        {
          parentViewController = [viewController parentViewController];

          if (!parentViewController)
          {
            [(SiriSharedUIViewStackContainerController *)self->_viewStackContainerController addChildViewController:v15];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v15;
            isHintItem = [v13 isHintItem];
            v19 = isHintItem;
            if (isHintItem)
            {
              [v17 setIsHint:1];
            }

            [v17 setDelegate:self];
          }

          else
          {
            v19 = 0;
          }

          if (objc_opt_respondsToSelector())
          {
            [v15 setIsInAmbient:self->_isInAmbient];
          }

          if ((v19 & self->_isInAmbient) != 1)
          {
            view = [v15 view];
            [v25 addObject:view];

            if (parentViewController)
            {
              goto LABEL_24;
            }

LABEL_27:
            [v15 didMoveToParentViewController:self->_viewStackContainerController];
            goto LABEL_24;
          }

          v20 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v32 = "[SRCompactViewController _setActiveConversationTranscriptItems:]";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s #ambient removed hint view in ambient mode from conversationSnippets", buf, 0xCu);
          }

          if (!parentViewController)
          {
            goto LABEL_27;
          }
        }

LABEL_24:

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v22 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v10 = v22;
    }

    while (v22);
  }

  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView setConversationSnippetViews:v25];
}

- (void)_setActiveAdditionalPlatterTranscriptItems:(id)items
{
  itemsCopy = items;
  if ([(NSArray *)self->_activeAdditionalPlatterTranscriptItems isEqualToArray:itemsCopy]|| ![(SRCompactViewController *)self _contentDiffersBetweenPlatterItems:itemsCopy andItems:self->_activeAdditionalPlatterTranscriptItems])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "[SRCompactViewController _setActiveAdditionalPlatterTranscriptItems:]";
      v39 = 2112;
      v40 = itemsCopy;
      v6 = "%s #compact: Additional Platter Transcripts have the same content, not updating our compact view for items: %@";
      goto LABEL_8;
    }
  }

  else if (self->_isInAmbient)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "[SRCompactViewController _setActiveAdditionalPlatterTranscriptItems:]";
      v39 = 2112;
      v40 = itemsCopy;
      v6 = "%s #compact #ambient: Additional Platter Transcripts should not show in ambient, not updating our compact view for items: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x16u);
    }
  }

  else
  {
    v7 = [itemsCopy copy];
    activeAdditionalPlatterTranscriptItems = self->_activeAdditionalPlatterTranscriptItems;
    self->_activeAdditionalPlatterTranscriptItems = v7;

    v24 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = self->_activeAdditionalPlatterTranscriptItems;
    v25 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v23 = *v32;
      do
      {
        v9 = 0;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v9;
          v10 = *(*(&v31 + 1) + 8 * v9);
          v11 = +[NSMutableArray array];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                viewController = [*(*(&v27 + 1) + 8 * i) viewController];
                v18 = viewController;
                if (viewController)
                {
                  parentViewController = [viewController parentViewController];

                  if (!parentViewController)
                  {
                    [(SiriSharedUIViewStackContainerController *)self->_viewStackContainerController addChildViewController:v18];
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v18 setDelegate:self];
                  }

                  view = [v18 view];
                  [v11 addObject:view];

                  if (!parentViewController)
                  {
                    [v18 didMoveToParentViewController:self->_viewStackContainerController];
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v14);
          }

          [v24 addObject:v11];
          v9 = v26 + 1;
        }

        while ((v26 + 1) != v25);
        v25 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }

    _compactView = [(SRCompactViewController *)self _compactView];
    [_compactView setAdditionalContentSnippetViews:v24];
  }
}

- (void)_setServerUtterances:(id)utterances
{
  if (self->_serverUtterances != utterances)
  {
    utterancesCopy = utterances;
    v5 = [utterancesCopy copy];
    serverUtterances = self->_serverUtterances;
    self->_serverUtterances = v5;

    _compactView = [(SRCompactViewController *)self _compactView];
    [_compactView setServerUtterances:utterancesCopy];
  }
}

- (void)_setSpeechRecognitionHypothesis:(id)hypothesis
{
  if (self->_speechRecognitionHypothesis != hypothesis)
  {
    hypothesisCopy = hypothesis;
    v5 = [hypothesisCopy copy];
    speechRecognitionHypothesis = self->_speechRecognitionHypothesis;
    self->_speechRecognitionHypothesis = v5;

    _compactView = [(SRCompactViewController *)self _compactView];
    [_compactView setSpeechRecognitionHypothesis:hypothesisCopy];
  }
}

- (BOOL)hasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_alloc_init(SRCompactViewControllerContentTester);
  _compactView = [(SRCompactViewController *)self _compactView];
  v8 = objc_alloc_init(SRCompactViewControllerMutableContentTesterState);
  [(SRCompactViewControllerMutableContentTesterState *)v8 setDeviceIsPad:SiriUIDeviceIsPad()];
  transitionController = [(SiriUINavigationController *)self->_navigationController transitionController];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackIsPopping:](v8, "setNavigationStackIsPopping:", [transitionController operation] == 2);

  viewControllers = [(SiriUINavigationController *)self->_navigationController viewControllers];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackSize:](v8, "setNavigationStackSize:", [viewControllers count]);

  viewControllers2 = [(SiriUINavigationController *)self->_navigationController viewControllers];
  if ([viewControllers2 count] <= 1)
  {
    navigationStackIsPopping = [(SRCompactViewControllerMutableContentTesterState *)v8 navigationStackIsPopping];

    if ((navigationStackIsPopping & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  visibleViewController = [(SiriUINavigationController *)self->_navigationController visibleViewController];
  view = [visibleViewController view];
  [_compactView convertPoint:view toView:{x, y}];
  v16 = v15;
  v18 = v17;

  [(SRCompactViewControllerMutableContentTesterState *)v8 setNavigationBarHasContent:[(SRCompactViewController *)self _navigationBarHasContentAtPoint:x, y]];
  visibleViewController2 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
  objc_opt_class();
  LOBYTE(view) = objc_opt_isKindOfClass();

  if (view)
  {
    visibleViewController3 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
    -[SRCompactViewControllerMutableContentTesterState setMultiLevelViewHasContent:](v8, "setMultiLevelViewHasContent:", [visibleViewController3 hasContentAtPoint:{v16, v18}]);
  }

  else
  {
    [(SRCompactViewControllerMutableContentTesterState *)v8 setMultiLevelViewHasContent:1];
  }

LABEL_7:
  [(SRCompactViewControllerMutableContentTesterState *)v8 setKeyboardHasContent:[(SRCompactViewController *)self _keyboardHasContentAtPoint:x, y]];
  [(SRCompactViewControllerMutableContentTesterState *)v8 setEditableUtteranceViewHasContent:[(SRCompactEditableUtterancePresenter *)self->_editableUtterancePresenter hasContentAtPoint:x, y]];
  -[SRCompactViewControllerMutableContentTesterState setCompactViewHasContent:](v8, "setCompactViewHasContent:", [_compactView hasContentAtPoint:{x, y}]);
  if (self->_siriViewControllerIsEditing && ![(SRCompactViewControllerContentTester *)v6 hasContentForState:v8])
  {
    [(SRCompactViewController *)self siriDidTapOutsideContent];
  }

  [(SRCompactViewControllerMutableContentTesterState *)v8 setSiriViewControllerIsEditing:self->_siriViewControllerIsEditing];
  view2 = [(SRCompactViewController *)self view];
  window = [view2 window];

  if (window)
  {
    -[SRCompactViewControllerMutableContentTesterState setContextMenuIsPresented:](v8, "setContextMenuIsPresented:", [window contextMenuIsPresented]);
  }

  v23 = [(SRCompactViewControllerContentTester *)v6 hasContentForState:v8];

  return v23;
}

- (void)_setBottomContentInsetComponents:(id)components animatedWithDuration:(double)duration animationOptions:(unint64_t)options
{
  self->_bottomContentInsetComponents = components;
  if (components.var0 >= components.var1)
  {
    var0 = components.var0;
  }

  else
  {
    var0 = components.var1;
  }

  v10 = objc_alloc_init(SiriSharedUIAnimationContext);
  [v10 setAnimationOptions:options];
  [v10 setAnimationDuration:duration];
  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView setBottomContentInset:v10 animatedWithContext:var0];
}

- (void)setBottomContentInset:(double)inset
{
  [(SRCompactViewController *)self _bottomContentInsetComponents];

  [(SRCompactViewController *)self _setBottomContentInsetComponents:inset];
}

- (void)setTopContentInset:(double)inset animated:(BOOL)animated
{
  if (self->_topInset != inset)
  {
    [(SRCompactViewController *)self updateTopInset:animated animated:?];
  }
}

- (void)_updateBottomContentInsetKeyboardComponent
{
  [(SRCompactViewController *)self _bottomContentInsetComponents];
  v4 = v3;
  _keyboardState = [(SRCompactViewController *)self _keyboardState];
  [_keyboardState frameForAnimation];
  [(SRCompactViewController *)self _convertRectFromKeyboard:?];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v9 = 0.0;
  if (CGRectGetHeight(v16) != 0.0)
  {
    _compactView = [(SRCompactViewController *)self _compactView];
    [_compactView bounds];
    v11 = CGRectGetHeight(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v9 = v11 - CGRectGetMinY(v18);
  }

  animation = [_keyboardState animation];
  [animation duration];
  -[SRCompactViewController _setBottomContentInsetComponents:animatedWithDuration:animationOptions:](self, "_setBottomContentInsetComponents:animatedWithDuration:animationOptions:", [animation options], v4, v9, v13);
}

- (void)siriDidActivate
{
  if ([(SRCompactViewController *)self _inputType]== 1)
  {
    _textRequestViewController = [(SRCompactViewController *)self _textRequestViewController];
    view = [_textRequestViewController view];
    [view becomeFirstResponder];
  }
}

- (void)siriDidDeactivate
{
  if ([(SRCompactViewController *)self _inputType]== 1)
  {
    _textRequestViewController = [(SRCompactViewController *)self _textRequestViewController];
    view = [_textRequestViewController view];
    [view resignFirstResponder];
  }

  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_100167820];
}

- (void)showFullScreenEffect:(id)effect
{
  effectCopy = effect;
  if (!self->_fullScreenEffects)
  {
    v4 = objc_alloc_init(SRFullScreenEffects);
    fullScreenEffects = self->_fullScreenEffects;
    self->_fullScreenEffects = v4;
  }

  _compactView = [(SRCompactViewController *)self _compactView];
  v7 = [(SRFullScreenEffects *)self->_fullScreenEffects effectForAceObject:effectCopy];
  [_compactView showFullScreenEffect:v7];
}

- (BOOL)didReceiveUpdateVisualResponseCommand:(id)command
{
  commandCopy = command;
  viewId = [commandCopy viewId];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  contentPlatterViewController = [(SiriSharedUICompactResultViewController *)self->_resultViewController contentPlatterViewController];
  contentViewControllers = [contentPlatterViewController contentViewControllers];

  v7 = [contentViewControllers countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = commandCopy;
    v9 = *v27;
    v10 = &swift_allocError_ptr;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(contentViewControllers);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          aceObject = [v13 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 aceObject];
            v15 = contentViewControllers;
            v17 = v16 = v10;
            [v17 viewId];
            v19 = v18 = v9;
            v20 = [v19 isEqualToString:viewId];

            v9 = v18;
            v10 = v16;
            contentViewControllers = v15;

            if (v20)
            {
              commandCopy = v24;
              stateData = [v24 stateData];
              [v13 updateSharedState:stateData];

              v22 = 1;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }

      v8 = [contentViewControllers countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
    v22 = 0;
    commandCopy = v24;
  }

  else
  {
    v22 = 0;
  }

LABEL_16:

  return v22;
}

- (void)setActiveRequestOptions:(id)options
{
  optionsCopy = options;
  if (self->_activeRequestOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_activeRequestOptions, options);
    [(SRCompactViewController *)self _updateAmbientAvailability];
    optionsCopy = v6;
  }
}

- (void)_registerForAmbientPresentationTraitChange
{
  [(SRCompactViewController *)self _updateAmbientAvailability];
  objc_initWeak(&location, self);
  v3 = objc_opt_self();
  v9 = v3;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000395A0;
  v6[3] = &unk_100167140;
  objc_copyWeak(&v7, &location);
  v5 = [(SRCompactViewController *)self registerForTraitChanges:v4 withHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_updateAmbientAvailability
{
  view = [(SRCompactViewController *)self view];
  traitCollection = [view traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSNumber numberWithBool:isAmbientPresented];
    v9 = 136315394;
    v10 = "[SRCompactViewController _updateAmbientAvailability]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #ambient - is Presented - %@", &v9, 0x16u);
  }

  [(SRCompactViewController *)self setIsInAmbient:isAmbientPresented];
}

- (void)setIsInAmbient:(BOOL)ambient
{
  if (self->_isInAmbient != ambient)
  {
    ambientCopy = ambient;
    self->_isInAmbient = ambient;
    v64 = 48;
    if (ambient)
    {
      v5 = +[UIScreen mainScreen];
      [v5 scale];
      v7 = v6 * SiriSharedUICompactAmbientContentScaleAmount;

      _viewStackContainerController = [(SRCompactViewController *)self _viewStackContainerController];
      traitOverrides = [_viewStackContainerController traitOverrides];
      [traitOverrides setDisplayScale:v7];

      _viewStackContainerController2 = [(SRCompactViewController *)self _viewStackContainerController];
      traitOverrides2 = [_viewStackContainerController2 traitOverrides];
      [traitOverrides2 setUserInterfaceStyle:2];

      _navigationController = [(SRCompactViewController *)self _navigationController];
      traitOverrides3 = [_navigationController traitOverrides];
      [traitOverrides3 setDisplayScale:v7];

      _navigationController2 = [(SRCompactViewController *)self _navigationController];
      traitOverrides4 = [_navigationController2 traitOverrides];
      [traitOverrides4 setUserInterfaceStyle:2];

      traitOverrides5 = [(SRCompactViewController *)self traitOverrides];
      [traitOverrides5 setDisplayScale:v7];

      traitOverrides6 = [(SRCompactViewController *)self traitOverrides];
      [traitOverrides6 setUserInterfaceStyle:2];
    }

    else
    {
      _viewStackContainerController3 = [(SRCompactViewController *)self _viewStackContainerController];
      traitOverrides7 = [_viewStackContainerController3 traitOverrides];
      v20 = objc_opt_self();
      [traitOverrides7 removeTrait:v20];

      _viewStackContainerController4 = [(SRCompactViewController *)self _viewStackContainerController];
      traitOverrides8 = [_viewStackContainerController4 traitOverrides];
      v23 = objc_opt_self();
      [traitOverrides8 removeTrait:v23];

      _navigationController3 = [(SRCompactViewController *)self _navigationController];
      traitOverrides9 = [_navigationController3 traitOverrides];
      v26 = objc_opt_self();
      [traitOverrides9 removeTrait:v26];

      _navigationController4 = [(SRCompactViewController *)self _navigationController];
      traitOverrides10 = [_navigationController4 traitOverrides];
      v29 = objc_opt_self();
      [traitOverrides10 removeTrait:v29];

      traitOverrides11 = [(SRCompactViewController *)self traitOverrides];
      v31 = objc_opt_self();
      [traitOverrides11 removeTrait:v31];

      traitOverrides6 = [(SRCompactViewController *)self traitOverrides];
      v32 = objc_opt_self();
      [traitOverrides6 removeTrait:v32];
    }

    _compactView = [(SRCompactViewController *)self _compactView];
    resultView = [_compactView resultView];
    [resultView setIsInAmbient:ambientCopy];

    _compactView2 = [(SRCompactViewController *)self _compactView];
    conversationView = [_compactView2 conversationView];
    [conversationView setIsInAmbient:ambientCopy];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    selfCopy = self;
    _navigationController5 = [(SRCompactViewController *)self _navigationController];
    viewControllers = [_navigationController5 viewControllers];

    v39 = [viewControllers countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v75;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v75 != v41)
          {
            objc_enumerationMutation(viewControllers);
          }

          v43 = *(*(&v74 + 1) + 8 * i);
          v44 = objc_opt_class();
          v45 = sub_100019948(v44, v43);
          if (v45)
          {
            v46 = objc_opt_class();
            contentViewController = [v45 contentViewController];
            v48 = sub_100019948(v46, contentViewController);

            if (v48)
            {
              contentPlatterView = [v48 contentPlatterView];
              [contentPlatterView setIsInAmbient:ambientCopy];
            }
          }
        }

        v40 = [viewControllers countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v40);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    _compactView3 = [(SRCompactViewController *)selfCopy _compactView];
    additionalContentViews = [_compactView3 additionalContentViews];

    v52 = [additionalContentViews countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v71;
      do
      {
        for (j = 0; j != v53; j = j + 1)
        {
          if (*v71 != v54)
          {
            objc_enumerationMutation(additionalContentViews);
          }

          [*(*(&v70 + 1) + 8 * j) setIsInAmbient:{ambientCopy, v64}];
        }

        v53 = [additionalContentViews countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v53);
    }

    v56 = [(NSArray *)selfCopy->_activeTranscriptItems arrayByAddingObjectsFromArray:selfCopy->_activeConversationTranscriptItems];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v57 = [v56 countByEnumeratingWithState:&v66 objects:v78 count:16];
    v58 = v64;
    if (v57)
    {
      v59 = v57;
      v60 = *v67;
      do
      {
        for (k = 0; k != v59; k = k + 1)
        {
          if (*v67 != v60)
          {
            objc_enumerationMutation(v56);
          }

          viewController = [*(*(&v66 + 1) + 8 * k) viewController];
          if (objc_opt_respondsToSelector())
          {
            [viewController setIsInAmbient:*(&selfCopy->super.super.super.isa + v58)];
          }
        }

        v59 = [v56 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v59);
    }

    _compactView4 = [(SRCompactViewController *)selfCopy _compactView];
    [_compactView4 setIsInAmbient:ambientCopy];
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

    _viewStackContainerController = [(SRCompactViewController *)self _viewStackContainerController];
    traitOverrides = [_viewStackContainerController traitOverrides];
    [traitOverrides setDisplayScale:v7];

    self->_isInAmbientInteractivity = interactivityCopy;
    _compactView = [(SRCompactViewController *)self _compactView];
    resultView = [_compactView resultView];
    [resultView setIsInAmbientInteractivity:interactivityCopy];

    _compactView2 = [(SRCompactViewController *)self _compactView];
    conversationView = [_compactView2 conversationView];
    [conversationView setIsInAmbientInteractivity:interactivityCopy];

    v14 = [(NSArray *)self->_activeTranscriptItems arrayByAddingObjectsFromArray:self->_activeConversationTranscriptItems];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          viewController = [*(*(&v21 + 1) + 8 * v18) viewController];
          if (objc_opt_respondsToSelector())
          {
            [viewController setIsInAmbientInteractivity:interactivityCopy];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    _compactView3 = [(SRCompactViewController *)self _compactView];
    [_compactView3 setIsInAmbientInteractivity:interactivityCopy];
  }
}

- (void)siriDidStartSpeakingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003A0C0;
  v8[3] = &unk_100167378;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:v8];
}

- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty
{
  identifierCopy = identifier;
  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A1F8;
  v10[3] = &unk_1001673A0;
  v11 = identifierCopy;
  emptyCopy = empty;
  v9 = identifierCopy;
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:v10];
}

- (void)siriDidUpdateASRWithRecognition:(id)recognition
{
  recognitionCopy = recognition;
  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003A324;
  v8[3] = &unk_100167378;
  v9 = recognitionCopy;
  v7 = recognitionCopy;
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:v8];
}

- (void)siriDidTapOutsideContent
{
  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_100167840];
}

- (void)siriWillStartRequest
{
  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_100167860];
}

- (void)siriIsIdleAndQuiet
{
  _navigationController = [(SRCompactViewController *)self _navigationController];
  visibleViewController = [_navigationController visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:visibleViewController withBlock:&stru_100167880];
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

        [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:*(*(&v13 + 1) + 8 * v12) withBlock:blockCopy];
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
  _queuedNavigationContentViewController = [(SRCompactViewController *)self _queuedNavigationContentViewController];
  if (_queuedNavigationContentViewController)
  {
    v5 = _queuedNavigationContentViewController;
    _navigationController = [(SRCompactViewController *)self _navigationController];
    [_navigationController pushViewController:v5 animated:1];

    [(SRCompactViewController *)self _setQueuedNavigationContentViewController:0];
    [(SRCompactViewController *)self userDrilledIntoSnippet];
    _queuedNavigationContentViewController = v5;
  }
}

- (void)dismissalGestureRecognizerDidFinish:(id)finish shouldDismiss:(BOOL)dismiss
{
  if (dismiss)
  {
    delegate = [(SRCompactViewController *)self delegate];
    [delegate endSiriSessionForViewController:self withDismissalReason:24];
  }
}

- (BOOL)shouldBeginDismissalGestureRecognizer:(id)recognizer withTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  view = [touchCopy view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    view3 = 0;
LABEL_6:
    view2 = [recognizerCopy view];
    [touchCopy locationInView:view2];
    v13 = v12;
    v15 = v14;
    _compactView = [(SRCompactViewController *)self _compactView];
    v10 = [_compactView hasContentAtPoint:{v13, v15}];

    goto LABEL_7;
  }

  view3 = [touchCopy view];

  if (!view3 || ([view3 isEnabled] & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)siriViewController:(id)controller openURL:(id)l completion:(id)completion
{
  instrumentationSupplement = self->_instrumentationSupplement;
  completionCopy = completion;
  lCopy = l;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:controller aceCommand:0 URL:lCopy appID:0 sashItem:0];
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self openURL:lCopy completion:completionCopy];
}

- (void)siriSnippetViewController:(id)controller performAceCommands:(id)commands sashItem:(id)item
{
  instrumentationSupplement = self->_instrumentationSupplement;
  commandsCopy = commands;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:controller aceCommands:commandsCopy sashItem:item];
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self performAceCommands:commandsCopy completion:0];
}

- (void)siriViewController:(id)controller performAceCommands:(id)commands completion:(id)completion
{
  completionCopy = completion;
  commandsCopy = commands;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self performAceCommands:commandsCopy completion:completionCopy];
}

- (double)boundingWidthForSnippetViewController:(id)controller
{
  delegate = [(SRCompactViewController *)self delegate];
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
  delegate = [(SRCompactViewController *)self delegate];
  v6 = [delegate effectiveCoreLocationBundleForCompactViewController:self];

  if (!v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB904(locationCopy, v7);
    }
  }

  return v6;
}

- (double)siriViewControllerExpectedWidth:(id)width
{
  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView resultViewContentSize];
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
    _compactView = [(SRCompactViewController *)self _compactView];
    topViewController = [(SiriUINavigationController *)self->_navigationController topViewController];
    view = [topViewController view];
    viewStackContainer = [_compactView viewStackContainer];
    hostingView = [viewStackContainer hostingView];

    if (view == hostingView)
    {
      view2 = [changeCopy view];
      [_compactView snippetLayoutDidUpdateForView:view2 isEditing:self->_siriViewControllerIsEditing];
    }

    else
    {
      topViewController2 = [(SiriUINavigationController *)self->_navigationController topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      view2 = [(SiriUINavigationController *)self->_navigationController topViewController];
      [view2 contentViewDidUpdateSize];
    }

LABEL_7:
    _navigationController = [(SRCompactViewController *)self _navigationController];
    transitionController = [_navigationController transitionController];
    if ([transitionController operation])
    {
    }

    else
    {
      _queuedNavigationContentViewController = [(SRCompactViewController *)self _queuedNavigationContentViewController];

      if (_queuedNavigationContentViewController)
      {
        goto LABEL_11;
      }

      _navigationController = [(SRCompactViewController *)self _navigationStackLayoutController];
      [_navigationController layout];
    }

LABEL_11:
  }
}

- (void)siriViewControllerHeightDidChange:(id)change pinTopOfSnippet:(BOOL)snippet
{
  v4 = [(SRCompactViewController *)self _compactView:change];
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
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  snippetsCopy = snippets;
  v5 = [snippetsCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v5;
  v7 = *v45;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v45 != v7)
      {
        objc_enumerationMutation(snippetsCopy);
      }

      v9 = *(*(&v44 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
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
        v48 = v17;
        v20 = [NSArray arrayWithObjects:&v48 count:1];
        [v19 setContentViewControllers:v20];

        v21 = objc_alloc_init(SiriUINavigationContentViewController);
        [v21 setContentViewController:v19];
        v42 = v19;
        if (self->_isInAmbient)
        {
          [v19 contentPlatterView];
          v41 = v21;
          v23 = v22 = shouldAutomaticallyScaleContentInAmbient;
          _resultViewController = [(SRCompactViewController *)self _resultViewController];
          compactResultView = [_resultViewController compactResultView];
          [v23 setDelegate:compactResultView];

          shouldAutomaticallyScaleContentInAmbient = v22;
          v21 = v41;
          v19 = v42;
        }

        contentPlatterView = [v19 contentPlatterView];
        [contentPlatterView setIsNextLevelCard:1];

        contentPlatterView2 = [v19 contentPlatterView];
        [contentPlatterView2 setIsInAmbient:self->_isInAmbient];

        contentPlatterView3 = [v19 contentPlatterView];
        [contentPlatterView3 setAllowAutomaticContentViewsScaling:shouldAutomaticallyScaleContentInAmbient];

        aceObject = [v17 aceObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) != 0 && SiriUIDeviceIsPad())
        {
          contentViewController = [v21 contentViewController];
          view2 = [contentViewController view];
          view3 = [(SRCompactViewController *)self view];
          [view3 frame];
          [view2 setFrame:{0.0, 0.0, CGRectGetWidth(v50), 0.0}];

          contentViewController2 = [v21 contentViewController];
          view4 = [contentViewController2 view];
          [view4 setNeedsLayout];

          contentViewController3 = [v21 contentViewController];
          view5 = [contentViewController3 view];
          [view5 layoutIfNeeded];
        }

        if (SiriUIDeviceIsPad())
        {
          [v21 setContentLayoutEnabled:0];
        }

        else
        {
          [(SRCompactViewController *)self _updateAdditionalSafeAreaInsetsForNavigationContentViewController:v21];
        }

        [(SRCompactViewController *)self _setQueuedNavigationContentViewController:v21];
        if ([v17 isLoading])
        {
          aceObject2 = [v17 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
          }

          else
          {
            aceObject3 = [v17 aceObject];
            objc_opt_class();
            v40 = objc_opt_isKindOfClass();

            if ((v40 & 1) == 0)
            {
LABEL_31:
              [(SiriSharedUICompactHostingInstrumentationSupplement *)self->_instrumentationSupplement logDrillInInteractionForSnippetViewControllerIfNecessary:v17];

              goto LABEL_32;
            }
          }
        }

        [(SRCompactViewController *)self _pushQueuedNavigationContentViewController];
        goto LABEL_31;
      }
    }

    v6 = [snippetsCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_32:
}

- (void)_updateAdditionalSafeAreaInsetsForNavigationContentViewController:(id)controller
{
  controllerCopy = controller;
  if ((SiriUIDeviceIsPad() & 1) == 0)
  {
    _compactView = [(SRCompactViewController *)self _compactView];
    [_compactView safeAreaInsets];
    v6 = 0.0 - v5;
    [_compactView effectiveBottomContentInset];
    [controllerCopy setAdditionalSafeAreaInsets:{0.0, 8.0, v6 + v7 + 14.0, 8.0}];
  }
}

- (void)siriSnippetViewControllerViewDidLoad:(id)load
{
  loadCopy = load;
  if (loadCopy)
  {
    _compactView = [(SRCompactViewController *)self _compactView];
    view = [loadCopy view];
    [_compactView snippetLayoutDidUpdateForView:view isEditing:self->_siriViewControllerIsEditing];

    [_compactView setNeedsLayout];
    aceObject = [loadCopy aceObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && SiriUIDeviceIsPad())
    {
      view2 = [loadCopy view];
      view3 = [(SRCompactViewController *)self view];
      [view3 frame];
      [view2 setFrame:{0.0, 0.0, CGRectGetWidth(v14), 0.0}];

      view4 = [loadCopy view];
      [view4 setNeedsLayout];

      view5 = [loadCopy view];
      [view5 layoutIfNeeded];
    }

    [(SRCompactViewController *)self _pushQueuedNavigationContentViewController];
  }
}

- (void)userTouchedSnippet
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate userTouchedSnippet];
}

- (void)siriSnippetViewController:(id)controller informHostOfBackgroundView:(id)view isSnippetAsyncColored:(BOOL)colored
{
  controllerCopy = controller;
  viewCopy = view;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[SRCompactViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v9 = viewCopy;
  contentPlatterViewController = [(SiriSharedUICompactResultViewController *)self->_resultViewController contentPlatterViewController];
  contentViewControllers = [contentPlatterViewController contentViewControllers];
  v11 = contentViewControllers;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [contentViewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v16 == controllerCopy)
          {
            contentPlatterViewController2 = [(SiriSharedUICompactResultViewController *)self->_resultViewController contentPlatterViewController];
            contentPlatterView = [contentPlatterViewController2 contentPlatterView];
            [contentPlatterView setBackgroundView:v9];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

- (void)siriSnippetViewController:(id)controller isBackgroundColorUpdateSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [NSNumber numberWithBool:successfulCopy];
    v8 = 136315394;
    v9 = "[SRCompactViewController siriSnippetViewController:isBackgroundColorUpdateSuccessful:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isSuccessful %@", &v8, 0x16u);
  }
}

- (void)siriSnippetViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self handleStartLocalRequest:requestCopy turnIdentifier:identifierCopy];
}

- (void)userDrilledIntoSnippet
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate userDrilledIntoSnippet];
}

- (void)cancelSpeakingForSiriViewController:(id)controller
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate stopSpeakingForCompactViewController:self];
}

- (void)siriViewController:(id)controller speakText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self speakText:textCopy isPhonetic:0 completion:completionCopy];
}

- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)interaction
{
  delegate = [(SRCompactViewController *)self delegate];
  v5 = [delegate lockStateForCompactViewController:self];

  return v5 != 0;
}

- (id)localeForSiriViewController:(id)controller
{
  delegate = [(SRCompactViewController *)self delegate];
  v5 = [delegate localeForCompactViewController:self];

  return v5;
}

- (void)siriSnippetViewController:(id)controller willDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate siriCompactViewController:self willDismissViewController:viewControllerCopy];
}

- (void)siriSnippetViewController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate siriCompactViewController:self willPresentViewController:viewControllerCopy];
}

- (void)siriViewControllerRequestsDeviceUnlock:(id)unlock completion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRCompactViewController *)self delegate];
  v7 = [delegate lockStateForCompactViewController:self];

  if ((v7 & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003BEDC;
    v9[3] = &unk_100167478;
    v10 = completionCopy;
    [WeakRetained requestToHandlePasscodeUnlockWithClient:0 withCompletion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)siriViewControllerWillBeginEditing:(id)editing
{
  self->_siriViewControllerIsEditing = 1;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate cancelRequestForViewController:self];

  delegate2 = [(SRCompactViewController *)self delegate];
  [delegate2 compactViewControllerRequestsHIDEventDefferal:self];

  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView setConversationViewHidden:1];
}

- (void)siriViewControllerDidEndEditing:(id)editing
{
  self->_siriViewControllerIsEditing = 0;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewControllerCancelHIDEventDefferal:self];

  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView setConversationViewHidden:0];
}

- (void)siriViewControllerViewDidAppear:(id)appear isTopLevelViewController:(BOOL)controller
{
  if (controller)
  {
    appearCopy = appear;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    aceObject = [appearCopy aceObject];

    [WeakRetained compactViewController:self viewDidAppearForAceObject:aceObject];
  }
}

- (void)siriViewControllerViewDidDisappear:(id)disappear isTopLevelViewController:(BOOL)controller
{
  if (controller)
  {
    disappearCopy = disappear;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    aceObject = [disappearCopy aceObject];

    [WeakRetained compactViewController:self viewDidDisappearForAceObject:aceObject];
  }
}

- (void)_setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self setStatusViewHidden:hiddenCopy];
}

- (void)_updateStatusViewVisibility
{
  v3 = [(SRCompactViewController *)self _hidesStatusViewForInputType:[(SRCompactViewController *)self _inputType]];
  v4 = (v3 | [(SRCompactViewController *)self _snippetViewControllerRequestsStatusViewHidden]) & 1;

  [(SRCompactViewController *)self _setStatusViewHidden:v4];
}

- (void)_updateTextRequestViewVisibility
{
  v3 = [(SRCompactViewController *)self _hidesTextRequestViewForInputType:[(SRCompactViewController *)self _inputType]];
  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView setHidesTextRequestView:v3];
}

- (void)_willBeginEditingOfType:(int64_t)type
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self willBeginEditingOfType:type];
}

- (void)_didEndEditing
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewControllerDidEndEditing:self];
}

- (void)scrollDidBeginFromView:(id)view
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self reduceOrbOpacity:1];
}

- (void)scrollDidEndFromView:(id)view
{
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self reduceOrbOpacity:0];
}

- (void)tapToEditRequestedFromView:(id)view
{
  viewCopy = view;
  _speechRecognitionHypothesis = [(SRCompactViewController *)self _speechRecognitionHypothesis];
  backingAceObject = [_speechRecognitionHypothesis backingAceObject];
  refId = [backingAceObject refId];

  v8 = [SiriSharedUIUserUtteranceEditingDataManager alloc];
  _speechRecognitionHypothesis2 = [(SRCompactViewController *)self _speechRecognitionHypothesis];
  userUtterance = [_speechRecognitionHypothesis2 userUtterance];
  v11 = [v8 initWithUserUtterance:userUtterance backingAceObjectRefId:refId];

  v12 = [[SRCompactEditableUtterancePresenter alloc] initWithUserEditingDataManager:v11 delegate:self];
  editableUtterancePresenter = self->_editableUtterancePresenter;
  self->_editableUtterancePresenter = v12;

  delegate = [(SRCompactViewController *)self delegate];
  [delegate tapToEditPresented];

  objc_initWeak(&location, self);
  v15 = self->_editableUtterancePresenter;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003C554;
  v16[3] = &unk_100167718;
  objc_copyWeak(&v17, &location);
  [(SRCompactEditableUtterancePresenter *)v15 presentUtteranceViewControllerFromViewController:self animateAlongsideTransition:v16 completion:0];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldMoveViewStackForTapToEdit
{
  _resultViewController = [(SRCompactViewController *)self _resultViewController];
  contentPlatterViewController = [_resultViewController contentPlatterViewController];
  contentViewControllers = [contentPlatterViewController contentViewControllers];
  v5 = [contentViewControllers count];

  if (v5)
  {
    return 0;
  }

  else
  {
    return SiriUIDeviceIsPad() ^ 1;
  }
}

- (void)compactView:(id)view viewDidAppearForAceObject:(id)object
{
  objectCopy = object;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactViewController:self viewDidAppearForAceObject:objectCopy];
}

- (void)compactView:(id)view viewDidDisappearForAceObject:(id)object
{
  objectCopy = object;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactViewController:self viewDidDisappearForAceObject:objectCopy];
}

- (void)compactView:(id)view didChangeEffectiveBottomContentInsetAnimatedWithContext:(id)context
{
  contextCopy = context;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  _navigationController = [(SRCompactViewController *)self _navigationController];
  viewControllers = [_navigationController viewControllers];

  obj = viewControllers;
  v9 = [viewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = objc_opt_class();
        v15 = sub_100019948(v14, v13);
        if (v15)
        {
          [(SRCompactViewController *)selfCopy _updateAdditionalSafeAreaInsetsForNavigationContentViewController:v15];
          [v15 contentViewDidUpdateSize];
          [contextCopy animationDuration];
          v17 = v16;
          animationOptions = [contextCopy animationOptions];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10003C94C;
          v20[3] = &unk_100167010;
          v21 = v15;
          [UIView animateWithDuration:animationOptions delay:v20 options:0 animations:v17 completion:0.0];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (double)maximumHeightForCompactView:(id)view
{
  viewStackContainer = [(SiriSharedUIViewStackContainerController *)self->_viewStackContainerController viewStackContainer];
  hostingView = [viewStackContainer hostingView];
  [hostingView frame];
  Height = CGRectGetHeight(v7);

  return Height;
}

- (CGSize)maxSizeForSnippet
{
  _compactView = [(SRCompactViewController *)self _compactView];
  [_compactView resultViewContentSize];
  v5 = v4;

  _compactView2 = [(SRCompactViewController *)self _compactView];
  _resultViewController = [(SRCompactViewController *)self _resultViewController];
  compactResultView = [_resultViewController compactResultView];
  [_compactView2 maximumHeightForResultView:compactResultView];
  v10 = v9;

  v11 = v5;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)editableUtterancePresenter:(id)presenter didFinishEditingWithText:(id)text selectionResults:(id)results shouldStartNewRequest:(BOOL)request
{
  requestCopy = request;
  textCopy = text;
  resultsCopy = results;
  if (requestCopy)
  {
    _compactView = [(SRCompactViewController *)self _compactView];
    v12 = [AFUserUtterance alloc];
    _speechRecognitionHypothesis = [(SRCompactViewController *)self _speechRecognitionHypothesis];
    userUtterance = [_speechRecognitionHypothesis userUtterance];
    correctionIdentifier = [userUtterance correctionIdentifier];
    v16 = [v12 initWithString:textCopy correctionIdentifier:correctionIdentifier];

    v17 = [[SRUIFSpeechRecognitionHypothesis alloc] initWithUserUtterance:v16 backingAceObject:0 isFinal:1];
    [_compactView setSpeechRecognitionHypothesis:v17];

    [_compactView setServerUtterances:&__NSArray0__struct];
    [_compactView setShowSnippetView:0 animated:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  userUtterance2 = [(SRUIFSpeechRecognitionHypothesis *)self->_speechRecognitionHypothesis userUtterance];
  [WeakRetained viewController:self didFinishEditingUtteranceWithText:textCopy originalUserUtterance:userUtterance2 selectionResults:resultsCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CCA4;
  block[3] = &unk_100167010;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)editableUtterancePresenter:(id)presenter openURL:(id)l
{
  lCopy = l;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self openURL:lCopy completion:0];
}

- (void)willDismissEditableUtterancePresenter:(id)presenter transitionCoordinator:(id)coordinator
{
  presenterCopy = presenter;
  coordinatorCopy = coordinator;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003CEA8;
  v10[3] = &unk_1001678A8;
  objc_copyWeak(&v11, &location);
  v10[4] = v13;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003CF30;
  v8[3] = &unk_1001678D0;
  v8[4] = v13;
  objc_copyWeak(&v9, &location);
  [coordinatorCopy animateAlongsideTransition:v10 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(v13, 8);
}

- (void)_updateKeyboardStateFromNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [[SRCompactKeyboardState alloc] initWithKeyboardNotification:notificationCopy];

  [(SRCompactViewController *)self _setKeyboardState:v5];
}

- (void)_keyboardWillHideForAmbient:(id)ambient
{
  if (self->_isInAmbient)
  {
    [(SRCompactViewController *)self _updateIsInAmbientWithInteractivity:0];
  }
}

- (void)_keyboardWillShowForAmbient:(id)ambient
{
  if (self->_isInAmbient)
  {
    [(SRCompactViewController *)self _updateIsInAmbientWithInteractivity:1];
  }
}

- (void)_setKeyboardState:(id)state
{
  v4 = [state copy];
  keyboardState = self->_keyboardState;
  self->_keyboardState = v4;

  [(SRCompactViewController *)self _updateBottomContentInsetKeyboardComponent];
}

- (CGRect)_convertRectFromKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  view = [(SRCompactViewController *)self view];
  window = [view window];
  screen = [window screen];

  coordinateSpace = [screen coordinateSpace];
  view2 = [(SRCompactViewController *)self view];
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
  _keyboardState = [(SRCompactViewController *)self _keyboardState];
  [_keyboardState frame];
  [(SRCompactViewController *)self _convertRectFromKeyboard:?];
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
  if (self->_inputType != type)
  {
    self->_inputType = type;
    [(SRCompactViewController *)self _updateTextRequestViewVisibility];

    [(SRCompactViewController *)self _updateStatusViewVisibility];
  }
}

- (void)textRequestControllerWillBeginTextEditMenuInteraction:(id)interaction
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRCompactViewController textRequestControllerWillBeginTextEditMenuInteraction:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while edit menu is up", &v6, 0xCu);
  }

  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)textRequestControllerDidEndTextEditMenuInteraction:(id)interaction
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRCompactViewController textRequestControllerDidEndTextEditMenuInteraction:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - edit menu is removed, no longer preventing touches from dismissing Siri", &v6, 0xCu);
  }

  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)textRequestController:(id)controller siriRequestCommittedWithText:(id)text
{
  textCopy = text;
  controllerCopy = controller;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self siriRequestEnteredWithText:textCopy];

  [controllerCopy setAllowsCancellation:SiriUIDeviceIsPad() ^ 1];
}

- (BOOL)_alwaysObscureBackgroundContentWhenActive
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysObscureBackgroundContentWhenActive = [v2 alwaysObscureBackgroundContentWhenActive];

  return alwaysObscureBackgroundContentWhenActive;
}

- (void)_requestPresentationBackgroundBlurVisible:(BOOL)visible forReason:(int64_t)reason
{
  visibleCopy = visible;
  delegate = [(SRCompactViewController *)self delegate];
  v8 = [delegate lockStateForCompactViewController:self];

  if (!v8 && ![(SRCompactViewController *)self _alwaysObscureBackgroundContentWhenActive])
  {
    backgroundBlurViewController = [(SRCompactViewController *)self backgroundBlurViewController];
    [backgroundBlurViewController requestBackgroundBlurVisible:visibleCopy forReason:reason];
  }
}

- (void)blurFromRootNavigationTransitionController:(id)controller requestHostBlurVisible:(BOOL)visible requestPresentationBlurVisible:(BOOL)blurVisible
{
  blurVisibleCopy = blurVisible;
  visibleCopy = visible;
  controllerCopy = controller;
  v8 = objc_autoreleasePoolPush();
  view = [(SRCompactViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _synchronizedDrawingFence = [windowScene _synchronizedDrawingFence];

  [(SRCompactViewController *)self _requestPresentationBackgroundBlurVisible:blurVisibleCopy forReason:4];
  delegate = [(SRCompactViewController *)self delegate];
  [delegate viewController:self requestsHostBackgroundBlurVisible:visibleCopy reason:4 fence:_synchronizedDrawingFence];

  objc_autoreleasePoolPop(v8);
}

- (BOOL)_navigationBarHasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _navigationController = [(SRCompactViewController *)self _navigationController];
  navigationBar = [_navigationController navigationBar];
  [navigationBar bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  navigationController = [(SRCompactViewController *)self navigationController];
  navigationBar2 = [navigationController navigationBar];
  _compactView = [(SRCompactViewController *)self _compactView];
  [navigationBar2 convertPoint:_compactView fromView:{x, y}];
  v20 = v19;
  v22 = v21;

  v23 = v9;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  v27 = v20;
  v28 = v22;

  return CGRectContainsPoint(*&v23, *&v27);
}

- (BOOL)_keyboardHasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SRCompactViewController *)self _keyboardFrame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)_requestKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRCompactViewController *)self delegate];
  [delegate compactViewController:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v8 = [viewControllers count];

  if (v8 == 2)
  {
    self->_isDrilledIntoSnippet = 1;
    [(SRCompactViewController *)self updateTopInset:1 animated:self->_topInset];
    _dismissalPanGestureRecognizer = [(SRCompactViewController *)self _dismissalPanGestureRecognizer];
    [_dismissalPanGestureRecognizer setEnabled:0];

    if ([(SRCompactViewController *)self _usesDefaultNavigationBar])
    {
      [controllerCopy setNavigationBarHidden:0 animated:animatedCopy];
    }
  }

  else if (v8 == 1)
  {
    self->_isDrilledIntoSnippet = 0;
    _dismissalPanGestureRecognizer2 = [(SRCompactViewController *)self _dismissalPanGestureRecognizer];
    [_dismissalPanGestureRecognizer2 setEnabled:1];

    if ([(SRCompactViewController *)self _usesDefaultNavigationBar])
    {
      [controllerCopy setNavigationBarHidden:1 animated:animatedCopy];
    }

    [(SRCompactViewController *)self updateTopInset:1 animated:self->_topInset];
  }
}

- (BOOL)_contentDiffersBetweenPlatterItems:(id)items andItems:(id)andItems
{
  itemsCopy = items;
  andItemsCopy = andItems;
  v8 = [itemsCopy count];
  if (v8 == [andItemsCopy count])
  {
    if ([itemsCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [itemsCopy objectAtIndex:v9];
        v11 = [andItemsCopy objectAtIndex:v9];
        v12 = [(SRCompactViewController *)self contentDiffersBetweenItems:v11 andItems:v10];

        if (v12)
        {
          break;
        }

        ++v9;
      }

      while ([itemsCopy count] > v9);
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)contentDiffersBetweenItems:(id)items andItems:(id)andItems
{
  itemsCopy = items;
  andItemsCopy = andItems;
  v7 = [itemsCopy count];
  if (v7 == [andItemsCopy count])
  {
    if ([itemsCopy count])
    {
      v8 = 0;
      v35 = andItemsCopy;
      v36 = itemsCopy;
      while (1)
      {
        v9 = [itemsCopy objectAtIndex:{v8, v35, v36}];
        aceObject = [v9 aceObject];

        v11 = [andItemsCopy objectAtIndex:v8];
        aceObject2 = [v11 aceObject];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          goto LABEL_23;
        }

        v13 = aceObject;
        v14 = aceObject2;
        sash = [v13 sash];
        applicationBundleIdentifier = [sash applicationBundleIdentifier];
        sash2 = [v14 sash];
        applicationBundleIdentifier2 = [sash2 applicationBundleIdentifier];
        if ([applicationBundleIdentifier isEqualToString:applicationBundleIdentifier2])
        {
          [v13 sash];
          v19 = v38 = sash;
          title = [v19 title];
          sash3 = [v14 sash];
          [sash3 title];
          v22 = v37 = v13;
          v23 = [title isEqualToString:v22];

          if (!v23)
          {
            v27 = 0;
            andItemsCopy = v35;
            itemsCopy = v36;
            v13 = v37;
            goto LABEL_18;
          }

          v13 = v37;
          siriui_card_compact = [v37 siriui_card_compact];
          backingCard = [siriui_card_compact backingCard];
          cardSections = [backingCard cardSections];
          if (cardSections)
          {
            [v37 siriui_card_compact];
          }

          else
          {
            [v37 siriui_card];
          }
          v28 = ;
          andItemsCopy = v35;
          itemsCopy = v36;
          backingCard2 = [v28 backingCard];

          siriui_card_compact2 = [v14 siriui_card_compact];
          backingCard3 = [siriui_card_compact2 backingCard];
          cardSections2 = [backingCard3 cardSections];
          if (cardSections2)
          {
            [v14 siriui_card_compact];
          }

          else
          {
            [v14 siriui_card];
          }
          v32 = ;
          applicationBundleIdentifier = [v32 backingCard];

          sash = backingCard2;
          v27 = [backingCard2 afui_hasContentEqualTo:applicationBundleIdentifier];
        }

        else
        {

          v27 = 0;
        }

LABEL_18:
        if ((v27 & 1) != 0 && [itemsCopy count] > ++v8)
        {
          continue;
        }

        v33 = v27 ^ 1;
        goto LABEL_24;
      }
    }

    v33 = 0;
  }

  else
  {
LABEL_23:
    v33 = 1;
  }

LABEL_24:

  return v33;
}

- (SRCompactViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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