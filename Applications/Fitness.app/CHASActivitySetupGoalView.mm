@interface CHASActivitySetupGoalView
- (CGSize)intrinsicContentSize;
- (CHASActivitySetupGoalView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (CHASActivitySetupGoalViewDelegate)delegate;
- (void)_fitGoalLabel;
- (void)_formatGoalLabel;
- (void)_updateGoalLabelWithGoal:(id)goal;
- (void)buttonControllerDidUpdate;
- (void)layoutSubviews;
- (void)setGoal:(id)goal;
@end

@implementation CHASActivitySetupGoalView

- (CHASActivitySetupGoalView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v44.receiver = self;
  v44.super_class = CHASActivitySetupGoalView;
  height = [(CHASActivitySetupGoalView *)&v44 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
    v13 = objc_alloc_init(UILabel);
    goalLabel = v12->_goalLabel;
    v12->_goalLabel = v13;

    [(UILabel *)v12->_goalLabel setTextAlignment:1];
    v15 = +[UIColor whiteColor];
    [(UILabel *)v12->_goalLabel setTextColor:v15];

    v16 = v12->_goalLabel;
    v17 = [UIFont systemFontOfSize:UIFontSystemFontDesignRounded weight:72.0 design:UIFontWeightSemibold];
    fu_monospacedFont = [v17 fu_monospacedFont];
    [(UILabel *)v16 setFont:fu_monospacedFont];

    [(UILabel *)v12->_goalLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v12->_goalLabel setText:@"300"];
    v19 = objc_alloc_init(UILabel);
    unitLabel = v12->_unitLabel;
    v12->_unitLabel = v19;

    goalColor = [configurationCopy goalColor];
    [(UILabel *)v12->_unitLabel setTextColor:goalColor];

    [(UILabel *)v12->_unitLabel setTextAlignment:1];
    v40 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:2 options:1];
    v39 = [UIFont fontWithDescriptor:0.0 size:?];
    [(UILabel *)v12->_unitLabel setFont:?];
    v22 = [UIImageSymbolConfiguration configurationWithPointSize:48.0];
    v23 = [UIImage _systemImageNamed:@"minus.circle.fill" withConfiguration:v22];
    goalColor2 = [configurationCopy goalColor];
    v25 = [v23 imageWithTintColor:goalColor2 renderingMode:1];

    v26 = [UIButton buttonWithType:0];
    minusButton = v12->_minusButton;
    v12->_minusButton = v26;

    [(UIButton *)v12->_minusButton setImage:v25 forState:0];
    v38 = v22;
    v28 = [UIImage _systemImageNamed:@"plus.circle.fill" withConfiguration:v22];
    goalColor3 = [configurationCopy goalColor];
    v30 = [v28 imageWithTintColor:goalColor3 renderingMode:1];

    v31 = [UIButton buttonWithType:0];
    plusButton = v12->_plusButton;
    v12->_plusButton = v31;

    [(UIButton *)v12->_plusButton setImage:v30 forState:0];
    [(CHASActivitySetupGoalView *)v12 addSubview:v12->_minusButton];
    [(CHASActivitySetupGoalView *)v12 addSubview:v12->_goalLabel];
    v33 = v12->_unitLabel;
    v34 = +[UIColor whiteColor];
    [(UILabel *)v33 setTextColor:v34];

    [(CHASActivitySetupGoalView *)v12 addSubview:v12->_unitLabel];
    [(CHASActivitySetupGoalView *)v12 addSubview:v12->_plusButton];
    v35 = objc_alloc_init(FIUIValueAdjustmentButtonController);
    buttonController = v12->_buttonController;
    v12->_buttonController = v35;

    [(FIUIValueAdjustmentButtonController *)v12->_buttonController setIncrementButton:v12->_plusButton decrementButton:v12->_minusButton];
    [configurationCopy minimumValue];
    [(FIUIValueAdjustmentButtonController *)v12->_buttonController setMinValue:?];
    [configurationCopy maximumValue];
    [(FIUIValueAdjustmentButtonController *)v12->_buttonController setMaxValue:?];
    [configurationCopy valueIncrement];
    [(FIUIValueAdjustmentButtonController *)v12->_buttonController setMinumumStepValueIncrement:?];
    [configurationCopy valueIncrement];
    [(FIUIValueAdjustmentButtonController *)v12->_buttonController setValueStepIncremement:?];
    objc_initWeak(&location, v12);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E896C;
    v41[3] = &unk_10083A710;
    objc_copyWeak(&v42, &location);
    [(FIUIValueAdjustmentButtonController *)v12->_buttonController setValueUpdateHandler:v41];
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CHASActivitySetupGoalView;
  [(CHASActivitySetupGoalView *)&v14 layoutSubviews];
  [(CHASActivitySetupGoalView *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (!CGRectIsEmpty(v15))
  {
    [(CHASActivitySetupGoalViewConfiguration *)self->_configuration unitTextYOffset];
    v8 = v7;
    [(UIButton *)self->_minusButton sizeToFit];
    [(UIButton *)self->_plusButton sizeToFit];
    [(CHASActivitySetupGoalView *)self _fitGoalLabel];
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v9 = CGRectGetMaxX(v16) + -32.0;
    [(UIButton *)self->_plusButton frame];
    v10 = v9 - CGRectGetWidth(v17) * 0.5;
    [(UILabel *)self->_goalLabel center];
    [(UIButton *)self->_plusButton setCenter:v10];
    [(UIButton *)self->_minusButton frame];
    v11 = CGRectGetWidth(v18) * 0.5 + 32.0;
    [(UILabel *)self->_goalLabel center];
    [(UIButton *)self->_minusButton setCenter:v11];
    [(UIButton *)self->_plusButton frame];
    FIUIDeviceScale();
    UIRectIntegralWithScale();
    [(UIButton *)self->_plusButton setFrame:?];
    [(UIButton *)self->_minusButton frame];
    FIUIDeviceScale();
    UIRectIntegralWithScale();
    [(UIButton *)self->_minusButton setFrame:?];
    [(UILabel *)self->_unitLabel sizeToFit];
    [(UILabel *)self->_unitLabel frame];
    [(CHASActivitySetupGoalView *)self frame];
    FIUIDeviceScale();
    UIRectIntegralWithScale();
    [(UILabel *)self->_unitLabel setFrame:?];
    unitLabel = self->_unitLabel;
    [(UILabel *)self->_goalLabel frame];
    MidX = CGRectGetMidX(v19);
    [(UILabel *)self->_goalLabel frame];
    [(UILabel *)unitLabel setCenter:MidX, v8 + CGRectGetMaxY(v20)];
  }
}

- (void)_fitGoalLabel
{
  [(CHASActivitySetupGoalView *)self _formatGoalLabel];
  if (self->_shouldUpdateValueLabel)
  {
    [(UIButton *)self->_minusButton frame];
    MaxX = CGRectGetMaxX(v9);
    [(UILabel *)self->_goalLabel frame];
    if (MaxX <= CGRectGetMinX(v10) && ([(UILabel *)self->_goalLabel frame], v4 = CGRectGetMaxX(v11), [(UIButton *)self->_plusButton frame], v4 <= CGRectGetMinX(v12)))
    {
      v5 = 72.0;
    }

    else
    {
      v5 = 54.0;
    }

    goalLabel = self->_goalLabel;
    v7 = [UIFont systemFontOfSize:UIFontSystemFontDesignRounded weight:v5 design:UIFontWeightSemibold];
    [(UILabel *)goalLabel setFont:v7];

    [(CHASActivitySetupGoalView *)self _formatGoalLabel];
  }
}

- (void)_formatGoalLabel
{
  [(UILabel *)self->_goalLabel sizeToFit];
  goalLabel = self->_goalLabel;
  [(CHASActivitySetupGoalView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(CHASActivitySetupGoalView *)self bounds];
  [(UILabel *)goalLabel setCenter:MidX, CGRectGetMidY(v8)];
  [(UILabel *)self->_goalLabel frame];
  CGRectGetMinX(v9);
  [(UILabel *)self->_goalLabel frame];
  CGRectGetWidth(v10);
  [(UILabel *)self->_goalLabel frame];
  CGRectGetHeight(v11);
  FIUIDeviceScale();
  UIRectIntegralWithScale();
  v5 = self->_goalLabel;

  [(UILabel *)v5 setFrame:?];
}

- (void)buttonControllerDidUpdate
{
  unit = [(CHASActivitySetupGoalViewConfiguration *)self->_configuration unit];
  [(FIUIValueAdjustmentButtonController *)self->_buttonController value];
  v4 = [HKQuantity quantityWithUnit:unit doubleValue:?];
  dailyGoal = self->_dailyGoal;
  self->_dailyGoal = v4;

  [(CHASActivitySetupGoalView *)self _updateGoalLabelWithGoal:self->_dailyGoal];
  delegate = [(CHASActivitySetupGoalView *)self delegate];
  [delegate setupGoalViewValueChanged:self value:self->_dailyGoal];
}

- (void)_updateGoalLabelWithGoal:(id)goal
{
  goalCopy = goal;
  goalValueStringFormatter = [(CHASActivitySetupGoalViewConfiguration *)self->_configuration goalValueStringFormatter];
  v5 = (goalValueStringFormatter)[2](goalValueStringFormatter, goalCopy);

  [(UILabel *)self->_goalLabel setText:v5];
  unit = [(CHASActivitySetupGoalViewConfiguration *)self->_configuration unit];
  [goalCopy doubleValueForUnit:unit];
  v8 = v7;

  v9 = [NSString stringWithFormat:@"%ld", v8];
  v10 = [v9 length];

  if (v10 == self->_valueLabelSizeLength)
  {
    self->_shouldUpdateValueLabel = 0;
  }

  else
  {
    self->_valueLabelSizeLength = v10;
    self->_shouldUpdateValueLabel = 1;
    [(CHASActivitySetupGoalView *)self setNeedsLayout];
  }

  goalUnitStringFormatter = [(CHASActivitySetupGoalViewConfiguration *)self->_configuration goalUnitStringFormatter];
  v12 = (goalUnitStringFormatter)[2](goalUnitStringFormatter, goalCopy);
  [(UILabel *)self->_unitLabel setText:v12];
}

- (void)setGoal:(id)goal
{
  objc_storeStrong(&self->_dailyGoal, goal);
  goalCopy = goal;
  buttonController = self->_buttonController;
  unit = [(CHASActivitySetupGoalViewConfiguration *)self->_configuration unit];
  [goalCopy doubleValueForUnit:unit];
  [(FIUIValueAdjustmentButtonController *)buttonController setValue:round(v7)];

  [(CHASActivitySetupGoalView *)self _updateGoalLabelWithGoal:goalCopy];
}

- (CGSize)intrinsicContentSize
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(UILabel *)self->_goalLabel _systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:v6, v7];
  v9 = v8 + 0.0;
  LODWORD(v10) = 1148846080;
  LODWORD(v11) = 1112014848;
  [(UILabel *)self->_unitLabel _systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:v10, v11];
  v13 = v9 + v12;
  [(CHASActivitySetupGoalViewConfiguration *)self->_configuration unitTextYOffset];
  v15 = v13 + v14;
  v16 = UIViewNoIntrinsicMetric;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CHASActivitySetupGoalViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end