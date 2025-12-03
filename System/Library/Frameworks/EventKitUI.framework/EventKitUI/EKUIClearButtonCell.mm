@interface EKUIClearButtonCell
- (EKUIClearButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)configuration;
- (void)_updateConfigurationNumLines:(id)lines;
- (void)_updateConstraints;
- (void)setTitleSubtitleContentConfiguration:(id)configuration;
@end

@implementation EKUIClearButtonCell

- (EKUIClearButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v24[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = EKUIClearButtonCell;
  v7 = [(EKUITableViewCell *)&v23 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [EKUIClearButton alloc];
    v9 = ClearButtonImageColor();
    v10 = [(EKUIClearButton *)v8 initWithColor:v9];
    clearButton = v7->_clearButton;
    v7->_clearButton = v10;

    [(UIButton *)v7->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(EKUIClearButtonCell *)v7 contentView];
    [contentView addSubview:v7->_clearButton];

    defaultContentConfiguration = [(EKUIClearButtonCell *)v7 defaultContentConfiguration];
    v14 = [objc_alloc(MEMORY[0x1E69DCC30]) initWithConfiguration:defaultContentConfiguration];
    listContentView = v7->_listContentView;
    v7->_listContentView = v14;

    [(UIListContentView *)v7->_listContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(EKUIClearButtonCell *)v7 contentView];
    [contentView2 addSubview:v7->_listContentView];

    [(EKUIClearButtonCell *)v7 _updateConstraints];
    objc_initWeak(&location, v7);
    v24[0] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__EKUIClearButtonCell_initWithStyle_reuseIdentifier___block_invoke;
    v20[3] = &unk_1E843EBE8;
    objc_copyWeak(&v21, &location);
    v18 = [(EKUIClearButtonCell *)v7 registerForTraitChanges:v17 withHandler:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__EKUIClearButtonCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[136] configuration];
    [v3 _updateConfigurationNumLines:v2];
    [v3[136] setConfiguration:v2];

    WeakRetained = v3;
  }
}

- (void)_updateConstraints
{
  v29[6] = *MEMORY[0x1E69E9840];
  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  leadingAnchor = [(UIListContentView *)self->_listContentView leadingAnchor];
  contentView = [(EKUIClearButtonCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v25;
  topAnchor = [(UIListContentView *)self->_listContentView topAnchor];
  contentView2 = [(EKUIClearButtonCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[1] = v21;
  bottomAnchor = [(UIListContentView *)self->_listContentView bottomAnchor];
  contentView3 = [(EKUIClearButtonCell *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[2] = v17;
  leadingAnchor3 = [(UIButton *)self->_clearButton leadingAnchor];
  trailingAnchor = [(UIListContentView *)self->_listContentView trailingAnchor];
  v14 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor];
  v29[3] = v14;
  contentView4 = [(EKUIClearButtonCell *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  trailingAnchor3 = [(UIButton *)self->_clearButton trailingAnchor];
  +[EKUIClearButton trailingOffsetToMarginForTextFieldClearButtonAlignment];
  v6 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:?];
  v29[4] = v6;
  centerYAnchor = [(UIButton *)self->_clearButton centerYAnchor];
  contentView5 = [(EKUIClearButtonCell *)self contentView];
  centerYAnchor2 = [contentView5 centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v29[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  constraints = self->_constraints;
  self->_constraints = v11;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (void)setTitleSubtitleContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(EKUIClearButtonCell *)self _updateConfigurationNumLines:configurationCopy];
  [(UIListContentView *)self->_listContentView setConfiguration:configurationCopy];
}

- (void)_updateConfigurationNumLines:(id)lines
{
  linesCopy = lines;
  traitCollection = [(EKUIClearButtonCell *)self traitCollection];
  category = [traitCollection preferredContentSizeCategory];

  v6 = !UIContentSizeCategoryIsAccessibilityCategory(category);
  textProperties = [linesCopy textProperties];
  [textProperties setNumberOfLines:v6];

  secondaryTextProperties = [linesCopy secondaryTextProperties];

  [secondaryTextProperties setNumberOfLines:v6];
}

- (id)configuration
{
  if (self->_listContentView)
  {
    configuration = [(UIListContentView *)self->_listContentView configuration];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = EKUIClearButtonCell;
    configuration = [(EKUIClearButtonCell *)&v4 defaultContentConfiguration];
  }

  return configuration;
}

@end