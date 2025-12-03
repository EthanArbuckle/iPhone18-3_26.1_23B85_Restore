@interface CarETAArrivedSign
- (CarETAArrivedSign)initWithDelegate:(id)delegate dataSource:(id)source;
- (CarETACardSignDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_onEndPressed:(id)pressed;
- (void)_onNextStopPressed:(id)pressed;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateContents;
- (void)setState:(int64_t)state;
@end

@implementation CarETAArrivedSign

- (void)_updateContents
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  arrivalTitle = [WeakRetained arrivalTitle];
  [(MUFadingLabel *)self->_titleLabel setText:arrivalTitle];

  v5 = objc_loadWeakRetained(&self->_dataSource);
  arrivalSubtitle = [v5 arrivalSubtitle];
  [(MUFadingLabel *)self->_subtitleLabel setText:arrivalSubtitle];

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

- (void)_onNextStopPressed:(id)pressed
{
  delegate = [(CarETAArrivedSign *)self delegate];
  [delegate etaCardSign:self didSelectAction:3];
}

- (void)_onEndPressed:(id)pressed
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

  delegate = [(CarETAArrivedSign *)self delegate];
  [delegate etaCardSign:self didSelectAction:v5];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(CarETAArrivedSign *)self _updateContents];
  }
}

- (void)_setupStyling
{
  titleLabel = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  v4 = +[CarETAArrivedSign _buttonFont];
  [titleLabel setFont:v4];

  [(CarCardRoundedButton *)self->_endNavigationButton setContentHorizontalAlignment:0];
  titleLabel2 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  [titleLabel2 setMinimumScaleFactor:0.699999988];

  titleLabel3 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  [titleLabel3 setAdjustsFontSizeToFitWidth:1];

  titleLabel4 = [(CarCardRoundedButton *)self->_endNavigationButton titleLabel];
  [titleLabel4 setNumberOfLines:2];

  v8 = +[UIColor systemWhiteColor];
  [(CarFocusableButton *)self->_endNavigationButton setNonFocusedTintColor:v8];

  v9 = +[UIColor _carSystemFocusLabelColor];
  [(CarFocusableButton *)self->_endNavigationButton setFocusedTintColor:v9];

  v10 = +[UIColor systemRedColor];
  [(CarFocusableButton *)self->_endNavigationButton setNonFocusedBackgroundColor:v10];

  v11 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self->_endNavigationButton setFocusedBackgroundColor:v11];

  titleLabel5 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  v13 = +[CarETAArrivedSign _buttonFont];
  [titleLabel5 setFont:v13];

  [(CarCardRoundedButton *)self->_alternativeActionButton setContentHorizontalAlignment:0];
  titleLabel6 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  [titleLabel6 setMinimumScaleFactor:0.699999988];

  titleLabel7 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  [titleLabel7 setAdjustsFontSizeToFitWidth:1];

  titleLabel8 = [(CarCardRoundedButton *)self->_alternativeActionButton titleLabel];
  [titleLabel8 setNumberOfLines:2];

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
  heightAnchor = [(CarCardRoundedButton *)self->_endNavigationButton heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:44.0];
  [v3 addObject:v5];

  heightAnchor2 = [(CarCardRoundedButton *)self->_alternativeActionButton heightAnchor];
  v7 = [heightAnchor2 constraintEqualToConstant:44.0];
  v41 = v3;
  [v3 addObject:v7];

  leadingAnchor = [(MUFadingLabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(CarETAArrivedSign *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v44[0] = v8;
  trailingAnchor = [(MUFadingLabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(CarETAArrivedSign *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v44[1] = v11;
  topAnchor = [(MUFadingLabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(CarETAArrivedSign *)self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v44[2] = v14;
  v15 = [NSArray arrayWithObjects:v44 count:3];
  [v3 addObjectsFromArray:v15];

  leadingAnchor3 = [(MUFadingLabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor4 = [(CarETAArrivedSign *)self leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v43[0] = v16;
  trailingAnchor3 = [(MUFadingLabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor4 = [(CarETAArrivedSign *)self trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  v43[1] = v19;
  topAnchor3 = [(MUFadingLabel *)self->_subtitleLabel topAnchor];
  bottomAnchor = [(MUFadingLabel *)self->_titleLabel bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v43[2] = v22;
  v23 = [NSArray arrayWithObjects:v43 count:3];
  [v3 addObjectsFromArray:v23];

  leadingAnchor5 = [(UIStackView *)self->_buttonsStackView leadingAnchor];
  leadingAnchor6 = [(CarETAArrivedSign *)self leadingAnchor];
  v36 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  v42[0] = v36;
  trailingAnchor5 = [(UIStackView *)self->_buttonsStackView trailingAnchor];
  trailingAnchor6 = [(CarETAArrivedSign *)self trailingAnchor];
  v25 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
  v42[1] = v25;
  topAnchor4 = [(UIStackView *)self->_buttonsStackView topAnchor];
  bottomAnchor2 = [(MUFadingLabel *)self->_subtitleLabel bottomAnchor];
  v28 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  v42[2] = v28;
  bottomAnchor3 = [(UIStackView *)self->_buttonsStackView bottomAnchor];
  bottomAnchor4 = [(CarETAArrivedSign *)self bottomAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
  v42[3] = v31;
  v32 = [NSArray arrayWithObjects:v42 count:4];
  [v41 addObjectsFromArray:v32];

  [NSLayoutConstraint activateConstraints:v41];
}

- (CarETAArrivedSign)initWithDelegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v33.receiver = self;
  v33.super_class = CarETAArrivedSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarETAArrivedSign *)&v33 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = height;
  if (height)
  {
    [(CarETAArrivedSign *)height setAccessibilityIdentifier:@"CarETAArrivedSign"];
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeWeak(&v12->_dataSource, sourceCopy);
    v12->_state = 0;
    v13 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v13;

    [(MUFadingLabel *)v12->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(MUFadingLabel *)v12->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUFadingLabel *)v12->_titleLabel setNumberOfLines:1];
    [(MUFadingLabel *)v12->_titleLabel setTextAlignment:1];
    _buttonFont = [objc_opt_class() _buttonFont];
    [(MUFadingLabel *)v12->_titleLabel setFont:_buttonFont];

    WeakRetained = objc_loadWeakRetained(&v12->_dataSource);
    arrivalTitle = [WeakRetained arrivalTitle];
    [(MUFadingLabel *)v12->_titleLabel setText:arrivalTitle];

    [(CarETAArrivedSign *)v12 addSubview:v12->_titleLabel];
    v18 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v12->_subtitleLabel;
    v12->_subtitleLabel = v18;

    [(MUFadingLabel *)v12->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(MUFadingLabel *)v12->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUFadingLabel *)v12->_subtitleLabel setNumberOfLines:5];
    [(MUFadingLabel *)v12->_subtitleLabel setTextAlignment:1];
    _subtitleFont = [objc_opt_class() _subtitleFont];
    [(MUFadingLabel *)v12->_subtitleLabel setFont:_subtitleFont];

    v21 = +[UIColor secondaryLabelColor];
    [(MUFadingLabel *)v12->_subtitleLabel setTextColor:v21];

    v22 = objc_loadWeakRetained(&v12->_dataSource);
    arrivalSubtitle = [v22 arrivalSubtitle];
    [(MUFadingLabel *)v12->_subtitleLabel setText:arrivalSubtitle];

    [(CarETAArrivedSign *)v12 addSubview:v12->_subtitleLabel];
    height2 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    endNavigationButton = v12->_endNavigationButton;
    v12->_endNavigationButton = height2;

    [(CarCardRoundedButton *)v12->_endNavigationButton setAccessibilityIdentifier:@"EndNavigationButton"];
    [(CarCardRoundedButton *)v12->_endNavigationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarCardRoundedButton *)v12->_endNavigationButton addTarget:v12 action:"_onEndPressed:" forControlEvents:64];
    height3 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    alternativeActionButton = v12->_alternativeActionButton;
    v12->_alternativeActionButton = height3;

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