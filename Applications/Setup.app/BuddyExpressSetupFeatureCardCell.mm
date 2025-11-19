@interface BuddyExpressSetupFeatureCardCell
- (BuddyExpressSetupFeatureCardCell)initWithTitle:(id)a3 subtitle:(id)a4 state:(id)a5 accessoryView:(id)a6;
- (id)_bodyFont;
- (id)_stateFont;
- (id)_titleFont;
- (int64_t)_stateStackViewAxis;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BuddyExpressSetupFeatureCardCell

- (BuddyExpressSetupFeatureCardCell)initWithTitle:(id)a3 subtitle:(id)a4 state:(id)a5 accessoryView:(id)a6
{
  v77 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v75 = 0;
  objc_storeStrong(&v75, a4);
  v74 = 0;
  objc_storeStrong(&v74, a5);
  obj = 0;
  objc_storeStrong(&obj, a6);
  v9 = v77;
  v77 = 0;
  v72.receiver = v9;
  v72.super_class = BuddyExpressSetupFeatureCardCell;
  v77 = [(BuddyExpressSetupFeatureCardCell *)&v72 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&v77, v77);
  if (v77)
  {
    objc_storeStrong(v77 + 1, obj);
    [*(v77 + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v11 = *(v77 + 3);
    *(v77 + 3) = v10;

    [*(v77 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v77 _titleFont];
    [*(v77 + 3) setFont:v12];

    [*(v77 + 3) setText:location[0]];
    [*(v77 + 3) setNumberOfLines:0];
    if (v74)
    {
      v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v14 = *(v77 + 4);
      *(v77 + 4) = v13;

      [*(v77 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = +[UIColor secondaryLabelColor];
      [*(v77 + 4) setTextColor:v15];

      v16 = [v77 _stateFont];
      [*(v77 + 4) setFont:v16];

      [*(v77 + 4) setText:v74];
      LODWORD(v17) = 1148846080;
      [*(v77 + 4) setContentCompressionResistancePriority:1 forAxis:v17];
      LODWORD(v18) = 1148846080;
      [*(v77 + 4) setContentCompressionResistancePriority:0 forAxis:v18];
      LODWORD(v19) = 1148846080;
      [*(v77 + 4) setContentHuggingPriority:0 forAxis:v19];
      LODWORD(v20) = 1148846080;
      [*(v77 + 4) setContentHuggingPriority:1 forAxis:v20];
      LODWORD(v21) = 1148846080;
      [*(v77 + 3) setContentHuggingPriority:1 forAxis:v21];
    }

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v23 = *(v77 + 5);
    *(v77 + 5) = v22;

    [*(v77 + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = +[UIColor secondaryLabelColor];
    [*(v77 + 5) setTextColor:v24];

    v25 = [v77 _bodyFont];
    [*(v77 + 5) setFont:v25];

    [*(v77 + 5) setText:v75];
    [*(v77 + 5) setNumberOfLines:0];
    v26 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v27 = *(v77 + 2);
    *(v77 + 2) = v26;

    [*(v77 + 2) setAxis:1];
    [*(v77 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    if (*(v77 + 4))
    {
      v28 = [UIStackView alloc];
      v81[0] = *(v77 + 3);
      v81[1] = *(v77 + 4);
      v29 = [NSArray arrayWithObjects:v81 count:2];
      v30 = [v28 initWithArrangedSubviews:v29];
      v31 = *(v77 + 6);
      *(v77 + 6) = v30;

      [*(v77 + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(v77 + 6) setDistribution:0];
      [*(v77 + 6) setAlignment:1];
      v32 = [v77 _stateStackViewAxis];
      [*(v77 + 6) setAxis:v32];
      [*(v77 + 2) addArrangedSubview:*(v77 + 6)];
      v33 = [*(v77 + 4) widthAnchor];
      v34 = [*(v77 + 3) widthAnchor];
      v35 = [v33 constraintLessThanOrEqualToAnchor:v34 multiplier:0.45];
      v80 = v35;
      v36 = [NSArray arrayWithObjects:&v80 count:1];
      [NSLayoutConstraint activateConstraints:v36];
    }

    else
    {
      [*(v77 + 2) addArrangedSubview:*(v77 + 3)];
    }

    [*(v77 + 2) addArrangedSubview:*(v77 + 5)];
    [v77 addSubview:*(v77 + 2)];
    if (*(v77 + 1))
    {
      [v77 addSubview:*(v77 + 1)];
      v69 = v77;
      v71 = [*(v77 + 1) widthAnchor];
      v70 = [v71 constraintEqualToConstant:29.0];
      v79[0] = v70;
      v68 = [*(v77 + 1) heightAnchor];
      v65 = [v68 constraintEqualToConstant:29.0];
      v79[1] = v65;
      v37 = [*(v77 + 1) leadingAnchor];
      v38 = [v77 leadingAnchor];
      v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];
      v79[2] = v39;
      v40 = [*(v77 + 1) topAnchor];
      v41 = [v77 topAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];
      v79[3] = v42;
      v43 = [*(v77 + 2) leadingAnchor];
      v44 = [*(v77 + 1) trailingAnchor];
      v45 = [v43 constraintEqualToAnchor:v44 constant:19.0];
      v79[4] = v45;
      v46 = [NSArray arrayWithObjects:v79 count:5];
      [v69 addConstraints:v46];
    }

    else
    {
      v47 = v77;
      v48 = [*(v77 + 2) leadingAnchor];
      v49 = [v77 leadingAnchor];
      v50 = [v48 constraintEqualToAnchor:v49 constant:54.0];
      [v47 addConstraint:v50];
    }

    v63 = v77;
    v67 = [*(v77 + 2) trailingAnchor];
    v66 = [v77 trailingAnchor];
    v64 = [v67 constraintEqualToAnchor:?];
    v78[0] = v64;
    v51 = [*(v77 + 2) centerYAnchor];
    v52 = [v77 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    v78[1] = v53;
    v54 = [*(v77 + 2) topAnchor];
    v55 = [v77 topAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    v78[2] = v56;
    v57 = [*(v77 + 2) bottomAnchor];
    v58 = [v77 bottomAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v78[3] = v59;
    v60 = [NSArray arrayWithObjects:v78 count:4];
    [v63 addConstraints:v60];
  }

  v61 = v77;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v77, 0);
  return v61;
}

- (void)traitCollectionDidChange:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10.receiver = v12;
  v10.super_class = BuddyExpressSetupFeatureCardCell;
  [(BuddyExpressSetupFeatureCardCell *)&v10 traitCollectionDidChange:location[0]];
  v3 = [(BuddyExpressSetupFeatureCardCell *)v12 _titleFont];
  v4 = [(BuddyExpressSetupFeatureCardCell *)v12 titleLabel];
  [(UILabel *)v4 setFont:v3];

  v5 = [(BuddyExpressSetupFeatureCardCell *)v12 _bodyFont];
  v6 = [(BuddyExpressSetupFeatureCardCell *)v12 stateLabel];
  [(UILabel *)v6 setFont:v5];

  v7 = [(BuddyExpressSetupFeatureCardCell *)v12 _bodyFont];
  v8 = [(BuddyExpressSetupFeatureCardCell *)v12 subtitleLabel];
  [(UILabel *)v8 setFont:v7];

  v9 = [(BuddyExpressSetupFeatureCardCell *)v12 _stateStackViewAxis];
  [(UIStackView *)v12->_stateStackView setAxis:v9];
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
  v3 = [(UIApplication *)v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

@end