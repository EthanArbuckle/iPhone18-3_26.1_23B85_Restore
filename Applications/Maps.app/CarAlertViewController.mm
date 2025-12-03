@interface CarAlertViewController
+ (id)_calloutFixedFontWithSymbolicTraits:(unsigned int)traits;
+ (id)_messageAttributes;
+ (id)_messageAttributesSmallText;
+ (id)_textAttributes;
+ (id)_titleAttributes;
- (CarAlertViewController)initWithResultBlock:(id)block;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (UIButton)preferredButton;
- (id)_buttonFont;
- (id)_buttonWithTitle:(id)title index:(int64_t)index;
- (id)_messageAttributedString;
- (id)_messageAttributedStringSmallText;
- (id)_titleAttributedString;
- (void)_buttonTapped:(id)tapped;
- (void)_dismissWithResult:(int64_t)result buttonIndex:(int64_t)index;
- (void)_handleBackButtonPressed:(id)pressed;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateSubviews;
- (void)reset;
- (void)setActions:(id)actions;
- (void)setAlertMessage:(id)message;
- (void)setAlertTitle:(id)title;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CarAlertViewController

- (UIButton)preferredButton
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredButton);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  if (-[CarAlertViewController isViewLoaded](self, "isViewLoaded") && (-[CarAlertViewController preferredButton](self, "preferredButton"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _maps_isVisible], v3, v4))
  {
    preferredButton = [(CarAlertViewController *)self preferredButton];
    v8 = preferredButton;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarAlertViewController *)self isViewLoaded])
  {
    buttons = [(CarAlertViewController *)self buttons];
    buttons2 = [(CarAlertViewController *)self buttons];
    v5 = [buttons2 indexesOfObjectsPassingTest:&stru_101656880];
    v6 = [buttons objectsAtIndexes:v5];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)_handleBackButtonPressed:(id)pressed
{
  buttons = [(CarAlertViewController *)self buttons];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E6F5B0;
  v5[3] = &unk_101656840;
  v5[4] = self;
  [buttons enumerateObjectsUsingBlock:v5];
}

- (void)_dismissWithResult:(int64_t)result buttonIndex:(int64_t)index
{
  resultBlock = [(CarAlertViewController *)self resultBlock];

  if (resultBlock)
  {
    resultBlock2 = [(CarAlertViewController *)self resultBlock];
    resultBlock2[2](resultBlock2, self, result, index);
  }
}

- (void)viewDidLayoutSubviews
{
  alertAttributedMessage = [(CarAlertViewController *)self alertAttributedMessage];

  if (!alertAttributedMessage)
  {
    messageLabel = [(CarAlertViewController *)self messageLabel];
    [messageLabel frame];
    if (v4 > 0.0)
    {
      messageLabel2 = [(CarAlertViewController *)self messageLabel];
      [messageLabel2 intrinsicContentSize];
      v7 = v6;
      messageLabel3 = [(CarAlertViewController *)self messageLabel];
      [messageLabel3 frame];
      v10 = v9;

      if (v7 <= v10)
      {
        return;
      }

      messageLabel = [(CarAlertViewController *)self messageLabel];
      _messageAttributedStringSmallText = [(CarAlertViewController *)self _messageAttributedStringSmallText];
      [messageLabel setAttributedText:_messageAttributedStringSmallText];
    }
  }
}

- (void)_setupConstraints
{
  v72 = objc_alloc_init(UILayoutGuide);
  view = [(CarAlertViewController *)self view];
  [view addLayoutGuide:v72];

  titleLabel = [(CarAlertViewController *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  view2 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  v66 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:40.0];
  v73[0] = v66;
  titleLabel2 = [(CarAlertViewController *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  view3 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  v73[1] = v60;
  view4 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
  titleLabel3 = [(CarAlertViewController *)self titleLabel];
  trailingAnchor2 = [titleLabel3 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
  v73[2] = v54;
  messageLabel = [(CarAlertViewController *)self messageLabel];
  firstBaselineAnchor2 = [messageLabel firstBaselineAnchor];
  titleLabel4 = [(CarAlertViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  v49 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:30.0];
  v73[3] = v49;
  messageLabel2 = [(CarAlertViewController *)self messageLabel];
  leadingAnchor3 = [messageLabel2 leadingAnchor];
  view5 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  v73[4] = v43;
  view6 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide5 = [view6 safeAreaLayoutGuide];
  trailingAnchor3 = [safeAreaLayoutGuide5 trailingAnchor];
  messageLabel3 = [(CarAlertViewController *)self messageLabel];
  trailingAnchor4 = [messageLabel3 trailingAnchor];
  v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:12.0];
  v73[5] = v37;
  buttonGrid = [(CarAlertViewController *)self buttonGrid];
  topAnchor2 = [buttonGrid topAnchor];
  messageLabel4 = [(CarAlertViewController *)self messageLabel];
  lastBaselineAnchor2 = [messageLabel4 lastBaselineAnchor];
  v32 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2 constant:14.0];
  v73[6] = v32;
  buttonGrid2 = [(CarAlertViewController *)self buttonGrid];
  leadingAnchor5 = [buttonGrid2 leadingAnchor];
  view7 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide6 = [view7 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide6 leadingAnchor];
  v25 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:20.0];
  v73[7] = v25;
  view8 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide7 = [view8 safeAreaLayoutGuide];
  trailingAnchor5 = [safeAreaLayoutGuide7 trailingAnchor];
  buttonGrid3 = [(CarAlertViewController *)self buttonGrid];
  trailingAnchor6 = [buttonGrid3 trailingAnchor];
  v19 = [trailingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:20.0];
  v73[8] = v19;
  buttonGrid4 = [(CarAlertViewController *)self buttonGrid];
  widthAnchor = [buttonGrid4 widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:360.0];
  v73[9] = v16;
  buttonGrid5 = [(CarAlertViewController *)self buttonGrid];
  centerXAnchor = [buttonGrid5 centerXAnchor];
  view9 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide8 = [view9 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide8 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v73[10] = v7;
  view10 = [(CarAlertViewController *)self view];
  safeAreaLayoutGuide9 = [view10 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide9 bottomAnchor];
  buttonGrid6 = [(CarAlertViewController *)self buttonGrid];
  bottomAnchor2 = [buttonGrid6 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:35.0];
  v73[11] = v13;
  v31 = [NSArray arrayWithObjects:v73 count:12];

  [NSLayoutConstraint activateConstraints:v31];
}

- (void)reset
{
  backButtonRecognizer = [(CarAlertViewController *)self backButtonRecognizer];

  if (backButtonRecognizer)
  {
    view = [(CarAlertViewController *)self view];
    backButtonRecognizer2 = [(CarAlertViewController *)self backButtonRecognizer];
    [view removeGestureRecognizer:backButtonRecognizer2];

    [(CarAlertViewController *)self setBackButtonRecognizer:0];
  }

  objc_storeWeak(&self->_preferredButton, 0);
  [(NSMutableArray *)self->_buttons removeAllObjects];
  [(CarButtonGridView *)self->_buttonGrid resetButtons];
  alertTitle = self->_alertTitle;
  self->_alertTitle = 0;

  alertMessage = self->_alertMessage;
  self->_alertMessage = 0;

  alertAttributedMessage = self->_alertAttributedMessage;
  self->_alertAttributedMessage = 0;

  resultBlock = self->_resultBlock;
  self->_resultBlock = 0;

  [(CarAlertViewController *)self _updateSubviews];
}

- (void)_updateSubviews
{
  if (![(CarAlertViewController *)self isViewLoaded])
  {
    return;
  }

  alertTitle = [(CarAlertViewController *)self alertTitle];
  if (alertTitle)
  {
    v4 = alertTitle;
    titleLabel = [(CarAlertViewController *)self titleLabel];
    text = [titleLabel text];
    alertTitle2 = [(CarAlertViewController *)self alertTitle];
    v8 = [text isEqualToString:alertTitle2];

    if ((v8 & 1) == 0)
    {
      titleLabel2 = [(CarAlertViewController *)self titleLabel];
      [titleLabel2 setHidden:0];

      titleLabel3 = [(CarAlertViewController *)self titleLabel];
      _titleAttributedString = [(CarAlertViewController *)self _titleAttributedString];
      [titleLabel3 setAttributedText:_titleAttributedString];

      goto LABEL_7;
    }
  }

  alertTitle3 = [(CarAlertViewController *)self alertTitle];

  if (!alertTitle3)
  {
    titleLabel4 = [(CarAlertViewController *)self titleLabel];
    [titleLabel4 setHidden:1];

    titleLabel3 = [(CarAlertViewController *)self titleLabel];
    [titleLabel3 setText:0];
LABEL_7:
  }

  alertAttributedMessage = [(CarAlertViewController *)self alertAttributedMessage];
  if (alertAttributedMessage)
  {
    v15 = alertAttributedMessage;
    messageLabel = [(CarAlertViewController *)self messageLabel];
    attributedText = [messageLabel attributedText];
    alertAttributedMessage2 = [(CarAlertViewController *)self alertAttributedMessage];
    v19 = [attributedText isEqualToAttributedString:alertAttributedMessage2];

    if ((v19 & 1) == 0)
    {
      messageLabel2 = [(CarAlertViewController *)self messageLabel];
      [messageLabel2 setHidden:0];

      alertAttributedMessage3 = [(CarAlertViewController *)self alertAttributedMessage];
LABEL_17:
      alertMessage3 = alertAttributedMessage3;
      messageLabel3 = [(CarAlertViewController *)self messageLabel];
      [messageLabel3 setAttributedText:alertMessage3];

      goto LABEL_18;
    }
  }

  alertMessage = [(CarAlertViewController *)self alertMessage];
  if (alertMessage)
  {
    v21 = alertMessage;
    messageLabel4 = [(CarAlertViewController *)self messageLabel];
    text2 = [messageLabel4 text];
    alertMessage2 = [(CarAlertViewController *)self alertMessage];
    v25 = [text2 isEqualToString:alertMessage2];

    if ((v25 & 1) == 0)
    {
      messageLabel5 = [(CarAlertViewController *)self messageLabel];
      [messageLabel5 setHidden:0];

      alertAttributedMessage3 = [(CarAlertViewController *)self _messageAttributedString];
      goto LABEL_17;
    }
  }

  alertMessage3 = [(CarAlertViewController *)self alertMessage];
  if (alertMessage3)
  {
LABEL_18:

    goto LABEL_19;
  }

  alertAttributedMessage4 = [(CarAlertViewController *)self alertAttributedMessage];

  if (!alertAttributedMessage4)
  {
    messageLabel6 = [(CarAlertViewController *)self messageLabel];
    [messageLabel6 setHidden:1];

    messageLabel7 = [(CarAlertViewController *)self messageLabel];
    [messageLabel7 setText:0];

    alertMessage3 = [(CarAlertViewController *)self messageLabel];
    [alertMessage3 setAttributedText:0];
    goto LABEL_18;
  }

LABEL_19:
  buttonGrid = [(CarAlertViewController *)self buttonGrid];
  buttons = [buttonGrid buttons];
  buttons2 = [(CarAlertViewController *)self buttons];
  v37 = [buttons isEqualToArray:buttons2];

  if ((v37 & 1) == 0)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    buttons3 = [(CarAlertViewController *)self buttons];
    v39 = [buttons3 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v52;
      do
      {
        v42 = 0;
        do
        {
          if (*v52 != v41)
          {
            objc_enumerationMutation(buttons3);
          }

          v43 = *(*(&v51 + 1) + 8 * v42);
          buttonGrid2 = [(CarAlertViewController *)self buttonGrid];
          [buttonGrid2 addButton:v43];

          if ([v43 cancels])
          {
            backButtonRecognizer = [(CarAlertViewController *)self backButtonRecognizer];

            if (!backButtonRecognizer)
            {
              v46 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleBackButtonPressed:"];
              [(CarAlertViewController *)self setBackButtonRecognizer:v46];

              backButtonRecognizer2 = [(CarAlertViewController *)self backButtonRecognizer];
              [backButtonRecognizer2 setAllowedPressTypes:&off_1016EDAD8];

              view = [(CarAlertViewController *)self view];
              backButtonRecognizer3 = [(CarAlertViewController *)self backButtonRecognizer];
              [view addGestureRecognizer:backButtonRecognizer3];
            }
          }

          v42 = v42 + 1;
        }

        while (v40 != v42);
        v40 = [buttons3 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v40);
    }
  }

  view2 = [(CarAlertViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(UILabel);
  [(CarAlertViewController *)self setTitleLabel:v3];

  titleLabel = [(CarAlertViewController *)self titleLabel];
  [titleLabel setAccessibilityIdentifier:@"TitleLabel"];

  titleLabel2 = [(CarAlertViewController *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel3 = [(CarAlertViewController *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  view = [(CarAlertViewController *)self view];
  titleLabel4 = [(CarAlertViewController *)self titleLabel];
  [view addSubview:titleLabel4];

  v9 = objc_alloc_init(UILabel);
  [(CarAlertViewController *)self setMessageLabel:v9];

  messageLabel = [(CarAlertViewController *)self messageLabel];
  [messageLabel setAccessibilityIdentifier:@"MessageLabel"];

  messageLabel2 = [(CarAlertViewController *)self messageLabel];
  [messageLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  messageLabel3 = [(CarAlertViewController *)self messageLabel];
  [messageLabel3 setNumberOfLines:0];

  view2 = [(CarAlertViewController *)self view];
  messageLabel4 = [(CarAlertViewController *)self messageLabel];
  [view2 addSubview:messageLabel4];

  v15 = [[CarButtonGridView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarAlertViewController *)self setButtonGrid:v15];

  buttonGrid = [(CarAlertViewController *)self buttonGrid];
  [buttonGrid setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(CarAlertViewController *)self view];
  buttonGrid2 = [(CarAlertViewController *)self buttonGrid];
  [view3 addSubview:buttonGrid2];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CarAlertViewController;
  [(CarAlertViewController *)&v6 viewDidLoad];
  view = [(CarAlertViewController *)self view];
  [view setAccessibilityIdentifier:@"CarAlertView"];

  view2 = [(CarAlertViewController *)self view];
  v5 = +[UIColor tableBackgroundColor];
  [view2 setBackgroundColor:v5];

  [(CarAlertViewController *)self _setupSubviews];
  [(CarAlertViewController *)self _setupConstraints];
  [(CarAlertViewController *)self _updateSubviews];
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  index = [tappedCopy index];
  cancels = [tappedCopy cancels];

  [(CarAlertViewController *)self _dismissWithResult:cancels buttonIndex:index];
}

- (id)_buttonFont
{
  v2 = objc_opt_class();

  return [v2 _calloutFixedFontWithSymbolicTraits:2];
}

- (id)_buttonWithTitle:(id)title index:(int64_t)index
{
  titleCopy = title;
  v9 = +[(CarFocusableButton *)CarAlertButton];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setModifiesBackgroundColor:1];
  v10 = +[UIColor _carSystemQuaternaryColor];
  [v9 setNonFocusedBackgroundColor:v10];

  v11 = +[UIColor _carSystemQuaternaryColor];
  [v9 setBackgroundColor:v11];

  v12 = +[UIColor _carSystemFocusColor];
  [v9 setTintColor:v12];

  [v9 _setContinuousCornerRadius:8.0];
  [v9 setTitleEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
  _buttonFont = [(CarAlertViewController *)self _buttonFont];
  titleLabel = [v9 titleLabel];
  [titleLabel setFont:_buttonFont];

  titleLabel2 = [v9 titleLabel];
  font = [titleLabel2 font];
  [font pointSize];
  v18 = 10.0 / v17;
  v19 = 1.0;
  if (10.0 / v17 <= 1.0)
  {
    titleLabel3 = [v9 titleLabel];
    font2 = [titleLabel3 font];
    [font2 pointSize];
    v19 = 10.0 / v20;
  }

  titleLabel4 = [v9 titleLabel];
  [titleLabel4 setMinimumScaleFactor:v19];

  if (v18 <= 1.0)
  {
  }

  titleLabel5 = [v9 titleLabel];
  [titleLabel5 setAdjustsFontSizeToFitWidth:1];

  [v9 setTitle:titleCopy forState:0];
  [v9 setIndex:index];
  [v9 addTarget:self action:"_buttonTapped:" forControlEvents:64];
  widthAnchor = [v9 widthAnchor];
  v24 = [widthAnchor constraintLessThanOrEqualToConstant:241.0];
  v29[0] = v24;
  heightAnchor = [v9 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:40.0];
  v29[1] = v26;
  v27 = [NSArray arrayWithObjects:v29 count:2];
  [v9 addConstraints:v27];

  return v9;
}

- (id)_messageAttributedStringSmallText
{
  v3 = [NSAttributedString alloc];
  alertMessage = [(CarAlertViewController *)self alertMessage];
  _messageAttributesSmallText = [objc_opt_class() _messageAttributesSmallText];
  v6 = [v3 initWithString:alertMessage attributes:_messageAttributesSmallText];

  return v6;
}

- (id)_messageAttributedString
{
  alertAttributedMessage = [(CarAlertViewController *)self alertAttributedMessage];

  if (alertAttributedMessage)
  {
    alertAttributedMessage2 = [(CarAlertViewController *)self alertAttributedMessage];
  }

  else
  {
    v5 = [NSAttributedString alloc];
    alertMessage = [(CarAlertViewController *)self alertMessage];
    _messageAttributes = [objc_opt_class() _messageAttributes];
    alertAttributedMessage2 = [v5 initWithString:alertMessage attributes:_messageAttributes];
  }

  return alertAttributedMessage2;
}

- (id)_titleAttributedString
{
  v3 = [NSAttributedString alloc];
  alertTitle = [(CarAlertViewController *)self alertTitle];
  _titleAttributes = [objc_opt_class() _titleAttributes];
  v6 = [v3 initWithString:alertTitle attributes:_titleAttributes];

  return v6;
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  objc_storeStrong(&self->_actions, actions);
  if ([actionsCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [actionsCopy objectAtIndexedSubscript:v5];
      title = [v6 title];
      v8 = [(CarAlertViewController *)self _buttonWithTitle:title index:v5];

      [v8 setCancels:{objc_msgSend(v6, "cancels")}];
      buttons = [(CarAlertViewController *)self buttons];
      [buttons addObject:v8];

      if (([v6 cancels] & 1) == 0)
      {
        [(CarAlertViewController *)self setPreferredButton:v8];
      }

      ++v5;
    }

    while (v5 < [actionsCopy count]);
  }

  [(CarAlertViewController *)self _updateSubviews];
}

- (void)setAlertMessage:(id)message
{
  v4 = [message copy];
  alertMessage = self->_alertMessage;
  self->_alertMessage = v4;

  [(CarAlertViewController *)self _updateSubviews];
}

- (void)setAlertTitle:(id)title
{
  v4 = [title copy];
  alertTitle = self->_alertTitle;
  self->_alertTitle = v4;

  [(CarAlertViewController *)self _updateSubviews];
}

- (CarAlertViewController)initWithResultBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = CarAlertViewController;
  v5 = [(CarAlertViewController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [blockCopy copy];
    resultBlock = v5->_resultBlock;
    v5->_resultBlock = v6;

    v8 = objc_alloc_init(NSMutableArray);
    buttons = v5->_buttons;
    v5->_buttons = v8;
  }

  return v5;
}

+ (id)_messageAttributesSmallText
{
  _textAttributes = [self _textAttributes];
  v6 = NSFontAttributeName;
  v3 = [UIFont systemFontOfSize:12.0];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [_textAttributes addEntriesFromDictionary:v4];

  return _textAttributes;
}

+ (id)_messageAttributes
{
  _textAttributes = [self _textAttributes];
  v7 = NSFontAttributeName;
  v4 = [self _calloutFixedFontWithSymbolicTraits:0];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [_textAttributes addEntriesFromDictionary:v5];

  return _textAttributes;
}

+ (id)_calloutFixedFontWithSymbolicTraits:(unsigned int)traits
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout addingSymbolicTraits:*&traits options:0];
  v4 = [UIFont fontWithDescriptor:v3 size:16.0];

  return v4;
}

+ (id)_titleAttributes
{
  _textAttributes = [self _textAttributes];
  v6 = NSFontAttributeName;
  v3 = [UIFont _maps_boldSystemFontWithFixedSize:22.0];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [_textAttributes addEntriesFromDictionary:v4];

  return _textAttributes;
}

+ (id)_textAttributes
{
  v2 = objc_alloc_init(NSMutableParagraphStyle);
  [v2 setAlignment:1];
  [v2 setLineBreakMode:0];
  v7[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor labelColor];
  v7[1] = NSParagraphStyleAttributeName;
  v8[0] = v3;
  v8[1] = v2;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

  return v5;
}

@end