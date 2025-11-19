@interface ASTStepperCell
- (ASTStepperCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (ASTStepperCellDelegate)stepperDelegate;
- (void)_stepperChanged:(id)a3;
- (void)_updateLabel;
@end

@implementation ASTStepperCell

- (ASTStepperCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v63.receiver = self;
  v63.super_class = ASTStepperCell;
  v5 = [(ASTStepperCell *)&v63 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
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
    v60 = [v9 assistiveTouchMainScreenCustomization];

    -[UIStepper setValue:](v6->_stepper, "setValue:", [v60 count]);
    [(UIStepper *)v6->_stepper setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1148846080;
    [(UIStepper *)v6->_stepper setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UIStepper *)v6->_stepper setContentCompressionResistancePriority:1 forAxis:v11];
    [(UIStepper *)v6->_stepper setStepValue:1.0];
    [(UIStepper *)v6->_stepper setUserInteractionEnabled:1];
    [(UIStepper *)v6->_stepper addTarget:v6 action:"_stepperChanged:" forControlEvents:4096];
    v12 = [(ASTStepperCell *)v6 contentView];
    [v12 addSubview:v6->_stepper];

    v13 = objc_alloc_init(UILabel);
    stepperLabel = v6->_stepperLabel;
    v6->_stepperLabel = v13;

    v15 = [(ASTStepperCell *)v6 contentView];
    [v15 addSubview:v6->_stepperLabel];

    [(UILabel *)v6->_stepperLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v6->_stepperLabel setFont:v16];

    [(UILabel *)v6->_stepperLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_stepperLabel setNumberOfLines:0];
    v17 = [(ASTStepperCell *)v6 traitCollection];
    -[UILabel setTextAlignment:](v6->_stepperLabel, "setTextAlignment:", 2 * ([v17 layoutDirection] != &dword_0 + 1));

    [(ASTStepperCell *)v6 _updateLabel];
    v18 = +[AXSettings sharedInstance];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = __58__ASTStepperCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
    v61[3] = &unk_2553B0;
    v19 = v6;
    v62 = v19;
    [v18 registerUpdateBlock:v61 forRetrieveSelector:"assistiveTouchMainScreenCustomization" withListener:v19];

    v58 = [(UILabel *)v6->_stepperLabel leadingAnchor];
    v59 = [(ASTStepperCell *)v19 contentView];
    v57 = [v59 leadingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57 constant:10.0];
    v64[0] = v56;
    v55 = [(UIStepper *)v6->_stepper leadingAnchor];
    v54 = [(UILabel *)v6->_stepperLabel trailingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:10.0];
    v64[1] = v53;
    v52 = [(ASTStepperCell *)v19 contentView];
    v51 = [v52 trailingAnchor];
    v50 = [(UIStepper *)v6->_stepper trailingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:10.0];
    v64[2] = v49;
    v48 = [(UILabel *)v6->_stepperLabel centerYAnchor];
    v47 = [(UIStepper *)v6->_stepper centerYAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v64[3] = v46;
    v44 = [(UILabel *)v6->_stepperLabel firstBaselineAnchor];
    v45 = [(ASTStepperCell *)v19 contentView];
    v43 = [v45 topAnchor];
    v42 = [v44 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v43 multiplier:1.0];
    v64[4] = v42;
    v41 = [(ASTStepperCell *)v19 contentView];
    v40 = [v41 bottomAnchor];
    v39 = [(UILabel *)v6->_stepperLabel lastBaselineAnchor];
    v38 = [v40 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v39 multiplier:1.0];
    v64[5] = v38;
    v35 = [(UIStepper *)v6->_stepper topAnchor];
    v36 = [(ASTStepperCell *)v19 contentView];
    v34 = [v36 topAnchor];
    v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34];
    v64[6] = v33;
    v31 = [(UIStepper *)v6->_stepper bottomAnchor];
    v32 = [(ASTStepperCell *)v19 contentView];
    v30 = [v32 bottomAnchor];
    v20 = [v31 constraintLessThanOrEqualToAnchor:v30];
    v64[7] = v20;
    v21 = [(UIStepper *)v6->_stepper centerYAnchor];
    v22 = [(ASTStepperCell *)v19 contentView];
    v23 = [v22 centerYAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v64[8] = v24;
    v25 = [(ASTStepperCell *)v19 contentView];
    v26 = [v25 heightAnchor];
    v27 = [v26 constraintGreaterThanOrEqualToConstant:UITableDefaultRowHeight];
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

- (void)_stepperChanged:(id)a3
{
  [(ASTStepperCell *)self _updateLabel];
  v4 = [(ASTStepperCell *)self stepperDelegate];
  [v4 stepperCellCountChanged:self];
}

- (ASTStepperCellDelegate)stepperDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperDelegate);

  return WeakRetained;
}

@end