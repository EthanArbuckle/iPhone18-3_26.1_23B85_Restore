@interface BuddyExpressSetupFeatureCardCell
- (BuddyExpressSetupFeatureCardCell)initWithTitle:(id)title subtitle:(id)subtitle state:(id)state accessoryView:(id)view;
- (id)_bodyFont;
- (id)_stateFont;
- (id)_titleFont;
- (int64_t)_stateStackViewAxis;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BuddyExpressSetupFeatureCardCell

- (BuddyExpressSetupFeatureCardCell)initWithTitle:(id)title subtitle:(id)subtitle state:(id)state accessoryView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v75 = 0;
  objc_storeStrong(&v75, subtitle);
  v74 = 0;
  objc_storeStrong(&v74, state);
  obj = 0;
  objc_storeStrong(&obj, view);
  v9 = selfCopy;
  selfCopy = 0;
  v72.receiver = v9;
  v72.super_class = BuddyExpressSetupFeatureCardCell;
  selfCopy = [(BuddyExpressSetupFeatureCardCell *)&v72 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, obj);
    [*(selfCopy + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v11 = *(selfCopy + 3);
    *(selfCopy + 3) = v10;

    [*(selfCopy + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    _titleFont = [selfCopy _titleFont];
    [*(selfCopy + 3) setFont:_titleFont];

    [*(selfCopy + 3) setText:location[0]];
    [*(selfCopy + 3) setNumberOfLines:0];
    if (v74)
    {
      v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v14 = *(selfCopy + 4);
      *(selfCopy + 4) = v13;

      [*(selfCopy + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = +[UIColor secondaryLabelColor];
      [*(selfCopy + 4) setTextColor:v15];

      _stateFont = [selfCopy _stateFont];
      [*(selfCopy + 4) setFont:_stateFont];

      [*(selfCopy + 4) setText:v74];
      LODWORD(v17) = 1148846080;
      [*(selfCopy + 4) setContentCompressionResistancePriority:1 forAxis:v17];
      LODWORD(v18) = 1148846080;
      [*(selfCopy + 4) setContentCompressionResistancePriority:0 forAxis:v18];
      LODWORD(v19) = 1148846080;
      [*(selfCopy + 4) setContentHuggingPriority:0 forAxis:v19];
      LODWORD(v20) = 1148846080;
      [*(selfCopy + 4) setContentHuggingPriority:1 forAxis:v20];
      LODWORD(v21) = 1148846080;
      [*(selfCopy + 3) setContentHuggingPriority:1 forAxis:v21];
    }

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v23 = *(selfCopy + 5);
    *(selfCopy + 5) = v22;

    [*(selfCopy + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = +[UIColor secondaryLabelColor];
    [*(selfCopy + 5) setTextColor:v24];

    _bodyFont = [selfCopy _bodyFont];
    [*(selfCopy + 5) setFont:_bodyFont];

    [*(selfCopy + 5) setText:v75];
    [*(selfCopy + 5) setNumberOfLines:0];
    v26 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v27 = *(selfCopy + 2);
    *(selfCopy + 2) = v26;

    [*(selfCopy + 2) setAxis:1];
    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    if (*(selfCopy + 4))
    {
      v28 = [UIStackView alloc];
      v81[0] = *(selfCopy + 3);
      v81[1] = *(selfCopy + 4);
      v29 = [NSArray arrayWithObjects:v81 count:2];
      v30 = [v28 initWithArrangedSubviews:v29];
      v31 = *(selfCopy + 6);
      *(selfCopy + 6) = v30;

      [*(selfCopy + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(selfCopy + 6) setDistribution:0];
      [*(selfCopy + 6) setAlignment:1];
      _stateStackViewAxis = [selfCopy _stateStackViewAxis];
      [*(selfCopy + 6) setAxis:_stateStackViewAxis];
      [*(selfCopy + 2) addArrangedSubview:*(selfCopy + 6)];
      widthAnchor = [*(selfCopy + 4) widthAnchor];
      widthAnchor2 = [*(selfCopy + 3) widthAnchor];
      v35 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.45];
      v80 = v35;
      v36 = [NSArray arrayWithObjects:&v80 count:1];
      [NSLayoutConstraint activateConstraints:v36];
    }

    else
    {
      [*(selfCopy + 2) addArrangedSubview:*(selfCopy + 3)];
    }

    [*(selfCopy + 2) addArrangedSubview:*(selfCopy + 5)];
    [selfCopy addSubview:*(selfCopy + 2)];
    if (*(selfCopy + 1))
    {
      [selfCopy addSubview:*(selfCopy + 1)];
      v69 = selfCopy;
      widthAnchor3 = [*(selfCopy + 1) widthAnchor];
      v70 = [widthAnchor3 constraintEqualToConstant:29.0];
      v79[0] = v70;
      heightAnchor = [*(selfCopy + 1) heightAnchor];
      v65 = [heightAnchor constraintEqualToConstant:29.0];
      v79[1] = v65;
      leadingAnchor = [*(selfCopy + 1) leadingAnchor];
      leadingAnchor2 = [selfCopy leadingAnchor];
      v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
      v79[2] = v39;
      topAnchor = [*(selfCopy + 1) topAnchor];
      topAnchor2 = [selfCopy topAnchor];
      v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v79[3] = v42;
      leadingAnchor3 = [*(selfCopy + 2) leadingAnchor];
      trailingAnchor = [*(selfCopy + 1) trailingAnchor];
      v45 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:19.0];
      v79[4] = v45;
      v46 = [NSArray arrayWithObjects:v79 count:5];
      [v69 addConstraints:v46];
    }

    else
    {
      v47 = selfCopy;
      leadingAnchor4 = [*(selfCopy + 2) leadingAnchor];
      leadingAnchor5 = [selfCopy leadingAnchor];
      v50 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:54.0];
      [v47 addConstraint:v50];
    }

    v63 = selfCopy;
    trailingAnchor2 = [*(selfCopy + 2) trailingAnchor];
    trailingAnchor3 = [selfCopy trailingAnchor];
    v64 = [trailingAnchor2 constraintEqualToAnchor:?];
    v78[0] = v64;
    centerYAnchor = [*(selfCopy + 2) centerYAnchor];
    centerYAnchor2 = [selfCopy centerYAnchor];
    v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v78[1] = v53;
    topAnchor3 = [*(selfCopy + 2) topAnchor];
    topAnchor4 = [selfCopy topAnchor];
    v56 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v78[2] = v56;
    bottomAnchor = [*(selfCopy + 2) bottomAnchor];
    bottomAnchor2 = [selfCopy bottomAnchor];
    v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v78[3] = v59;
    v60 = [NSArray arrayWithObjects:v78 count:4];
    [v63 addConstraints:v60];
  }

  v61 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v61;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v10.receiver = selfCopy;
  v10.super_class = BuddyExpressSetupFeatureCardCell;
  [(BuddyExpressSetupFeatureCardCell *)&v10 traitCollectionDidChange:location[0]];
  _titleFont = [(BuddyExpressSetupFeatureCardCell *)selfCopy _titleFont];
  titleLabel = [(BuddyExpressSetupFeatureCardCell *)selfCopy titleLabel];
  [(UILabel *)titleLabel setFont:_titleFont];

  _bodyFont = [(BuddyExpressSetupFeatureCardCell *)selfCopy _bodyFont];
  stateLabel = [(BuddyExpressSetupFeatureCardCell *)selfCopy stateLabel];
  [(UILabel *)stateLabel setFont:_bodyFont];

  _bodyFont2 = [(BuddyExpressSetupFeatureCardCell *)selfCopy _bodyFont];
  subtitleLabel = [(BuddyExpressSetupFeatureCardCell *)selfCopy subtitleLabel];
  [(UILabel *)subtitleLabel setFont:_bodyFont2];

  _stateStackViewAxis = [(BuddyExpressSetupFeatureCardCell *)selfCopy _stateStackViewAxis];
  [(UIStackView *)selfCopy->_stateStackView setAxis:_stateStackViewAxis];
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

- (id)_stateFont
{
  location[2] = self;
  location[1] = a2;
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  location[0] = [(UIFontDescriptor *)v2 fontDescriptorWithSymbolicTraits:2];

  v3 = [UIFont fontWithDescriptor:location[0] size:0.0];
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_bodyFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline, a2, self];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (int64_t)_stateStackViewAxis
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [(UIApplication *)v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

@end