@interface BuddyExpressSetupFeatureCardPrimaryCell
- (BuddyExpressSetupFeatureCardPrimaryCell)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (UIImage)chevronImage;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)setChevronHidden:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setNumberOfLinesForSubtitle:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BuddyExpressSetupFeatureCardPrimaryCell

- (UIImage)chevronImage
{
  sub_1000282CC();
  v3 = self;
  [(BuddyExpressSetupFeatureCardPrimaryCell *)v3 isExpanded];
  v4 = static UIImage.disclosureChevronImage(expandedState:)();

  return v4;
}

- (BuddyExpressSetupFeatureCardPrimaryCell)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v80 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v78 = 0;
  objc_storeStrong(&v78, a4);
  v77 = 0;
  objc_storeStrong(&v77, a5);
  v7 = v80;
  v80 = 0;
  v76.receiver = v7;
  v76.super_class = BuddyExpressSetupFeatureCardPrimaryCell;
  v80 = [(BuddyExpressSetupFeatureCardPrimaryCell *)&v76 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&v80, v80);
  if (v80)
  {
    v8 = [UIImageView alloc];
    v9 = [v8 initWithImage:v77];
    v10 = *(v80 + 2);
    *(v80 + 2) = v9;

    [*(v80 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v80 + 2) setContentMode:1];
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v12 = *(v80 + 4);
    *(v80 + 4) = v11;

    [*(v80 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v80 _titleFont];
    [*(v80 + 4) setFont:v13];

    [*(v80 + 4) setText:location[0]];
    [*(v80 + 4) setNumberOfLines:0];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = *(v80 + 5);
    *(v80 + 5) = v14;

    [*(v80 + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIColor secondaryLabelColor];
    [*(v80 + 5) setTextColor:v16];

    v17 = [v80 _subtitleFont];
    [*(v80 + 5) setFont:v17];

    [*(v80 + 5) setText:v78];
    v18 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v19 = *(v80 + 3);
    *(v80 + 3) = v18;

    [*(v80 + 3) setAxis:1];
    [*(v80 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v80 + 3) addArrangedSubview:*(v80 + 4)];
    [*(v80 + 3) addArrangedSubview:*(v80 + 5)];
    v20 = [UIImageView alloc];
    v21 = [v80 chevronImage];
    v22 = [v20 initWithImage:v21];
    v23 = *(v80 + 6);
    *(v80 + 6) = v22;

    [*(v80 + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v80 + 6) setContentMode:1];
    LODWORD(v24) = 1148846080;
    [*(v80 + 6) setContentHuggingPriority:0 forAxis:v24];
    v25 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v26 = *(v80 + 7);
    *(v80 + 7) = v25;

    [*(v80 + 7) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v80 + 7) setHidden:1];
    v27 = +[UIColor separatorColor];
    [*(v80 + 7) setBackgroundColor:v27];

    [v80 addSubview:*(v80 + 2)];
    [v80 addSubview:*(v80 + 3)];
    [v80 addSubview:*(v80 + 6)];
    [v80 addSubview:*(v80 + 7)];
    v66 = v80;
    v75 = [*(v80 + 2) widthAnchor];
    v74 = [v75 constraintEqualToConstant:40.0];
    v81[0] = v74;
    v73 = [*(v80 + 2) heightAnchor];
    v72 = [v73 constraintEqualToConstant:40.0];
    v81[1] = v72;
    v70 = [*(v80 + 2) leadingAnchor];
    v71 = [v80 layoutMarginsGuide];
    v69 = [v71 leadingAnchor];
    v68 = [v70 constraintEqualToAnchor:?];
    v81[2] = v68;
    v67 = [*(v80 + 2) centerYAnchor];
    v65 = [v80 centerYAnchor];
    v64 = [v67 constraintEqualToAnchor:?];
    v81[3] = v64;
    v63 = [*(v80 + 3) leadingAnchor];
    v62 = [*(v80 + 2) trailingAnchor];
    v61 = [v63 constraintEqualToAnchor:14.0 constant:?];
    v81[4] = v61;
    v60 = [*(v80 + 3) trailingAnchor];
    v59 = [*(v80 + 6) leadingAnchor];
    v58 = [v60 constraintEqualToAnchor:?];
    v81[5] = v58;
    v57 = [*(v80 + 3) centerYAnchor];
    v56 = [v80 centerYAnchor];
    v55 = [v57 constraintEqualToAnchor:?];
    v81[6] = v55;
    v54 = [*(v80 + 3) topAnchor];
    v53 = [v80 topAnchor];
    v52 = [v54 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
    v81[7] = v52;
    v51 = [v80 bottomAnchor];
    v50 = [*(v80 + 3) bottomAnchor];
    v49 = [v51 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
    v81[8] = v49;
    v48 = [*(v80 + 6) centerYAnchor];
    v47 = [v80 centerYAnchor];
    v46 = [v48 constraintEqualToAnchor:?];
    v81[9] = v46;
    v44 = [*(v80 + 6) trailingAnchor];
    v45 = [v80 layoutMarginsGuide];
    v43 = [v45 trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:?];
    v81[10] = v42;
    v41 = [*(v80 + 7) heightAnchor];
    v40 = [v41 constraintEqualToConstant:1.0];
    v81[11] = v40;
    v28 = [*(v80 + 7) leadingAnchor];
    v29 = [*(v80 + 3) leadingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v81[12] = v30;
    v31 = [*(v80 + 7) trailingAnchor];
    v32 = [v80 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v81[13] = v33;
    v34 = [*(v80 + 7) bottomAnchor];
    v35 = [v80 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v81[14] = v36;
    v37 = [NSArray arrayWithObjects:v81 count:15];
    [v66 addConstraints:v37];
  }

  v38 = v80;
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v80, 0);
  return v38;
}

- (void)setExpanded:(BOOL)a3
{
  self->_expanded = a3;
  v3 = [(BuddyExpressSetupFeatureCardPrimaryCell *)self chevronImage];
  v4 = [(BuddyExpressSetupFeatureCardPrimaryCell *)self chevronImageView];
  [(UIImageView *)v4 setImage:v3];

  v5 = [(BuddyExpressSetupFeatureCardPrimaryCell *)self separatorView];
  [(UIView *)v5 setHidden:!a3];
}

- (void)setChevronHidden:(BOOL)a3
{
  self->_chevronHidden = a3;
  v4 = [(BuddyExpressSetupFeatureCardPrimaryCell *)self chevronImageView];
  [(UIImageView *)v4 setHidden:a3];
}

- (void)setNumberOfLinesForSubtitle:(int64_t)a3
{
  v4 = [(BuddyExpressSetupFeatureCardPrimaryCell *)self subtitleLabel];
  [(UILabel *)v4 setNumberOfLines:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = BuddyExpressSetupFeatureCardPrimaryCell;
  [(BuddyExpressSetupFeatureCardPrimaryCell *)&v7 traitCollectionDidChange:location[0]];
  v3 = [(BuddyExpressSetupFeatureCardPrimaryCell *)v9 _titleFont];
  v4 = [(BuddyExpressSetupFeatureCardPrimaryCell *)v9 titleLabel];
  [(UILabel *)v4 setFont:v3];

  v5 = [(BuddyExpressSetupFeatureCardPrimaryCell *)v9 _subtitleFont];
  v6 = [(BuddyExpressSetupFeatureCardPrimaryCell *)v9 subtitleLabel];
  [(UILabel *)v6 setFont:v5];

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