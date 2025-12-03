@interface SRUserUtteranceViewController
- (BOOL)editableTextViewTextShouldPreventCorrection:(id)correction;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSString)description;
- (double)_scaledPaddingForPadding:(double)padding;
- (double)desiredHeightForWidth:(double)width;
- (double)desiredPinnedTopPadding;
- (id)_correctionIdentifier;
- (id)_processUserUtterance:(id)utterance isCombined:(BOOL)combined displayedText:(id)text withScore:(BOOL)score;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)speechAlternativeHighlightListWithScore:(BOOL)score;
- (id)userSelectionResults:(id)results;
- (int64_t)_replacementAnimation;
- (void)_checkUpdatedSizingForEditableTextView:(id)view;
- (void)_createSpeechAlternativeViewsIfNecessary;
- (void)_hideEditableUtteranceView;
- (void)_setUserUtterance:(id)utterance;
- (void)_updateViewWithChangeUtteranceIfNeeded:(id)needed;
- (void)_updateViewWithUserUtterance:(id)utterance;
- (void)_utteranceViewDidSelect:(id)select;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)createEditableUtteranceView;
- (void)createViewArray;
- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)completion;
- (void)editableTextViewTextDidChange:(id)change;
- (void)editableTextViewTextDidFinishCorrecting:(id)correcting;
- (void)editableTextViewTextDidResignFirstResponder:(id)responder;
- (void)editableTextViewTextWillBeginCorrecting:(id)correcting;
- (void)endEditingAndCorrect:(BOOL)correct;
- (void)endEditingAndCorrectByTouchPoint:(CGPoint)point;
- (void)handleAceCommand:(id)command;
- (void)handleChangeUtteranceCommand:(id)command;
- (void)handleSelectRow:(int64_t)row;
- (void)handleShowSpeechAlternativesCommand:(id)command;
- (void)loadView;
- (void)removeSpeechAlternativeViewAndUpdateUtteranceTextIfNecessary;
- (void)removeSpeechAlternatives;
- (void)restoreOriginalEditTextContents:(id)contents;
- (void)setAceObject:(id)object;
- (void)setUtteranceUserInteractionEnabled:(BOOL)enabled;
- (void)siriDidDeactivate;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
    _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self _updateViewWithUserUtterance:_userUtterance];

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
  view = [(SRUserUtteranceViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_previousBounds.size.width != v9 || self->_previousBounds.size.height != v11)
  {
    if (self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews)
    {
      collectionViewLayout = [(UICollectionView *)self->_speechAlternativeCollectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }

    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 1;
    self->_previousBounds.origin.x = v5;
    self->_previousBounds.origin.y = v7;
    self->_previousBounds.size.width = v9;
    self->_previousBounds.size.height = v11;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  view = [(SRUserUtteranceViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 0;
    collectionViewLayout = [(UICollectionView *)self->_speechAlternativeCollectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CE74;
    block[3] = &unk_100167010;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v15.receiver = self;
  v15.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
    delegate = [(SRUserUtteranceViewController *)self delegate];
    [delegate siriViewControllerHeightDidChange:self];

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

- (void)_updateViewWithUserUtterance:(id)utterance
{
  utteranceView = self->_utteranceView;
  utteranceCopy = utterance;
  bestTextInterpretation = [utteranceCopy bestTextInterpretation];
  [(SRUserUtteranceView *)utteranceView setText:bestTextInterpretation];

  allPhrases = [utteranceCopy allPhrases];

  if (allPhrases)
  {
    self->_changeUtteranceShouldDisplay = 1;
    self->_receivedFinalRecognitionResult = 1;
    [(SRUserUtteranceViewController *)self _updateViewWithChangeUtteranceIfNeeded:self->_changeUtteranceCommand];
    if (self->_editableUtteranceView)
    {
      _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
      [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:_userUtterance];
    }

    else
    {
      [(SRUserUtteranceViewController *)self createEditableUtteranceView];
    }

    [(SRUserUtteranceView *)self->_utteranceView setBlendEffectEnabled:1];
    delegate = [(SRUserUtteranceViewController *)self delegate];
    [delegate siriViewControllerHeightDidChange:self];
  }
}

- (void)_updateViewWithChangeUtteranceIfNeeded:(id)needed
{
  neededCopy = needed;
  if (neededCopy)
  {
    if (self->_changeUtteranceShouldDisplay)
    {
      v10 = neededCopy;
      utteranceIndex = [neededCopy utteranceIndex];
      neededCopy = v10;
      if (utteranceIndex >= 1)
      {
        _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
        numberOfAlternativeUtterances = [_userUtterance numberOfAlternativeUtterances];

        neededCopy = v10;
        if (utteranceIndex < numberOfAlternativeUtterances)
        {
          _userUtterance2 = [(SRUserUtteranceViewController *)self _userUtterance];
          v9 = [_userUtterance2 textOfUtteranceAtIndex:utteranceIndex];

          [(SRUserUtteranceView *)self->_utteranceView setText:v9];
          neededCopy = v10;
        }
      }
    }
  }
}

- (void)setUtteranceUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v8 setUtteranceUserInteractionEnabled:?];
  v5 = !enabledCopy;
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
  _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
  v5 = [v3 stringByAppendingFormat:@"%@", _userUtterance];

  return v5;
}

- (void)_setUserUtterance:(id)utterance
{
  utteranceCopy = utterance;
  if (utteranceCopy)
  {
    v7 = utteranceCopy;
    _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];

    if (_userUtterance != v7)
    {
      self->_forceBestTextInterpretation = 0;
      [(SRUserUtteranceViewController *)self _updateViewWithUserUtterance:v7];
      objc_storeStrong(&self->_userUtterance, utterance);
    }
  }

  _objc_release_x1();
}

- (id)_correctionIdentifier
{
  _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
  correctionIdentifier = [_userUtterance correctionIdentifier];

  return correctionIdentifier;
}

- (double)desiredHeightForWidth:(double)width
{
  self->_latestGivenWidth = width;
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
  delegate = [(SRUserUtteranceViewController *)self delegate];
  [delegate siriViewControllerHeightDidChange:self pinTopOfSnippet:1];

  _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerRequestToPin:self];

  if (self->_textChanged)
  {

    [(SRUserUtteranceViewController *)self removeSpeechAlternatives];
  }

  else
  {
    _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:_userUtterance];

    utteranceView = self->_utteranceView;
    text = [(SREditableTextView *)self->_editableUtteranceView text];
    [(SRUserUtteranceView *)utteranceView setText:text];
  }
}

- (void)handleAceCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_changeUtteranceCommand, command);
    [(SRUserUtteranceViewController *)self handleChangeUtteranceCommand:self->_changeUtteranceCommand];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SRUserUtteranceViewController *)self handleShowSpeechAlternativesCommand:commandCopy];
    }
  }
}

- (void)handleShowSpeechAlternativesCommand:(id)command
{
  _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
  [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:_userUtterance];

  window = [(UICollectionView *)self->_speechAlternativeCollectionView window];

  if (window)
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

- (void)handleChangeUtteranceCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SRUserUtteranceViewController handleChangeUtteranceCommand:]";
    v24 = 2112;
    v25 = commandCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s handleChangeUtteranceCommand: %@", &v22, 0x16u);
  }

  if (self->_receivedFinalRecognitionResult)
  {
    changeUtteranceCommand = commandCopy;
    utteranceIndex = [(SAUIChangePrimaryUtterance *)changeUtteranceCommand utteranceIndex];
    if (utteranceIndex >= 1)
    {
      v8 = utteranceIndex;
      _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
      numberOfAlternativeUtterances = [_userUtterance numberOfAlternativeUtterances];

      if (v8 < numberOfAlternativeUtterances)
      {
        self->_forceBestTextInterpretation = 1;
        _userUtterance2 = [(SRUserUtteranceViewController *)self _userUtterance];
        dictationResult = [_userUtterance2 dictationResult];

        _userUtterance3 = [(SRUserUtteranceViewController *)self _userUtterance];
        v14 = [_userUtterance3 updateDictationResult:dictationResult withAlternativeUtteranceAtIndex:v8];

        v15 = [(SRUserUtteranceViewController *)self speechAlternativeHighlightListWithScore:SiriUIShowSpeechAlternativeScore()];
        speechAlternativeDisplayList = self->_speechAlternativeDisplayList;
        self->_speechAlternativeDisplayList = v15;

        [(SRUserUtteranceViewController *)self createViewArray];
        [(UICollectionView *)self->_speechAlternativeCollectionView reloadData];
        [(UICollectionView *)self->_speechAlternativeCollectionView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
        utteranceView = self->_utteranceView;
        text = [(SREditableTextView *)self->_editableUtteranceView text];
        [(SRUserUtteranceView *)utteranceView setText:text];

        [(SRUserUtteranceView *)self->_utteranceView setNeedsLayout];
        delegate = [(SRUserUtteranceViewController *)self delegate];
        [delegate siriViewControllerHeightDidChange:self];

        view = [(SRUserUtteranceViewController *)self view];
        [view setNeedsLayout];
      }
    }
  }

  else
  {
    v21 = commandCopy;
    changeUtteranceCommand = self->_changeUtteranceCommand;
    self->_changeUtteranceCommand = v21;
  }
}

- (void)setAceObject:(id)object
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = SRUserUtteranceViewController;
  [(SRUserUtteranceViewController *)&v24 setAceObject:objectCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = objectCopy;
    af_userUtteranceValue = [text af_userUtteranceValue];
    title = [text title];
    speechAlternativeListTitle = self->_speechAlternativeListTitle;
    self->_speechAlternativeListTitle = title;

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

    sessionId = [text sessionId];
    sessionId = self->_sessionId;
    self->_sessionId = sessionId;

    if (AFIsInternalInstall())
    {
      v25 = @"bestTextInterpretation";
      af_bestTextInterpretation = [text af_bestTextInterpretation];
      v26 = af_bestTextInterpretation;
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
      af_userUtteranceValue = 0;
      goto LABEL_11;
    }

    text = [objectCopy text];
    af_userUtteranceValue = [[AFUserUtterance alloc] initWithString:text correctionIdentifier:0];
    goto LABEL_10;
  }

  af_userUtteranceValue = [objectCopy af_userUtteranceValue];
LABEL_11:
  [(SRUserUtteranceViewController *)self _setUserUtterance:af_userUtteranceValue];
  _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
  [(SRUserUtteranceViewController *)self _updateViewWithUserUtterance:_userUtterance];
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

- (double)_scaledPaddingForPadding:(double)padding
{
  v5 = +[UIFont siriui_userUtteranceFont];
  [v5 _scaledValueForValue:padding];
  v7 = v6;

  [(SRUserUtteranceContainerView *)self->_containerView firstLineBaselineOffsetFromTop];
  return v7 - v8;
}

- (void)endEditingAndCorrect:(BOOL)correct
{
  correctCopy = correct;
  window = [(SREditableTextView *)self->_editableUtteranceView window];

  if (window)
  {
    [(SREditableTextView *)self->_editableUtteranceView endEditingAndCorrect:correctCopy];
  }

  if (!correctCopy)
  {
    self->_showSpeechAlternativeList = 0;
    [(SRUserUtteranceViewController *)self _hideEditableUtteranceView];
    _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
    [_privateDelegate siriViewControllerRequestTearDownEditingViewController:self];
  }
}

- (void)endEditingAndCorrectByTouchPoint:(CGPoint)point
{
  v4 = [(UICollectionView *)self->_speechAlternativeCollectionView hitTest:0 withEvent:point.x, point.y];
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

- (void)_utteranceViewDidSelect:(id)select
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
  text = [(SREditableTextView *)self->_editableUtteranceView text];
  [(SRUserUtteranceView *)utteranceView setText:text];

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
    _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:_userUtterance];
  }
}

- (BOOL)editableTextViewTextShouldPreventCorrection:(id)correction
{
  selfCopy = self;
  _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
  LOBYTE(selfCopy) = [_privateDelegate siriViewControllerShouldPreventUserInteraction:selfCopy];

  return selfCopy;
}

- (void)editableTextViewRequestKeyboardForTapToEditWithCompletion:(id)completion
{
  completionCopy = completion;
  _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerRequestKeyboardForTapToEditWithCompletion:completionCopy];
}

- (void)editableTextViewTextWillBeginCorrecting:(id)correcting
{
  text = [(SREditableTextView *)self->_editableUtteranceView text];
  preCorrectionText = self->_preCorrectionText;
  self->_preCorrectionText = text;

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
    delegate = [(SRUserUtteranceViewController *)self delegate];
    [delegate siriViewControllerHeightDidChange:self pinTopOfSnippet:1];
  }

  _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerWillBeginEditing:self];

  v16 = +[AFAnalytics sharedAnalytics];
  aceObject = [(SRUserUtteranceViewController *)self aceObject];
  v15 = AFAnalyticsContextCreateWithCommand();
  [v16 logEventWithType:1424 context:v15];
}

- (void)_checkUpdatedSizingForEditableTextView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  [viewCopy sizeThatFits:{CGRectGetWidth(v12), 1.79769313e308}];
  v6 = v5;
  v8 = v7;

  if (v6 != self->_currentTextSize.width || v8 != self->_currentTextSize.height)
  {
    self->_currentTextSize.width = v6;
    self->_currentTextSize.height = v8;
    [(SiriUICollectionViewFlowLayout *)self->_speechAlternativeCollectionViewLayout invalidateLayout];
    delegate = [(SRUserUtteranceViewController *)self delegate];
    [delegate siriViewControllerHeightDidChange:self];
  }
}

- (void)editableTextViewTextDidChange:(id)change
{
  changeCopy = change;
  [(SRUserUtteranceViewController *)self _checkUpdatedSizingForEditableTextView:changeCopy];
  [changeCopy setNeedsLayout];
  preCorrectionText = self->_preCorrectionText;
  text = [changeCopy text];

  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [text stringByTrimmingCharactersInSet:v7];
  self->_textChanged = ![(NSString *)preCorrectionText isEqualToString:v8];

  _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerRequestToPin:self];
}

- (void)editableTextViewTextDidFinishCorrecting:(id)correcting
{
  correctingCopy = correcting;
  _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerDidEndEditing:self];

  text = [correctingCopy text];
  v7 = text;
  self->_showSpeechAlternativeList = 0;
  if (!self->_textChanged)
  {
    _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:_userUtterance];
    goto LABEL_6;
  }

  if (![text length])
  {
    _userUtterance2 = [(SRUserUtteranceViewController *)self _userUtterance];
    [(SRUserUtteranceViewController *)self restoreOriginalEditTextContents:_userUtterance2];

    utteranceView = self->_utteranceView;
    _userUtterance3 = [(SRUserUtteranceViewController *)self _userUtterance];
    bestTextInterpretation = [_userUtterance3 bestTextInterpretation];
    [(SRUserUtteranceView *)utteranceView setText:bestTextInterpretation];

    goto LABEL_10;
  }

  if (![(NSString *)self->_preCorrectionText isEqualToString:v7])
  {
    v8 = [AFUserUtterance alloc];
    _userUtterance4 = [(SRUserUtteranceViewController *)self _userUtterance];
    correctionIdentifier = [_userUtterance4 correctionIdentifier];
    _userUtterance = [v8 initWithString:v7 correctionIdentifier:correctionIdentifier];

    [(SRUserUtteranceViewController *)self _setUserUtterance:_userUtterance];
    [(SRUserUtteranceViewController *)self removeSpeechAlternatives];
    [correctingCopy setText:v7];
    self->_newRequestSent = 1;
LABEL_6:
  }

  v12 = objc_alloc_init(SAUIListItem);
  [v12 setSelectionText:v7];
  delegate = [(SRUserUtteranceViewController *)self delegate];
  [delegate siriViewController:self addSelectionResponse:v12];

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v22 = 136315394;
    v23 = "[SRUserUtteranceViewController editableTextViewTextDidFinishCorrecting:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s CorrectedText = %@", &v22, 0x16u);
  }

  _privateDelegate2 = [(SRUserUtteranceViewController *)self _privateDelegate];
  _correctionIdentifier = [(SRUserUtteranceViewController *)self _correctionIdentifier];
  v17 = [(SRUserUtteranceViewController *)self userSelectionResults:v7];
  [_privateDelegate2 siriViewController:self startCorrectedSpeechRequestWithText:v7 correctionIdentifier:_correctionIdentifier userSelectionResults:v17];

LABEL_10:
  [(SRUserUtteranceViewController *)self _hideEditableUtteranceView];
}

- (void)editableTextViewTextDidResignFirstResponder:(id)responder
{
  delegate = [(SRUserUtteranceViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SRUserUtteranceViewController *)self delegate];
    [delegate2 siriViewControllerDidResignFirstResponder:self];
  }
}

- (void)restoreOriginalEditTextContents:(id)contents
{
  contentsCopy = contents;
  allPhrases = [contentsCopy allPhrases];
  if (allPhrases && !self->_forceBestTextInterpretation)
  {
    editableUtteranceView = self->_editableUtteranceView;
    correctionIdentifier = [contentsCopy correctionIdentifier];
    [(SREditableTextView *)editableUtteranceView setDictationResult:allPhrases withCorrectionIdentifier:correctionIdentifier];
  }

  else
  {
    v5 = self->_editableUtteranceView;
    correctionIdentifier = [contentsCopy bestTextInterpretation];
    [(SREditableTextView *)v5 setText:correctionIdentifier];
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

- (id)speechAlternativeHighlightListWithScore:(BOOL)score
{
  scoreCopy = score;
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
  _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
  allRecognitionStringsAndScores = [_userUtterance allRecognitionStringsAndScores];

  _userUtterance2 = [(SRUserUtteranceViewController *)self _userUtterance];
  v12 = [_userUtterance2 textOfUtteranceAtIndex:0];

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
  v14 = [allRecognitionStringsAndScores objectForKey:v12];
  v15 = AFUserUtteranceConfidenceAverageKey;
  v16 = [v14 objectForKey:AFUserUtteranceConfidenceAverageKey];
  [v13 setOriginalScore:v16];

  [v13 setIsFromDevice:&__kCFBooleanFalse];
  [(NSMutableDictionary *)self->_alternativeInfoMap setObject:v13 forKey:v12];
  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [allRecognitionStringsAndScores objectForKey:v12];
    v20 = [v19 objectForKey:v15];
    v30 = 136315650;
    v31 = "[SRUserUtteranceViewController speechAlternativeHighlightListWithScore:]";
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Original utterance:  %@ (%@)", &v30, 0x20u);
  }

  delegate = [(SRUserUtteranceViewController *)self delegate];
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

    _userUtterance3 = [(SRUserUtteranceViewController *)self _userUtterance];
    v5 = [(SRUserUtteranceViewController *)self _processUserUtterance:_userUtterance3 isCombined:0 displayedText:v12 withScore:scoreCopy];

    goto LABEL_21;
  }

  delegate2 = [(SRUserUtteranceViewController *)self delegate];
  v24 = [delegate2 updatedUserUtteranceForSiriViewController:self];

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

  v5 = [(SRUserUtteranceViewController *)self _processUserUtterance:v24 isCombined:1 displayedText:v12 withScore:scoreCopy];
LABEL_21:

LABEL_22:
LABEL_23:

  return v5;
}

- (id)_processUserUtterance:(id)utterance isCombined:(BOOL)combined displayedText:(id)text withScore:(BOOL)score
{
  utteranceCopy = utterance;
  textCopy = text;
  v39 = NSForegroundColorAttributeName;
  v12 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v40 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v37 = NSForegroundColorAttributeName;
  v14 = [UIColor colorWithWhite:1.0 alpha:0.5];
  v38 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];

  allRecognitionStringsAndScores = [utteranceCopy allRecognitionStringsAndScores];
  v17 = [allRecognitionStringsAndScores keysSortedByValueUsingComparator:&stru_100167AE8];
  +[NSMutableArray array];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10004F6D0;
  v27[3] = &unk_100167B10;
  v28 = textCopy;
  v29 = allRecognitionStringsAndScores;
  selfCopy = self;
  v31 = v15;
  combinedCopy = combined;
  v32 = utteranceCopy;
  v33 = v13;
  v18 = v36 = score;
  v34 = v18;
  v19 = v13;
  v20 = utteranceCopy;
  v21 = v15;
  v22 = allRecognitionStringsAndScores;
  v23 = textCopy;
  [v17 enumerateObjectsUsingBlock:v27];
  v24 = v34;
  v25 = v18;

  return v18;
}

- (void)handleSelectRow:(int64_t)row
{
  if ([(NSMutableArray *)self->_speechAlternativeList count])
  {
    v5 = row - self->_speechAlternativesStartIndex;
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
      _userUtterance = [(SRUserUtteranceViewController *)self _userUtterance];
      correctionIdentifier = [_userUtterance correctionIdentifier];
      v11 = [v8 initWithString:v6 correctionIdentifier:correctionIdentifier];

      [(SRUserUtteranceViewController *)self _setUserUtterance:v11];
      [(SRUserUtteranceView *)self->_utteranceView setText:v6];
      [(SREditableTextView *)self->_editableUtteranceView setText:v6];
      self->_showSpeechAlternativeList = 0;
      [(SRUserUtteranceViewController *)self removeSpeechAlternatives];
      delegate = [(SRUserUtteranceViewController *)self delegate];
      [delegate siriViewControllerHeightDidChange:self pinTopOfSnippet:1];

      _privateDelegate = [(SRUserUtteranceViewController *)self _privateDelegate];
      _correctionIdentifier = [(SRUserUtteranceViewController *)self _correctionIdentifier];
      v15 = [(SRUserUtteranceViewController *)self userSelectionResults:v6];
      [_privateDelegate siriViewController:self startCorrectedSpeechRequestWithText:v6 correctionIdentifier:_correctionIdentifier userSelectionResults:v15];

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

- (id)userSelectionResults:(id)results
{
  resultsCopy = results;
  v5 = objc_alloc_init(AFUserUtteranceSelectionResults);
  v6 = v5;
  if (resultsCopy)
  {
    v7 = [(NSMutableDictionary *)self->_alternativeInfoMap objectForKey:resultsCopy];
    originalScore = [v7 originalScore];
    [v6 setOriginalScore:originalScore];

    originalRank = [v7 originalRank];
    [v6 setOriginalRank:originalRank];

    isFromDevice = [v7 isFromDevice];
    bOOLValue = [isFromDevice BOOLValue];

    v12 = &SASStartCorrectedSpeechRequestUtteranceSourceCLIENTValue;
    if (!bOOLValue)
    {
      v12 = &SASStartCorrectedSpeechRequestUtteranceSourceSERVERValue;
    }

    [v6 setUtteranceSource:*v12];
    combinedRank = [v7 combinedRank];
    [v6 setCombinedRank:combinedRank];

    combinedScore = [v7 combinedScore];
    [v6 setCombinedScore:combinedScore];
  }

  else
  {
    [v5 setUtteranceSource:SASStartCorrectedSpeechRequestUtteranceSourceUSER_EDITEDValue];
  }

  aceObject = [(SRUserUtteranceViewController *)self aceObject];
  refId = [aceObject refId];
  [v6 setInteractionId:refId];

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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [v9 setHasChevron:0];
  item = [pathCopy item];

  v11 = +[UIColor clearColor];
  [v9 setBackgroundColor:v11];

  if (item)
  {
    [v9 setKeylineType:4];
    keyline = [v9 keyline];
    [keyline setCustomLeftPadding:44.0];

    keyline2 = [v9 keyline];
    [keyline2 setCustomRightPadding:44.0];

    keyline3 = [v9 keyline];
    v15 = [UIColor colorWithWhite:0.5 alpha:0.3];
    [keyline3 setCustomBackgroundColor:v15];
  }

  else
  {
    [v9 setKeylineType:0];
  }

  v16 = [(NSMutableArray *)self->_viewArray objectAtIndex:item];
  contentView = [v9 contentView];
  [v9 bounds];
  Width = CGRectGetWidth(v44);
  [v9 bounds];
  [contentView setBounds:{0.0, 0.0, Width, CGRectGetHeight(v45)}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView2 = [v9 contentView];
    [contentView2 addSubview:v16];

    contentView3 = [v9 contentView];
    [contentView3 bounds];
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
    contentView4 = [v9 contentView];
    [contentView4 addSubview:v16];

    contentView3 = [v9 contentView];
    [contentView3 bounds];
    v30 = v38;
    v32 = v39;
    v34 = v40;
    v36 = v41;
    goto LABEL_9;
  }

LABEL_10:

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  v7 = [pathCopy row];

  [(SRUserUtteranceViewController *)self handleSelectRow:v7];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SRUserUtteranceViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  width = v8;

  height = CGSizeZero.height;
  item = [pathCopy item];

  if (item >= [(NSMutableArray *)self->_viewArray count])
  {
    width = CGSizeZero.width;
  }

  else
  {
    v12 = [(NSMutableArray *)self->_viewArray objectAtIndex:item];
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