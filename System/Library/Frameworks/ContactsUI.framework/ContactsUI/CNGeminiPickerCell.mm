@interface CNGeminiPickerCell
- (CNGeminiPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setText:(id)text detailText:(id)detailText badgeText:(id)badgeText;
@end

@implementation CNGeminiPickerCell

- (void)setText:(id)text detailText:(id)detailText badgeText:(id)badgeText
{
  detailTextCopy = detailText;
  badgeTextCopy = badgeText;
  textCopy = text;
  badgeView = [(CNGeminiPickerCell *)self badgeView];
  [badgeView setText:badgeTextCopy];

  labelLabel = [(CNGeminiPickerCell *)self labelLabel];
  [labelLabel setText:textCopy];

  centeredBadgeView = [(CNGeminiPickerCell *)self centeredBadgeView];
  [centeredBadgeView setText:badgeTextCopy];

  centeredNameLabel = [(CNGeminiPickerCell *)self centeredNameLabel];
  [centeredNameLabel setText:textCopy];

  v14 = [(__CFString *)detailTextCopy length];
  badgeView2 = [(CNGeminiPickerCell *)self badgeView];
  v16 = badgeView2;
  if (v14)
  {
    [badgeView2 setHidden:0];

    labelLabel2 = [(CNGeminiPickerCell *)self labelLabel];
    [labelLabel2 setHidden:0];

    valueLabel = [(CNGeminiPickerCell *)self valueLabel];
    [valueLabel setHidden:0];

    centeredBadgeView2 = [(CNGeminiPickerCell *)self centeredBadgeView];
    [centeredBadgeView2 setHidden:1];

    centeredNameLabel2 = [(CNGeminiPickerCell *)self centeredNameLabel];
    [centeredNameLabel2 setHidden:1];

    valueLabel2 = [(CNGeminiPickerCell *)self valueLabel];
    v22 = valueLabel2;
    v23 = detailTextCopy;
  }

  else
  {
    [badgeView2 setHidden:1];

    labelLabel3 = [(CNGeminiPickerCell *)self labelLabel];
    [labelLabel3 setHidden:1];

    valueLabel3 = [(CNGeminiPickerCell *)self valueLabel];
    [valueLabel3 setHidden:1];

    centeredBadgeView3 = [(CNGeminiPickerCell *)self centeredBadgeView];
    [centeredBadgeView3 setHidden:0];

    centeredNameLabel3 = [(CNGeminiPickerCell *)self centeredNameLabel];
    [centeredNameLabel3 setHidden:0];

    valueLabel2 = [(CNGeminiPickerCell *)self valueLabel];
    v22 = valueLabel2;
    v23 = @"+1 (123) 456-7890";
  }

  [valueLabel2 setText:v23];
}

- (CNGeminiPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v103[3] = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = CNGeminiPickerCell;
  v4 = [(CNGeminiPickerCell *)&v101 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [CNGeminiBadge geminiBadgeWithText:@"-"];
    badgeView = v4->_badgeView;
    v4->_badgeView = v5;

    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    v100 = [defaultMetrics scaledFontForFont:v8];

    v99 = +[CNUIColorRepository monogrammerBackTextWhiteColor];
    v98 = +[CNUIColorRepository contactCardStaticIdentityBadgeGlyphColor];
    v9 = *MEMORY[0x1E69DB650];
    v102[0] = *MEMORY[0x1E69DB648];
    v102[1] = v9;
    v103[0] = v100;
    v103[1] = v99;
    v102[2] = *MEMORY[0x1E69DB600];
    v103[2] = v98;
    v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
    [(CNGeminiBadge *)v4->_badgeView setViewAttributes:v97];
    contentView = [(CNGeminiPickerCell *)v4 contentView];
    badgeView = [(CNGeminiPickerCell *)v4 badgeView];
    [contentView addSubview:badgeView];

    badgeView2 = [(CNGeminiPickerCell *)v4 badgeView];
    leadingAnchor = [badgeView2 leadingAnchor];
    contentView2 = [(CNGeminiPickerCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v17 setActive:1];

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelLabel = v4->_labelLabel;
    v4->_labelLabel = v18;

    v96 = *MEMORY[0x1E69DDCF8];
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
    [(UILabel *)v4->_labelLabel setFont:v20];

    [(UILabel *)v4->_labelLabel setNumberOfLines:0];
    [(UILabel *)v4->_labelLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(CNGeminiPickerCell *)v4 contentView];
    [contentView3 addSubview:v4->_labelLabel];

    firstBaselineAnchor = [(UILabel *)v4->_labelLabel firstBaselineAnchor];
    contentView4 = [(CNGeminiPickerCell *)v4 contentView];
    topAnchor = [contentView4 topAnchor];
    v25 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    [v25 setActive:1];

    leadingAnchor3 = [(UILabel *)v4->_labelLabel leadingAnchor];
    badgeView3 = [(CNGeminiPickerCell *)v4 badgeView];
    trailingAnchor = [badgeView3 trailingAnchor];
    defaultMetrics2 = [MEMORY[0x1E69DCA40] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:4.0];
    v30 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    [v30 setActive:1];

    badgeView4 = [(CNGeminiPickerCell *)v4 badgeView];
    centerYAnchor = [badgeView4 centerYAnchor];
    centerYAnchor2 = [(UILabel *)v4->_labelLabel centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v34 setActive:1];

    badgeView5 = [(CNGeminiPickerCell *)v4 badgeView];
    [badgeView5 frame];
    v37 = v36;
    badgeView6 = [(CNGeminiPickerCell *)v4 badgeView];
    [badgeView6 frame];
    v40 = v39;
    badgeView7 = [(CNGeminiPickerCell *)v4 badgeView];
    [badgeView7 intrinsicContentSize];
    v43 = v42;
    labelLabel = [(CNGeminiPickerCell *)v4 labelLabel];
    font = [labelLabel font];
    [font capHeight];
    v47 = v46;
    badgeView8 = [(CNGeminiPickerCell *)v4 badgeView];
    [badgeView8 setFrame:{v37, v40, v43, v47}];

    v49 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v49;

    v51 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v4->_valueLabel setFont:v51];

    [(UILabel *)v4->_valueLabel setNumberOfLines:0];
    [(UILabel *)v4->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v4->_valueLabel setTextColor:systemGrayColor];

    contentView5 = [(CNGeminiPickerCell *)v4 contentView];
    [contentView5 addSubview:v4->_valueLabel];

    firstBaselineAnchor2 = [(UILabel *)v4->_valueLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_labelLabel lastBaselineAnchor];
    v56 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v56 setActive:1];

    leadingAnchor4 = [(UILabel *)v4->_valueLabel leadingAnchor];
    badgeView9 = [(CNGeminiPickerCell *)v4 badgeView];
    leadingAnchor5 = [badgeView9 leadingAnchor];
    v60 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v60 setActive:1];

    trailingAnchor2 = [(UILabel *)v4->_valueLabel trailingAnchor];
    contentView6 = [(CNGeminiPickerCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v65 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    [v65 setActive:1];

    contentView7 = [(CNGeminiPickerCell *)v4 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    lastBaselineAnchor2 = [(UILabel *)v4->_valueLabel lastBaselineAnchor];
    v69 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
    [v69 setActive:1];

    v70 = [CNGeminiBadge geminiBadgeWithText:@"-"];
    centeredBadgeView = v4->_centeredBadgeView;
    v4->_centeredBadgeView = v70;

    [(CNGeminiBadge *)v4->_centeredBadgeView setViewAttributes:v97];
    contentView8 = [(CNGeminiPickerCell *)v4 contentView];
    centeredBadgeView = [(CNGeminiPickerCell *)v4 centeredBadgeView];
    [contentView8 addSubview:centeredBadgeView];

    centeredBadgeView2 = [(CNGeminiPickerCell *)v4 centeredBadgeView];
    leadingAnchor6 = [centeredBadgeView2 leadingAnchor];
    contentView9 = [(CNGeminiPickerCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
    v79 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v79 setActive:1];

    v80 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    centeredNameLabel = v4->_centeredNameLabel;
    v4->_centeredNameLabel = v80;

    v82 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v96];
    [(UILabel *)v4->_centeredNameLabel setFont:v82];

    [(UILabel *)v4->_centeredNameLabel setNumberOfLines:0];
    [(UILabel *)v4->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView10 = [(CNGeminiPickerCell *)v4 contentView];
    [contentView10 addSubview:v4->_centeredNameLabel];

    centerYAnchor3 = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    contentView11 = [(CNGeminiPickerCell *)v4 contentView];
    centerYAnchor4 = [contentView11 centerYAnchor];
    v87 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v87 setActive:1];

    leadingAnchor8 = [(UILabel *)v4->_centeredNameLabel leadingAnchor];
    trailingAnchor4 = [(CNGeminiBadge *)v4->_centeredBadgeView trailingAnchor];
    defaultMetrics3 = [MEMORY[0x1E69DCA40] defaultMetrics];
    [defaultMetrics3 scaledValueForValue:4.0];
    v91 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:?];
    [v91 setActive:1];

    centerYAnchor5 = [(CNGeminiBadge *)v4->_centeredBadgeView centerYAnchor];
    centerYAnchor6 = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    v94 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v94 setActive:1];
  }

  return v4;
}

@end