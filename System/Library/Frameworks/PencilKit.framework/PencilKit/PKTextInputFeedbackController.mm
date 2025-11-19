@interface PKTextInputFeedbackController
- (BOOL)_shouldShowCustomFeedback;
- (PKTextInputFeedbackController)init;
- (PKTextInputFeedbackControllerDelegate)delegate;
- (_NSRange)referenceTextRange;
- (void)_placeholderChanged:(id)a3;
- (void)_setShowingCustomFeedback:(BOOL)a3;
- (void)_updateFeedbackState;
- (void)_updateFeedbackView;
- (void)beginDisplayForReserveSpacePlaceholder:(id)a3;
- (void)cancelShowingReserveSpaceIntro;
- (void)dealloc;
- (void)endDisplayForReserveSpacePlaceholder:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setReferenceElementContent:(id)a3 referenceRange:(_NSRange)a4 feedbackType:(int64_t)a5;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__placeholderChanged_ name:*MEMORY[0x1E69DE6C0] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKTextInputFeedbackController;
  [(PKTextInputFeedbackController *)&v4 dealloc];
}

- (BOOL)_shouldShowCustomFeedback
{
  v3 = [(PKTextInputFeedbackController *)self feedbackType];
  v4 = 1;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_17;
      }

      v5 = [(PKTextInputFeedbackController *)self referenceElementContent];

      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = [(PKTextInputFeedbackController *)self referenceElementContent];
      v7 = [(PKTextInputElementContent *)v6 configureSelectionStyleForDeletionPreview];
    }

    else
    {
      v9 = [(PKTextInputFeedbackController *)self referenceElementContent];

      if (!v9)
      {
        goto LABEL_17;
      }

      v6 = [(PKTextInputFeedbackController *)self referenceElementContent];
      v7 = [(PKTextInputElementContent *)v6 configureSelectionStyleForNormalSelection];
    }

    goto LABEL_14;
  }

  if (v3 != 2)
  {
    v4 = v3 != 4 && v3 != 5;
    goto LABEL_17;
  }

  v8 = [(PKTextInputFeedbackController *)self referenceElementContent];

  if (v8)
  {
    v6 = [(PKTextInputFeedbackController *)self referenceElementContent];
    v7 = [(PKTextInputElementContent *)v6 configureSelectionStyleForHighlight];
LABEL_14:
    v10 = v7;

    if (v10)
    {
      return 0;
    }

    v4 = 1;
  }

LABEL_17:
  v12 = [(PKTextInputFeedbackController *)self referenceElementContent];
  if (v12 && [(PKTextInputFeedbackController *)self feedbackType]&& (!v4 || [(PKTextInputFeedbackController *)self referenceTextRange]!= 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = [(PKTextInputFeedbackController *)self delegate];
    v11 = v13 != 0;
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

- (void)_setShowingCustomFeedback:(BOOL)a3
{
  if (self->_showingCustomFeedback != a3)
  {
    self->_showingCustomFeedback = a3;
    [(PKTextInputFeedbackController *)self _updateFeedbackView];
    v5 = [(PKTextInputFeedbackController *)self delegate];
    [v5 feedbackControllerShowingCustomFeedbackDidChange:self];
  }
}

- (void)_updateFeedbackView
{
  v3 = [(PKTextInputFeedbackController *)self showingCustomFeedback];
  v4 = [(PKTextInputFeedbackController *)self _feedbackView];

  if (!v3 || v4)
  {
    if (v4)
    {
      v14 = v3;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v15 = [(PKTextInputFeedbackController *)self _feedbackView];
      [v15 removeFromSuperview];

      [(PKTextInputFeedbackController *)self set_feedbackView:0];
    }
  }

  else
  {
    v5 = [(PKTextInputFeedbackController *)self delegate];
    v6 = [v5 feedbackControllerContainerView:self];

    if (v6)
    {
      v7 = [PKTextInputGestureFeedbackView alloc];
      [v6 bounds];
      v8 = [(PKTextInputGestureFeedbackView *)v7 initWithFrame:?];
      [(PKTextInputFeedbackController *)self set_feedbackView:v8];

      v9 = [(PKTextInputFeedbackController *)self _feedbackView];
      v10 = v9;
      if (v9)
      {
        objc_storeWeak((v9 + 416), self);
      }

      v11 = [(PKTextInputFeedbackController *)self _feedbackView];
      [v11 setAutoresizingMask:18];

      v12 = [(PKTextInputFeedbackController *)self _feedbackView];
      [v6 addSubview:v12];

      v13 = [(PKTextInputFeedbackController *)self _feedbackView];
      [v6 sendSubviewToBack:v13];
    }
  }

  if (v3)
  {
    v16 = [(PKTextInputFeedbackController *)self _feedbackView];
    [(PKTextInputGestureFeedbackView *)v16 setNeedsRefreshFeedbackViews];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PKTextInputFeedbackController *)self _updateFeedbackState];
    v5 = obj;
  }
}

- (void)setReferenceElementContent:(id)a3 referenceRange:(_NSRange)a4 feedbackType:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  p_referenceElementContent = &self->_referenceElementContent;
  if (self->_referenceElementContent != v10 || (location == self->_referenceTextRange.location ? (v12 = length == self->_referenceTextRange.length) : (v12 = 0), !v12 || self->_feedbackType != a5))
  {
    self->_referenceTextRange.location = location;
    self->_referenceTextRange.length = length;
    self->_feedbackType = a5;
    v15 = v10;
    if (v10)
    {
      objc_storeStrong(&self->_referenceElementContent, a3);
    }

    [(PKTextInputFeedbackController *)self _updateFeedbackState];
    if (a5 == 3)
    {
      v13 = [(PKTextInputFeedbackController *)self _feedbackView];
      [(PKTextInputGestureFeedbackView *)v13 beginShowingReserveSpaceIntro];
    }

    v10 = v15;
    if (!v15)
    {
      v14 = *p_referenceElementContent;
      *p_referenceElementContent = 0;

      v10 = 0;
    }
  }
}

- (void)cancelShowingReserveSpaceIntro
{
  [(PKTextInputFeedbackController *)self setFeedbackType:4];
  v3 = [(PKTextInputFeedbackController *)self _feedbackView];
  [(PKTextInputGestureFeedbackView *)v3 cancelShowingReserveSpaceIntro];

  [(PKTextInputFeedbackController *)self setFeedbackType:0];

  [(PKTextInputFeedbackController *)self _updateFeedbackState];
}

- (void)beginDisplayForReserveSpacePlaceholder:(id)a3
{
  [(PKTextInputFeedbackController *)self setPlaceholder:a3];
  [(PKTextInputFeedbackController *)self setFeedbackType:5];

  [(PKTextInputFeedbackController *)self _updateFeedbackState];
}

- (void)endDisplayForReserveSpacePlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputFeedbackController *)self placeholder];

  if (v5 == v4)
  {
    [(PKTextInputFeedbackController *)self setPlaceholder:0];
    [(PKTextInputFeedbackController *)self setFeedbackType:0];

    [(PKTextInputFeedbackController *)self _updateFeedbackState];
  }
}

- (void)_placeholderChanged:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKey:*MEMORY[0x1E69DE6C8]];

  v5 = [(PKTextInputFeedbackController *)self placeholder];
  v6 = [v5 placeholder];

  v7 = v8;
  if (v8 == v6)
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