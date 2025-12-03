@interface BYODDataCardPrimaryCell
- (BYODDataCardPrimaryCell)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)setHideChevron:(BOOL)chevron;
@end

@implementation BYODDataCardPrimaryCell

- (BYODDataCardPrimaryCell)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  v68.receiver = self;
  v68.super_class = BYODDataCardPrimaryCell;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(BYODDataCardPrimaryCell *)&v68 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v12 = [[UIImageView alloc] initWithImage:iconCopy];
    iconView = height->_iconView;
    height->_iconView = v12;

    [(UIView *)height->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_iconView setContentMode:1];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = height->_titleLabel;
    height->_titleLabel = v14;

    [(UILabel *)height->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _titleFont = [(BYODDataCardPrimaryCell *)height _titleFont];
    [(UILabel *)height->_titleLabel setFont:_titleFont];

    [(UILabel *)height->_titleLabel setText:titleCopy];
    [(UILabel *)height->_titleLabel setNumberOfLines:0];
    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = height->_subtitleLabel;
    height->_subtitleLabel = v17;

    [(UILabel *)height->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[UIColor secondaryLabelColor];
    [(UILabel *)height->_subtitleLabel setTextColor:v19];

    _subtitleFont = [(BYODDataCardPrimaryCell *)height _subtitleFont];
    [(UILabel *)height->_subtitleLabel setFont:_subtitleFont];

    [(UILabel *)height->_subtitleLabel setText:subtitleCopy];
    [(UILabel *)height->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)height->_subtitleLabel setNumberOfLines:10];
    v21 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    labelContainer = height->_labelContainer;
    height->_labelContainer = v21;

    [(UIStackView *)height->_labelContainer setAxis:1];
    [(UIStackView *)height->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)height->_labelContainer addArrangedSubview:height->_titleLabel];
    [(UIStackView *)height->_labelContainer addArrangedSubview:height->_subtitleLabel];
    v23 = [UIImageView alloc];
    v24 = [UIImage systemImageNamed:@"chevron.forward"];
    v25 = [v23 initWithImage:v24];
    chevronImageView = height->_chevronImageView;
    height->_chevronImageView = v25;

    v27 = +[UIColor secondaryLabelColor];
    v28 = [v27 colorWithAlphaComponent:0.3];
    [(UIImageView *)height->_chevronImageView setTintColor:v28];

    [(UIImageView *)height->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)height->_chevronImageView setContentMode:1];
    LODWORD(v29) = 1148846080;
    [(UIImageView *)height->_chevronImageView setContentHuggingPriority:0 forAxis:v29];
    [(BYODDataCardPrimaryCell *)height addSubview:height->_iconView];
    [(BYODDataCardPrimaryCell *)height addSubview:height->_labelContainer];
    [(BYODDataCardPrimaryCell *)height addSubview:height->_chevronImageView];
    widthAnchor = [(UIView *)height->_iconView widthAnchor];
    v56 = [widthAnchor constraintEqualToConstant:40.0];
    v69[0] = v56;
    heightAnchor = [(UIView *)height->_iconView heightAnchor];
    v54 = [heightAnchor constraintEqualToConstant:40.0];
    v69[1] = v54;
    leadingAnchor = [(UIView *)height->_iconView leadingAnchor];
    layoutMarginsGuide = [(BYODDataCardPrimaryCell *)height layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v51 = [leadingAnchor constraintEqualToAnchor:?];
    v69[2] = v51;
    centerYAnchor = [(UIView *)height->_iconView centerYAnchor];
    centerYAnchor2 = [(BYODDataCardPrimaryCell *)height centerYAnchor];
    v49 = [centerYAnchor constraintEqualToAnchor:?];
    v69[3] = v49;
    leadingAnchor3 = [(UIStackView *)height->_labelContainer leadingAnchor];
    trailingAnchor = [(UIView *)height->_iconView trailingAnchor];
    v47 = [leadingAnchor3 constraintEqualToAnchor:14.0 constant:?];
    v69[4] = v47;
    trailingAnchor2 = [(UIStackView *)height->_labelContainer trailingAnchor];
    leadingAnchor4 = [(UIImageView *)height->_chevronImageView leadingAnchor];
    v45 = [trailingAnchor2 constraintEqualToAnchor:?];
    v69[5] = v45;
    centerYAnchor3 = [(UIStackView *)height->_labelContainer centerYAnchor];
    centerYAnchor4 = [(BYODDataCardPrimaryCell *)height centerYAnchor];
    v43 = [centerYAnchor3 constraintEqualToAnchor:?];
    v69[6] = v43;
    topAnchor = [(UIStackView *)height->_labelContainer topAnchor];
    topAnchor2 = [(BYODDataCardPrimaryCell *)height topAnchor];
    v41 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:2.0 multiplier:?];
    v69[7] = v41;
    bottomAnchor = [(BYODDataCardPrimaryCell *)height bottomAnchor];
    bottomAnchor2 = [(UIStackView *)height->_labelContainer bottomAnchor];
    v30 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:2.0 multiplier:?];
    v69[8] = v30;
    centerYAnchor5 = [(UIImageView *)height->_chevronImageView centerYAnchor];
    centerYAnchor6 = [(BYODDataCardPrimaryCell *)height centerYAnchor];
    v33 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v69[9] = v33;
    trailingAnchor3 = [(UIImageView *)height->_chevronImageView trailingAnchor];
    layoutMarginsGuide2 = [(BYODDataCardPrimaryCell *)height layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v69[10] = v37;
    v38 = [NSArray arrayWithObjects:v69 count:11];
    [(BYODDataCardPrimaryCell *)height addConstraints:v38];
  }

  return height;
}

- (void)setHideChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  self->_hideChevron = chevron;
  chevronImageView = [(BYODDataCardPrimaryCell *)self chevronImageView];
  [chevronImageView setHidden:chevronCopy];
}

- (id)_titleFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [UIFont fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)_subtitleFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end