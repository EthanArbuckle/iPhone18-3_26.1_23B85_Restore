@interface CarCompressionTestCardViewController
- (CarCompressionTestCardDelegate)delegate;
- (CarCompressionTestCardViewController)init;
- (NSArray)focusOrderSubItems;
- (id)_buttonWithTitle:(id)title;
- (void)_decreaseHeight;
- (void)_disappearAndReturn;
- (void)_dismiss;
- (void)_increaseHeight;
- (void)_incrementPriority;
- (void)_updateLabel;
- (void)setSpacerHeight:(double)height;
- (void)setSpacerPriority:(float)priority;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CarCompressionTestCardViewController

- (CarCompressionTestCardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  priorityButton = self->_priorityButton;
  v8[0] = self->_tallerButton;
  v8[1] = priorityButton;
  shorterButton = self->_shorterButton;
  v8[2] = self->_reloadButton;
  v8[3] = shorterButton;
  v8[4] = self->_dismissButton;
  v4 = [NSArray arrayWithObjects:v8 count:5];
  v5 = [v4 indexesOfObjectsPassingTest:&stru_1016328A0];
  v6 = [v4 objectsAtIndexes:v5];

  return v6;
}

- (void)_incrementPriority
{
  *&v2 = self->_spacerPriority;
  v4 = [NSNumber numberWithFloat:v2];
  v5 = [(NSArray *)self->_priorities indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v6 >= [(NSArray *)self->_priorities count])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(NSArray *)self->_priorities objectAtIndexedSubscript:v7];

  [v8 floatValue];
  [(CarCompressionTestCardViewController *)self setSpacerPriority:?];
}

- (void)_disappearAndReturn
{
  delegate = [(CarCompressionTestCardViewController *)self delegate];
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v4 = v3;
  [(CarCompressionTestCardViewController *)self spacerPriority];
  LODWORD(v6) = v5;
  [delegate compressionTestCard:self reloadWithSpacerHeight:v4 priority:v6];
}

- (void)_dismiss
{
  delegate = [(CarCompressionTestCardViewController *)self delegate];
  [delegate compressionTestCardRequestsDismiss:self];
}

- (void)_decreaseHeight
{
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v4 = v3 + -11.0;

  [(CarCompressionTestCardViewController *)self setSpacerHeight:v4];
}

- (void)_increaseHeight
{
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v4 = v3 + 9.0;

  [(CarCompressionTestCardViewController *)self setSpacerHeight:v4];
}

- (void)setSpacerPriority:(float)priority
{
  if (self->_spacerPriority != priority)
  {
    self->_spacerPriority = fmaxf(priority, 0.0);
    spacerHeightConstraint = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    [spacerHeightConstraint setActive:0];

    spacerHeightConstraint2 = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    *&v7 = priority;
    [spacerHeightConstraint2 setPriority:v7];

    spacerHeightConstraint3 = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    [spacerHeightConstraint3 setActive:1];

    priorityButton = [(CarCompressionTestCardViewController *)self priorityButton];
    *&v10 = priority;
    v11 = [NSNumber numberWithFloat:v10];
    stringValue = [v11 stringValue];
    [priorityButton setTitle:stringValue forState:0];

    [(CarCompressionTestCardViewController *)self _updateLabel];
  }
}

- (void)setSpacerHeight:(double)height
{
  if (self->_spacerHeight != height)
  {
    v4 = fmax(height, 0.0);
    self->_spacerHeight = v4;
    spacerHeightConstraint = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    [spacerHeightConstraint setConstant:v4];

    v6 = self->_spacerHeight != 0.0;
    shorterButton = [(CarCompressionTestCardViewController *)self shorterButton];
    [shorterButton setEnabled:v6];

    [(CarCompressionTestCardViewController *)self _updateLabel];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CarCompressionTestCardViewController;
  [(CarCompressionTestCardViewController *)&v3 viewDidLayoutSubviews];
  [(CarCompressionTestCardViewController *)self _updateLabel];
}

- (void)_updateLabel
{
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v4 = v3;
  [(UIView *)self->_spacerView bounds];
  Height = CGRectGetHeight(v10);
  view = [(CarCompressionTestCardViewController *)self view];
  [view bounds];
  v6 = [NSString stringWithFormat:@"Height=%.1f (=%.1f/%.1f)", v4, *&Height, CGRectGetHeight(v11)];
  heightLabel = [(CarCompressionTestCardViewController *)self heightLabel];
  [heightLabel setText:v6];
}

- (id)_buttonWithTitle:(id)title
{
  titleCopy = title;
  v4 = +[CarFocusableButton button];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setModifiesBackgroundColor:1];
  [v4 setTitle:titleCopy forState:0];
  v5 = [UIFont systemFontOfSize:11.0 weight:UIFontWeightBold];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  [v4 setContentHorizontalAlignment:0];

  return v4;
}

- (void)viewDidLoad
{
  v153.receiver = self;
  v153.super_class = CarCompressionTestCardViewController;
  [(CarCompressionTestCardViewController *)&v153 viewDidLoad];
  priorities = self->_priorities;
  self->_priorities = &off_1016ED310;

  v4 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  spacerView = self->_spacerView;
  self->_spacerView = v8;

  [(UIView *)self->_spacerView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1112014848;
  [(UIView *)self->_spacerView setContentHuggingPriority:1 forAxis:v10];
  LODWORD(v11) = 1112014848;
  [(UIView *)self->_spacerView setContentHuggingPriority:0 forAxis:v11];
  view = [(CarCompressionTestCardViewController *)self view];
  [view addSubview:self->_spacerView];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  heightLabel = self->_heightLabel;
  self->_heightLabel = v13;

  [(UILabel *)self->_heightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [UIFont systemFontOfSize:8.0 weight:UIFontWeightSemibold];
  [(UILabel *)self->_heightLabel setFont:v15];

  v16 = +[UIColor labelColor];
  [(UILabel *)self->_heightLabel setTextColor:v16];

  [(UILabel *)self->_heightLabel setTextAlignment:1];
  LODWORD(v17) = 1148846080;
  [(UILabel *)self->_heightLabel setContentCompressionResistancePriority:1 forAxis:v17];
  LODWORD(v18) = 1112014848;
  [(UILabel *)self->_heightLabel setContentHuggingPriority:1 forAxis:v18];
  [(UIView *)self->_spacerView addSubview:self->_heightLabel];
  v19 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"▲9"];
  tallerButton = self->_tallerButton;
  self->_tallerButton = v19;

  [(CarFocusableButton *)self->_tallerButton addTarget:self action:"_increaseHeight" forControlEvents:64];
  view2 = [(CarCompressionTestCardViewController *)self view];
  [view2 addSubview:self->_tallerButton];

  v22 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"▼11"];
  shorterButton = self->_shorterButton;
  self->_shorterButton = v22;

  [(CarFocusableButton *)self->_shorterButton addTarget:self action:"_decreaseHeight" forControlEvents:64];
  view3 = [(CarCompressionTestCardViewController *)self view];
  [view3 addSubview:self->_shorterButton];

  [(CarCompressionTestCardViewController *)self spacerHeight];
  [(CarFocusableButton *)self->_shorterButton setEnabled:v25 > 0.0];
  v26 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"⟲"];
  reloadButton = self->_reloadButton;
  self->_reloadButton = v26;

  [(CarFocusableButton *)self->_reloadButton addTarget:self action:"_disappearAndReturn" forControlEvents:64];
  view4 = [(CarCompressionTestCardViewController *)self view];
  [view4 addSubview:self->_reloadButton];

  [(CarCompressionTestCardViewController *)self spacerPriority];
  v29 = [NSNumber numberWithFloat:?];
  stringValue = [v29 stringValue];
  v31 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:stringValue];
  priorityButton = self->_priorityButton;
  self->_priorityButton = v31;

  [(CarFocusableButton *)self->_priorityButton addTarget:self action:"_incrementPriority" forControlEvents:64];
  view5 = [(CarCompressionTestCardViewController *)self view];
  [view5 addSubview:self->_priorityButton];

  v34 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"Dismiss"];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v34;

  [(CarFocusableButton *)self->_dismissButton addTarget:self action:"_dismiss" forControlEvents:64];
  view6 = [(CarCompressionTestCardViewController *)self view];
  [view6 addSubview:self->_dismissButton];

  v37 = [UIStackView alloc];
  v156[0] = self->_tallerButton;
  v38 = [CarHairlineView hairlineViewAlongAxis:1];
  v39 = self->_priorityButton;
  v156[1] = v38;
  v156[2] = v39;
  v40 = [CarHairlineView hairlineViewAlongAxis:1];
  v41 = self->_reloadButton;
  v156[3] = v40;
  v156[4] = v41;
  v42 = [CarHairlineView hairlineViewAlongAxis:1];
  v43 = self->_shorterButton;
  v156[5] = v42;
  v156[6] = v43;
  v44 = [NSArray arrayWithObjects:v156 count:7];
  v45 = [v37 initWithArrangedSubviews:v44];

  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v45 setAlignment:0];
  [v45 setDistribution:2];
  [v45 setAxis:0];
  v149 = v45;
  [v45 setSpacing:0.0];
  view7 = [(CarCompressionTestCardViewController *)self view];
  [view7 addSubview:v45];

  v151 = [CarHairlineView hairlineViewAlongAxis:0];
  [v151 setTranslatesAutoresizingMaskIntoConstraints:0];
  view8 = [(CarCompressionTestCardViewController *)self view];
  [view8 addSubview:v151];

  v150 = [CarHairlineView hairlineViewAlongAxis:0];
  [v150 setTranslatesAutoresizingMaskIntoConstraints:0];
  view9 = [(CarCompressionTestCardViewController *)self view];
  [view9 addSubview:v150];

  v152 = objc_opt_new();
  topAnchor = [(UILabel *)self->_heightLabel topAnchor];
  topAnchor2 = [(UIView *)self->_spacerView topAnchor];
  v142 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v155[0] = v142;
  leadingAnchor = [(UILabel *)self->_heightLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_spacerView leadingAnchor];
  v133 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v155[1] = v133;
  trailingAnchor = [(UILabel *)self->_heightLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_spacerView trailingAnchor];
  v127 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v155[2] = v127;
  bottomAnchor = [(UILabel *)self->_heightLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_spacerView bottomAnchor];
  v49 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v155[3] = v49;
  centerXAnchor = [(UILabel *)self->_heightLabel centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_spacerView centerXAnchor];
  v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v155[4] = v52;
  centerYAnchor = [(UILabel *)self->_heightLabel centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_spacerView centerYAnchor];
  v55 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v155[5] = v55;
  v56 = [NSArray arrayWithObjects:v155 count:6];
  [v152 addObjectsFromArray:v56];

  heightAnchor = [(UIView *)self->_spacerView heightAnchor];
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v59 = v58;
  [(CarCompressionTestCardViewController *)self spacerPriority];
  LODWORD(v61) = v60;
  v62 = [heightAnchor constraintEqualToConstant:v59 priority:v61];
  spacerHeightConstraint = self->_spacerHeightConstraint;
  self->_spacerHeightConstraint = v62;

  v154[0] = self->_spacerHeightConstraint;
  widthAnchor = [(CarFocusableButton *)self->_tallerButton widthAnchor];
  widthAnchor2 = [(CarFocusableButton *)self->_shorterButton widthAnchor];
  v145 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v154[1] = v145;
  widthAnchor3 = [(CarFocusableButton *)self->_tallerButton widthAnchor];
  widthAnchor4 = [(CarFocusableButton *)self->_reloadButton widthAnchor];
  v140 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v154[2] = v140;
  widthAnchor5 = [(CarFocusableButton *)self->_tallerButton widthAnchor];
  widthAnchor6 = [(CarFocusableButton *)self->_priorityButton widthAnchor];
  v136 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  v154[3] = v136;
  topAnchor3 = [(UIView *)self->_spacerView topAnchor];
  view10 = [(CarCompressionTestCardViewController *)self view];
  topAnchor4 = [view10 topAnchor];
  v128 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v154[4] = v128;
  leftAnchor = [(UIView *)self->_spacerView leftAnchor];
  view11 = [(CarCompressionTestCardViewController *)self view];
  leftAnchor2 = [view11 leftAnchor];
  v121 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v154[5] = v121;
  rightAnchor = [(UIView *)self->_spacerView rightAnchor];
  view12 = [(CarCompressionTestCardViewController *)self view];
  rightAnchor2 = [view12 rightAnchor];
  v117 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v154[6] = v117;
  bottomAnchor3 = [(UIView *)self->_spacerView bottomAnchor];
  topAnchor5 = [v151 topAnchor];
  v114 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  v154[7] = v114;
  leftAnchor3 = [v151 leftAnchor];
  view13 = [(CarCompressionTestCardViewController *)self view];
  leftAnchor4 = [view13 leftAnchor];
  v110 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v154[8] = v110;
  rightAnchor3 = [v151 rightAnchor];
  view14 = [(CarCompressionTestCardViewController *)self view];
  rightAnchor4 = [view14 rightAnchor];
  v106 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v154[9] = v106;
  topAnchor6 = [v149 topAnchor];
  bottomAnchor4 = [v151 bottomAnchor];
  v103 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
  v154[10] = v103;
  leadingAnchor3 = [v149 leadingAnchor];
  view15 = [(CarCompressionTestCardViewController *)self view];
  leadingAnchor4 = [view15 leadingAnchor];
  v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v154[11] = v99;
  trailingAnchor3 = [v149 trailingAnchor];
  view16 = [(CarCompressionTestCardViewController *)self view];
  trailingAnchor4 = [view16 trailingAnchor];
  v95 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v154[12] = v95;
  bottomAnchor5 = [v149 bottomAnchor];
  topAnchor7 = [v150 topAnchor];
  v92 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7];
  v154[13] = v92;
  heightAnchor2 = [v149 heightAnchor];
  v90 = [heightAnchor2 constraintEqualToConstant:20.0];
  v154[14] = v90;
  leftAnchor5 = [v150 leftAnchor];
  view17 = [(CarCompressionTestCardViewController *)self view];
  leftAnchor6 = [view17 leftAnchor];
  v86 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v154[15] = v86;
  rightAnchor5 = [v150 rightAnchor];
  view18 = [(CarCompressionTestCardViewController *)self view];
  rightAnchor6 = [view18 rightAnchor];
  v82 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v154[16] = v82;
  bottomAnchor6 = [v150 bottomAnchor];
  topAnchor8 = [(CarFocusableButton *)self->_dismissButton topAnchor];
  v79 = [bottomAnchor6 constraintEqualToAnchor:topAnchor8];
  v154[17] = v79;
  leadingAnchor5 = [(CarFocusableButton *)self->_dismissButton leadingAnchor];
  view19 = [(CarCompressionTestCardViewController *)self view];
  leadingAnchor6 = [view19 leadingAnchor];
  v75 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v154[18] = v75;
  trailingAnchor5 = [(CarFocusableButton *)self->_dismissButton trailingAnchor];
  view20 = [(CarCompressionTestCardViewController *)self view];
  trailingAnchor6 = [view20 trailingAnchor];
  v66 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v154[19] = v66;
  heightAnchor3 = [(CarFocusableButton *)self->_dismissButton heightAnchor];
  v68 = [heightAnchor3 constraintEqualToConstant:20.0];
  v154[20] = v68;
  bottomAnchor7 = [(CarFocusableButton *)self->_dismissButton bottomAnchor];
  view21 = [(CarCompressionTestCardViewController *)self view];
  bottomAnchor8 = [view21 bottomAnchor];
  v72 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v154[21] = v72;
  v73 = [NSArray arrayWithObjects:v154 count:22];
  [v152 addObjectsFromArray:v73];

  [NSLayoutConstraint activateConstraints:v152];
}

- (CarCompressionTestCardViewController)init
{
  v3.receiver = self;
  v3.super_class = CarCompressionTestCardViewController;
  result = [(CarCompressionTestCardViewController *)&v3 init];
  if (result)
  {
    result->_spacerHeight = 0.0;
    result->_spacerPriority = 999.0;
  }

  return result;
}

@end