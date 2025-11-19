@interface CarETAArrivedSign
- (CarETAArrivedSign)initWithDelegate:(id)a3 dataSource:(id)a4;
- (CarETACardSignDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_onEndPressed:(id)a3;
- (void)_onNextStopPressed:(id)a3;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateContents;
- (void)setState:(int64_t)a3;
@end

@implementation CarETAArrivedSign

- (void)_updateContents
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained arrivalTitle];
  [(MUFadingLabel *)self->_titleLabel setText:v4];

  v5 = objc_loadWeakRetained(&self->_dataSource);
  v6 = [v5 arrivalSubtitle];
  [(MUFadingLabel *)self->_subtitleLabel setText:v6];

  state = self->_state;
  if (state)
  {
    if (state == 1)
    {
      endNavigationButton = self->_endNavigationButton;
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"CarPlay_PauseRoute" value:@"localized string not found" table:0];
      [(CarCardRoundedButton *)endNavigationButton setTitle:v27 forState:0];

      v28 = +[UIColor systemWhiteColor];
      [(CarFocusableButton *)self->_endNavigationButton setNonFocusedTintColor:v28];

      v29 = +[UIColor systemRedColor];
      [(CarFocusableButton *)self->_endNavigationButton setNonFocusedBackgroundColor:v29];

      alternativeActionButton = self->_alternativeActionButton;
      v31 = +[NSBundle mainBundle];
      v32 = [v31 localizedStringForKey:@"CarPlay_NextStop" value:@"localized string not found" table:0];
      [(CarCardRoundedButton *)alternativeActionButton setTitle:v32 forState:0];

      v33 = +[UIColor _carSystemFocusColor];
      [(CarFocusableButton *)self->_alternativeActionButton setNonFocusedTintColor:v33];

      v34 = +[UIColor tertiarySystemFillColor];
      [(CarFocusableButton *)self->_alternativeActionButton setNonFocusedBackgroundColor:v34];

      [(CarCardRoundedButton *)self->_alternativeActionButton setImage:0 forState:0];
      buttonsStackView = self->_buttonsStackView;
      v35 = self->_endNavigationButton;
      v43 = self->_alternativeActionButton;
      v44 = v35;
      v24 = &v43;
    }

    else
    {
      if (state != 2)
      {
        return;
      }

      v8 = self->_alternativeActionButton;
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"CarPlay_OtherStations" value:@"localized string not found" table:0];
      [(CarCardRoundedButton *)v8 setTitle:v10 forState:0];

      v11 = self->_alternativeActionButton;
      v12 = +[CarETAArrivedSign _buttonFont];
      v13 = [UIImageSymbolConfiguration configurationWithFont:v12];
      v14 = [UIImage _systemImageNamed:@"magnifyingglass" withConfiguration:v13];
      [(CarCardRoundedButton *)v11 setImage:v14 forState:0];

      v15 = +[UIColor _carSystemFocusColor];
      [(CarFocusableButton *)self->_alternativeActionButton setNonFocusedTintColor:v15];

      v16 = +[UIColor tertiarySystemFillColor];
      [(CarFocusableButton *)self->_alternativeActionButton setNonFocusedBackgroundColor:v16];

      v17 = self->_endNavigationButton;
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"CarPlay_PauseRoute" value:@"localized string not found" table:0];
      [(CarCardRoundedButton *)v17 setTitle:v19 forState:0];

      v20 = +[UIColor systemWhiteColor];
      [(CarFocusableButton *)self->_endNavigationButton setNonFocusedTintColor:v20];

      v21 = +[UIColor systemRedColor];
      [(CarFocusableButton *)self->_endNavigationButton setNonFocusedBackgroundColor:v21];

      buttonsStackView = self->_buttonsStackView;
      v23 = self->_endNavigationButton;
      v46 = self->_alternativeActionButton;
      v47 = v23;
      v24 = &v46;
    }

    v36 = 2;
  }

  else
  {
    [(CarCardRoundedButton *)self->_alternativeActionButton setImage:0 forState:0];
    v37 = self->_endNavigationButton;
    v38 = +[NSBundle mainBundle];
    v39 = [v38 localizedStringForKey:@"CarPlay_EndRoute" value:@"localized string not found" table:0];
    [(CarCardRoundedButton *)v37 setTitle:v39 forState:0];

    v40 = +[UIColor systemWhiteColor];
    [(CarFocusableButton *)self->_endNavigationButton setNonFocusedTintColor:v40];

    v41 = +[UIColor systemRedColor];
    [(CarFocusableButton *)self->_endNavigationButton setNonFocusedBackgroundColor:v41];

    buttonsStackView = self->_buttonsStackView;
    v45 = self->_endNavigationButton;
    v24 = &v45;
    v36 = 1;
  }

  v42 = [NSArray arrayWithObjects:v24 count:v36, v43, v44, v45, v46, v47];
  [(UIStackView *)buttonsStackView _maps_setArrangedSubviews:v42];
}

- (CarETACardSignDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  endNavigationButton = self->_endNavigationButton;
  v2 = [NSArray arrayWithObjects:&endNavigationButton count:1];

  return v2;
}

- (NSArray)focusOrderSubItems
{
  state = self->_state;
  if ((state - 1) >= 2)
  {
    if (state)
    {
      goto LABEL_6;
    }

    endNavigationButton = self->_endNavigationButton;
    p_endNavigationButton = &endNavigationButton;
    v5 = 1;
  }

  else
  {
    v3 = self->_endNavigationButton;
    alternativeActionButton = self->_alternativeActionButton;
    v9 = v3;
    p_endNavigationButton = &alternativeActionButton;
    v5 = 2;
  }

  a2 = [NSArray arrayWithObjects:p_endNavigationButton count:v5, endNavigationButton, alternativeActionButton, v9];
LABEL_6:

  return a2;
}

- (void)_onNextStopPressed:(id)a3
{
  v4 = [(CarETAArrivedSign *)self delegate];
  [v4 etaCardSign:self didSelectAction:3];
}

- (void)_onEndPressed:(id)a3
{
  state = self->_state;
  if (state > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1012154B0[state];
  }

  v6 = [(CarETAArrivedSign *)self delegate];
  [v6 etaCardSign:self didSelectAction:v5];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(CarETAArrivedSign *)self _updateContents];
  }
}

- (void)_setupStyling
{
  v3 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  v4 = +[CarETAArrivedSign _buttonFont];
  [v3 setFont:v4];

  [(CarCardRoundedButton *)self->_endNavigationButton setContentHorizontalAlignment:0];
  v5 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  [v5 setMinimumScaleFactor:0.699999988];

  v6 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  [v6 setAdjustsFontSizeToFitWidth:1];

  v7 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  [v7 setNumberOfLines:2];

  v8 = +[UIColor systemWhiteColor];
  [(CarFocusableButton *)self->_endNavigationButton setNonFocusedTintColor:v8];

  v9 = +[UIColor _carSystemFocusLabelColor];
  [(CarFocusableButton *)self->_endNavigationButton setFocusedTintColor:v9];

  v10 = +[UIColor systemRedColor];
  [(CarFocusableButton *)self->_endNavigationButton setNonFocusedBackgroundColor:v10];

  v11 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self->_endNavigationButton setFocusedBackgroundColor:v11];

  v12 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  v13 = +[CarETAArrivedSign _buttonFont];
  [v12 setFont:v13];

  [(CarCardRoundedButton *)self->_alternativeActionButton setContentHorizontalAlignment:0];
  v14 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  [v14 setMinimumScaleFactor:0.699999988];

  v15 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  [v15 setAdjustsFontSizeToFitWidth:1];

  v16 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  [v16 setNumberOfLines:2];

  v17 = +[UIColor systemWhiteColor];
  [(CarFocusableButton *)self->_alternativeActionButton setNonFocusedTintColor:v17];

  v18 = +[UIColor _carSystemFocusLabelColor];
  [(CarFocusableButton *)self->_alternativeActionButton setFocusedTintColor:v18];

  v19 = +[UIColor tertiarySystemFillColor];
  [(CarFocusableButton *)self->_alternativeActionButton setNonFocusedBackgroundColor:v19];

  v20 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self->_alternativeActionButton setFocusedBackgroundColor:v20];
}

- (void)_setupConstraints
{
  v3 = [NSMutableArray arrayWithCapacity:6];
  v4 = [(CarCardRoundedButton *)self->_endNavigationButton heightAnchor];
  v5 = [v4 constraintEqualToConstant:44.0];
  [v3 addObject:v5];

  v6 = [(CarCardRoundedButton *)self->_alternativeActionButton heightAnchor];
  v7 = [v6 constraintEqualToConstant:44.0];
  v41 = v3;
  [v3 addObject:v7];

  v37 = [(MUFadingLabel *)self->_titleLabel leadingAnchor];
  v34 = [(CarETAArrivedSign *)self leadingAnchor];
  v8 = [v37 constraintEqualToAnchor:v34 constant:10.0];
  v44[0] = v8;
  v9 = [(MUFadingLabel *)self->_titleLabel trailingAnchor];
  v10 = [(CarETAArrivedSign *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-10.0];
  v44[1] = v11;
  v12 = [(MUFadingLabel *)self->_titleLabel topAnchor];
  v13 = [(CarETAArrivedSign *)self topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:10.0];
  v44[2] = v14;
  v15 = [NSArray arrayWithObjects:v44 count:3];
  [v3 addObjectsFromArray:v15];

  v38 = [(MUFadingLabel *)self->_subtitleLabel leadingAnchor];
  v35 = [(CarETAArrivedSign *)self leadingAnchor];
  v16 = [v38 constraintEqualToAnchor:v35 constant:10.0];
  v43[0] = v16;
  v17 = [(MUFadingLabel *)self->_subtitleLabel trailingAnchor];
  v18 = [(CarETAArrivedSign *)self trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-10.0];
  v43[1] = v19;
  v20 = [(MUFadingLabel *)self->_subtitleLabel topAnchor];
  v21 = [(MUFadingLabel *)self->_titleLabel bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v43[2] = v22;
  v23 = [NSArray arrayWithObjects:v43 count:3];
  [v3 addObjectsFromArray:v23];

  v40 = [(UIStackView *)self->_buttonsStackView leadingAnchor];
  v39 = [(CarETAArrivedSign *)self leadingAnchor];
  v36 = [v40 constraintEqualToAnchor:v39 constant:10.0];
  v42[0] = v36;
  v33 = [(UIStackView *)self->_buttonsStackView trailingAnchor];
  v24 = [(CarETAArrivedSign *)self trailingAnchor];
  v25 = [v33 constraintEqualToAnchor:v24 constant:-10.0];
  v42[1] = v25;
  v26 = [(UIStackView *)self->_buttonsStackView topAnchor];
  v27 = [(MUFadingLabel *)self->_subtitleLabel bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];
  v42[2] = v28;
  v29 = [(UIStackView *)self->_buttonsStackView bottomAnchor];
  v30 = [(CarETAArrivedSign *)self bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-10.0];
  v42[3] = v31;
  v32 = [NSArray arrayWithObjects:v42 count:4];
  [v41 addObjectsFromArray:v32];

  [NSLayoutConstraint activateConstraints:v41];
}

- (CarETAArrivedSign)initWithDelegate:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = CarETAArrivedSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [(CarETAArrivedSign *)&v33 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = v11;
  if (v11)
  {
    [(CarETAArrivedSign *)v11 setAccessibilityIdentifier:@"CarETAArrivedSign"];
    objc_storeWeak(&v12->_delegate, v6);
    objc_storeWeak(&v12->_dataSource, v7);
    v12->_state = 0;
    v13 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v13;

    [(MUFadingLabel *)v12->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(MUFadingLabel *)v12->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUFadingLabel *)v12->_titleLabel setNumberOfLines:1];
    [(MUFadingLabel *)v12->_titleLabel setTextAlignment:1];
    v15 = [objc_opt_class() _buttonFont];
    [(MUFadingLabel *)v12->_titleLabel setFont:v15];

    WeakRetained = objc_loadWeakRetained(&v12->_dataSource);
    v17 = [WeakRetained arrivalTitle];
    [(MUFadingLabel *)v12->_titleLabel setText:v17];

    [(CarETAArrivedSign *)v12 addSubview:v12->_titleLabel];
    v18 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v12->_subtitleLabel;
    v12->_subtitleLabel = v18;

    [(MUFadingLabel *)v12->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(MUFadingLabel *)v12->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUFadingLabel *)v12->_subtitleLabel setNumberOfLines:5];
    [(MUFadingLabel *)v12->_subtitleLabel setTextAlignment:1];
    v20 = [objc_opt_class() _subtitleFont];
    [(MUFadingLabel *)v12->_subtitleLabel setFont:v20];

    v21 = +[UIColor secondaryLabelColor];
    [(MUFadingLabel *)v12->_subtitleLabel setTextColor:v21];

    v22 = objc_loadWeakRetained(&v12->_dataSource);
    v23 = [v22 arrivalSubtitle];
    [(MUFadingLabel *)v12->_subtitleLabel setText:v23];

    [(CarETAArrivedSign *)v12 addSubview:v12->_subtitleLabel];
    v24 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    endNavigationButton = v12->_endNavigationButton;
    v12->_endNavigationButton = v24;

    [(CarCardRoundedButton *)v12->_endNavigationButton setAccessibilityIdentifier:@"EndNavigationButton"];
    [(CarCardRoundedButton *)v12->_endNavigationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarCardRoundedButton *)v12->_endNavigationButton addTarget:v12 action:"_onEndPressed:" forControlEvents:64];
    v26 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    alternativeActionButton = v12->_alternativeActionButton;
    v12->_alternativeActionButton = v26;

    [(CarCardRoundedButton *)v12->_alternativeActionButton setAccessibilityIdentifier:@"AlternativeActionButton"];
    [(CarCardRoundedButton *)v12->_alternativeActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarCardRoundedButton *)v12->_alternativeActionButton addTarget:v12 action:"_onNextStopPressed:" forControlEvents:64];
    v28 = [UIStackView alloc];
    v34 = v12->_endNavigationButton;
    v29 = [NSArray arrayWithObjects:&v34 count:1];
    v30 = [v28 initWithArrangedSubviews:v29];
    buttonsStackView = v12->_buttonsStackView;
    v12->_buttonsStackView = v30;

    [(UIStackView *)v12->_buttonsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v12->_buttonsStackView setAxis:1];
    [(UIStackView *)v12->_buttonsStackView setSpacing:2.0];
    [(CarETAArrivedSign *)v12 addSubview:v12->_buttonsStackView];
    [(CarETAArrivedSign *)v12 _setupConstraints];
    [(CarETAArrivedSign *)v12 _setupStyling];
    [(CarETAArrivedSign *)v12 _updateContents];
  }

  return v12;
}

@end