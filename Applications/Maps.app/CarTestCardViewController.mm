@interface CarTestCardViewController
- (CGSize)availableCardSize;
- (CGSize)size;
- (CarCardLayout)layout;
- (CarTestCardViewController)initWithConfig:(id)config;
- (NSArray)focusOrderSubItems;
- (id)_buttonWithTitle:(id)title;
- (id)_labelWithText:(id)text size:(double)size;
- (void)_buttonTapped:(id)tapped;
- (void)_tapped;
- (void)_updateContents;
- (void)_updateSize;
- (void)viewDidLoad;
@end

@implementation CarTestCardViewController

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)availableCardSize
{
  width = self->_availableCardSize.width;
  height = self->_availableCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarTestCardViewController *)self isViewLoaded])
  {
    heightPlusButton = self->_heightPlusButton;
    v11[0] = self->_reloadButton;
    v11[1] = heightPlusButton;
    widthPlusButton = self->_widthPlusButton;
    v11[2] = self->_heightMinusButton;
    v11[3] = widthPlusButton;
    v11[4] = self->_widthMinusButton;
    v5 = [NSArray arrayWithObjects:v11 count:5];
    taggedButtons = [(CarTestCardViewController *)self taggedButtons];
    v7 = [v5 arrayByAddingObjectsFromArray:taggedButtons];

    v8 = [v7 indexesOfObjectsPassingTest:&stru_101638C38];
    v9 = [v7 objectsAtIndexes:v8];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (CarCardLayout)layout
{
  config = [(CarTestCardViewController *)self config];
  layout = [config layout];

  return layout;
}

- (void)_updateContents
{
  config = [(CarTestCardViewController *)self config];
  compresses = [config compresses];

  if (compresses)
  {
    [(CarTestCardViewController *)self availableCardSize];
    v6 = v5;
    [(CarTestCardViewController *)self availableCardSize];
    v8 = v7;
    view = [(CarTestCardViewController *)self view];
    [view frame];
    v20 = [NSString stringWithFormat:@" [A:%.1f C:%.1f]", v6, v10];

    view2 = [(CarTestCardViewController *)self view];
    [view2 frame];
    v13 = [NSString stringWithFormat:@" [A:%.1f C:%.1f]", v8, v12];
  }

  else
  {
    v13 = &stru_1016631F0;
    v20 = &stru_1016631F0;
  }

  [(CarTestCardViewController *)self size];
  v15 = [NSString stringWithFormat:@"H:%.1f%@", v14, v20];
  heightLabel = [(CarTestCardViewController *)self heightLabel];
  [heightLabel setText:v15];

  [(CarTestCardViewController *)self size];
  v18 = [NSString stringWithFormat:@"W:%.1f%@", v17, v13];
  widthLabel = [(CarTestCardViewController *)self widthLabel];
  [widthLabel setText:v18];
}

- (void)_updateSize
{
  [(CarTestCardViewController *)self size];
  v4 = v3;
  heightConstraint = [(CarTestCardViewController *)self heightConstraint];
  [heightConstraint setConstant:v4];

  [(CarTestCardViewController *)self size];
  v7 = v6;
  widthConstraint = [(CarTestCardViewController *)self widthConstraint];
  [widthConstraint setConstant:v7];

  [(CarTestCardViewController *)self _updateContents];
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  heightPlusButton = [(CarTestCardViewController *)self heightPlusButton];

  if (heightPlusButton == tappedCopy)
  {
    [(CarTestCardViewController *)self size];
    v12 = v11;
    [(CarTestCardViewController *)self size];
    v14 = 5.0;
LABEL_9:
    v16 = v13 + v14;
LABEL_13:
    [(CarTestCardViewController *)self setSize:v12, v16];
    [(CarTestCardViewController *)self _updateSize];
    goto LABEL_14;
  }

  heightMinusButton = [(CarTestCardViewController *)self heightMinusButton];

  if (heightMinusButton == tappedCopy)
  {
    [(CarTestCardViewController *)self size];
    v12 = v15;
    [(CarTestCardViewController *)self size];
    v14 = -5.0;
    goto LABEL_9;
  }

  widthPlusButton = [(CarTestCardViewController *)self widthPlusButton];

  if (widthPlusButton == tappedCopy)
  {
    [(CarTestCardViewController *)self size];
    v18 = 5.0;
LABEL_12:
    v12 = v17 + v18;
    [(CarTestCardViewController *)self size];
    goto LABEL_13;
  }

  widthMinusButton = [(CarTestCardViewController *)self widthMinusButton];

  if (widthMinusButton == tappedCopy)
  {
    [(CarTestCardViewController *)self size];
    v18 = -5.0;
    goto LABEL_12;
  }

  reloadButton = [(CarTestCardViewController *)self reloadButton];

  v9 = tappedCopy;
  if (reloadButton == tappedCopy)
  {
    goto LABEL_15;
  }

  buttonTagHandler = [(CarTestCardViewController *)self buttonTagHandler];
  (buttonTagHandler)[2](buttonTagHandler, self, [tappedCopy tag]);

LABEL_14:
  v9 = tappedCopy;
LABEL_15:
}

- (id)_labelWithText:(id)text size:(double)size
{
  textCopy = text;
  v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTextAlignment:1];
  LODWORD(v8) = 1132068864;
  [v7 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [v7 setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1144750080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1144750080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v11];
  v12 = [UIFont systemFontOfSize:size weight:UIFontWeightSemibold];
  [v7 setFont:v12];

  [v7 setText:textCopy];
  [v7 setLineBreakMode:1];
  [v7 setNumberOfLines:0];
  color = [(CarTestCardViewController *)self color];
  [v7 setTextColor:color];

  return v7;
}

- (id)_buttonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [[CarFocusableButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarFocusableButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsLargerHitTargetButton *)v5 setTouchInsets:0.0, -6.0, 0.0, -6.0];
  [(CarFocusableButton *)v5 addTarget:self action:"_buttonTapped:" forControlEvents:64];
  [(CarFocusableButton *)v5 setTitle:titleCopy forState:0];

  LODWORD(v6) = 1148846080;
  [(CarFocusableButton *)v5 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(CarFocusableButton *)v5 setContentHuggingPriority:1 forAxis:v7];
  [(CarFocusableButton *)v5 setContentHorizontalAlignment:0];

  return v5;
}

- (void)_tapped
{
  dismissHandler = [(CarTestCardViewController *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(CarTestCardViewController *)self dismissHandler];
    dismissHandler2[2](dismissHandler2, self);
  }
}

- (CarTestCardViewController)initWithConfig:(id)config
{
  configCopy = config;
  v6 = [(CarTestCardViewController *)self init];
  if (v6)
  {
    v7 = objc_opt_new();
    uUIDString = [v7 UUIDString];
    cardID = v6->_cardID;
    v6->_cardID = uUIDString;

    objc_storeStrong(&v6->_config, config);
    [configCopy size];
    v6->_size.width = v10;
    v6->_size.height = v11;
    if ([configCopy stackCount] <= 1)
    {
      v12 = &stru_1016631F0;
    }

    else
    {
      v12 = @"Stack ";
    }

    v13 = [(NSString *)v6->_cardID substringToIndex:5];
    v14 = [NSString stringWithFormat:@"%@Card %@", v12, v13];
    text = v6->_text;
    v6->_text = v14;

    v16 = [UIColor colorWithHue:((arc4random() % 0xA) * 0.1) saturation:0.800000012 brightness:0.800000012 alpha:1.0];
    color = v6->_color;
    v6->_color = v16;
  }

  return v6;
}

- (void)viewDidLoad
{
  v255.receiver = self;
  v255.super_class = CarTestCardViewController;
  [(CarTestCardViewController *)&v255 viewDidLoad];
  text = [(CarTestCardViewController *)self text];
  v4 = [(CarTestCardViewController *)self _labelWithText:text size:15.0];
  [(CarTestCardViewController *)self setTextLabel:v4];

  view = [(CarTestCardViewController *)self view];
  textLabel = [(CarTestCardViewController *)self textLabel];
  [view addSubview:textLabel];

  v7 = [(CarTestCardViewController *)self _buttonWithTitle:@"⟲"];
  [(CarTestCardViewController *)self setReloadButton:v7];

  view2 = [(CarTestCardViewController *)self view];
  reloadButton = [(CarTestCardViewController *)self reloadButton];
  [view2 addSubview:reloadButton];

  [(CarTestCardViewController *)self size];
  v11 = [NSString stringWithFormat:@"H:%.1f", v10];
  v12 = [(CarTestCardViewController *)self _labelWithText:v11 size:6.0];
  [(CarTestCardViewController *)self setHeightLabel:v12];

  view3 = [(CarTestCardViewController *)self view];
  heightLabel = [(CarTestCardViewController *)self heightLabel];
  [view3 addSubview:heightLabel];

  [(CarTestCardViewController *)self size];
  v16 = [NSString stringWithFormat:@"W:%.1f", v15];
  v17 = [(CarTestCardViewController *)self _labelWithText:v16 size:6.0];
  [(CarTestCardViewController *)self setWidthLabel:v17];

  view4 = [(CarTestCardViewController *)self view];
  widthLabel = [(CarTestCardViewController *)self widthLabel];
  [view4 addSubview:widthLabel];

  v20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tapped"];
  view5 = [(CarTestCardViewController *)self view];
  v252 = v20;
  [view5 addGestureRecognizer:v20];

  v253 = objc_opt_new();
  config = [(CarTestCardViewController *)self config];
  v23 = -20.0;
  if (([config grows] & 1) == 0)
  {
    config2 = [(CarTestCardViewController *)self config];
    if ([config2 compresses])
    {
      v23 = -15.0;
    }

    else
    {
      v23 = 0.0;
    }
  }

  view6 = [(CarTestCardViewController *)self view];
  heightAnchor = [view6 heightAnchor];
  [(CarTestCardViewController *)self size];
  v28 = v27;
  config3 = [(CarTestCardViewController *)self config];
  if ([config3 compresses])
  {
    *&v30 = 999.0;
  }

  else
  {
    *&v30 = 1000.0;
  }

  v31 = [heightAnchor constraintEqualToConstant:v28 priority:v30];
  [(CarTestCardViewController *)self setHeightConstraint:v31];

  view7 = [(CarTestCardViewController *)self view];
  widthAnchor = [view7 widthAnchor];
  [(CarTestCardViewController *)self size];
  v35 = v34;
  config4 = [(CarTestCardViewController *)self config];
  if ([config4 compresses])
  {
    *&v37 = 999.0;
  }

  else
  {
    *&v37 = 1000.0;
  }

  v38 = [widthAnchor constraintEqualToConstant:v35 priority:v37];
  [(CarTestCardViewController *)self setWidthConstraint:v38];

  textLabel2 = [(CarTestCardViewController *)self textLabel];
  centerXAnchor = [textLabel2 centerXAnchor];
  view8 = [(CarTestCardViewController *)self view];
  centerXAnchor2 = [view8 centerXAnchor];
  v237 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v258[0] = v237;
  textLabel3 = [(CarTestCardViewController *)self textLabel];
  centerYAnchor = [textLabel3 centerYAnchor];
  view9 = [(CarTestCardViewController *)self view];
  centerYAnchor2 = [view9 centerYAnchor];
  v222 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v23];
  v258[1] = v222;
  reloadButton2 = [(CarTestCardViewController *)self reloadButton];
  firstBaselineAnchor = [reloadButton2 firstBaselineAnchor];
  textLabel4 = [(CarTestCardViewController *)self textLabel];
  firstBaselineAnchor2 = [textLabel4 firstBaselineAnchor];
  v207 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v258[2] = v207;
  reloadButton3 = [(CarTestCardViewController *)self reloadButton];
  leadingAnchor = [reloadButton3 leadingAnchor];
  textLabel5 = [(CarTestCardViewController *)self textLabel];
  trailingAnchor = [textLabel5 trailingAnchor];
  v192 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:-2.0];
  v258[3] = v192;
  heightConstraint = [(CarTestCardViewController *)self heightConstraint];
  v258[4] = heightConstraint;
  widthConstraint = [(CarTestCardViewController *)self widthConstraint];
  v258[5] = widthConstraint;
  widthLabel2 = [(CarTestCardViewController *)self widthLabel];
  centerXAnchor3 = [widthLabel2 centerXAnchor];
  view10 = [(CarTestCardViewController *)self view];
  centerXAnchor4 = [view10 centerXAnchor];
  v171 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v258[6] = v171;
  widthLabel3 = [(CarTestCardViewController *)self widthLabel];
  firstBaselineAnchor3 = [widthLabel3 firstBaselineAnchor];
  v162 = firstBaselineAnchor3;
  textLabel6 = [(CarTestCardViewController *)self textLabel];
  lastBaselineAnchor = [textLabel6 lastBaselineAnchor];
  v156 = lastBaselineAnchor;
  config5 = [(CarTestCardViewController *)self config];
  if ([config5 grows])
  {
    v41 = 20.0;
  }

  else
  {
    v41 = 10.0;
  }

  v153 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:v41];
  v258[7] = v153;
  heightLabel2 = [(CarTestCardViewController *)self heightLabel];
  centerXAnchor5 = [heightLabel2 centerXAnchor];
  view11 = [(CarTestCardViewController *)self view];
  centerXAnchor6 = [view11 centerXAnchor];
  v43 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v258[8] = v43;
  heightLabel3 = [(CarTestCardViewController *)self heightLabel];
  firstBaselineAnchor4 = [heightLabel3 firstBaselineAnchor];
  widthLabel4 = [(CarTestCardViewController *)self widthLabel];
  lastBaselineAnchor2 = [widthLabel4 lastBaselineAnchor];
  config6 = [(CarTestCardViewController *)self config];
  if ([config6 grows])
  {
    v49 = 20.0;
  }

  else
  {
    v49 = 10.0;
  }

  v50 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:v49];
  v258[9] = v50;
  v51 = [NSArray arrayWithObjects:v258 count:10];
  [v253 addObjectsFromArray:v51];

  config7 = [(CarTestCardViewController *)self config];
  grows = [config7 grows];

  if (grows)
  {
    v54 = [(CarTestCardViewController *)self _buttonWithTitle:@"⊕"];
    [(CarTestCardViewController *)self setHeightPlusButton:v54];

    view12 = [(CarTestCardViewController *)self view];
    heightPlusButton = [(CarTestCardViewController *)self heightPlusButton];
    [view12 addSubview:heightPlusButton];

    v57 = [(CarTestCardViewController *)self _buttonWithTitle:@"⊖"];
    [(CarTestCardViewController *)self setHeightMinusButton:v57];

    view13 = [(CarTestCardViewController *)self view];
    heightMinusButton = [(CarTestCardViewController *)self heightMinusButton];
    [view13 addSubview:heightMinusButton];

    v60 = [(CarTestCardViewController *)self _buttonWithTitle:@"⊕"];
    [(CarTestCardViewController *)self setWidthPlusButton:v60];

    view14 = [(CarTestCardViewController *)self view];
    widthPlusButton = [(CarTestCardViewController *)self widthPlusButton];
    [view14 addSubview:widthPlusButton];

    v63 = [(CarTestCardViewController *)self _buttonWithTitle:@"⊖"];
    [(CarTestCardViewController *)self setWidthMinusButton:v63];

    view15 = [(CarTestCardViewController *)self view];
    widthMinusButton = [(CarTestCardViewController *)self widthMinusButton];
    [view15 addSubview:widthMinusButton];

    heightPlusButton2 = [(CarTestCardViewController *)self heightPlusButton];
    centerYAnchor3 = [heightPlusButton2 centerYAnchor];
    heightLabel4 = [(CarTestCardViewController *)self heightLabel];
    centerYAnchor4 = [heightLabel4 centerYAnchor];
    v238 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v257[0] = v238;
    heightPlusButton3 = [(CarTestCardViewController *)self heightPlusButton];
    leadingAnchor2 = [heightPlusButton3 leadingAnchor];
    view16 = [(CarTestCardViewController *)self view];
    leadingAnchor3 = [view16 leadingAnchor];
    v223 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:4.0];
    v257[1] = v223;
    heightPlusButton4 = [(CarTestCardViewController *)self heightPlusButton];
    trailingAnchor2 = [heightPlusButton4 trailingAnchor];
    heightLabel5 = [(CarTestCardViewController *)self heightLabel];
    leadingAnchor4 = [heightLabel5 leadingAnchor];
    v208 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:2.0];
    v257[2] = v208;
    heightMinusButton2 = [(CarTestCardViewController *)self heightMinusButton];
    centerYAnchor5 = [heightMinusButton2 centerYAnchor];
    heightLabel6 = [(CarTestCardViewController *)self heightLabel];
    centerYAnchor6 = [heightLabel6 centerYAnchor];
    v193 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v257[3] = v193;
    heightMinusButton3 = [(CarTestCardViewController *)self heightMinusButton];
    trailingAnchor3 = [heightMinusButton3 trailingAnchor];
    view17 = [(CarTestCardViewController *)self view];
    trailingAnchor4 = [view17 trailingAnchor];
    v178 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-4.0];
    v257[4] = v178;
    heightMinusButton4 = [(CarTestCardViewController *)self heightMinusButton];
    leadingAnchor5 = [heightMinusButton4 leadingAnchor];
    heightLabel7 = [(CarTestCardViewController *)self heightLabel];
    trailingAnchor5 = [heightLabel7 trailingAnchor];
    v163 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:2.0];
    v257[5] = v163;
    widthPlusButton2 = [(CarTestCardViewController *)self widthPlusButton];
    centerYAnchor7 = [widthPlusButton2 centerYAnchor];
    widthLabel5 = [(CarTestCardViewController *)self widthLabel];
    centerYAnchor8 = [widthLabel5 centerYAnchor];
    v148 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v257[6] = v148;
    widthPlusButton3 = [(CarTestCardViewController *)self widthPlusButton];
    leadingAnchor6 = [widthPlusButton3 leadingAnchor];
    view18 = [(CarTestCardViewController *)self view];
    leadingAnchor7 = [view18 leadingAnchor];
    v136 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:4.0];
    v257[7] = v136;
    widthPlusButton4 = [(CarTestCardViewController *)self widthPlusButton];
    trailingAnchor6 = [widthPlusButton4 trailingAnchor];
    widthLabel6 = [(CarTestCardViewController *)self widthLabel];
    leadingAnchor8 = [widthLabel6 leadingAnchor];
    v126 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8 constant:2.0];
    v257[8] = v126;
    widthMinusButton2 = [(CarTestCardViewController *)self widthMinusButton];
    centerYAnchor9 = [widthMinusButton2 centerYAnchor];
    widthLabel7 = [(CarTestCardViewController *)self widthLabel];
    centerYAnchor10 = [widthLabel7 centerYAnchor];
    v116 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    v257[9] = v116;
    widthMinusButton3 = [(CarTestCardViewController *)self widthMinusButton];
    trailingAnchor7 = [widthMinusButton3 trailingAnchor];
    view19 = [(CarTestCardViewController *)self view];
    trailingAnchor8 = [view19 trailingAnchor];
    v68 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-4.0];
    v257[10] = v68;
    widthMinusButton4 = [(CarTestCardViewController *)self widthMinusButton];
    leadingAnchor9 = [widthMinusButton4 leadingAnchor];
    widthLabel8 = [(CarTestCardViewController *)self widthLabel];
    trailingAnchor9 = [widthLabel8 trailingAnchor];
    v73 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor9 constant:2.0];
    v257[11] = v73;
    v74 = [NSArray arrayWithObjects:v257 count:12];
    [v253 addObjectsFromArray:v74];
  }

  config8 = [(CarTestCardViewController *)self config];
  stackCount = [config8 stackCount];

  if (stackCount >= 2)
  {
    v77 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CarTestCardViewController *)self setTaggedButtonsView:v77];

    taggedButtonsView = [(CarTestCardViewController *)self taggedButtonsView];
    [taggedButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];

    view20 = [(CarTestCardViewController *)self view];
    taggedButtonsView2 = [(CarTestCardViewController *)self taggedButtonsView];
    [view20 addSubview:taggedButtonsView2];

    v81 = [NSMutableArray arrayWithCapacity:4];
    v82 = [(CarTestCardViewController *)self _buttonWithTitle:@"-"];
    [v82 setTag:1];
    [v81 addObject:v82];
    v83 = [(CarTestCardViewController *)self _buttonWithTitle:@"+"];
    [v83 setTag:2];
    v251 = v81;
    [v81 addObject:v83];
    v84 = [(CarTestCardViewController *)self _buttonWithTitle:@"▴"];
    [v84 setTag:3];
    [v81 addObject:v84];
    v85 = [(CarTestCardViewController *)self _buttonWithTitle:@"▾"];
    [v85 setTag:4];
    [v81 addObject:v85];
    v86 = [v81 copy];
    [(CarTestCardViewController *)self setTaggedButtons:v86];

    taggedButtons = [(CarTestCardViewController *)self taggedButtons];
    v254[0] = _NSConcreteStackBlock;
    v254[1] = 3221225472;
    v254[2] = sub_100B39B9C;
    v254[3] = &unk_101638BF8;
    v254[4] = self;
    [taggedButtons enumerateObjectsUsingBlock:v254];

    taggedButtonsView3 = [(CarTestCardViewController *)self taggedButtonsView];
    bottomAnchor = [taggedButtonsView3 bottomAnchor];
    view21 = [(CarTestCardViewController *)self view];
    bottomAnchor2 = [view21 bottomAnchor];
    v236 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v256[0] = v236;
    taggedButtonsView4 = [(CarTestCardViewController *)self taggedButtonsView];
    leftAnchor = [taggedButtonsView4 leftAnchor];
    view22 = [(CarTestCardViewController *)self view];
    leftAnchor2 = [view22 leftAnchor];
    v221 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v256[1] = v221;
    leftAnchor3 = [v82 leftAnchor];
    taggedButtonsView5 = [(CarTestCardViewController *)self taggedButtonsView];
    leftAnchor4 = [taggedButtonsView5 leftAnchor];
    v209 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v256[2] = v209;
    topAnchor = [v82 topAnchor];
    taggedButtonsView6 = [(CarTestCardViewController *)self taggedButtonsView];
    topAnchor2 = [taggedButtonsView6 topAnchor];
    v197 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v256[3] = v197;
    bottomAnchor3 = [v82 bottomAnchor];
    taggedButtonsView7 = [(CarTestCardViewController *)self taggedButtonsView];
    bottomAnchor4 = [taggedButtonsView7 bottomAnchor];
    v185 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v256[4] = v185;
    leftAnchor5 = [v84 leftAnchor];
    rightAnchor = [v82 rightAnchor];
    v176 = [leftAnchor5 constraintEqualToAnchor:rightAnchor];
    v256[5] = v176;
    topAnchor3 = [v84 topAnchor];
    taggedButtonsView8 = [(CarTestCardViewController *)self taggedButtonsView];
    topAnchor4 = [taggedButtonsView8 topAnchor];
    v164 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v256[6] = v164;
    rightAnchor2 = [v84 rightAnchor];
    taggedButtonsView9 = [(CarTestCardViewController *)self taggedButtonsView];
    rightAnchor3 = [taggedButtonsView9 rightAnchor];
    v149 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
    v256[7] = v149;
    leftAnchor6 = [v83 leftAnchor];
    rightAnchor4 = [v82 rightAnchor];
    v139 = [leftAnchor6 constraintEqualToAnchor:rightAnchor4];
    v256[8] = v139;
    topAnchor5 = [v83 topAnchor];
    v143 = v84;
    bottomAnchor5 = [v84 bottomAnchor];
    v131 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    v256[9] = v131;
    rightAnchor5 = [v83 rightAnchor];
    taggedButtonsView10 = [(CarTestCardViewController *)self taggedButtonsView];
    rightAnchor6 = [taggedButtonsView10 rightAnchor];
    v121 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
    v256[10] = v121;
    leftAnchor7 = [v85 leftAnchor];
    v155 = v82;
    rightAnchor7 = [v82 rightAnchor];
    v115 = [leftAnchor7 constraintEqualToAnchor:rightAnchor7];
    v256[11] = v115;
    topAnchor6 = [v85 topAnchor];
    bottomAnchor6 = [v83 bottomAnchor];
    v110 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6];
    v256[12] = v110;
    bottomAnchor7 = [v85 bottomAnchor];
    taggedButtonsView11 = [(CarTestCardViewController *)self taggedButtonsView];
    bottomAnchor8 = [taggedButtonsView11 bottomAnchor];
    v106 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v256[13] = v106;
    v137 = v85;
    rightAnchor8 = [v85 rightAnchor];
    taggedButtonsView12 = [(CarTestCardViewController *)self taggedButtonsView];
    rightAnchor9 = [taggedButtonsView12 rightAnchor];
    v102 = [rightAnchor8 constraintEqualToAnchor:rightAnchor9];
    v256[14] = v102;
    widthAnchor2 = [v82 widthAnchor];
    widthAnchor3 = [v83 widthAnchor];
    v99 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v256[15] = v99;
    heightAnchor2 = [v84 heightAnchor];
    heightAnchor3 = [v83 heightAnchor];
    v89 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v256[16] = v89;
    heightAnchor4 = [v85 heightAnchor];
    heightAnchor5 = [v83 heightAnchor];
    v92 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v256[17] = v92;
    v129 = v83;
    heightAnchor6 = [v83 heightAnchor];
    v94 = [heightAnchor6 constraintEqualToConstant:12.0];
    v256[18] = v94;
    widthAnchor4 = [v83 widthAnchor];
    v96 = [widthAnchor4 constraintEqualToConstant:15.0];
    v256[19] = v96;
    v97 = [NSArray arrayWithObjects:v256 count:20];
    [v253 addObjectsFromArray:v97];
  }

  [NSLayoutConstraint activateConstraints:v253];
}

@end