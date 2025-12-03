@interface HearingAidConnectionTableCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (HearingAidConnectionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityHint;
- (id)detailString;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateTextColor;
@end

@implementation HearingAidConnectionTableCell

- (HearingAidConnectionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = HearingAidConnectionTableCell;
  v4 = [(HearingAidConnectionTableCell *)&v12 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"updateAvailability" name:HUNearbyDevicesDidChangeNotification object:0];

    titleLabel = [(HearingAidConnectionTableCell *)v4 titleLabel];
    [titleLabel setNumberOfLines:0];

    valueLabel = [(HearingAidConnectionTableCell *)v4 valueLabel];
    [valueLabel setNumberOfLines:0];

    v8 = objc_alloc_init(UILabel);
    availabilityLabel = v4->_availabilityLabel;
    v4->_availabilityLabel = v8;

    [(UILabel *)v4->_availabilityLabel setNumberOfLines:0];
    contentView = [(HearingAidConnectionTableCell *)v4 contentView];
    [contentView addSubview:v4->_availabilityLabel];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  availabilityLabel = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel removeFromSuperview];

  v5.receiver = self;
  v5.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v5 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v27.receiver = self;
  v27.super_class = HearingAidConnectionTableCell;
  specifierCopy = specifier;
  [(HearingAidConnectionTableCell *)&v27 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  [(HearingAidConnectionTableCell *)self setDevice:userInfo];
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    device = [(HearingAidConnectionTableCell *)self device];
    name = [device name];
    device2 = [(HearingAidConnectionTableCell *)self device];
    isPaired = [device2 isPaired];
    device3 = [(HearingAidConnectionTableCell *)self device];
    isConnected = [device3 isConnected];
    *buf = 138412802;
    v29 = name;
    v30 = 1024;
    v31 = isPaired;
    v32 = 1024;
    v33 = isConnected;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connection Cell refresh name: %@ paired: %d, connected %d", buf, 0x18u);
  }

  titleLabel = [(HearingAidConnectionTableCell *)self titleLabel];
  name2 = [(AXRemoteHearingAidDevice *)self->_device name];
  [titleLabel setText:name2];

  titleLabel2 = [(HearingAidConnectionTableCell *)self titleLabel];
  text = [titleLabel2 text];
  if (text)
  {
    v17 = text;
    titleLabel3 = [(HearingAidConnectionTableCell *)self titleLabel];
    text2 = [titleLabel3 text];
    v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v21 = [text2 stringByTrimmingCharactersInSet:v20];
    v22 = [v21 isEqualToString:&stru_49868];

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  titleLabel4 = [(HearingAidConnectionTableCell *)self titleLabel];
  v24 = hearingSettingsLocString(@"HearingAidFallbackName", @"HearingAidSettings");
  [titleLabel4 setText:v24];

LABEL_8:
  valueLabel = [(HearingAidConnectionTableCell *)self valueLabel];
  detailString = [(HearingAidConnectionTableCell *)self detailString];
  [valueLabel setText:detailString];

  [(HearingAidConnectionTableCell *)self setAccessoryType:1];
  [(HearingAidConnectionTableCell *)self updateAvailability];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v4 prepareForReuse];
  device = [(HearingAidConnectionTableCell *)self device];

  if (device)
  {
    [(HearingAidConnectionTableCell *)self setDevice:0];
  }
}

- (id)detailString
{
  if (([(AXRemoteHearingAidDevice *)self->_device leftAvailable]& 1) == 0 && ![(AXRemoteHearingAidDevice *)self->_device rightAvailable])
  {
    v29 = 0;
    goto LABEL_17;
  }

  manufacturer = [(AXRemoteHearingAidDevice *)self->_device manufacturer];
  v4 = [manufacturer copy];

  model = [(AXRemoteHearingAidDevice *)self->_device model];
  v6 = [model copy];

  v7 = hearingLocString();
  firstObject = [v4 firstObject];
  firstObject2 = [v6 firstObject];
  v10 = hearingLocString();
  v31 = [NSString stringWithFormat:v7, firstObject, firstObject2, v10];

  v11 = hearingLocString();
  v12 = v4;
  lastObject = [v4 lastObject];
  lastObject2 = [v6 lastObject];
  v15 = hearingLocString();
  v16 = [NSString stringWithFormat:v11, lastObject, lastObject2, v15];

  if (![(AXRemoteHearingAidDevice *)self->_device leftAvailable]|| ![(AXRemoteHearingAidDevice *)self->_device rightAvailable])
  {
    if (![(AXRemoteHearingAidDevice *)self->_device leftAvailable])
    {
      v26 = v16;
      goto LABEL_11;
    }

    v27 = v31;
    v28 = v31;
LABEL_15:
    v26 = v28;
    goto LABEL_16;
  }

  firstObject3 = [v12 firstObject];
  lastObject3 = [v12 lastObject];
  if (([firstObject3 isEqualToString:lastObject3] & 1) == 0)
  {

    goto LABEL_14;
  }

  firstObject4 = [v6 firstObject];
  lastObject4 = [v6 lastObject];
  v21 = [firstObject4 isEqualToString:lastObject4];

  if (!v21)
  {
LABEL_14:
    v27 = v31;
    v28 = [NSString stringWithFormat:@"%@\n%@", v31, v16];
    goto LABEL_15;
  }

  v22 = hearingLocString();
  firstObject5 = [v12 firstObject];
  firstObject6 = [v6 firstObject];
  v25 = hearingLocString();
  v26 = [NSString stringWithFormat:v22, firstObject5, firstObject6, v25];

LABEL_11:
  v27 = v31;
LABEL_16:
  v29 = v26;

LABEL_17:

  return v29;
}

- (void)updateTextColor
{
  v9 = +[UIColor labelColor];
  if ([(AXRemoteHearingAidDevice *)self->_device isPaired])
  {
    v3 = +[UIColor tableCellBlueTextColor];

    v4 = +[AXHAServer sharedInstance];
    hearingAidReachable = [v4 hearingAidReachable];

    if (hearingAidReachable)
    {
      v9 = v3;
    }

    else
    {
      v9 = +[UIColor tableCellGrayTextColor];
    }
  }

  titleLabel = [(HearingAidConnectionTableCell *)self titleLabel];
  [titleLabel setTextColor:v9];

  valueLabel = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel setTextColor:v9];

  availabilityLabel = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel setTextColor:v9];
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v78 layoutSubviews];
  titleLabel = [(HearingAidConnectionTableCell *)self titleLabel];
  font = [titleLabel font];
  [font pointSize];
  v6 = [UIFont systemFontOfSize:v5 * 0.8];
  valueLabel = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel setFont:v6];

  valueLabel2 = [(HearingAidConnectionTableCell *)self valueLabel];
  font2 = [valueLabel2 font];
  availabilityLabel = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel setFont:font2];

  traitCollection = [(HearingAidConnectionTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  contentView = [(HearingAidConnectionTableCell *)self contentView];
  [contentView bounds];
  v16 = v15;
  v73 = v17;

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v19 = v18 * 0.5;
  [(HearingAidConnectionTableCell *)self layoutMargins];
  v21 = v16 - v20 - v19;
  if (IsAccessibilityCategory)
  {
    v22 = v16 - v20 - v19;
  }

  else
  {
    v22 = v21 / 3.0;
  }

  availabilityLabel2 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel2 sizeThatFits:{v22, 1.79769313e308}];
  v25 = v24;
  v76 = v26;

  v77 = v25;
  v27 = v21 - v25;
  traitCollection2 = [(HearingAidConnectionTableCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v30 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (v30)
  {
    v27 = v21;
  }

  titleLabel2 = [(HearingAidConnectionTableCell *)self titleLabel];
  [titleLabel2 sizeThatFits:{v27, 1.79769313e308}];
  v33 = v32;
  v35 = v34;

  valueLabel3 = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel3 sizeThatFits:{v27, 1.79769313e308}];
  v38 = v37;
  v40 = v39;

  v72 = v40;
  if (v40 == 0.0)
  {
    v41 = v35;
  }

  else
  {
    v41 = v35 + v40 + 5.0;
  }

  v74 = v38;
  v75 = v33;
  if (v33 >= v38)
  {
    v42 = v33;
  }

  else
  {
    v42 = v38;
  }

  if (v42 < v27 && !IsAccessibilityCategory)
  {
    v43 = v21 - v42;
    if (v43 >= v21 / 2.5)
    {
      v44 = v21 / 2.5;
    }

    else
    {
      v44 = v43;
    }

    availabilityLabel3 = [(HearingAidConnectionTableCell *)self availabilityLabel];
    [availabilityLabel3 sizeThatFits:{v44, 1.79769313e308}];
    v76 = v47;
    v77 = v46;
  }

  titleLabel3 = [(HearingAidConnectionTableCell *)self titleLabel];
  [titleLabel3 frame];
  v50 = v49;

  valueLabel4 = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel4 frame];

  availabilityLabel4 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel4 frame];

  if (IsAccessibilityCategory)
  {
    v53 = v50;
  }

  else
  {
    v53 = v16 - v77 - v19;
  }

  v54 = v50;
  if ([(HearingAidConnectionTableCell *)self _shouldReverseLayoutDirection])
  {
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v54 = v16 - v55 - v33;
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v50 = v16 - v56 - v74;
    if (IsAccessibilityCategory)
    {
      [(HearingAidConnectionTableCell *)self layoutMargins];
      v53 = v16 - v57 - v77;
    }

    else
    {
      v53 = v19;
    }
  }

  v71 = v53;
  v58 = 5.0;
  if (IsAccessibilityCategory)
  {
    v59 = v76;
    v60 = v72;
    v61 = (v73 - (v41 + v76 + 5.0)) * 0.5;
    v62 = floorf(v61);
    v63 = v35 + v62 + 5.0;
    v64 = v72 + v63 + 5.0;
  }

  else
  {
    v60 = v72;
    v65 = (v73 - v41) * 0.5;
    v62 = floorf(v65);
    v63 = v35 + v62 + 5.0;
    v59 = v76;
    v58 = (v73 - v76) * 0.5;
    *&v58 = v58;
    *&v58 = floorf(*&v58);
    v64 = *&v58;
  }

  titleLabel4 = [(HearingAidConnectionTableCell *)self titleLabel];
  [titleLabel4 setFrame:{v54, v62, v75, v35}];

  valueLabel5 = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel5 setFrame:{v50, v63, v74, v60}];

  availabilityLabel5 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel5 setFrame:{v71, v64, v77, v59}];

  if ([(HearingAidConnectionTableCell *)self _shouldReverseLayoutDirection])
  {
    v69 = 0;
  }

  else
  {
    v69 = 2;
  }

  if (IsAccessibilityCategory)
  {
    if ([(HearingAidConnectionTableCell *)self _shouldReverseLayoutDirection])
    {
      v69 = 2;
    }

    else
    {
      v69 = 0;
    }
  }

  availabilityLabel6 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel6 setTextAlignment:v69];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v59.receiver = self;
  v59.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v59 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  contentView = [(HearingAidConnectionTableCell *)self contentView];
  v58 = v5;
  [contentView sizeThatFits:{v5, v7}];
  v10 = v9;

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v12 = v11 * -0.5;
  traitCollection = [(HearingAidConnectionTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v17 = v10 - v16 + v12;
  if (IsAccessibilityCategory)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 / 3.0;
  }

  titleLabel = [(HearingAidConnectionTableCell *)self titleLabel];
  font = [titleLabel font];
  [font pointSize];
  v22 = [UIFont systemFontOfSize:v21 * 0.8];
  valueLabel = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel setFont:v22];

  valueLabel2 = [(HearingAidConnectionTableCell *)self valueLabel];
  font2 = [valueLabel2 font];
  availabilityLabel = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel setFont:font2];

  availabilityLabel2 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [availabilityLabel2 sizeThatFits:{v18, 1.79769313e308}];
  v29 = v28;
  v31 = v17 - v30;
  if (IsAccessibilityCategory)
  {
    v32 = v17;
  }

  else
  {
    v32 = v31;
  }

  titleLabel2 = [(HearingAidConnectionTableCell *)self titleLabel];
  [titleLabel2 sizeThatFits:{v32, 1.79769313e308}];
  v35 = v34;
  v37 = v36;

  valueLabel3 = [(HearingAidConnectionTableCell *)self valueLabel];
  [valueLabel3 sizeThatFits:{v32, 1.79769313e308}];
  v40 = v39;
  v42 = v41;

  if (v42 != 0.0)
  {
    v37 = v37 + v42 + 5.0;
  }

  if (v35 >= v40)
  {
    v43 = v35;
  }

  else
  {
    v43 = v40;
  }

  if (!IsAccessibilityCategory && v43 < v32)
  {
    v44 = v17 - v43;
    if (v44 >= v17 / 2.5)
    {
      v45 = v17 / 2.5;
    }

    else
    {
      v45 = v44;
    }

    availabilityLabel3 = [(HearingAidConnectionTableCell *)self availabilityLabel];
    [availabilityLabel3 sizeThatFits:{v45, 1.79769313e308}];
    v29 = v47;
  }

  if (v37 >= v29)
  {
    v48 = v37;
  }

  else
  {
    v48 = v29;
  }

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v50 = v49;
  [(HearingAidConnectionTableCell *)self layoutMargins];
  if (IsAccessibilityCategory)
  {
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v53 = v37 + 5.0 + v29 + v52;
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v55 = v53 + v54;
  }

  else
  {
    v55 = v51 + v50 + v48;
  }

  if (v7 >= v55)
  {
    v56 = v7;
  }

  else
  {
    v56 = v55;
  }

  v57 = v58;
  result.height = v56;
  result.width = v57;
  return result;
}

- (id)accessibilityHint
{
  device = [(HearingAidConnectionTableCell *)self device];
  if ([device isConnected])
  {
    v3 = @"ConnectionCellHintConnected";
  }

  else
  {
    v3 = @"ConnectionCellHint";
  }

  v4 = hearingSettingsLocString(v3, @"HearingAidSettings");

  return v4;
}

@end