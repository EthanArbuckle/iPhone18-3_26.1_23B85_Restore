@interface PersonalHotspotDataUsageSpecifierCell
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PersonalHotspotDataUsageSpecifierCell

- (id)getLazyIcon
{
  v3 = [PersonalHotspotDeviceImage alloc];
  v7.receiver = self;
  v7.super_class = PersonalHotspotDataUsageSpecifierCell;
  v4 = [(PersonalHotspotDataUsageSpecifierCell *)&v7 getLazyIcon];
  v5 = -[PersonalHotspotDeviceImage initWithCGImage:](v3, "initWithCGImage:", [v4 CGImage]);

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v116.receiver = self;
  v116.super_class = PersonalHotspotDataUsageSpecifierCell;
  [(PersonalHotspotDataUsageSpecifierCell *)&v116 refreshCellContentsWithSpecifier:v4];
  v5 = [(PersonalHotspotDataUsageSpecifierCell *)self textLabel];
  [v5 removeFromSuperview];

  v6 = [(PersonalHotspotDataUsageSpecifierCell *)self detailTextLabel];
  [v6 removeFromSuperview];

  [(PersonalHotspotDataUsageSpecifierCell *)self setTitle:0];
  dataUsageLabel = self->_dataUsageLabel;
  v8 = [(UILabel *)dataUsageLabel constraints];
  [(UILabel *)dataUsageLabel removeConstraints:v8];

  productNameLabel = self->_productNameLabel;
  v10 = [(UILabel *)self->_dataUsageLabel constraints];
  [(UILabel *)productNameLabel removeConstraints:v10];

  deviceNameLabel = self->_deviceNameLabel;
  v12 = [(UILabel *)self->_dataUsageLabel constraints];
  [(UILabel *)deviceNameLabel removeConstraints:v12];

  [(UILabel *)self->_dataUsageLabel removeFromSuperview];
  [(UILabel *)self->_productNameLabel removeFromSuperview];
  [(UILabel *)self->_deviceNameLabel removeFromSuperview];
  v13 = +[UIDevice currentDevice];
  v14 = [v13 sf_isChinaRegionCellularDevice];

  v15 = [v4 properties];
  v16 = [v15 objectForKeyedSubscript:PSLazyIconURL];

  v17 = [v4 properties];
  v18 = [v17 objectForKeyedSubscript:PSLazyIconLoading];
  v19 = [v18 BOOLValue];

  v20 = @"macbook.and.iphone";
  if (v19)
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
    v25 = v24 = v14;
    v26 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
    [v26 setImage:v23];

    v27 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
    [v27 setSymbolConfiguration:v25];

    v14 = v24;
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
  v32 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  [v32 addSubview:self->_dataUsageLabel];

  v113 = v14;
  if ((v14 & 1) == 0)
  {
    v34 = self->_dataUsageLabel;
    v35 = [v4 propertyForKey:PSValueKey];
    [(UILabel *)v34 setText:v35];
  }

  LODWORD(v33) = 1148846080;
  [(UILabel *)self->_dataUsageLabel setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v36) = 1148846080;
  [(UILabel *)self->_dataUsageLabel setContentHuggingPriority:0 forAxis:v36];
  v37 = [(UILabel *)self->_dataUsageLabel trailingAnchor];
  v38 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  v39 = [v38 layoutMarginsGuide];
  [v39 trailingAnchor];
  v41 = v40 = v4;
  v42 = [v37 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(UILabel *)self->_dataUsageLabel centerYAnchor];
  v44 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  v45 = [v44 layoutMarginsGuide];
  v46 = [v45 centerYAnchor];
  v47 = [v43 constraintEqualToAnchor:v46];
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
  v52 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  [v52 addSubview:self->_deviceNameLabel];

  LODWORD(v53) = 1148846080;
  [(UILabel *)self->_deviceNameLabel setContentCompressionResistancePriority:1 forAxis:v53];
  v54 = [(UILabel *)self->_deviceNameLabel leadingAnchor];
  v55 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
  v56 = [v55 layoutMarginsGuide];
  v57 = [v56 trailingAnchor];
  v58 = [v54 constraintEqualToAnchor:v57 constant:20.0];
  [v58 setActive:1];

  v59 = [(UILabel *)self->_deviceNameLabel trailingAnchor];
  v60 = [(UILabel *)self->_dataUsageLabel leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  [v61 setActive:1];

  v62 = [(UILabel *)self->_deviceNameLabel trailingAnchor];
  v63 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  v64 = [v63 layoutMarginsGuide];
  v65 = [v64 trailingAnchor];
  v66 = [v62 constraintLessThanOrEqualToAnchor:v65];
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

  v73 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
  [v73 addSubview:self->_productNameLabel];

  v117 = NSFontAttributeName;
  v74 = [(PersonalHotspotDataUsageSpecifierCell *)self titleLabel];
  v75 = [v74 font];
  v118 = v75;
  v76 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  [@"iPhone" sizeWithAttributes:v76];
  v78 = v77;

  v79 = [(UILabel *)self->_productNameLabel leadingAnchor];
  v80 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
  v81 = [v80 layoutMarginsGuide];
  v82 = [v81 trailingAnchor];
  v83 = [v79 constraintEqualToAnchor:v82 constant:20.0];
  [v83 setActive:1];

  v84 = [(UILabel *)self->_productNameLabel widthAnchor];
  v85 = [(UILabel *)self->_deviceNameLabel widthAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
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

  v91 = [(UILabel *)self->_productNameLabel text];

  if (v91)
  {
    LODWORD(v92) = 1148846080;
    [(UILabel *)self->_productNameLabel setContentCompressionResistancePriority:1 forAxis:v92];
    v93 = [(UILabel *)self->_productNameLabel firstBaselineAnchor];
    v94 = [(UILabel *)self->_deviceNameLabel lastBaselineAnchor];
    v95 = [v93 constraintEqualToSystemSpacingBelowAnchor:v94 multiplier:1.2];
    [v95 setActive:1];

    v96 = [(UILabel *)self->_deviceNameLabel topAnchor];
    v97 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    v98 = [v97 layoutMarginsGuide];
    v99 = [v98 topAnchor];
    v100 = [v96 constraintEqualToAnchor:v99];
    [v100 setActive:1];

    v101 = [(UILabel *)self->_productNameLabel bottomAnchor];
    v102 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    v103 = [v102 layoutMarginsGuide];
    v104 = [v103 bottomAnchor];
    [v101 constraintEqualToAnchor:v104];
  }

  else
  {
    v105 = ceil(v78);
    v106 = [(UILabel *)self->_deviceNameLabel topAnchor];
    v107 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    v108 = [v107 layoutMarginsGuide];
    v109 = [v108 topAnchor];
    v110 = [v106 constraintEqualToAnchor:v109 constant:v105 * 0.5];
    [v110 setActive:1];

    v101 = [(UILabel *)self->_deviceNameLabel bottomAnchor];
    v102 = [(PersonalHotspotDataUsageSpecifierCell *)self contentView];
    v103 = [v102 layoutMarginsGuide];
    v104 = [v103 bottomAnchor];
    [v101 constraintEqualToAnchor:v104 constant:-(v105 * 0.5)];
  }
  v111 = ;
  [v111 setActive:1];

  if (v115)
  {
    v112 = [(PersonalHotspotDataUsageSpecifierCell *)self imageView];
    [v112 setContentMode:2];
  }

  [(PersonalHotspotDataUsageSpecifierCell *)self setNeedsLayout];
}

@end