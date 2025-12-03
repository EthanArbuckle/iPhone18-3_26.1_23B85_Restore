@interface SFContactAutoFillTableViewCell
- (SFContactAutoFillTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setChecked:(BOOL)checked;
- (void)setValue:(id)value property:(id)property;
@end

@implementation SFContactAutoFillTableViewCell

- (SFContactAutoFillTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v67[9] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = SFContactAutoFillTableViewCell;
  v4 = [(SFContactAutoFillTableViewCell *)&v66 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SFContactAutoFillTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v7 setAlignment:1];
    [v7 setAxis:0];
    [v7 setDistribution:0];
    [v7 setSpacing:-14.0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v7];
    v8 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v8 setAlignment:1];
    [v8 setAxis:0];
    [v8 setDistribution:0];
    [v8 setLayoutMargins:{14.0, 14.0, 14.0, 14.0}];
    [v8 setLayoutMarginsRelativeArrangement:1];
    [v8 setSpacing:14.0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addArrangedSubview:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    categoryLabel = v5->_categoryLabel;
    v5->_categoryLabel = v9;

    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [(UILabel *)v5->_categoryLabel setFont:v11];

    [(UILabel *)v5->_categoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_categoryLabel _setTextColorFollowsTintColor:1];
    v65 = v8;
    [v8 addArrangedSubview:v5->_categoryLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    optionLabel = v5->_optionLabel;
    v5->_optionLabel = v12;

    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v5->_optionLabel setFont:v14];

    [(UILabel *)v5->_optionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addArrangedSubview:v5->_optionLabel];
    borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    background = [borderlessButtonConfiguration background];
    [borderlessButtonConfiguration setButtonSize:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [background setBackgroundColor:clearColor];

    v17 = *MEMORY[0x1E69DC5C0];
    v18 = *(MEMORY[0x1E69DC5C0] + 8);
    v19 = *(MEMORY[0x1E69DC5C0] + 16);
    v20 = *(MEMORY[0x1E69DC5C0] + 24);
    [background setBackgroundInsets:{*MEMORY[0x1E69DC5C0], v18, v19, v20}];
    v63 = borderlessButtonConfiguration;
    [borderlessButtonConfiguration setContentInsets:{v17, v18, v19, v20}];
    v21 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:0];
    checkmarkButton = v5->_checkmarkButton;
    v5->_checkmarkButton = v21;

    [(UIButton *)v5->_checkmarkButton addTarget:v5 action:sel_checkmarkButtonTapped_ forControlEvents:64];
    [(UIButton *)v5->_checkmarkButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v23 addSubview:v5->_checkmarkButton];
    [v7 insertArrangedSubview:v23 atIndex:0];
    v49 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIButton *)v5->_checkmarkButton centerXAnchor];
    v62 = v23;
    centerXAnchor2 = [v23 centerXAnchor];
    v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v67[0] = v59;
    centerYAnchor = [(UIButton *)v5->_checkmarkButton centerYAnchor];
    centerYAnchor2 = [v23 centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v67[1] = v54;
    widthAnchor = [v23 widthAnchor];
    v52 = [widthAnchor constraintEqualToConstant:48.0];
    v67[2] = v52;
    heightAnchor = [v23 heightAnchor];
    v50 = [heightAnchor constraintEqualToConstant:48.0];
    v67[3] = v50;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v67[4] = v46;
    topAnchor = [v7 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v67[5] = v43;
    v58 = v7;
    widthAnchor2 = [v7 widthAnchor];
    v24 = contentView;
    v57 = contentView;
    widthAnchor3 = [contentView widthAnchor];
    v26 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v67[6] = v26;
    heightAnchor2 = [v7 heightAnchor];
    heightAnchor3 = [v24 heightAnchor];
    v29 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v67[7] = v29;
    widthAnchor4 = [(UILabel *)v5->_categoryLabel widthAnchor];
    v31 = [widthAnchor4 constraintEqualToConstant:100.0];
    v67[8] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:9];
    [v49 activateConstraints:v32];

    LODWORD(v33) = 1148846080;
    [(UILabel *)v5->_optionLabel setContentHuggingPriority:0 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(UILabel *)v5->_categoryLabel setContentCompressionResistancePriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(UILabel *)v5->_categoryLabel setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(UIButton *)v5->_checkmarkButton setContentCompressionResistancePriority:1 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(UIButton *)v5->_checkmarkButton setContentCompressionResistancePriority:0 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(UIButton *)v5->_checkmarkButton setContentHuggingPriority:1 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [(UIButton *)v5->_checkmarkButton setContentHuggingPriority:0 forAxis:v39];
    v40 = v5;
  }

  return v5;
}

- (void)setValue:(id)value property:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  objc_storeStrong(&self->_value, value);
  v8 = MEMORY[0x1E69C8AD8];
  if (self->_usesDetailAppearance)
  {
    label = [valueCopy label];
  }

  else
  {
    v10 = propertyCopy;
    if ([v10 isEqualToString:*v8])
    {
      _WBSLocalizedString();
    }

    else
    {
      [MEMORY[0x1E695CD58] localizedStringForKey:v10];
    }
    label = ;
  }

  [(UILabel *)self->_categoryLabel setText:label];

  v11 = [propertyCopy isEqualToString:*MEMORY[0x1E695C360]];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  [(UILabel *)self->_optionLabel setNumberOfLines:v11 ^ 1u];
  [(UILabel *)self->_optionLabel setLineBreakMode:v12];
  -[UIButton setEnabled:](self->_checkmarkButton, "setEnabled:", [propertyCopy isEqualToString:*v8] ^ 1);
  -[SFContactAutoFillTableViewCell setChecked:](self, "setChecked:", [valueCopy selected]);
  displayValue = [valueCopy displayValue];
  [(UILabel *)self->_optionLabel setText:displayValue];
}

- (void)setChecked:(BOOL)checked
{
  v22 = *MEMORY[0x1E69E9840];
  self->_checked = checked;
  [(SFContactAutoFillValue *)self->_value setSelected:?];
  [(UIButton *)self->_checkmarkButton setSelected:self->_checked];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  matches = [(SFContactAutoFillValue *)self->_value matches];
  firstObject = [matches firstObject];
  property = [firstObject property];
  v8 = [property isEqualToString:*MEMORY[0x1E69C8AD8]];

  if ((v8 & 1) == 0)
  {
    configuration = [(UIButton *)self->_checkmarkButton configuration];
    if (self->_checked)
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
      [configuration setImage:v10];

      v11 = MEMORY[0x1E69DCAD8];
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      v20 = systemWhiteColor;
      v21 = tintColor;
      v13 = MEMORY[0x1E695DEC8];
      v14 = &v20;
      v15 = 2;
    }

    else
    {
      v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
      [configuration setImage:v16];

      v11 = MEMORY[0x1E69DCAD8];
      systemWhiteColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v19 = systemWhiteColor;
      v13 = MEMORY[0x1E695DEC8];
      v14 = &v19;
      v15 = 1;
    }

    v17 = [v13 arrayWithObjects:v14 count:{v15, v19, v20, v21}];
    v18 = [v11 configurationWithPaletteColors:v17];
    [configuration setPreferredSymbolConfigurationForImage:v18];

    [(UIButton *)self->_checkmarkButton setConfiguration:configuration];
  }
}

@end