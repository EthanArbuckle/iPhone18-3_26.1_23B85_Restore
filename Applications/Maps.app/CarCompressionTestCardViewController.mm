@interface CarCompressionTestCardViewController
- (CarCompressionTestCardDelegate)delegate;
- (CarCompressionTestCardViewController)init;
- (NSArray)focusOrderSubItems;
- (id)_buttonWithTitle:(id)a3;
- (void)_decreaseHeight;
- (void)_disappearAndReturn;
- (void)_dismiss;
- (void)_increaseHeight;
- (void)_incrementPriority;
- (void)_updateLabel;
- (void)setSpacerHeight:(double)a3;
- (void)setSpacerPriority:(float)a3;
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
  v7 = [(CarCompressionTestCardViewController *)self delegate];
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v4 = v3;
  [(CarCompressionTestCardViewController *)self spacerPriority];
  LODWORD(v6) = v5;
  [v7 compressionTestCard:self reloadWithSpacerHeight:v4 priority:v6];
}

- (void)_dismiss
{
  v3 = [(CarCompressionTestCardViewController *)self delegate];
  [v3 compressionTestCardRequestsDismiss:self];
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

- (void)setSpacerPriority:(float)a3
{
  if (self->_spacerPriority != a3)
  {
    self->_spacerPriority = fmaxf(a3, 0.0);
    v5 = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    [v5 setActive:0];

    v6 = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    *&v7 = a3;
    [v6 setPriority:v7];

    v8 = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    [v8 setActive:1];

    v9 = [(CarCompressionTestCardViewController *)self priorityButton];
    *&v10 = a3;
    v11 = [NSNumber numberWithFloat:v10];
    v12 = [v11 stringValue];
    [v9 setTitle:v12 forState:0];

    [(CarCompressionTestCardViewController *)self _updateLabel];
  }
}

- (void)setSpacerHeight:(double)a3
{
  if (self->_spacerHeight != a3)
  {
    v4 = fmax(a3, 0.0);
    self->_spacerHeight = v4;
    v5 = [(CarCompressionTestCardViewController *)self spacerHeightConstraint];
    [v5 setConstant:v4];

    v6 = self->_spacerHeight != 0.0;
    v7 = [(CarCompressionTestCardViewController *)self shorterButton];
    [v7 setEnabled:v6];

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
  v8 = [(CarCompressionTestCardViewController *)self view];
  [v8 bounds];
  v6 = [NSString stringWithFormat:@"Height=%.1f (=%.1f/%.1f)", v4, *&Height, CGRectGetHeight(v11)];
  v7 = [(CarCompressionTestCardViewController *)self heightLabel];
  [v7 setText:v6];
}

- (id)_buttonWithTitle:(id)a3
{
  v3 = a3;
  v4 = +[CarFocusableButton button];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setModifiesBackgroundColor:1];
  [v4 setTitle:v3 forState:0];
  v5 = [UIFont systemFontOfSize:11.0 weight:UIFontWeightBold];
  v6 = [v4 titleLabel];
  [v6 setFont:v5];

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
  v12 = [(CarCompressionTestCardViewController *)self view];
  [v12 addSubview:self->_spacerView];

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
  v21 = [(CarCompressionTestCardViewController *)self view];
  [v21 addSubview:self->_tallerButton];

  v22 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"▼11"];
  shorterButton = self->_shorterButton;
  self->_shorterButton = v22;

  [(CarFocusableButton *)self->_shorterButton addTarget:self action:"_decreaseHeight" forControlEvents:64];
  v24 = [(CarCompressionTestCardViewController *)self view];
  [v24 addSubview:self->_shorterButton];

  [(CarCompressionTestCardViewController *)self spacerHeight];
  [(CarFocusableButton *)self->_shorterButton setEnabled:v25 > 0.0];
  v26 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"⟲"];
  reloadButton = self->_reloadButton;
  self->_reloadButton = v26;

  [(CarFocusableButton *)self->_reloadButton addTarget:self action:"_disappearAndReturn" forControlEvents:64];
  v28 = [(CarCompressionTestCardViewController *)self view];
  [v28 addSubview:self->_reloadButton];

  [(CarCompressionTestCardViewController *)self spacerPriority];
  v29 = [NSNumber numberWithFloat:?];
  v30 = [v29 stringValue];
  v31 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:v30];
  priorityButton = self->_priorityButton;
  self->_priorityButton = v31;

  [(CarFocusableButton *)self->_priorityButton addTarget:self action:"_incrementPriority" forControlEvents:64];
  v33 = [(CarCompressionTestCardViewController *)self view];
  [v33 addSubview:self->_priorityButton];

  v34 = [(CarCompressionTestCardViewController *)self _buttonWithTitle:@"Dismiss"];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v34;

  [(CarFocusableButton *)self->_dismissButton addTarget:self action:"_dismiss" forControlEvents:64];
  v36 = [(CarCompressionTestCardViewController *)self view];
  [v36 addSubview:self->_dismissButton];

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
  v46 = [(CarCompressionTestCardViewController *)self view];
  [v46 addSubview:v45];

  v151 = [CarHairlineView hairlineViewAlongAxis:0];
  [v151 setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = [(CarCompressionTestCardViewController *)self view];
  [v47 addSubview:v151];

  v150 = [CarHairlineView hairlineViewAlongAxis:0];
  [v150 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = [(CarCompressionTestCardViewController *)self view];
  [v48 addSubview:v150];

  v152 = objc_opt_new();
  v147 = [(UILabel *)self->_heightLabel topAnchor];
  v144 = [(UIView *)self->_spacerView topAnchor];
  v142 = [v147 constraintGreaterThanOrEqualToAnchor:v144];
  v155[0] = v142;
  v139 = [(UILabel *)self->_heightLabel leadingAnchor];
  v135 = [(UIView *)self->_spacerView leadingAnchor];
  v133 = [v139 constraintGreaterThanOrEqualToAnchor:v135];
  v155[1] = v133;
  v131 = [(UILabel *)self->_heightLabel trailingAnchor];
  v129 = [(UIView *)self->_spacerView trailingAnchor];
  v127 = [v131 constraintLessThanOrEqualToAnchor:v129];
  v155[2] = v127;
  v125 = [(UILabel *)self->_heightLabel bottomAnchor];
  v123 = [(UIView *)self->_spacerView bottomAnchor];
  v49 = [v125 constraintLessThanOrEqualToAnchor:v123];
  v155[3] = v49;
  v50 = [(UILabel *)self->_heightLabel centerXAnchor];
  v51 = [(UIView *)self->_spacerView centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v155[4] = v52;
  v53 = [(UILabel *)self->_heightLabel centerYAnchor];
  v54 = [(UIView *)self->_spacerView centerYAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  v155[5] = v55;
  v56 = [NSArray arrayWithObjects:v155 count:6];
  [v152 addObjectsFromArray:v56];

  v57 = [(UIView *)self->_spacerView heightAnchor];
  [(CarCompressionTestCardViewController *)self spacerHeight];
  v59 = v58;
  [(CarCompressionTestCardViewController *)self spacerPriority];
  LODWORD(v61) = v60;
  v62 = [v57 constraintEqualToConstant:v59 priority:v61];
  spacerHeightConstraint = self->_spacerHeightConstraint;
  self->_spacerHeightConstraint = v62;

  v154[0] = self->_spacerHeightConstraint;
  v148 = [(CarFocusableButton *)self->_tallerButton widthAnchor];
  v146 = [(CarFocusableButton *)self->_shorterButton widthAnchor];
  v145 = [v148 constraintEqualToAnchor:v146];
  v154[1] = v145;
  v143 = [(CarFocusableButton *)self->_tallerButton widthAnchor];
  v141 = [(CarFocusableButton *)self->_reloadButton widthAnchor];
  v140 = [v143 constraintEqualToAnchor:v141];
  v154[2] = v140;
  v138 = [(CarFocusableButton *)self->_tallerButton widthAnchor];
  v137 = [(CarFocusableButton *)self->_priorityButton widthAnchor];
  v136 = [v138 constraintEqualToAnchor:v137];
  v154[3] = v136;
  v132 = [(UIView *)self->_spacerView topAnchor];
  v134 = [(CarCompressionTestCardViewController *)self view];
  v130 = [v134 topAnchor];
  v128 = [v132 constraintEqualToAnchor:v130];
  v154[4] = v128;
  v124 = [(UIView *)self->_spacerView leftAnchor];
  v126 = [(CarCompressionTestCardViewController *)self view];
  v122 = [v126 leftAnchor];
  v121 = [v124 constraintEqualToAnchor:v122];
  v154[5] = v121;
  v119 = [(UIView *)self->_spacerView rightAnchor];
  v120 = [(CarCompressionTestCardViewController *)self view];
  v118 = [v120 rightAnchor];
  v117 = [v119 constraintEqualToAnchor:v118];
  v154[6] = v117;
  v116 = [(UIView *)self->_spacerView bottomAnchor];
  v115 = [v151 topAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v154[7] = v114;
  v112 = [v151 leftAnchor];
  v113 = [(CarCompressionTestCardViewController *)self view];
  v111 = [v113 leftAnchor];
  v110 = [v112 constraintEqualToAnchor:v111];
  v154[8] = v110;
  v108 = [v151 rightAnchor];
  v109 = [(CarCompressionTestCardViewController *)self view];
  v107 = [v109 rightAnchor];
  v106 = [v108 constraintEqualToAnchor:v107];
  v154[9] = v106;
  v105 = [v149 topAnchor];
  v104 = [v151 bottomAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v154[10] = v103;
  v101 = [v149 leadingAnchor];
  v102 = [(CarCompressionTestCardViewController *)self view];
  v100 = [v102 leadingAnchor];
  v99 = [v101 constraintEqualToAnchor:v100];
  v154[11] = v99;
  v97 = [v149 trailingAnchor];
  v98 = [(CarCompressionTestCardViewController *)self view];
  v96 = [v98 trailingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v154[12] = v95;
  v94 = [v149 bottomAnchor];
  v93 = [v150 topAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v154[13] = v92;
  v91 = [v149 heightAnchor];
  v90 = [v91 constraintEqualToConstant:20.0];
  v154[14] = v90;
  v88 = [v150 leftAnchor];
  v89 = [(CarCompressionTestCardViewController *)self view];
  v87 = [v89 leftAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v154[15] = v86;
  v84 = [v150 rightAnchor];
  v85 = [(CarCompressionTestCardViewController *)self view];
  v83 = [v85 rightAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v154[16] = v82;
  v81 = [v150 bottomAnchor];
  v80 = [(CarFocusableButton *)self->_dismissButton topAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v154[17] = v79;
  v77 = [(CarFocusableButton *)self->_dismissButton leadingAnchor];
  v78 = [(CarCompressionTestCardViewController *)self view];
  v76 = [v78 leadingAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v154[18] = v75;
  v74 = [(CarFocusableButton *)self->_dismissButton trailingAnchor];
  v64 = [(CarCompressionTestCardViewController *)self view];
  v65 = [v64 trailingAnchor];
  v66 = [v74 constraintEqualToAnchor:v65];
  v154[19] = v66;
  v67 = [(CarFocusableButton *)self->_dismissButton heightAnchor];
  v68 = [v67 constraintEqualToConstant:20.0];
  v154[20] = v68;
  v69 = [(CarFocusableButton *)self->_dismissButton bottomAnchor];
  v70 = [(CarCompressionTestCardViewController *)self view];
  v71 = [v70 bottomAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
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