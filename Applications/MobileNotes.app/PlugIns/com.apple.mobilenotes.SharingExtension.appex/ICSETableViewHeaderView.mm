@interface ICSETableViewHeaderView
- (ICSETableViewHeaderView)initWithReuseIdentifier:(id)identifier;
- (NSArray)defaultConstraints;
- (NSArray)largerTextSizeConstraints;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)prepareForReuse;
- (void)setCountLabelText:(id)text;
- (void)setTypeLabelText:(id)text;
- (void)setupUI;
- (void)updateConstraints;
@end

@implementation ICSETableViewHeaderView

- (ICSETableViewHeaderView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = ICSETableViewHeaderView;
  v3 = [(ICSETableViewHeaderView *)&v6 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(ICSETableViewHeaderView *)v3 setupUI];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = ICSETableViewHeaderView;
  [(ICSETableViewHeaderView *)&v5 prepareForReuse];
  typeLabel = [(ICSETableViewHeaderView *)self typeLabel];
  [typeLabel setText:&stru_1000F6F48];

  countLabel = [(ICSETableViewHeaderView *)self countLabel];
  [countLabel setText:&stru_1000F6F48];
}

- (void)setTypeLabelText:(id)text
{
  textCopy = text;
  typeLabel = [(ICSETableViewHeaderView *)self typeLabel];
  [typeLabel setText:textCopy];
}

- (void)setCountLabelText:(id)text
{
  textCopy = text;
  countLabel = [(ICSETableViewHeaderView *)self countLabel];
  [countLabel setText:textCopy];
}

- (id)accessibilityLabel
{
  typeLabel = [(ICSETableViewHeaderView *)self typeLabel];
  text = [typeLabel text];

  return text;
}

- (id)accessibilityValue
{
  countLabel = [(ICSETableViewHeaderView *)self countLabel];
  text = [countLabel text];

  return text;
}

- (void)setupUI
{
  typeLabel = [(ICSETableViewHeaderView *)self typeLabel];
  if (!typeLabel || (v4 = typeLabel, [(ICSETableViewHeaderView *)self countLabel], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = objc_alloc_init(UILabel);
    [(ICSETableViewHeaderView *)self setTypeLabel:v6];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    ic_fontWithSingleLineA = [v7 ic_fontWithSingleLineA];
    typeLabel2 = [(ICSETableViewHeaderView *)self typeLabel];
    [typeLabel2 setFont:ic_fontWithSingleLineA];

    v10 = +[UIColor labelColor];
    countLabel = [(ICSETableViewHeaderView *)self countLabel];
    [countLabel setTextColor:v10];

    typeLabel3 = [(ICSETableViewHeaderView *)self typeLabel];
    [typeLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    typeLabel4 = [(ICSETableViewHeaderView *)self typeLabel];
    [(ICSETableViewHeaderView *)self addSubview:typeLabel4];

    v14 = objc_alloc_init(UILabel);
    [(ICSETableViewHeaderView *)self setCountLabel:v14];

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    ic_fontWithSingleLineA2 = [v15 ic_fontWithSingleLineA];
    countLabel2 = [(ICSETableViewHeaderView *)self countLabel];
    [countLabel2 setFont:ic_fontWithSingleLineA2];

    v18 = +[UIColor secondaryLabelColor];
    countLabel3 = [(ICSETableViewHeaderView *)self countLabel];
    [countLabel3 setTextColor:v18];

    countLabel4 = [(ICSETableViewHeaderView *)self countLabel];
    [countLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    countLabel5 = [(ICSETableViewHeaderView *)self countLabel];
    [(ICSETableViewHeaderView *)self addSubview:countLabel5];

    accessibilityTraits = [(ICSETableViewHeaderView *)self accessibilityTraits];
    [(ICSETableViewHeaderView *)self setAccessibilityTraits:UIAccessibilityTraitHeader | accessibilityTraits];
    defaultConstraints = [(ICSETableViewHeaderView *)self defaultConstraints];
    [NSLayoutConstraint activateConstraints:defaultConstraints];
  }
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    if (self->_defaultConstraints)
    {
      defaultConstraints = [(ICSETableViewHeaderView *)self defaultConstraints];
      [NSLayoutConstraint deactivateConstraints:defaultConstraints];
    }

    largerTextSizeConstraints = [(ICSETableViewHeaderView *)self largerTextSizeConstraints];
  }

  else
  {
    if (self->_largerTextSizeConstraints)
    {
      largerTextSizeConstraints2 = [(ICSETableViewHeaderView *)self largerTextSizeConstraints];
      [NSLayoutConstraint deactivateConstraints:largerTextSizeConstraints2];
    }

    largerTextSizeConstraints = [(ICSETableViewHeaderView *)self defaultConstraints];
  }

  v6 = largerTextSizeConstraints;
  [NSLayoutConstraint activateConstraints:largerTextSizeConstraints];

  v7.receiver = self;
  v7.super_class = ICSETableViewHeaderView;
  [(ICSETableViewHeaderView *)&v7 updateConstraints];
}

- (NSArray)defaultConstraints
{
  defaultConstraints = self->_defaultConstraints;
  if (!defaultConstraints)
  {
    countLabel = [(ICSETableViewHeaderView *)self countLabel];
    trailingAnchor = [countLabel trailingAnchor];
    layoutMarginsGuide = [(ICSETableViewHeaderView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    typeLabel = [(ICSETableViewHeaderView *)self typeLabel];
    leadingAnchor = [typeLabel leadingAnchor];
    layoutMarginsGuide2 = [(ICSETableViewHeaderView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    countLabel2 = [(ICSETableViewHeaderView *)self countLabel];
    leadingAnchor3 = [countLabel2 leadingAnchor];
    typeLabel2 = [(ICSETableViewHeaderView *)self typeLabel];
    trailingAnchor3 = [typeLabel2 trailingAnchor];
    v18 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:8.0];

    typeLabel3 = [(ICSETableViewHeaderView *)self typeLabel];
    centerYAnchor = [typeLabel3 centerYAnchor];
    centerYAnchor2 = [(ICSETableViewHeaderView *)self centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    countLabel3 = [(ICSETableViewHeaderView *)self countLabel];
    centerYAnchor3 = [countLabel3 centerYAnchor];
    centerYAnchor4 = [(ICSETableViewHeaderView *)self centerYAnchor];
    v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

    v30[0] = v8;
    v30[1] = v13;
    v30[2] = v18;
    v30[3] = v22;
    v30[4] = v26;
    v27 = [NSArray arrayWithObjects:v30 count:5];
    v28 = self->_defaultConstraints;
    self->_defaultConstraints = v27;

    defaultConstraints = self->_defaultConstraints;
  }

  return defaultConstraints;
}

- (NSArray)largerTextSizeConstraints
{
  largerTextSizeConstraints = self->_largerTextSizeConstraints;
  if (!largerTextSizeConstraints)
  {
    typeLabel = [(ICSETableViewHeaderView *)self typeLabel];
    leadingAnchor = [typeLabel leadingAnchor];
    layoutMarginsGuide = [(ICSETableViewHeaderView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    typeLabel2 = [(ICSETableViewHeaderView *)self typeLabel];
    topAnchor = [typeLabel2 topAnchor];
    topAnchor2 = [(ICSETableViewHeaderView *)self topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];

    typeLabel3 = [(ICSETableViewHeaderView *)self typeLabel];
    trailingAnchor = [typeLabel3 trailingAnchor];
    layoutMarginsGuide2 = [(ICSETableViewHeaderView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    countLabel = [(ICSETableViewHeaderView *)self countLabel];
    leadingAnchor3 = [countLabel leadingAnchor];
    layoutMarginsGuide3 = [(ICSETableViewHeaderView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

    countLabel2 = [(ICSETableViewHeaderView *)self countLabel];
    bottomAnchor = [countLabel2 bottomAnchor];
    bottomAnchor2 = [(ICSETableViewHeaderView *)self bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    countLabel3 = [(ICSETableViewHeaderView *)self countLabel];
    trailingAnchor3 = [countLabel3 trailingAnchor];
    layoutMarginsGuide4 = [(ICSETableViewHeaderView *)self layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

    countLabel4 = [(ICSETableViewHeaderView *)self countLabel];
    topAnchor3 = [countLabel4 topAnchor];
    typeLabel4 = [(ICSETableViewHeaderView *)self typeLabel];
    bottomAnchor3 = [typeLabel4 bottomAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];

    v40[0] = v39;
    v40[1] = v38;
    v40[2] = v15;
    v40[3] = v20;
    v40[4] = v24;
    v40[5] = v29;
    v40[6] = v34;
    v35 = [NSArray arrayWithObjects:v40 count:7];
    v36 = self->_largerTextSizeConstraints;
    self->_largerTextSizeConstraints = v35;

    largerTextSizeConstraints = self->_largerTextSizeConstraints;
  }

  return largerTextSizeConstraints;
}

@end