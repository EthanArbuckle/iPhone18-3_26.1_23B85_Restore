@interface EKUIFocusBannerCollectionViewCell
- (EKUIFocusBannerCollectionViewCell)initWithFrame:(CGRect)frame;
- (EKUIFocusBannerCollectionViewCellDelegate)delegate;
- (id)_configuration;
- (id)_createFocusFilterToggleButton;
- (id)_focusFilterButtonConfiguration;
- (void)_configureCellSwitchingLayout:(BOOL)layout;
- (void)_tapped;
- (void)setOn:(BOOL)on;
@end

@implementation EKUIFocusBannerCollectionViewCell

- (EKUIFocusBannerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = EKUIFocusBannerCollectionViewCell;
  v3 = [(EKUIFocusBannerCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(EKUIFocusBannerCollectionViewCell *)v3 _configureCellSwitchingLayout:1];
    objc_initWeak(&location, v4);
    v12[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__EKUIFocusBannerCollectionViewCell_initWithFrame___block_invoke;
    v8[3] = &unk_1E843EBE8;
    objc_copyWeak(&v9, &location);
    v6 = [(EKUIFocusBannerCollectionViewCell *)v4 registerForTraitChanges:v5 withHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __51__EKUIFocusBannerCollectionViewCell_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);
  v8 = [v5 traitCollection];

  v9 = [v8 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryIsAccessibilityCategory(v9);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCellSwitchingLayout:IsAccessibilityCategory ^ v10];
}

- (id)_createFocusFilterToggleButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  _focusFilterButtonConfiguration = [(EKUIFocusBannerCollectionViewCell *)self _focusFilterButtonConfiguration];
  [v3 setConfiguration:_focusFilterButtonConfiguration];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __67__EKUIFocusBannerCollectionViewCell__createFocusFilterToggleButton__block_invoke;
  v9 = &unk_1E8440360;
  objc_copyWeak(&v10, &location);
  [v3 setConfigurationUpdateHandler:&v6];
  [v3 addTarget:self action:sel__tapped forControlEvents:{0x2000, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v3;
}

void __67__EKUIFocusBannerCollectionViewCell__createFocusFilterToggleButton__block_invoke(uint64_t a1, void *a2)
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

- (void)_tapped
{
  [(EKUIFocusBannerCollectionViewCell *)self setOn:[(EKUIFocusBannerCollectionViewCell *)self on]^ 1];
  delegate = [(EKUIFocusBannerCollectionViewCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKUIFocusBannerCollectionViewCell *)self delegate];
    [delegate2 focusBannerCollectionViewCellToggled:self];
  }
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(EKUIFocusBannerCollectionViewCell *)self _configureCellSwitchingLayout:0];
  }
}

- (void)_configureCellSwitchingLayout:(BOOL)layout
{
  layoutCopy = layout;
  v53[6] = *MEMORY[0x1E69E9840];
  traitCollection = [(EKUIFocusBannerCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    if (layoutCopy)
    {
      [(EKUIFocusBannerCollectionViewCell *)self setContentConfiguration:0];
      [(EKUIFocusBannerCollectionViewCell *)self setAccessories:MEMORY[0x1E695E0F0]];
      v8 = objc_alloc(MEMORY[0x1E69DCC30]);
      _configuration = [(EKUIFocusBannerCollectionViewCell *)self _configuration];
      v10 = [v8 initWithConfiguration:_configuration];
      axListContentView = self->_axListContentView;
      self->_axListContentView = v10;

      [(UIListContentView *)self->_axListContentView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_axListContentView];

      _createFocusFilterToggleButton = [(EKUIFocusBannerCollectionViewCell *)self _createFocusFilterToggleButton];
      axFocusFilterToggleButton = self->_axFocusFilterToggleButton;
      self->_axFocusFilterToggleButton = _createFocusFilterToggleButton;

      [(UIButton *)self->_axFocusFilterToggleButton setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v15) = 1148846080;
      [(UIButton *)self->_axFocusFilterToggleButton setContentCompressionResistancePriority:0 forAxis:v15];
      LODWORD(v16) = 1148846080;
      [(UIButton *)self->_axFocusFilterToggleButton setContentCompressionResistancePriority:1 forAxis:v16];
      contentView2 = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_axFocusFilterToggleButton];

      leadingAnchor = [(UIListContentView *)self->_axListContentView leadingAnchor];
      contentView3 = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      leadingAnchor2 = [contentView3 leadingAnchor];
      v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v53[0] = v48;
      trailingAnchor = [(UIListContentView *)self->_axListContentView trailingAnchor];
      contentView4 = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      trailingAnchor2 = [contentView4 trailingAnchor];
      v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v53[1] = v44;
      topAnchor = [(UIListContentView *)self->_axListContentView topAnchor];
      contentView5 = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      topAnchor2 = [contentView5 topAnchor];
      v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v53[2] = v40;
      topAnchor3 = [(UIButton *)self->_axFocusFilterToggleButton topAnchor];
      bottomAnchor = [(UIListContentView *)self->_axListContentView bottomAnchor];
      v37 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
      v53[3] = v37;
      bottomAnchor2 = [(UIButton *)self->_axFocusFilterToggleButton bottomAnchor];
      contentView6 = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      layoutMarginsGuide = [contentView6 layoutMarginsGuide];
      bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
      v20 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v53[4] = v20;
      leadingAnchor3 = [(UIButton *)self->_axFocusFilterToggleButton leadingAnchor];
      contentView7 = [(EKUIFocusBannerCollectionViewCell *)self contentView];
      layoutMarginsGuide2 = [contentView7 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
      v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v53[5] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:6];
      axConstraints = self->_axConstraints;
      self->_axConstraints = v26;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_axConstraints];
    }

    _configuration2 = [(EKUIFocusBannerCollectionViewCell *)self _configuration];
    [(UIListContentView *)self->_axListContentView setConfiguration:_configuration2];

    _focusFilterButtonConfiguration = [(EKUIFocusBannerCollectionViewCell *)self _focusFilterButtonConfiguration];
    [(UIButton *)self->_axFocusFilterToggleButton setConfiguration:_focusFilterButtonConfiguration];
  }

  else
  {
    if (layoutCopy)
    {
      if (self->_axConstraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      }

      [(UIListContentView *)self->_axListContentView removeFromSuperview];
      [(UIButton *)self->_axFocusFilterToggleButton removeFromSuperview];
      _createFocusFilterToggleButton2 = [(EKUIFocusBannerCollectionViewCell *)self _createFocusFilterToggleButton];
      focusFilterToggleButton = self->_focusFilterToggleButton;
      self->_focusFilterToggleButton = _createFocusFilterToggleButton2;

      v32 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:self->_focusFilterToggleButton placement:1];
      v52 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      [(EKUIFocusBannerCollectionViewCell *)self setAccessories:v33];
    }

    _focusFilterButtonConfiguration2 = [(EKUIFocusBannerCollectionViewCell *)self _focusFilterButtonConfiguration];
    [(UIButton *)self->_focusFilterToggleButton setConfiguration:_focusFilterButtonConfiguration2];

    _focusFilterButtonConfiguration = [(EKUIFocusBannerCollectionViewCell *)self _configuration];
    [(EKUIFocusBannerCollectionViewCell *)self setContentConfiguration:_focusFilterButtonConfiguration];
  }
}

- (id)_configuration
{
  selfCopy = self;
  defaultContentConfiguration = [(EKUIFocusBannerCollectionViewCell *)self defaultContentConfiguration];
  LODWORD(selfCopy) = [(EKUIFocusBannerCollectionViewCell *)selfCopy on];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (selfCopy)
  {
    v6 = [v4 localizedStringForKey:@"Filtered by Focus" value:&stru_1F4EF6790 table:0];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [MEMORY[0x1E69DC888] systemIndigoColor];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"Focus Filter Off" value:&stru_1F4EF6790 table:0];

    labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"moon.circle.fill"];
  [defaultContentConfiguration setImage:v9];

  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setTintColor:v8];

  [defaultContentConfiguration setText:v6];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:labelColor];

  textProperties2 = [defaultContentConfiguration textProperties];
  [textProperties2 setNumberOfLines:0];

  return defaultContentConfiguration;
}

- (id)_focusFilterButtonConfiguration
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = [(EKUIFocusBannerCollectionViewCell *)self on];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"Turn Off";
  }

  else
  {
    v6 = @"Turn On";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:32770 options:0];
  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
  systemIndigoColor = [MEMORY[0x1E69DC888] systemIndigoColor];
  v11 = *MEMORY[0x1E69DB650];
  v19[0] = *MEMORY[0x1E69DB648];
  v19[1] = v11;
  v20[0] = v9;
  v20[1] = systemIndigoColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v12];
  traitCollection = [(EKUIFocusBannerCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {

LABEL_7:
    grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    [grayButtonConfiguration setCornerStyle:4];
    [grayButtonConfiguration setButtonSize:0];
    goto LABEL_9;
  }

  v16 = MEMORY[0x1D38B98D0]();

  if (v16)
  {
    goto LABEL_7;
  }

  grayButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [grayButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
LABEL_9:
  [grayButtonConfiguration setAttributedTitle:v13];
  [grayButtonConfiguration setTitleLineBreakMode:2];

  return grayButtonConfiguration;
}

- (EKUIFocusBannerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end