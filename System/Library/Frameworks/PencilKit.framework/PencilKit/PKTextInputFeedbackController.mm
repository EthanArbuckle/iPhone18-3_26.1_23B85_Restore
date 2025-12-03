@interface PKTextInputFeedbackController
- (BOOL)_shouldShowCustomFeedback;
- (PKTextInputFeedbackController)init;
- (PKTextInputFeedbackControllerDelegate)delegate;
- (_NSRange)referenceTextRange;
- (void)_placeholderChanged:(id)changed;
- (void)_setShowingCustomFeedback:(BOOL)feedback;
- (void)_updateFeedbackState;
- (void)_updateFeedbackView;
- (void)beginDisplayForReserveSpacePlaceholder:(id)placeholder;
- (void)cancelShowingReserveSpaceIntro;
- (void)dealloc;
- (void)endDisplayForReserveSpacePlaceholder:(id)placeholder;
- (void)setDelegate:(id)delegate;
- (void)setReferenceElementContent:(id)content referenceRange:(_NSRange)range feedbackType:(int64_t)type;
@end

@implementation PKTextInputFeedbackController

- (PKTextInputFeedbackController)init
{
  v6.receiver = self;
  v6.super_class = PKTextInputFeedbackController;
  v2 = [(PKTextInputFeedbackController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 56) = xmmword_1C801E6F0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__placeholderChanged_ name:*MEMORY[0x1E69DE6C0] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKTextInputFeedbackController;
  [(PKTextInputFeedbackController *)&v4 dealloc];
}

- (BOOL)_shouldShowCustomFeedback
{
  feedbackType = [(PKTextInputFeedbackController *)self feedbackType];
  v4 = 1;
  if (feedbackType <= 1)
  {
    if (feedbackType)
    {
      if (feedbackType != 1)
      {
        goto LABEL_17;
      }

      referenceElementContent = [(PKTextInputFeedbackController *)self referenceElementContent];

      if (!referenceElementContent)
      {
        goto LABEL_17;
      }

      referenceElementContent2 = [(PKTextInputFeedbackController *)self referenceElementContent];
      configureSelectionStyleForDeletionPreview = [(PKTextInputElementContent *)referenceElementContent2 configureSelectionStyleForDeletionPreview];
    }

    else
    {
      referenceElementContent3 = [(PKTextInputFeedbackController *)self referenceElementContent];

      if (!referenceElementContent3)
      {
        goto LABEL_17;
      }

      referenceElementContent2 = [(PKTextInputFeedbackController *)self referenceElementContent];
      configureSelectionStyleForDeletionPreview = [(PKTextInputElementContent *)referenceElementContent2 configureSelectionStyleForNormalSelection];
    }

    goto LABEL_14;
  }

  if (feedbackType != 2)
  {
    v4 = feedbackType != 4 && feedbackType != 5;
    goto LABEL_17;
  }

  referenceElementContent4 = [(PKTextInputFeedbackController *)self referenceElementContent];

  if (referenceElementContent4)
  {
    referenceElementContent2 = [(PKTextInputFeedbackController *)self referenceElementContent];
    configureSelectionStyleForDeletionPreview = [(PKTextInputElementContent *)referenceElementContent2 configureSelectionStyleForHighlight];
LABEL_14:
    v10 = configureSelectionStyleForDeletionPreview;

    if (v10)
    {
      return 0;
    }

    v4 = 1;
  }

LABEL_17:
  referenceElementContent5 = [(PKTextInputFeedbackController *)self referenceElementContent];
  if (referenceElementContent5 && [(PKTextInputFeedbackController *)self feedbackType]&& (!v4 || [(PKTextInputFeedbackController *)self referenceTextRange]!= 0x7FFFFFFFFFFFFFFFLL))
  {
    delegate = [(PKTextInputFeedbackController *)self delegate];
    v11 = delegate != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateFeedbackState
{
  [(PKTextInputFeedbackController *)self _setShowingCustomFeedback:[(PKTextInputFeedbackController *)self _shouldShowCustomFeedback]];

  [(PKTextInputFeedbackController *)self _updateFeedbackView];
}

- (void)_setShowingCustomFeedback:(BOOL)feedback
{
  if (self->_showingCustomFeedback != feedback)
  {
    self->_showingCustomFeedback = feedback;
    [(PKTextInputFeedbackController *)self _updateFeedbackView];
    delegate = [(PKTextInputFeedbackController *)self delegate];
    [delegate feedbackControllerShowingCustomFeedbackDidChange:self];
  }
}

- (void)_updateFeedbackView
{
  showingCustomFeedback = [(PKTextInputFeedbackController *)self showingCustomFeedback];
  _feedbackView = [(PKTextInputFeedbackController *)self _feedbackView];

  if (!showingCustomFeedback || _feedbackView)
  {
    if (_feedbackView)
    {
      v14 = showingCustomFeedback;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      _feedbackView2 = [(PKTextInputFeedbackController *)self _feedbackView];
      [_feedbackView2 removeFromSuperview];

      [(PKTextInputFeedbackController *)self set_feedbackView:0];
    }
  }

  else
  {
    delegate = [(PKTextInputFeedbackController *)self delegate];
    v6 = [delegate feedbackControllerContainerView:self];

    if (v6)
    {
      v7 = [PKTextInputGestureFeedbackView alloc];
      [v6 bounds];
      v8 = [(PKTextInputGestureFeedbackView *)v7 initWithFrame:?];
      [(PKTextInputFeedbackController *)self set_feedbackView:v8];

      _feedbackView3 = [(PKTextInputFeedbackController *)self _feedbackView];
      v10 = _feedbackView3;
      if (_feedbackView3)
      {
        objc_storeWeak((_feedbackView3 + 416), self);
      }

      _feedbackView4 = [(PKTextInputFeedbackController *)self _feedbackView];
      [_feedbackView4 setAutoresizingMask:18];

      _feedbackView5 = [(PKTextInputFeedbackController *)self _feedbackView];
      [v6 addSubview:_feedbackView5];

      _feedbackView6 = [(PKTextInputFeedbackController *)self _feedbackView];
      [v6 sendSubviewToBack:_feedbackView6];
    }
  }

  if (showingCustomFeedback)
  {
    _feedbackView7 = [(PKTextInputFeedbackController *)self _feedbackView];
    [(PKTextInputGestureFeedbackView *)_feedbackView7 setNeedsRefreshFeedbackViews];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PKTextInputFeedbackController *)self _updateFeedbackState];
    v5 = obj;
  }
}

- (void)setReferenceElementContent:(id)content referenceRange:(_NSRange)range feedbackType:(int64_t)type
{
  length = range.length;
  location = range.location;
  contentCopy = content;
  p_referenceElementContent = &self->_referenceElementContent;
  if (self->_referenceElementContent != contentCopy || (location == self->_referenceTextRange.location ? (v12 = length == self->_referenceTextRange.length) : (v12 = 0), !v12 || self->_feedbackType != type))
  {
    self->_referenceTextRange.location = location;
    self->_referenceTextRange.length = length;
    self->_feedbackType = type;
    v15 = contentCopy;
    if (contentCopy)
    {
      objc_storeStrong(&self->_referenceElementContent, content);
    }

    [(PKTextInputFeedbackController *)self _updateFeedbackState];
    if (type == 3)
    {
      _feedbackView = [(PKTextInputFeedbackController *)self _feedbackView];
      [(PKTextInputGestureFeedbackView *)_feedbackView beginShowingReserveSpaceIntro];
    }

    contentCopy = v15;
    if (!v15)
    {
      v14 = *p_referenceElementContent;
      *p_referenceElementContent = 0;

      contentCopy = 0;
    }
  }
}

- (void)cancelShowingReserveSpaceIntro
{
  [(PKTextInputFeedbackController *)self setFeedbackType:4];
  _feedbackView = [(PKTextInputFeedbackController *)self _feedbackView];
  [(PKTextInputGestureFeedbackView *)_feedbackView cancelShowingReserveSpaceIntro];

  [(PKTextInputFeedbackController *)self setFeedbackType:0];

  [(PKTextInputFeedbackController *)self _updateFeedbackState];
}

- (void)beginDisplayForReserveSpacePlaceholder:(id)placeholder
{
  [(PKTextInputFeedbackController *)self setPlaceholder:placeholder];
  [(PKTextInputFeedbackController *)self setFeedbackType:5];

  [(PKTextInputFeedbackController *)self _updateFeedbackState];
}

- (void)endDisplayForReserveSpacePlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  placeholder = [(PKTextInputFeedbackController *)self placeholder];

  if (placeholder == placeholderCopy)
  {
    [(PKTextInputFeedbackController *)self setPlaceholder:0];
    [(PKTextInputFeedbackController *)self setFeedbackType:0];

    [(PKTextInputFeedbackController *)self _updateFeedbackState];
  }
}

- (void)_placeholderChanged:(id)changed
{
  userInfo = [changed userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x1E69DE6C8]];

  placeholder = [(PKTextInputFeedbackController *)self placeholder];
  v5Placeholder = [placeholder placeholder];

  v7 = v8;
  if (v8 == v5Placeholder)
  {
    [(PKTextInputFeedbackController *)self _updateFeedbackState];
    v7 = v8;
  }
}

- (PKTextInputFeedbackControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_NSRange)referenceTextRange
{
  length = self->_referenceTextRange.length;
  location = self->_referenceTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end