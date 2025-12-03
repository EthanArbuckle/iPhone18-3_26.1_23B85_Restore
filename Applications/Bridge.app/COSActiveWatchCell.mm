@interface COSActiveWatchCell
- (COSActiveWatchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)searchIconImage;
- (void)dealloc;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation COSActiveWatchCell

- (COSActiveWatchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v36.receiver = self;
  v36.super_class = COSActiveWatchCell;
  v5 = [(COSActiveWatchCell *)&v36 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [[COSWatchView alloc] initWithStyle:6];
    watchView = v5->_watchView;
    v5->_watchView = v6;

    LODWORD(v8) = 1148846080;
    [(COSWatchView *)v5->_watchView setContentHuggingPriority:0 forAxis:v8];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_10011AEC4, @"com.apple.screenshotter.watchface-changed", 0, 1024);
    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addArrangedSubview:v5->_watchView];
    [v10 setSpacing:18.0];
    [v10 setAlignment:3];
    contentView = [(COSActiveWatchCell *)v5 contentView];
    [contentView addSubview:v10];

    v12 = _NSDictionaryOfVariableBindings(@"horizontalStack", v10, 0);
    v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[horizontalStack]|", 0, 0, v12);
    [NSLayoutConstraint activateConstraints:v13];

    v14 = _NSDictionaryOfVariableBindings(@"horizontalStack", v10, 0);
    v15 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=14)-[horizontalStack]-(>=14)-|", 0, 0, v14);
    [NSLayoutConstraint activateConstraints:v15];

    v16 = objc_opt_new();
    v17 = 1;
    [v16 setAxis:1];
    [v16 setBaselineRelativeArrangement:1];
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    if ((_UIContentSizeCategoryCompareToContentSizeCategory() & 0x8000000000000000) == 0)
    {
      if (_UIContentSizeCategoryCompareToContentSizeCategory() < 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }
    }

    v19 = objc_opt_new();
    watchName = v5->_watchName;
    v5->_watchName = v19;

    [(UILabel *)v5->_watchName setNumberOfLines:v17];
    v21 = v5->_watchName;
    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v5->_watchName setLineBreakMode:4];
    v23 = v5->_watchName;
    v24 = BPSTextColor();
    [(UILabel *)v23 setTextColor:v24];

    [v16 addArrangedSubview:v5->_watchName];
    v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v25 _scaledValueForValue:19.0];
    [v16 setSpacing:?];
    v26 = objc_opt_new();
    watchDetails = v5->_watchDetails;
    v5->_watchDetails = v26;

    [(UILabel *)v5->_watchDetails setFont:v25];
    v28 = v5->_watchDetails;
    v29 = BPSTextColor();
    [(UILabel *)v28 setTextColor:v29];

    [v16 addArrangedSubview:v5->_watchDetails];
    [v10 addArrangedSubview:v16];
    if (v17 >= 2)
    {
      topAnchor = [(COSWatchView *)v5->_watchView topAnchor];
      topAnchor2 = [(UILabel *)v5->_watchName topAnchor];
      [(UILabel *)v5->_watchName _capOffsetFromBoundsTop];
      v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v32];
      [v33 setActive:1];
    }

    titleLabel = [(COSActiveWatchCell *)v5 titleLabel];
    [titleLabel setHidden:1];
  }

  return v5;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.screenshotter.watchface-changed", 0);
  v4.receiver = self;
  v4.super_class = COSActiveWatchCell;
  [(COSActiveWatchCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = COSActiveWatchCell;
  [(COSActiveWatchCell *)&v4 layoutSubviews];
  titleLabel = [(COSActiveWatchCell *)self titleLabel];
  [titleLabel setHidden:1];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v27.receiver = self;
  v27.super_class = COSActiveWatchCell;
  specifierCopy = specifier;
  [(COSActiveWatchCell *)&v27 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"COSActiveWatchDetail"];

  if (v5)
  {
    [(COSWatchView *)self->_watchView setAssociatedDevice:v5];
    v6 = [v5 valueForProperty:NRDevicePropertyProductType];
    v7 = [v5 valueForProperty:NRDevicePropertyDeviceBrand];
    v8 = [v5 valueForProperty:NRDevicePropertyArtworkTraits];
    v9 = MGGetBoolAnswer();
    v10 = pbb_bridge_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 && v8)
    {
      if (v11)
      {
        *buf = 136315138;
        v29 = "[COSActiveWatchCell refreshCellContentsWithSpecifier:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyArtworkTraits to get PBBDeviceSize", buf, 0xCu);
      }

      v12 = [v8 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
      [v12 unsignedIntegerValue];

      v13 = BPSVariantSizeForArtworkDeviceSubType();
    }

    else
    {
      if (v11)
      {
        *buf = 136315138;
        v29 = "[COSActiveWatchCell refreshCellContentsWithSpecifier:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyProductType to get PBBDeviceSize", buf, 0xCu);
      }

      v13 = BPSVariantSizeForProductType();
    }

    v14 = v13;
    v15 = BPSShortLocalizedVariantSizeForProductType();
    v16 = [PBBridgeWatchAttributeController materialFromDevice:v5];
    [v7 integerValue];
    v17 = BPSLocalizedShortEdition();
    [(COSWatchView *)self->_watchView overrideMaterial:v16 size:v14];
    watchName = self->_watchName;
    v19 = [UIApp cachedNameForDevice:v5];
    [(UILabel *)watchName setText:v19];

    v20 = [v17 length];
    watchDetails = self->_watchDetails;
    if (v20)
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"EDITION_NAME_AND_DEVICE_SIZE_%@_%@" value:&stru_10026E598 table:@"Localizable"];
      v24 = [NSString stringWithFormat:v23, v17, v15, v27.receiver, v27.super_class];
      [(UILabel *)watchDetails setText:v24];
    }

    else
    {
      [(UILabel *)watchDetails setText:v15];
    }

    v25 = pbb_bridge_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      _bridgeConciseDebugDescription = [v5 _bridgeConciseDebugDescription];
      *buf = 138412290;
      v29 = _bridgeConciseDebugDescription;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Refreshed with device %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Refreshed with nil device, leaving stale device in place instead.", buf, 2u);
    }
  }
}

- (id)searchIconImage
{
  [(COSWatchView *)self->_watchView frame];
  v14.width = v3;
  v14.height = v4;
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [(COSWatchView *)self->_watchView layer];
  [layer renderInContext:CurrentContext];

  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v7 scale];
  v9 = v8;
  v10 = [BPSThumbnailGenerator scaledImageForImage:v7 desiredSize:29.5 scale:33.0, v8];
  v11 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v10 CGImage], 0, v9);

  return v11;
}

@end