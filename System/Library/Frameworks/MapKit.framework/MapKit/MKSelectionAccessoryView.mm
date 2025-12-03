@interface MKSelectionAccessoryView
+ (id)_buttonConfigurationForControlState:(unint64_t)state;
+ (id)_imageConfigurationWithXColor:(id)color circleColor:(id)circleColor;
- (MKPlaceCardContentSizeDelegate)placeCardContentSizeDelegate;
- (MKSelectionAccessoryView)initWithFrame:(CGRect)frame;
- (MKSelectionAccessoryViewDelegate)delegate;
- (void)_activateDismissButtonConstraints;
- (void)_bringDismissButtonToFront;
- (void)_createDismissButtonIfNeeded;
- (void)_requestDismissal;
- (void)_updateDismissButtonVisibility;
- (void)setDelegate:(id)delegate;
@end

@implementation MKSelectionAccessoryView

- (MKSelectionAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MKPlaceCardContentSizeDelegate)placeCardContentSizeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardContentSizeDelegate);

  return WeakRetained;
}

- (void)_requestDismissal
{
  delegate = [(MKSelectionAccessoryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MKSelectionAccessoryView *)self delegate];
    [delegate2 selectionAccessoryViewDidRequestDismissal:self];
  }
}

- (void)_bringDismissButtonToFront
{
  if (self->_dismissButton)
  {
    [(MKSelectionAccessoryView *)self bringSubviewToFront:?];
  }
}

- (void)_activateDismissButtonConstraints
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIButton *)self->_dismissButton topAnchor];
  safeAreaLayoutGuide = [(MKSelectionAccessoryView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v13[0] = v7;
  safeAreaLayoutGuide2 = [(MKSelectionAccessoryView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(UIButton *)self->_dismissButton trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:15.0];
  v13[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v3 activateConstraints:v12];
}

- (void)_createDismissButtonIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    dismissButton = self->_dismissButton;

    if (!dismissButton)
    {
      v5 = _MKLocalizedStringFromThisBundle(@"Dismiss");
      objc_initWeak(&location, self);
      v6 = [MKSelectionAccessoryView _buttonConfigurationForControlState:0];
      v7 = MEMORY[0x1E69DC738];
      v8 = MEMORY[0x1E69DC628];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __56__MKSelectionAccessoryView__createDismissButtonIfNeeded__block_invoke;
      v15 = &unk_1E76C8738;
      objc_copyWeak(&v16, &location);
      v9 = [v8 actionWithHandler:&v12];
      v10 = [v7 buttonWithConfiguration:v6 primaryAction:{v9, v12, v13, v14, v15}];
      v11 = self->_dismissButton;
      self->_dismissButton = v10;

      [(UIButton *)self->_dismissButton setConfigurationUpdateHandler:&__block_literal_global_3811];
      [(UIButton *)self->_dismissButton setPreferredBehavioralStyle:1];
      [(UIButton *)self->_dismissButton setAccessibilityLabel:v5];
      [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MKSelectionAccessoryView *)self addSubview:self->_dismissButton];
      [(MKSelectionAccessoryView *)self _activateDismissButtonConstraints];
      objc_destroyWeak(&v16);

      objc_destroyWeak(&location);
    }
  }
}

void __56__MKSelectionAccessoryView__createDismissButtonIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestDismissal];
}

void __56__MKSelectionAccessoryView__createDismissButtonIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[MKSelectionAccessoryView _buttonConfigurationForControlState:](MKSelectionAccessoryView, "_buttonConfigurationForControlState:", [v2 state]);
  [v2 setConfiguration:v3];
}

- (void)_updateDismissButtonVisibility
{
  [(MKSelectionAccessoryView *)self _createDismissButtonIfNeeded];
  if (self->_dismissButton)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(UIButton *)self->_dismissButton setHidden:WeakRetained == 0];
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(MKSelectionAccessoryView *)self _updateDismissButtonVisibility];
}

- (MKSelectionAccessoryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKSelectionAccessoryView;
  v3 = [(MKSelectionAccessoryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKSelectionAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v4;
}

+ (id)_buttonConfigurationForControlState:(unint64_t)state
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
  [plainButtonConfiguration setImage:v6];

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  v8 = systemWhiteColor;
  if (state == 1)
  {
    v9 = [systemWhiteColor colorWithAlphaComponent:0.25];

    v8 = v9;
  }

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v11 = [self _imageConfigurationWithXColor:v8 circleColor:systemGrayColor];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v11];

  return plainButtonConfiguration;
}

+ (id)_imageConfigurationWithXColor:(id)color circleColor:(id)circleColor
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCAD8];
  v14[0] = color;
  v14[1] = circleColor;
  v6 = MEMORY[0x1E695DEC8];
  circleColorCopy = circleColor;
  colorCopy = color;
  v9 = [v6 arrayWithObjects:v14 count:2];
  v10 = [v5 configurationWithPaletteColors:v9];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:23.0];

  v12 = [v11 configurationByApplyingConfiguration:v10];

  return v12;
}

@end