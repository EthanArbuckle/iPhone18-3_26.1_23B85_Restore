@interface BuddyExpressSetupFeatureCardPrimaryCell
- (BuddyExpressSetupFeatureCardPrimaryCell)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (UIImage)chevronImage;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)setChevronHidden:(BOOL)hidden;
- (void)setExpanded:(BOOL)expanded;
- (void)setNumberOfLinesForSubtitle:(int64_t)subtitle;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BuddyExpressSetupFeatureCardPrimaryCell

- (UIImage)chevronImage
{
  sub_1000282CC();
  selfCopy = self;
  [(BuddyExpressSetupFeatureCardPrimaryCell *)selfCopy isExpanded];
  v4 = static UIImage.disclosureChevronImage(expandedState:)();

  return v4;
}

- (BuddyExpressSetupFeatureCardPrimaryCell)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v78 = 0;
  objc_storeStrong(&v78, subtitle);
  v77 = 0;
  objc_storeStrong(&v77, icon);
  v7 = selfCopy;
  selfCopy = 0;
  v76.receiver = v7;
  v76.super_class = BuddyExpressSetupFeatureCardPrimaryCell;
  selfCopy = [(BuddyExpressSetupFeatureCardPrimaryCell *)&v76 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v8 = [UIImageView alloc];
    v9 = [v8 initWithImage:v77];
    v10 = *(selfCopy + 2);
    *(selfCopy + 2) = v9;

    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 2) setContentMode:1];
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v12 = *(selfCopy + 4);
    *(selfCopy + 4) = v11;

    [*(selfCopy + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    _titleFont = [selfCopy _titleFont];
    [*(selfCopy + 4) setFont:_titleFont];

    [*(selfCopy + 4) setText:location[0]];
    [*(selfCopy + 4) setNumberOfLines:0];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = *(selfCopy + 5);
    *(selfCopy + 5) = v14;

    [*(selfCopy + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIColor secondaryLabelColor];
    [*(selfCopy + 5) setTextColor:v16];

    _subtitleFont = [selfCopy _subtitleFont];
    [*(selfCopy + 5) setFont:_subtitleFont];

    [*(selfCopy + 5) setText:v78];
    v18 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v19 = *(selfCopy + 3);
    *(selfCopy + 3) = v18;

    [*(selfCopy + 3) setAxis:1];
    [*(selfCopy + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 3) addArrangedSubview:*(selfCopy + 4)];
    [*(selfCopy + 3) addArrangedSubview:*(selfCopy + 5)];
    v20 = [UIImageView alloc];
    chevronImage = [selfCopy chevronImage];
    v22 = [v20 initWithImage:chevronImage];
    v23 = *(selfCopy + 6);
    *(selfCopy + 6) = v22;

    [*(selfCopy + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 6) setContentMode:1];
    LODWORD(v24) = 1148846080;
    [*(selfCopy + 6) setContentHuggingPriority:0 forAxis:v24];
    v25 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v26 = *(selfCopy + 7);
    *(selfCopy + 7) = v25;

    [*(selfCopy + 7) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 7) setHidden:1];
    v27 = +[UIColor separatorColor];
    [*(selfCopy + 7) setBackgroundColor:v27];

    [selfCopy addSubview:*(selfCopy + 2)];
    [selfCopy addSubview:*(selfCopy + 3)];
    [selfCopy addSubview:*(selfCopy + 6)];
    [selfCopy addSubview:*(selfCopy + 7)];
    v66 = selfCopy;
    widthAnchor = [*(selfCopy + 2) widthAnchor];
    v74 = [widthAnchor constraintEqualToConstant:40.0];
    v81[0] = v74;
    heightAnchor = [*(selfCopy + 2) heightAnchor];
    v72 = [heightAnchor constraintEqualToConstant:40.0];
    v81[1] = v72;
    leadingAnchor = [*(selfCopy + 2) leadingAnchor];
    layoutMarginsGuide = [selfCopy layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v68 = [leadingAnchor constraintEqualToAnchor:?];
    v81[2] = v68;
    centerYAnchor = [*(selfCopy + 2) centerYAnchor];
    centerYAnchor2 = [selfCopy centerYAnchor];
    v64 = [centerYAnchor constraintEqualToAnchor:?];
    v81[3] = v64;
    leadingAnchor3 = [*(selfCopy + 3) leadingAnchor];
    trailingAnchor = [*(selfCopy + 2) trailingAnchor];
    v61 = [leadingAnchor3 constraintEqualToAnchor:14.0 constant:?];
    v81[4] = v61;
    trailingAnchor2 = [*(selfCopy + 3) trailingAnchor];
    leadingAnchor4 = [*(selfCopy + 6) leadingAnchor];
    v58 = [trailingAnchor2 constraintEqualToAnchor:?];
    v81[5] = v58;
    centerYAnchor3 = [*(selfCopy + 3) centerYAnchor];
    centerYAnchor4 = [selfCopy centerYAnchor];
    v55 = [centerYAnchor3 constraintEqualToAnchor:?];
    v81[6] = v55;
    topAnchor = [*(selfCopy + 3) topAnchor];
    topAnchor2 = [selfCopy topAnchor];
    v52 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
    v81[7] = v52;
    bottomAnchor = [selfCopy bottomAnchor];
    bottomAnchor2 = [*(selfCopy + 3) bottomAnchor];
    v49 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
    v81[8] = v49;
    centerYAnchor5 = [*(selfCopy + 6) centerYAnchor];
    centerYAnchor6 = [selfCopy centerYAnchor];
    v46 = [centerYAnchor5 constraintEqualToAnchor:?];
    v81[9] = v46;
    trailingAnchor3 = [*(selfCopy + 6) trailingAnchor];
    layoutMarginsGuide2 = [selfCopy layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:?];
    v81[10] = v42;
    heightAnchor2 = [*(selfCopy + 7) heightAnchor];
    v40 = [heightAnchor2 constraintEqualToConstant:1.0];
    v81[11] = v40;
    leadingAnchor5 = [*(selfCopy + 7) leadingAnchor];
    leadingAnchor6 = [*(selfCopy + 3) leadingAnchor];
    v30 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v81[12] = v30;
    trailingAnchor5 = [*(selfCopy + 7) trailingAnchor];
    trailingAnchor6 = [selfCopy trailingAnchor];
    v33 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v81[13] = v33;
    bottomAnchor3 = [*(selfCopy + 7) bottomAnchor];
    bottomAnchor4 = [selfCopy bottomAnchor];
    v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v81[14] = v36;
    v37 = [NSArray arrayWithObjects:v81 count:15];
    [v66 addConstraints:v37];
  }

  v38 = selfCopy;
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v38;
}

- (void)setExpanded:(BOOL)expanded
{
  self->_expanded = expanded;
  chevronImage = [(BuddyExpressSetupFeatureCardPrimaryCell *)self chevronImage];
  chevronImageView = [(BuddyExpressSetupFeatureCardPrimaryCell *)self chevronImageView];
  [(UIImageView *)chevronImageView setImage:chevronImage];

  separatorView = [(BuddyExpressSetupFeatureCardPrimaryCell *)self separatorView];
  [(UIView *)separatorView setHidden:!expanded];
}

- (void)setChevronHidden:(BOOL)hidden
{
  self->_chevronHidden = hidden;
  chevronImageView = [(BuddyExpressSetupFeatureCardPrimaryCell *)self chevronImageView];
  [(UIImageView *)chevronImageView setHidden:hidden];
}

- (void)setNumberOfLinesForSubtitle:(int64_t)subtitle
{
  subtitleLabel = [(BuddyExpressSetupFeatureCardPrimaryCell *)self subtitleLabel];
  [(UILabel *)subtitleLabel setNumberOfLines:subtitle];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v7.receiver = selfCopy;
  v7.super_class = BuddyExpressSetupFeatureCardPrimaryCell;
  [(BuddyExpressSetupFeatureCardPrimaryCell *)&v7 traitCollectionDidChange:location[0]];
  _titleFont = [(BuddyExpressSetupFeatureCardPrimaryCell *)selfCopy _titleFont];
  titleLabel = [(BuddyExpressSetupFeatureCardPrimaryCell *)selfCopy titleLabel];
  [(UILabel *)titleLabel setFont:_titleFont];

  _subtitleFont = [(BuddyExpressSetupFeatureCardPrimaryCell *)selfCopy _subtitleFont];
  subtitleLabel = [(BuddyExpressSetupFeatureCardPrimaryCell *)selfCopy subtitleLabel];
  [(UILabel *)subtitleLabel setFont:_subtitleFont];

  objc_storeStrong(location, 0);
}

- (id)_titleFont
{
  location[2] = self;
  location[1] = a2;
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  location[0] = [(UIFontDescriptor *)v2 fontDescriptorWithSymbolicTraits:2];

  v3 = [UIFont fontWithDescriptor:location[0] size:0.0];
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_subtitleFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline, a2, self];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end