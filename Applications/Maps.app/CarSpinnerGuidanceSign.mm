@interface CarSpinnerGuidanceSign
- (CarGuidanceCardSizeProviding)sizeProvider;
- (CarSpinnerGuidanceSign)initWithDestination:(unint64_t)destination;
- (void)_updateStyling;
- (void)setMessageString:(id)string;
- (void)setPrimaryString:(id)string;
- (void)setShowMessage:(BOOL)message animated:(BOOL)animated;
- (void)updateConstraints;
@end

@implementation CarSpinnerGuidanceSign

- (CarGuidanceCardSizeProviding)sizeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeProvider);

  return WeakRetained;
}

- (void)updateConstraints
{
  dynamicConstraints = [(CarSpinnerGuidanceSign *)self dynamicConstraints];
  v4 = [dynamicConstraints count];

  if (v4)
  {
    dynamicConstraints2 = [(CarSpinnerGuidanceSign *)self dynamicConstraints];
    [NSLayoutConstraint deactivateConstraints:dynamicConstraints2];
  }

  v6 = objc_opt_new();
  if ([(CarSpinnerGuidanceSign *)self showsMessage])
  {
    topAnchor = [(UILabel *)self->_messageLabel topAnchor];
    bottomAnchor = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
    LODWORD(v9) = 1148829696;
    v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:7.0 priority:v9];
    v17[0] = v10;
    bottomAnchor2 = [(CarSpinnerGuidanceSign *)self bottomAnchor];
    bottomAnchor3 = [(UILabel *)self->_messageLabel bottomAnchor];
    v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
    v17[1] = v13;
    v14 = v17;
  }

  else
  {
    topAnchor = [(CarSpinnerGuidanceSign *)self bottomAnchor];
    bottomAnchor = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
    v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
    v18[0] = v10;
    bottomAnchor2 = [(UILabel *)self->_messageLabel topAnchor];
    bottomAnchor3 = [(CarSpinnerGuidanceSign *)self bottomAnchor];
    v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v18[1] = v13;
    v14 = v18;
  }

  v15 = [NSArray arrayWithObjects:v14 count:2];
  [v6 addObjectsFromArray:v15];

  [NSLayoutConstraint activateConstraints:v6];
  [(CarSpinnerGuidanceSign *)self setDynamicConstraints:v6];
  v16.receiver = self;
  v16.super_class = CarSpinnerGuidanceSign;
  [(CarSpinnerGuidanceSign *)&v16 updateConstraints];
}

- (void)setShowMessage:(BOOL)message animated:(BOOL)animated
{
  if (self->_showMessage != message)
  {
    animatedCopy = animated;
    messageString = [(CarSpinnerGuidanceSign *)self messageString];

    if (messageString)
    {
      self->_showMessage = message;
      [(CarSpinnerGuidanceSign *)self setNeedsUpdateConstraints];
      [(CarSpinnerGuidanceSign *)self setNeedsLayout];
      v8 = 0.300000012;
      if (!animatedCopy)
      {
        v8 = 0.0;
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100BCAC04;
      v11[3] = &unk_101661AE0;
      v11[4] = self;
      messageCopy = message;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100BCAC54;
      v9[3] = &unk_1016574C0;
      v9[4] = self;
      messageCopy2 = message;
      [UIView animateWithDuration:v11 animations:v9 completion:v8];
    }
  }
}

- (void)_updateStyling
{
  v3 = [UIFont systemFontOfSize:16.0];
  [(UILabel *)self->_primaryLabel setFont:v3];

  primaryString = [(CarSpinnerGuidanceSign *)self primaryString];
  [(UILabel *)self->_primaryLabel setText:primaryString];

  destination = self->_destination;
  v7 = destination == 4 || destination - 1 < 2;
  v8 = sub_10009E9A4(v7);
  [(UILabel *)self->_primaryLabel setTextColor:v8];

  [(UILabel *)self->_primaryLabel setMinimumScaleFactor:0.699999988];
  [(UILabel *)self->_primaryLabel setNumberOfLines:3];
  [(UILabel *)self->_primaryLabel setTextAlignment:1];
  [(UILabel *)self->_primaryLabel setLineBreakMode:0];
  [(UILabel *)self->_primaryLabel setAdjustsFontSizeToFitWidth:1];
  messageString = [(CarSpinnerGuidanceSign *)self messageString];
  [(UILabel *)self->_messageLabel setText:messageString];

  v10 = [UIFont systemFontOfSize:12.0];
  [(UILabel *)self->_messageLabel setFont:v10];

  v11 = self->_destination;
  v13 = v11 == 4 || v11 - 1 < 2;
  v14 = sub_10009E9A4(v13);
  [(UILabel *)self->_messageLabel setTextColor:v14];

  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [(UILabel *)self->_messageLabel setNumberOfLines:4];
  [(UILabel *)self->_messageLabel setLineBreakMode:0];
  [(UILabel *)self->_messageLabel setMinimumScaleFactor:0.699999988];
  [(UILabel *)self->_messageLabel setAdjustsFontSizeToFitWidth:1];
  v15 = 0.0;
  if (self->_showMessage)
  {
    v15 = 1.0;
  }

  [(UILabel *)self->_messageLabel setAlpha:v15];
  [(UILabel *)self->_messageLabel setHidden:!self->_showMessage];
  textColor = [(UILabel *)self->_primaryLabel textColor];
  [(UIActivityIndicatorView *)self->_activityIndicator setColor:textColor];

  activityIndicator = self->_activityIndicator;

  [(UIActivityIndicatorView *)activityIndicator startAnimating];
}

- (void)setMessageString:(id)string
{
  v4 = [string copy];
  messageString = self->_messageString;
  self->_messageString = v4;

  v6 = self->_messageString;
  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setText:v6];
}

- (void)setPrimaryString:(id)string
{
  v4 = [string copy];
  primaryString = self->_primaryString;
  self->_primaryString = v4;

  v6 = self->_primaryString;
  primaryLabel = self->_primaryLabel;

  [(UILabel *)primaryLabel setText:v6];
}

- (CarSpinnerGuidanceSign)initWithDestination:(unint64_t)destination
{
  v42.receiver = self;
  v42.super_class = CarSpinnerGuidanceSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarSpinnerGuidanceSign *)&v42 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = height;
  if (height)
  {
    [(CarSpinnerGuidanceSign *)height setAccessibilityIdentifier:@"CarSpinnerGuidanceSign"];
    v8->_destination = destination;
    v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicator = v8->_activityIndicator;
    v8->_activityIndicator = v9;

    [(UIActivityIndicatorView *)v8->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v8->_activityIndicator setAccessibilityIdentifier:@"ActivityIndicator"];
    [(CarSpinnerGuidanceSign *)v8 addSubview:v8->_activityIndicator];
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    primaryLabel = v8->_primaryLabel;
    v8->_primaryLabel = v11;

    [(UILabel *)v8->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
    [(CarSpinnerGuidanceSign *)v8 addSubview:v8->_primaryLabel];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    messageLabel = v8->_messageLabel;
    v8->_messageLabel = v13;

    [(UILabel *)v8->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_messageLabel setAccessibilityIdentifier:@"MessageLabel"];
    [(CarSpinnerGuidanceSign *)v8 addSubview:v8->_messageLabel];
    v8->_showMessage = 0;
    [(CarSpinnerGuidanceSign *)v8 _updateStyling];
    topAnchor = [(UILabel *)v8->_primaryLabel topAnchor];
    topAnchor2 = [(CarSpinnerGuidanceSign *)v8 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v43[0] = v39;
    leadingAnchor = [(UILabel *)v8->_primaryLabel leadingAnchor];
    leadingAnchor2 = [(CarSpinnerGuidanceSign *)v8 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v43[1] = v36;
    trailingAnchor = [(CarSpinnerGuidanceSign *)v8 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v8->_primaryLabel trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
    v43[2] = v33;
    topAnchor3 = [(UIActivityIndicatorView *)v8->_activityIndicator topAnchor];
    bottomAnchor = [(UILabel *)v8->_primaryLabel bottomAnchor];
    LODWORD(v15) = 1148829696;
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:7.0 priority:v15];
    v43[3] = v30;
    topAnchor4 = [(UIActivityIndicatorView *)v8->_activityIndicator topAnchor];
    bottomAnchor2 = [(UILabel *)v8->_primaryLabel bottomAnchor];
    v27 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v43[4] = v27;
    centerXAnchor = [(UIActivityIndicatorView *)v8->_activityIndicator centerXAnchor];
    centerXAnchor2 = [(CarSpinnerGuidanceSign *)v8 centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v43[5] = v17;
    leadingAnchor3 = [(UILabel *)v8->_messageLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v8->_primaryLabel leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v43[6] = v20;
    trailingAnchor3 = [(UILabel *)v8->_primaryLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)v8->_messageLabel trailingAnchor];
    v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v43[7] = v23;
    v24 = [NSArray arrayWithObjects:v43 count:8];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v8;
}

@end