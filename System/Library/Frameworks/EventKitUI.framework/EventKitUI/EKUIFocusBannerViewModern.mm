@interface EKUIFocusBannerViewModern
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKUIFocusBannerViewModern)initWithFrame:(CGRect)frame;
- (id)_focusFilterButtonConfiguration;
- (id)largeContentImage;
- (id)largeContentTitle;
- (void)_tapped;
- (void)_updateView;
- (void)largeContentViewerInteraction:(id)interaction didEndOnItem:(id)item atPoint:(CGPoint)point;
- (void)setDisallowAccessibilityTextSizes:(BOOL)sizes;
- (void)setLayout:(unint64_t)layout;
- (void)setOn:(BOOL)on;
- (void)setShowDividers:(BOOL)dividers;
@end

@implementation EKUIFocusBannerViewModern

- (EKUIFocusBannerViewModern)initWithFrame:(CGRect)frame
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = EKUIFocusBannerViewModern;
  v3 = [(EKUIFocusBannerViewModern *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC18]) initWithDelegate:v3];
    [(EKUIFocusBannerViewModern *)v3 addInteraction:v4];

    systemIndigoColor = [MEMORY[0x1E69DC888] systemIndigoColor];
    [(EKUIFocusBannerViewModern *)v3 setTintColor:systemIndigoColor];

    [(EKUIFocusBannerViewModern *)v3 setPreservesSuperviewLayoutMargins:1];
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    focusFilterToggleButton = v3->_focusFilterToggleButton;
    v3->_focusFilterToggleButton = v6;

    _focusFilterButtonConfiguration = [(EKUIFocusBannerViewModern *)v3 _focusFilterButtonConfiguration];
    [(UIButton *)v3->_focusFilterToggleButton setConfiguration:_focusFilterButtonConfiguration];

    objc_initWeak(&location, v3);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __43__EKUIFocusBannerViewModern_initWithFrame___block_invoke;
    v28[3] = &unk_1E8440360;
    objc_copyWeak(&v29, &location);
    [(UIButton *)v3->_focusFilterToggleButton setConfigurationUpdateHandler:v28];
    [(UIButton *)v3->_focusFilterToggleButton addTarget:v3 action:sel__tapped forControlEvents:0x2000];
    [(EKUIFocusBannerViewModern *)v3 addSubview:v3->_focusFilterToggleButton];
    [(UIButton *)v3->_focusFilterToggleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIButton *)v3->_focusFilterToggleButton centerXAnchor];
    centerXAnchor2 = [(EKUIFocusBannerViewModern *)v3 centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v32[0] = v25;
    centerYAnchor = [(UIButton *)v3->_focusFilterToggleButton centerYAnchor];
    centerYAnchor2 = [(EKUIFocusBannerViewModern *)v3 centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v32[1] = v9;
    widthAnchor = [(EKUIFocusBannerViewModern *)v3 widthAnchor];
    widthAnchor2 = [(UIButton *)v3->_focusFilterToggleButton widthAnchor];
    v12 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2];
    v32[2] = v12;
    heightAnchor = [(EKUIFocusBannerViewModern *)v3 heightAnchor];
    heightAnchor2 = [(UIButton *)v3->_focusFilterToggleButton heightAnchor];
    v15 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    v32[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v22 activateConstraints:v16];

    LODWORD(v17) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentCompressionResistancePriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentCompressionResistancePriority:1 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentHuggingPriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentHuggingPriority:1 forAxis:v20];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__EKUIFocusBannerViewModern_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _focusFilterButtonConfiguration];
    [v6 setConfiguration:v5];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(EKUIFocusBannerViewModern *)self directionalLayoutMargins:fits.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = width - v7 - v11;
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  [(UIButton *)self->_focusFilterToggleButton sizeThatFits:v13, *(MEMORY[0x1E69DE098] + 8)];
  v15 = v12 + v8 + v14;
  v17 = v6 + v10 + v16;
  result.height = v17;
  result.width = v15;
  return result;
}

- (void)_tapped
{
  [(EKUIFocusBannerViewModern *)self setOn:[(EKUIFocusBannerViewModern *)self on]^ 1];
  delegate = [(EKUIFocusBannerView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKUIFocusBannerView *)self delegate];
    [delegate2 focusBannerViewToggled:self];
  }
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(EKUIFocusBannerViewModern *)self _updateView];
  }
}

- (void)setShowDividers:(BOOL)dividers
{
  if (self->_showDividers != dividers)
  {
    self->_showDividers = dividers;
  }
}

- (void)setLayout:(unint64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    [(EKUIFocusBannerViewModern *)self _updateView];
  }
}

- (void)setDisallowAccessibilityTextSizes:(BOOL)sizes
{
  if (self->_disallowAccessibilityTextSizes != sizes)
  {
    self->_disallowAccessibilityTextSizes = sizes;
    [(EKUIFocusBannerViewModern *)self _updateView];
  }
}

- (void)_updateView
{
  [(UIButton *)self->_focusFilterToggleButton setNeedsUpdateConfiguration];
  focusFilterToggleButton = self->_focusFilterToggleButton;

  [(UIButton *)focusFilterToggleButton updateConfiguration];
}

- (id)_focusFilterButtonConfiguration
{
  if (self->_wantsBorder)
  {
    [MEMORY[0x1E69DC740] borderedButtonConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }
  v3 = ;
  v4 = [(EKUIFocusBannerViewModern *)self on];
  if (v4)
  {
    v5 = @"Filtered by Focus: On";
  }

  else
  {
    v5 = @"Filtered by Focus: Off";
  }

  if (v4)
  {
    v6 = @"moon.circle.fill";
  }

  else
  {
    v6 = @"moon.circle";
  }

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v5 value:&stru_1F4EF6790 table:0];
  [v3 setTitle:v8];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
  [v3 setImage:v9];

  [v3 setTitleLineBreakMode:4];
  [v3 setImagePadding:5.0];

  return v3;
}

- (id)largeContentTitle
{
  v2 = MEMORY[0x1E696AEC0];
  titleLabel = [(UIButton *)self->_focusFilterToggleButton titleLabel];
  text = [titleLabel text];
  v5 = [v2 stringWithFormat:@"%@", text];

  return v5;
}

- (id)largeContentImage
{
  imageView = [(UIButton *)self->_focusFilterToggleButton imageView];
  image = [imageView image];

  return image;
}

- (void)largeContentViewerInteraction:(id)interaction didEndOnItem:(id)item atPoint:(CGPoint)point
{
  if (item == self)
  {
    [(EKUIFocusBannerViewModern *)self _tapped:interaction];
  }
}

@end