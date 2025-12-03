@interface FBADevicePairingCell
- (NSLayoutConstraint)detailLabelTrailingConstraint;
- (UIActivityIndicatorView)activityIndicator;
- (UIImageView)deviceImage;
- (UIImageView)statusIndicatorImageView;
- (UILabel)detailLabel;
- (UILabel)mainLabel;
- (UILabel)subLabel;
- (double)spaceFromSuperViewToLabel;
- (void)awakeFromNib;
- (void)updateWithDevice:(id)device showsDetail:(BOOL)detail showsTransport:(BOOL)transport isSelected:(BOOL)selected;
@end

@implementation FBADevicePairingCell

- (double)spaceFromSuperViewToLabel
{
  mainLabel = [(FBADevicePairingCell *)self mainLabel];
  [mainLabel frame];
  v4 = v3;

  return v4;
}

- (void)awakeFromNib
{
  v12.receiver = self;
  v12.super_class = FBADevicePairingCell;
  [(FBADevicePairingCell *)&v12 awakeFromNib];
  mainLabel = [(FBADevicePairingCell *)self mainLabel];
  [mainLabel setText:&stru_1000E2210];

  v4 = +[UIColor labelColor];
  mainLabel2 = [(FBADevicePairingCell *)self mainLabel];
  [mainLabel2 setTextColor:v4];

  subLabel = [(FBADevicePairingCell *)self subLabel];
  [subLabel setText:&stru_1000E2210];

  v7 = +[UIColor secondaryLabelColor];
  subLabel2 = [(FBADevicePairingCell *)self subLabel];
  [subLabel2 setTextColor:v7];

  deviceImage = [(FBADevicePairingCell *)self deviceImage];
  [deviceImage setImage:0];

  activityIndicator = [(FBADevicePairingCell *)self activityIndicator];
  [activityIndicator stopAnimating];

  detailLabelTrailingConstraint = [(FBADevicePairingCell *)self detailLabelTrailingConstraint];
  [detailLabelTrailingConstraint constant];
  [(FBADevicePairingCell *)self setDetailLabelTrailingConstraintInitial:?];
}

- (void)updateWithDevice:(id)device showsDetail:(BOOL)detail showsTransport:(BOOL)transport isSelected:(BOOL)selected
{
  selectedCopy = selected;
  transportCopy = transport;
  detailCopy = detail;
  deviceCopy = device;
  displayType = [deviceCopy displayType];
  detailLabel = [(FBADevicePairingCell *)self detailLabel];
  [detailLabel setText:&stru_1000E2210];

  statusIndicatorImageView = [(FBADevicePairingCell *)self statusIndicatorImageView];
  [statusIndicatorImageView setHidden:0];

  if ([deviceCopy isCurrentDevice])
  {
    deviceClass = [deviceCopy deviceClass];
    lowercaseString = [deviceClass lowercaseString];
    v16 = [lowercaseString containsString:@"iphone"];

    if (v16)
    {
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"This iPhone";
    }

    else
    {
      lowercaseString2 = [deviceClass lowercaseString];
      v21 = [lowercaseString2 containsString:@"ipad"];

      if (v21)
      {
        v17 = +[NSBundle mainBundle];
        v18 = v17;
        v19 = @"This iPad";
      }

      else
      {
        lowercaseString3 = [deviceClass lowercaseString];
        v24 = [lowercaseString3 containsString:@"ipod"];

        if (v24)
        {
          v17 = +[NSBundle mainBundle];
          v18 = v17;
          v19 = @"This iPod";
        }

        else
        {
          lowercaseString4 = [deviceClass lowercaseString];
          v26 = [lowercaseString4 containsString:@"mac"];

          v17 = +[NSBundle mainBundle];
          v18 = v17;
          if (!v26)
          {
            v50 = [v17 localizedStringForKey:@"THIS_DEVICE_FORMAT" value:@"This %@" table:0];

            deviceClass2 = [deviceCopy deviceClass];
            v18 = v50;
            v27 = [NSString stringWithFormat:v50, deviceClass2];

            displayType = deviceClass2;
            goto LABEL_15;
          }

          v19 = @"This Mac";
        }
      }
    }

    v27 = [v17 localizedStringForKey:v19 value:v19 table:0];
LABEL_15:

    statusIndicatorImageView3 = +[UIColor systemGreenColor];
    statusIndicatorImageView2 = [(FBADevicePairingCell *)self statusIndicatorImageView];
    [statusIndicatorImageView2 setTintColor:statusIndicatorImageView3];

    displayType = v27;
    goto LABEL_16;
  }

  if ([deviceCopy isVisibleToDED])
  {
    +[UIColor systemGreenColor];
  }

  else
  {
    +[UIColor systemGrayColor];
  }
  deviceClass = ;
  statusIndicatorImageView3 = [(FBADevicePairingCell *)self statusIndicatorImageView];
  [statusIndicatorImageView3 setHidden:deviceClass != 0];
LABEL_16:

  displayName = [deviceCopy displayName];
  mainLabel = [(FBADevicePairingCell *)self mainLabel];
  [mainLabel setText:displayName];

  subLabel = [(FBADevicePairingCell *)self subLabel];
  [subLabel setText:displayType];

  if (selectedCopy)
  {
    [(FBADevicePairingCell *)self setAccessoryType:3];
    if (!transportCopy)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (detailCopy)
  {
    if ([deviceCopy isCurrentDevice] && !transportCopy)
    {
      goto LABEL_22;
    }
  }

  else if (!transportCopy)
  {
LABEL_22:
    [(FBADevicePairingCell *)self setAccessoryType:0];
    [(FBADevicePairingCell *)self detailLabelTrailingConstraintInitial];
    v33 = v32;
    detailLabelTrailingConstraint = [(FBADevicePairingCell *)self detailLabelTrailingConstraint];
    v35 = detailLabelTrailingConstraint;
    v36 = v33;
    goto LABEL_25;
  }

  [(FBADevicePairingCell *)self setAccessoryType:4];
  detailLabelTrailingConstraint = [(FBADevicePairingCell *)self detailLabelTrailingConstraint];
  v35 = detailLabelTrailingConstraint;
  v36 = 0.0;
LABEL_25:
  [detailLabelTrailingConstraint setConstant:v36];

  if (transportCopy)
  {
LABEL_26:
    mainLabel2 = [(FBADevicePairingCell *)self mainLabel];
    text = [mainLabel2 text];
    transportsForDisplay = [deviceCopy transportsForDisplay];
    v40 = [NSString stringWithFormat:@"%@ (%@)", text, transportsForDisplay];
    subLabel2 = [(FBADevicePairingCell *)self subLabel];
    [subLabel2 setText:v40];
  }

LABEL_27:
  v42 = +[UIScreen mainScreen];
  [v42 scale];
  *&v43 = v43;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100026EC8;
  v52[3] = &unk_1000DEFF0;
  v52[4] = self;
  [deviceCopy fetchIconImageDataForScale:v52 completionCompletion:v43];

  traitCollection = [(FBADevicePairingCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  subLabel3 = [(FBADevicePairingCell *)self subLabel];
  [subLabel3 setNumberOfLines:!IsAccessibilityCategory];

  mainLabel3 = [(FBADevicePairingCell *)self mainLabel];
  [mainLabel3 setNumberOfLines:!IsAccessibilityCategory];

  contentView = [(FBADevicePairingCell *)self contentView];
  [contentView setNeedsDisplay];
}

- (UIImageView)deviceImage
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceImage);

  return WeakRetained;
}

- (UILabel)mainLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_mainLabel);

  return WeakRetained;
}

- (UILabel)detailLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_detailLabel);

  return WeakRetained;
}

- (UIImageView)statusIndicatorImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_statusIndicatorImageView);

  return WeakRetained;
}

- (UIActivityIndicatorView)activityIndicator
{
  WeakRetained = objc_loadWeakRetained(&self->_activityIndicator);

  return WeakRetained;
}

- (NSLayoutConstraint)detailLabelTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_detailLabelTrailingConstraint);

  return WeakRetained;
}

- (UILabel)subLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subLabel);

  return WeakRetained;
}

@end