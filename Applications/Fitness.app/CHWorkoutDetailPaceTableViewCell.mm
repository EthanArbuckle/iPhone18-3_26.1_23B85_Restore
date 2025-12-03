@interface CHWorkoutDetailPaceTableViewCell
+ (double)preferredHeightForWorkout:(id)workout;
+ (id)_paceFormats;
- (CHWorkoutDetailPaceSelectionDelegate)paceSelectionDelegate;
- (CHWorkoutDetailPaceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_createLabels;
- (void)_createSegmentedControl;
- (void)_createSeparator;
- (void)_segmentedControlValueDidChange:(id)change;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator;
- (void)setSelectedPaceFormat:(int64_t)format;
@end

@implementation CHWorkoutDetailPaceTableViewCell

+ (id)_paceFormats
{
  if (qword_1008F98D8 != -1)
  {
    sub_10069B400();
  }

  v3 = qword_1008F98D0;

  return v3;
}

+ (double)preferredHeightForWorkout:(id)workout
{
  workoutActivityType = [workout workoutActivityType];
  result = 74.0;
  if (workoutActivityType == 46)
  {
    return 116.0;
  }

  return result;
}

- (CHWorkoutDetailPaceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CHWorkoutDetailPaceTableViewCell;
  v4 = [(CHWorkoutDetailPaceTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CHWorkoutDetailPaceTableViewCell *)v4 setBackgroundColor:v5];

    [(CHWorkoutDetailPaceTableViewCell *)v4 _createSeparator];
    [(CHWorkoutDetailPaceTableViewCell *)v4 _createLabels];
    contentView = [(CHWorkoutDetailPaceTableViewCell *)v4 contentView];
    heightAnchor = [contentView heightAnchor];
    [objc_opt_class() preferredHeightForWorkout:0];
    v8 = [heightAnchor constraintEqualToConstant:?];

    LODWORD(v9) = 1148829696;
    [v8 setPriority:v9];
    [v8 setActive:1];
    [(CHWorkoutDetailPaceTableViewCell *)v4 setHeightConstraint:v8];
  }

  return v4;
}

- (void)_createLabels
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"WORKOUT_PACE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(UILabel *)self->_titleLabel setText:v6];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_titleLabel setFont:v7];

  v8 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v8];

  contentView = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView2 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_1000B7B88()];

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView3 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  font = [(UILabel *)self->_titleLabel font];
  [font _scaledValueForValue:28.0];
  v18 = [firstBaselineAnchor constraintGreaterThanOrEqualToAnchor:topAnchor constant:?];

  v19 = [UIFont fu_mediumSausageFontOfSize:30.0];
  v20 = objc_alloc_init(UILabel);
  valueLabel = self->_valueLabel;
  self->_valueLabel = v20;

  [(UILabel *)self->_valueLabel setFont:v19];
  [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = +[ARUIMetricColors paceColors];
  nonGradientTextColor = [v22 nonGradientTextColor];
  [(UILabel *)self->_valueLabel setTextColor:nonGradientTextColor];

  contentView4 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [contentView4 addSubview:self->_valueLabel];

  contentView5 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [contentView5 bringSubviewToFront:self->_titleLabel];

  leadingAnchor3 = [(UILabel *)self->_valueLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  firstBaselineAnchor2 = [(UILabel *)self->_valueLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v31 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:30.0];

  v33[0] = v13;
  v33[1] = v18;
  v33[2] = v28;
  v33[3] = v31;
  v32 = [NSArray arrayWithObjects:v33 count:4];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)_createSegmentedControl
{
  if (!self->_segmentedControl)
  {
    _paceFormats = [objc_opt_class() _paceFormats];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000A8678;
    v35[3] = &unk_10083A6E8;
    v35[4] = self;
    v3 = objc_retainBlock(v35);
    v4 = [UISegmentedControl alloc];
    v5 = [_paceFormats objectAtIndexedSubscript:0];
    v6 = (v3[2])(v3, v5);
    v37[0] = v6;
    v7 = [_paceFormats objectAtIndexedSubscript:1];
    v33 = v3;
    v8 = (v3[2])(v3, v7);
    v37[1] = v8;
    v9 = [_paceFormats objectAtIndexedSubscript:2];
    v10 = (v3[2])(v3, v9);
    v37[2] = v10;
    v11 = [NSArray arrayWithObjects:v37 count:3];
    v12 = [v4 initWithItems:v11];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v12;

    [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[ARUIMetricColors paceColors];
    nonGradientTextColor = [v14 nonGradientTextColor];
    [(UISegmentedControl *)self->_segmentedControl setTintColor:nonGradientTextColor];

    contentView = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    [contentView addSubview:self->_segmentedControl];

    [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
    [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"_segmentedControlValueDidChange:" forControlEvents:4096];
    leadingAnchor = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    contentView2 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_1000B7B88()];

    trailingAnchor = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    contentView3 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-sub_1000B7B88()];

    topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
    contentView4 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];

    firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    bottomAnchor = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v31 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:28.0];

    [(CHWorkoutDetailPaceTableViewCell *)self setSegControlToBaselineConstraint:v31];
    v36[0] = v20;
    v36[1] = v24;
    v36[2] = v28;
    v36[3] = v31;
    v32 = [NSArray arrayWithObjects:v36 count:4];
    [NSLayoutConstraint activateConstraints:v32];
  }
}

- (void)_createSeparator
{
  v3 = objc_alloc_init(UIView);
  separatorView = self->_separatorView;
  self->_separatorView = v3;

  v5 = +[UIColor separatorColor];
  [(UIView *)self->_separatorView setBackgroundColor:v5];

  [(UIView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [contentView addSubview:self->_separatorView];

  separatorView = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  heightAnchor = [separatorView heightAnchor];
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = [heightAnchor constraintEqualToConstant:1.0 / v10];

  separatorView2 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  leadingAnchor = [separatorView2 leadingAnchor];
  contentView2 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_1000B7B88()];

  separatorView3 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  trailingAnchor = [separatorView3 trailingAnchor];
  contentView3 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  separatorView4 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  topAnchor = [separatorView4 topAnchor];
  contentView4 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];

  v28[0] = v11;
  v28[1] = v16;
  v28[2] = v21;
  v28[3] = v26;
  v27 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator
{
  workoutCopy = workout;
  activityCopy = activity;
  calculatorCopy = calculator;
  if (activityCopy)
  {
    workoutConfiguration = [activityCopy workoutConfiguration];
    activityType = [workoutConfiguration activityType];

    v13 = activityCopy;
  }

  else
  {
    activityType = [workoutCopy workoutActivityType];
    v13 = workoutCopy;
  }

  fiui_activityType = [v13 fiui_activityType];
  if (activityType == 46)
  {
    objc_initWeak(&location, self);
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_1000A8DAC;
    v37 = &unk_10083A738;
    objc_copyWeak(&v38, &location);
    [calculatorCopy swimmingSplitsForWorkout:workoutCopy workoutActivity:activityCopy completion:&v34];
    v15 = [NSBundle mainBundle:v34];
    v16 = [v15 localizedStringForKey:@"WORKOUT_SWIM_PACE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    titleLabel = [(CHWorkoutDetailPaceTableViewCell *)self titleLabel];
    [titleLabel setText:v16];

    [(CHWorkoutDetailPaceTableViewCell *)self _createSegmentedControl];
    segControlToBaselineConstraint = [(CHWorkoutDetailPaceTableViewCell *)self segControlToBaselineConstraint];
    [segControlToBaselineConstraint setActive:1];

    segmentedControl = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
    [segmentedControl setHidden:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    formattingManager = [(CHWorkoutDetailPaceTableViewCell *)self formattingManager];
    v21 = [formattingManager formattedPaceOrSpeedForWorkout:workoutCopy workoutActivity:activityCopy context:@"WorkoutDetailDisplayContext"];

    v22 = FIUIPaceFormatForWorkoutActivityType();
    v23 = +[NSBundle mainBundle];
    v24 = v23;
    if (v22 == 4)
    {
      v25 = @"WORKOUT_SPEED_TITLE";
    }

    else
    {
      v25 = @"WORKOUT_PACE_TITLE";
    }

    v26 = [v23 localizedStringForKey:v25 value:&stru_1008680E8 table:@"Localizable"];
    titleLabel2 = [(CHWorkoutDetailPaceTableViewCell *)self titleLabel];
    [titleLabel2 setText:v26];

    valueLabel = [(CHWorkoutDetailPaceTableViewCell *)self valueLabel];
    [valueLabel setAttributedText:v21];

    segControlToBaselineConstraint2 = [(CHWorkoutDetailPaceTableViewCell *)self segControlToBaselineConstraint];
    [segControlToBaselineConstraint2 setActive:0];

    segmentedControl2 = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
    [segmentedControl2 setHidden:1];
  }

  [objc_opt_class() preferredHeightForWorkout:workoutCopy];
  v32 = v31;
  heightConstraint = [(CHWorkoutDetailPaceTableViewCell *)self heightConstraint];
  [heightConstraint setConstant:v32];
}

- (void)setSelectedPaceFormat:(int64_t)format
{
  self->_selectedPaceFormat = format;
  _paceFormats = [objc_opt_class() _paceFormats];
  v6 = UICollectionViewCompositionalLayout_ptr;
  v7 = [NSNumber numberWithInteger:format];
  v8 = [_paceFormats indexOfObject:v7];

  segmentedControl = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex != v8)
  {
    segmentedControl2 = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
    [segmentedControl2 setSelectedSegmentIndex:v8];
  }

  splitsDictionary = [(CHWorkoutDetailPaceTableViewCell *)self splitsDictionary];
  v13 = [NSNumber numberWithInteger:format];
  v14 = [splitsDictionary objectForKeyedSubscript:v13];

  if ([v14 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v38;
      v20 = 0.0;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          [v22 durationScaledToFillSplit];
          v20 = v20 + v23;
          v18 += [v22 strokeCountScaledToFillSplit];
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
      v24 = v18;
      v6 = UICollectionViewCompositionalLayout_ptr;
    }

    else
    {
      v24 = 0.0;
      v20 = 0.0;
    }

    v25 = llround(v24 / [v15 count]);
    v26 = v20 / [v15 count];
    formattingManager = [(CHWorkoutDetailPaceTableViewCell *)self formattingManager];
    fitnessUIFormattingManager = [formattingManager fitnessUIFormattingManager];
    v29 = [fitnessUIFormattingManager stringWithDuration:1 durationFormat:v26];

    v30 = [v6[214] numberWithInteger:v25];
    v31 = [FIUIFormattingManager stringWithNumber:v30 decimalPrecision:1];

    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"WORKOUT_SWIM_PACE_STROKECOUNT_FORMAT" value:&stru_1008680E8 table:@"Localizable"];
    v34 = [NSString stringWithFormat:v33, v29, v31, v37];
    valueLabel = [(CHWorkoutDetailPaceTableViewCell *)self valueLabel];
    [valueLabel setText:v34];
  }

  paceSelectionDelegate = [(CHWorkoutDetailPaceTableViewCell *)self paceSelectionDelegate];
  [paceSelectionDelegate paceCell:self didSelectNewPaceFormat:format];
}

- (void)_segmentedControlValueDidChange:(id)change
{
  changeCopy = change;
  _paceFormats = [objc_opt_class() _paceFormats];
  selectedSegmentIndex = [changeCopy selectedSegmentIndex];

  v7 = [_paceFormats objectAtIndex:selectedSegmentIndex];
  integerValue = [v7 integerValue];

  [(CHWorkoutDetailPaceTableViewCell *)self setSelectedPaceFormat:integerValue];
}

- (CHWorkoutDetailPaceSelectionDelegate)paceSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paceSelectionDelegate);

  return WeakRetained;
}

@end