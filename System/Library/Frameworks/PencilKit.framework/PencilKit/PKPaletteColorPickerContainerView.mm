@interface PKPaletteColorPickerContainerView
- (BOOL)_isInputAssistantViewControllerPresented;
- (PKDrawingPaletteViewStateSubject)paletteViewState;
- (PKPaletteColorPickerContainerView)initWithFrame:(CGRect)frame;
- (PKPaletteColorPickerContainerViewDelegate)delegate;
- (PKPalettePopoverPresenting)palettePopoverPresenting;
- (void)_dismissViewController:(id)controller withCompletion:(id)completion;
- (void)_handleUCBButtonPressed;
- (void)_installInputAssistantViewContainer;
- (void)_showInputAssistantPopover;
- (void)_updateUI;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)setLayoutAxis:(int64_t)axis;
- (void)setPalettePopoverPresenting:(id)presenting;
- (void)setPaletteViewState:(id)state;
- (void)setShouldShowInputAssistantView:(BOOL)view;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPaletteColorPickerContainerView

- (PKPaletteColorPickerContainerView)initWithFrame:(CGRect)frame
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PKPaletteColorPickerContainerView;
  v3 = [(PKPaletteColorPickerContainerView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(PKPaletteColorPickerContainerView *)v3 addSubview:v3->_stackView];
    v21 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    topAnchor2 = [(PKPaletteColorPickerContainerView *)v3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v26;
    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    bottomAnchor2 = [(PKPaletteColorPickerContainerView *)v3 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v23;
    leadingAnchor = [(UIStackView *)v3->_stackView leadingAnchor];
    leadingAnchor2 = [(PKPaletteColorPickerContainerView *)v3 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v19;
    trailingAnchor = [(UIStackView *)v3->_stackView trailingAnchor];
    trailingAnchor2 = [(PKPaletteColorPickerContainerView *)v3 trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v6;
    widthAnchor = [(UIStackView *)v3->_stackView widthAnchor];
    widthAnchor2 = [(PKPaletteColorPickerContainerView *)v3 widthAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v30[4] = v9;
    heightAnchor = [(UIStackView *)v3->_stackView heightAnchor];
    heightAnchor2 = [(PKPaletteColorPickerContainerView *)v3 heightAnchor];
    v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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

- (void)setShouldShowInputAssistantView:(BOOL)view
{
  if (self->_shouldShowInputAssistantView != view)
  {
    self->_shouldShowInputAssistantView = view;
    [(PKPaletteColorPickerContainerView *)self _updateUI];
  }
}

- (void)setLayoutAxis:(int64_t)axis
{
  if (self->_layoutAxis != axis)
  {
    self->_layoutAxis = axis;
    [(PKPaletteColorPickerContainerView *)self _updateUI];
  }
}

- (void)setPalettePopoverPresenting:(id)presenting
{
  obj = presenting;
  WeakRetained = objc_loadWeakRetained(&self->_palettePopoverPresenting);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_palettePopoverPresenting, obj);
    [(PKPaletteColorPickerContainerView *)self _updateUI];
    v5 = obj;
  }
}

- (void)setPaletteViewState:(id)state
{
  obj = state;
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
  layoutAxis = [(PKPaletteColorPickerContainerView *)self layoutAxis];
  stackView = [(PKPaletteColorPickerContainerView *)self stackView];
  [stackView setAxis:layoutAxis];

  stackView2 = [(PKPaletteColorPickerContainerView *)self stackView];
  [stackView2 setSpacing:8.0];

  if (-[PKPaletteColorPickerContainerView shouldShowInputAssistantView](self, "shouldShowInputAssistantView") && (-[PKPaletteColorPickerContainerView stackView](self, "stackView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 arrangedSubviews], v7 = objc_claimAutoreleasedReturnValue(), -[PKPaletteColorPickerContainerView inputAssistantContainerView](self, "inputAssistantContainerView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, v7, v6, (v9 & 1) == 0))
  {

    [(PKPaletteColorPickerContainerView *)self _installInputAssistantViewContainer];
  }

  else if (![(PKPaletteColorPickerContainerView *)self shouldShowInputAssistantView])
  {
    stackView3 = [(PKPaletteColorPickerContainerView *)self stackView];
    arrangedSubviews = [stackView3 arrangedSubviews];
    inputAssistantContainerView = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
    v13 = [arrangedSubviews containsObject:inputAssistantContainerView];

    if (v13)
    {
      stackView4 = [(PKPaletteColorPickerContainerView *)self stackView];
      inputAssistantContainerView2 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
      [stackView4 removeArrangedSubview:inputAssistantContainerView2];

      inputAssistantContainerView3 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
      [inputAssistantContainerView3 removeFromSuperview];

      [(PKPaletteColorPickerContainerView *)self setInputAssistantContainerView:0];
    }
  }
}

- (void)_installInputAssistantViewContainer
{
  v3 = objc_alloc_init(PKDrawingPaletteInputAssistantContainerView);
  inputAssistantContainerView = self->_inputAssistantContainerView;
  self->_inputAssistantContainerView = v3;

  inputAssistantContainerView = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  [inputAssistantContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView = [(PKPaletteColorPickerContainerView *)self stackView];
  inputAssistantContainerView2 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  [stackView insertArrangedSubview:inputAssistantContainerView2 atIndex:0];

  inputAssistantContainerView3 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  uCBbutton = [inputAssistantContainerView3 UCBbutton];
  [uCBbutton addTarget:self action:sel__handleUCBButtonPressed forControlEvents:64];
}

- (void)_handleUCBButtonPressed
{
  inputAssistantViewController = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v4 = inputAssistantViewController;
  if (inputAssistantViewController)
  {
    if ([inputAssistantViewController isBeingPresented])
    {

LABEL_5:
LABEL_10:

      [(PKPaletteColorPickerContainerView *)self dismissPalettePopoverWithCompletion:0];
      return;
    }

    isBeingDismissed = [v4 isBeingDismissed];

    if (isBeingDismissed)
    {
      goto LABEL_5;
    }
  }

  palettePopoverPresenting = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  shouldPalettePresentPopover = [palettePopoverPresenting shouldPalettePresentPopover];

  if (!shouldPalettePresentPopover)
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
  inputAssistantViewController = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  [inputAssistantViewController setInputAssistantView:v4];

  inputAssistantViewController2 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  [inputAssistantViewController2 setModalPresentationStyle:7];

  inputAssistantViewController3 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController = [inputAssistantViewController3 popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  inputAssistantViewController4 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController2 = [inputAssistantViewController4 popoverPresentationController];
  [popoverPresentationController2 setPermittedArrowDirections:2];

  inputAssistantContainerView = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  uCBbutton = [inputAssistantContainerView UCBbutton];
  [uCBbutton bounds];
  v42 = CGRectInset(v41, -5.0, -5.0);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  inputAssistantViewController5 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController3 = [inputAssistantViewController5 popoverPresentationController];
  [popoverPresentationController3 setSourceRect:{x, y, width, height}];

  inputAssistantContainerView2 = [(PKPaletteColorPickerContainerView *)self inputAssistantContainerView];
  uCBbutton2 = [inputAssistantContainerView2 UCBbutton];
  inputAssistantViewController6 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController4 = [inputAssistantViewController6 popoverPresentationController];
  [popoverPresentationController4 setSourceView:uCBbutton2];

  inputAssistantViewController7 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController5 = [inputAssistantViewController7 popoverPresentationController];
  [popoverPresentationController5 _setShouldDisableInteractionDuringTransitions:0];

  palettePopoverPresenting = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  palettePopoverPassthroughViews = [palettePopoverPresenting palettePopoverPassthroughViews];
  inputAssistantViewController8 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController6 = [inputAssistantViewController8 popoverPresentationController];
  [popoverPresentationController6 setPassthroughViews:palettePopoverPassthroughViews];

  inputAssistantViewController9 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  popoverPresentationController7 = [inputAssistantViewController9 popoverPresentationController];
  [popoverPresentationController7 _setIgnoresKeyboardNotifications:1];

  palettePopoverPresenting2 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  inputAssistantViewController10 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  [palettePopoverPresenting2 updatePalettePopover:inputAssistantViewController10];

  delegate = [(PKPaletteColorPickerContainerView *)self delegate];
  LOBYTE(inputAssistantViewController10) = objc_opt_respondsToSelector();

  if (inputAssistantViewController10)
  {
    delegate2 = [(PKPaletteColorPickerContainerView *)self delegate];
    inputAssistantViewController11 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
    inputAssistantView = [inputAssistantViewController11 inputAssistantView];
    [delegate2 colorPickerContainerView:self willPresentInputAssistantView:inputAssistantView];
  }

  palettePopoverPresenting3 = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
  palettePopoverPresentingController = [palettePopoverPresenting3 palettePopoverPresentingController];
  inputAssistantViewController12 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __63__PKPaletteColorPickerContainerView__showInputAssistantPopover__block_invoke;
  v40[3] = &unk_1E82D7148;
  v40[4] = self;
  [palettePopoverPresentingController presentViewController:inputAssistantViewController12 animated:1 completion:v40];
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
  inputAssistantViewController = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
  if (inputAssistantViewController)
  {
    palettePopoverPresenting = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
    palettePopoverPresentingController = [palettePopoverPresenting palettePopoverPresentingController];
    presentedViewController = [palettePopoverPresentingController presentedViewController];
    inputAssistantViewController2 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
    if (presentedViewController == inputAssistantViewController2)
    {
      inputAssistantViewController3 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
      v8 = [inputAssistantViewController3 isBeingDismissed] ^ 1;
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

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKPaletteColorPickerContainerView *)self _isInputAssistantViewControllerPresented])
  {
    delegate = [(PKPaletteColorPickerContainerView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(PKPaletteColorPickerContainerView *)self delegate];
      inputAssistantViewController = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
      inputAssistantView = [inputAssistantViewController inputAssistantView];
      [delegate2 colorPickerContainerView:self willDismissInputAssistantView:inputAssistantView];
    }

    inputAssistantViewController2 = [(PKPaletteColorPickerContainerView *)self inputAssistantViewController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKPaletteColorPickerContainerView_dismissPalettePopoverWithCompletion___block_invoke;
    v14[3] = &unk_1E82D7AE8;
    v14[4] = self;
    v15 = completionCopy;
    [(PKPaletteColorPickerContainerView *)self _dismissViewController:inputAssistantViewController2 withCompletion:v14];
  }

  else
  {
    palettePopoverPresenting = [(PKPaletteColorPickerContainerView *)self palettePopoverPresenting];
    palettePopoverPresentingController = [palettePopoverPresenting palettePopoverPresentingController];
    presentedViewController = [palettePopoverPresentingController presentedViewController];
    [(PKPaletteColorPickerContainerView *)self _dismissViewController:presentedViewController withCompletion:completionCopy];
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

- (void)_dismissViewController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy && ([controllerCopy isBeingDismissed] & 1) == 0)
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteColorPickerContainerView;
  [(PKPaletteColorPickerContainerView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteColorPickerContainerView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteColorPickerContainerView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
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