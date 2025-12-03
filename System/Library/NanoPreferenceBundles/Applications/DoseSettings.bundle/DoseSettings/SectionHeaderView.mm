@interface SectionHeaderView
- (NSString)descriptionText;
- (NSString)titleText;
- (SectionHeaderView)initWithSpecifier:(id)specifier;
- (UIImage)iconImage;
- (double)iconBottomToTitleFirstBaseline;
- (double)preferredHeightForWidth:(double)width;
- (double)titleLastBaselineToDescriptionFirstBaseline;
- (double)topToIconTop;
@end

@implementation SectionHeaderView

- (SectionHeaderView)initWithSpecifier:(id)specifier
{
  v65.receiver = self;
  v65.super_class = SectionHeaderView;
  v3 = [(SectionHeaderView *)&v65 init];
  v4 = v3;
  if (v3)
  {
    [(SectionHeaderView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = [UIImageView alloc];
    iconImage = [(SectionHeaderView *)v4 iconImage];
    v7 = [v5 initWithImage:iconImage];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setContentMode:1];
    [v7 frame];
    v9 = v8 * 0.5;
    v10 = v7;
    layer = [v7 layer];
    [layer setCornerRadius:v9];

    [v10 setClipsToBounds:1];
    v12 = v10;
    [(SectionHeaderView *)v4 addSubview:v10];
    v13 = objc_alloc_init(UILabel);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setAdjustsFontForContentSizeCategory:1];
    v64 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 addingSymbolicTraits:32770 options:0];
    v14 = [UIFont fontWithDescriptor:v64 size:0.0];
    [v13 setFont:v14];

    titleText = [(SectionHeaderView *)v4 titleText];
    [v13 setText:titleText];

    v16 = +[UIColor whiteColor];
    [v13 setTextColor:v16];

    [v13 setTextAlignment:1];
    [v13 setNumberOfLines:0];
    [(SectionHeaderView *)v4 addSubview:v13];
    v17 = objc_alloc_init(UILabel);
    [(UILabel *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v17 setAdjustsFontForContentSizeCategory:1];
    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v17 setFont:v18];

    descriptionText = [(SectionHeaderView *)v4 descriptionText];
    [(UILabel *)v17 setText:descriptionText];

    v20 = +[UIColor whiteColor];
    [(UILabel *)v17 setTextColor:v20];

    [(UILabel *)v17 setTextAlignment:1];
    [(UILabel *)v17 setNumberOfLines:0];
    [(SectionHeaderView *)v4 addSubview:v17];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v17;
    v22 = v17;

    topAnchor = [v12 topAnchor];
    layoutMarginsGuide = [(SectionHeaderView *)v4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    [(SectionHeaderView *)v4 topToIconTop];
    v60 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v66[0] = v60;
    centerXAnchor = [v12 centerXAnchor];
    layoutMarginsGuide2 = [(SectionHeaderView *)v4 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide2 centerXAnchor];
    v55 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[1] = v55;
    firstBaselineAnchor = [v13 firstBaselineAnchor];
    v57 = v12;
    bottomAnchor = [v12 bottomAnchor];
    [(SectionHeaderView *)v4 iconBottomToTitleFirstBaseline];
    v52 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    v66[2] = v52;
    firstBaselineAnchor2 = [v13 firstBaselineAnchor];
    bottomAnchor2 = [v12 bottomAnchor];
    [(SectionHeaderView *)v4 iconBottomToTitleFirstBaseline];
    v48 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:?];
    v66[3] = v48;
    leadingAnchor = [v13 leadingAnchor];
    layoutMarginsGuide3 = [(SectionHeaderView *)v4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v66[4] = v44;
    v49 = v13;
    trailingAnchor = [v13 trailingAnchor];
    layoutMarginsGuide4 = [(SectionHeaderView *)v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v66[5] = v40;
    firstBaselineAnchor3 = [(UILabel *)v22 firstBaselineAnchor];
    lastBaselineAnchor = [v13 lastBaselineAnchor];
    [(SectionHeaderView *)v4 titleLastBaselineToDescriptionFirstBaseline];
    v37 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:?];
    v66[6] = v37;
    v23 = v22;
    centerXAnchor3 = [(UILabel *)v22 centerXAnchor];
    layoutMarginsGuide5 = [(SectionHeaderView *)v4 layoutMarginsGuide];
    centerXAnchor4 = [layoutMarginsGuide5 centerXAnchor];
    v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v66[7] = v33;
    widthAnchor = [(UILabel *)v22 widthAnchor];
    layoutMarginsGuide6 = [(SectionHeaderView *)v4 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide6 widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.8];
    v66[8] = v27;
    bottomAnchor3 = [(SectionHeaderView *)v4 bottomAnchor];
    bottomAnchor4 = [(UILabel *)v23 bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v66[9] = v30;
    v31 = [NSArray arrayWithObjects:v66 count:10];
    [NSLayoutConstraint activateConstraints:v31];
  }

  return v4;
}

- (UIImage)iconImage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"ear_only" inBundle:v2];

  return v3;
}

- (NSString)titleText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENVIRONMENTAL_EXPOSURE_AREA_TITLE" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"ENVIRONMENTAL_EXPOSURE_AREA_TITLE" value:v4 table:@"Noise"];

  return v5;
}

- (NSString)descriptionText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENVIRONMENTAL_EXPOSURE_AREA_DESCRIPTION" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"ENVIRONMENTAL_EXPOSURE_AREA_DESCRIPTION" value:v4 table:@"Noise"];

  return v5;
}

- (double)topToIconTop
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v2 _scaledValueForValue:34.0];
  v4 = v3;

  return v4;
}

- (double)iconBottomToTitleFirstBaseline
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v2 _scaledValueForValue:34.0];
  v4 = v3;

  return v4;
}

- (double)titleLastBaselineToDescriptionFirstBaseline
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 _scaledValueForValue:26.0];
  v4 = v3;

  return v4;
}

- (double)preferredHeightForWidth:(double)width
{
  descriptionLabel = [(SectionHeaderView *)self descriptionLabel];
  [descriptionLabel directionalLayoutMargins];
  v7 = width - v6;
  descriptionLabel2 = [(SectionHeaderView *)self descriptionLabel];
  [descriptionLabel2 directionalLayoutMargins];
  v10 = v7 - v9;

  LODWORD(v11) = 1148846080;
  LODWORD(v12) = 1112014848;
  [(SectionHeaderView *)self systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:0.0 verticalFittingPriority:v11, v12];
  return v13;
}

@end