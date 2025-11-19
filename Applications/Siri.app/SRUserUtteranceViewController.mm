@interface SRUserUtteranceViewController
- (BOOL)editableTextViewTextShouldPreventCorrection:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSString)description;
- (double)_scaledPaddingForPadding:(double)a3;
- (double)desiredHeightForWidth:(double)a3;
- (double)desiredPinnedTopPadding;
- (id)_correctionIdentifier;
- (id)_processUserUtterance:(id)a3 isCombined:(BOOL)a4 displayedText:(id)a5 withScore:(BOOL)a6;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)speechAlternativeHighlightListWithScore:(BOOL)a3;
- (id)userSelectionResults:(id)a3;
- (int64_t)_replacementAnimation;
- (void)_checkUpdatedSizingForEditableTextView:(id)a3;
- (void)_createSpeechAlternativeViewsIfNecessary;
- (void)_hideEditableUtteranceView;
- (void)_setUserUtterance:(id)a3;
- (void)_updateViewWithChangeUtteranceIfNeeded:(id)a3;
- (void)_updateViewWithUserUtterance:(id)a3;
- (void)_utteranceViewDidSelect:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)createEditableUtteranceView;
- (void)createViewArray;
- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)a3;
- (void)editableTextViewTextDidChange:(id)a3;
- (void)editableTextViewTextDidFinishCorrecting:(id)a3;
- (void)editableTextViewTextDidResignFirstResponder:(id)a3;
- (void)editableTextViewTextWillBeginCorrecting:(id)a3;
- (void)endEditingAndCorrect:(BOOL)a3;
- (void)endEditingAndCorrectByTouchPoint:(CGPoint)a3;
- (void)handleAceCommand:(id)a3;
- (void)handleChangeUtteranceCommand:(id)a3;
- (void)handleSelectRow:(int64_t)a3;
- (void)handleShowSpeechAlternativesCommand:(id)a3;
- (void)loadView;
- (void)removeSpeechAlternativeViewAndUpdateUtteranceTextIfNecessary;
- (void)removeSpeechAlternatives;
- (void)restoreOriginalEditTextContents:(id)a3;
- (void)setAceObject:(id)a3;
- (void)setUtteranceUserInteractionEnabled:(BOOL)a3;
- (void)siriDidDeactivate;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SRUserUtteranceViewController

- (void)loadView
{
  if (!self->_utteranceView)
  {
    v3 = [[SRUserUtteranceView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    utteranceView = self->_utteranceView;
    self->_utteranceView = v3;

    [(SRUserUtteranceView *)self->_utteranceView setEditable:1];
    v5 = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self _updateViewWithUserUtterance:v5];

    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_utteranceViewDidSelect:"];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v6;

    [(SRUserUtteranceView *)self->_utteranceView addGestureRecognizer:self->_tapRecognizer];
    v8 = objc_alloc_init(SRUserUtteranceContainerView);
    containerView = self->_containerView;
    self->_containerView = v8;

    [(SRUserUtteranceContainerView *)self->_containerView addSubview:self->_utteranceView];
    [(SRUserUtteranceContainerView *)self->_containerView setDisplayView:self->_utteranceView];
    v10 = self->_containerView;

    [(SRUserUtteranceViewController *)self setView:v10];
  }
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(SRUserUtteranceViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_previousBounds.size.width != v9 || self->_previousBounds.size.height != v11)
  {
    if (self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews)
    {
      v13 = [(UICollectionView *)self->_speechAlternativeCollectionView collectionViewLayout];
      [v13 invalidateLayout];
    }

    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 1;
    self->_previousBounds.origin.x = v5;
    self->_previousBounds.origin.y = v7;
    self->_previousBounds.size.width = v9;
    self->_previousBounds.size.height = v11;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(SRUserUtteranceViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 0;
    v14 = [(UICollectionView *)self->_speechAlternativeCollectionView collectionViewLayout];
    [v14 invalidateLayout];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CE74;
    block[3] = &unk_100167010;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v15.receiver = self;
  v15.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v15 viewDidLayoutSubviews];
  [(SRUserUtteranceView *)self->_utteranceView frame];
  v6 = v5;
  v8 = v7;
  if (self->_oldUtteranceViewSize.width != v3 || self->_oldUtteranceViewSize.height != v4)
  {
    v10 = v3;
    v11 = v4;
    v12 = [(SRUserUtteranceViewController *)self delegate];
    [v12 siriViewControllerHeightDidChange:self];

    v16.origin.x = v6;
    v16.origin.y = v8;
    v16.size.width = v10;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v11;
    Height = CGRectGetHeight(v17);
    self->_oldUtteranceViewSize.width = Width;
    self->_oldUtteranceViewSize.height = Height;
  }
}

- (void)_updateViewWithUserUtterance:(id)a3
{
  utteranceView = self->_utteranceView;
  v5 = a3;
  v6 = [v5 bestTextInterpretation];
  [(SRUserUtteranceView *)utteranceView setText:v6];

  v9 = [v5 allPhrases];

  if (v9)
  {
    self->_changeUtteranceShouldDisplay = 1;
    self->_receivedFinalRecognitionResult = 1;
    [(SRUserUtteranceViewController *)self _updateViewWithChangeUtteranceIfNeeded:self->_changeUtteranceCommand];
    if (self->_editableUtteranceView)
    {
      v7 = [(SRUserUtteranceViewController *)self _userUtterance];
      [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:v7];
    }

    else
    {
      [(SRUserUtteranceViewController *)self createEditableUtteranceView];
    }

    [(SRUserUtteranceView *)self->_utteranceView setBlendEffectEnabled:1];
    v8 = [(SRUserUtteranceViewController *)self delegate];
    [v8 siriViewControllerHeightDidChange:self];
  }
}

- (void)_updateViewWithChangeUtteranceIfNeeded:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_changeUtteranceShouldDisplay)
    {
      v10 = v4;
      v5 = [v4 utteranceIndex];
      v4 = v10;
      if (v5 >= 1)
      {
        v6 = [(SRUserUtteranceViewController *)self _userUtterance];
        v7 = [v6 numberOfAlternativeUtterances];

        v4 = v10;
        if (v5 < v7)
        {
          v8 = [(SRUserUtteranceViewController *)self _userUtterance];
          v9 = [v8 textOfUtteranceAtIndex:v5];

          [(SRUserUtteranceView *)self->_utteranceView setText:v9];
          v4 = v10;
        }
      }
    }
  }
}

- (void)setUtteranceUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v8 setUtteranceUserInteractionEnabled:?];
  v5 = !v3;
  [(SRUserUtteranceView *)self->_utteranceView setChevronHidden:v5];
  utteranceView = self->_utteranceView;
  tapRecognizer = self->_tapRecognizer;
  if (v5)
  {
    [(SRUserUtteranceView *)utteranceView removeGestureRecognizer:tapRecognizer];
  }

  else
  {
    [(SRUserUtteranceView *)utteranceView addGestureRecognizer:tapRecognizer];
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = SRUserUtteranceViewController;
  v3 = [(SRUserUtteranceViewController *)&v7 description];
  v4 = [(SRUserUtteranceViewController *)self _userUtterance];
  v5 = [v3 stringByAppendingFormat:@"%@", v4];

  return v5;
}

- (void)_setUserUtterance:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v6 = [(SRUserUtteranceViewController *)self _userUtterance];

    if (v6 != v7)
    {
      self->_forceBestTextInterpretation = 0;
      [(SRUserUtteranceViewController *)self _updateViewWithUserUtterance:v7];
      objc_storeStrong(&self->_userUtterance, a3);
    }
  }

  _objc_release_x1();
}

- (id)_correctionIdentifier
{
  v2 = [(SRUserUtteranceViewController *)self _userUtterance];
  v3 = [v2 correctionIdentifier];

  return v3;
}

- (double)desiredHeightForWidth:(double)a3
{
  self->_latestGivenWidth = a3;
  if (self->_showSpeechAlternativeList)
  {
    [(SiriUICollectionViewFlowLayout *)self->_speechAlternativeCollectionViewLayout collectionViewContentSize];
  }

  else
  {
    [(SRUserUtteranceView *)self->_utteranceView sizeThatFits:?];
  }

  return v3;
}

- (void)removeSpeechAlternatives
{
  speechAlternativeDisplayList = self->_speechAlternativeDisplayList;
  self->_speechAlternativeDisplayList = &__NSArray0__struct;

  [(NSMutableArray *)self->_speechAlternativeList removeAllObjects];
  [(SRUserUtteranceViewController *)self createViewArray];
  [(UICollectionView *)self->_speechAlternativeCollectionView reloadData];
  speechAlternativeCollectionView = self->_speechAlternativeCollectionView;
  v5 = SiriLanguageSemanticContentAttribute();

  [(UICollectionView *)speechAlternativeCollectionView recursive_setSemanticContentAttribute:v5];
}

- (void)removeSpeechAlternativeViewAndUpdateUtteranceTextIfNecessary
{
  self->_showSpeechAlternativeList = 0;
  v3 = [(SRUserUtteranceViewController *)self delegate];
  [v3 siriViewControllerHeightDidChange:self pinTopOfSnippet:1];

  v4 = [(SRUserUtteranceViewController *)self _privateDelegate];
  [v4 siriViewControllerRequestToPin:self];

  if (self->_textChanged)
  {

    [(SRUserUtteranceViewController *)self removeSpeechAlternatives];
  }

  else
  {
    v5 = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:v5];

    utteranceView = self->_utteranceView;
    v7 = [(SREditableTextView *)self->_editableUtteranceView text];
    [(SRUserUtteranceView *)utteranceView setText:v7];
  }
}

- (void)handleAceCommand:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_changeUtteranceCommand, a3);
    [(SRUserUtteranceViewController *)self handleChangeUtteranceCommand:self->_changeUtteranceCommand];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SRUserUtteranceViewController *)self handleShowSpeechAlternativesCommand:v5];
    }
  }
}

- (void)handleShowSpeechAlternativesCommand:(id)a3
{
  v4 = [(SRUserUtteranceViewController *)self _userUtterance];
  [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:v4];

  v5 = [(UICollectionView *)self->_speechAlternativeCollectionView window];

  if (v5)
  {
    editableUtteranceView = self->_editableUtteranceView;

    [(SREditableTextView *)editableUtteranceView beginEditing];
  }

  else
  {
    utteranceView = self->_utteranceView;

    [(SRUserUtteranceViewController *)self _utteranceViewDidSelect:utteranceView];
  }
}

- (void)handleChangeUtteranceCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SRUserUtteranceViewController handleChangeUtteranceCommand:]";
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s handleChangeUtteranceCommand: %@", &v22, 0x16u);
  }

  if (self->_receivedFinalRecognitionResult)
  {
    changeUtteranceCommand = v4;
    v7 = [(SAUIChangePrimaryUtterance *)changeUtteranceCommand utteranceIndex];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = [(SRUserUtteranceViewController *)self _userUtterance];
      v10 = [v9 numberOfAlternativeUtterances];

      if (v8 < v10)
      {
        self->_forceBestTextInterpretation = 1;
        v11 = [(SRUserUtteranceViewController *)self _userUtterance];
        v12 = [v11 dictationResult];

        v13 = [(SRUserUtteranceViewController *)self _userUtterance];
        v14 = [v13 updateDictationResult:v12 withAlternativeUtteranceAtIndex:v8];

        v15 = [(SRUserUtteranceViewController *)self speechAlternativeHighlightListWithScore:SiriUIShowSpeechAlternativeScore()];
        speechAlternativeDisplayList = self->_speechAlternativeDisplayList;
        self->_speechAlternativeDisplayList = v15;

        [(SRUserUtteranceViewController *)self createViewArray];
        [(UICollectionView *)self->_speechAlternativeCollectionView reloadData];
        [(UICollectionView *)self->_speechAlternativeCollectionView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
        utteranceView = self->_utteranceView;
        v18 = [(SREditableTextView *)self->_editableUtteranceView text];
        [(SRUserUtteranceView *)utteranceView setText:v18];

        [(SRUserUtteranceView *)self->_utteranceView setNeedsLayout];
        v19 = [(SRUserUtteranceViewController *)self delegate];
        [v19 siriViewControllerHeightDidChange:self];

        v20 = [(SRUserUtteranceViewController *)self view];
        [v20 setNeedsLayout];
      }
    }
  }

  else
  {
    v21 = v4;
    changeUtteranceCommand = self->_changeUtteranceCommand;
    self->_changeUtteranceCommand = v21;
  }
}

- (void)setAceObject:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v24 setAceObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 af_userUtteranceValue];
    v7 = [v5 title];
    speechAlternativeListTitle = self->_speechAlternativeListTitle;
    self->_speechAlternativeListTitle = v7;

    if (!self->_speechAlternativeListTitle)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 siriUILocalizedStringForKey:@"TITLE_FOR_SPEECH_ALTERNATIVE_LIST" table:0];
      v11 = [NSLocale alloc];
      v12 = AFUIGetLanguageCode();
      v13 = [v11 initWithLocaleIdentifier:v12];
      v14 = [v10 uppercaseStringWithLocale:v13];
      v15 = self->_speechAlternativeListTitle;
      self->_speechAlternativeListTitle = v14;
    }

    v16 = +[NSMutableDictionary dictionary];
    alternativeInfoMap = self->_alternativeInfoMap;
    self->_alternativeInfoMap = v16;

    v18 = [v5 sessionId];
    sessionId = self->_sessionId;
    self->_sessionId = v18;

    if (AFIsInternalInstall())
    {
      v25 = @"bestTextInterpretation";
      v20 = [v5 af_bestTextInterpretation];
      v26 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    }

    else
    {
      v21 = 0;
    }

    v22 = +[AFAnalytics sharedAnalytics];
    [v22 logEventWithType:1507 context:v21];

LABEL_10:
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v5 = [v4 text];
    v6 = [[AFUserUtterance alloc] initWithString:v5 correctionIdentifier:0];
    goto LABEL_10;
  }

  v6 = [v4 af_userUtteranceValue];
LABEL_11:
  [(SRUserUtteranceViewController *)self _setUserUtterance:v6];
  v23 = [(SRUserUtteranceViewController *)self _userUtterance];
  [(SRUserUtteranceViewController *)self _updateViewWithUserUtterance:v23];
}

- (double)desiredPinnedTopPadding
{
  if (SiriUIIsCompactWidth())
  {
    v3 = 52.0;
  }

  else
  {
    v4 = SiriUIIsCompactHeight();
    v3 = 84.0;
    if (v4)
    {
      v3 = 52.0;
    }
  }

  [(SRUserUtteranceViewController *)self _scaledPaddingForPadding:v3];
  return result;
}

- (double)_scaledPaddingForPadding:(double)a3
{
  v5 = +[UIFont siriui_userUtteranceFont];
  [v5 _scaledValueForValue:a3];
  v7 = v6;

  [(SRUserUtteranceContainerView *)self->_containerView firstLineBaselineOffsetFromTop];
  return v7 - v8;
}

- (void)endEditingAndCorrect:(BOOL)a3
{
  v3 = a3;
  v5 = [(SREditableTextView *)self->_editableUtteranceView window];

  if (v5)
  {
    [(SREditableTextView *)self->_editableUtteranceView endEditingAndCorrect:v3];
  }

  if (!v3)
  {
    self->_showSpeechAlternativeList = 0;
    [(SRUserUtteranceViewController *)self _hideEditableUtteranceView];
    v6 = [(SRUserUtteranceViewController *)self _privateDelegate];
    [v6 siriViewControllerRequestTearDownEditingViewController:self];
  }
}

- (void)endEditingAndCorrectByTouchPoint:(CGPoint)a3
{
  v4 = [(UICollectionView *)self->_speechAlternativeCollectionView hitTest:0 withEvent:a3.x, a3.y];
  v5 = v4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    viewArray = self->_viewArray;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10004DF60;
    v11 = &unk_100167AA8;
    v12 = v4;
    v13 = &v14;
    [(NSMutableArray *)viewArray enumerateObjectsUsingBlock:&v8];
  }

  v7 = [(SRUserUtteranceViewController *)self _privateDelegate:v8];
  [v7 siriViewControllerRequestTearDownEditingViewController:self];

  if (v15[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SRUserUtteranceViewController *)self removeSpeechAlternativeViewAndUpdateUtteranceTextIfNecessary];
    [(SRUserUtteranceViewController *)self _hideEditableUtteranceView];
  }

  else
  {
    [(SRUserUtteranceViewController *)self handleSelectRow:?];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)siriDidDeactivate
{
  if ([(SREditableTextView *)self->_editableUtteranceView isFirstResponder])
  {

    [(SRUserUtteranceViewController *)self endEditingAndCorrect:0];
  }
}

- (int64_t)_replacementAnimation
{
  if (SiriUIIsStreamingDictationEnabled())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)_utteranceViewDidSelect:(id)a3
{
  if (self->_receivedFinalRecognitionResult)
  {
    v7[7] = v3;
    v7[8] = v4;
    [(SRUserUtteranceViewController *)self _createSpeechAlternativeViewsIfNecessary];
    self->_showSpeechAlternativeList = 1;
    [(SiriUICollectionViewFlowLayout *)self->_speechAlternativeCollectionViewLayout invalidateLayout];
    [(SREditableTextView *)self->_editableUtteranceView beginEditing];
    containerView = self->_containerView;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004E1B8;
    v7[3] = &unk_100167010;
    v7[4] = self;
    [(SRUserUtteranceContainerView *)containerView animateToEditWithDuration:v7 completion:0.1];
  }
}

- (void)_hideEditableUtteranceView
{
  utteranceView = self->_utteranceView;
  v4 = [(SREditableTextView *)self->_editableUtteranceView text];
  [(SRUserUtteranceView *)utteranceView setText:v4];

  containerView = self->_containerView;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004E2E4;
  v6[3] = &unk_100167010;
  v6[4] = self;
  [(SRUserUtteranceContainerView *)containerView animateToDisplayWithDuration:v6 completion:0.1];
}

- (void)createEditableUtteranceView
{
  if (!self->_editableUtteranceView)
  {
    v3 = [[SREditableTextView alloc] initWithFrame:0 presentationStyle:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    editableUtteranceView = self->_editableUtteranceView;
    self->_editableUtteranceView = v3;

    if (SiriLanguageIsRTL())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [(SREditableTextView *)self->_editableUtteranceView setTextAlignment:v5];
    [(SREditableTextView *)self->_editableUtteranceView setDelegate:self];
    [(SREditableTextView *)self->_editableUtteranceView setAutoresizingMask:18];
    v6 = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:v6];
  }
}

- (BOOL)editableTextViewTextShouldPreventCorrection:(id)a3
{
  v3 = self;
  v4 = [(SRUserUtteranceViewController *)self _privateDelegate];
  LOBYTE(v3) = [v4 siriViewControllerShouldPreventUserInteraction:v3];

  return v3;
}

- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SRUserUtteranceViewController *)self _privateDelegate];
  [v5 siriViewControllerRequestKeyboardForTapToEditWithCompletion:v4];
}

- (void)editableTextViewTextWillBeginCorrecting:(id)a3
{
  v4 = [(SREditableTextView *)self->_editableUtteranceView text];
  preCorrectionText = self->_preCorrectionText;
  self->_preCorrectionText = v4;

  editableUtteranceView = self->_editableUtteranceView;
  [(SREditableTextView *)editableUtteranceView frame];
  [(SREditableTextView *)editableUtteranceView sizeThatFits:CGRectGetWidth(v18), 1.79769313e308];
  self->_currentTextSize.width = v7;
  self->_currentTextSize.height = v8;
  self->_textChanged = 0;
  speechAlternativeDisplayList = self->_speechAlternativeDisplayList;
  if (!speechAlternativeDisplayList)
  {
    v10 = [(SRUserUtteranceViewController *)self speechAlternativeHighlightListWithScore:SiriUIShowSpeechAlternativeScore()];
    v11 = self->_speechAlternativeDisplayList;
    self->_speechAlternativeDisplayList = v10;

    speechAlternativeDisplayList = self->_speechAlternativeDisplayList;
  }

  if ([(NSArray *)speechAlternativeDisplayList count])
  {
    v12 = [(SRUserUtteranceViewController *)self delegate];
    [v12 siriViewControllerHeightDidChange:self pinTopOfSnippet:1];
  }

  v13 = [(SRUserUtteranceViewController *)self _privateDelegate];
  [v13 siriViewControllerWillBeginEditing:self];

  v16 = +[AFAnalytics sharedAnalytics];
  v14 = [(SRUserUtteranceViewController *)self aceObject];
  v15 = AFAnalyticsContextCreateWithCommand();
  [v16 logEventWithType:1424 context:v15];
}

- (void)_checkUpdatedSizingForEditableTextView:(id)a3
{
  v4 = a3;
  [v4 frame];
  [v4 sizeThatFits:{CGRectGetWidth(v12), 1.79769313e308}];
  v6 = v5;
  v8 = v7;

  if (v6 != self->_currentTextSize.width || v8 != self->_currentTextSize.height)
  {
    self->_currentTextSize.width = v6;
    self->_currentTextSize.height = v8;
    [(SiriUICollectionViewFlowLayout *)self->_speechAlternativeCollectionViewLayout invalidateLayout];
    v10 = [(SRUserUtteranceViewController *)self delegate];
    [v10 siriViewControllerHeightDidChange:self];
  }
}

- (void)editableTextViewTextDidChange:(id)a3
{
  v4 = a3;
  [(SRUserUtteranceViewController *)self _checkUpdatedSizingForEditableTextView:v4];
  [v4 setNeedsLayout];
  preCorrectionText = self->_preCorrectionText;
  v6 = [v4 text];

  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  self->_textChanged = ![(NSString *)preCorrectionText isEqualToString:v8];

  v9 = [(SRUserUtteranceViewController *)self _privateDelegate];
  [v9 siriViewControllerRequestToPin:self];
}

- (void)editableTextViewTextDidFinishCorrecting:(id)a3
{
  v4 = a3;
  v5 = [(SRUserUtteranceViewController *)self _privateDelegate];
  [v5 siriViewControllerDidEndEditing:self];

  v6 = [v4 text];
  v7 = v6;
  self->_showSpeechAlternativeList = 0;
  if (!self->_textChanged)
  {
    v11 = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:v11];
    goto LABEL_6;
  }

  if (![v6 length])
  {
    v18 = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:v18];

    utteranceView = self->_utteranceView;
    v20 = [(SRUserUtteranceViewController *)self _userUtterance];
    v21 = [v20 bestTextInterpretation];
    [(SRUserUtteranceView *)utteranceView setText:v21];

    goto LABEL_10;
  }

  if (![(NSString *)self->_preCorrectionText isEqualToString:v7])
  {
    v8 = [AFUserUtterance alloc];
    v9 = [(SRUserUtteranceViewController *)self _userUtterance];
    v10 = [v9 correctionIdentifier];
    v11 = [v8 initWithString:v7 correctionIdentifier:v10];

    [(SRUserUtteranceViewController *)self _setUserUtterance:v11];
    [(SRUserUtteranceViewController *)self removeSpeechAlternatives];
    [v4 setText:v7];
    self->_newRequestSent = 1;
LABEL_6:
  }

  v12 = objc_alloc_init(SAUIListItem);
  [v12 setSelectionText:v7];
  v13 = [(SRUserUtteranceViewController *)self delegate];
  [v13 siriViewController:self addSelectionResponse:v12];

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v22 = 136315394;
    v23 = "[SRUserUtteranceViewController editableTextViewTextDidFinishCorrecting:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s CorrectedText = %@", &v22, 0x16u);
  }

  v15 = [(SRUserUtteranceViewController *)self _privateDelegate];
  v16 = [(SRUserUtteranceViewController *)self _correctionIdentifier];
  v17 = [(SRUserUtteranceViewController *)self userSelectionResults:v7];
  [v15 siriViewController:self startCorrectedSpeechRequestWithText:v7 correctionIdentifier:v16 userSelectionResults:v17];

LABEL_10:
  [(SRUserUtteranceViewController *)self _hideEditableUtteranceView];
}

- (void)editableTextViewTextDidResignFirstResponder:(id)a3
{
  v4 = [(SRUserUtteranceViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SRUserUtteranceViewController *)self delegate];
    [v6 siriViewControllerDidResignFirstResponder:self];
  }
}

- (void)restoreOriginalEditTextContents:(id)a3
{
  v8 = a3;
  v4 = [v8 allPhrases];
  if (v4 && !self->_forceBestTextInterpretation)
  {
    editableUtteranceView = self->_editableUtteranceView;
    v6 = [v8 correctionIdentifier];
    [(SREditableTextView *)editableUtteranceView setDictationResult:v4 withCorrectionIdentifier:v6];
  }

  else
  {
    v5 = self->_editableUtteranceView;
    v6 = [v8 bestTextInterpretation];
    [(SREditableTextView *)v5 setText:v6];
  }
}

- (void)createViewArray
{
  v3 = +[NSMutableArray array];
  viewArray = self->_viewArray;
  self->_viewArray = v3;

  editableUtteranceView = self->_editableUtteranceView;
  self->_editableUtteranceView = 0;

  [(SRUserUtteranceViewController *)self createEditableUtteranceView];
  [(NSMutableArray *)self->_viewArray addObject:self->_editableUtteranceView];
  if ([(NSMutableArray *)self->_speechAlternativeList count])
  {
    v6 = self->_viewArray;
    v7 = [SRSpeechAlternativeLabelCellView alloc];
    speechAlternativeListTitle = self->_speechAlternativeListTitle;
    v9 = +[UIFont siriui_serverUtteranceFont];
    v10 = [(SRSpeechAlternativeLabelCellView *)v7 initWithTitle:speechAlternativeListTitle font:v9];
    [(NSMutableArray *)v6 addObject:v10];

    self->_speechAlternativesStartIndex = [(NSMutableArray *)self->_viewArray count];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_speechAlternativeDisplayList;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          v17 = [SRSpeechAlternativeCellView alloc];
          v18 = [(SRSpeechAlternativeCellView *)v17 initWithTitle:v16, v19];
          [(NSMutableArray *)self->_viewArray addObject:v18];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }
}

- (void)_createSpeechAlternativeViewsIfNecessary
{
  if (!self->_speechAlternativeDisplayList)
  {
    v3 = [(SRUserUtteranceViewController *)self speechAlternativeHighlightListWithScore:SiriUIShowSpeechAlternativeScore()];
    speechAlternativeDisplayList = self->_speechAlternativeDisplayList;
    self->_speechAlternativeDisplayList = v3;
  }

  if (!self->_speechAlternativeCollectionView)
  {
    v5 = objc_alloc_init(SiriUICollectionViewFlowLayout);
    speechAlternativeCollectionViewLayout = self->_speechAlternativeCollectionViewLayout;
    self->_speechAlternativeCollectionViewLayout = v5;

    [(SiriUICollectionViewFlowLayout *)self->_speechAlternativeCollectionViewLayout setMinimumLineSpacing:0.0];
    [(SiriUICollectionViewFlowLayout *)self->_speechAlternativeCollectionViewLayout setMinimumInteritemSpacing:0.0];
    v7 = [[UICollectionView alloc] initWithFrame:self->_speechAlternativeCollectionViewLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    speechAlternativeCollectionView = self->_speechAlternativeCollectionView;
    self->_speechAlternativeCollectionView = v7;

    [(UICollectionView *)self->_speechAlternativeCollectionView setDelegate:self];
    [(UICollectionView *)self->_speechAlternativeCollectionView setDataSource:self];
    [(UICollectionView *)self->_speechAlternativeCollectionView setScrollEnabled:0];
    [(UICollectionView *)self->_speechAlternativeCollectionView setShowsVerticalScrollIndicator:0];
    v9 = self->_speechAlternativeCollectionView;
    v10 = +[UIColor clearColor];
    [(UICollectionView *)v9 setBackgroundColor:v10];

    v11 = self->_speechAlternativeCollectionView;
    v12 = objc_opt_class();
    v13 = +[SiriUIContentCollectionViewCell reuseIdentifier];
    [(UICollectionView *)v11 registerClass:v12 forCellWithReuseIdentifier:v13];

    [(SRUserUtteranceViewController *)self createViewArray];
    [(UICollectionView *)self->_speechAlternativeCollectionView reloadData];
    [(UICollectionView *)self->_speechAlternativeCollectionView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
    containerView = self->_containerView;
    v15 = self->_speechAlternativeCollectionView;

    [(SRUserUtteranceContainerView *)containerView setTableView:v15];
  }
}

- (id)speechAlternativeHighlightListWithScore:(BOOL)a3
{
  v3 = a3;
  if (SiriUIDisableAlternativesFeature())
  {
    v5 = 0;
    goto LABEL_23;
  }

  speechAlternativeList = self->_speechAlternativeList;
  if (speechAlternativeList)
  {
    [(NSMutableArray *)speechAlternativeList removeAllObjects];
  }

  v7 = +[NSMutableArray array];
  v8 = self->_speechAlternativeList;
  self->_speechAlternativeList = v7;

  [(NSMutableDictionary *)self->_alternativeInfoMap removeAllObjects];
  self->_showOnDeviceResults = 0;
  v9 = [(SRUserUtteranceViewController *)self _userUtterance];
  v10 = [v9 allRecognitionStringsAndScores];

  v11 = [(SRUserUtteranceViewController *)self _userUtterance];
  v12 = [v11 textOfUtteranceAtIndex:0];

  if (!v12)
  {
    v26 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC06C(v26);
    }

    v5 = 0;
    goto LABEL_22;
  }

  v13 = objc_alloc_init(SRUIFAlternativeInfo);
  [v13 setOriginalRank:&off_10016E590];
  v14 = [v10 objectForKey:v12];
  v15 = AFUserUtteranceConfidenceAverageKey;
  v16 = [v14 objectForKey:AFUserUtteranceConfidenceAverageKey];
  [v13 setOriginalScore:v16];

  [v13 setIsFromDevice:&__kCFBooleanFalse];
  [(NSMutableDictionary *)self->_alternativeInfoMap setObject:v13 forKey:v12];
  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v10 objectForKey:v12];
    v20 = [v19 objectForKey:v15];
    v30 = 136315650;
    v31 = "[SRUserUtteranceViewController speechAlternativeHighlightListWithScore:]";
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Original utterance:  %@ (%@)", &v30, 0x20u);
  }

  v21 = [(SRUserUtteranceViewController *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if ((v22 & 1) == 0)
  {
    v24 = 0;
LABEL_18:
    v27 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "[SRUserUtteranceViewController speechAlternativeHighlightListWithScore:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s server results only", &v30, 0xCu);
    }

    v28 = [(SRUserUtteranceViewController *)self _userUtterance];
    v5 = [(SRUserUtteranceViewController *)self _processUserUtterance:v28 isCombined:0 displayedText:v12 withScore:v3];

    goto LABEL_21;
  }

  v23 = [(SRUserUtteranceViewController *)self delegate];
  v24 = [v23 updatedUserUtteranceForSiriViewController:self];

  if (!v24 || [v24 numberOfAlternativeUtterances] < 1)
  {
    goto LABEL_18;
  }

  v25 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = "[SRUserUtteranceViewController speechAlternativeHighlightListWithScore:]";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s combined results", &v30, 0xCu);
  }

  v5 = [(SRUserUtteranceViewController *)self _processUserUtterance:v24 isCombined:1 displayedText:v12 withScore:v3];
LABEL_21:

LABEL_22:
LABEL_23:

  return v5;
}

- (id)_processUserUtterance:(id)a3 isCombined:(BOOL)a4 displayedText:(id)a5 withScore:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v39 = NSForegroundColorAttributeName;
  v12 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v40 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v37 = NSForegroundColorAttributeName;
  v14 = [UIColor colorWithWhite:1.0 alpha:0.5];
  v38 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];

  v16 = [v10 allRecognitionStringsAndScores];
  v17 = [v16 keysSortedByValueUsingComparator:&stru_100167AE8];
  +[NSMutableArray array];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10004F6D0;
  v27[3] = &unk_100167B10;
  v28 = v11;
  v29 = v16;
  v30 = self;
  v31 = v15;
  v35 = a4;
  v32 = v10;
  v33 = v13;
  v18 = v36 = a6;
  v34 = v18;
  v19 = v13;
  v20 = v10;
  v21 = v15;
  v22 = v16;
  v23 = v11;
  [v17 enumerateObjectsUsingBlock:v27];
  v24 = v34;
  v25 = v18;

  return v18;
}

- (void)handleSelectRow:(int64_t)a3
{
  if ([(NSMutableArray *)self->_speechAlternativeList count])
  {
    v5 = a3 - self->_speechAlternativesStartIndex;
    if (v5 >= 0 && v5 < [(NSMutableArray *)self->_speechAlternativeList count])
    {
      v6 = [(NSMutableArray *)self->_speechAlternativeList objectAtIndex:v5];
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "[SRUserUtteranceViewController handleSelectRow:]";
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s alternativeString = %@", &v17, 0x16u);
      }

      v8 = [AFUserUtterance alloc];
      v9 = [(SRUserUtteranceViewController *)self _userUtterance];
      v10 = [v9 correctionIdentifier];
      v11 = [v8 initWithString:v6 correctionIdentifier:v10];

      [(SRUserUtteranceViewController *)self _setUserUtterance:v11];
      [(SRUserUtteranceView *)self->_utteranceView setText:v6];
      [(SREditableTextView *)self->_editableUtteranceView setText:v6];
      self->_showSpeechAlternativeList = 0;
      [(SRUserUtteranceViewController *)self removeSpeechAlternatives];
      v12 = [(SRUserUtteranceViewController *)self delegate];
      [v12 siriViewControllerHeightDidChange:self pinTopOfSnippet:1];

      v13 = [(SRUserUtteranceViewController *)self _privateDelegate];
      v14 = [(SRUserUtteranceViewController *)self _correctionIdentifier];
      v15 = [(SRUserUtteranceViewController *)self userSelectionResults:v6];
      [v13 siriViewController:self startCorrectedSpeechRequestWithText:v6 correctionIdentifier:v14 userSelectionResults:v15];

      self->_newRequestSent = 1;
      [(SRUserUtteranceViewController *)self _hideEditableUtteranceView];
    }
  }

  else
  {
    editableUtteranceView = self->_editableUtteranceView;

    [(SREditableTextView *)editableUtteranceView beginEditing];
  }
}

- (id)userSelectionResults:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AFUserUtteranceSelectionResults);
  v6 = v5;
  if (v4)
  {
    v7 = [(NSMutableDictionary *)self->_alternativeInfoMap objectForKey:v4];
    v8 = [v7 originalScore];
    [v6 setOriginalScore:v8];

    v9 = [v7 originalRank];
    [v6 setOriginalRank:v9];

    v10 = [v7 isFromDevice];
    v11 = [v10 BOOLValue];

    v12 = &SASStartCorrectedSpeechRequestUtteranceSourceCLIENTValue;
    if (!v11)
    {
      v12 = &SASStartCorrectedSpeechRequestUtteranceSourceSERVERValue;
    }

    [v6 setUtteranceSource:*v12];
    v13 = [v7 combinedRank];
    [v6 setCombinedRank:v13];

    v14 = [v7 combinedScore];
    [v6 setCombinedScore:v14];
  }

  else
  {
    [v5 setUtteranceSource:SASStartCorrectedSpeechRequestUtteranceSourceUSER_EDITEDValue];
  }

  v15 = [(SRUserUtteranceViewController *)self aceObject];
  v16 = [v15 refId];
  [v6 setInteractionId:v16];

  v17 = [NSNumber numberWithBool:self->_showOnDeviceResults];
  [v6 setOnDeviceUtterancesPresent:v17];

  [v6 setSessionId:self->_sessionId];
  [v6 setPreviousUtterance:self->_preCorrectionText];
  v18 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[SRUserUtteranceViewController userSelectionResults:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s AFUserUtteranceSelectionResults = %@", &v20, 0x16u);
  }

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [v9 setHasChevron:0];
  v10 = [v6 item];

  v11 = +[UIColor clearColor];
  [v9 setBackgroundColor:v11];

  if (v10)
  {
    [v9 setKeylineType:4];
    v12 = [v9 keyline];
    [v12 setCustomLeftPadding:44.0];

    v13 = [v9 keyline];
    [v13 setCustomRightPadding:44.0];

    v14 = [v9 keyline];
    v15 = [UIColor colorWithWhite:0.5 alpha:0.3];
    [v14 setCustomBackgroundColor:v15];
  }

  else
  {
    [v9 setKeylineType:0];
  }

  v16 = [(NSMutableArray *)self->_viewArray objectAtIndex:v10];
  v17 = [v9 contentView];
  [v9 bounds];
  Width = CGRectGetWidth(v44);
  [v9 bounds];
  [v17 setBounds:{0.0, 0.0, Width, CGRectGetHeight(v45)}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v9 contentView];
    [v19 addSubview:v16];

    v20 = [v9 contentView];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v16 edgeInsets];
    v30 = v22 + v29;
    v32 = v24 + v31;
    v34 = v26 - (v29 + v33);
    v36 = v28 - (v31 + v35);
LABEL_9:

    [v16 setFrame:{v30, v32, v34, v36}];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v37 = [v9 contentView];
    [v37 addSubview:v16];

    v20 = [v9 contentView];
    [v20 bounds];
    v30 = v38;
    v32 = v39;
    v34 = v40;
    v36 = v41;
    goto LABEL_9;
  }

LABEL_10:

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  v7 = [v6 row];

  [(SRUserUtteranceViewController *)self handleSelectRow:v7];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(SRUserUtteranceViewController *)self delegate];
  [v7 siriViewControllerExpectedWidth:self];
  width = v8;

  height = CGSizeZero.height;
  v11 = [v6 item];

  if (v11 >= [(NSMutableArray *)self->_viewArray count])
  {
    width = CGSizeZero.width;
  }

  else
  {
    v12 = [(NSMutableArray *)self->_viewArray objectAtIndex:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v12 sizeThatFits:{width, 1.79769313e308}];
      height = v13;
    }
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

@end