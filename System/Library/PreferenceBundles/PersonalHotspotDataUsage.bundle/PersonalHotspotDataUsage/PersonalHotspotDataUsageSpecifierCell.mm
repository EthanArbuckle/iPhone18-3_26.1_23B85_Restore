@interface PersonalHotspotDataUsageSpecifierCell
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PersonalHotspotDataUsageSpecifierCell

- (id)getLazyIcon
{
  v3 = [PersonalHotspotDeviceImage alloc];
  v7.receiver = self;
  v7.super_class = PersonalHotspotDataUsageSpecifierCell;
  getLazyIcon = [(PersonalHotspotDataUsageSpecifierCell *)&v7 getLazyIcon];
  v5 = -[PersonalHotspotDeviceImage initWithCGImage:](v3, "initWithCGImage:", [getLazyIcon CGImage]);

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v116.receiver = self;
  v116.super_class = PersonalHotspotDataUsageSpecifierCell;
  [(PersonalHotspotDataUsageSpecifierCell *)&v116 refreshCellContentsWithSpecifier:specifierCopy];
  textLabel = [(PersonalHotspotDataUsageSpecifierCell *)self textLabel];
  [textLabel removeFromSuperview];

  detailTextLabel = [(PersonalHotspotDataUsageSpecifierCell *)self detailTextLabel];
  [detailTextLabel removeFromSuperview];

  [(PersonalHotspotDataUsageSpecifierCell *)self setTitle:0];
  dataUsageLabel = self->_dataUsageLabel;
  constraints = [(UILabel *)dataUsageLabel constraints];
  [(UILabel *)dataUsageLabel removeConstraints:constraints];

  productNameLabel = self->_productNameLabel;
  constraints2 = [(UILabel *)self->_dataUsageLabel constraints];
  [(UILabel *)productNameLabel removeConstraints:constraints2];

  deviceNameLabel = self->_deviceNameLabel;
  constraints3 = [(UILabel *)self->_dataUsageLabel constraints];
  [(UILabel *)deviceNameLabel removeConstraints:constraints3];

  [(UILabel *)self->_dataUsageLabel removeFromSuperview];
  [(UILabel *)self->_productNameLabel removeFromSuperview];
  [(UILabel *)self->_deviceNameLabel removeFromSuperview];
  v13 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v13 sf_isChinaRegionCellularDevice];

  properties = [specifierCopy properties];
  v16 = [properties objectForKeyedSubscript:PSLazyIconURL];

  properties2 = [specifierCopy properties];
  v18 = [properties2 objectForKeyedSubscript:PSLazyIconLoading];
  bOOLValue = [v18 BOOLValue];

  v20 = @"macbook.and.iphone";
  if (bOOLValue)
  {
    v20 = @"questionmark.app.dashed";
  }

  v21 = v20;
  v114 = v21;
  v115 = v16;
  if (v16)
  {
    v22 = UIFontTextStyleBody;
  }

  else
  {
    v23 = [UIImage systemImageNamed:v21];
    v22 = UIFontTextStyleBody;
    [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:-1];
    v25 = v24 = sf_isChinaRegionCellularDevice;
    imageView = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
    [imageView setImage:v23];

    imageView2 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
    [imageView2 setSymbolConfiguration:v25];

    sf_isChinaRegionCellularDevice = v24;
  }

  v28 = objc_alloc_init(UILabel);
  v29 = self->_dataUsageLabel;
  self->_dataUsageLabel = v28;

  v30 = [UIFont preferredFontForTextStyle:v22];
  [(UILabel *)self->_dataUsageLabel setFont:v30];

  [(UILabel *)self->_dataUsageLabel setNumberOfLines:1];
  v31 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_dataUsageLabel setTextColor:v31];

  [(UILabel *)self->_dataUsageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  [contentView addSubview:self->_dataUsageLabel];

  v113 = sf_isChinaRegionCellularDevice;
  if ((sf_isChinaRegionCellularDevice & 1) == 0)
  {
    v34 = self->_dataUsageLabel;
    v35 = [specifierCopy propertyForKey:PSValueKey];
    [(UILabel *)v34 setText:v35];
  }

  LODWORD(v33) = 1148846080;
  [(UILabel *)self->_dataUsageLabel setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v36) = 1148846080;
  [(UILabel *)self->_dataUsageLabel setContentHuggingPriority:0 forAxis:v36];
  trailingAnchor = [(UILabel *)self->_dataUsageLabel trailingAnchor];
  contentView2 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  [layoutMarginsGuide trailingAnchor];
  v41 = v40 = specifierCopy;
  v42 = [trailingAnchor constraintEqualToAnchor:v41];
  [v42 setActive:1];

  centerYAnchor = [(UILabel *)self->_dataUsageLabel centerYAnchor];
  contentView3 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v47 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v47 setActive:1];

  v48 = objc_alloc_init(UILabel);
  v49 = self->_deviceNameLabel;
  self->_deviceNameLabel = v48;

  v50 = [UIFont preferredFontForTextStyle:v22];
  [(UILabel *)self->_deviceNameLabel setFont:v50];

  v51 = +[UIColor labelColor];
  [(UILabel *)self->_deviceNameLabel setTextColor:v51];

  [(UILabel *)self->_deviceNameLabel setNumberOfLines:0];
  [(UILabel *)self->_deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView4 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  [contentView4 addSubview:self->_deviceNameLabel];

  LODWORD(v53) = 1148846080;
  [(UILabel *)self->_deviceNameLabel setContentCompressionResistancePriority:1 forAxis:v53];
  leadingAnchor = [(UILabel *)self->_deviceNameLabel leadingAnchor];
  imageView3 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
  layoutMarginsGuide3 = [imageView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
  [v58 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_deviceNameLabel trailingAnchor];
  leadingAnchor2 = [(UILabel *)self->_dataUsageLabel leadingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor2];
  [v61 setActive:1];

  trailingAnchor4 = [(UILabel *)self->_deviceNameLabel trailingAnchor];
  contentView5 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide4 trailingAnchor];
  v66 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
  [v66 setActive:1];

  v67 = self->_deviceNameLabel;
  v68 = [v40 propertyForKey:PSTitleKey];
  [(UILabel *)v67 setText:v68];

  v69 = objc_alloc_init(UILabel);
  v70 = self->_productNameLabel;
  self->_productNameLabel = v69;

  v71 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(UILabel *)self->_productNameLabel setFont:v71];

  [(UILabel *)self->_productNameLabel setNumberOfLines:0];
  [(UILabel *)self->_productNameLabel setLineBreakMode:0];
  [(UILabel *)self->_productNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_productNameLabel setTextColor:v72];

  contentView6 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  [contentView6 addSubview:self->_productNameLabel];

  v117 = NSFontAttributeName;
  titleLabel = [(PersonalHotspotDataUsageSpecifierCell *)self titleLabel];
  font = [titleLabel font];
  v118 = font;
  v76 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  [@"iPhone" sizeWithAttributes:v76];
  v78 = v77;

  leadingAnchor3 = [(UILabel *)self->_productNameLabel leadingAnchor];
  imageView4 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
  layoutMarginsGuide5 = [imageView4 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide5 trailingAnchor];
  v83 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor6 constant:20.0];
  [v83 setActive:1];

  widthAnchor = [(UILabel *)self->_productNameLabel widthAnchor];
  widthAnchor2 = [(UILabel *)self->_deviceNameLabel widthAnchor];
  v86 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v86 setActive:1];

  if (v113)
  {
    v87 = self->_productNameLabel;
    v88 = v40;
    v89 = [v40 propertyForKey:PSValueKey];
    v90 = v87;
  }

  else
  {
    v88 = v40;
    v89 = [v40 propertyForKey:PSTableCellSubtitleTextKey];
    v90 = self->_productNameLabel;
  }

  [(UILabel *)v90 setText:v89];

  text = [(UILabel *)self->_productNameLabel text];

  if (text)
  {
    LODWORD(v92) = 1148846080;
    [(UILabel *)self->_productNameLabel setContentCompressionResistancePriority:1 forAxis:v92];
    firstBaselineAnchor = [(UILabel *)self->_productNameLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)self->_deviceNameLabel lastBaselineAnchor];
    v95 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.2];
    [v95 setActive:1];

    topAnchor = [(UILabel *)self->_deviceNameLabel topAnchor];
    contentView7 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    layoutMarginsGuide6 = [contentView7 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide6 topAnchor];
    v100 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v100 setActive:1];

    bottomAnchor = [(UILabel *)self->_productNameLabel bottomAnchor];
    contentView8 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    layoutMarginsGuide7 = [contentView8 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide7 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  }

  else
  {
    v105 = ceil(v78);
    topAnchor3 = [(UILabel *)self->_deviceNameLabel topAnchor];
    contentView9 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    layoutMarginsGuide8 = [contentView9 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide8 topAnchor];
    v110 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v105 * 0.5];
    [v110 setActive:1];

    bottomAnchor = [(UILabel *)self->_deviceNameLabel bottomAnchor];
    contentView8 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    layoutMarginsGuide7 = [contentView8 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide7 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-(v105 * 0.5)];
  }
  v111 = ;
  [v111 setActive:1];

  if (v115)
  {
    imageView5 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
    [imageView5 setContentMode:2];
  }

  [(PersonalHotspotDataUsageSpecifierCell *)self setNeedsLayout];
}

@end