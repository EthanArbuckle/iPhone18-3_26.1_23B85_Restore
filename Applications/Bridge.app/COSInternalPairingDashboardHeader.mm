@interface COSInternalPairingDashboardHeader
- (CGRect)_computedFrameForTextLabel;
- (CGRect)_computedFrameForWatchImage;
- (CGSize)sizeThatFits:(CGSize)fits;
- (COSInternalPairingDashboardHeader)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)refreshForWatchDetails:(id)details;
@end

@implementation COSInternalPairingDashboardHeader

- (COSInternalPairingDashboardHeader)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = COSInternalPairingDashboardHeader;
  v3 = [(COSInternalPairingDashboardHeader *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = BPSSetupBackgroundColor();
    [(COSInternalPairingDashboardHeader *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v7 = v3->_titleLabel;
    v8 = [UIFont systemFontOfSize:24.0 weight:UIFontWeightMedium];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)v3->_titleLabel setText:@"Pairing Dashboard [Internal]"];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    v9 = v3->_titleLabel;
    v10 = BPSTextColor();
    [(UILabel *)v9 setTextColor:v10];

    v11 = objc_opt_new();
    horizontalStack = v3->_horizontalStack;
    v3->_horizontalStack = v11;

    [(UIStackView *)v3->_horizontalStack setAxis:0];
    v13 = [[COSWatchView alloc] initWithStyle:3];
    watchView = v3->_watchView;
    v3->_watchView = v13;

    [(UIStackView *)v3->_horizontalStack addArrangedSubview:v3->_watchView];
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v16 = [v15 _fontScaledByScaleFactor:0.933333333];

    v17 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    watchDetails = v3->_watchDetails;
    v3->_watchDetails = v17;

    [(UIStackView *)v3->_watchDetails setAxis:1];
    v19 = v16;
    v20 = objc_alloc_init(UILabel);
    [(UILabel *)v20 setFont:v19];

    [(UILabel *)v20 setNumberOfLines:0];
    v21 = BPSTextColor();
    [(UILabel *)v20 setTextColor:v21];

    [(UILabel *)v20 setHighlighted:1];
    [(UILabel *)v20 setSize:14.0, 14.0];
    LODWORD(v22) = 1058642330;
    [(UILabel *)v20 _setHyphenationFactor:v22];
    [(UILabel *)v20 setLineBreakMode:0];
    watchName = v3->_watchName;
    v3->_watchName = v20;

    [(UILabel *)v3->_watchName setText:@"Watch Name (Advertising Name)"];
    [(UIStackView *)v3->_watchDetails addArrangedSubview:v3->_watchName];
    v24 = v19;
    v25 = objc_alloc_init(UILabel);
    [(UILabel *)v25 setFont:v24];

    [(UILabel *)v25 setNumberOfLines:0];
    v26 = BPSTextColor();
    [(UILabel *)v25 setTextColor:v26];

    [(UILabel *)v25 setHighlighted:1];
    [(UILabel *)v25 setSize:14.0, 14.0];
    LODWORD(v27) = 1058642330;
    [(UILabel *)v25 _setHyphenationFactor:v27];
    [(UILabel *)v25 setLineBreakMode:0];
    productTypeBuildAndVariantDescription = v3->_productTypeBuildAndVariantDescription;
    v3->_productTypeBuildAndVariantDescription = v25;

    [(UILabel *)v3->_productTypeBuildAndVariantDescription setText:@"HWModel / ProductType / BuildVersion"];
    [(UIStackView *)v3->_watchDetails addArrangedSubview:v3->_productTypeBuildAndVariantDescription];
    v29 = v24;
    v30 = objc_alloc_init(UILabel);
    [(UILabel *)v30 setFont:v29];

    [(UILabel *)v30 setNumberOfLines:0];
    v31 = BPSTextColor();
    [(UILabel *)v30 setTextColor:v31];

    [(UILabel *)v30 setHighlighted:1];
    [(UILabel *)v30 setSize:14.0, 14.0];
    LODWORD(v32) = 1058642330;
    [(UILabel *)v30 _setHyphenationFactor:v32];
    [(UILabel *)v30 setLineBreakMode:0];
    watchMaterialandSize = v3->_watchMaterialandSize;
    v3->_watchMaterialandSize = v30;

    [(UILabel *)v3->_watchMaterialandSize setText:@"Material / Size"];
    [(UIStackView *)v3->_watchDetails addArrangedSubview:v3->_watchMaterialandSize];
    v34 = v29;
    v35 = objc_alloc_init(UILabel);
    [(UILabel *)v35 setFont:v34];

    [(UILabel *)v35 setNumberOfLines:0];
    v36 = BPSTextColor();
    [(UILabel *)v35 setTextColor:v36];

    [(UILabel *)v35 setHighlighted:1];
    [(UILabel *)v35 setSize:14.0, 14.0];
    LODWORD(v37) = 1058642330;
    [(UILabel *)v35 _setHyphenationFactor:v37];
    [(UILabel *)v35 setLineBreakMode:0];
    internalDetails = v3->_internalDetails;
    v3->_internalDetails = v35;

    [(UILabel *)v3->_internalDetails setText:@"Internal Details"];
    [(UIStackView *)v3->_watchDetails addArrangedSubview:v3->_internalDetails];
    [(UIStackView *)v3->_horizontalStack addArrangedSubview:v3->_watchDetails];
    [(COSInternalPairingDashboardHeader *)v3 addSubview:v3->_titleLabel];
    [(COSInternalPairingDashboardHeader *)v3 addSubview:v3->_horizontalStack];
  }

  return v3;
}

- (CGRect)_computedFrameForTextLabel
{
  [(COSInternalPairingDashboardHeader *)self bounds];
  v2 = CGRectGetWidth(v6) + -28.0;
  v3 = 50.0;
  v4 = 14.0;
  v5 = 7.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_computedFrameForWatchImage
{
  v2 = 140.0;
  v3 = 103.0;
  v4 = 113.0;
  v5 = 14.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v5;
  return result;
}

- (void)layoutSubviews
{
  titleLabel = self->_titleLabel;
  [(COSInternalPairingDashboardHeader *)self _computedFrameForTextLabel];
  [(UILabel *)titleLabel setFrame:?];
  watchView = self->_watchView;
  [(COSInternalPairingDashboardHeader *)self _computedFrameForWatchImage];
  [(COSWatchView *)watchView setFrame:?];
  horizontalStack = self->_horizontalStack;
  [(COSInternalPairingDashboardHeader *)self bounds];
  [(UIStackView *)horizontalStack setFrame:14.0, 64.0, CGRectGetWidth(v8) + -28.0, 136.0];
  [(UIStackView *)self->_horizontalStack setDistribution:2];
  watchDetails = self->_watchDetails;

  [(UIStackView *)watchDetails setDistribution:1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(COSInternalPairingDashboardHeader *)self bounds:fits.width];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(COSInternalPairingDashboardHeader *)self _computedFrameForTextLabel];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  Width = CGRectGetWidth(v24);
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v21 = CGRectGetMaxY(v25) + 25.0;
  v22 = Width;
  result.height = v21;
  result.width = v22;
  return result;
}

- (void)refreshForWatchDetails:(id)details
{
  detailsCopy = details;
  v4 = [detailsCopy valueForProperty:NRDevicePropertyProductType];
  v5 = [detailsCopy valueForProperty:NRDevicePropertyArtworkTraits];
  v6 = MGGetBoolAnswer();
  v7 = pbb_bridge_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v45 = v5;
  if (v6 && v5)
  {
    if (v8)
    {
      *buf = 136315138;
      v55 = "[COSInternalPairingDashboardHeader refreshForWatchDetails:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyArtworkTraits to get PBBDeviceSize", buf, 0xCu);
    }

    v9 = [v5 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    [v9 unsignedIntegerValue];

    v10 = BPSVariantSizeForArtworkDeviceSubType();
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v55 = "[COSInternalPairingDashboardHeader refreshForWatchDetails:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyProductType to get PBBDeviceSize", buf, 0xCu);
    }

    v10 = BPSVariantSizeForProductType();
  }

  v39 = v10;
  v11 = [BPSScreenStringObj screenStringsWithArray:&off_100281768];
  v12 = BPSGetRelevantScreenStringForProduct();

  v13 = +[NSBundle mainBundle];
  v14 = &stru_10026E598;
  v43 = v12;
  v42 = [v13 localizedStringForKey:v12 value:&stru_10026E598 table:@"Pairing"];

  v37 = [PBBridgeWatchAttributeController materialFromDevice:detailsCopy];
  v15 = BPSUnlocalizedNameForMaterial();
  v16 = [v15 stringByAppendingString:@"_ACTIVE_DEVICE"];

  v17 = +[NSBundle mainBundle];
  v41 = v16;
  v40 = [v17 localizedStringForKey:v16 value:&stru_10026E598 table:@"Pairing"];

  v18 = [detailsCopy valueForProperty:NRDevicePropertySystemBuildVersion];
  v19 = [detailsCopy valueForProperty:NRDevicePropertyName];
  v20 = [detailsCopy valueForProperty:NRDevicePropertyAdvertisedName];
  [detailsCopy valueForProperty:NRDevicePropertyHWModelString];
  v38 = v46 = v4;
  v21 = [v38 stringByAppendingFormat:@" / %@", v4];
  v22 = [detailsCopy valueForProperty:NRDevicePropertyIsInternalInstall];
  v23 = v22;
  if (v22)
  {
    bOOLValue = [v22 BOOLValue];
    v25 = @"Customer";
    if (bOOLValue)
    {
      v25 = @"Internal";
    }

    v14 = v25;
  }

  v26 = [detailsCopy valueForProperty:NRDevicePropertyIsAltAccount];
  v27 = v26;
  if (v26)
  {
    bOOLValue2 = [v26 BOOLValue];
    v29 = @"Classic";
    if (bOOLValue2)
    {
      v29 = @"Tinker";
    }

    v30 = [(__CFString *)v14 stringByAppendingFormat:@" / %@", v29];

    v14 = v30;
  }

  if ([v18 length])
  {
    v31 = [v21 stringByAppendingFormat:@" / %@", v18];

    v21 = v31;
  }

  if ([v20 length])
  {
    v32 = [v19 stringByAppendingFormat:@" (%@)", v20];

    v19 = v32;
  }

  [v40 stringByAppendingFormat:@" / %@", v42];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C710;
  block[3] = &unk_100268FA0;
  block[4] = self;
  v49 = v48 = v19;
  v50 = v21;
  v52 = v37;
  v53 = v39;
  v51 = v14;
  v33 = v14;
  v34 = v21;
  v35 = v49;
  v36 = v19;
  dispatch_async(&_dispatch_main_q, block);
}

@end