@interface HPRFSectionHeaderView
- (HPRFSectionHeaderView)initWithSpecifier:(id)a3;
- (NSString)descriptionText;
- (UIImage)iconImage;
- (double)preferredHeightForWidth:(double)a3;
- (double)titleLastBaselineToDescriptionFirstBaseline;
- (double)topToIconTop;
@end

@implementation HPRFSectionHeaderView

- (HPRFSectionHeaderView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = HPRFSectionHeaderView;
  v5 = [(HPRFSectionHeaderView *)&v59 init];
  if (v5)
  {
    v6 = [v4 propertyForKey:@"ElectrocardiogramSupported"];
    v5->_isElectrocardiogramSupported = [v6 BOOLValue];

    v7 = [v4 propertyForKey:@"HeartAgeGatingEnabled"];
    v5->_isHeartAgeGatingEnabled = [v7 BOOLValue];

    [(HPRFSectionHeaderView *)v5 setPreservesSuperviewLayoutMargins:1];
    v8 = [UIImageView alloc];
    [(HPRFSectionHeaderView *)v5 iconImage];
    v9 = v58 = v4;
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

    v14 = [(HPRFSectionHeaderView *)v5 titleText];
    [v12 setText:v14];

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

    v19 = [(HPRFSectionHeaderView *)v5 descriptionText];
    [v17 setText:v19];

    v20 = +[UIColor whiteColor];
    [v17 setTextColor:v20];

    [v17 setTextAlignment:1];
    [v17 setNumberOfLines:0];
    [v17 setAdjustsFontSizeToFitWidth:1];
    [(HPRFSectionHeaderView *)v5 addSubview:v17];
    v56 = [v11 topAnchor];
    v57 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    v55 = [v57 topAnchor];
    [(HPRFSectionHeaderView *)v5 topToIconTop];
    [v56 constraintEqualToAnchor:v55 constant:?];
    v54 = v53 = v11;
    v60[0] = v54;
    v51 = [v11 centerXAnchor];
    v52 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    v50 = [v52 centerXAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v60[1] = v49;
    v48 = [v16 firstBaselineAnchor];
    v47 = [v11 bottomAnchor];
    [(HPRFSectionHeaderView *)v5 iconBottomToTitleFirstBaselineMultiplier];
    v46 = [v48 constraintEqualToSystemSpacingBelowAnchor:v47 multiplier:?];
    v60[2] = v46;
    v43 = [v16 leadingAnchor];
    v44 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    v42 = [v44 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v60[3] = v41;
    v45 = v16;
    v39 = [v16 trailingAnchor];
    v40 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    v38 = [v40 trailingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v60[4] = v37;
    v36 = [v17 firstBaselineAnchor];
    v35 = [v16 lastBaselineAnchor];
    [(HPRFSectionHeaderView *)v5 titleLastBaselineToDescriptionFirstBaseline];
    v34 = [v36 constraintEqualToAnchor:v35 constant:?];
    v60[5] = v34;
    v32 = [v17 leadingAnchor];
    v33 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    v31 = [v33 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v60[6] = v30;
    v21 = [v17 trailingAnchor];
    v22 = [(HPRFSectionHeaderView *)v5 layoutMarginsGuide];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v60[7] = v24;
    v25 = [(HPRFSectionHeaderView *)v5 bottomAnchor];
    v26 = [v17 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v60[8] = v27;
    v28 = [NSArray arrayWithObjects:v60 count:9];
    [NSLayoutConstraint activateConstraints:v28];

    v4 = v58;
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

- (double)preferredHeightForWidth:(double)a3
{
  [(HPRFSectionHeaderView *)self directionalLayoutMargins];
  v6 = a3 - v5;
  [(HPRFSectionHeaderView *)self directionalLayoutMargins];
  v8 = v6 - v7;
  LODWORD(v9) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(HPRFSectionHeaderView *)self systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v7];
  return v10;
}

@end