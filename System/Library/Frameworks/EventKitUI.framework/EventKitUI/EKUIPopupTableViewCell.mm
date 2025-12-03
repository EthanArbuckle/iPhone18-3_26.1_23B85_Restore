@interface EKUIPopupTableViewCell
- (EKUIPopupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateConstraints;
- (void)setPopupMenuProvider:(id)provider;
- (void)setShowSelectedImage:(BOOL)image;
- (void)setTitleStrikethrough:(BOOL)strikethrough;
@end

@implementation EKUIPopupTableViewCell

- (EKUIPopupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v36[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v34.receiver = self;
  v34.super_class = EKUIPopupTableViewCell;
  v7 = [(EKUITableViewCell *)&v34 initWithStyle:style reuseIdentifier:identifierCopy];
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
    contentView = [(EKUIPopupTableViewCell *)v7 contentView];
    [contentView addSubview:v7->_textLabel];

    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setTitleLineBreakMode:4];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [plainButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

    [plainButtonConfiguration contentInsets];
    v16 = v15;
    [plainButtonConfiguration contentInsets];
    [plainButtonConfiguration setContentInsets:{v16, 0.0}];
    v17 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
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
    contentView2 = [(EKUIPopupTableViewCell *)v7 contentView];
    [contentView2 addSubview:v7->_popupButton];

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

  traitCollection = [(EKUIPopupTableViewCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(traitCollection);

  leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
  contentView = [(EKUIPopupTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  [layoutMarginsGuide leadingAnchor];
  v37 = v41 = leadingAnchor;
  v6 = [leadingAnchor constraintEqualToAnchor:?];
  v7 = v6;
  if (v4)
  {
    v47[0] = v6;
    topAnchor = [(UILabel *)self->_textLabel topAnchor];
    contentView2 = [(EKUIPopupTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:?];
    v47[1] = v42;
    leadingAnchor2 = [(UIButton *)self->_popupButton leadingAnchor];
    contentView3 = [(EKUIPopupTableViewCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    leadingAnchor3 = [layoutMarginsGuide3 leadingAnchor];
    v40 = leadingAnchor2;
    v27 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v47[2] = v27;
    trailingAnchor = [(UIButton *)self->_popupButton trailingAnchor];
    contentView4 = [(EKUIPopupTableViewCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    layoutMarginsGuide6 = trailingAnchor;
    contentView7 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v47[3] = contentView7;
    topAnchor3 = [(UIButton *)self->_popupButton topAnchor];
    bottomAnchor = [(UILabel *)self->_textLabel bottomAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v47[4] = v30;
    bottomAnchor2 = [(UIButton *)self->_popupButton bottomAnchor];
    contentView5 = [(EKUIPopupTableViewCell *)self contentView];
    layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
    [layoutMarginsGuide5 bottomAnchor];
    v16 = v28 = v7;
    v17 = [bottomAnchor2 constraintEqualToAnchor:v16];
    v47[5] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:6];
    constraints = self->_constraints;
    self->_constraints = v18;

    contentView6 = v27;
    v7 = v28;

    centerYAnchor2 = trailingAnchor2;
  }

  else
  {
    v46[0] = v6;
    centerYAnchor = [(UILabel *)self->_textLabel centerYAnchor];
    contentView2 = [(EKUIPopupTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    [layoutMarginsGuide2 centerYAnchor];
    topAnchor2 = topAnchor = centerYAnchor;
    v42 = [centerYAnchor constraintEqualToAnchor:?];
    v46[1] = v42;
    leadingAnchor4 = [(UIButton *)self->_popupButton leadingAnchor];
    [(UILabel *)self->_textLabel trailingAnchor];
    contentView3 = v40 = leadingAnchor4;
    layoutMarginsGuide3 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:contentView3 constant:8.0];
    v46[2] = layoutMarginsGuide3;
    trailingAnchor3 = [(UIButton *)self->_popupButton trailingAnchor];
    contentView6 = [(EKUIPopupTableViewCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    [layoutMarginsGuide6 trailingAnchor];
    contentView4 = leadingAnchor3 = trailingAnchor3;
    layoutMarginsGuide4 = [trailingAnchor3 constraintEqualToAnchor:?];
    v46[3] = layoutMarginsGuide4;
    centerYAnchor2 = [(UIButton *)self->_popupButton centerYAnchor];
    contentView7 = [(EKUIPopupTableViewCell *)self contentView];
    topAnchor3 = [contentView7 layoutMarginsGuide];
    bottomAnchor = [topAnchor3 centerYAnchor];
    v30 = [centerYAnchor2 constraintEqualToAnchor:bottomAnchor];
    v46[4] = v30;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
    bottomAnchor2 = self->_constraints;
    self->_constraints = v25;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  [(UILabel *)self->_textLabel setNeedsUpdateConstraints];
  [(UIButton *)self->_popupButton setNeedsUpdateConstraints];
}

- (void)setPopupMenuProvider:(id)provider
{
  v4 = [provider copy];
  [(UIButton *)self->_popupButton _setMenuProvider:v4];
}

- (void)setShowSelectedImage:(BOOL)image
{
  if (self->_showSelectedImage != image)
  {
    self->_showSelectedImage = image;
    [(UIButton *)self->_popupButton setNeedsUpdateConfiguration];
  }
}

- (void)setTitleStrikethrough:(BOOL)strikethrough
{
  if (self->_titleStrikethrough != strikethrough)
  {
    self->_titleStrikethrough = strikethrough;
    [(UIButton *)self->_popupButton setNeedsUpdateConfiguration];
  }
}

@end