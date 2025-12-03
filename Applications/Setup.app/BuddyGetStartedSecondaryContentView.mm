@interface BuddyGetStartedSecondaryContentView
- (BOOL)shouldUseAccessibilityLayout;
- (BuddyGetStartedSecondaryContentView)initWithFrame:(CGRect)frame;
- (id)_labelFont;
- (int64_t)_activityIndicatorViewStyle;
- (void)_updateContentLabelLayout;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BuddyGetStartedSecondaryContentView

- (BuddyGetStartedSecondaryContentView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v60 = a2;
  location = 0;
  v59.receiver = self;
  v59.super_class = BuddyGetStartedSecondaryContentView;
  location = [(BuddyGetStartedSecondaryContentView *)&v59 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    _labelFont = [location _labelFont];
    [*(location + 2) setFont:_labelFont];

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

    _labelFont2 = [location _labelFont];
    [*(location + 3) setFont:_labelFont2];

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
    topAnchor = [*(location + 2) topAnchor];
    topAnchor2 = [location topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:15.0 constant:?];
    v65[0] = v55;
    centerYAnchor = [*(location + 4) centerYAnchor];
    centerYAnchor2 = [*(location + 3) centerYAnchor];
    v52 = [centerYAnchor constraintEqualToAnchor:?];
    v65[1] = v52;
    trailingAnchor = [*(location + 4) trailingAnchor];
    leadingAnchor = [*(location + 3) leadingAnchor];
    v49 = [trailingAnchor constraintEqualToAnchor:-10.0 constant:?];
    v65[2] = v49;
    trailingAnchor2 = [*(location + 3) trailingAnchor];
    trailingAnchor3 = [location trailingAnchor];
    v46 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:?];
    v65[3] = v46;
    topAnchor3 = [*(location + 3) topAnchor];
    bottomAnchor = [*(location + 2) bottomAnchor];
    v43 = [topAnchor3 constraintEqualToAnchor:20.0 constant:?];
    v65[4] = v43;
    leadingAnchor2 = [*(location + 2) leadingAnchor];
    leadingAnchor3 = [location leadingAnchor];
    v26 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v65[5] = v26;
    trailingAnchor4 = [*(location + 2) trailingAnchor];
    trailingAnchor5 = [location trailingAnchor];
    v29 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v65[6] = v29;
    bottomAnchor2 = [*(location + 3) bottomAnchor];
    bottomAnchor3 = [location bottomAnchor];
    v32 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
    v65[7] = v32;
    v33 = [NSArray arrayWithObjects:v65 count:8];
    [NSLayoutConstraint activateConstraints:v33];

    if ([*(location + 1) isSolariumEnabled])
    {
      leadingAnchor4 = [*(location + 4) leadingAnchor];
      leadingAnchor5 = [location leadingAnchor];
      v36 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      v64 = v36;
      leadingAnchor6 = [NSArray arrayWithObjects:&v64 count:1];
      [NSLayoutConstraint activateConstraints:leadingAnchor6];
    }

    else
    {
      leadingAnchor4 = [*(location + 3) centerXAnchor];
      leadingAnchor5 = [location centerXAnchor];
      v36 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      v63[0] = v36;
      leadingAnchor6 = [*(location + 4) leadingAnchor];
      leadingAnchor7 = [location leadingAnchor];
      v39 = [(NSArray *)leadingAnchor6 constraintGreaterThanOrEqualToAnchor:leadingAnchor7];
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
    contentLabel = [(BuddyGetStartedSecondaryContentView *)self contentLabel];
    [(UILabel *)contentLabel setTextAlignment:4];
  }

  else
  {
    if ([(BuddyGetStartedSecondaryContentView *)self shouldUseAccessibilityLayout])
    {
      contentLabel2 = [(BuddyGetStartedSecondaryContentView *)self contentLabel];
      [(UILabel *)contentLabel2 setTextAlignment:4];
    }

    else
    {
      contentLabel2 = [(BuddyGetStartedSecondaryContentView *)self contentLabel];
      [(UILabel *)contentLabel2 setTextAlignment:1];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v9.receiver = selfCopy;
  v9.super_class = BuddyGetStartedSecondaryContentView;
  [(BuddyGetStartedSecondaryContentView *)&v9 traitCollectionDidChange:location[0]];
  _activityIndicatorViewStyle = [(BuddyGetStartedSecondaryContentView *)selfCopy _activityIndicatorViewStyle];
  spinner = [(BuddyGetStartedSecondaryContentView *)selfCopy spinner];
  [(UIActivityIndicatorView *)spinner setActivityIndicatorViewStyle:_activityIndicatorViewStyle];

  _labelFont = [(BuddyGetStartedSecondaryContentView *)selfCopy _labelFont];
  spinnerLabel = [(BuddyGetStartedSecondaryContentView *)selfCopy spinnerLabel];
  [(UILabel *)spinnerLabel setFont:_labelFont];

  _labelFont2 = [(BuddyGetStartedSecondaryContentView *)selfCopy _labelFont];
  contentLabel = [(BuddyGetStartedSecondaryContentView *)selfCopy contentLabel];
  [(UILabel *)contentLabel setFont:_labelFont2];

  [(BuddyGetStartedSecondaryContentView *)selfCopy _updateContentLabelLayout];
  objc_storeStrong(location, 0);
}

- (id)_labelFont
{
  selfCopy = self;
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
  traitCollection = [(BuddyGetStartedSecondaryContentView *)selfCopy traitCollection];
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:location[0] compatibleWithTraitCollection:traitCollection];
  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  objc_storeStrong(location, 0);

  return v5;
}

@end