@interface ASTStepperCell
- (ASTStepperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (ASTStepperCellDelegate)stepperDelegate;
- (void)_stepperChanged:(id)changed;
- (void)_updateLabel;
@end

@implementation ASTStepperCell

- (ASTStepperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v63.receiver = self;
  v63.super_class = ASTStepperCell;
  v5 = [(ASTStepperCell *)&v63 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(ASTStepperCell *)v5 setUserInteractionEnabled:1];
    v7 = [[UIStepper alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    stepper = v6->_stepper;
    v6->_stepper = v7;

    [(UIStepper *)v6->_stepper setMinimumValue:1.0];
    [(UIStepper *)v6->_stepper setMaximumValue:8.0];
    v9 = +[AXSettings sharedInstance];
    assistiveTouchMainScreenCustomization = [v9 assistiveTouchMainScreenCustomization];

    -[UIStepper setValue:](v6->_stepper, "setValue:", [assistiveTouchMainScreenCustomization count]);
    [(UIStepper *)v6->_stepper setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1148846080;
    [(UIStepper *)v6->_stepper setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UIStepper *)v6->_stepper setContentCompressionResistancePriority:1 forAxis:v11];
    [(UIStepper *)v6->_stepper setStepValue:1.0];
    [(UIStepper *)v6->_stepper setUserInteractionEnabled:1];
    [(UIStepper *)v6->_stepper addTarget:v6 action:"_stepperChanged:" forControlEvents:4096];
    contentView = [(ASTStepperCell *)v6 contentView];
    [contentView addSubview:v6->_stepper];

    v13 = objc_alloc_init(UILabel);
    stepperLabel = v6->_stepperLabel;
    v6->_stepperLabel = v13;

    contentView2 = [(ASTStepperCell *)v6 contentView];
    [contentView2 addSubview:v6->_stepperLabel];

    [(UILabel *)v6->_stepperLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v6->_stepperLabel setFont:v16];

    [(UILabel *)v6->_stepperLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_stepperLabel setNumberOfLines:0];
    traitCollection = [(ASTStepperCell *)v6 traitCollection];
    -[UILabel setTextAlignment:](v6->_stepperLabel, "setTextAlignment:", 2 * ([traitCollection layoutDirection] != &dword_0 + 1));

    [(ASTStepperCell *)v6 _updateLabel];
    v18 = +[AXSettings sharedInstance];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = __58__ASTStepperCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
    v61[3] = &unk_2553B0;
    v19 = v6;
    v62 = v19;
    [v18 registerUpdateBlock:v61 forRetrieveSelector:"assistiveTouchMainScreenCustomization" withListener:v19];

    leadingAnchor = [(UILabel *)v6->_stepperLabel leadingAnchor];
    contentView3 = [(ASTStepperCell *)v19 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v64[0] = v56;
    leadingAnchor3 = [(UIStepper *)v6->_stepper leadingAnchor];
    trailingAnchor = [(UILabel *)v6->_stepperLabel trailingAnchor];
    v53 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v64[1] = v53;
    contentView4 = [(ASTStepperCell *)v19 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    trailingAnchor3 = [(UIStepper *)v6->_stepper trailingAnchor];
    v49 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
    v64[2] = v49;
    centerYAnchor = [(UILabel *)v6->_stepperLabel centerYAnchor];
    centerYAnchor2 = [(UIStepper *)v6->_stepper centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[3] = v46;
    firstBaselineAnchor = [(UILabel *)v6->_stepperLabel firstBaselineAnchor];
    contentView5 = [(ASTStepperCell *)v19 contentView];
    topAnchor = [contentView5 topAnchor];
    v42 = [firstBaselineAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    v64[4] = v42;
    contentView6 = [(ASTStepperCell *)v19 contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v6->_stepperLabel lastBaselineAnchor];
    v38 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    v64[5] = v38;
    topAnchor2 = [(UIStepper *)v6->_stepper topAnchor];
    contentView7 = [(ASTStepperCell *)v19 contentView];
    topAnchor3 = [contentView7 topAnchor];
    v33 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
    v64[6] = v33;
    bottomAnchor2 = [(UIStepper *)v6->_stepper bottomAnchor];
    contentView8 = [(ASTStepperCell *)v19 contentView];
    bottomAnchor3 = [contentView8 bottomAnchor];
    v20 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
    v64[7] = v20;
    centerYAnchor3 = [(UIStepper *)v6->_stepper centerYAnchor];
    contentView9 = [(ASTStepperCell *)v19 contentView];
    centerYAnchor4 = [contentView9 centerYAnchor];
    v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v64[8] = v24;
    contentView10 = [(ASTStepperCell *)v19 contentView];
    heightAnchor = [contentView10 heightAnchor];
    v27 = [heightAnchor constraintGreaterThanOrEqualToConstant:UITableDefaultRowHeight];
    v64[9] = v27;
    v37 = [NSArray arrayWithObjects:v64 count:10];

    [NSLayoutConstraint activateConstraints:v37];
    v28 = v19;
  }

  return v6;
}

id __58__ASTStepperCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMainScreenCustomization];
  [*(*(a1 + 32) + 120) setValue:{objc_msgSend(v3, "count")}];

  v4 = *(a1 + 32);

  return [v4 _updateLabel];
}

- (void)_updateLabel
{
  [(UIStepper *)self->_stepper value];
  v4 = v3;
  v6 = settingsLocString(@"NumberOfAssistiveTouchButtons", @"HandSettings");
  v5 = [NSString localizedStringWithFormat:v6, v4];
  [(UILabel *)self->_stepperLabel setText:v5];
}

- (void)_stepperChanged:(id)changed
{
  [(ASTStepperCell *)self _updateLabel];
  stepperDelegate = [(ASTStepperCell *)self stepperDelegate];
  [stepperDelegate stepperCellCountChanged:self];
}

- (ASTStepperCellDelegate)stepperDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperDelegate);

  return WeakRetained;
}

@end