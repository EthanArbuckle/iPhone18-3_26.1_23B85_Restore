@interface RAPAddAPlaceLocationRefinementViewController
- (CGRect)previousNavigationControllerFrame;
- (NSString)editedValue;
- (RAPAddAPlaceLocationRefinementViewController)initWithCamera:(id)camera showCrosshair:(BOOL)crosshair textFieldTitle:(id)title textFieldPlaceholder:(id)placeholder textFieldText:(id)text textFieldEditBlock:(id)block;
- (UIView)textFieldContainerView;
- (void)adjustTextFieldContainerPositionWithKeyboardFrame:(CGRect)frame;
- (void)dealloc;
- (void)keyboardDidChangeFrameNotification:(id)notification;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)mapViewDidStartUserInteraction:(id)interaction;
- (void)setTextFieldPlaceholder:(id)placeholder;
- (void)textDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RAPAddAPlaceLocationRefinementViewController

- (CGRect)previousNavigationControllerFrame
{
  x = self->_previousNavigationControllerFrame.origin.x;
  y = self->_previousNavigationControllerFrame.origin.y;
  width = self->_previousNavigationControllerFrame.size.width;
  height = self->_previousNavigationControllerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)adjustTextFieldContainerPositionWithKeyboardFrame:(CGRect)frame
{
  MinY = CGRectGetMinY(frame);
  view = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  [view bounds];
  v6 = MinY - CGRectGetMaxY(v9);

  textFieldContainerViewBottomConstraint = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerViewBottomConstraint];
  [textFieldContainerViewBottomConstraint setConstant:{fmin(v6, 0.0)}];
}

- (void)keyboardDidChangeFrameNotification:(id)notification
{
  notificationCopy = notification;
  textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
  if ([textField isFirstResponder])
  {
    [(RAPAddAPlaceLocationRefinementViewController *)self previousNavigationControllerFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    navigationController = [(RAPAddAPlaceLocationRefinementViewController *)self navigationController];
    view = [navigationController view];
    superview = [view superview];
    [superview frame];
    v34.origin.x = v16;
    v34.origin.y = v17;
    v34.size.width = v18;
    v34.size.height = v19;
    v33.origin.x = v6;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = v12;
    v20 = CGRectEqualToRect(v33, v34);

    if (v20)
    {
      goto LABEL_5;
    }

    userInfo = [notificationCopy userInfo];
    v22 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
    [v22 CGRectValue];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    textField = [(RAPAddAPlaceLocationRefinementViewController *)self view];
    [textField convertRect:0 fromView:{v24, v26, v28, v30}];
    [(RAPAddAPlaceLocationRefinementViewController *)self adjustTextFieldContainerPositionWithKeyboardFrame:?];
  }

LABEL_5:
}

- (void)keyboardWillChangeFrame:(id)frame
{
  frameCopy = frame;
  navigationController = [(RAPAddAPlaceLocationRefinementViewController *)self navigationController];
  view = [navigationController view];
  superview = [view superview];
  [superview frame];
  [(RAPAddAPlaceLocationRefinementViewController *)self setPreviousNavigationControllerFrame:?];

  userInfo = [frameCopy userInfo];

  v9 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v9 CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  view2 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  [view2 convertRect:0 fromView:{v11, v13, v15, v17}];
  [(RAPAddAPlaceLocationRefinementViewController *)self adjustTextFieldContainerPositionWithKeyboardFrame:?];
}

- (void)mapViewDidStartUserInteraction:(id)interaction
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 orientation] - 3;

  if (v5 <= 1)
  {
    textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField resignFirstResponder];
  }
}

- (void)setTextFieldPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v5 = [placeholderCopy copy];
  textFieldPlaceholder = self->_textFieldPlaceholder;
  self->_textFieldPlaceholder = v5;

  textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
  [textField setPlaceholder:placeholderCopy];
}

- (NSString)editedValue
{
  textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
  text = [textField text];

  return text;
}

- (void)textDidChange:(id)change
{
  textFieldEditBlock = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldEditBlock];

  if (textFieldEditBlock)
  {
    textFieldEditBlock2 = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldEditBlock];
    editedValue = [(RAPAddAPlaceLocationRefinementViewController *)self editedValue];
    textFieldEditBlock2[2](textFieldEditBlock2, editedValue);
  }
}

- (UIView)textFieldContainerView
{
  textFieldContainerView = self->_textFieldContainerView;
  if (!textFieldContainerView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_textFieldContainerView;
    self->_textFieldContainerView = v4;

    [(UIView *)self->_textFieldContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(RAPAddAPlaceLocationRefinementViewController *)self backgroundColor];
    [(UIView *)self->_textFieldContainerView setBackgroundColor:backgroundColor];

    v7 = objc_alloc_init(UILabel);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    textFieldTitle = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldTitle];
    [v7 setText:textFieldTitle];

    v9 = +[UIColor grayColor];
    [v7 setTextColor:v9];

    v10 = +[UIFont system17];
    [v7 setFont:v10];

    LODWORD(v11) = 1144750080;
    [v7 setContentHuggingPriority:0 forAxis:v11];
    [(UIView *)self->_textFieldContainerView addSubview:v7];
    v12 = objc_alloc_init(RAPVerticalBar);
    [(RAPVerticalBar *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = v12;
    [(UIView *)self->_textFieldContainerView addSubview:v12];
    v14 = objc_alloc_init(UITextField);
    [(RAPAddAPlaceLocationRefinementViewController *)self setTextField:v14];

    textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField setTranslatesAutoresizingMaskIntoConstraints:0];

    textFieldPlaceholder = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldPlaceholder];
    textField2 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField2 setPlaceholder:textFieldPlaceholder];

    textFieldText = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldText];
    textField3 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField3 setText:textFieldText];

    textField4 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField4 setAutocorrectionType:1];

    textField5 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField5 setKeyboardType:13];

    v22 = +[UIFont system17];
    textField6 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField6 setFont:v22];

    textField7 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [textField7 addTarget:self action:"textDidChange:" forControlEvents:0x20000];

    textField8 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    LODWORD(v26) = 1144750080;
    [textField8 setContentCompressionResistancePriority:0 forAxis:v26];

    v27 = self->_textFieldContainerView;
    textField9 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    [(UIView *)v27 addSubview:textField9];

    v59 = objc_alloc_init(NSMutableArray);
    v61[0] = @"kBarThickness";
    v29 = +[UIScreen mainScreen];
    [v29 scale];
    v31 = [NSNumber numberWithDouble:1.0 / v30];
    v62[0] = v31;
    v62[1] = &off_1016EDD08;
    v61[1] = @"kTitleLabelLeading";
    v61[2] = @"kTitleLabelVerticalBarPadding";
    v61[3] = @"kVerticalBarTextFieldPadding";
    v62[2] = &off_1016EDD18;
    v62[3] = &off_1016EDD28;
    v32 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
    v33 = _NSDictionaryOfVariableBindings(@"titleLabel, verticalBar, _textField", v7, v13, self->_textField, 0);
    v34 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(kTitleLabelLeading)-[titleLabel]-(kTitleLabelVerticalBarPadding)-[verticalBar(kBarThickness)]-(kVerticalBarTextFieldPadding)-[_textField]-|", 0, v32, v33);
    [v59 addObjectsFromArray:v34];

    textField10 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    topAnchor = [textField10 topAnchor];
    topAnchor2 = [(UIView *)self->_textFieldContainerView topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v60[0] = v55;
    textField11 = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
    bottomAnchor = [textField11 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_textFieldContainerView bottomAnchor];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v60[1] = v50;
    v53 = v13;
    topAnchor3 = [(RAPVerticalBar *)v13 topAnchor];
    topAnchor4 = [(UIView *)self->_textFieldContainerView topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v60[2] = v46;
    bottomAnchor3 = [(RAPVerticalBar *)v13 bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_textFieldContainerView bottomAnchor];
    v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v60[3] = v35;
    v49 = v7;
    topAnchor5 = [v7 topAnchor];
    topAnchor6 = [(UIView *)self->_textFieldContainerView topAnchor];
    v38 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v60[4] = v38;
    bottomAnchor5 = [v7 bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_textFieldContainerView bottomAnchor];
    v41 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v60[5] = v41;
    v42 = [NSArray arrayWithObjects:v60 count:6];
    [v59 addObjectsFromArray:v42];

    [NSLayoutConstraint activateConstraints:v59];
    textFieldContainerView = self->_textFieldContainerView;
  }

  return textFieldContainerView;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RAPAddAPlaceLocationRefinementViewController;
  [(RAPAddAPlaceLocationRefinementViewController *)&v4 dealloc];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RAPAddAPlaceLocationRefinementViewController;
  [(LocationRefinementViewController *)&v5 viewWillDisappear:disappear];
  textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
  [textField resignFirstResponder];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPAddAPlaceLocationRefinementViewController;
  [(LocationRefinementViewController *)&v5 viewWillAppear:appear];
  textField = [(RAPAddAPlaceLocationRefinementViewController *)self textField];
  [textField becomeFirstResponder];
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = RAPAddAPlaceLocationRefinementViewController;
  [(RAPLocationRefinementViewController *)&v53 viewDidLoad];
  mapView = [(LocationRefinementViewController *)self mapView];
  [mapView setMapType:2];

  v4 = +[UIColor clearColor];
  view = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  [view setBackgroundColor:v4];

  mapViewConstraints = [(LocationRefinementViewController *)self mapViewConstraints];
  [NSLayoutConstraint deactivateConstraints:mapViewConstraints];

  view2 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  textFieldContainerView = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerView];
  [view2 addSubview:textFieldContainerView];

  textFieldContainerView2 = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerView];
  bottomAnchor = [textFieldContainerView2 bottomAnchor];
  view3 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(RAPAddAPlaceLocationRefinementViewController *)self setTextFieldContainerViewBottomConstraint:v13];

  mapView2 = [(LocationRefinementViewController *)self mapView];
  topAnchor = [mapView2 topAnchor];
  view4 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v54[0] = v48;
  mapView3 = [(LocationRefinementViewController *)self mapView];
  leadingAnchor = [mapView3 leadingAnchor];
  view5 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v54[1] = v43;
  mapView4 = [(LocationRefinementViewController *)self mapView];
  trailingAnchor = [mapView4 trailingAnchor];
  view6 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v54[2] = v38;
  textFieldContainerView3 = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerView];
  topAnchor3 = [textFieldContainerView3 topAnchor];
  mapView5 = [(LocationRefinementViewController *)self mapView];
  bottomAnchor3 = [mapView5 bottomAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v54[3] = v33;
  textFieldContainerView4 = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerView];
  leadingAnchor3 = [textFieldContainerView4 leadingAnchor];
  view7 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  safeAreaLayoutGuide = [view7 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v54[4] = v27;
  textFieldContainerView5 = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerView];
  trailingAnchor3 = [textFieldContainerView5 trailingAnchor];
  view8 = [(RAPAddAPlaceLocationRefinementViewController *)self view];
  safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v54[5] = v17;
  textFieldContainerView6 = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerView];
  heightAnchor = [textFieldContainerView6 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:46.0];
  v54[6] = v20;
  textFieldContainerViewBottomConstraint = [(RAPAddAPlaceLocationRefinementViewController *)self textFieldContainerViewBottomConstraint];
  v54[7] = textFieldContainerViewBottomConstraint;
  v22 = [NSArray arrayWithObjects:v54 count:8];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:self selector:"keyboardDidChangeFrameNotification:" name:UIKeyboardDidChangeFrameNotification object:0];
}

- (RAPAddAPlaceLocationRefinementViewController)initWithCamera:(id)camera showCrosshair:(BOOL)crosshair textFieldTitle:(id)title textFieldPlaceholder:(id)placeholder textFieldText:(id)text textFieldEditBlock:(id)block
{
  crosshairCopy = crosshair;
  titleCopy = title;
  placeholderCopy = placeholder;
  textCopy = text;
  blockCopy = block;
  if (crosshairCopy)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v29.receiver = self;
  v29.super_class = RAPAddAPlaceLocationRefinementViewController;
  v19 = [(LocationRefinementViewController *)&v29 initWithCamera:camera crosshairType:v18];
  if (v19)
  {
    v20 = [titleCopy copy];
    textFieldTitle = v19->_textFieldTitle;
    v19->_textFieldTitle = v20;

    v22 = [textCopy copy];
    textFieldText = v19->_textFieldText;
    v19->_textFieldText = v22;

    v24 = [placeholderCopy copy];
    textFieldPlaceholder = v19->_textFieldPlaceholder;
    v19->_textFieldPlaceholder = v24;

    v26 = objc_retainBlock(blockCopy);
    textFieldEditBlock = v19->_textFieldEditBlock;
    v19->_textFieldEditBlock = v26;
  }

  return v19;
}

@end