@interface EKUIClearButtonCell
- (EKUIClearButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)configuration;
- (void)_updateConfigurationNumLines:(id)a3;
- (void)_updateConstraints;
- (void)setTitleSubtitleContentConfiguration:(id)a3;
@end

@implementation EKUIClearButtonCell

- (EKUIClearButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v23.receiver = self;
  v23.super_class = EKUIClearButtonCell;
  v7 = [(EKUITableViewCell *)&v23 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = [EKUIClearButton alloc];
    v9 = ClearButtonImageColor();
    v10 = [(EKUIClearButton *)v8 initWithColor:v9];
    clearButton = v7->_clearButton;
    v7->_clearButton = v10;

    [(UIButton *)v7->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(EKUIClearButtonCell *)v7 contentView];
    [v12 addSubview:v7->_clearButton];

    v13 = [(EKUIClearButtonCell *)v7 defaultContentConfiguration];
    v14 = [objc_alloc(MEMORY[0x1E69DCC30]) initWithConfiguration:v13];
    listContentView = v7->_listContentView;
    v7->_listContentView = v14;

    [(UIListContentView *)v7->_listContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(EKUIClearButtonCell *)v7 contentView];
    [v16 addSubview:v7->_listContentView];

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

  v27 = [(UIListContentView *)self->_listContentView leadingAnchor];
  v28 = [(EKUIClearButtonCell *)self contentView];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v23 = [(UIListContentView *)self->_listContentView topAnchor];
  v24 = [(EKUIClearButtonCell *)self contentView];
  v22 = [v24 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v29[1] = v21;
  v19 = [(UIListContentView *)self->_listContentView bottomAnchor];
  v20 = [(EKUIClearButtonCell *)self contentView];
  v18 = [v20 bottomAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v29[2] = v17;
  v16 = [(UIButton *)self->_clearButton leadingAnchor];
  v15 = [(UIListContentView *)self->_listContentView trailingAnchor];
  v14 = [v16 constraintGreaterThanOrEqualToAnchor:v15];
  v29[3] = v14;
  v13 = [(EKUIClearButtonCell *)self contentView];
  v3 = [v13 layoutMarginsGuide];
  v4 = [v3 trailingAnchor];
  v5 = [(UIButton *)self->_clearButton trailingAnchor];
  +[EKUIClearButton trailingOffsetToMarginForTextFieldClearButtonAlignment];
  v6 = [v4 constraintEqualToAnchor:v5 constant:?];
  v29[4] = v6;
  v7 = [(UIButton *)self->_clearButton centerYAnchor];
  v8 = [(EKUIClearButtonCell *)self contentView];
  v9 = [v8 centerYAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v29[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  constraints = self->_constraints;
  self->_constraints = v11;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (void)setTitleSubtitleContentConfiguration:(id)a3
{
  v4 = a3;
  [(EKUIClearButtonCell *)self _updateConfigurationNumLines:v4];
  [(UIListContentView *)self->_listContentView setConfiguration:v4];
}

- (void)_updateConfigurationNumLines:(id)a3
{
  v4 = a3;
  v5 = [(EKUIClearButtonCell *)self traitCollection];
  category = [v5 preferredContentSizeCategory];

  v6 = !UIContentSizeCategoryIsAccessibilityCategory(category);
  v7 = [v4 textProperties];
  [v7 setNumberOfLines:v6];

  v8 = [v4 secondaryTextProperties];

  [v8 setNumberOfLines:v6];
}

- (id)configuration
{
  if (self->_listContentView)
  {
    v2 = [(UIListContentView *)self->_listContentView configuration];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = EKUIClearButtonCell;
    v2 = [(EKUIClearButtonCell *)&v4 defaultContentConfiguration];
  }

  return v2;
}

@end