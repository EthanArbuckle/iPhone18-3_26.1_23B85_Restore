@interface AXHearingAidDetailCell
+ (double)heightRequiredForDevice:(id)device;
- (AXHearingAidDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier andDevice:(id)device;
- (id)accessibilityValue;
- (id)imageForBatteryLevel:(double)level;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateAvailability;
- (void)updateDetails;
@end

@implementation AXHearingAidDetailCell

+ (double)heightRequiredForDevice:(id)device
{
  deviceCopy = device;
  manufacturer = [deviceCopy manufacturer];
  firstObject = [manufacturer firstObject];
  model = [deviceCopy model];
  firstObject2 = [model firstObject];
  v8 = [NSString stringWithFormat:@"%@ %@", firstObject, firstObject2];

  manufacturer2 = [deviceCopy manufacturer];
  lastObject = [manufacturer2 lastObject];
  model2 = [deviceCopy model];

  lastObject2 = [model2 lastObject];
  v13 = [NSString stringWithFormat:@"%@ %@", lastObject, lastObject2];

  v14 = 65.0;
  if (([v8 isEqualToString:v13] & 1) == 0 && objc_msgSend(v8, "length") >= 2)
  {
    if ([v13 length] <= 1)
    {
      v14 = 65.0;
    }

    else
    {
      v14 = 80.0;
    }
  }

  return v14;
}

- (AXHearingAidDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier andDevice:(id)device
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = AXHearingAidDetailCell;
  v9 = [(AXHearingAidDetailCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(AXHearingAidDetailCell *)v9 setDevice:deviceCopy];
    v10->_bluetoothAvailable = 1;
    v11 = +[HUAccessoryManager sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_7D2C;
    v16[3] = &unk_48AD0;
    v12 = v10;
    v17 = v12;
    [v11 registerBluetoothStateBlock:v16 withListener:v12];

    v13 = objc_alloc_init(NSNumberFormatter);
    v14 = v12[21];
    v12[21] = v13;

    [v12[21] setNumberStyle:3];
    [v12[21] setMaximumFractionDigits:0];
    [v12 updateAvailability];
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = AXHearingAidDetailCell;
  specifierCopy = specifier;
  [(AXHearingAidDetailCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  [(AXHearingAidDetailCell *)self setDevice:userInfo];
  [(AXHearingAidDetailCell *)self updateAvailability];
}

- (void)prepareForReuse
{
  v14.receiver = self;
  v14.super_class = AXHearingAidDetailCell;
  [(AXHearingAidDetailCell *)&v14 prepareForReuse];
  device = [(AXHearingAidDetailCell *)self device];

  if (device)
  {
    [(AXHearingAidDetailCell *)self setDevice:0];
  }

  leftLabel = self->_leftLabel;
  if (leftLabel)
  {
    [(UILabel *)leftLabel removeFromSuperview];
    v5 = self->_leftLabel;
    self->_leftLabel = 0;
  }

  leftStatusIndicator = self->_leftStatusIndicator;
  if (leftStatusIndicator)
  {
    [(UIView *)leftStatusIndicator removeFromSuperview];
    v7 = self->_leftStatusIndicator;
    self->_leftStatusIndicator = 0;
  }

  rightLabel = self->_rightLabel;
  if (rightLabel)
  {
    [(UILabel *)rightLabel removeFromSuperview];
    v9 = self->_rightLabel;
    self->_rightLabel = 0;
  }

  rightStatusIndicator = self->_rightStatusIndicator;
  if (rightStatusIndicator)
  {
    [(UIView *)rightStatusIndicator removeFromSuperview];
    v11 = self->_rightStatusIndicator;
    self->_rightStatusIndicator = 0;
  }

  loadingIndicator = self->_loadingIndicator;
  if (loadingIndicator)
  {
    [(UIActivityIndicatorView *)loadingIndicator removeFromSuperview];
    v13 = self->_loadingIndicator;
    self->_loadingIndicator = 0;
  }
}

- (void)updateDetails
{
  manufacturer = [(AXRemoteHearingAidDevice *)self->_device manufacturer];
  firstObject = [manufacturer firstObject];

  model = [(AXRemoteHearingAidDevice *)self->_device model];
  firstObject2 = [model firstObject];

  manufacturer2 = [(AXRemoteHearingAidDevice *)self->_device manufacturer];
  lastObject = [manufacturer2 lastObject];

  model2 = [(AXRemoteHearingAidDevice *)self->_device model];
  lastObject2 = [model2 lastObject];

  if (firstObject)
  {
    v11 = firstObject2 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = &stru_49868;
  }

  else
  {
    v12 = [NSString stringWithFormat:@"%@ %@", firstObject, firstObject2];
  }

  if (lastObject)
  {
    v13 = lastObject2 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = &stru_49868;
  }

  else
  {
    v14 = [NSString stringWithFormat:@"%@ %@", lastObject, lastObject2];
  }

  if ([(AXRemoteHearingAidDevice *)self->_device leftAvailable]&& [(AXRemoteHearingAidDevice *)self->_device rightAvailable]&& ([(__CFString *)v12 isEqualToString:v14]& 1) == 0 && [(__CFString *)v12 length]>= 2 && [(__CFString *)v14 length]>= 2)
  {
    v22 = [NSString stringWithFormat:@"%@\n%@", v14, v12];
    v15 = 2;
  }

  else
  {
    if ([(__CFString *)v12 length]<= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    v22 = v16;
    v15 = 1;
  }

  valueLabel = [(AXHearingAidDetailCell *)self valueLabel];
  [valueLabel setNumberOfLines:v15];

  valueLabel2 = [(AXHearingAidDetailCell *)self valueLabel];
  [valueLabel2 setText:v22];

  valueLabel3 = [(AXHearingAidDetailCell *)self valueLabel];
  text = [valueLabel3 text];

  if (!text)
  {
    valueLabel4 = [(AXHearingAidDetailCell *)self valueLabel];
    [valueLabel4 setText:@" "];
  }
}

- (void)dealloc
{
  [(UILabel *)self->_leftLabel removeFromSuperview];
  [(UIView *)self->_leftStatusIndicator removeFromSuperview];
  [(UILabel *)self->_rightLabel removeFromSuperview];
  [(UIView *)self->_rightStatusIndicator removeFromSuperview];
  [(UIActivityIndicatorView *)self->_loadingIndicator removeFromSuperview];
  [(AXHearingAidDetailCell *)self setDevice:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXHearingAidDetailCell;
  [(AXHearingAidDetailCell *)&v4 dealloc];
}

- (id)imageForBatteryLevel:(double)level
{
  v4 = accessibilityHearingAidImageNamed();
  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = v10;
  v21.width = v6;
  v21.height = v8;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v11);

  [v4 drawAtPoint:{CGPointZero.x, CGPointZero.y}];
  v12 = level * 19.0;
  v13 = fmax(ceilf(v12) + 0.0, 3.0);
  v14 = +[UIColor systemGrayColor];
  [v14 set];

  v15 = [UIBezierPath bezierPathWithRect:2.0, 6.5, v13, 7.0];
  [v15 fill];

  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  imageFlippedForRightToLeftLayoutDirection = [v16 imageFlippedForRightToLeftLayoutDirection];

  v18 = [imageFlippedForRightToLeftLayoutDirection imageWithRenderingMode:2];

  return v18;
}

- (void)updateAvailability
{
  device = [(AXHearingAidDetailCell *)self device];
  if ([device leftAvailable])
  {
    leftLabel = self->_leftLabel;

    if (leftLabel)
    {
      goto LABEL_5;
    }

    v5 = objc_alloc_init(UILabel);
    v6 = self->_leftLabel;
    self->_leftLabel = v5;

    v7 = self->_leftLabel;
    v8 = +[UIColor clearColor];
    [(UILabel *)v7 setBackgroundColor:v8];

    v9 = self->_leftLabel;
    v10 = hearingLocString();
    [(UILabel *)v9 setText:v10];

    v11 = self->_leftLabel;
    v12 = [UIFont systemFontOfSize:14.0];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)self->_leftLabel sizeToFit];
    v13 = self->_leftLabel;
    v14 = +[UIColor systemGrayColor];
    [(UILabel *)v13 setTextColor:v14];

    device = [(AXHearingAidDetailCell *)self contentView];
    [device addSubview:self->_leftLabel];
  }

LABEL_5:
  device2 = [(AXHearingAidDetailCell *)self device];
  if ([device2 rightAvailable])
  {
    rightLabel = self->_rightLabel;

    if (rightLabel)
    {
      goto LABEL_9;
    }

    v17 = objc_alloc_init(UILabel);
    v18 = self->_rightLabel;
    self->_rightLabel = v17;

    v19 = self->_rightLabel;
    v20 = +[UIColor clearColor];
    [(UILabel *)v19 setBackgroundColor:v20];

    v21 = self->_rightLabel;
    v22 = hearingLocString();
    [(UILabel *)v21 setText:v22];

    v23 = self->_rightLabel;
    v24 = [UIFont systemFontOfSize:14.0];
    [(UILabel *)v23 setFont:v24];

    [(UILabel *)self->_rightLabel sizeToFit];
    v25 = self->_rightLabel;
    v26 = +[UIColor systemGrayColor];
    [(UILabel *)v25 setTextColor:v26];

    device2 = [(AXHearingAidDetailCell *)self contentView];
    [device2 addSubview:self->_rightLabel];
  }

LABEL_9:
  v27 = HCLogHearingAids();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    device3 = [(AXHearingAidDetailCell *)self device];
    isPaired = [device3 isPaired];
    v30 = +[AXHAServer sharedInstance];
    hearingAidReachable = [v30 hearingAidReachable];
    bluetoothAvailable = self->_bluetoothAvailable;
    v78[0] = 67109632;
    v78[1] = isPaired;
    v79 = 1024;
    v80 = hearingAidReachable;
    v81 = 1024;
    v82 = bluetoothAvailable;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "SPINNER hidden: paired %d, reachable %d, BT on %d", v78, 0x14u);
  }

  device4 = [(AXHearingAidDetailCell *)self device];
  if (![device4 isPaired])
  {
    goto LABEL_19;
  }

  v34 = +[AXHAServer sharedInstance];
  if (([v34 hearingAidReachable] & 1) == 0)
  {

LABEL_19:
    goto LABEL_20;
  }

  v35 = self->_bluetoothAvailable;

  if (v35)
  {
    [(UIActivityIndicatorView *)self->_loadingIndicator removeFromSuperview];
    loadingIndicator = self->_loadingIndicator;
    self->_loadingIndicator = 0;

    device5 = [(AXHearingAidDetailCell *)self device];
    leftAvailable = [device5 leftAvailable];

    if (leftAvailable)
    {
      [(UIView *)self->_leftStatusIndicator removeFromSuperview];
      leftStatusIndicator = self->_leftStatusIndicator;
      self->_leftStatusIndicator = 0;

      device6 = [(AXHearingAidDetailCell *)self device];
      isLeftConnected = [device6 isLeftConnected];

      if (isLeftConnected)
      {
        device7 = [(AXHearingAidDetailCell *)self device];
        v43 = [device7 propertyIsAvailable:4 forEar:2];

        if (v43)
        {
          v44 = [UIImageView alloc];
          [(AXRemoteHearingAidDevice *)self->_device leftBatteryLevel];
          v45 = [(AXHearingAidDetailCell *)self imageForBatteryLevel:?];
          v46 = [v44 initWithImage:v45];
          v47 = self->_leftStatusIndicator;
          self->_leftStatusIndicator = v46;

          v48 = self->_leftStatusIndicator;
          v49 = +[UIColor systemGrayColor];
          [(UIView *)v48 setTintColor:v49];

          [(UIView *)self->_leftStatusIndicator sizeToFit];
          contentView = [(AXHearingAidDetailCell *)self contentView];
          [contentView addSubview:self->_leftStatusIndicator];
        }
      }

      else
      {
        v59 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
        v60 = self->_leftStatusIndicator;
        self->_leftStatusIndicator = v59;

        contentView2 = [(AXHearingAidDetailCell *)self contentView];
        [contentView2 addSubview:self->_leftStatusIndicator];

        [(UIView *)self->_leftStatusIndicator startAnimating];
      }
    }

    device8 = [(AXHearingAidDetailCell *)self device];
    rightAvailable = [device8 rightAvailable];

    if (!rightAvailable)
    {
      goto LABEL_30;
    }

    [(UIView *)self->_rightStatusIndicator removeFromSuperview];
    rightStatusIndicator = self->_rightStatusIndicator;
    self->_rightStatusIndicator = 0;

    device9 = [(AXHearingAidDetailCell *)self device];
    isRightConnected = [device9 isRightConnected];

    if (isRightConnected)
    {
      device10 = [(AXHearingAidDetailCell *)self device];
      v68 = [device10 propertyIsAvailable:4 forEar:4];

      if (v68)
      {
        v69 = [UIImageView alloc];
        [(AXRemoteHearingAidDevice *)self->_device rightBatteryLevel];
        v70 = [(AXHearingAidDetailCell *)self imageForBatteryLevel:?];
        v71 = [v69 initWithImage:v70];
        v72 = self->_rightStatusIndicator;
        self->_rightStatusIndicator = v71;

        v73 = self->_rightStatusIndicator;
        v74 = +[UIColor systemGrayColor];
        [(UIView *)v73 setTintColor:v74];

        [(UIView *)self->_rightStatusIndicator sizeToFit];
        contentView3 = [(AXHearingAidDetailCell *)self contentView];
        [contentView3 addSubview:self->_rightStatusIndicator];
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v75 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v76 = self->_rightStatusIndicator;
    self->_rightStatusIndicator = v75;

    contentView4 = [(AXHearingAidDetailCell *)self contentView];
    [contentView4 addSubview:self->_rightStatusIndicator];

    v58 = self->_rightStatusIndicator;
LABEL_23:
    [(UIActivityIndicatorView *)v58 startAnimating];
    goto LABEL_30;
  }

LABEL_20:
  contentView3 = [(AXHearingAidDetailCell *)self device];
  if (![contentView3 isPaired])
  {
LABEL_29:

    goto LABEL_30;
  }

  v52 = self->_loadingIndicator;

  if (!v52)
  {
    [(UIView *)self->_leftStatusIndicator removeFromSuperview];
    [(UIView *)self->_rightStatusIndicator removeFromSuperview];
    v53 = self->_leftStatusIndicator;
    self->_leftStatusIndicator = 0;

    v54 = self->_rightStatusIndicator;
    self->_rightStatusIndicator = 0;

    v55 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v56 = self->_loadingIndicator;
    self->_loadingIndicator = v55;

    contentView5 = [(AXHearingAidDetailCell *)self contentView];
    [contentView5 addSubview:self->_loadingIndicator];

    v58 = self->_loadingIndicator;
    goto LABEL_23;
  }

LABEL_30:
  [(AXHearingAidDetailCell *)self updateDetails];
}

- (void)layoutSubviews
{
  v92.receiver = self;
  v92.super_class = AXHearingAidDetailCell;
  [(AXHearingAidDetailCell *)&v92 layoutSubviews];
  [(AXHearingAidDetailCell *)self updateAvailability];
  contentView = [(AXHearingAidDetailCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v93.origin.x = v5;
  v93.origin.y = v7;
  v93.size.width = v9;
  v93.size.height = v11;
  Width = CGRectGetWidth(v93);
  rightLabel = self->_rightLabel;
  if (rightLabel)
  {
    [(UILabel *)rightLabel frame];
    v15 = v14;
    v17 = v16;
    if ([UIApp userInterfaceLayoutDirection])
    {
      v18 = 45.0;
    }

    else
    {
      v94.origin.x = v5;
      v94.origin.y = v7;
      v94.size.width = v9;
      v94.size.height = v11;
      v18 = CGRectGetWidth(v94) + -45.0 - v15;
    }

    v20 = 16.0;
    if (!self->_leftLabel)
    {
      contentView2 = [(AXHearingAidDetailCell *)self contentView];
      [contentView2 frame];
      v23 = v22 * 0.5 - v17 * 0.5;
      v20 = floorf(v23);
    }

    [(UILabel *)self->_rightLabel setFrame:v18, v20, v15, v17];
    [(UILabel *)self->_rightLabel setHidden:self->_loadingIndicator != 0];
    if ([UIApp userInterfaceLayoutDirection])
    {
      contentView3 = [(AXHearingAidDetailCell *)self contentView];
      [contentView3 bounds];
      v95.size.height = v17;
      v25 = v11;
      v26 = v9;
      v27 = v7;
      v28 = v5;
      v30 = v29;
      v95.origin.x = v18;
      v95.origin.y = v20;
      v95.size.width = v15;
      MinX = v30 - CGRectGetMaxX(v95);
      v5 = v28;
      v7 = v27;
      v9 = v26;
      v11 = v25;
    }

    else
    {
      v96.origin.x = v18;
      v96.origin.y = v20;
      v96.size.width = v15;
      v96.size.height = v17;
      MinX = CGRectGetMinX(v96);
    }

    rightStatusIndicator = self->_rightStatusIndicator;
    if (rightStatusIndicator)
    {
      v32 = MinX;
      [(UIView *)rightStatusIndicator frame];
      v34 = v33;
      v36 = v35;
      userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
      v38 = 15.0;
      if (!userInterfaceLayoutDirection)
      {
        v97.origin.x = v5;
        v97.origin.y = v7;
        v97.size.width = v9;
        v97.size.height = v11;
        v38 = CGRectGetWidth(v97) + -40.0;
      }

      [(UIView *)self->_rightStatusIndicator setFrame:v38, v20 + -1.0, v34, v36];
      MinX = v32;
    }
  }

  else
  {
    MinX = Width;
  }

  leftLabel = self->_leftLabel;
  if (leftLabel)
  {
    [(UILabel *)leftLabel frame];
    v41 = v40;
    v43 = v42;
    if ([UIApp userInterfaceLayoutDirection])
    {
      v44 = 45.0;
    }

    else
    {
      v98.origin.x = v5;
      v98.origin.y = v7;
      v98.size.width = v9;
      v98.size.height = v11;
      v44 = CGRectGetWidth(v98) + -45.0 - v41;
    }

    if (self->_rightLabel)
    {
      v45 = 32.0;
    }

    else
    {
      contentView4 = [(AXHearingAidDetailCell *)self contentView];
      [contentView4 frame];
      v48 = v47 * 0.5 - v43 * 0.5;
      v45 = floorf(v48);
    }

    [(UILabel *)self->_leftLabel setFrame:v44, v45, v41, v43];
    [(UILabel *)self->_leftLabel setHidden:self->_loadingIndicator != 0];
    if ([UIApp userInterfaceLayoutDirection])
    {
      contentView5 = [(AXHearingAidDetailCell *)self contentView];
      [contentView5 bounds];
      v99.size.height = v43;
      v50 = v11;
      v51 = v9;
      v52 = v7;
      v53 = v5;
      v55 = v54;
      v99.origin.x = v44;
      v99.origin.y = v45;
      v99.size.width = v41;
      MinX = v55 - CGRectGetMaxX(v99);
      v5 = v53;
      v7 = v52;
      v9 = v51;
      v11 = v50;
    }

    else
    {
      v100.origin.x = v44;
      v100.origin.y = v45;
      v100.size.width = v41;
      v100.size.height = v43;
      MinX = CGRectGetMinX(v100);
    }

    leftStatusIndicator = self->_leftStatusIndicator;
    if (leftStatusIndicator)
    {
      v57 = MinX;
      [(UIView *)leftStatusIndicator frame];
      v59 = v58;
      v61 = v60;
      userInterfaceLayoutDirection2 = [UIApp userInterfaceLayoutDirection];
      v63 = 15.0;
      if (!userInterfaceLayoutDirection2)
      {
        v101.origin.x = v5;
        v101.origin.y = v7;
        v101.size.width = v9;
        v101.size.height = v11;
        v63 = CGRectGetWidth(v101) + -40.0;
      }

      [(UIView *)self->_leftStatusIndicator setFrame:v63, v45 + -1.0, v59, v61];
      MinX = v57;
    }
  }

  loadingIndicator = self->_loadingIndicator;
  if (loadingIndicator)
  {
    [(UIActivityIndicatorView *)loadingIndicator frame];
    v66 = v65;
    v68 = v67;
    if ([UIApp userInterfaceLayoutDirection])
    {
      v69 = 40.0;
    }

    else
    {
      v102.origin.x = v5;
      v102.origin.y = v7;
      v102.size.width = v9;
      v102.size.height = v11;
      v69 = CGRectGetWidth(v102) + -40.0;
    }

    contentView6 = [(AXHearingAidDetailCell *)self contentView];
    [contentView6 frame];
    v72 = v71 * 0.5 - v68 * 0.5;
    v73 = floorf(v72);

    [(UIActivityIndicatorView *)self->_loadingIndicator setFrame:v69, v73, v66, v68];
  }

  titleLabel = [(AXHearingAidDetailCell *)self titleLabel];
  [titleLabel setEnabled:1];
  [titleLabel frame];
  v76 = v75;
  v77 = MinX + -10.0 + -10.0;
  v78 = 15.0;
  v79 = 15.0;
  if ([UIApp userInterfaceLayoutDirection])
  {
    contentView7 = [(AXHearingAidDetailCell *)self contentView];
    [contentView7 frame];
    v79 = v81 - v77 + -15.0;
  }

  v91 = 16.0;
  text = [titleLabel text];
  font = [titleLabel font];
  v103.origin.y = 14.0;
  v103.origin.x = v79;
  v103.size.width = MinX + -10.0 + -10.0;
  v103.size.height = v76;
  [text _legacy_sizeWithFont:font minFontSize:&v91 actualFontSize:objc_msgSend(titleLabel forWidth:"lineBreakMode") lineBreakMode:{16.0, CGRectGetWidth(v103)}];

  v84 = v91;
  if (v91 > 18.0)
  {
    v84 = 18.0;
  }

  v85 = [UIFont boldSystemFontOfSize:v84];
  [titleLabel setFont:v85];

  [titleLabel setFrame:{v79, 14.0, MinX + -10.0 + -10.0, v76}];
  valueLabel = [(AXHearingAidDetailCell *)self valueLabel];
  v87 = +[UIColor labelColor];
  [valueLabel setTextColor:v87];

  [valueLabel setEnabled:1];
  v88 = [UIFont systemFontOfSize:14.0];
  [valueLabel setFont:v88];

  [valueLabel setTextAlignment:4];
  [valueLabel frame];
  if ([UIApp userInterfaceLayoutDirection])
  {
    contentView8 = [(AXHearingAidDetailCell *)self contentView];
    [contentView8 frame];
    v78 = v90 - v77 + -15.0;
  }

  [valueLabel setFrame:{v78, 36.0, MinX + -10.0 + -10.0, v76 * objc_msgSend(valueLabel, "numberOfLines")}];
}

- (id)accessibilityValue
{
  device = [(AXHearingAidDetailCell *)self device];
  isConnected = [device isConnected];

  if (isConnected)
  {
    device2 = [(AXHearingAidDetailCell *)self device];
    leftAvailable = [device2 leftAvailable];

    if (leftAvailable)
    {
      v7 = hearingLocString();
      numberFormatter = self->_numberFormatter;
      [(AXRemoteHearingAidDevice *)self->_device leftBatteryLevel];
      *&v9 = v9;
      v10 = [NSNumber numberWithFloat:v9];
      v11 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v10];
      accessibilityValue2 = [NSString stringWithFormat:v7, v11];
    }

    else
    {
      accessibilityValue2 = 0;
    }

    device3 = [(AXHearingAidDetailCell *)self device];
    rightAvailable = [device3 rightAvailable];

    if (rightAvailable)
    {
      v18 = hearingLocString();
      v19 = self->_numberFormatter;
      [(AXRemoteHearingAidDevice *)self->_device rightBatteryLevel];
      *&v20 = v20;
      v21 = [NSNumber numberWithFloat:v20];
      v22 = [(NSNumberFormatter *)v19 stringFromNumber:v21];
      v13 = [NSString stringWithFormat:v18, v22];
    }

    else
    {
      v13 = 0;
    }

    v26.receiver = self;
    v26.super_class = AXHearingAidDetailCell;
    accessibilityValue = [(AXHearingAidDetailCell *)&v26 accessibilityValue];
    v24 = hearingLocString();
    v15 = __AXStringForVariables();
  }

  else
  {
    v25.receiver = self;
    v25.super_class = AXHearingAidDetailCell;
    accessibilityValue2 = [(AXHearingAidDetailCell *)&v25 accessibilityValue];
    v13 = hearingLocString();
    accessibilityValue = [(UILabel *)self->_rightLabel accessibilityLabel];
    v15 = __AXStringForVariables();
  }

  return v15;
}

@end