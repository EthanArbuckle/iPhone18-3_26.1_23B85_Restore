@interface TransitLineDisambiguationCell
- (TransitLineDisambiguationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_targetCellHeight;
- (id)_fontProviderForMessageLabel;
- (void)_updateMessageLabelLeadingMargin;
- (void)addConstraints;
- (void)hideSpinner;
- (void)setLabelText:(id)a3;
- (void)setMaxWidth:(double)a3;
- (void)setShieldImage:(id)a3;
- (void)showSpinner;
@end

@implementation TransitLineDisambiguationCell

- (double)_targetCellHeight
{
  v2 = sub_10000FA08(self);
  result = 79.0;
  if (v2 == 5)
  {
    return 36.0;
  }

  return result;
}

- (id)_fontProviderForMessageLabel
{
  if (sub_10000FA08(self) == 5)
  {
    v2 = &stru_10165DAA8;
  }

  else
  {
    v2 = &stru_10165DA48;
  }

  v3 = objc_retainBlock(v2);

  return v3;
}

- (void)_updateMessageLabelLeadingMargin
{
  [(TransitLineDisambiguationCell *)self maxWidth];
  v4 = v3 + 16.0;
  v8 = [(TransitLineDisambiguationCell *)self shieldImage];
  v5 = 0.0;
  if (v8)
  {
    v5 = 16.0;
  }

  v6 = v4 + v5;
  v7 = [(TransitLineDisambiguationCell *)self messageLabelLeadingConstraint];
  [v7 setConstant:v6];
}

- (void)addConstraints
{
  v3 = [(TransitLineDisambiguationCell *)self contentView];
  v4 = [v3 heightAnchor];
  [(TransitLineDisambiguationCell *)self _targetCellHeight];
  v5 = [v4 constraintEqualToConstant:?];

  LODWORD(v6) = *"";
  v7 = v5;
  v44 = v5;
  [v5 setPriority:v6];
  v8 = [(TransitLineDisambiguationCell *)self messageLabel];
  v9 = [v8 firstBaselineAnchor];
  v10 = [(TransitLineDisambiguationCell *)self contentView];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11];
  v37 = v12;

  v13 = [(TransitLineDisambiguationCell *)self messageLabel];
  v14 = [v13 leadingAnchor];
  v15 = [(TransitLineDisambiguationCell *)self contentView];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [(TransitLineDisambiguationCell *)self setMessageLabelLeadingConstraint:v17];

  if (sub_10000FA08(self) == 5)
  {
    v18 = 8.0;
  }

  else
  {
    v18 = 34.0;
  }

  v45[0] = v7;
  v43 = [(TransitLineDisambiguationCell *)self shieldImageView];
  v41 = [v43 centerYAnchor];
  v42 = [(TransitLineDisambiguationCell *)self contentView];
  v40 = [v42 centerYAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v45[1] = v39;
  v38 = [(TransitLineDisambiguationCell *)self shieldImageView];
  v35 = [v38 leadingAnchor];
  v36 = [(TransitLineDisambiguationCell *)self contentView];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:16.0];
  v45[2] = v33;
  v32 = [(TransitLineDisambiguationCell *)self _fontProviderForMessageLabel];
  v31 = [DynamicTypeWizard autoscaledConstraint:v12 constant:v32 withFontProvider:v18];
  v45[3] = v31;
  v30 = [(TransitLineDisambiguationCell *)self messageLabelLeadingConstraint];
  v45[4] = v30;
  v29 = [(TransitLineDisambiguationCell *)self messageLabel];
  v28 = [v29 centerYAnchor];
  v19 = [(TransitLineDisambiguationCell *)self contentView];
  v20 = [v19 centerYAnchor];
  v21 = [v28 constraintEqualToAnchor:v20];
  v45[5] = v21;
  v22 = [(TransitLineDisambiguationCell *)self messageLabel];
  v23 = [v22 trailingAnchor];
  v24 = [(TransitLineDisambiguationCell *)self contentView];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:-16.0];
  v45[6] = v26;
  v27 = [NSArray arrayWithObjects:v45 count:7];
  [NSLayoutConstraint activateConstraints:v27];

  [(TransitLineDisambiguationCell *)self _updateMessageLabelLeadingMargin];
}

- (void)setMaxWidth:(double)a3
{
  if (self->_maxWidth != a3)
  {
    self->_maxWidth = a3;
    [(TransitLineDisambiguationCell *)self _updateMessageLabelLeadingMargin];
  }
}

- (void)setLabelText:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_labelText isEqualToString:?])
  {
    objc_storeStrong(&self->_labelText, a3);
    labelText = self->_labelText;
    v6 = [(TransitLineDisambiguationCell *)self messageLabel];
    [v6 setText:labelText];
  }
}

- (void)setShieldImage:(id)a3
{
  v7 = a3;
  if (([(UIImage *)self->_shieldImage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_shieldImage, a3);
    shieldImage = self->_shieldImage;
    v6 = [(TransitLineDisambiguationCell *)self shieldImageView];
    [v6 setImage:shieldImage];
  }
}

- (void)hideSpinner
{
  v3 = [(TransitLineDisambiguationCell *)self spinner];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(TransitLineDisambiguationCell *)self spinner];
    [v5 stopAnimating];

    v6 = [(TransitLineDisambiguationCell *)self spinner];
    [v6 removeFromSuperview];
  }
}

- (void)showSpinner
{
  v3 = [(TransitLineDisambiguationCell *)self messageLabel];
  [v3 setText:0];

  v4 = [(TransitLineDisambiguationCell *)self shieldImageView];
  [v4 setImage:0];

  v5 = [(TransitLineDisambiguationCell *)self contentView];
  v6 = [(TransitLineDisambiguationCell *)self spinner];
  [v5 addSubview:v6];

  v7 = [(TransitLineDisambiguationCell *)self spinner];
  [v7 startAnimating];

  v18 = [(TransitLineDisambiguationCell *)self spinner];
  v8 = [v18 centerXAnchor];
  v9 = [(TransitLineDisambiguationCell *)self contentView];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v19[0] = v11;
  v12 = [(TransitLineDisambiguationCell *)self spinner];
  v13 = [v12 centerYAnchor];
  v14 = [(TransitLineDisambiguationCell *)self contentView];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v19[1] = v16;
  v17 = [NSArray arrayWithObjects:v19 count:2];
  [NSLayoutConstraint activateConstraints:v17];
}

- (TransitLineDisambiguationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v41.receiver = self;
  v41.super_class = TransitLineDisambiguationCell;
  v4 = [(MapsThemeTableViewCell *)&v41 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(TransitLineDisambiguationCell *)v4 setSpinner:v5];

    v6 = [(TransitLineDisambiguationCell *)v4 spinner];
    [v6 setHidesWhenStopped:1];

    v7 = [(TransitLineDisambiguationCell *)v4 spinner];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [MapsThemeLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = [(MapsThemeLabel *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(TransitLineDisambiguationCell *)v4 setMessageLabel:v12];

    v13 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [v13 setLineBreakMode:4];

    v14 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [v14 setNumberOfLines:0];

    v15 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[UIColor labelColor];
    v17 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [v17 setTextColor:v16];

    v18 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    LODWORD(v19) = 1144750080;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];

    v20 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    LODWORD(v21) = 1148829696;
    [v20 setContentCompressionResistancePriority:1 forAxis:v21];

    v22 = [(TransitLineDisambiguationCell *)v4 contentView];
    v23 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [v22 addSubview:v23];

    v24 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(TransitLineDisambiguationCell *)v4 setShieldImageView:v24];

    v25 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    [v25 setContentMode:4];

    v26 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v28) = 1148846080;
    [v27 setContentHuggingPriority:0 forAxis:v28];

    v29 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v30) = 1148846080;
    [v29 setContentHuggingPriority:1 forAxis:v30];

    v31 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v32) = 1148846080;
    [v31 setContentCompressionResistancePriority:0 forAxis:v32];

    v33 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v34) = 1148846080;
    [v33 setContentCompressionResistancePriority:1 forAxis:v34];

    v35 = [(TransitLineDisambiguationCell *)v4 contentView];
    v36 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    [v35 addSubview:v36];

    v37 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    v38 = [(TransitLineDisambiguationCell *)v4 _fontProviderForMessageLabel];
    [DynamicTypeWizard autorefreshLabel:v37 withFontProvider:v38];

    v39 = +[UIColor clearColor];
    [(TransitLineDisambiguationCell *)v4 setBackgroundColor:v39];

    [(TransitLineDisambiguationCell *)v4 addConstraints];
  }

  return v4;
}

@end