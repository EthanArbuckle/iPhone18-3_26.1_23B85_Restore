@interface CarTrafficAlertView
- (BOOL)progressionHidden;
- (CarTrafficAlertView)initWithDelegate:(id)a3 incidentLayoutItem:(id)a4;
- (CarTrafficAlertView)initWithDelegate:(id)a3 trafficAlert:(id)a4;
- (CarTrafficAlertViewDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (double)completionProgress;
- (id)_progressButton;
- (id)dataSource;
- (void)_acceptButtonColors;
- (void)_buttonTapped:(id)a3;
- (void)_commonInit;
- (void)_updateView;
- (void)setCompletionProgress:(double)a3;
- (void)setIncidentLayoutItem:(id)a3;
- (void)setProgressionHidden:(BOOL)a3;
- (void)setTrafficAlert:(id)a3;
- (void)startProgressAnimationWithDuration:(double)a3;
@end

@implementation CarTrafficAlertView

- (CarTrafficAlertViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  v3 = [(CarTrafficAlertView *)self buttonStack];
  v4 = [v3 arrangedSubviews];
  v5 = [(CarTrafficAlertView *)self acceptButton];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [(CarTrafficAlertView *)self acceptButton];
    v10 = v7;
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
  v4 = [(CarTrafficAlertView *)self closeButton];
  [v3 addObject:v4];

  v5 = [(CarTrafficAlertView *)self buttonStack];
  v6 = [v5 arrangedSubviews];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (void)_buttonTapped:(id)a3
{
  v12 = a3;
  if (self->_trafficAlert)
  {
    v4 = [CarTrafficAlertCardViewController alertVotable:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CarTrafficAlertView *)self acceptButton];

  if (v5 == v12)
  {
    v9 = [(CarTrafficAlertView *)self delegate];
    v8 = v9;
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

  v6 = [(CarTrafficAlertView *)self cancelButton];

  if (v6 == v12)
  {
    v9 = [(CarTrafficAlertView *)self delegate];
    v8 = v9;
    if (v4)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

LABEL_14:
    v10 = self;
    goto LABEL_15;
  }

  v7 = [(CarTrafficAlertView *)self closeButton];

  v8 = [(CarTrafficAlertView *)self delegate];
  v9 = v8;
  v10 = self;
  if (v7 == v12)
  {
    v11 = 5;
  }

  else
  {
    v11 = 0;
  }

LABEL_15:
  [v9 trafficAlertView:v10 didDismissWithResult:v11];
}

- (void)_updateView
{
  trafficAlert = self->_trafficAlert;
  if (trafficAlert)
  {
    v4 = [NavTrafficIncidentViewComposer imageForMNTrafficIncidentAlert:trafficAlert view:self];
  }

  else
  {
    incidentLayoutItem = self->_incidentLayoutItem;
    if (!incidentLayoutItem)
    {
      goto LABEL_6;
    }

    v4 = [(TrafficIncidentLayoutItem *)incidentLayoutItem displayImage];
  }

  v6 = v4;
  [(UIImageView *)self->_alertImageView setImage:v4];

LABEL_6:
  v7 = [(CarTrafficAlertView *)self primaryLabel];
  v8 = [v7 text];
  v9 = [(CarTrafficAlertView *)self dataSource];
  v10 = [v9 primaryString];
  v11 = [v8 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    if (qword_10195DD80 != -1)
    {
      dispatch_once(&qword_10195DD80, &stru_10162F198);
    }

    v12 = [NSAttributedString alloc];
    v13 = [(CarTrafficAlertView *)self dataSource];
    v14 = [v13 primaryString];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1016631F0;
    }

    v17 = [v12 initWithString:v16 attributes:qword_10195DD88];
    v18 = [(CarTrafficAlertView *)self primaryLabel];
    [v18 setAttributedText:v17];
  }

  v19 = [(CarTrafficAlertView *)self secondaryLabel];
  v20 = [v19 text];
  v21 = [(CarTrafficAlertView *)self dataSource];
  v22 = [v21 secondaryString];
  v23 = [v20 isEqualToString:v22];

  if ((v23 & 1) == 0)
  {
    v24 = [(CarTrafficAlertView *)self dataSource];
    v25 = [v24 secondaryString];
    v26 = [(CarTrafficAlertView *)self secondaryLabel];
    [v26 setText:v25];
  }

  v27 = [(CarTrafficAlertView *)self dataSource];
  v28 = [v27 includeDismissButton];
  v29 = [(CarTrafficAlertView *)self closeButton];
  [v29 setHidden:v28 ^ 1];

  v30 = [(CarTrafficAlertView *)self dataSource];
  [v30 alertDisplayDuration];
  v32 = v31;
  v33 = [(CarTrafficAlertView *)self closeButton];
  [v33 setAnimationDuration:v32];

  v34 = [(CarTrafficAlertView *)self buttonStack];
  v35 = [v34 arrangedSubviews];
  v36 = [v35 count];
  v37 = [(CarTrafficAlertView *)self dataSource];
  v38 = [v37 buttonInfos];
  v39 = [v38 count];

  if (v36 != v39)
  {
    v54 = [(CarTrafficAlertView *)self dataSource];
    v55 = [v54 buttonInfos];
    v56 = [v55 count];

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
    v59 = [(CarTrafficAlertView *)self buttonStack];
    v60 = [v59 arrangedSubviews];

    v61 = [v60 countByEnumeratingWithState:&v90 objects:v97 count:16];
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
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v90 + 1) + 8 * i);
          v66 = [(CarTrafficAlertView *)self buttonStack];
          [v66 _maps_removeArrangedSubview:v65];
        }

        v62 = [v60 countByEnumeratingWithState:&v90 objects:v97 count:16];
      }

      while (v62);
    }

    v67 = +[NSMutableArray array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v68 = [(CarTrafficAlertView *)self dataSource];
    v69 = [v68 buttonInfos];

    v70 = [v69 countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (!v70)
    {
LABEL_54:

      v84 = [(CarTrafficAlertView *)self buttonStack];
      [v84 _maps_setArrangedSubviews:v67];

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
        objc_enumerationMutation(v69);
      }

      v75 = *(*(&v86 + 1) + 8 * v74);
      v76 = [v75 action];
      if (v76)
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
        v72 = [v69 countByEnumeratingWithState:&v86 objects:v96 count:16];
        if (!v72)
        {
          goto LABEL_54;
        }

        goto LABEL_37;
      }
    }

    if (v76 == 1)
    {
      v77 = [(CarTrafficAlertView *)self cancelButton];
    }

    else
    {
      if (v76 != 2)
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

      v77 = [(CarTrafficAlertView *)self acceptButton];
    }

    v78 = v77;
    if (v77)
    {
      v79 = [v75 title];
      [v78 setTitle:v79 forState:0];

      v80 = [v75 title];
      [v78 setTitle:v80 forState:8];

      [v67 addObject:v78];
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  v40 = [(CarTrafficAlertView *)self buttonStack];
  v41 = [v40 arrangedSubviews];
  v42 = [v41 count];

  if (v42)
  {
    v43 = 0;
    do
    {
      v44 = [(CarTrafficAlertView *)self buttonStack];
      v45 = [v44 arrangedSubviews];
      v46 = [v45 objectAtIndexedSubscript:v43];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = [(CarTrafficAlertView *)self dataSource];
        v48 = [v47 buttonInfos];
        v49 = [v48 objectAtIndexedSubscript:v43];
        v50 = [v49 title];
        [v46 setTitle:v50 forState:0];
      }

      ++v43;
      v51 = [(CarTrafficAlertView *)self buttonStack];
      v52 = [v51 arrangedSubviews];
      v53 = [v52 count];
    }

    while (v43 < v53);
  }
}

- (double)completionProgress
{
  v2 = [(CarTrafficAlertView *)self _progressButton];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)startProgressAnimationWithDuration:(double)a3
{
  v5 = [(CarTrafficAlertView *)self _progressButton];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CarTrafficAlertView *)self _progressButton];
    [v7 setAnimationDuration:a3];

    [(CarTrafficAlertView *)self setCompletionProgress:1.0];
    v8 = [(CarTrafficAlertView *)self _progressButton];
    [v8 performSelector:"startProgressAnimation"];
  }

  else
  {
    [(CarTrafficAlertView *)self setCompletionProgress:0.0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10093A24C;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [UIView animateWithDuration:v9 animations:0 completion:a3];
  }
}

- (void)setCompletionProgress:(double)a3
{
  v4 = [(CarTrafficAlertView *)self _progressButton];
  [v4 setProgress:a3];
}

- (BOOL)progressionHidden
{
  v2 = [(CarTrafficAlertView *)self _progressButton];
  v3 = [v2 progressionHidden];

  return v3;
}

- (void)setProgressionHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CarTrafficAlertView *)self _progressButton];
  [v4 setProgressionHidden:v3];
}

- (void)setIncidentLayoutItem:(id)a3
{
  v5 = a3;
  if (self->_incidentLayoutItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_incidentLayoutItem, a3);
    [(CarTrafficAlertView *)self _updateView];
    v5 = v6;
  }
}

- (void)setTrafficAlert:(id)a3
{
  objc_storeStrong(&self->_trafficAlert, a3);

  [(CarTrafficAlertView *)self _updateView];
}

- (id)_progressButton
{
  if (self->_incidentLayoutItem)
  {
    v3 = [(CarTrafficAlertView *)self closeButton];
    goto LABEL_17;
  }

  v4 = [(CarTrafficAlertView *)self trafficAlert];
  v5 = [v4 defaultButtonInfo];

  v6 = [(CarTrafficAlertView *)self trafficAlert];
  v7 = [v6 acceptButtonInfo];

  if ([v7 isDefaultButton])
  {
    v8 = [(CarTrafficAlertView *)self acceptButton];
  }

  else
  {
    if (v5 || (-[CarTrafficAlertView trafficAlert](self, "trafficAlert"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 includeDismissButton], v9, !v10))
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

      v3 = 0;
      goto LABEL_16;
    }

    v8 = [(CarTrafficAlertView *)self closeButton];
  }

  v3 = v8;
LABEL_16:

LABEL_17:

  return v3;
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
  v3 = [(CarTrafficAlertView *)self _progressButton];
  acceptButton = self->_acceptButton;

  if (v3 == acceptButton)
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
    v5 = [(CarTrafficAlertView *)self _progressButton];
    closeButton = self->_closeButton;

    if (v5 != closeButton)
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

  v21 = [(UILabel *)self->_secondaryLabel font];
  [v21 pointSize];
  v23 = self->_secondaryLabel;
  if (10.0 / v22 > 1.0)
  {
    [(UILabel *)v23 setMinimumScaleFactor:1.0];
  }

  else
  {
    v24 = [(UILabel *)v23 font];
    [v24 pointSize];
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
  v30 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v30;

  [(CarCardRoundedButton *)self->_cancelButton setAccessibilityIdentifier:@"CancelButton"];
  [(CarCardRoundedButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  v33 = [(CarCardRoundedButton *)self->_cancelButton titleLabel];
  [v33 setFont:v32];

  v34 = +[UIColor _carSystemQuaternaryColor];
  [(CarFocusableButton *)self->_cancelButton setNonFocusedBackgroundColor:v34];

  v35 = +[UIColor labelColor];
  [(CarFocusableButton *)self->_cancelButton setNonFocusedTintColor:v35];

  v36 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self->_cancelButton setFocusedBackgroundColor:v36];

  [(CarFocusableButton *)self->_cancelButton setModifiesBackgroundColor:1];
  [(CarCardRoundedButton *)self->_cancelButton addTarget:self action:"_buttonTapped:" forControlEvents:64];
  v37 = [[CarFocusableProgressBackgroundFillButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  acceptButton = self->_acceptButton;
  self->_acceptButton = v37;

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
  v44 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v45 = [(CarTrafficAlertView *)self trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-10.0];
  primaryLabelTrailingShortText = self->primaryLabelTrailingShortText;
  self->primaryLabelTrailingShortText = v46;

  v48 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v49 = [(CarFocusableProgressButton *)self->_closeButton leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-10.0];
  primaryLabelTrailingLongText = self->primaryLabelTrailingLongText;
  self->primaryLabelTrailingLongText = v50;

  v52 = [(CarTrafficAlertView *)self topAnchor];
  v139 = [(UIImageView *)self->_alertImageView topAnchor];
  v141 = v52;
  v137 = [v52 constraintEqualToAnchor:-10.0 constant:?];
  v147[0] = v137;
  v53 = [(UIImageView *)self->_alertImageView leadingAnchor];
  v135 = [(CarTrafficAlertView *)self leadingAnchor];
  v136 = v53;
  v134 = [v53 constraintEqualToAnchor:10.0 constant:?];
  v147[1] = v134;
  v54 = [(UIImageView *)self->_alertImageView heightAnchor];
  v132 = [(UIImageView *)self->_alertImageView widthAnchor];
  v133 = v54;
  v131 = [v54 constraintEqualToAnchor:?];
  v147[2] = v131;
  v130 = [(UIImageView *)self->_alertImageView heightAnchor];
  v129 = [v130 constraintEqualToConstant:36.0];
  v147[3] = v129;
  v55 = [(UIImageView *)self->_alertImageView bottomAnchor];
  v127 = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  v128 = v55;
  v126 = [v55 constraintEqualToAnchor:-22.0 constant:?];
  v147[4] = v126;
  v56 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v124 = [(CarTrafficAlertView *)self leadingAnchor];
  v125 = v56;
  v123 = [v56 constraintEqualToAnchor:10.0 constant:?];
  v147[5] = v123;
  v57 = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  v121 = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  v122 = v57;
  v58 = [v57 constraintEqualToAnchor:-18.0 constant:?];
  v59 = self->primaryLabelTrailingShortText;
  v120 = v58;
  v147[6] = v58;
  v147[7] = v59;
  v60 = [(CarFocusableProgressButton *)self->_closeButton topAnchor];
  v118 = [(UIImageView *)self->_alertImageView topAnchor];
  v119 = v60;
  v117 = [v60 constraintEqualToAnchor:?];
  v147[8] = v117;
  v61 = [(CarFocusableProgressButton *)self->_closeButton trailingAnchor];
  v115 = [(CarTrafficAlertView *)self trailingAnchor];
  v116 = v61;
  v114 = [v61 constraintEqualToAnchor:-10.0 constant:?];
  v147[9] = v114;
  v62 = [(CarFocusableProgressButton *)self->_closeButton heightAnchor];
  v112 = [(CarFocusableProgressButton *)self->_closeButton widthAnchor];
  v113 = v62;
  v111 = [v62 constraintEqualToAnchor:?];
  v147[10] = v111;
  v110 = [(CarFocusableProgressButton *)self->_closeButton widthAnchor];
  v109 = [v110 constraintEqualToConstant:28.0];
  v147[11] = v109;
  v63 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  v107 = [(CarTrafficAlertView *)self leadingAnchor];
  v108 = v63;
  v106 = [v63 constraintEqualToAnchor:10.0 constant:?];
  v147[12] = v106;
  v64 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  v104 = [(CarTrafficAlertView *)self trailingAnchor];
  v105 = v64;
  v103 = [v64 constraintEqualToAnchor:-10.0 constant:?];
  v147[13] = v103;
  v65 = [(CarCardRoundedButton *)self->_cancelButton heightAnchor];
  v66 = self->_cancelButton;
  if (v66)
  {
    [(CarCardRoundedButton *)v66 buttonMetrics];
    v41 = v144;
  }

  v101 = [v65 constraintEqualToConstant:v41];
  v147[14] = v101;
  v67 = [(CarFocusableProgressBackgroundFillButton *)self->_acceptButton heightAnchor];
  v68 = self->_acceptButton;
  v102 = v65;
  if (v68)
  {
    [(CarCardRoundedButton *)v68 buttonMetrics];
    v69 = v143;
  }

  else
  {
    v69 = 0.0;
  }

  v100 = [v67 constraintEqualToConstant:v69];
  v147[15] = v100;
  v99 = [(UIStackView *)self->_buttonStack topAnchor];
  v98 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v97 = [v99 constraintEqualToAnchor:v98 constant:12.0];
  v147[16] = v97;
  v95 = [(UIStackView *)self->_buttonStack leadingAnchor];
  v70 = [(CarTrafficAlertView *)self leadingAnchor];
  [v95 constraintEqualToAnchor:v70 constant:10.0];
  v71 = v96 = v67;
  v147[17] = v71;
  v72 = [(UIStackView *)self->_buttonStack trailingAnchor];
  v73 = [(CarTrafficAlertView *)self trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-10.0];
  v147[18] = v74;
  v75 = [(UIStackView *)self->_buttonStack bottomAnchor];
  v76 = [(CarTrafficAlertView *)self bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:-10.0];
  v147[19] = v77;
  v78 = [NSArray arrayWithObjects:v147 count:20];
  [NSLayoutConstraint activateConstraints:v78];

  v142 = [(UIStackView *)self->_buttonStack topAnchor];
  v140 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v138 = [v142 constraintEqualToAnchor:v140 constant:12.0];
  v146[0] = v138;
  v79 = [(UIStackView *)self->_buttonStack leadingAnchor];
  v80 = [(CarTrafficAlertView *)self leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:10.0];
  v146[1] = v81;
  v82 = [(UIStackView *)self->_buttonStack trailingAnchor];
  v83 = [(CarTrafficAlertView *)self trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:-10.0];
  v146[2] = v84;
  v85 = [(UIStackView *)self->_buttonStack bottomAnchor];
  v86 = [(CarTrafficAlertView *)self bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:-10.0];
  v146[3] = v87;
  v88 = [NSArray arrayWithObjects:v146 count:4];
  stackViewConstraint = self->_stackViewConstraint;
  self->_stackViewConstraint = v88;

  v90 = [(UILabel *)self->_secondaryLabel bottomAnchor];
  v91 = [(CarTrafficAlertView *)self bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:-10.0];
  v145 = v92;
  v93 = [NSArray arrayWithObjects:&v145 count:1];
  stackViewEmptyConstraint = self->_stackViewEmptyConstraint;
  self->_stackViewEmptyConstraint = v93;

  [NSLayoutConstraint activateConstraints:self->_stackViewEmptyConstraint];
  [(CarTrafficAlertView *)self _updateView];
}

- (CarTrafficAlertView)initWithDelegate:(id)a3 incidentLayoutItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CarTrafficAlertView;
  v8 = [(CarTrafficAlertView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_incidentLayoutItem, a4);
    [(CarTrafficAlertView *)v9 _commonInit];
  }

  return v9;
}

- (CarTrafficAlertView)initWithDelegate:(id)a3 trafficAlert:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CarTrafficAlertView;
  v8 = [(CarTrafficAlertView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_trafficAlert, a4);
    [(CarTrafficAlertView *)v9 _commonInit];
  }

  return v9;
}

@end