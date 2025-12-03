@interface HPRFSectionHeaderView
- (HPRFSectionHeaderView)initWithSpecifier:(id)specifier;
- (NSString)descriptionText;
- (UIImage)iconImage;
- (double)preferredHeightForWidth:(double)width;
- (double)titleLastBaselineToDescriptionFirstBaseline;
- (double)topToIconTop;
@end

@implementation HPRFSectionHeaderView

- (HPRFSectionHeaderView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v59.receiver = self;
  v59.super_class = HPRFSectionHeaderView;
  v5 = [(HPRFSectionHeaderView *)&v59 init];
  if (v5)
  {
    v6 = [specifierCopy propertyForKey:@"ElectrocardiogramSupported"];
    v5->_isElectrocardiogramSupported = [v6 BOOLValue];

    v7 = [specifierCopy propertyForKey:@"HeartAgeGatingEnabled"];
    v5->_isHeartAgeGatingEnabled = [v7 BOOLValue];

    [(HPRFSectionHeaderView *)v5 setPreservesSuperviewLayoutMargins:1];
    v8 = [UIImageView alloc];
    [(HPRFSectionHeaderView *)v5 iconImage];
    v9 = v58 = specifierCopy;
    v10 = [v8 initWithImage:v9];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setContentMode:1];
    v11 = v10;
    [(HPRFSectionHeaderView *)v5 addSubview:v10];
    v12 = objc_alloc_init(UILabel);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setAdjustsFontForContentSizeCategory:1];
    v13 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleTitle1 symbolicTraits:32770];
    [v12 setFont:v13];

    titleText = [(HPRFSectionHeaderView *)v5 titleText];
    [v12 setText:titleText];

    v15 = +[UIColor whiteColor];
    [v12 setTextColor:v15];

    [v12 setTextAlignment:1];
    [v12 setNumberOfLines:0];
    v16 = v12;
    [(HPRFSectionHeaderView *)v5 addSubview:v12];
    v17 = objc_alloc_init(UILabel);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setAdjustsFontForContentSizeCategory:1];
    v18 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
    [v17 setFont:v18];

    descriptionText = [(HPRFSectionHeaderView *)v5 descriptionText];
    [v17 setText:descriptionText];

    v20 = +[UIColor whiteColor];
    [v17 setTextColor:v20];

    [v17 setTextAlignment:1];
    [v17 setNumberOfLines:0];
    [v17 setAdjustsFontSizeToFitWidth:1];
    [(HPRFSectionHeaderView *)v5 addSubview:v17];
    topAnchor = [v11 topAnchor];
    layoutMarginsGuide = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    [(HPRFSectionHeaderView *)v5 topToIconTop];
    [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v54 = v53 = v11;
    v60[0] = v54;
    centerXAnchor = [v11 centerXAnchor];
    layoutMarginsGuide2 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide2 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v60[1] = v49;
    firstBaselineAnchor = [v16 firstBaselineAnchor];
    bottomAnchor = [v11 bottomAnchor];
    [(HPRFSectionHeaderView *)v5 iconBottomToTitleFirstBaselineMultiplier];
    v46 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:?];
    v60[2] = v46;
    leadingAnchor = [v16 leadingAnchor];
    layoutMarginsGuide3 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v60[3] = v41;
    v45 = v16;
    trailingAnchor = [v16 trailingAnchor];
    layoutMarginsGuide4 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v60[4] = v37;
    firstBaselineAnchor2 = [v17 firstBaselineAnchor];
    lastBaselineAnchor = [v16 lastBaselineAnchor];
    [(HPRFSectionHeaderView *)v5 titleLastBaselineToDescriptionFirstBaseline];
    v34 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
    v60[5] = v34;
    leadingAnchor3 = [v17 leadingAnchor];
    layoutMarginsGuide5 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v60[6] = v30;
    trailingAnchor3 = [v17 trailingAnchor];
    layoutMarginsGuide6 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
    v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v60[7] = v24;
    bottomAnchor2 = [(HPRFSectionHeaderView *)v5 bottomAnchor];
    bottomAnchor3 = [v17 bottomAnchor];
    v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v60[8] = v27;
    v28 = [NSArray arrayWithObjects:v60 count:9];
    [NSLayoutConstraint activateConstraints:v28];

    specifierCopy = v58;
  }

  return v5;
}

- (UIImage)iconImage
{
  isElectrocardiogramSupported = self->_isElectrocardiogramSupported;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  if (isElectrocardiogramSupported)
  {
    v4 = @"heart_and_electrocardiogram";
  }

  else
  {
    v4 = @"heart_only";
  }

  v5 = [UIImage imageNamed:v4 inBundle:v3];

  return v5;
}

- (NSString)descriptionText
{
  v3 = +[NRPairedDeviceRegistry hprf_activeDeviceIsSatelliteDevice];
  isHeartAgeGatingEnabled = self->_isHeartAgeGatingEnabled;
  if (v3)
  {
    if (!self->_isHeartAgeGatingEnabled)
    {
      v5 = @"HEART_AREA_DESCRIPTION_TINKER_OVER_13";
LABEL_6:
      v6 = HKHeartRateTinkerLocalizedString(v5);
      goto LABEL_8;
    }

LABEL_5:
    v5 = @"HEART_AREA_DESCRIPTION_TINKER_UNDER_13";
    goto LABEL_6;
  }

  if (self->_isHeartAgeGatingEnabled)
  {
    goto LABEL_5;
  }

  v6 = HKHeartRateLocalizedString();
LABEL_8:

  return v6;
}

- (double)topToIconTop
{
  v2 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleTitle1 symbolicTraits:0x8000];
  [v2 _scaledValueForValue:34.0];
  v4 = v3;

  return v4;
}

- (double)titleLastBaselineToDescriptionFirstBaseline
{
  v2 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 _scaledValueForValue:26.0];
  v4 = v3;

  return v4;
}

- (double)preferredHeightForWidth:(double)width
{
  [(HPRFSectionHeaderView *)self directionalLayoutMargins];
  v6 = width - v5;
  [(HPRFSectionHeaderView *)self directionalLayoutMargins];
  v8 = v6 - v7;
  LODWORD(v9) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(HPRFSectionHeaderView *)self systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v7];
  return v10;
}

@end