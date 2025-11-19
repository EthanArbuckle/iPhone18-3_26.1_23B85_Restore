@interface SRCompactViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_bottomContentInsetComponents;
- (BOOL)_alwaysObscureBackgroundContentWhenActive;
- (BOOL)_contentDiffersBetweenPlatterItems:(id)a3 andItems:(id)a4;
- (BOOL)_keyboardHasContentAtPoint:(CGPoint)a3;
- (BOOL)_navigationBarHasContentAtPoint:(CGPoint)a3;
- (BOOL)_shouldMoveViewStackForTapToEdit;
- (BOOL)_updateActiveTranscriptItems:(id)a3;
- (BOOL)contentDiffersBetweenItems:(id)a3 andItems:(id)a4;
- (BOOL)didReceiveUpdateVisualResponseCommand:(id)a3;
- (BOOL)hasContentAtPoint:(CGPoint)a3;
- (BOOL)shouldBeginDismissalGestureRecognizer:(id)a3 withTouch:(id)a4;
- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)a3;
- (CGRect)_convertRectFromKeyboard:(CGRect)a3;
- (CGRect)_keyboardFrame;
- (CGSize)maxSizeForSnippet;
- (CGSize)siriViewControllerVisibleContentArea:(id)a3;
- (SRCompactViewController)init;
- (SRCompactViewControllerDelegate)delegate;
- (SiriSharedUICompactView)_compactView;
- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)a3;
- (double)boundingWidthForSnippetViewController:(id)a3;
- (double)maximumHeightForCompactView:(id)a3;
- (double)siriViewControllerExpectedWidth:(id)a3;
- (id)localeForSiriViewController:(id)a3;
- (id)siriViewController:(id)a3 disambiguationItemForListItem:(id)a4 disambiguationKey:(id)a5;
- (id)siriViewController:(id)a3 filteredDisambiguationListItems:(id)a4;
- (id)siriViewController:(id)a3 listItemToPickInAutodisambiguationForListItems:(id)a4;
- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)a3;
- (void)_didEndEditing;
- (void)_keyboardWillHideForAmbient:(id)a3;
- (void)_keyboardWillShowForAmbient:(id)a3;
- (void)_pushQueuedNavigationContentViewController;
- (void)_recursivelyNotifyVisibleViewControllers:(id)a3 withBlock:(id)a4;
- (void)_registerForAmbientPresentationTraitChange;
- (void)_requestKeyboardWithCompletion:(id)a3;
- (void)_requestPresentationBackgroundBlurVisible:(BOOL)a3 forReason:(int64_t)a4;
- (void)_setActiveAdditionalPlatterTranscriptItems:(id)a3;
- (void)_setActiveConversationTranscriptItems:(id)a3;
- (void)_setBottomContentInsetComponents:(id)a3 animatedWithDuration:(double)a4 animationOptions:(unint64_t)a5;
- (void)_setInputType:(int64_t)a3;
- (void)_setKeyboardState:(id)a3;
- (void)_setServerUtterances:(id)a3;
- (void)_setSpeechRecognitionHypothesis:(id)a3;
- (void)_setStatusViewHidden:(BOOL)a3;
- (void)_updateAdditionalSafeAreaInsetsForNavigationContentViewController:(id)a3;
- (void)_updateAmbientAvailability;
- (void)_updateBottomContentInsetKeyboardComponent;
- (void)_updateCompactViewSize;
- (void)_updateIsInAmbientWithInteractivity:(BOOL)a3;
- (void)_updateKeyboardStateFromNotification:(id)a3;
- (void)_updateStatusViewVisibility;
- (void)_updateTextRequestViewVisibility;
- (void)_willBeginEditingOfType:(int64_t)a3;
- (void)blurFromRootNavigationTransitionController:(id)a3 requestHostBlurVisible:(BOOL)a4 requestPresentationBlurVisible:(BOOL)a5;
- (void)cancelSpeakingForSiriViewController:(id)a3;
- (void)compactView:(id)a3 didChangeEffectiveBottomContentInsetAnimatedWithContext:(id)a4;
- (void)compactView:(id)a3 viewDidAppearForAceObject:(id)a4;
- (void)compactView:(id)a3 viewDidDisappearForAceObject:(id)a4;
- (void)compactViewModelDidChange:(id)a3 withDiff:(unint64_t)a4;
- (void)dismissalGestureRecognizerDidFinish:(id)a3 shouldDismiss:(BOOL)a4;
- (void)editableUtterancePresenter:(id)a3 didFinishEditingWithText:(id)a4 selectionResults:(id)a5 shouldStartNewRequest:(BOOL)a6;
- (void)editableUtterancePresenter:(id)a3 openURL:(id)a4;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)scrollDidBeginFromView:(id)a3;
- (void)scrollDidEndFromView:(id)a3;
- (void)setActiveRequestOptions:(id)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setTopContentInset:(double)a3 animated:(BOOL)a4;
- (void)showFullScreenEffect:(id)a3;
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
- (void)siriViewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5;
- (void)siriViewController:(id)a3 speakText:(id)a4 completion:(id)a5;
- (void)siriViewControllerDidEndEditing:(id)a3;
- (void)siriViewControllerHeightDidChange:(id)a3;
- (void)siriViewControllerHeightDidChange:(id)a3 pinTopOfSnippet:(BOOL)a4;
- (void)siriViewControllerRequestsDeviceUnlock:(id)a3 completion:(id)a4;
- (void)siriViewControllerViewDidAppear:(id)a3 isTopLevelViewController:(BOOL)a4;
- (void)siriViewControllerViewDidDisappear:(id)a3 isTopLevelViewController:(BOOL)a4;
- (void)siriViewControllerWillBeginEditing:(id)a3;
- (void)siriWillStartRequest;
- (void)tapToEditRequestedFromView:(id)a3;
- (void)textRequestController:(id)a3 siriRequestCommittedWithText:(id)a4;
- (void)textRequestControllerDidEndTextEditMenuInteraction:(id)a3;
- (void)textRequestControllerWillBeginTextEditMenuInteraction:(id)a3;
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
- (void)willDismissEditableUtterancePresenter:(id)a3 transitionCoordinator:(id)a4;
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

    v9 = [(SRCompactTextRequestViewController *)v2->_textRequestViewController view];
    [v9 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v10 = [SiriUINavigationController alloc];
    v11 = [(SRCompactViewController *)v2 _viewStackContainerController];
    v12 = [v10 initWithRootViewController:v11];
    navigationController = v2->_navigationController;
    v2->_navigationController = v12;

    [(SiriUINavigationController *)v2->_navigationController setDelegate:v2];
    v14 = [(SiriUINavigationController *)v2->_navigationController view];
    [v14 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v15 = [(SiriUINavigationController *)v2->_navigationController navigationBar];
    [v15 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

    v2->_siriViewControllerIsEditing = 0;
    v16 = objc_alloc_init(SiriUIBackgroundBlurViewController);
    [(SRCompactViewController *)v2 setBackgroundBlurViewController:v16];

    [(SRCompactTextRequestViewController *)v2->_textRequestViewController setDelegate:v2];
    v17 = [SiriSharedUICompactHostingInstrumentationSupplement alloc];
    v18 = [(SRCompactViewController *)v2 _instrumentationManager];
    v19 = [v17 initWithInstrumentationManager:v18];
    instrumentationSupplement = v2->_instrumentationSupplement;
    v2->_instrumentationSupplement = v19;

    [(SRCompactViewController *)v2 _registerForAmbientPresentationTraitChange];
  }

  return v2;
}

- (SiriSharedUICompactView)_compactView
{
  v2 = [(SRCompactViewController *)self view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [NSString stringWithFormat:@"Expected -view to return an SiriSharedUICompactView instance, but got %@ instead", v2];
    v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
    v6 = v5;

    objc_exception_throw(v5);
  }

  return v2;
}

- (void)updateTopInset:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_topInset = a3;
  if ([UIApp activeInterfaceOrientation] - 1 <= 1)
  {
    v7 = [(SRCompactViewController *)self view];
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
    v14[2] = sub_100036578;
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
    v38 = "[SRCompactViewController loadView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = [(SRCompactViewController *)self backgroundBlurViewController];
  v30 = [v4 view];
  v31 = v4;
  [(SRCompactViewController *)self addChildViewController:v4];
  v5 = [(SRCompactViewController *)self _navigationController];
  v29 = [v5 view];
  v27 = v5;
  [(SRCompactViewController *)self addChildViewController:v5];
  v6 = [(SRCompactViewController *)self _viewStackContainerController];
  v28 = [v6 viewStackContainer];
  v7 = [(SRCompactViewController *)self _resultViewController];
  v23 = [v7 compactResultView];
  v25 = v7;
  v26 = v6;
  [v6 addChildViewController:v7];
  v8 = [(SRCompactViewController *)self _textRequestViewController];
  v22 = [v8 view];
  if (v8)
  {
    [(SRCompactViewController *)self addChildViewController:v8];
  }

  v24 = v8;
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

  v21 = [[SiriSharedUICompactView alloc] initWithFrame:v30 backgroundBlurView:v29 navigationView:v23 resultView:v13 conversationView:v14 additionalContentViews:v22 textRequestView:CGRectZero.origin.x viewStackContainer:{y, width, height, v28}];
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
  v3 = [(SRCompactViewController *)self view];
  [v3 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

  IsPad = SiriUIDeviceIsPad();
  if (IsPad)
  {
    v5 = [SRCardStackNavigationTransitionController alloc];
    v6 = [(SRCompactViewController *)self _resultViewController];
    v7 = [(SRCardStackNavigationTransitionController *)v5 initWithCompactResultViewController:v6];

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

  v12 = [(SRCompactViewController *)self _navigationController];
  [v12 setTransitionController:v7];

  v13 = [[SiriSharedUIPanDismissalGestureRecognizer alloc] initWithDismissalDelegate:self dismissalStyle:v8];
  dismissalPanGestureRecognizer = self->_dismissalPanGestureRecognizer;
  self->_dismissalPanGestureRecognizer = v13;

  if (IsPad)
  {
    v15 = [(SRCompactViewController *)self view];
    v16 = [v15 layer];
    [v16 setAllowsGroupOpacity:0];

    v17 = [(SRCompactViewController *)self view];
    [v17 addGestureRecognizer:self->_dismissalPanGestureRecognizer];
  }

  else
  {
    v17 = [(SRCompactViewController *)self _compactView];
    v18 = [v17 resultView];
    v19 = [v18 hostingView];
    v20 = [v19 layer];
    [v20 setAllowsGroupOpacity:0];

    v21 = [v17 resultView];
    [v21 setDismissalGestureRecognizer:self->_dismissalPanGestureRecognizer];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v14 viewWillAppear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v8 viewDidAppear:a3];
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  self->_presentationTime = v5;

  if ([(SRCompactViewController *)self _alwaysObscureBackgroundContentWhenActive])
  {
    v6 = [(SRCompactViewController *)self delegate];
    [v6 viewController:self requestsHostBackgroundBlurVisible:1 reason:1 fence:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidPresentUserInterface:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v5 viewWillDisappear:a3];
  [(SRCompactEditableUtterancePresenter *)self->_editableUtterancePresenter dismissEditableUtteranceViewControllerAndShouldStartNewRequest:1 completion:0];
  v4 = [(SRCompactViewController *)self delegate];
  [v4 viewControllerViewWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = SRCompactViewController;
  [(SRCompactViewController *)&v28 viewDidDisappear:a3];
  v4 = [(SRCompactViewController *)self _speechRecognitionHypothesis];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(SRUIFSpeechRecognitionHypothesis *)self->_speechRecognitionHypothesis backingAceObject];
    [WeakRetained compactViewController:self viewDidDisappearForAceObject:v6];
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
  v3 = [(SRCompactViewController *)self view];
  v27 = [v3 window];

  if (SiriSharedUIDeviceIsPad())
  {
    v4 = v27;
  }

  else
  {
    IsMac = SiriSharedUIDeviceIsMac();
    v4 = v27;
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
    v14 = [v27 windowScene];
    [v14 interfaceOrientation];
    SiriSharedUICompactSlideOverContentSpacingOnPad();
    v16 = v15;
    v18 = v17;

    v19 = v16 + v18 + SiriSharedUICompactLeftPaddingForShadowOutsetsiPad;
    LODWORD(v14) = SiriLanguageIsRTL();
    v20 = [(SRCompactViewController *)self view];
    v21 = v7;
    v22 = v9;
    v23 = v11;
    v24 = v13;
    if (v14)
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

    [v20 setFrame:{v26, 0.0, v19, Height}];
  }

LABEL_9:

  _objc_release_x1();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = SRCompactViewController;
  v7 = a4;
  [(SRCompactViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(SRCompactViewController *)self _updateAmbientAvailability];
  v8 = [(SRCompactViewController *)self _navigationStackLayoutController];
  v9[4] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000374BC;
  v10[3] = &unk_100166F20;
  v10[4] = v8;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000374C4;
  v9[3] = &unk_100166F20;
  [v7 animateAlongsideTransition:v10 completion:v9];
}

- (void)compactViewModelDidChange:(id)a3 withDiff:(unint64_t)a4
{
  v36 = a4;
  v4 = a3;
  v34 = [v4 inputType];
  v39 = [v4 resultTranscriptItems];
  v35 = [v4 conversationTranscriptItems];
  v5 = [v4 additionalPlatterTranscriptItems];
  v37 = [v4 serverUtterances];
  v38 = [v4 speechRecognitionHypothesis];
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
    v59 = v39;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #compact Setting active transcript items to : %@", buf, 0x16u);
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = v35;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #compact Setting active conversation transcript items to : %@", buf, 0x16u);
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #compact Setting additional active platter transcript items to : %@", buf, 0x16u);
  }

  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = v37;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #compact Setting server utterances to : %@", buf, 0x16u);
  }

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SRCompactViewController compactViewModelDidChange:withDiff:]";
    v58 = 2112;
    v59 = v38;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #compact Setting speech recognition hypothesis to : %@", buf, 0x16u);
  }

  v32 = [v39 count] != 0;
  v33 = [(SRCompactViewController *)self requireFinalSpeechHypothesisBeforeAppearance];
  v14 = [v38 userUtterance];

  if (v33 && ([v38 isFinal] & 1) != 0)
  {
    v33 = 0;
  }

  v30 = v14 == 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = v5;
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

  if ([v37 count] && self->_isInAmbient)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = v37;
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

          v25 = [*(*(&v46 + 1) + 8 * j) dialogIdentifier];
          v26 = [v25 isEqual:@"PlaybackControls#SilenceInterstitials"];

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

  if ([v39 count] || objc_msgSend(v35, "count") != 0 || v31 || (((objc_msgSend(v37, "count") == 0) | v21) & (v30 | v33) & 1) == 0)
  {
    v27 = [(SRCompactViewController *)self delegate];
    [v27 didPresentContentForCompactViewController:self];
  }

  if ((v36 & 1) != 0 && [v39 count])
  {
    v28 = [(SRCompactViewController *)self delegate];
    [v28 didBeginProcessingConversationItems];
  }

  objc_initWeak(buf, self);
  v29 = [(SRCompactViewController *)self _compactView];
  objc_copyWeak(v41, buf);
  v42 = v36 & 1;
  v41[1] = v34;
  v43 = (v36 & 0x2F) != 0;
  v44 = v32;
  v45 = (v36 & 0x20) != 0;
  [v29 prepareForUpdatesWithDiff:? updateBlock:?];

  objc_destroyWeak(v41);
  objc_destroyWeak(buf);
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(SRCompactViewController *)self _updateStatusViewVisibility];
}

- (BOOL)_updateActiveTranscriptItems:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactViewController *)self _compactView];
  if ([(NSArray *)self->_activeTranscriptItems isEqualToArray:v4])
  {
LABEL_2:
    [v5 setShowSnippetView:1 animated:1];
    v6 = 0;
    goto LABEL_33;
  }

  if (![(SRCompactViewController *)self contentDiffersBetweenItems:self->_activeTranscriptItems andItems:v4])
  {
    v26 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v50 = "[SRCompactViewController _updateActiveTranscriptItems:]";
      v51 = 2112;
      v52 = v4;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s #compact: Transcript items %@ have the same content, not updating our compact view", buf, 0x16u);
    }

    goto LABEL_2;
  }

  v36 = v5;
  v7 = [(SRCompactViewController *)self _navigationController];
  v8 = [v7 popToRootViewControllerAnimated:1];

  v37 = v4;
  v9 = [v4 copy];
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

        v17 = [*(*(&v43 + 1) + 8 * i) viewController];
        [v11 addObject:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v15;
          v19 = v11;
          v20 = v14;
          v21 = v17;
          v22 = self;
          [v21 setDelegate:self];
          v23 = [v21 sashItem];
          v24 = [v23 applicationBundleIdentifier];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v21 appBundleId];

            v24 = v25;
          }

          v14 = v24;
          self = v22;
          v11 = v19;
          v15 = v18;
        }

        if (objc_opt_respondsToSelector())
        {
          [v17 setIsInAmbient:self->_isInAmbient];
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

  v5 = v36;
  if (self->_isInAmbient)
  {
    [v36 configureAmbientAppIconForBundleIdentifier:v14];
  }

  v27 = objc_alloc_init(SRCompactResultPlatterViewController);
  [(SRCompactResultPlatterViewController *)v27 setSiriContentViewControllers:v11];
  v28 = [(SRCompactViewController *)self _resultViewController];
  [v28 setContentPlatterViewController:v27];

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
  v4 = v37;
LABEL_33:

  return v6;
}

- (void)_setActiveConversationTranscriptItems:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_activeConversationTranscriptItems isEqualToArray:v4]|| ![(SRCompactViewController *)self contentDiffersBetweenItems:v4 andItems:self->_activeConversationTranscriptItems])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[SRCompactViewController _setActiveConversationTranscriptItems:]";
      v33 = 2112;
      v34 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: Conversation Transcript has the same content, not updating our compact view for items: %@", buf, 0x16u);
    }
  }

  v24 = v4;
  v6 = [v4 copy];
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
        v14 = [v13 viewController];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 parentViewController];

          if (!v16)
          {
            [(SiriSharedUIViewStackContainerController *)self->_viewStackContainerController addChildViewController:v15];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v15;
            v18 = [v13 isHintItem];
            v19 = v18;
            if (v18)
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
            v21 = [v15 view];
            [v25 addObject:v21];

            if (v16)
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

          if (!v16)
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

  v23 = [(SRCompactViewController *)self _compactView];
  [v23 setConversationSnippetViews:v25];
}

- (void)_setActiveAdditionalPlatterTranscriptItems:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_activeAdditionalPlatterTranscriptItems isEqualToArray:v4]|| ![(SRCompactViewController *)self _contentDiffersBetweenPlatterItems:v4 andItems:self->_activeAdditionalPlatterTranscriptItems])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "[SRCompactViewController _setActiveAdditionalPlatterTranscriptItems:]";
      v39 = 2112;
      v40 = v4;
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
      v40 = v4;
      v6 = "%s #compact #ambient: Additional Platter Transcripts should not show in ambient, not updating our compact view for items: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x16u);
    }
  }

  else
  {
    v7 = [v4 copy];
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

                v17 = [*(*(&v27 + 1) + 8 * i) viewController];
                v18 = v17;
                if (v17)
                {
                  v19 = [v17 parentViewController];

                  if (!v19)
                  {
                    [(SiriSharedUIViewStackContainerController *)self->_viewStackContainerController addChildViewController:v18];
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v18 setDelegate:self];
                  }

                  v20 = [v18 view];
                  [v11 addObject:v20];

                  if (!v19)
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

    v21 = [(SRCompactViewController *)self _compactView];
    [v21 setAdditionalContentSnippetViews:v24];
  }
}

- (void)_setServerUtterances:(id)a3
{
  if (self->_serverUtterances != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    serverUtterances = self->_serverUtterances;
    self->_serverUtterances = v5;

    v7 = [(SRCompactViewController *)self _compactView];
    [v7 setServerUtterances:v4];
  }
}

- (void)_setSpeechRecognitionHypothesis:(id)a3
{
  if (self->_speechRecognitionHypothesis != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    speechRecognitionHypothesis = self->_speechRecognitionHypothesis;
    self->_speechRecognitionHypothesis = v5;

    v7 = [(SRCompactViewController *)self _compactView];
    [v7 setSpeechRecognitionHypothesis:v4];
  }
}

- (BOOL)hasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_alloc_init(SRCompactViewControllerContentTester);
  v7 = [(SRCompactViewController *)self _compactView];
  v8 = objc_alloc_init(SRCompactViewControllerMutableContentTesterState);
  [(SRCompactViewControllerMutableContentTesterState *)v8 setDeviceIsPad:SiriUIDeviceIsPad()];
  v9 = [(SiriUINavigationController *)self->_navigationController transitionController];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackIsPopping:](v8, "setNavigationStackIsPopping:", [v9 operation] == 2);

  v10 = [(SiriUINavigationController *)self->_navigationController viewControllers];
  -[SRCompactViewControllerMutableContentTesterState setNavigationStackSize:](v8, "setNavigationStackSize:", [v10 count]);

  v11 = [(SiriUINavigationController *)self->_navigationController viewControllers];
  if ([v11 count] <= 1)
  {
    v12 = [(SRCompactViewControllerMutableContentTesterState *)v8 navigationStackIsPopping];

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v13 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
  v14 = [v13 view];
  [v7 convertPoint:v14 toView:{x, y}];
  v16 = v15;
  v18 = v17;

  [(SRCompactViewControllerMutableContentTesterState *)v8 setNavigationBarHasContent:[(SRCompactViewController *)self _navigationBarHasContentAtPoint:x, y]];
  v19 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
  objc_opt_class();
  LOBYTE(v14) = objc_opt_isKindOfClass();

  if (v14)
  {
    v20 = [(SiriUINavigationController *)self->_navigationController visibleViewController];
    -[SRCompactViewControllerMutableContentTesterState setMultiLevelViewHasContent:](v8, "setMultiLevelViewHasContent:", [v20 hasContentAtPoint:{v16, v18}]);
  }

  else
  {
    [(SRCompactViewControllerMutableContentTesterState *)v8 setMultiLevelViewHasContent:1];
  }

LABEL_7:
  [(SRCompactViewControllerMutableContentTesterState *)v8 setKeyboardHasContent:[(SRCompactViewController *)self _keyboardHasContentAtPoint:x, y]];
  [(SRCompactViewControllerMutableContentTesterState *)v8 setEditableUtteranceViewHasContent:[(SRCompactEditableUtterancePresenter *)self->_editableUtterancePresenter hasContentAtPoint:x, y]];
  -[SRCompactViewControllerMutableContentTesterState setCompactViewHasContent:](v8, "setCompactViewHasContent:", [v7 hasContentAtPoint:{x, y}]);
  if (self->_siriViewControllerIsEditing && ![(SRCompactViewControllerContentTester *)v6 hasContentForState:v8])
  {
    [(SRCompactViewController *)self siriDidTapOutsideContent];
  }

  [(SRCompactViewControllerMutableContentTesterState *)v8 setSiriViewControllerIsEditing:self->_siriViewControllerIsEditing];
  v21 = [(SRCompactViewController *)self view];
  v22 = [v21 window];

  if (v22)
  {
    -[SRCompactViewControllerMutableContentTesterState setContextMenuIsPresented:](v8, "setContextMenuIsPresented:", [v22 contextMenuIsPresented]);
  }

  v23 = [(SRCompactViewControllerContentTester *)v6 hasContentForState:v8];

  return v23;
}

- (void)_setBottomContentInsetComponents:(id)a3 animatedWithDuration:(double)a4 animationOptions:(unint64_t)a5
{
  self->_bottomContentInsetComponents = a3;
  if (a3.var0 >= a3.var1)
  {
    var0 = a3.var0;
  }

  else
  {
    var0 = a3.var1;
  }

  v10 = objc_alloc_init(SiriSharedUIAnimationContext);
  [v10 setAnimationOptions:a5];
  [v10 setAnimationDuration:a4];
  v9 = [(SRCompactViewController *)self _compactView];
  [v9 setBottomContentInset:v10 animatedWithContext:var0];
}

- (void)setBottomContentInset:(double)a3
{
  [(SRCompactViewController *)self _bottomContentInsetComponents];

  [(SRCompactViewController *)self _setBottomContentInsetComponents:a3];
}

- (void)setTopContentInset:(double)a3 animated:(BOOL)a4
{
  if (self->_topInset != a3)
  {
    [(SRCompactViewController *)self updateTopInset:a4 animated:?];
  }
}

- (void)_updateBottomContentInsetKeyboardComponent
{
  [(SRCompactViewController *)self _bottomContentInsetComponents];
  v4 = v3;
  v14 = [(SRCompactViewController *)self _keyboardState];
  [v14 frameForAnimation];
  [(SRCompactViewController *)self _convertRectFromKeyboard:?];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v9 = 0.0;
  if (CGRectGetHeight(v16) != 0.0)
  {
    v10 = [(SRCompactViewController *)self _compactView];
    [v10 bounds];
    v11 = CGRectGetHeight(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v9 = v11 - CGRectGetMinY(v18);
  }

  v12 = [v14 animation];
  [v12 duration];
  -[SRCompactViewController _setBottomContentInsetComponents:animatedWithDuration:animationOptions:](self, "_setBottomContentInsetComponents:animatedWithDuration:animationOptions:", [v12 options], v4, v9, v13);
}

- (void)siriDidActivate
{
  if ([(SRCompactViewController *)self _inputType]== 1)
  {
    v4 = [(SRCompactViewController *)self _textRequestViewController];
    v3 = [v4 view];
    [v3 becomeFirstResponder];
  }
}

- (void)siriDidDeactivate
{
  if ([(SRCompactViewController *)self _inputType]== 1)
  {
    v3 = [(SRCompactViewController *)self _textRequestViewController];
    v4 = [v3 view];
    [v4 resignFirstResponder];
  }

  v6 = [(SRCompactViewController *)self _navigationController];
  v5 = [v6 visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v5 withBlock:&stru_100167820];
}

- (void)showFullScreenEffect:(id)a3
{
  v8 = a3;
  if (!self->_fullScreenEffects)
  {
    v4 = objc_alloc_init(SRFullScreenEffects);
    fullScreenEffects = self->_fullScreenEffects;
    self->_fullScreenEffects = v4;
  }

  v6 = [(SRCompactViewController *)self _compactView];
  v7 = [(SRFullScreenEffects *)self->_fullScreenEffects effectForAceObject:v8];
  [v6 showFullScreenEffect:v7];
}

- (BOOL)didReceiveUpdateVisualResponseCommand:(id)a3
{
  v4 = a3;
  v25 = [v4 viewId];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(SiriSharedUICompactResultViewController *)self->_resultViewController contentPlatterViewController];
  v6 = [v5 contentViewControllers];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = v4;
    v9 = *v27;
    v10 = &swift_allocError_ptr;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 aceObject];
            v15 = v6;
            v17 = v16 = v10;
            [v17 viewId];
            v19 = v18 = v9;
            v20 = [v19 isEqualToString:v25];

            v9 = v18;
            v10 = v16;
            v6 = v15;

            if (v20)
            {
              v4 = v24;
              v21 = [v24 stateData];
              [v13 updateSharedState:v21];

              v22 = 1;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
    v22 = 0;
    v4 = v24;
  }

  else
  {
    v22 = 0;
  }

LABEL_16:

  return v22;
}

- (void)setActiveRequestOptions:(id)a3
{
  v5 = a3;
  if (self->_activeRequestOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activeRequestOptions, a3);
    [(SRCompactViewController *)self _updateAmbientAvailability];
    v5 = v6;
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
  v3 = [(SRCompactViewController *)self view];
  v4 = [v3 traitCollection];
  v5 = [v4 isAmbientPresented];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSNumber numberWithBool:v5];
    v9 = 136315394;
    v10 = "[SRCompactViewController _updateAmbientAvailability]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #ambient - is Presented - %@", &v9, 0x16u);
  }

  [(SRCompactViewController *)self setIsInAmbient:v5];
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient != a3)
  {
    v3 = a3;
    self->_isInAmbient = a3;
    v64 = 48;
    if (a3)
    {
      v5 = +[UIScreen mainScreen];
      [v5 scale];
      v7 = v6 * SiriSharedUICompactAmbientContentScaleAmount;

      v8 = [(SRCompactViewController *)self _viewStackContainerController];
      v9 = [v8 traitOverrides];
      [v9 setDisplayScale:v7];

      v10 = [(SRCompactViewController *)self _viewStackContainerController];
      v11 = [v10 traitOverrides];
      [v11 setUserInterfaceStyle:2];

      v12 = [(SRCompactViewController *)self _navigationController];
      v13 = [v12 traitOverrides];
      [v13 setDisplayScale:v7];

      v14 = [(SRCompactViewController *)self _navigationController];
      v15 = [v14 traitOverrides];
      [v15 setUserInterfaceStyle:2];

      v16 = [(SRCompactViewController *)self traitOverrides];
      [v16 setDisplayScale:v7];

      v17 = [(SRCompactViewController *)self traitOverrides];
      [v17 setUserInterfaceStyle:2];
    }

    else
    {
      v18 = [(SRCompactViewController *)self _viewStackContainerController];
      v19 = [v18 traitOverrides];
      v20 = objc_opt_self();
      [v19 removeTrait:v20];

      v21 = [(SRCompactViewController *)self _viewStackContainerController];
      v22 = [v21 traitOverrides];
      v23 = objc_opt_self();
      [v22 removeTrait:v23];

      v24 = [(SRCompactViewController *)self _navigationController];
      v25 = [v24 traitOverrides];
      v26 = objc_opt_self();
      [v25 removeTrait:v26];

      v27 = [(SRCompactViewController *)self _navigationController];
      v28 = [v27 traitOverrides];
      v29 = objc_opt_self();
      [v28 removeTrait:v29];

      v30 = [(SRCompactViewController *)self traitOverrides];
      v31 = objc_opt_self();
      [v30 removeTrait:v31];

      v17 = [(SRCompactViewController *)self traitOverrides];
      v32 = objc_opt_self();
      [v17 removeTrait:v32];
    }

    v33 = [(SRCompactViewController *)self _compactView];
    v34 = [v33 resultView];
    [v34 setIsInAmbient:v3];

    v35 = [(SRCompactViewController *)self _compactView];
    v36 = [v35 conversationView];
    [v36 setIsInAmbient:v3];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v65 = self;
    v37 = [(SRCompactViewController *)self _navigationController];
    v38 = [v37 viewControllers];

    v39 = [v38 countByEnumeratingWithState:&v74 objects:v80 count:16];
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
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v74 + 1) + 8 * i);
          v44 = objc_opt_class();
          v45 = sub_100019948(v44, v43);
          if (v45)
          {
            v46 = objc_opt_class();
            v47 = [v45 contentViewController];
            v48 = sub_100019948(v46, v47);

            if (v48)
            {
              v49 = [v48 contentPlatterView];
              [v49 setIsInAmbient:v3];
            }
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v40);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v50 = [(SRCompactViewController *)v65 _compactView];
    v51 = [v50 additionalContentViews];

    v52 = [v51 countByEnumeratingWithState:&v70 objects:v79 count:16];
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
            objc_enumerationMutation(v51);
          }

          [*(*(&v70 + 1) + 8 * j) setIsInAmbient:{v3, v64}];
        }

        v53 = [v51 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v53);
    }

    v56 = [(NSArray *)v65->_activeTranscriptItems arrayByAddingObjectsFromArray:v65->_activeConversationTranscriptItems];
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

          v62 = [*(*(&v66 + 1) + 8 * k) viewController];
          if (objc_opt_respondsToSelector())
          {
            [v62 setIsInAmbient:*(&v65->super.super.super.isa + v58)];
          }
        }

        v59 = [v56 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v59);
    }

    v63 = [(SRCompactViewController *)v65 _compactView];
    [v63 setIsInAmbient:v3];
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

    v8 = [(SRCompactViewController *)self _viewStackContainerController];
    v9 = [v8 traitOverrides];
    [v9 setDisplayScale:v7];

    self->_isInAmbientInteractivity = v3;
    v10 = [(SRCompactViewController *)self _compactView];
    v11 = [v10 resultView];
    [v11 setIsInAmbientInteractivity:v3];

    v12 = [(SRCompactViewController *)self _compactView];
    v13 = [v12 conversationView];
    [v13 setIsInAmbientInteractivity:v3];

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

          v19 = [*(*(&v21 + 1) + 8 * v18) viewController];
          if (objc_opt_respondsToSelector())
          {
            [v19 setIsInAmbientInteractivity:v3];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    v20 = [(SRCompactViewController *)self _compactView];
    [v20 setIsInAmbientInteractivity:v3];
  }
}

- (void)siriDidStartSpeakingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactViewController *)self _navigationController];
  v6 = [v5 visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003A0C0;
  v8[3] = &unk_100167378;
  v9 = v4;
  v7 = v4;
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v6 withBlock:v8];
}

- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4
{
  v6 = a3;
  v7 = [(SRCompactViewController *)self _navigationController];
  v8 = [v7 visibleViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A1F8;
  v10[3] = &unk_1001673A0;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v8 withBlock:v10];
}

- (void)siriDidUpdateASRWithRecognition:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactViewController *)self _navigationController];
  v6 = [v5 visibleViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003A324;
  v8[3] = &unk_100167378;
  v9 = v4;
  v7 = v4;
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v6 withBlock:v8];
}

- (void)siriDidTapOutsideContent
{
  v4 = [(SRCompactViewController *)self _navigationController];
  v3 = [v4 visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v3 withBlock:&stru_100167840];
}

- (void)siriWillStartRequest
{
  v4 = [(SRCompactViewController *)self _navigationController];
  v3 = [v4 visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v3 withBlock:&stru_100167860];
}

- (void)siriIsIdleAndQuiet
{
  v4 = [(SRCompactViewController *)self _navigationController];
  v3 = [v4 visibleViewController];
  [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:v3 withBlock:&stru_100167880];
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

        [(SRCompactViewController *)self _recursivelyNotifyVisibleViewControllers:*(*(&v13 + 1) + 8 * v12) withBlock:v7];
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
  v3 = [(SRCompactViewController *)self _queuedNavigationContentViewController];
  if (v3)
  {
    v5 = v3;
    v4 = [(SRCompactViewController *)self _navigationController];
    [v4 pushViewController:v5 animated:1];

    [(SRCompactViewController *)self _setQueuedNavigationContentViewController:0];
    [(SRCompactViewController *)self userDrilledIntoSnippet];
    v3 = v5;
  }
}

- (void)dismissalGestureRecognizerDidFinish:(id)a3 shouldDismiss:(BOOL)a4
{
  if (a4)
  {
    v5 = [(SRCompactViewController *)self delegate];
    [v5 endSiriSessionForViewController:self withDismissalReason:24];
  }
}

- (BOOL)shouldBeginDismissalGestureRecognizer:(id)a3 withTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
LABEL_6:
    v11 = [v6 view];
    [v7 locationInView:v11];
    v13 = v12;
    v15 = v14;
    v16 = [(SRCompactViewController *)self _compactView];
    v10 = [v16 hasContentAtPoint:{v13, v15}];

    goto LABEL_7;
  }

  v9 = [v7 view];

  if (!v9 || ([v9 isEnabled] & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)siriViewController:(id)a3 openURL:(id)a4 completion:(id)a5
{
  instrumentationSupplement = self->_instrumentationSupplement;
  v9 = a5;
  v10 = a4;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:a3 aceCommand:0 URL:v10 appID:0 sashItem:0];
  v11 = [(SRCompactViewController *)self delegate];
  [v11 viewController:self openURL:v10 completion:v9];
}

- (void)siriSnippetViewController:(id)a3 performAceCommands:(id)a4 sashItem:(id)a5
{
  instrumentationSupplement = self->_instrumentationSupplement;
  v9 = a4;
  [(SiriSharedUICompactHostingInstrumentationSupplement *)instrumentationSupplement logPunchOutEventForSiriViewController:a3 aceCommands:v9 sashItem:a5];
  v10 = [(SRCompactViewController *)self delegate];
  [v10 viewController:self performAceCommands:v9 completion:0];
}

- (void)siriViewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRCompactViewController *)self delegate];
  [v9 viewController:self performAceCommands:v8 completion:v7];
}

- (double)boundingWidthForSnippetViewController:(id)a3
{
  v3 = [(SRCompactViewController *)self delegate];
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
  v5 = [(SRCompactViewController *)self delegate];
  v6 = [v5 effectiveCoreLocationBundleForCompactViewController:self];

  if (!v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB904(v4, v7);
    }
  }

  return v6;
}

- (double)siriViewControllerExpectedWidth:(id)a3
{
  v4 = [(SRCompactViewController *)self _compactView];
  [v4 resultViewContentSize];
  v6 = v5;

  if (self->_isInAmbient && !self->_isInAmbientInteractivity)
  {
    return v6 / SiriSharedUICompactAmbientContentScaleAmount;
  }

  return v6;
}

- (void)siriViewControllerHeightDidChange:(id)a3
{
  v15 = a3;
  if (v15)
  {
    v4 = [(SRCompactViewController *)self _compactView];
    v5 = [(SiriUINavigationController *)self->_navigationController topViewController];
    v6 = [v5 view];
    v7 = [v4 viewStackContainer];
    v8 = [v7 hostingView];

    if (v6 == v8)
    {
      v11 = [v15 view];
      [v4 snippetLayoutDidUpdateForView:v11 isEditing:self->_siriViewControllerIsEditing];
    }

    else
    {
      v9 = [(SiriUINavigationController *)self->_navigationController topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      v11 = [(SiriUINavigationController *)self->_navigationController topViewController];
      [v11 contentViewDidUpdateSize];
    }

LABEL_7:
    v12 = [(SRCompactViewController *)self _navigationController];
    v13 = [v12 transitionController];
    if ([v13 operation])
    {
    }

    else
    {
      v14 = [(SRCompactViewController *)self _queuedNavigationContentViewController];

      if (v14)
      {
        goto LABEL_11;
      }

      v12 = [(SRCompactViewController *)self _navigationStackLayoutController];
      [v12 layout];
    }

LABEL_11:
  }
}

- (void)siriViewControllerHeightDidChange:(id)a3 pinTopOfSnippet:(BOOL)a4
{
  v4 = [(SRCompactViewController *)self _compactView:a3];
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
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = a4;
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
        objc_enumerationMutation(v4);
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

        if (objc_opt_respondsToSelector())
        {
          v18 = [v16 shouldAutomaticallyScaleContentInAmbient];
        }

        else
        {
          v18 = 1;
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
          v23 = v22 = v18;
          v24 = [(SRCompactViewController *)self _resultViewController];
          v25 = [v24 compactResultView];
          [v23 setDelegate:v25];

          v18 = v22;
          v21 = v41;
          v19 = v42;
        }

        v26 = [v19 contentPlatterView];
        [v26 setIsNextLevelCard:1];

        v27 = [v19 contentPlatterView];
        [v27 setIsInAmbient:self->_isInAmbient];

        v28 = [v19 contentPlatterView];
        [v28 setAllowAutomaticContentViewsScaling:v18];

        v29 = [v17 aceObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) != 0 && SiriUIDeviceIsPad())
        {
          v31 = [v21 contentViewController];
          v32 = [v31 view];
          v33 = [(SRCompactViewController *)self view];
          [v33 frame];
          [v32 setFrame:{0.0, 0.0, CGRectGetWidth(v50), 0.0}];

          v34 = [v21 contentViewController];
          v35 = [v34 view];
          [v35 setNeedsLayout];

          v36 = [v21 contentViewController];
          v37 = [v36 view];
          [v37 layoutIfNeeded];
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
          v38 = [v17 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
          }

          else
          {
            v39 = [v17 aceObject];
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

    v6 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_32:
}

- (void)_updateAdditionalSafeAreaInsetsForNavigationContentViewController:(id)a3
{
  v8 = a3;
  if ((SiriUIDeviceIsPad() & 1) == 0)
  {
    v4 = [(SRCompactViewController *)self _compactView];
    [v4 safeAreaInsets];
    v6 = 0.0 - v5;
    [v4 effectiveBottomContentInset];
    [v8 setAdditionalSafeAreaInsets:{0.0, 8.0, v6 + v7 + 14.0, 8.0}];
  }
}

- (void)siriSnippetViewControllerViewDidLoad:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [(SRCompactViewController *)self _compactView];
    v5 = [v12 view];
    [v4 snippetLayoutDidUpdateForView:v5 isEditing:self->_siriViewControllerIsEditing];

    [v4 setNeedsLayout];
    v6 = [v12 aceObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && SiriUIDeviceIsPad())
    {
      v8 = [v12 view];
      v9 = [(SRCompactViewController *)self view];
      [v9 frame];
      [v8 setFrame:{0.0, 0.0, CGRectGetWidth(v14), 0.0}];

      v10 = [v12 view];
      [v10 setNeedsLayout];

      v11 = [v12 view];
      [v11 layoutIfNeeded];
    }

    [(SRCompactViewController *)self _pushQueuedNavigationContentViewController];
  }
}

- (void)userTouchedSnippet
{
  v2 = [(SRCompactViewController *)self delegate];
  [v2 userTouchedSnippet];
}

- (void)siriSnippetViewController:(id)a3 informHostOfBackgroundView:(id)a4 isSnippetAsyncColored:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[SRCompactViewController siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v9 = v7;
  v19 = [(SiriSharedUICompactResultViewController *)self->_resultViewController contentPlatterViewController];
  v10 = [v19 contentViewControllers];
  v11 = v10;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          if ((objc_opt_isKindOfClass() & 1) != 0 && v16 == v6)
          {
            v17 = [(SiriSharedUICompactResultViewController *)self->_resultViewController contentPlatterViewController];
            v18 = [v17 contentPlatterView];
            [v18 setBackgroundView:v9];
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

- (void)siriSnippetViewController:(id)a3 isBackgroundColorUpdateSuccessful:(BOOL)a4
{
  v4 = a4;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [NSNumber numberWithBool:v4];
    v8 = 136315394;
    v9 = "[SRCompactViewController siriSnippetViewController:isBackgroundColorUpdateSuccessful:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isSuccessful %@", &v8, 0x16u);
  }
}

- (void)siriSnippetViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRCompactViewController *)self delegate];
  [v9 compactViewController:self handleStartLocalRequest:v8 turnIdentifier:v7];
}

- (void)userDrilledIntoSnippet
{
  v2 = [(SRCompactViewController *)self delegate];
  [v2 userDrilledIntoSnippet];
}

- (void)cancelSpeakingForSiriViewController:(id)a3
{
  v4 = [(SRCompactViewController *)self delegate];
  [v4 stopSpeakingForCompactViewController:self];
}

- (void)siriViewController:(id)a3 speakText:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRCompactViewController *)self delegate];
  [v9 compactViewController:self speakText:v8 isPhonetic:0 completion:v7];
}

- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)a3
{
  v4 = [(SRCompactViewController *)self delegate];
  v5 = [v4 lockStateForCompactViewController:self];

  return v5 != 0;
}

- (id)localeForSiriViewController:(id)a3
{
  v4 = [(SRCompactViewController *)self delegate];
  v5 = [v4 localeForCompactViewController:self];

  return v5;
}

- (void)siriSnippetViewController:(id)a3 willDismissViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactViewController *)self delegate];
  [v6 siriCompactViewController:self willDismissViewController:v5];
}

- (void)siriSnippetViewController:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactViewController *)self delegate];
  [v6 siriCompactViewController:self willPresentViewController:v5];
}

- (void)siriViewControllerRequestsDeviceUnlock:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactViewController *)self delegate];
  v7 = [v6 lockStateForCompactViewController:self];

  if ((v7 & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003BEDC;
    v9[3] = &unk_100167478;
    v10 = v5;
    [WeakRetained requestToHandlePasscodeUnlockWithClient:0 withCompletion:v9];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 1);
  }
}

- (void)siriViewControllerWillBeginEditing:(id)a3
{
  self->_siriViewControllerIsEditing = 1;
  v4 = [(SRCompactViewController *)self delegate];
  [v4 cancelRequestForViewController:self];

  v5 = [(SRCompactViewController *)self delegate];
  [v5 compactViewControllerRequestsHIDEventDefferal:self];

  v6 = [(SRCompactViewController *)self _compactView];
  [v6 setConversationViewHidden:1];
}

- (void)siriViewControllerDidEndEditing:(id)a3
{
  self->_siriViewControllerIsEditing = 0;
  v4 = [(SRCompactViewController *)self delegate];
  [v4 compactViewControllerCancelHIDEventDefferal:self];

  v5 = [(SRCompactViewController *)self _compactView];
  [v5 setConversationViewHidden:0];
}

- (void)siriViewControllerViewDidAppear:(id)a3 isTopLevelViewController:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 aceObject];

    [WeakRetained compactViewController:self viewDidAppearForAceObject:v6];
  }
}

- (void)siriViewControllerViewDidDisappear:(id)a3 isTopLevelViewController:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 aceObject];

    [WeakRetained compactViewController:self viewDidDisappearForAceObject:v6];
  }
}

- (void)_setStatusViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRCompactViewController *)self delegate];
  [v5 compactViewController:self setStatusViewHidden:v3];
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
  v4 = [(SRCompactViewController *)self _compactView];
  [v4 setHidesTextRequestView:v3];
}

- (void)_willBeginEditingOfType:(int64_t)a3
{
  v5 = [(SRCompactViewController *)self delegate];
  [v5 compactViewController:self willBeginEditingOfType:a3];
}

- (void)_didEndEditing
{
  v3 = [(SRCompactViewController *)self delegate];
  [v3 compactViewControllerDidEndEditing:self];
}

- (void)scrollDidBeginFromView:(id)a3
{
  v4 = [(SRCompactViewController *)self delegate];
  [v4 viewController:self reduceOrbOpacity:1];
}

- (void)scrollDidEndFromView:(id)a3
{
  v4 = [(SRCompactViewController *)self delegate];
  [v4 viewController:self reduceOrbOpacity:0];
}

- (void)tapToEditRequestedFromView:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactViewController *)self _speechRecognitionHypothesis];
  v6 = [v5 backingAceObject];
  v7 = [v6 refId];

  v8 = [SiriSharedUIUserUtteranceEditingDataManager alloc];
  v9 = [(SRCompactViewController *)self _speechRecognitionHypothesis];
  v10 = [v9 userUtterance];
  v11 = [v8 initWithUserUtterance:v10 backingAceObjectRefId:v7];

  v12 = [[SRCompactEditableUtterancePresenter alloc] initWithUserEditingDataManager:v11 delegate:self];
  editableUtterancePresenter = self->_editableUtterancePresenter;
  self->_editableUtterancePresenter = v12;

  v14 = [(SRCompactViewController *)self delegate];
  [v14 tapToEditPresented];

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
  v2 = [(SRCompactViewController *)self _resultViewController];
  v3 = [v2 contentPlatterViewController];
  v4 = [v3 contentViewControllers];
  v5 = [v4 count];

  if (v5)
  {
    return 0;
  }

  else
  {
    return SiriUIDeviceIsPad() ^ 1;
  }
}

- (void)compactView:(id)a3 viewDidAppearForAceObject:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactViewController:self viewDidAppearForAceObject:v5];
}

- (void)compactView:(id)a3 viewDidDisappearForAceObject:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactViewController:self viewDidDisappearForAceObject:v5];
}

- (void)compactView:(id)a3 didChangeEffectiveBottomContentInsetAnimatedWithContext:(id)a4
{
  v5 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self;
  v7 = [(SRCompactViewController *)self _navigationController];
  v8 = [v7 viewControllers];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          [(SRCompactViewController *)v6 _updateAdditionalSafeAreaInsetsForNavigationContentViewController:v15];
          [v15 contentViewDidUpdateSize];
          [v5 animationDuration];
          v17 = v16;
          v18 = [v5 animationOptions];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10003C94C;
          v20[3] = &unk_100167010;
          v21 = v15;
          [UIView animateWithDuration:v18 delay:v20 options:0 animations:v17 completion:0.0];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (double)maximumHeightForCompactView:(id)a3
{
  v3 = [(SiriSharedUIViewStackContainerController *)self->_viewStackContainerController viewStackContainer];
  v4 = [v3 hostingView];
  [v4 frame];
  Height = CGRectGetHeight(v7);

  return Height;
}

- (CGSize)maxSizeForSnippet
{
  v3 = [(SRCompactViewController *)self _compactView];
  [v3 resultViewContentSize];
  v5 = v4;

  v6 = [(SRCompactViewController *)self _compactView];
  v7 = [(SRCompactViewController *)self _resultViewController];
  v8 = [v7 compactResultView];
  [v6 maximumHeightForResultView:v8];
  v10 = v9;

  v11 = v5;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)editableUtterancePresenter:(id)a3 didFinishEditingWithText:(id)a4 selectionResults:(id)a5 shouldStartNewRequest:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  if (v6)
  {
    v11 = [(SRCompactViewController *)self _compactView];
    v12 = [AFUserUtterance alloc];
    v13 = [(SRCompactViewController *)self _speechRecognitionHypothesis];
    v14 = [v13 userUtterance];
    v15 = [v14 correctionIdentifier];
    v16 = [v12 initWithString:v9 correctionIdentifier:v15];

    v17 = [[SRUIFSpeechRecognitionHypothesis alloc] initWithUserUtterance:v16 backingAceObject:0 isFinal:1];
    [v11 setSpeechRecognitionHypothesis:v17];

    [v11 setServerUtterances:&__NSArray0__struct];
    [v11 setShowSnippetView:0 animated:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [(SRUIFSpeechRecognitionHypothesis *)self->_speechRecognitionHypothesis userUtterance];
  [WeakRetained viewController:self didFinishEditingUtteranceWithText:v9 originalUserUtterance:v19 selectionResults:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CCA4;
  block[3] = &unk_100167010;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)editableUtterancePresenter:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactViewController *)self delegate];
  [v6 viewController:self openURL:v5 completion:0];
}

- (void)willDismissEditableUtterancePresenter:(id)a3 transitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v7 animateAlongsideTransition:v10 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(v13, 8);
}

- (void)_updateKeyboardStateFromNotification:(id)a3
{
  v4 = a3;
  v5 = [[SRCompactKeyboardState alloc] initWithKeyboardNotification:v4];

  [(SRCompactViewController *)self _setKeyboardState:v5];
}

- (void)_keyboardWillHideForAmbient:(id)a3
{
  if (self->_isInAmbient)
  {
    [(SRCompactViewController *)self _updateIsInAmbientWithInteractivity:0];
  }
}

- (void)_keyboardWillShowForAmbient:(id)a3
{
  if (self->_isInAmbient)
  {
    [(SRCompactViewController *)self _updateIsInAmbientWithInteractivity:1];
  }
}

- (void)_setKeyboardState:(id)a3
{
  v4 = [a3 copy];
  keyboardState = self->_keyboardState;
  self->_keyboardState = v4;

  [(SRCompactViewController *)self _updateBottomContentInsetKeyboardComponent];
}

- (CGRect)_convertRectFromKeyboard:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SRCompactViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 screen];

  v11 = [v10 coordinateSpace];
  v12 = [(SRCompactViewController *)self view];
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
  v3 = [(SRCompactViewController *)self _keyboardState];
  [v3 frame];
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

- (void)_setInputType:(int64_t)a3
{
  if (self->_inputType != a3)
  {
    self->_inputType = a3;
    [(SRCompactViewController *)self _updateTextRequestViewVisibility];

    [(SRCompactViewController *)self _updateStatusViewVisibility];
  }
}

- (void)textRequestControllerWillBeginTextEditMenuInteraction:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRCompactViewController textRequestControllerWillBeginTextEditMenuInteraction:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - temporarily preventing touches from dismissing Siri while edit menu is up", &v6, 0xCu);
  }

  v5 = [(SRCompactViewController *)self delegate];
  [v5 compactViewController:self preventOutsideTouchesFromDismissingSiri:1];
}

- (void)textRequestControllerDidEndTextEditMenuInteraction:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRCompactViewController textRequestControllerDidEndTextEditMenuInteraction:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #dismissal - edit menu is removed, no longer preventing touches from dismissing Siri", &v6, 0xCu);
  }

  v5 = [(SRCompactViewController *)self delegate];
  [v5 compactViewController:self preventOutsideTouchesFromDismissingSiri:0];
}

- (void)textRequestController:(id)a3 siriRequestCommittedWithText:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(SRCompactViewController *)self delegate];
  [v7 viewController:self siriRequestEnteredWithText:v6];

  [v8 setAllowsCancellation:SiriUIDeviceIsPad() ^ 1];
}

- (BOOL)_alwaysObscureBackgroundContentWhenActive
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 alwaysObscureBackgroundContentWhenActive];

  return v3;
}

- (void)_requestPresentationBackgroundBlurVisible:(BOOL)a3 forReason:(int64_t)a4
{
  v5 = a3;
  v7 = [(SRCompactViewController *)self delegate];
  v8 = [v7 lockStateForCompactViewController:self];

  if (!v8 && ![(SRCompactViewController *)self _alwaysObscureBackgroundContentWhenActive])
  {
    v9 = [(SRCompactViewController *)self backgroundBlurViewController];
    [v9 requestBackgroundBlurVisible:v5 forReason:a4];
  }
}

- (void)blurFromRootNavigationTransitionController:(id)a3 requestHostBlurVisible:(BOOL)a4 requestPresentationBlurVisible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v14 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [(SRCompactViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];
  v12 = [v11 _synchronizedDrawingFence];

  [(SRCompactViewController *)self _requestPresentationBackgroundBlurVisible:v5 forReason:4];
  v13 = [(SRCompactViewController *)self delegate];
  [v13 viewController:self requestsHostBackgroundBlurVisible:v6 reason:4 fence:v12];

  objc_autoreleasePoolPop(v8);
}

- (BOOL)_navigationBarHasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SRCompactViewController *)self _navigationController];
  v7 = [v6 navigationBar];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(SRCompactViewController *)self navigationController];
  v17 = [v16 navigationBar];
  v18 = [(SRCompactViewController *)self _compactView];
  [v17 convertPoint:v18 fromView:{x, y}];
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

- (BOOL)_keyboardHasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SRCompactViewController *)self _keyboardFrame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)_requestKeyboardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactViewController *)self delegate];
  [v5 compactViewController:self requestsKeyboardWithCompletion:v4];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v7 = [v11 viewControllers];
  v8 = [v7 count];

  if (v8 == 2)
  {
    self->_isDrilledIntoSnippet = 1;
    [(SRCompactViewController *)self updateTopInset:1 animated:self->_topInset];
    v10 = [(SRCompactViewController *)self _dismissalPanGestureRecognizer];
    [v10 setEnabled:0];

    if ([(SRCompactViewController *)self _usesDefaultNavigationBar])
    {
      [v11 setNavigationBarHidden:0 animated:v5];
    }
  }

  else if (v8 == 1)
  {
    self->_isDrilledIntoSnippet = 0;
    v9 = [(SRCompactViewController *)self _dismissalPanGestureRecognizer];
    [v9 setEnabled:1];

    if ([(SRCompactViewController *)self _usesDefaultNavigationBar])
    {
      [v11 setNavigationBarHidden:1 animated:v5];
    }

    [(SRCompactViewController *)self updateTopInset:1 animated:self->_topInset];
  }
}

- (BOOL)_contentDiffersBetweenPlatterItems:(id)a3 andItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    if ([v6 count])
    {
      v9 = 0;
      do
      {
        v10 = [v6 objectAtIndex:v9];
        v11 = [v7 objectAtIndex:v9];
        v12 = [(SRCompactViewController *)self contentDiffersBetweenItems:v11 andItems:v10];

        if (v12)
        {
          break;
        }

        ++v9;
      }

      while ([v6 count] > v9);
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

- (BOOL)contentDiffersBetweenItems:(id)a3 andItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = 0;
      v35 = v6;
      v36 = v5;
      while (1)
      {
        v9 = [v5 objectAtIndex:{v8, v35, v36}];
        v10 = [v9 aceObject];

        v11 = [v6 objectAtIndex:v8];
        v12 = [v11 aceObject];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          goto LABEL_23;
        }

        v13 = v10;
        v14 = v12;
        v15 = [v13 sash];
        v16 = [v15 applicationBundleIdentifier];
        v17 = [v14 sash];
        v18 = [v17 applicationBundleIdentifier];
        if ([v16 isEqualToString:v18])
        {
          [v13 sash];
          v19 = v38 = v15;
          v20 = [v19 title];
          v21 = [v14 sash];
          [v21 title];
          v22 = v37 = v13;
          v23 = [v20 isEqualToString:v22];

          if (!v23)
          {
            v27 = 0;
            v6 = v35;
            v5 = v36;
            v13 = v37;
            goto LABEL_18;
          }

          v13 = v37;
          v24 = [v37 siriui_card_compact];
          v25 = [v24 backingCard];
          v26 = [v25 cardSections];
          if (v26)
          {
            [v37 siriui_card_compact];
          }

          else
          {
            [v37 siriui_card];
          }
          v28 = ;
          v6 = v35;
          v5 = v36;
          v39 = [v28 backingCard];

          v29 = [v14 siriui_card_compact];
          v30 = [v29 backingCard];
          v31 = [v30 cardSections];
          if (v31)
          {
            [v14 siriui_card_compact];
          }

          else
          {
            [v14 siriui_card];
          }
          v32 = ;
          v16 = [v32 backingCard];

          v15 = v39;
          v27 = [v39 afui_hasContentEqualTo:v16];
        }

        else
        {

          v27 = 0;
        }

LABEL_18:
        if ((v27 & 1) != 0 && [v5 count] > ++v8)
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