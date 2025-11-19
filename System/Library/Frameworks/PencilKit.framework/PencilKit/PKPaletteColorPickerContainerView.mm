@interface PKPaletteColorPickerContainerView
- (BOOL)_isInputAssistantViewControllerPresented;
- (PKDrawingPaletteViewStateSubject)paletteViewState;
- (PKPaletteColorPickerContainerView)initWithFrame:(CGRect)a3;
- (PKPaletteColorPickerContainerViewDelegate)delegate;
- (PKPalettePopoverPresenting)palettePopoverPresenting;
- (void)_dismissViewController:(id)a3 withCompletion:(id)a4;
- (void)_handleUCBButtonPressed;
- (void)_installInputAssistantViewContainer;
- (void)_showInputAssistantPopover;
- (void)_updateUI;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)setLayoutAxis:(int64_t)a3;
- (void)setPalettePopoverPresenting:(id)a3;
- (void)setPaletteViewState:(id)a3;
- (void)setShouldShowInputAssistantView:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPaletteColorPickerContainerView

- (PKPaletteColorPickerContainerView)initWithFrame:(CGRect)a3
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PKPaletteColorPickerContainerView;
  v3 = [(PKPaletteColorPickerContainerView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(PKPaletteColorPickerContainerView *)v3 addSubview:v3->_stackView];
    v21 = MEMORY[0x1E696ACD8];
    v28 = [(UIStackView *)v3->_stackView topAnchor];
    v27 = [(PKPaletteColorPickerContainerView *)v3 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v30[0] = v26;
    v25 = [(UIStackView *)v3->_stackView bottomAnchor];
    v24 = [(PKPaletteColorPickerContainerView *)v3 bottomAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v30[1] = v23;
    v22 = [(UIStackView *)v3->_stackView leadingAnchor];
    v20 = [(PKPaletteColorPickerContainerView *)v3 leadingAnchor];
    v19 = [v22 constraintEqualToAnchor:v20];
    v30[2] = v19;
    v18 = [(UIStackView *)v3->_stackView trailingAnchor];
    v17 = [(PKPaletteColorPickerContainerView *)v3 trailingAnchor];
    v6 = [v18 constraintEqualToAnchor:v17];
    v30[3] = v6;
    v7 = [(UIStackView *)v3->_stackView widthAnchor];
    v8 = [(PKPaletteColorPickerContainerView *)v3 widthAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v30[4] = v9;
    v10 = [(UIStackView *)v3->_stackView heightAnchor];
    v11 = [(PKPaletteColorPickerContainerView *)v3 heightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v30[5] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];
    [v21 activateConstraints:v13];

    v14 = objc_alloc_init(PKPaletteColorPickerView);
    colorPickerView = v3->_colorPickerView;
    v3->_colorPickerView = v14;

    [(PKPaletteColorPickerView *)v3->_colorPickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_colorPickerView];
    [(PKPaletteColorPickerContainerView *)v3 _updateUI];
  }

  return v3;
}

- (void)setShouldShowInputAssistantView:(BOOL)a3
{
  if (self->_shouldShowInputAssistantView != a3)
  {
    self->_shouldShowInputAssistantView = a3;
    [(PKPaletteColorPickerContainerView *)self _updateUI];
  }
}

- (void)setLayoutAxis:(int64_t)a3
{
  if (self->_layoutAxis != a3)
  {
    self->_layoutAxis = a3;
    [(PKPaletteColorPickerContainerView *)self _updateUI];
  }
}

- (void)setPalettePopoverPresenting:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_palettePopoverPresenting);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_palettePopoverPresenting, obj);
    [(PKPaletteColorPickerContainerView *)self _updateUI];
    v5 = obj;
  }
}

- (void)setPaletteViewState:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_paletteViewState);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_paletteViewState, obj);
    [(PKPaletteColorPickerContainerView *)self _updateUI];
    v5 = obj;
  }
}

- (void)_updateUI
{
  v3 = [(PKPaletteColorPickerContainerView *)self layoutAxis];
  v4 = [(PKPaletteColorPickerContainerView *)self stackView];
  [v4 setAxis:v3];

  v5 = [(PKPaletteColorPickerContainerView *)self stackView];
  [v5 setSpacing:8.0];

  if (-[PKPaletteColorPickerContainerView shouldShowInputAssistantView](self, "shouldShowInputAssistantView") && (-[PKPaletteColorPickerContainerView stackView](self, "stackView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 arrangedSubviews], v7 = objc_claimAutoreleasedReturnValue(), -[PKPaletteColorPickerContainerView inputAssistantContainerView](self, "inputAssistantContainerView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, v7, v6, (v9 & 1) == 0))
  {

    [(PKPaletteColorPickerContainerView *)self _installInputAssistantViewContainer];
  }

  else if (![(PKPaletteColorPickerContainerView *)self shouldShowInputAssistantView])
  {
    v10 = [(PKPaletteColorPickerContainerView *)self stackView];
    v11 = [v10 arrangedSubviews];
    v12 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
    v13 = [v11 containsObject:v12];

    if (v13)
    {
      v14 = [(PKPaletteColorPickerContainerView *)self stackView];
      v15 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
      [v14 removeArrangedSubview:v15];

      v16 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
      [v16 removeFromSuperview];

      [(PKPaletteColorPickerContainerView *)self setInputAssistantContainerView:0];
    }
  }
}

- (void)_installInputAssistantViewContainer
{
  v3 = objc_alloc_init(PKDrawingPaletteInputAssistantContainerView);
  inputAssistantContainerView = self->_inputAssistantContainerView;
  self->_inputAssistantContainerView = v3;

  v5 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(PKPaletteColorPickerContainerView *)self stackView];
  v7 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  [v6 insertArrangedSubview:v7 atIndex:0];

  v9 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  v8 = [v9 UCBbutton];
  [v8 addTarget:self action:sel__handleUCBButtonPressed forControlEvents:64];
}

- (void)_handleUCBButtonPressed
{
  v3 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v4 = v3;
  if (v3)
  {
    if ([v3 isBeingPresented])
    {

LABEL_5:
LABEL_10:

      [(PKPaletteColorPickerContainerView *)self dismissPalettePopoverWithCompletion:0];
      return;
    }

    v5 = [v4 isBeingDismissed];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  v7 = [v6 shouldPalettePresentPopover];

  if (!v7)
  {
    goto LABEL_10;
  }

  [(PKPaletteColorPickerContainerView *)self _showInputAssistantPopover];
}

- (void)_showInputAssistantPopover
{
  v3 = objc_alloc_init(PKPaletteInputAssistantViewController);
  [(PKPaletteColorPickerContainerView *)self setInputAssistantViewController:v3];

  v4 = objc_alloc_init(PKDrawingPaletteInputAssistantView);
  v5 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  [v5 setInputAssistantView:v4];

  v6 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  [v6 setModalPresentationStyle:7];

  v7 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v8 = [v7 popoverPresentationController];
  [v8 setDelegate:self];

  v9 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v10 = [v9 popoverPresentationController];
  [v10 setPermittedArrowDirections:2];

  v11 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  v12 = [v11 UCBbutton];
  [v12 bounds];
  v42 = CGRectInset(v41, -5.0, -5.0);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v17 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v18 = [v17 popoverPresentationController];
  [v18 setSourceRect:{x, y, width, height}];

  v19 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  v20 = [v19 UCBbutton];
  v21 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v22 = [v21 popoverPresentationController];
  [v22 setSourceView:v20];

  v23 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v24 = [v23 popoverPresentationController];
  [v24 _setShouldDisableInteractionDuringTransitions:0];

  v25 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  v26 = [v25 palettePopoverPassthroughViews];
  v27 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v28 = [v27 popoverPresentationController];
  [v28 setPassthroughViews:v26];

  v29 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v30 = [v29 popoverPresentationController];
  [v30 _setIgnoresKeyboardNotifications:1];

  v31 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  v32 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  [v31 updatePalettePopover:v32];

  v33 = [(PKPaletteColorPickerContainerView *)self delegate];
  LOBYTE(v32) = objc_opt_respondsToSelector();

  if (v32)
  {
    v34 = [(PKPaletteColorPickerContainerView *)self delegate];
    v35 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
    v36 = [v35 inputAssistantView];
    [v34 colorPickerContainerView:self willPresentInputAssistantView:v36];
  }

  v37 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  v38 = [v37 palettePopoverPresentingController];
  v39 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __63__PKPaletteColorPickerContainerView__showInputAssistantPopover__block_invoke;
  v40[3] = &unk_1E82D7148;
  v40[4] = self;
  [v38 presentViewController:v39 animated:1 completion:v40];
}

void __63__PKPaletteColorPickerContainerView__showInputAssistantPopover__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 inputAssistantViewController];
    v6 = [v5 inputAssistantView];
    [v7 colorPickerContainerView:v4 didPresentInputAssistantView:v6];
  }
}

- (BOOL)_isInputAssistantViewControllerPresented
{
  v3 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  if (v3)
  {
    v4 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
    v5 = [v4 palettePopoverPresentingController];
    v6 = [v5 presentedViewController];
    v7 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
    if (v6 == v7)
    {
      v9 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
      v8 = [v9 isBeingDismissed] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKPaletteColorPickerContainerView *)self _isInputAssistantViewControllerPresented])
  {
    v5 = [(PKPaletteColorPickerContainerView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PKPaletteColorPickerContainerView *)self delegate];
      v8 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
      v9 = [v8 inputAssistantView];
      [v7 colorPickerContainerView:self willDismissInputAssistantView:v9];
    }

    v10 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKPaletteColorPickerContainerView_dismissPalettePopoverWithCompletion___block_invoke;
    v14[3] = &unk_1E82D7AE8;
    v14[4] = self;
    v15 = v4;
    [(PKPaletteColorPickerContainerView *)self _dismissViewController:v10 withCompletion:v14];
  }

  else
  {
    v11 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
    v12 = [v11 palettePopoverPresentingController];
    v13 = [v12 presentedViewController];
    [(PKPaletteColorPickerContainerView *)self _dismissViewController:v13 withCompletion:v4];
  }
}

uint64_t __73__PKPaletteColorPickerContainerView_dismissPalettePopoverWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 inputAssistantViewController];
    v7 = [v6 inputAssistantView];
    [v4 colorPickerContainerView:v5 didDismissInputAssistantView:v7];
  }

  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)_dismissViewController:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6 && ([v6 isBeingDismissed] & 1) == 0)
  {
    [v6 dismissViewControllerAnimated:1 completion:v5];
  }

  else if (v5)
  {
    v5[2](v5);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteColorPickerContainerView;
  [(PKPaletteColorPickerContainerView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteColorPickerContainerView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteColorPickerContainerView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKPaletteColorPickerContainerView *)self _updateUI];
LABEL_6:
}

- (PKPaletteColorPickerContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKDrawingPaletteViewStateSubject)paletteViewState
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteViewState);

  return WeakRetained;
}

- (PKPalettePopoverPresenting)palettePopoverPresenting
{
  WeakRetained = objc_loadWeakRetained(&self->_palettePopoverPresenting);

  return WeakRetained;
}

@end