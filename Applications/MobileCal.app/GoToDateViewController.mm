@interface GoToDateViewController
- (BOOL)_areAllCharactersValid:(id)valid;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)preferredContentSize;
- (GoToDateViewController)initWithDate:(id)date;
- (GoToDateViewControllerDelegate)delegate;
- (void)_createViews;
- (void)_handleCancelButton;
- (void)_handleDatePickerValueChanged:(id)changed;
- (void)_handleGoButton;
- (void)_setPickerFromTextFieldStringAndValidate:(BOOL)validate;
- (void)_setTextFromDatePicker;
- (void)pickerTextFieldChanged:(id)changed;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation GoToDateViewController

- (GoToDateViewController)initWithDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = GoToDateViewController;
  v6 = [(GoToDateViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
    v8 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v8;

    [(NSDateFormatter *)v7->_dateFormatter setLenient:0];
    [(NSDateFormatter *)v7->_dateFormatter setDoesRelativeDateFormatting:0];
    v10 = +[NSLocale currentLocale];
    [(NSDateFormatter *)v7->_dateFormatter setLocale:v10];

    [(NSDateFormatter *)v7->_dateFormatter setLocalizedDateFormatFromTemplate:@"yMMd"];
  }

  return v7;
}

- (void)viewDidLoad
{
  [(GoToDateViewController *)self _createViews];
  v4.receiver = self;
  v4.super_class = GoToDateViewController;
  [(GoToDateViewController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"pickerTextFieldChanged:" name:UITextFieldTextDidChangeNotification object:self->_pickerTextField];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(UITextField *)self->_pickerTextField becomeFirstResponder];
  v5.receiver = self;
  v5.super_class = GoToDateViewController;
  [(GoToDateViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)_createViews
{
  traitCollection = [(GoToDateViewController *)self traitCollection];
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection];

  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  v93 = v5;
  v6 = [UIFont fontWithDescriptor:v5 size:0.0];
  v7 = +[UIColor systemBackgroundColor];
  view = [(GoToDateViewController *)self view];
  [view setBackgroundColor:v7];

  view2 = [(GoToDateViewController *)self view];
  [view2 _setCornerRadius:36.0];

  view3 = [(GoToDateViewController *)self view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_alloc_init(UILabel);
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Go To Date" value:&stru_1002133B8 table:0];
  [v11 setText:v13];

  [v11 sizeToFit];
  [v11 setTextAlignment:1];
  [v11 setFont:v6];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v14) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v14];
  view4 = [(GoToDateViewController *)self view];
  firstValue = v11;
  [view4 addSubview:v11];

  v16 = +[UIButtonConfiguration grayButtonConfiguration];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"Cancel" value:&stru_1002133B8 table:0];

  v19 = [NSAttributedString alloc];
  v108[0] = v6;
  v107[0] = NSFontAttributeName;
  v107[1] = NSForegroundColorAttributeName;
  v20 = +[UIColor labelColor];
  v108[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:2];
  v90 = v18;
  v22 = [v19 initWithString:v18 attributes:v21];
  [v16 setAttributedTitle:v22];

  [v16 setCornerStyle:4];
  [v16 setButtonSize:3];
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_1000DD58C;
  v98[3] = &unk_100210938;
  v98[4] = self;
  [UIAction actionWithHandler:v98];
  v89 = v91 = v16;
  v23 = [UIButton buttonWithConfiguration:v16 primaryAction:?];
  [v23 setRole:2];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  view5 = [(GoToDateViewController *)self view];
  v95 = v23;
  [view5 addSubview:v23];

  v25 = +[UIButtonConfiguration filledButtonConfiguration];
  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"Go" value:&stru_1002133B8 table:0];

  v28 = [NSAttributedString alloc];
  v105 = NSFontAttributeName;
  v106 = v6;
  v92 = v6;
  v29 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
  v87 = v27;
  v30 = [v28 initWithString:v27 attributes:v29];
  [v25 setAttributedTitle:v30];

  [v25 setCornerStyle:4];
  [v25 setButtonSize:3];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_1000DD594;
  v97[3] = &unk_100210938;
  v97[4] = self;
  [UIAction actionWithHandler:v97];
  v86 = v88 = v25;
  v31 = [UIButton buttonWithConfiguration:v25 primaryAction:?];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v32 = CalendarAppTintColor();
    [v31 setTintColor:v32];
  }

  [v31 setRole:1];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  view6 = [(GoToDateViewController *)self view];
  [view6 addSubview:v31];

  v34 = objc_alloc_init(UIView);
  v35 = +[UIColor systemGroupedBackgroundColor];
  [v34 setBackgroundColor:v35];

  [v34 _setCornerRadius:16.0];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v36) = 1148846080;
  [v34 setContentHuggingPriority:1 forAxis:v36];
  view7 = [(GoToDateViewController *)self view];
  [view7 addSubview:v34];

  v38 = objc_alloc_init(UILabel);
  v39 = [NSBundle bundleForClass:objc_opt_class()];
  [v39 localizedStringForKey:@"Date:" value:&stru_1002133B8 table:0];
  v40 = v94 = v31;
  [v38 setText:v40];

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = v34;
  [v34 addSubview:v38];
  v42 = objc_alloc_init(UIDatePicker);
  [(UIDatePicker *)v42 setDate:self->_date];
  [(UIDatePicker *)v42 setDatePickerMode:1];
  [(UIDatePicker *)v42 setPreferredDatePickerStyle:1];
  [(UIDatePicker *)v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIDatePicker *)v42 addTarget:self action:"_handleDatePickerValueChanged:" forControlEvents:4096];
  datePicker = self->_datePicker;
  self->_datePicker = v42;
  v85 = v42;

  v44 = objc_alloc_init(UIView);
  v45 = +[UIColor systemGray5Color];
  [v44 setBackgroundColor:v45];

  [v44 _setCornerRadius:8.0];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v41 addSubview:v44];
  v46 = objc_alloc_init(UITextField);
  [(UITextField *)v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)v46 setDelegate:self];
  [(UITextField *)v46 setInputView:self->_datePicker];
  [(UITextField *)v46 setReturnKeyType:1];
  [v44 addSubview:v46];
  pickerTextField = self->_pickerTextField;
  self->_pickerTextField = v46;
  v83 = v46;

  [(GoToDateViewController *)self _setTextFromDatePicker];
  v84 = _NSDictionaryOfVariableBindings(@"pickerTextField", v83, 0);
  v48 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[pickerTextField]-|", 0, 0, v84);
  [NSLayoutConstraint activateConstraints:v48];

  v49 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[pickerTextField]-|", 0, 0, v84);
  [NSLayoutConstraint activateConstraints:v49];

  v78 = v41;
  v79 = v44;
  v81 = v38;
  v82 = _NSDictionaryOfVariableBindings(@"datePickerLabel, datePickerBackground, textFieldBackground", v38, v41, v44, 0);
  v103 = @"pickerPadding";
  v50 = [NSNumber numberWithDouble:12.0];
  v104 = v50;
  v51 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];

  v80 = v51;
  v52 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-pickerPadding-[datePickerLabel]->=pickerPadding-[textFieldBackground]-pickerPadding-|", 0, v51, v82);
  [NSLayoutConstraint activateConstraints:v52];

  v53 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-pickerPadding-[textFieldBackground]-pickerPadding-|", 0, v51, v82);
  [NSLayoutConstraint activateConstraints:v53];

  centerYAnchor = [v38 centerYAnchor];
  centerYAnchor2 = [v44 centerYAnchor];
  v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v102 = v56;
  v57 = [NSArray arrayWithObjects:&v102 count:1];
  [NSLayoutConstraint activateConstraints:v57];

  v58 = _NSDictionaryOfVariableBindings(@"titleLabel, datePickerBackground, cancelButton, goButton", firstValue, v41, v95, v94, 0);
  v100[0] = @"verticalPadding";
  v59 = [NSNumber numberWithDouble:30.0];
  v101[0] = v59;
  v100[1] = @"bottomVerticalPadding";
  v60 = [NSNumber numberWithDouble:20.0];
  v101[1] = v60;
  v100[2] = @"sideMargin";
  v61 = [NSNumber numberWithDouble:24.0];
  v101[2] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:3];

  v63 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-sideMargin-[titleLabel]-sideMargin-|", 0, v62, v58);
  [NSLayoutConstraint activateConstraints:v63];

  v64 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-sideMargin-[datePickerBackground]-sideMargin-|", 0, v62, v58);
  [NSLayoutConstraint activateConstraints:v64];

  v77 = v58;
  v65 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-sideMargin-[cancelButton]-[goButton]-sideMargin-|", 0, v62, v58);
  [NSLayoutConstraint activateConstraints:v65];

  v66 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-verticalPadding-[titleLabel]-verticalPadding-[datePickerBackground]-verticalPadding-[goButton]->=bottomVerticalPadding-|", 0, v62, v58);
  [NSLayoutConstraint activateConstraints:v66];

  heightAnchor = [v95 heightAnchor];
  heightAnchor2 = [v94 heightAnchor];
  v68 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v99[0] = v68;
  widthAnchor = [v94 widthAnchor];
  widthAnchor2 = [v95 widthAnchor];
  v71 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v99[1] = v71;
  firstBaselineAnchor = [v95 firstBaselineAnchor];
  firstBaselineAnchor2 = [v94 firstBaselineAnchor];
  v74 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v99[2] = v74;
  v75 = [NSArray arrayWithObjects:v99 count:3];
  [NSLayoutConstraint activateConstraints:v75];
}

- (CGSize)preferredContentSize
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:400.0];
  v3 = v2;
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:1 shouldScaleForSmallerSizes:250.0];
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_handleGoButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    date = [(UIDatePicker *)self->_datePicker date];
    [v5 goToDateViewController:self didCompleteWithDate:date];
  }
}

- (void)_handleCancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    [v4 goToDateViewController:self didCompleteWithDate:0];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [beganCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(beganCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 key];
        if ([v13 keyCode] == 40)
        {
          v14 = [v12 key];
          modifierFlags = [v14 modifierFlags];

          if (!modifierFlags)
          {
            [(GoToDateViewController *)self _handleGoButton];
            continue;
          }
        }

        else
        {
        }

        v16 = [v12 key];
        if ([v16 keyCode] == 41)
        {
          v17 = [v12 key];
          modifierFlags2 = [v17 modifierFlags];

          if (!modifierFlags2)
          {
            [(GoToDateViewController *)self _handleCancelButton];
          }
        }

        else
        {
        }
      }

      v9 = [beganCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v19.receiver = self;
  v19.super_class = GoToDateViewController;
  [(GoToDateViewController *)&v19 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)_handleDatePickerValueChanged:(id)changed
{
  if (!self->_adjustingTextField)
  {
    [(GoToDateViewController *)self _setTextFromDatePicker];
  }
}

- (void)_setTextFromDatePicker
{
  dateFormatter = self->_dateFormatter;
  date = [(UIDatePicker *)self->_datePicker date];
  v4 = [(NSDateFormatter *)dateFormatter stringFromDate:date];
  [(UITextField *)self->_pickerTextField setText:v4];
}

- (void)pickerTextFieldChanged:(id)changed
{
  object = [changed object];
  pickerTextField = self->_pickerTextField;

  if (object == pickerTextField)
  {

    [(GoToDateViewController *)self _setPickerFromTextFieldStringAndValidate:0];
  }
}

- (void)_setPickerFromTextFieldStringAndValidate:(BOOL)validate
{
  if (self->_adjustingTextField)
  {
    return;
  }

  validateCopy = validate;
  self->_adjustingTextField = 1;
  dateFormatter = self->_dateFormatter;
  text = [(UITextField *)self->_pickerTextField text];
  v8 = [(NSDateFormatter *)dateFormatter dateFromString:text];

  v7 = v8;
  if (v8)
  {
    [(UIDatePicker *)self->_datePicker setDate:v8];
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  if (validateCopy)
  {
    [(GoToDateViewController *)self _setTextFromDatePicker];
    goto LABEL_6;
  }

LABEL_7:
  self->_adjustingTextField = 0;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([stringCopy length] && !-[GoToDateViewController _areAllCharactersValid:](self, "_areAllCharactersValid:", stringCopy))
  {
    v13 = 0;
  }

  else if (length)
  {
    text = [fieldCopy text];
    v12 = [text substringWithRange:{location, length}];

    v13 = [(GoToDateViewController *)self _areAllCharactersValid:v12];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_areAllCharactersValid:(id)valid
{
  validCopy = valid;
  if ([validCopy length])
  {
    v4 = +[NSCharacterSet decimalDigitCharacterSet];
    v5 = [NSCharacterSet characterSetWithCharactersInString:validCopy];
    v6 = [v4 isSupersetOfSet:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (GoToDateViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end