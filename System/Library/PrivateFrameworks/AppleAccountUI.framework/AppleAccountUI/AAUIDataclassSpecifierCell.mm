@interface AAUIDataclassSpecifierCell
+ (_NSRange)_rangeForLinkFromSpecifier:(id)specifier;
+ (id)_attributedStringFromSpecifier:(id)specifier;
+ (id)_subTitleAttributes;
- (AAUIDataclassSpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUIDataclassSpecifierCell

- (AAUIDataclassSpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AAUIDataclassSpecifierCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AAUIDataclassSpecifierCell *)v4 setSelectionStyle:0];
    [(AAUIDataclassSpecifierCell *)v5 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  v98[12] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(AAUIDataclassSpecifierCell *)self setHeaderImageView:v3];

  headerImageView = [(AAUIDataclassSpecifierCell *)self headerImageView];
  [headerImageView setContentMode:1];

  headerImageView2 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  [headerImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  headerImageView3 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  LODWORD(v7) = 1132068864;
  [headerImageView3 setContentCompressionResistancePriority:1 forAxis:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(AAUIDataclassSpecifierCell *)self setHeaderTitleLabel:v8];

  headerTitleLabel = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  headerTitleLabel2 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v11 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
  [headerTitleLabel2 setFont:v11];

  headerTitleLabel3 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [headerTitleLabel3 setTextColor:labelColor];

  headerTitleLabel4 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [headerTitleLabel4 setNumberOfLines:5];

  headerTitleLabel5 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [headerTitleLabel5 setTextAlignment:1];

  headerTitleLabel6 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  LODWORD(v17) = 1148846080;
  [headerTitleLabel6 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(AAUIDataclassSpecifierCell *)self setHeaderSubTitleTextView:v18];

  headerSubTitleTextView = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[AAUIDataclassSpecifierCell _subTitleFont];
  headerSubTitleTextView2 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView2 setFont:v20];

  v22 = *MEMORY[0x1E69DDCE0];
  v23 = *(MEMORY[0x1E69DDCE0] + 8);
  v24 = *(MEMORY[0x1E69DDCE0] + 16);
  v25 = *(MEMORY[0x1E69DDCE0] + 24);
  headerSubTitleTextView3 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView3 setLayoutMargins:{v22, v23, v24, v25}];

  headerSubTitleTextView4 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView4 setTextContainerInset:{v22, v23, v24, v25}];

  headerSubTitleTextView5 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView5 setTextAlignment:1];

  headerSubTitleTextView6 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView6 setScrollEnabled:0];

  headerSubTitleTextView7 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView7 setSelectable:1];

  headerSubTitleTextView8 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView8 setEditable:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  headerSubTitleTextView9 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView9 setBackgroundColor:clearColor];

  contentView = [(AAUIDataclassSpecifierCell *)self contentView];
  headerImageView4 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  [contentView addSubview:headerImageView4];

  contentView2 = [(AAUIDataclassSpecifierCell *)self contentView];
  headerTitleLabel7 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [contentView2 addSubview:headerTitleLabel7];

  contentView3 = [(AAUIDataclassSpecifierCell *)self contentView];
  headerSubTitleTextView10 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [contentView3 addSubview:headerSubTitleTextView10];

  v75 = MEMORY[0x1E696ACD8];
  headerImageView5 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  heightAnchor = [headerImageView5 heightAnchor];
  v95 = [heightAnchor constraintEqualToConstant:56.0];
  v98[0] = v95;
  headerImageView6 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  widthAnchor = [headerImageView6 widthAnchor];
  v92 = [widthAnchor constraintEqualToConstant:56.0];
  v98[1] = v92;
  headerImageView7 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  leadingAnchor = [headerImageView7 leadingAnchor];
  contentView4 = [(AAUIDataclassSpecifierCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v87 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:24.0];
  v98[2] = v87;
  headerImageView8 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  centerXAnchor = [headerImageView8 centerXAnchor];
  contentView5 = [(AAUIDataclassSpecifierCell *)self contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v82 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v98[3] = v82;
  headerImageView9 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  topAnchor = [headerImageView9 topAnchor];
  contentView6 = [(AAUIDataclassSpecifierCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v77 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
  v98[4] = v77;
  headerImageView10 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  bottomAnchor = [headerImageView10 bottomAnchor];
  headerTitleLabel8 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  topAnchor3 = [headerTitleLabel8 topAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-16.0];
  v98[5] = v71;
  headerTitleLabel9 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  leadingAnchor3 = [headerTitleLabel9 leadingAnchor];
  contentView7 = [(AAUIDataclassSpecifierCell *)self contentView];
  leadingAnchor4 = [contentView7 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:24.0];
  v98[6] = v66;
  headerTitleLabel10 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  centerXAnchor3 = [headerTitleLabel10 centerXAnchor];
  contentView8 = [(AAUIDataclassSpecifierCell *)self contentView];
  centerXAnchor4 = [contentView8 centerXAnchor];
  v61 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v98[7] = v61;
  headerTitleLabel11 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  bottomAnchor2 = [headerTitleLabel11 bottomAnchor];
  headerSubTitleTextView11 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  topAnchor4 = [headerSubTitleTextView11 topAnchor];
  v56 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-8.0];
  v98[8] = v56;
  headerSubTitleTextView12 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  leadingAnchor5 = [headerSubTitleTextView12 leadingAnchor];
  contentView9 = [(AAUIDataclassSpecifierCell *)self contentView];
  leadingAnchor6 = [contentView9 leadingAnchor];
  v51 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:24.0];
  v98[9] = v51;
  headerSubTitleTextView13 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  centerXAnchor5 = [headerSubTitleTextView13 centerXAnchor];
  contentView10 = [(AAUIDataclassSpecifierCell *)self contentView];
  centerXAnchor6 = [contentView10 centerXAnchor];
  v43 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v98[10] = v43;
  headerSubTitleTextView14 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  bottomAnchor3 = [headerSubTitleTextView14 bottomAnchor];
  contentView11 = [(AAUIDataclassSpecifierCell *)self contentView];
  bottomAnchor4 = [contentView11 bottomAnchor];
  v48 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
  v98[11] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:12];
  [v75 activateConstraints:v49];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = AAUIDataclassSpecifierCell;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:&stru_1F447F790];

  imageView = [(AAUIDataclassSpecifierCell *)self imageView];
  [imageView setImage:0];

  headerImageView = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x1E69C5920]];
  [headerImageView setImage:v8];

  headerTitleLabel = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A8]];
  [headerTitleLabel setText:v10];

  v11 = [AAUIDataclassSpecifierCell _attributedStringFromSpecifier:specifierCopy];
  headerSubTitleTextView = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  v13 = headerSubTitleTextView;
  if (v11)
  {
    [headerSubTitleTextView setAttributedText:v11];
  }

  else
  {
    v14 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A0]];
    [v13 setText:v14];
  }

  [(AAUIDataclassSpecifierCell *)self setNeedsLayout];
}

+ (id)_subTitleAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v3 setAlignment:1];
  v7[0] = *MEMORY[0x1E69DB648];
  _subTitleFont = [self _subTitleFont];
  v7[1] = *MEMORY[0x1E69DB688];
  v8[0] = _subTitleFont;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (_NSRange)_rangeForLinkFromSpecifier:(id)specifier
{
  v3 = *MEMORY[0x1E69C59A0];
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:v3];
  v6 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v7 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = [v5 componentsSeparatedByString:@"%@"];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v10 = [v13 length];
      v11 = [v7 length];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v14 = v10;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (id)_attributedStringFromSpecifier:(id)specifier
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69C59A0];
  specifierCopy = specifier;
  v6 = [specifierCopy objectForKeyedSubscript:v4];
  v7 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v8 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 componentsSeparatedByString:@"%@"];
    if ([v12 count] == 2)
    {
      v25 = [v12 objectAtIndexedSubscript:0];
      v23 = [v12 objectAtIndexedSubscript:1];
      v28 = *MEMORY[0x1E69DB650];
      v13 = v28;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v29[0] = labelColor;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

      v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v25 attributes:v24];
      v26[0] = v13;
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v27[0] = systemBlueColor;
      v26[1] = *MEMORY[0x1E69DB670];
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      v27[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v18];
      [v15 appendAttributedString:v19];
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23];
      [v15 appendAttributedString:v20];
      _subTitleAttributes = [self _subTitleAttributes];
      [v15 addAttributes:_subTitleAttributes range:{0, objc_msgSend(v15, "length")}];

      v11 = [v15 copy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end