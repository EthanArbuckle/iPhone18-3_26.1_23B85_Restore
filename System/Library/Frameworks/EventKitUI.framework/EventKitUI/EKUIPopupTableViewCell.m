@interface EKUIPopupTableViewCell
- (EKUIPopupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateConstraints;
- (void)setPopupMenuProvider:(id)a3;
- (void)setShowSelectedImage:(BOOL)a3;
- (void)setTitleStrikethrough:(BOOL)a3;
@end

@implementation EKUIPopupTableViewCell

- (EKUIPopupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v34.receiver = self;
  v34.super_class = EKUIPopupTableViewCell;
  v7 = [(EKUITableViewCell *)&v34 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v7->_textLabel;
    v7->_textLabel = v8;

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v7->_textLabel setFont:v10];

    [(UILabel *)v7->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_textLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v11) = 1148846080;
    [(UILabel *)v7->_textLabel setContentCompressionResistancePriority:0 forAxis:v11];
    v12 = [(EKUIPopupTableViewCell *)v7 contentView];
    [v12 addSubview:v7->_textLabel];

    v13 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v13 setTitleLineBreakMode:4];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v13 setBaseForegroundColor:v14];

    [v13 contentInsets];
    v16 = v15;
    [v13 contentInsets];
    [v13 setContentInsets:{v16, 0.0}];
    v17 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v13 primaryAction:0];
    popupButton = v7->_popupButton;
    v7->_popupButton = v17;

    [(UIButton *)v7->_popupButton setChangesSelectionAsPrimaryAction:1];
    [(UIButton *)v7->_popupButton setShowsMenuAsPrimaryAction:1];
    v19 = [MEMORY[0x1E69DC628] actionWithTitle:&stru_1F4EF6790 image:0 identifier:0 handler:&__block_literal_global_33];
    v20 = MEMORY[0x1E69DCC60];
    v36[0] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v22 = [v20 menuWithChildren:v21];
    [(UIButton *)v7->_popupButton setMenu:v22];

    objc_initWeak(&location, v7);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __56__EKUIPopupTableViewCell_initWithStyle_reuseIdentifier___block_invoke_2;
    v31[3] = &unk_1E8440360;
    objc_copyWeak(&v32, &location);
    [(UIButton *)v7->_popupButton setConfigurationUpdateHandler:v31];
    [(UIButton *)v7->_popupButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1144750080;
    [(UIButton *)v7->_popupButton setContentCompressionResistancePriority:0 forAxis:v23];
    [(EKUIPopupTableViewCell *)v7 _setPopupMenuButton:v7->_popupButton];
    v24 = [(EKUIPopupTableViewCell *)v7 contentView];
    [v24 addSubview:v7->_popupButton];

    [(EKUIPopupTableViewCell *)v7 _updateConstraints];
    objc_initWeak(&from, v7);
    v35 = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__EKUIPopupTableViewCell_initWithStyle_reuseIdentifier___block_invoke_121;
    v28[3] = &unk_1E843EBE8;
    objc_copyWeak(&v29, &from);
    v26 = [(EKUIPopupTableViewCell *)v7 registerForTraitChanges:v25 withHandler:v28];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __56__EKUIPopupTableViewCell_initWithStyle_reuseIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 configuration];
  v6 = [v3 menu];
  v7 = [v6 selectedElements];
  v8 = [v7 firstObject];

  if ([WeakRetained showSelectedImage])
  {
    v9 = [v8 image];
    [v5 setImage:v9];

    [v5 setImagePadding:8.0];
    v10 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD28]];
    [v5 setPreferredSymbolConfigurationForImage:v10];
  }

  if ([WeakRetained titleStrikethrough])
  {
    v11 = [WeakRetained detailTextLabel];
    v12 = [v11 font];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    }

    v15 = v14;

    v16 = [WeakRetained detailTextLabel];
    v17 = [v16 textColor];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    v20 = v19;

    v21 = *MEMORY[0x1E69DB648];
    v29[0] = *MEMORY[0x1E69DB6B8];
    v29[1] = v21;
    v30[0] = &unk_1F4F325D8;
    v30[1] = v15;
    v22 = *MEMORY[0x1E69DB650];
    v30[2] = v20;
    v23 = *MEMORY[0x1E69DB6B0];
    v29[2] = v22;
    v29[3] = v23;
    v24 = [v20 colorWithAlphaComponent:0.75];
    v30[3] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v27 = [v5 title];
    v28 = [v26 initWithString:v27 attributes:v25];
    [v5 setAttributedTitle:v28];
  }

  [v3 setConfiguration:v5];
}

void __56__EKUIPopupTableViewCell_initWithStyle_reuseIdentifier___block_invoke_121(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraints];
}

- (void)_updateConstraints
{
  v47[6] = *MEMORY[0x1E69E9840];
  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  v3 = [(EKUIPopupTableViewCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(v3);

  v5 = [(UILabel *)self->_textLabel leadingAnchor];
  v39 = [(EKUIPopupTableViewCell *)self contentView];
  v38 = [v39 layoutMarginsGuide];
  [v38 leadingAnchor];
  v37 = v41 = v5;
  v6 = [v5 constraintEqualToAnchor:?];
  v7 = v6;
  if (v4)
  {
    v47[0] = v6;
    v33 = [(UILabel *)self->_textLabel topAnchor];
    v45 = [(EKUIPopupTableViewCell *)self contentView];
    v44 = [v45 layoutMarginsGuide];
    v43 = [v44 topAnchor];
    v42 = [v33 constraintEqualToAnchor:?];
    v47[1] = v42;
    v8 = [(UIButton *)self->_popupButton leadingAnchor];
    v32 = [(EKUIPopupTableViewCell *)self contentView];
    v31 = [v32 layoutMarginsGuide];
    v29 = [v31 leadingAnchor];
    v40 = v8;
    v27 = [v8 constraintEqualToAnchor:v29];
    v47[2] = v27;
    v9 = [(UIButton *)self->_popupButton trailingAnchor];
    v35 = [(EKUIPopupTableViewCell *)self contentView];
    v34 = [v35 layoutMarginsGuide];
    v26 = [v34 trailingAnchor];
    v36 = v9;
    v10 = [v9 constraintLessThanOrEqualToAnchor:v26];
    v47[3] = v10;
    v11 = [(UIButton *)self->_popupButton topAnchor];
    v12 = [(UILabel *)self->_textLabel bottomAnchor];
    v30 = [v11 constraintEqualToAnchor:v12];
    v47[4] = v30;
    v13 = [(UIButton *)self->_popupButton bottomAnchor];
    v14 = [(EKUIPopupTableViewCell *)self contentView];
    v15 = [v14 layoutMarginsGuide];
    [v15 bottomAnchor];
    v16 = v28 = v7;
    v17 = [v13 constraintEqualToAnchor:v16];
    v47[5] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:6];
    constraints = self->_constraints;
    self->_constraints = v18;

    v20 = v27;
    v7 = v28;

    v21 = v26;
  }

  else
  {
    v46[0] = v6;
    v22 = [(UILabel *)self->_textLabel centerYAnchor];
    v45 = [(EKUIPopupTableViewCell *)self contentView];
    v44 = [v45 layoutMarginsGuide];
    [v44 centerYAnchor];
    v43 = v33 = v22;
    v42 = [v22 constraintEqualToAnchor:?];
    v46[1] = v42;
    v23 = [(UIButton *)self->_popupButton leadingAnchor];
    [(UILabel *)self->_textLabel trailingAnchor];
    v32 = v40 = v23;
    v31 = [v23 constraintGreaterThanOrEqualToAnchor:v32 constant:8.0];
    v46[2] = v31;
    v24 = [(UIButton *)self->_popupButton trailingAnchor];
    v20 = [(EKUIPopupTableViewCell *)self contentView];
    v36 = [v20 layoutMarginsGuide];
    [v36 trailingAnchor];
    v35 = v29 = v24;
    v34 = [v24 constraintEqualToAnchor:?];
    v46[3] = v34;
    v21 = [(UIButton *)self->_popupButton centerYAnchor];
    v10 = [(EKUIPopupTableViewCell *)self contentView];
    v11 = [v10 layoutMarginsGuide];
    v12 = [v11 centerYAnchor];
    v30 = [v21 constraintEqualToAnchor:v12];
    v46[4] = v30;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
    v13 = self->_constraints;
    self->_constraints = v25;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  [(UILabel *)self->_textLabel setNeedsUpdateConstraints];
  [(UIButton *)self->_popupButton setNeedsUpdateConstraints];
}

- (void)setPopupMenuProvider:(id)a3
{
  v4 = [a3 copy];
  [(UIButton *)self->_popupButton _setMenuProvider:v4];
}

- (void)setShowSelectedImage:(BOOL)a3
{
  if (self->_showSelectedImage != a3)
  {
    self->_showSelectedImage = a3;
    [(UIButton *)self->_popupButton setNeedsUpdateConfiguration];
  }
}

- (void)setTitleStrikethrough:(BOOL)a3
{
  if (self->_titleStrikethrough != a3)
  {
    self->_titleStrikethrough = a3;
    [(UIButton *)self->_popupButton setNeedsUpdateConfiguration];
  }
}

@end