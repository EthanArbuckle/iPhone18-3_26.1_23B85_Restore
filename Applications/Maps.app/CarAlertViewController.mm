@interface CarAlertViewController
+ (id)_calloutFixedFontWithSymbolicTraits:(unsigned int)a3;
+ (id)_messageAttributes;
+ (id)_messageAttributesSmallText;
+ (id)_textAttributes;
+ (id)_titleAttributes;
- (CarAlertViewController)initWithResultBlock:(id)a3;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (UIButton)preferredButton;
- (id)_buttonFont;
- (id)_buttonWithTitle:(id)a3 index:(int64_t)a4;
- (id)_messageAttributedString;
- (id)_messageAttributedStringSmallText;
- (id)_titleAttributedString;
- (void)_buttonTapped:(id)a3;
- (void)_dismissWithResult:(int64_t)a3 buttonIndex:(int64_t)a4;
- (void)_handleBackButtonPressed:(id)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateSubviews;
- (void)reset;
- (void)setActions:(id)a3;
- (void)setAlertMessage:(id)a3;
- (void)setAlertTitle:(id)a3;
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
    v5 = [(CarAlertViewController *)self preferredButton];
    v8 = v5;
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
    v3 = [(CarAlertViewController *)self buttons];
    v4 = [(CarAlertViewController *)self buttons];
    v5 = [v4 indexesOfObjectsPassingTest:&stru_101656880];
    v6 = [v3 objectsAtIndexes:v5];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)_handleBackButtonPressed:(id)a3
{
  v4 = [(CarAlertViewController *)self buttons];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E6F5B0;
  v5[3] = &unk_101656840;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)_dismissWithResult:(int64_t)a3 buttonIndex:(int64_t)a4
{
  v7 = [(CarAlertViewController *)self resultBlock];

  if (v7)
  {
    v8 = [(CarAlertViewController *)self resultBlock];
    v8[2](v8, self, a3, a4);
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(CarAlertViewController *)self alertAttributedMessage];

  if (!v3)
  {
    v12 = [(CarAlertViewController *)self messageLabel];
    [v12 frame];
    if (v4 > 0.0)
    {
      v5 = [(CarAlertViewController *)self messageLabel];
      [v5 intrinsicContentSize];
      v7 = v6;
      v8 = [(CarAlertViewController *)self messageLabel];
      [v8 frame];
      v10 = v9;

      if (v7 <= v10)
      {
        return;
      }

      v12 = [(CarAlertViewController *)self messageLabel];
      v11 = [(CarAlertViewController *)self _messageAttributedStringSmallText];
      [v12 setAttributedText:v11];
    }
  }
}

- (void)_setupConstraints
{
  v72 = objc_alloc_init(UILayoutGuide);
  v3 = [(CarAlertViewController *)self view];
  [v3 addLayoutGuide:v72];

  v71 = [(CarAlertViewController *)self titleLabel];
  v69 = [v71 firstBaselineAnchor];
  v70 = [(CarAlertViewController *)self view];
  v68 = [v70 safeAreaLayoutGuide];
  v67 = [v68 topAnchor];
  v66 = [v69 constraintEqualToAnchor:v67 constant:40.0];
  v73[0] = v66;
  v65 = [(CarAlertViewController *)self titleLabel];
  v63 = [v65 leadingAnchor];
  v64 = [(CarAlertViewController *)self view];
  v62 = [v64 safeAreaLayoutGuide];
  v61 = [v62 leadingAnchor];
  v60 = [v63 constraintEqualToAnchor:v61 constant:12.0];
  v73[1] = v60;
  v59 = [(CarAlertViewController *)self view];
  v58 = [v59 safeAreaLayoutGuide];
  v56 = [v58 trailingAnchor];
  v57 = [(CarAlertViewController *)self titleLabel];
  v55 = [v57 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:12.0];
  v73[2] = v54;
  v53 = [(CarAlertViewController *)self messageLabel];
  v51 = [v53 firstBaselineAnchor];
  v52 = [(CarAlertViewController *)self titleLabel];
  v50 = [v52 lastBaselineAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:30.0];
  v73[3] = v49;
  v48 = [(CarAlertViewController *)self messageLabel];
  v46 = [v48 leadingAnchor];
  v47 = [(CarAlertViewController *)self view];
  v45 = [v47 safeAreaLayoutGuide];
  v44 = [v45 leadingAnchor];
  v43 = [v46 constraintEqualToAnchor:v44 constant:12.0];
  v73[4] = v43;
  v42 = [(CarAlertViewController *)self view];
  v41 = [v42 safeAreaLayoutGuide];
  v39 = [v41 trailingAnchor];
  v40 = [(CarAlertViewController *)self messageLabel];
  v38 = [v40 trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:12.0];
  v73[5] = v37;
  v36 = [(CarAlertViewController *)self buttonGrid];
  v34 = [v36 topAnchor];
  v35 = [(CarAlertViewController *)self messageLabel];
  v33 = [v35 lastBaselineAnchor];
  v32 = [v34 constraintGreaterThanOrEqualToAnchor:v33 constant:14.0];
  v73[6] = v32;
  v30 = [(CarAlertViewController *)self buttonGrid];
  v28 = [v30 leadingAnchor];
  v29 = [(CarAlertViewController *)self view];
  v27 = [v29 safeAreaLayoutGuide];
  v26 = [v27 leadingAnchor];
  v25 = [v28 constraintGreaterThanOrEqualToAnchor:v26 constant:20.0];
  v73[7] = v25;
  v24 = [(CarAlertViewController *)self view];
  v23 = [v24 safeAreaLayoutGuide];
  v21 = [v23 trailingAnchor];
  v22 = [(CarAlertViewController *)self buttonGrid];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintGreaterThanOrEqualToAnchor:v20 constant:20.0];
  v73[8] = v19;
  v18 = [(CarAlertViewController *)self buttonGrid];
  v17 = [v18 widthAnchor];
  v16 = [v17 constraintEqualToConstant:360.0];
  v73[9] = v16;
  v15 = [(CarAlertViewController *)self buttonGrid];
  v14 = [v15 centerXAnchor];
  v4 = [(CarAlertViewController *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  v6 = [v5 centerXAnchor];
  v7 = [v14 constraintEqualToAnchor:v6];
  v73[10] = v7;
  v8 = [(CarAlertViewController *)self view];
  v9 = [v8 safeAreaLayoutGuide];
  v10 = [v9 bottomAnchor];
  v11 = [(CarAlertViewController *)self buttonGrid];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:35.0];
  v73[11] = v13;
  v31 = [NSArray arrayWithObjects:v73 count:12];

  [NSLayoutConstraint activateConstraints:v31];
}

- (void)reset
{
  v3 = [(CarAlertViewController *)self backButtonRecognizer];

  if (v3)
  {
    v4 = [(CarAlertViewController *)self view];
    v5 = [(CarAlertViewController *)self backButtonRecognizer];
    [v4 removeGestureRecognizer:v5];

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

  v3 = [(CarAlertViewController *)self alertTitle];
  if (v3)
  {
    v4 = v3;
    v5 = [(CarAlertViewController *)self titleLabel];
    v6 = [v5 text];
    v7 = [(CarAlertViewController *)self alertTitle];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v12 = [(CarAlertViewController *)self titleLabel];
      [v12 setHidden:0];

      v11 = [(CarAlertViewController *)self titleLabel];
      v13 = [(CarAlertViewController *)self _titleAttributedString];
      [v11 setAttributedText:v13];

      goto LABEL_7;
    }
  }

  v9 = [(CarAlertViewController *)self alertTitle];

  if (!v9)
  {
    v10 = [(CarAlertViewController *)self titleLabel];
    [v10 setHidden:1];

    v11 = [(CarAlertViewController *)self titleLabel];
    [v11 setText:0];
LABEL_7:
  }

  v14 = [(CarAlertViewController *)self alertAttributedMessage];
  if (v14)
  {
    v15 = v14;
    v16 = [(CarAlertViewController *)self messageLabel];
    v17 = [v16 attributedText];
    v18 = [(CarAlertViewController *)self alertAttributedMessage];
    v19 = [v17 isEqualToAttributedString:v18];

    if ((v19 & 1) == 0)
    {
      v30 = [(CarAlertViewController *)self messageLabel];
      [v30 setHidden:0];

      v31 = [(CarAlertViewController *)self alertAttributedMessage];
LABEL_17:
      v26 = v31;
      v33 = [(CarAlertViewController *)self messageLabel];
      [v33 setAttributedText:v26];

      goto LABEL_18;
    }
  }

  v20 = [(CarAlertViewController *)self alertMessage];
  if (v20)
  {
    v21 = v20;
    v22 = [(CarAlertViewController *)self messageLabel];
    v23 = [v22 text];
    v24 = [(CarAlertViewController *)self alertMessage];
    v25 = [v23 isEqualToString:v24];

    if ((v25 & 1) == 0)
    {
      v32 = [(CarAlertViewController *)self messageLabel];
      [v32 setHidden:0];

      v31 = [(CarAlertViewController *)self _messageAttributedString];
      goto LABEL_17;
    }
  }

  v26 = [(CarAlertViewController *)self alertMessage];
  if (v26)
  {
LABEL_18:

    goto LABEL_19;
  }

  v27 = [(CarAlertViewController *)self alertAttributedMessage];

  if (!v27)
  {
    v28 = [(CarAlertViewController *)self messageLabel];
    [v28 setHidden:1];

    v29 = [(CarAlertViewController *)self messageLabel];
    [v29 setText:0];

    v26 = [(CarAlertViewController *)self messageLabel];
    [v26 setAttributedText:0];
    goto LABEL_18;
  }

LABEL_19:
  v34 = [(CarAlertViewController *)self buttonGrid];
  v35 = [v34 buttons];
  v36 = [(CarAlertViewController *)self buttons];
  v37 = [v35 isEqualToArray:v36];

  if ((v37 & 1) == 0)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v38 = [(CarAlertViewController *)self buttons];
    v39 = [v38 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v51 + 1) + 8 * v42);
          v44 = [(CarAlertViewController *)self buttonGrid];
          [v44 addButton:v43];

          if ([v43 cancels])
          {
            v45 = [(CarAlertViewController *)self backButtonRecognizer];

            if (!v45)
            {
              v46 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleBackButtonPressed:"];
              [(CarAlertViewController *)self setBackButtonRecognizer:v46];

              v47 = [(CarAlertViewController *)self backButtonRecognizer];
              [v47 setAllowedPressTypes:&off_1016EDAD8];

              v48 = [(CarAlertViewController *)self view];
              v49 = [(CarAlertViewController *)self backButtonRecognizer];
              [v48 addGestureRecognizer:v49];
            }
          }

          v42 = v42 + 1;
        }

        while (v40 != v42);
        v40 = [v38 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v40);
    }
  }

  v50 = [(CarAlertViewController *)self view];
  [v50 setNeedsLayout];
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(UILabel);
  [(CarAlertViewController *)self setTitleLabel:v3];

  v4 = [(CarAlertViewController *)self titleLabel];
  [v4 setAccessibilityIdentifier:@"TitleLabel"];

  v5 = [(CarAlertViewController *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(CarAlertViewController *)self titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [(CarAlertViewController *)self view];
  v8 = [(CarAlertViewController *)self titleLabel];
  [v7 addSubview:v8];

  v9 = objc_alloc_init(UILabel);
  [(CarAlertViewController *)self setMessageLabel:v9];

  v10 = [(CarAlertViewController *)self messageLabel];
  [v10 setAccessibilityIdentifier:@"MessageLabel"];

  v11 = [(CarAlertViewController *)self messageLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CarAlertViewController *)self messageLabel];
  [v12 setNumberOfLines:0];

  v13 = [(CarAlertViewController *)self view];
  v14 = [(CarAlertViewController *)self messageLabel];
  [v13 addSubview:v14];

  v15 = [[CarButtonGridView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarAlertViewController *)self setButtonGrid:v15];

  v16 = [(CarAlertViewController *)self buttonGrid];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(CarAlertViewController *)self view];
  v17 = [(CarAlertViewController *)self buttonGrid];
  [v18 addSubview:v17];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CarAlertViewController;
  [(CarAlertViewController *)&v6 viewDidLoad];
  v3 = [(CarAlertViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarAlertView"];

  v4 = [(CarAlertViewController *)self view];
  v5 = +[UIColor tableBackgroundColor];
  [v4 setBackgroundColor:v5];

  [(CarAlertViewController *)self _setupSubviews];
  [(CarAlertViewController *)self _setupConstraints];
  [(CarAlertViewController *)self _updateSubviews];
}

- (void)_buttonTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 index];
  v6 = [v4 cancels];

  [(CarAlertViewController *)self _dismissWithResult:v6 buttonIndex:v5];
}

- (id)_buttonFont
{
  v2 = objc_opt_class();

  return [v2 _calloutFixedFontWithSymbolicTraits:2];
}

- (id)_buttonWithTitle:(id)a3 index:(int64_t)a4
{
  v8 = a3;
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
  v13 = [(CarAlertViewController *)self _buttonFont];
  v14 = [v9 titleLabel];
  [v14 setFont:v13];

  v15 = [v9 titleLabel];
  v16 = [v15 font];
  [v16 pointSize];
  v18 = 10.0 / v17;
  v19 = 1.0;
  if (10.0 / v17 <= 1.0)
  {
    v4 = [v9 titleLabel];
    v5 = [v4 font];
    [v5 pointSize];
    v19 = 10.0 / v20;
  }

  v21 = [v9 titleLabel];
  [v21 setMinimumScaleFactor:v19];

  if (v18 <= 1.0)
  {
  }

  v22 = [v9 titleLabel];
  [v22 setAdjustsFontSizeToFitWidth:1];

  [v9 setTitle:v8 forState:0];
  [v9 setIndex:a4];
  [v9 addTarget:self action:"_buttonTapped:" forControlEvents:64];
  v23 = [v9 widthAnchor];
  v24 = [v23 constraintLessThanOrEqualToConstant:241.0];
  v29[0] = v24;
  v25 = [v9 heightAnchor];
  v26 = [v25 constraintEqualToConstant:40.0];
  v29[1] = v26;
  v27 = [NSArray arrayWithObjects:v29 count:2];
  [v9 addConstraints:v27];

  return v9;
}

- (id)_messageAttributedStringSmallText
{
  v3 = [NSAttributedString alloc];
  v4 = [(CarAlertViewController *)self alertMessage];
  v5 = [objc_opt_class() _messageAttributesSmallText];
  v6 = [v3 initWithString:v4 attributes:v5];

  return v6;
}

- (id)_messageAttributedString
{
  v3 = [(CarAlertViewController *)self alertAttributedMessage];

  if (v3)
  {
    v4 = [(CarAlertViewController *)self alertAttributedMessage];
  }

  else
  {
    v5 = [NSAttributedString alloc];
    v6 = [(CarAlertViewController *)self alertMessage];
    v7 = [objc_opt_class() _messageAttributes];
    v4 = [v5 initWithString:v6 attributes:v7];
  }

  return v4;
}

- (id)_titleAttributedString
{
  v3 = [NSAttributedString alloc];
  v4 = [(CarAlertViewController *)self alertTitle];
  v5 = [objc_opt_class() _titleAttributes];
  v6 = [v3 initWithString:v4 attributes:v5];

  return v6;
}

- (void)setActions:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_actions, a3);
  if ([v10 count])
  {
    v5 = 0;
    do
    {
      v6 = [v10 objectAtIndexedSubscript:v5];
      v7 = [v6 title];
      v8 = [(CarAlertViewController *)self _buttonWithTitle:v7 index:v5];

      [v8 setCancels:{objc_msgSend(v6, "cancels")}];
      v9 = [(CarAlertViewController *)self buttons];
      [v9 addObject:v8];

      if (([v6 cancels] & 1) == 0)
      {
        [(CarAlertViewController *)self setPreferredButton:v8];
      }

      ++v5;
    }

    while (v5 < [v10 count]);
  }

  [(CarAlertViewController *)self _updateSubviews];
}

- (void)setAlertMessage:(id)a3
{
  v4 = [a3 copy];
  alertMessage = self->_alertMessage;
  self->_alertMessage = v4;

  [(CarAlertViewController *)self _updateSubviews];
}

- (void)setAlertTitle:(id)a3
{
  v4 = [a3 copy];
  alertTitle = self->_alertTitle;
  self->_alertTitle = v4;

  [(CarAlertViewController *)self _updateSubviews];
}

- (CarAlertViewController)initWithResultBlock:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CarAlertViewController;
  v5 = [(CarAlertViewController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
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
  v2 = [a1 _textAttributes];
  v6 = NSFontAttributeName;
  v3 = [UIFont systemFontOfSize:12.0];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 addEntriesFromDictionary:v4];

  return v2;
}

+ (id)_messageAttributes
{
  v3 = [a1 _textAttributes];
  v7 = NSFontAttributeName;
  v4 = [a1 _calloutFixedFontWithSymbolicTraits:0];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v3 addEntriesFromDictionary:v5];

  return v3;
}

+ (id)_calloutFixedFontWithSymbolicTraits:(unsigned int)a3
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout addingSymbolicTraits:*&a3 options:0];
  v4 = [UIFont fontWithDescriptor:v3 size:16.0];

  return v4;
}

+ (id)_titleAttributes
{
  v2 = [a1 _textAttributes];
  v6 = NSFontAttributeName;
  v3 = [UIFont _maps_boldSystemFontWithFixedSize:22.0];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 addEntriesFromDictionary:v4];

  return v2;
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