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
- (void)updateWithDevice:(id)a3 showsDetail:(BOOL)a4 showsTransport:(BOOL)a5 isSelected:(BOOL)a6;
@end

@implementation FBADevicePairingCell

- (double)spaceFromSuperViewToLabel
{
  v2 = [(FBADevicePairingCell *)self mainLabel];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (void)awakeFromNib
{
  v12.receiver = self;
  v12.super_class = FBADevicePairingCell;
  [(FBADevicePairingCell *)&v12 awakeFromNib];
  v3 = [(FBADevicePairingCell *)self mainLabel];
  [v3 setText:&stru_1000E2210];

  v4 = +[UIColor labelColor];
  v5 = [(FBADevicePairingCell *)self mainLabel];
  [v5 setTextColor:v4];

  v6 = [(FBADevicePairingCell *)self subLabel];
  [v6 setText:&stru_1000E2210];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(FBADevicePairingCell *)self subLabel];
  [v8 setTextColor:v7];

  v9 = [(FBADevicePairingCell *)self deviceImage];
  [v9 setImage:0];

  v10 = [(FBADevicePairingCell *)self activityIndicator];
  [v10 stopAnimating];

  v11 = [(FBADevicePairingCell *)self detailLabelTrailingConstraint];
  [v11 constant];
  [(FBADevicePairingCell *)self setDetailLabelTrailingConstraintInitial:?];
}

- (void)updateWithDevice:(id)a3 showsDetail:(BOOL)a4 showsTransport:(BOOL)a5 isSelected:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [v10 displayType];
  v12 = [(FBADevicePairingCell *)self detailLabel];
  [v12 setText:&stru_1000E2210];

  v13 = [(FBADevicePairingCell *)self statusIndicatorImageView];
  [v13 setHidden:0];

  if ([v10 isCurrentDevice])
  {
    v14 = [v10 deviceClass];
    v15 = [v14 lowercaseString];
    v16 = [v15 containsString:@"iphone"];

    if (v16)
    {
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"This iPhone";
    }

    else
    {
      v20 = [v14 lowercaseString];
      v21 = [v20 containsString:@"ipad"];

      if (v21)
      {
        v17 = +[NSBundle mainBundle];
        v18 = v17;
        v19 = @"This iPad";
      }

      else
      {
        v23 = [v14 lowercaseString];
        v24 = [v23 containsString:@"ipod"];

        if (v24)
        {
          v17 = +[NSBundle mainBundle];
          v18 = v17;
          v19 = @"This iPod";
        }

        else
        {
          v25 = [v14 lowercaseString];
          v26 = [v25 containsString:@"mac"];

          v17 = +[NSBundle mainBundle];
          v18 = v17;
          if (!v26)
          {
            v50 = [v17 localizedStringForKey:@"THIS_DEVICE_FORMAT" value:@"This %@" table:0];

            v51 = [v10 deviceClass];
            v18 = v50;
            v27 = [NSString stringWithFormat:v50, v51];

            v11 = v51;
            goto LABEL_15;
          }

          v19 = @"This Mac";
        }
      }
    }

    v27 = [v17 localizedStringForKey:v19 value:v19 table:0];
LABEL_15:

    v22 = +[UIColor systemGreenColor];
    v28 = [(FBADevicePairingCell *)self statusIndicatorImageView];
    [v28 setTintColor:v22];

    v11 = v27;
    goto LABEL_16;
  }

  if ([v10 isVisibleToDED])
  {
    +[UIColor systemGreenColor];
  }

  else
  {
    +[UIColor systemGrayColor];
  }
  v14 = ;
  v22 = [(FBADevicePairingCell *)self statusIndicatorImageView];
  [v22 setHidden:v14 != 0];
LABEL_16:

  v29 = [v10 displayName];
  v30 = [(FBADevicePairingCell *)self mainLabel];
  [v30 setText:v29];

  v31 = [(FBADevicePairingCell *)self subLabel];
  [v31 setText:v11];

  if (v6)
  {
    [(FBADevicePairingCell *)self setAccessoryType:3];
    if (!v7)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v8)
  {
    if ([v10 isCurrentDevice] && !v7)
    {
      goto LABEL_22;
    }
  }

  else if (!v7)
  {
LABEL_22:
    [(FBADevicePairingCell *)self setAccessoryType:0];
    [(FBADevicePairingCell *)self detailLabelTrailingConstraintInitial];
    v33 = v32;
    v34 = [(FBADevicePairingCell *)self detailLabelTrailingConstraint];
    v35 = v34;
    v36 = v33;
    goto LABEL_25;
  }

  [(FBADevicePairingCell *)self setAccessoryType:4];
  v34 = [(FBADevicePairingCell *)self detailLabelTrailingConstraint];
  v35 = v34;
  v36 = 0.0;
LABEL_25:
  [v34 setConstant:v36];

  if (v7)
  {
LABEL_26:
    v37 = [(FBADevicePairingCell *)self mainLabel];
    v38 = [v37 text];
    v39 = [v10 transportsForDisplay];
    v40 = [NSString stringWithFormat:@"%@ (%@)", v38, v39];
    v41 = [(FBADevicePairingCell *)self subLabel];
    [v41 setText:v40];
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
  [v10 fetchIconImageDataForScale:v52 completionCompletion:v43];

  v44 = [(FBADevicePairingCell *)self traitCollection];
  v45 = [v44 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v45);

  v47 = [(FBADevicePairingCell *)self subLabel];
  [v47 setNumberOfLines:!IsAccessibilityCategory];

  v48 = [(FBADevicePairingCell *)self mainLabel];
  [v48 setNumberOfLines:!IsAccessibilityCategory];

  v49 = [(FBADevicePairingCell *)self contentView];
  [v49 setNeedsDisplay];
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