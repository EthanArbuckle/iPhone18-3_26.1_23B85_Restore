@interface CarTrafficAlertView
- (BOOL)progressionHidden;
- (CarTrafficAlertView)initWithDelegate:(id)delegate incidentLayoutItem:(id)item;
- (CarTrafficAlertView)initWithDelegate:(id)delegate trafficAlert:(id)alert;
- (CarTrafficAlertViewDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (double)completionProgress;
- (id)_progressButton;
- (id)dataSource;
- (void)_acceptButtonColors;
- (void)_buttonTapped:(id)tapped;
- (void)_commonInit;
- (void)_updateView;
- (void)setCompletionProgress:(double)progress;
- (void)setIncidentLayoutItem:(id)item;
- (void)setProgressionHidden:(BOOL)hidden;
- (void)setTrafficAlert:(id)alert;
- (void)startProgressAnimationWithDuration:(double)duration;
@end

@implementation CarTrafficAlertView

- (CarTrafficAlertViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  buttonStack = [(CarTrafficAlertView *)self buttonStack];
  arrangedSubviews = [buttonStack arrangedSubviews];
  acceptButton = [(CarTrafficAlertView *)self acceptButton];
  v6 = [arrangedSubviews containsObject:acceptButton];

  if (v6)
  {
    acceptButton2 = [(CarTrafficAlertView *)self acceptButton];
    v10 = acceptButton2;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (NSArray)focusOrderSubItems
{
  v3 = objc_alloc_init(NSMutableArray);
  closeButton = [(CarTrafficAlertView *)self closeButton];
  [v3 addObject:closeButton];

  buttonStack = [(CarTrafficAlertView *)self buttonStack];
  arrangedSubviews = [buttonStack arrangedSubviews];
  [v3 addObjectsFromArray:arrangedSubviews];

  return v3;
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_trafficAlert)
  {
    v4 = [CarTrafficAlertCardViewController alertVotable:?];
  }

  else
  {
    v4 = 0;
  }

  acceptButton = [(CarTrafficAlertView *)self acceptButton];

  if (acceptButton == tappedCopy)
  {
    delegate = [(CarTrafficAlertView *)self delegate];
    delegate2 = delegate;
    if (v4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_14;
  }

  cancelButton = [(CarTrafficAlertView *)self cancelButton];

  if (cancelButton == tappedCopy)
  {
    delegate = [(CarTrafficAlertView *)self delegate];
    delegate2 = delegate;
    if (v4)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

LABEL_14:
    selfCopy2 = self;
    goto LABEL_15;
  }

  closeButton = [(CarTrafficAlertView *)self closeButton];

  delegate2 = [(CarTrafficAlertView *)self delegate];
  delegate = delegate2;
  selfCopy2 = self;
  if (closeButton == tappedCopy)
  {
    v11 = 5;
  }

  else
  {
    v11 = 0;
  }

LABEL_15:
  [delegate trafficAlertView:selfCopy2 didDismissWithResult:v11];
}

- (void)_updateView
{
  trafficAlert = self->_trafficAlert;
  if (trafficAlert)
  {
    displayImage = [NavTrafficIncidentViewComposer imageForMNTrafficIncidentAlert:trafficAlert view:self];
  }

  else
  {
    incidentLayoutItem = self->_incidentLayoutItem;
    if (!incidentLayoutItem)
    {
      goto LABEL_6;
    }

    displayImage = [(TrafficIncidentLayoutItem *)incidentLayoutItem displayImage];
  }

  v6 = displayImage;
  [(UIImageView *)self->_alertImageView setImage:displayImage];

LABEL_6:
  primaryLabel = [(CarTrafficAlertView *)self primaryLabel];
  text = [primaryLabel text];
  dataSource = [(CarTrafficAlertView *)self dataSource];
  primaryString = [dataSource primaryString];
  v11 = [text isEqualToString:primaryString];

  if ((v11 & 1) == 0)
  {
    if (qword_10195DD80 != -1)
    {
      dispatch_once(&qword_10195DD80, &stru_10162F198);
    }

    v12 = [NSAttributedString alloc];
    dataSource2 = [(CarTrafficAlertView *)self dataSource];
    primaryString2 = [dataSource2 primaryString];
    v15 = primaryString2;
    if (primaryString2)
    {
      v16 = primaryString2;
    }

    else
    {
      v16 = &stru_1016631F0;
    }

    v17 = [v12 initWithString:v16 attributes:qword_10195DD88];
    primaryLabel2 = [(CarTrafficAlertView *)self primaryLabel];
    [primaryLabel2 setAttributedText:v17];
  }

  secondaryLabel = [(CarTrafficAlertView *)self secondaryLabel];
  text2 = [secondaryLabel text];
  dataSource3 = [(CarTrafficAlertView *)self dataSource];
  secondaryString = [dataSource3 secondaryString];
  v23 = [text2 isEqualToString:secondaryString];

  if ((v23 & 1) == 0)
  {
    dataSource4 = [(CarTrafficAlertView *)self dataSource];
    secondaryString2 = [dataSource4 secondaryString];
    secondaryLabel2 = [(CarTrafficAlertView *)self secondaryLabel];
    [secondaryLabel2 setText:secondaryString2];
  }

  dataSource5 = [(CarTrafficAlertView *)self dataSource];
  includeDismissButton = [dataSource5 includeDismissButton];
  closeButton = [(CarTrafficAlertView *)self closeButton];
  [closeButton setHidden:includeDismissButton ^ 1];

  dataSource6 = [(CarTrafficAlertView *)self dataSource];
  [dataSource6 alertDisplayDuration];
  v32 = v31;
  closeButton2 = [(CarTrafficAlertView *)self closeButton];
  [closeButton2 setAnimationDuration:v32];

  buttonStack = [(CarTrafficAlertView *)self buttonStack];
  arrangedSubviews = [buttonStack arrangedSubviews];
  v36 = [arrangedSubviews count];
  dataSource7 = [(CarTrafficAlertView *)self dataSource];
  buttonInfos = [dataSource7 buttonInfos];
  v39 = [buttonInfos count];

  if (v36 != v39)
  {
    dataSource8 = [(CarTrafficAlertView *)self dataSource];
    buttonInfos2 = [dataSource8 buttonInfos];
    v56 = [buttonInfos2 count];

    if (v56)
    {
      v57 = &OBJC_IVAR___CarTrafficAlertView__stackViewEmptyConstraint;
    }

    else
    {
      v57 = &OBJC_IVAR___CarTrafficAlertView__stackViewConstraint;
    }

    if (v56)
    {
      v58 = &OBJC_IVAR___CarTrafficAlertView__stackViewConstraint;
    }

    else
    {
      v58 = &OBJC_IVAR___CarTrafficAlertView__stackViewEmptyConstraint;
    }

    [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.isa + *v57)];
    [NSLayoutConstraint activateConstraints:*(&self->super.super.super.isa + *v58)];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    buttonStack2 = [(CarTrafficAlertView *)self buttonStack];
    arrangedSubviews2 = [buttonStack2 arrangedSubviews];

    v61 = [arrangedSubviews2 countByEnumeratingWithState:&v90 objects:v97 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v91;
      do
      {
        for (i = 0; i != v62; i = i + 1)
        {
          if (*v91 != v63)
          {
            objc_enumerationMutation(arrangedSubviews2);
          }

          v65 = *(*(&v90 + 1) + 8 * i);
          buttonStack3 = [(CarTrafficAlertView *)self buttonStack];
          [buttonStack3 _maps_removeArrangedSubview:v65];
        }

        v62 = [arrangedSubviews2 countByEnumeratingWithState:&v90 objects:v97 count:16];
      }

      while (v62);
    }

    v67 = +[NSMutableArray array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    dataSource9 = [(CarTrafficAlertView *)self dataSource];
    buttonInfos3 = [dataSource9 buttonInfos];

    v70 = [buttonInfos3 countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (!v70)
    {
LABEL_54:

      buttonStack4 = [(CarTrafficAlertView *)self buttonStack];
      [buttonStack4 _maps_setArrangedSubviews:v67];

      return;
    }

    v72 = v70;
    v73 = *v87;
    *&v71 = 138412290;
    v85 = v71;
LABEL_37:
    v74 = 0;
    while (1)
    {
      if (*v87 != v73)
      {
        objc_enumerationMutation(buttonInfos3);
      }

      v75 = *(*(&v86 + 1) + 8 * v74);
      action = [v75 action];
      if (action)
      {
        break;
      }

      v78 = sub_100035E6C();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v81 = v78;
        v82 = "Got an MNNavigationAlertButtonInfo with an unknown action. Not displaying button.";
        v83 = 2;
        goto LABEL_51;
      }

LABEL_52:

      if (v72 == ++v74)
      {
        v72 = [buttonInfos3 countByEnumeratingWithState:&v86 objects:v96 count:16];
        if (!v72)
        {
          goto LABEL_54;
        }

        goto LABEL_37;
      }
    }

    if (action == 1)
    {
      cancelButton = [(CarTrafficAlertView *)self cancelButton];
    }

    else
    {
      if (action != 2)
      {
LABEL_47:
        v78 = sub_100035E6C();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *buf = v85;
          v95 = v75;
          v81 = v78;
          v82 = "Couldn't find a UI button to support displaying button info: %@";
          v83 = 12;
LABEL_51:
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, v82, buf, v83);
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      cancelButton = [(CarTrafficAlertView *)self acceptButton];
    }

    v78 = cancelButton;
    if (cancelButton)
    {
      title = [v75 title];
      [v78 setTitle:title forState:0];

      title2 = [v75 title];
      [v78 setTitle:title2 forState:8];

      [v67 addObject:v78];
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  buttonStack5 = [(CarTrafficAlertView *)self buttonStack];
  arrangedSubviews3 = [buttonStack5 arrangedSubviews];
  v42 = [arrangedSubviews3 count];

  if (v42)
  {
    v43 = 0;
    do
    {
      buttonStack6 = [(CarTrafficAlertView *)self buttonStack];
      arrangedSubviews4 = [buttonStack6 arrangedSubviews];
      v46 = [arrangedSubviews4 objectAtIndexedSubscript:v43];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dataSource10 = [(CarTrafficAlertView *)self dataSource];
        buttonInfos4 = [dataSource10 buttonInfos];
        v49 = [buttonInfos4 objectAtIndexedSubscript:v43];
        title3 = [v49 title];
        [v46 setTitle:title3 forState:0];
      }

      ++v43;
      buttonStack7 = [(CarTrafficAlertView *)self buttonStack];
      arrangedSubviews5 = [buttonStack7 arrangedSubviews];
      v53 = [arrangedSubviews5 count];
    }

    while (v43 < v53);
  }
}

- (double)completionProgress
{
  _progressButton = [(CarTrafficAlertView *)self _progressButton];
  [_progressButton progress];
  v4 = v3;

  return v4;
}

- (void)startProgressAnimationWithDuration:(double)duration
{
  _progressButton = [(CarTrafficAlertView *)self _progressButton];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _progressButton2 = [(CarTrafficAlertView *)self _progressButton];
    [_progressButton2 setAnimationDuration:duration];

    [(CarTrafficAlertView *)self setCompletionProgress:1.0];
    _progressButton3 = [(CarTrafficAlertView *)self _progressButton];
    [_progressButton3 performSelector:"startProgressAnimation"];
  }

  else
  {
    [(CarTrafficAlertView *)self setCompletionProgress:0.0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10093A24C;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [UIView animateWithDuration:v9 animations:0 completion:duration];
  }
}

- (void)setCompletionProgress:(double)progress
{
  _progressButton = [(CarTrafficAlertView *)self _progressButton];
  [_progressButton setProgress:progress];
}

- (BOOL)progressionHidden
{
  _progressButton = [(CarTrafficAlertView *)self _progressButton];
  progressionHidden = [_progressButton progressionHidden];

  return progressionHidden;
}

- (void)setProgressionHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _progressButton = [(CarTrafficAlertView *)self _progressButton];
  [_progressButton setProgressionHidden:hiddenCopy];
}

- (void)setIncidentLayoutItem:(id)item
{
  itemCopy = item;
  if (self->_incidentLayoutItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_incidentLayoutItem, item);
    [(CarTrafficAlertView *)self _updateView];
    itemCopy = v6;
  }
}

- (void)setTrafficAlert:(id)alert
{
  objc_storeStrong(&self->_trafficAlert, alert);

  [(CarTrafficAlertView *)self _updateView];
}

- (id)_progressButton
{
  if (self->_incidentLayoutItem)
  {
    closeButton = [(CarTrafficAlertView *)self closeButton];
    goto LABEL_17;
  }

  trafficAlert = [(CarTrafficAlertView *)self trafficAlert];
  defaultButtonInfo = [trafficAlert defaultButtonInfo];

  trafficAlert2 = [(CarTrafficAlertView *)self trafficAlert];
  acceptButtonInfo = [trafficAlert2 acceptButtonInfo];

  if ([acceptButtonInfo isDefaultButton])
  {
    acceptButton = [(CarTrafficAlertView *)self acceptButton];
  }

  else
  {
    if (defaultButtonInfo || (-[CarTrafficAlertView trafficAlert](self, "trafficAlert"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 includeDismissButton], v9, !v10))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315650;
        v16 = "[CarTrafficAlertView _progressButton]";
        v17 = 2080;
        v18 = "CarTrafficAlertView.m";
        v19 = 1024;
        v20 = 315;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v15, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v15 = 138412290;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }

      closeButton = 0;
      goto LABEL_16;
    }

    acceptButton = [(CarTrafficAlertView *)self closeButton];
  }

  closeButton = acceptButton;
LABEL_16:

LABEL_17:

  return closeButton;
}

- (id)dataSource
{
  trafficAlert = self->_trafficAlert;
  if (!trafficAlert)
  {
    trafficAlert = self->_incidentLayoutItem;
  }

  v3 = trafficAlert;

  return v3;
}

- (void)_acceptButtonColors
{
  _progressButton = [(CarTrafficAlertView *)self _progressButton];
  acceptButton = self->_acceptButton;

  if (_progressButton == acceptButton)
  {
    v7 = +[UIColor tertiarySystemFillColor];
    [(CarFocusableButton *)self->_acceptButton setNonFocusedBackgroundColor:v7];

    v8 = +[UIColor labelColor];
    [(CarFocusableButton *)self->_acceptButton setNonFocusedTintColor:v8];

    v9 = +[UIColor tertiarySystemFillColor];
    [(CarFocusableButton *)self->_acceptButton setFocusedBackgroundColor:v9];

    v10 = +[UIColor labelColor];
    [(CarFocusableButton *)self->_acceptButton setFocusedTintColor:v10];

    v17 = objc_alloc_init(MapsTheme);
    v11 = [(MapsTheme *)v17 blueButtonBackgroundColor:0];
    v12 = +[UIColor _carSystemFocusColor];
    [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setFilledBackgroundColorFocused:v12];

    v13 = +[UIColor _carSystemFocusLabelColor];
    [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setFilledTintColorFocused:v13];

    [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setFilledBackgroundColor:v11];
    v14 = +[UIColor whiteColor];
    [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setFilledTintColor:v14];
  }

  else
  {
    _progressButton2 = [(CarTrafficAlertView *)self _progressButton];
    closeButton = self->_closeButton;

    if (_progressButton2 != closeButton)
    {
      return;
    }

    v15 = +[UIColor _carSystemQuaternaryColor];
    [(CarFocusableButton *)self->_acceptButton setNonFocusedBackgroundColor:v15];

    v16 = +[UIColor labelColor];
    [(CarFocusableButton *)self->_acceptButton setNonFocusedTintColor:v16];

    v17 = +[UIColor _carSystemFocusColor];
    [(CarFocusableButton *)self->_acceptButton setFocusedBackgroundColor:?];
  }
}

- (void)_commonInit
{
  [(CarTrafficAlertView *)self setAccessibilityIdentifier:@"CarTrafficAlertView"];
  v3 = +[(CarFocusableButton *)CarFocusableProgressButton];
  closeButton = self->_closeButton;
  self->_closeButton = v3;

  [(CarFocusableProgressButton *)self->_closeButton setAccessibilityIdentifier:@"CloseButton"];
  [CarFocusableProgressButton addTarget:"addTarget:action:forControlEvents:" action:self forControlEvents:?];
  v5 = +[UIColor labelColor];
  [(CarFocusableProgressButton *)self->_closeButton setProgressFillColor:v5];

  v6 = +[UIColor systemBackgroundColor];
  [(CarFocusableProgressButton *)self->_closeButton setProgressFillFocusedColor:v6];

  v7 = +[UIColor _carSystemQuaternaryColor];
  [(CarFocusableButton *)self->_closeButton setNonFocusedBackgroundColor:v7];

  v8 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self->_closeButton setFocusedBackgroundColor:v8];

  [(CarTrafficAlertView *)self addSubview:self->_closeButton];
  v9 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v13;

  [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_primaryLabel setLineBreakMode:4];
  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  v15 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightSemibold];
  [(UILabel *)self->_primaryLabel setFont:v15];

  v16 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v16];

  LODWORD(v17) = 1148846080;
  [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v17];
  [(CarTrafficAlertView *)self addSubview:self->_primaryLabel];
  v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v18;

  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_secondaryLabel setLineBreakMode:4];
  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  v20 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightMedium];
  [(UILabel *)self->_secondaryLabel setFont:v20];

  font = [(UILabel *)self->_secondaryLabel font];
  [font pointSize];
  v23 = self->_secondaryLabel;
  if (10.0 / v22 > 1.0)
  {
    [(UILabel *)v23 setMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(UILabel *)v23 font];
    [font2 pointSize];
    [(UILabel *)self->_secondaryLabel setMinimumScaleFactor:10.0 / v25];
  }

  [(UILabel *)self->_secondaryLabel setAdjustsFontSizeToFitWidth:1];
  v26 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v26];

  LODWORD(v27) = 1148829696;
  [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v27];
  [(CarTrafficAlertView *)self addSubview:self->_secondaryLabel];
  v28 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  alertImageView = self->_alertImageView;
  self->_alertImageView = v28;

  [(UIImageView *)self->_alertImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_alertImageView setContentMode:1];
  [(CarTrafficAlertView *)self addSubview:self->_alertImageView];
  height = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  cancelButton = self->_cancelButton;
  self->_cancelButton = height;

  [(CarCardRoundedButton *)self->_cancelButton setAccessibilityIdentifier:@"CancelButton"];
  [(CarCardRoundedButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  titleLabel = [(CarCardRoundedButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:v32];

  v34 = +[UIColor _carSystemQuaternaryColor];
  [(CarFocusableButton *)self->_cancelButton setNonFocusedBackgroundColor:v34];

  v35 = +[UIColor labelColor];
  [(CarFocusableButton *)self->_cancelButton setNonFocusedTintColor:v35];

  v36 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self->_cancelButton setFocusedBackgroundColor:v36];

  [(CarFocusableButton *)self->_cancelButton setModifiesBackgroundColor:1];
  [(CarCardRoundedButton *)self->_cancelButton addTarget:self action:"_buttonTapped:" forControlEvents:64];
  height2 = [[CarFocusableProgressBackgroundFillButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  acceptButton = self->_acceptButton;
  self->_acceptButton = height2;

  [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setAccessibilityIdentifier:@"AcceptButton"];
  [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = self->_acceptButton;
  v40 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  [(CarFocusableProgressBackgroundFillButton *)v39 setTitleFont:v40];

  [(CarTrafficAlertView *)self _acceptButtonColors];
  [(CarFocusableButton *)self->_acceptButton setModifiesBackgroundColor:1];
  v41 = 0.0;
  [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setProgress:0.0];
  [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton setProgressionHidden:1];
  [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton addTarget:self action:"_buttonTapped:" forControlEvents:64];
  v42 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  buttonStack = self->_buttonStack;
  self->_buttonStack = v42;

  [(UIStackView *)self->_buttonStack setAccessibilityIdentifier:@"ButtonStack"];
  [(UIStackView *)self->_buttonStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonStack setAxis:0];
  [(UIStackView *)self->_buttonStack setDistribution:1];
  [(UIStackView *)self->_buttonStack setSpacing:6.0];
  [(CarTrafficAlertView *)self addSubview:self->_buttonStack];
  trailingAnchor = [(UILabel *)self->_primaryLabel trailingAnchor];
  trailingAnchor2 = [(CarTrafficAlertView *)self trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  primaryLabelTrailingShortText = self->primaryLabelTrailingShortText;
  self->primaryLabelTrailingShortText = v46;

  trailingAnchor3 = [(UILabel *)self->_primaryLabel trailingAnchor];
  leadingAnchor = [(CarFocusableProgressButton *)self->_closeButton leadingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-10.0];
  primaryLabelTrailingLongText = self->primaryLabelTrailingLongText;
  self->primaryLabelTrailingLongText = v50;

  topAnchor = [(CarTrafficAlertView *)self topAnchor];
  topAnchor2 = [(UIImageView *)self->_alertImageView topAnchor];
  v141 = topAnchor;
  v137 = [topAnchor constraintEqualToAnchor:-10.0 constant:?];
  v147[0] = v137;
  leadingAnchor2 = [(UIImageView *)self->_alertImageView leadingAnchor];
  leadingAnchor3 = [(CarTrafficAlertView *)self leadingAnchor];
  v136 = leadingAnchor2;
  v134 = [leadingAnchor2 constraintEqualToAnchor:10.0 constant:?];
  v147[1] = v134;
  heightAnchor = [(UIImageView *)self->_alertImageView heightAnchor];
  widthAnchor = [(UIImageView *)self->_alertImageView widthAnchor];
  v133 = heightAnchor;
  v131 = [heightAnchor constraintEqualToAnchor:?];
  v147[2] = v131;
  heightAnchor2 = [(UIImageView *)self->_alertImageView heightAnchor];
  v129 = [heightAnchor2 constraintEqualToConstant:36.0];
  v147[3] = v129;
  bottomAnchor = [(UIImageView *)self->_alertImageView bottomAnchor];
  firstBaselineAnchor = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  v128 = bottomAnchor;
  v126 = [bottomAnchor constraintEqualToAnchor:-22.0 constant:?];
  v147[4] = v126;
  leadingAnchor4 = [(UILabel *)self->_primaryLabel leadingAnchor];
  leadingAnchor5 = [(CarTrafficAlertView *)self leadingAnchor];
  v125 = leadingAnchor4;
  v123 = [leadingAnchor4 constraintEqualToAnchor:10.0 constant:?];
  v147[5] = v123;
  lastBaselineAnchor = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  v122 = lastBaselineAnchor;
  v58 = [lastBaselineAnchor constraintEqualToAnchor:-18.0 constant:?];
  v59 = self->primaryLabelTrailingShortText;
  v120 = v58;
  v147[6] = v58;
  v147[7] = v59;
  topAnchor3 = [(CarFocusableProgressButton *)self->_closeButton topAnchor];
  topAnchor4 = [(UIImageView *)self->_alertImageView topAnchor];
  v119 = topAnchor3;
  v117 = [topAnchor3 constraintEqualToAnchor:?];
  v147[8] = v117;
  trailingAnchor4 = [(CarFocusableProgressButton *)self->_closeButton trailingAnchor];
  trailingAnchor5 = [(CarTrafficAlertView *)self trailingAnchor];
  v116 = trailingAnchor4;
  v114 = [trailingAnchor4 constraintEqualToAnchor:-10.0 constant:?];
  v147[9] = v114;
  heightAnchor3 = [(CarFocusableProgressButton *)self->_closeButton heightAnchor];
  widthAnchor2 = [(CarFocusableProgressButton *)self->_closeButton widthAnchor];
  v113 = heightAnchor3;
  v111 = [heightAnchor3 constraintEqualToAnchor:?];
  v147[10] = v111;
  widthAnchor3 = [(CarFocusableProgressButton *)self->_closeButton widthAnchor];
  v109 = [widthAnchor3 constraintEqualToConstant:28.0];
  v147[11] = v109;
  leadingAnchor6 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  leadingAnchor7 = [(CarTrafficAlertView *)self leadingAnchor];
  v108 = leadingAnchor6;
  v106 = [leadingAnchor6 constraintEqualToAnchor:10.0 constant:?];
  v147[12] = v106;
  trailingAnchor6 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  trailingAnchor7 = [(CarTrafficAlertView *)self trailingAnchor];
  v105 = trailingAnchor6;
  v103 = [trailingAnchor6 constraintEqualToAnchor:-10.0 constant:?];
  v147[13] = v103;
  heightAnchor4 = [(CarCardRoundedButton *)self->_cancelButton heightAnchor];
  v66 = self->_cancelButton;
  if (v66)
  {
    [(CarCardRoundedButton *)v66 buttonMetrics];
    v41 = v144;
  }

  v101 = [heightAnchor4 constraintEqualToConstant:v41];
  v147[14] = v101;
  heightAnchor5 = [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton heightAnchor];
  v68 = self->_acceptButton;
  v102 = heightAnchor4;
  if (v68)
  {
    [(CarCardRoundedButton *)v68 buttonMetrics];
    v69 = v143;
  }

  else
  {
    v69 = 0.0;
  }

  v100 = [heightAnchor5 constraintEqualToConstant:v69];
  v147[15] = v100;
  topAnchor5 = [(UIStackView *)self->_buttonStack topAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v97 = [topAnchor5 constraintEqualToAnchor:lastBaselineAnchor2 constant:12.0];
  v147[16] = v97;
  leadingAnchor8 = [(UIStackView *)self->_buttonStack leadingAnchor];
  leadingAnchor9 = [(CarTrafficAlertView *)self leadingAnchor];
  [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:10.0];
  v71 = v96 = heightAnchor5;
  v147[17] = v71;
  trailingAnchor8 = [(UIStackView *)self->_buttonStack trailingAnchor];
  trailingAnchor9 = [(CarTrafficAlertView *)self trailingAnchor];
  v74 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-10.0];
  v147[18] = v74;
  bottomAnchor2 = [(UIStackView *)self->_buttonStack bottomAnchor];
  bottomAnchor3 = [(CarTrafficAlertView *)self bottomAnchor];
  v77 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-10.0];
  v147[19] = v77;
  v78 = [NSArray arrayWithObjects:v147 count:20];
  [NSLayoutConstraint activateConstraints:v78];

  topAnchor6 = [(UIStackView *)self->_buttonStack topAnchor];
  lastBaselineAnchor3 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v138 = [topAnchor6 constraintEqualToAnchor:lastBaselineAnchor3 constant:12.0];
  v146[0] = v138;
  leadingAnchor10 = [(UIStackView *)self->_buttonStack leadingAnchor];
  leadingAnchor11 = [(CarTrafficAlertView *)self leadingAnchor];
  v81 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:10.0];
  v146[1] = v81;
  trailingAnchor10 = [(UIStackView *)self->_buttonStack trailingAnchor];
  trailingAnchor11 = [(CarTrafficAlertView *)self trailingAnchor];
  v84 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-10.0];
  v146[2] = v84;
  bottomAnchor4 = [(UIStackView *)self->_buttonStack bottomAnchor];
  bottomAnchor5 = [(CarTrafficAlertView *)self bottomAnchor];
  v87 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
  v146[3] = v87;
  v88 = [NSArray arrayWithObjects:v146 count:4];
  stackViewConstraint = self->_stackViewConstraint;
  self->_stackViewConstraint = v88;

  bottomAnchor6 = [(UILabel *)self->_secondaryLabel bottomAnchor];
  bottomAnchor7 = [(CarTrafficAlertView *)self bottomAnchor];
  v92 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-10.0];
  v145 = v92;
  v93 = [NSArray arrayWithObjects:&v145 count:1];
  stackViewEmptyConstraint = self->_stackViewEmptyConstraint;
  self->_stackViewEmptyConstraint = v93;

  [NSLayoutConstraint activateConstraints:self->_stackViewEmptyConstraint];
  [(CarTrafficAlertView *)self _updateView];
}

- (CarTrafficAlertView)initWithDelegate:(id)delegate incidentLayoutItem:(id)item
{
  delegateCopy = delegate;
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CarTrafficAlertView;
  v8 = [(CarTrafficAlertView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_incidentLayoutItem, item);
    [(CarTrafficAlertView *)v9 _commonInit];
  }

  return v9;
}

- (CarTrafficAlertView)initWithDelegate:(id)delegate trafficAlert:(id)alert
{
  delegateCopy = delegate;
  alertCopy = alert;
  v11.receiver = self;
  v11.super_class = CarTrafficAlertView;
  v8 = [(CarTrafficAlertView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_trafficAlert, alert);
    [(CarTrafficAlertView *)v9 _commonInit];
  }

  return v9;
}

@end