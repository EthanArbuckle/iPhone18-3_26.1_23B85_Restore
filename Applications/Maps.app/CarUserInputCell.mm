@interface CarUserInputCell
- (CarUserInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CarUserInputCellDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_externalDeviceChanged:(id)changed;
- (void)_handleDictationSelectPressGesture:(id)gesture;
- (void)_handleDictationTouchGesture:(id)gesture;
- (void)_handleKeyboardSelectPressGesture:(id)gesture;
- (void)_handleKeyboardTouchGesture:(id)gesture;
- (void)_installGestureRecognizers;
- (void)_updateConstraintsAnimated:(BOOL)animated alongWithAnimation:(id)animation completion:(id)completion;
- (void)didMoveToWindow;
- (void)setKeyboardDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarUserInputCell

- (void)_installGestureRecognizers
{
  [(CarFocusableButton *)self->_keyboardButton removeAllGestureRecognizers];
  [(CarDictationButton *)self->_dictationButton removeAllGestureRecognizers];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleKeyboardSelectPressGesture:"];
  [v3 setAllowedPressTypes:&off_1016EC788];
  [(CarFocusableButton *)self->_keyboardButton addGestureRecognizer:v3];
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleKeyboardTouchGesture:"];
  [v4 setAllowedTouchTypes:&off_1016EC7A0];
  [(CarFocusableButton *)self->_keyboardButton addGestureRecognizer:v4];
  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDictationSelectPressGesture:"];

  [v6 setAllowedPressTypes:&off_1016EC7B8];
  [(CarDictationButton *)self->_dictationButton addGestureRecognizer:v6];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDictationTouchGesture:"];

  [v5 setAllowedTouchTypes:&off_1016EC7D0];
  [(CarDictationButton *)self->_dictationButton addGestureRecognizer:v5];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CarUserInputCell;
  [(CarUserInputCell *)&v3 didMoveToWindow];
  [(CarUserInputCell *)self _installGestureRecognizers];
}

- (NSArray)preferredFocusEnvironments
{
  dictationButton = self->_dictationButton;
  v2 = [NSArray arrayWithObjects:&dictationButton count:1];

  return v2;
}

- (CarUserInputCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarUserInputCell *)self _siriButtonShouldBeExpanded])
  {
    dictationButton = self->_dictationButton;
    p_dictationButton = &dictationButton;
    v4 = 1;
  }

  else
  {
    keyboardButton = self->_keyboardButton;
    v8 = self->_dictationButton;
    v9 = keyboardButton;
    p_dictationButton = &v8;
    v4 = 2;
  }

  dictationButton = [NSArray arrayWithObjects:p_dictationButton count:v4, v8, v9, dictationButton];

  return dictationButton;
}

- (void)_handleKeyboardTouchGesture:(id)gesture
{
  delegate = [(CarUserInputCell *)self delegate];
  [delegate userInputCell:self didSelectAction:1 usingInteractionModel:1];
}

- (void)_handleKeyboardSelectPressGesture:(id)gesture
{
  delegate = [(CarUserInputCell *)self delegate];
  [delegate userInputCell:self didSelectAction:1 usingInteractionModel:2];
}

- (void)_handleDictationTouchGesture:(id)gesture
{
  delegate = [(CarUserInputCell *)self delegate];
  [delegate userInputCell:self didSelectAction:0 usingInteractionModel:1];
}

- (void)_handleDictationSelectPressGesture:(id)gesture
{
  delegate = [(CarUserInputCell *)self delegate];
  [delegate userInputCell:self didSelectAction:0 usingInteractionModel:2];
}

- (void)_updateConstraintsAnimated:(BOOL)animated alongWithAnimation:(id)animation completion:(id)completion
{
  animatedCopy = animated;
  animationCopy = animation;
  completionCopy = completion;
  _siriButtonShouldBeExpanded = [(CarUserInputCell *)self _siriButtonShouldBeExpanded];
  currentKeyboardConstraints = self->_currentKeyboardConstraints;
  if (currentKeyboardConstraints && _siriButtonShouldBeExpanded == [(NSArray *)currentKeyboardConstraints isEqualToArray:self->_keyboardDisabledConstraints])
  {
    v12 = 0;
  }

  else
  {
    v12 = v26;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10059D86C;
    v26[3] = &unk_101661AE0;
    v27 = _siriButtonShouldBeExpanded;
    v26[4] = self;
  }

  v13 = objc_retainBlock(v12);
  contentView = [(CarUserInputCell *)self contentView];
  [contentView bringSubviewToFront:self->_dictationButton];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10059D91C;
  v22[3] = &unk_101622838;
  v15 = animationCopy;
  v22[4] = self;
  v23 = v15;
  v25 = _siriButtonShouldBeExpanded;
  v16 = v13;
  v24 = v16;
  v17 = objc_retainBlock(v22);
  v18 = v17;
  if (animatedCopy)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10059D99C;
    v20[3] = &unk_101661090;
    v20[4] = self;
    v21 = v17;
    [UIView animateWithDuration:v20 animations:completionCopy completion:0.2];
  }

  else
  {
    (v17[2])(v17);
    contentView2 = [(CarUserInputCell *)self contentView];
    [contentView2 setNeedsLayout];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)setKeyboardDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_keyboardDisabled != disabled)
  {
    v6[5] = v4;
    v6[6] = v5;
    self->_keyboardDisabled = disabled;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10059DA90;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [(CarUserInputCell *)self _updateConstraintsAnimated:animated alongWithAnimation:v6 completion:0];
  }
}

- (void)_externalDeviceChanged:(id)changed
{
  v4 = +[MapsExternalDevice sharedInstance];
  -[CarUserInputCell setKeyboardDisabled:animated:](self, "setKeyboardDisabled:animated:", [v4 disableSoftwareKeyboard], 1);
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CarUserInputCell;
  [(CarUserInputCell *)&v4 traitCollectionDidChange:change];
  [(CarUserInputCell *)self _installGestureRecognizers];
}

- (CarUserInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v77.receiver = self;
  v77.super_class = CarUserInputCell;
  v4 = [(CarUserInputCell *)&v77 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CarUserInputCell *)v4 setFocusStyle:1];
    [(CarUserInputCell *)v5 setSelectionStyle:0];
    v6 = +[UIColor clearColor];
    [(CarUserInputCell *)v5 setBackgroundColor:v6];

    v7 = +[UIColor clearColor];
    contentView = [(CarUserInputCell *)v5 contentView];
    [contentView setBackgroundColor:v7];

    v9 = [[CarDictationButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    dictationButton = v5->_dictationButton;
    v5->_dictationButton = v9;

    [(CarDictationButton *)v5->_dictationButton setAccessibilityIdentifier:@"DictationButton"];
    [(CarDictationButton *)v5->_dictationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(CarDictationButton *)v5->_dictationButton layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

    layer2 = [(CarDictationButton *)v5->_dictationButton layer];
    [layer2 setCornerRadius:4.0];

    v13 = +[UIColor _carSystemFocusLabelColor];
    [(CarFocusableControl *)v5->_dictationButton setFocusedTintColor:v13];

    v14 = +[UIColor _carSystemFocusColor];
    [(CarFocusableControl *)v5->_dictationButton setUnfocusedTintColor:v14];

    v15 = +[UIColor _carSystemFocusColor];
    [(CarFocusableControl *)v5->_dictationButton setFocusedBackgroundColor:v15];

    v16 = +[UIColor _carSystemQuaternaryColor];
    [(CarFocusableControl *)v5->_dictationButton setUnfocusedBackgroundColor:v16];

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"CarPlay_Dictation" value:@"localized string not found" table:0];
    v82[0] = v18;
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"CarPlay_Siri" value:@"localized string not found" table:0];
    v82[1] = v20;
    v21 = [NSArray arrayWithObjects:v82 count:2];
    [(CarDictationButton *)v5->_dictationButton setAccessibilityUserInputLabels:v21];

    contentView2 = [(CarUserInputCell *)v5 contentView];
    [contentView2 addSubview:v5->_dictationButton];

    v23 = +[CarFocusableButton button];
    keyboardButton = v5->_keyboardButton;
    v5->_keyboardButton = v23;

    [(CarFocusableButton *)v5->_keyboardButton setAccessibilityIdentifier:@"KeyboardButton"];
    [(CarFocusableButton *)v5->_keyboardButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor _carSystemQuaternaryColor];
    [(CarFocusableButton *)v5->_keyboardButton setNonFocusedBackgroundColor:v25];

    [(CarFocusableButton *)v5->_keyboardButton setModifiesBackgroundColor:1];
    layer3 = [(CarFocusableButton *)v5->_keyboardButton layer];
    [layer3 setCornerCurve:kCACornerCurveContinuous];

    layer4 = [(CarFocusableButton *)v5->_keyboardButton layer];
    [layer4 setCornerRadius:4.0];

    imageView = [(CarFocusableButton *)v5->_keyboardButton imageView];
    [imageView setContentMode:1];

    v29 = v5->_keyboardButton;
    v30 = [UIImage _mapsCar_systemImageNamed:@"keyboard" textStyle:UIFontTextStyleTitle3];
    [(CarFocusableButton *)v29 setImage:v30 forState:0];

    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"CarPlay_Keyboard" value:@"localized string not found" table:0];
    v81 = v32;
    v33 = [NSArray arrayWithObjects:&v81 count:1];
    [(CarFocusableButton *)v5->_keyboardButton setAccessibilityUserInputLabels:v33];

    contentView3 = [(CarUserInputCell *)v5 contentView];
    [contentView3 addSubview:v5->_keyboardButton];

    contentView4 = [(CarUserInputCell *)v5 contentView];
    trailingAnchor = [contentView4 trailingAnchor];
    trailingAnchor2 = [(CarDictationButton *)v5->_dictationButton trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v80 = v38;
    v39 = [NSArray arrayWithObjects:&v80 count:1];
    keyboardDisabledConstraints = v5->_keyboardDisabledConstraints;
    v5->_keyboardDisabledConstraints = v39;

    leadingAnchor = [(CarFocusableButton *)v5->_keyboardButton leadingAnchor];
    trailingAnchor3 = [(CarDictationButton *)v5->_dictationButton trailingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:2.0];
    v79[0] = v43;
    widthAnchor = [(CarDictationButton *)v5->_dictationButton widthAnchor];
    widthAnchor2 = [(CarFocusableButton *)v5->_keyboardButton widthAnchor];
    v46 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v79[1] = v46;
    v47 = [NSArray arrayWithObjects:v79 count:2];
    keyboardEnabledConstraints = v5->_keyboardEnabledConstraints;
    v5->_keyboardEnabledConstraints = v47;

    [NSLayoutConstraint activateConstraints:v5->_keyboardEnabledConstraints];
    leadingAnchor2 = [(CarDictationButton *)v5->_dictationButton leadingAnchor];
    contentView5 = [(CarUserInputCell *)v5 contentView];
    leadingAnchor3 = [contentView5 leadingAnchor];
    v73 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v78[0] = v73;
    contentView6 = [(CarUserInputCell *)v5 contentView];
    trailingAnchor4 = [contentView6 trailingAnchor];
    trailingAnchor5 = [(CarFocusableButton *)v5->_keyboardButton trailingAnchor];
    v69 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v78[1] = v69;
    topAnchor = [(CarDictationButton *)v5->_dictationButton topAnchor];
    contentView7 = [(CarUserInputCell *)v5 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v78[2] = v65;
    topAnchor3 = [(CarFocusableButton *)v5->_keyboardButton topAnchor];
    topAnchor4 = [(CarDictationButton *)v5->_dictationButton topAnchor];
    v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v78[3] = v62;
    contentView8 = [(CarUserInputCell *)v5 contentView];
    bottomAnchor = [contentView8 bottomAnchor];
    bottomAnchor2 = [(CarDictationButton *)v5->_dictationButton bottomAnchor];
    v50 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v78[4] = v50;
    heightAnchor = [(CarDictationButton *)v5->_dictationButton heightAnchor];
    heightAnchor2 = [(CarFocusableButton *)v5->_keyboardButton heightAnchor];
    v53 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v78[5] = v53;
    heightAnchor3 = [(CarDictationButton *)v5->_dictationButton heightAnchor];
    v55 = [heightAnchor3 constraintEqualToConstant:36.0];
    v78[6] = v55;
    v56 = [NSArray arrayWithObjects:v78 count:7];
    [NSLayoutConstraint activateConstraints:v56];

    v57 = +[NSNotificationCenter defaultCenter];
    [v57 addObserver:v5 selector:"_externalDeviceChanged:" name:@"MapsExternalDeviceUpdated" object:0];

    v58 = +[MapsExternalDevice sharedInstance];
    -[CarUserInputCell setKeyboardDisabled:](v5, "setKeyboardDisabled:", [v58 disableSoftwareKeyboard]);

    [(CarUserInputCell *)v5 _installGestureRecognizers];
  }

  return v5;
}

@end