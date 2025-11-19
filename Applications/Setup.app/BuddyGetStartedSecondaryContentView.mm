@interface BuddyGetStartedSecondaryContentView
- (BOOL)shouldUseAccessibilityLayout;
- (BuddyGetStartedSecondaryContentView)initWithFrame:(CGRect)a3;
- (id)_labelFont;
- (int64_t)_activityIndicatorViewStyle;
- (void)_updateContentLabelLayout;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BuddyGetStartedSecondaryContentView

- (BuddyGetStartedSecondaryContentView)initWithFrame:(CGRect)a3
{
  v62 = a3;
  v60 = a2;
  location = 0;
  v59.receiver = self;
  v59.super_class = BuddyGetStartedSecondaryContentView;
  location = [(BuddyGetStartedSecondaryContentView *)&v59 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = objc_alloc_init(BuddyFeatureFlags);
    v4 = *(location + 1);
    *(location + 1) = v3;

    v5 = +[NSBundle mainBundle];
    v6 = SFLocalizableWAPIStringKeyForKey();
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:v6];
    v58 = [(NSBundle *)v5 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];

    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v9 = *(location + 2);
    *(location + 2) = v8;

    [*(location + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(location + 2) setText:v58];
    v10 = [location _labelFont];
    [*(location + 2) setFont:v10];

    v11 = +[UIColor clearColor];
    [*(location + 2) setBackgroundColor:v11];

    [*(location + 2) setNumberOfLines:0];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v13 = *(location + 3);
    *(location + 3) = v12;

    [*(location + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[NSBundle mainBundle];
    v15 = [(NSBundle *)v14 localizedStringForKey:0x100338000 value:&stru_10032F900 table:@"Localizable"];
    [*(location + 3) setText:v15];

    v16 = [location _labelFont];
    [*(location + 3) setFont:v16];

    [*(location + 3) setNumberOfLines:0];
    if ([*(location + 1) isSolariumEnabled])
    {
      v17 = +[UIColor secondaryLabelColor];
      [*(location + 2) setTextColor:v17];

      v18 = +[UIColor secondaryLabelColor];
      [*(location + 3) setTextColor:v18];

      [*(location + 3) setTextAlignment:4];
    }

    else
    {
      v19 = +[UIColor labelColor];
      [*(location + 2) setTextColor:v19];

      v20 = +[UIColor labelColor];
      [*(location + 3) setTextColor:v20];

      [*(location + 3) setTextAlignment:1];
    }

    v21 = [UIActivityIndicatorView alloc];
    v22 = [v21 initWithActivityIndicatorStyle:{objc_msgSend(location, "_activityIndicatorViewStyle")}];
    v23 = *(location + 4);
    *(location + 4) = v22;

    [*(location + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    [location addSubview:*(location + 4)];
    [location addSubview:*(location + 3)];
    [location addSubview:*(location + 2)];
    [*(location + 4) startAnimating];
    v57 = [*(location + 2) topAnchor];
    v56 = [location topAnchor];
    v55 = [v57 constraintEqualToAnchor:15.0 constant:?];
    v65[0] = v55;
    v54 = [*(location + 4) centerYAnchor];
    v53 = [*(location + 3) centerYAnchor];
    v52 = [v54 constraintEqualToAnchor:?];
    v65[1] = v52;
    v51 = [*(location + 4) trailingAnchor];
    v50 = [*(location + 3) leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:-10.0 constant:?];
    v65[2] = v49;
    v48 = [*(location + 3) trailingAnchor];
    v47 = [location trailingAnchor];
    v46 = [v48 constraintLessThanOrEqualToAnchor:?];
    v65[3] = v46;
    v45 = [*(location + 3) topAnchor];
    v44 = [*(location + 2) bottomAnchor];
    v43 = [v45 constraintEqualToAnchor:20.0 constant:?];
    v65[4] = v43;
    v24 = [*(location + 2) leadingAnchor];
    v25 = [location leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v65[5] = v26;
    v27 = [*(location + 2) trailingAnchor];
    v28 = [location trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v65[6] = v29;
    v30 = [*(location + 3) bottomAnchor];
    v31 = [location bottomAnchor];
    v32 = [v30 constraintLessThanOrEqualToAnchor:v31];
    v65[7] = v32;
    v33 = [NSArray arrayWithObjects:v65 count:8];
    [NSLayoutConstraint activateConstraints:v33];

    if ([*(location + 1) isSolariumEnabled])
    {
      v34 = [*(location + 4) leadingAnchor];
      v35 = [location leadingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v64 = v36;
      v37 = [NSArray arrayWithObjects:&v64 count:1];
      [NSLayoutConstraint activateConstraints:v37];
    }

    else
    {
      v34 = [*(location + 3) centerXAnchor];
      v35 = [location centerXAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v63[0] = v36;
      v37 = [*(location + 4) leadingAnchor];
      v38 = [location leadingAnchor];
      v39 = [(NSArray *)v37 constraintGreaterThanOrEqualToAnchor:v38];
      v63[1] = v39;
      v40 = [NSArray arrayWithObjects:v63 count:2];
      [NSLayoutConstraint activateConstraints:v40];
    }

    [location _updateContentLabelLayout];
    objc_storeStrong(&v58, 0);
  }

  v41 = location;
  objc_storeStrong(&location, 0);
  return v41;
}

- (BOOL)shouldUseAccessibilityLayout
{
  lhs[2] = &self->super.super.super.isa;
  lhs[1] = a2;
  v2 = +[UIApplication sharedApplication];
  lhs[0] = [(UIApplication *)v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryCompareToCategory(lhs[0], UIContentSizeCategoryExtraExtraExtraLarge) > NSOrderedSame;
  objc_storeStrong(lhs, 0);
  return v2 & 1;
}

- (int64_t)_activityIndicatorViewStyle
{
  if ([(BuddyGetStartedSecondaryContentView *)self shouldUseAccessibilityLayout])
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

- (void)_updateContentLabelLayout
{
  if (([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v2 = [(BuddyGetStartedSecondaryContentView *)self contentLabel];
    [(UILabel *)v2 setTextAlignment:4];
  }

  else
  {
    if ([(BuddyGetStartedSecondaryContentView *)self shouldUseAccessibilityLayout])
    {
      v3 = [(BuddyGetStartedSecondaryContentView *)self contentLabel];
      [(UILabel *)v3 setTextAlignment:4];
    }

    else
    {
      v3 = [(BuddyGetStartedSecondaryContentView *)self contentLabel];
      [(UILabel *)v3 setTextAlignment:1];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9.receiver = v11;
  v9.super_class = BuddyGetStartedSecondaryContentView;
  [(BuddyGetStartedSecondaryContentView *)&v9 traitCollectionDidChange:location[0]];
  v3 = [(BuddyGetStartedSecondaryContentView *)v11 _activityIndicatorViewStyle];
  v4 = [(BuddyGetStartedSecondaryContentView *)v11 spinner];
  [(UIActivityIndicatorView *)v4 setActivityIndicatorViewStyle:v3];

  v5 = [(BuddyGetStartedSecondaryContentView *)v11 _labelFont];
  v6 = [(BuddyGetStartedSecondaryContentView *)v11 spinnerLabel];
  [(UILabel *)v6 setFont:v5];

  v7 = [(BuddyGetStartedSecondaryContentView *)v11 _labelFont];
  v8 = [(BuddyGetStartedSecondaryContentView *)v11 contentLabel];
  [(UILabel *)v8 setFont:v7];

  [(BuddyGetStartedSecondaryContentView *)v11 _updateContentLabelLayout];
  objc_storeStrong(location, 0);
}

- (id)_labelFont
{
  v8 = self;
  location[1] = a2;
  if (([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v2 = UIFontTextStyleTitle2;
  }

  else
  {
    v2 = UIFontTextStyleCallout;
  }

  location[0] = v2;
  v3 = [(BuddyGetStartedSecondaryContentView *)v8 traitCollection];
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:location[0] compatibleWithTraitCollection:v3];
  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  objc_storeStrong(location, 0);

  return v5;
}

@end