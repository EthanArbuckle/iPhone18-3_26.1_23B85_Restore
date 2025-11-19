@interface CHWorkoutDetailPaceTableViewCell
+ (double)preferredHeightForWorkout:(id)a3;
+ (id)_paceFormats;
- (CHWorkoutDetailPaceSelectionDelegate)paceSelectionDelegate;
- (CHWorkoutDetailPaceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_createLabels;
- (void)_createSegmentedControl;
- (void)_createSeparator;
- (void)_segmentedControlValueDidChange:(id)a3;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5;
- (void)setSelectedPaceFormat:(int64_t)a3;
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

+ (double)preferredHeightForWorkout:(id)a3
{
  v3 = [a3 workoutActivityType];
  result = 74.0;
  if (v3 == 46)
  {
    return 116.0;
  }

  return result;
}

- (CHWorkoutDetailPaceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = CHWorkoutDetailPaceTableViewCell;
  v4 = [(CHWorkoutDetailPaceTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CHWorkoutDetailPaceTableViewCell *)v4 setBackgroundColor:v5];

    [(CHWorkoutDetailPaceTableViewCell *)v4 _createSeparator];
    [(CHWorkoutDetailPaceTableViewCell *)v4 _createLabels];
    v6 = [(CHWorkoutDetailPaceTableViewCell *)v4 contentView];
    v7 = [v6 heightAnchor];
    [objc_opt_class() preferredHeightForWorkout:0];
    v8 = [v7 constraintEqualToConstant:?];

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

  v9 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [v9 addSubview:self->_titleLabel];

  v10 = [(UILabel *)self->_titleLabel leadingAnchor];
  v11 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:sub_1000B7B88()];

  v14 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v15 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  v16 = [v15 topAnchor];
  v17 = [(UILabel *)self->_titleLabel font];
  [v17 _scaledValueForValue:28.0];
  v18 = [v14 constraintGreaterThanOrEqualToAnchor:v16 constant:?];

  v19 = [UIFont fu_mediumSausageFontOfSize:30.0];
  v20 = objc_alloc_init(UILabel);
  valueLabel = self->_valueLabel;
  self->_valueLabel = v20;

  [(UILabel *)self->_valueLabel setFont:v19];
  [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = +[ARUIMetricColors paceColors];
  v23 = [v22 nonGradientTextColor];
  [(UILabel *)self->_valueLabel setTextColor:v23];

  v24 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [v24 addSubview:self->_valueLabel];

  v25 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [v25 bringSubviewToFront:self->_titleLabel];

  v26 = [(UILabel *)self->_valueLabel leadingAnchor];
  v27 = [(UILabel *)self->_titleLabel leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  v29 = [(UILabel *)self->_valueLabel firstBaselineAnchor];
  v30 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:30.0];

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
    v34 = [objc_opt_class() _paceFormats];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000A8678;
    v35[3] = &unk_10083A6E8;
    v35[4] = self;
    v3 = objc_retainBlock(v35);
    v4 = [UISegmentedControl alloc];
    v5 = [v34 objectAtIndexedSubscript:0];
    v6 = (v3[2])(v3, v5);
    v37[0] = v6;
    v7 = [v34 objectAtIndexedSubscript:1];
    v33 = v3;
    v8 = (v3[2])(v3, v7);
    v37[1] = v8;
    v9 = [v34 objectAtIndexedSubscript:2];
    v10 = (v3[2])(v3, v9);
    v37[2] = v10;
    v11 = [NSArray arrayWithObjects:v37 count:3];
    v12 = [v4 initWithItems:v11];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v12;

    [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[ARUIMetricColors paceColors];
    v15 = [v14 nonGradientTextColor];
    [(UISegmentedControl *)self->_segmentedControl setTintColor:v15];

    v16 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    [v16 addSubview:self->_segmentedControl];

    [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
    [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"_segmentedControlValueDidChange:" forControlEvents:4096];
    v17 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    v18 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:sub_1000B7B88()];

    v21 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    v22 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:-sub_1000B7B88()];

    v25 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
    v26 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
    v27 = [v26 topAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:14.0];

    v29 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v30 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:28.0];

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
  v6 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  [v6 addSubview:self->_separatorView];

  v7 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  v8 = [v7 heightAnchor];
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = [v8 constraintEqualToConstant:1.0 / v10];

  v12 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  v13 = [v12 leadingAnchor];
  v14 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:sub_1000B7B88()];

  v17 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  v18 = [v17 trailingAnchor];
  v19 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];

  v22 = [(CHWorkoutDetailPaceTableViewCell *)self separatorView];
  v23 = [v22 topAnchor];
  v24 = [(CHWorkoutDetailPaceTableViewCell *)self contentView];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  v28[0] = v11;
  v28[1] = v16;
  v28[2] = v21;
  v28[3] = v26;
  v27 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 workoutConfiguration];
    v12 = [v11 activityType];

    v13 = v9;
  }

  else
  {
    v12 = [v8 workoutActivityType];
    v13 = v8;
  }

  v14 = [v13 fiui_activityType];
  if (v12 == 46)
  {
    objc_initWeak(&location, self);
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_1000A8DAC;
    v37 = &unk_10083A738;
    objc_copyWeak(&v38, &location);
    [v10 swimmingSplitsForWorkout:v8 workoutActivity:v9 completion:&v34];
    v15 = [NSBundle mainBundle:v34];
    v16 = [v15 localizedStringForKey:@"WORKOUT_SWIM_PACE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    v17 = [(CHWorkoutDetailPaceTableViewCell *)self titleLabel];
    [v17 setText:v16];

    [(CHWorkoutDetailPaceTableViewCell *)self _createSegmentedControl];
    v18 = [(CHWorkoutDetailPaceTableViewCell *)self segControlToBaselineConstraint];
    [v18 setActive:1];

    v19 = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
    [v19 setHidden:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = [(CHWorkoutDetailPaceTableViewCell *)self formattingManager];
    v21 = [v20 formattedPaceOrSpeedForWorkout:v8 workoutActivity:v9 context:@"WorkoutDetailDisplayContext"];

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
    v27 = [(CHWorkoutDetailPaceTableViewCell *)self titleLabel];
    [v27 setText:v26];

    v28 = [(CHWorkoutDetailPaceTableViewCell *)self valueLabel];
    [v28 setAttributedText:v21];

    v29 = [(CHWorkoutDetailPaceTableViewCell *)self segControlToBaselineConstraint];
    [v29 setActive:0];

    v30 = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
    [v30 setHidden:1];
  }

  [objc_opt_class() preferredHeightForWorkout:v8];
  v32 = v31;
  v33 = [(CHWorkoutDetailPaceTableViewCell *)self heightConstraint];
  [v33 setConstant:v32];
}

- (void)setSelectedPaceFormat:(int64_t)a3
{
  self->_selectedPaceFormat = a3;
  v5 = [objc_opt_class() _paceFormats];
  v6 = UICollectionViewCompositionalLayout_ptr;
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [v5 indexOfObject:v7];

  v9 = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
  v10 = [v9 selectedSegmentIndex];

  if (v10 != v8)
  {
    v11 = [(CHWorkoutDetailPaceTableViewCell *)self segmentedControl];
    [v11 setSelectedSegmentIndex:v8];
  }

  v12 = [(CHWorkoutDetailPaceTableViewCell *)self splitsDictionary];
  v13 = [NSNumber numberWithInteger:a3];
  v14 = [v12 objectForKeyedSubscript:v13];

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
    v27 = [(CHWorkoutDetailPaceTableViewCell *)self formattingManager];
    v28 = [v27 fitnessUIFormattingManager];
    v29 = [v28 stringWithDuration:1 durationFormat:v26];

    v30 = [v6[214] numberWithInteger:v25];
    v31 = [FIUIFormattingManager stringWithNumber:v30 decimalPrecision:1];

    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"WORKOUT_SWIM_PACE_STROKECOUNT_FORMAT" value:&stru_1008680E8 table:@"Localizable"];
    v34 = [NSString stringWithFormat:v33, v29, v31, v37];
    v35 = [(CHWorkoutDetailPaceTableViewCell *)self valueLabel];
    [v35 setText:v34];
  }

  v36 = [(CHWorkoutDetailPaceTableViewCell *)self paceSelectionDelegate];
  [v36 paceCell:self didSelectNewPaceFormat:a3];
}

- (void)_segmentedControlValueDidChange:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _paceFormats];
  v6 = [v4 selectedSegmentIndex];

  v7 = [v5 objectAtIndex:v6];
  v8 = [v7 integerValue];

  [(CHWorkoutDetailPaceTableViewCell *)self setSelectedPaceFormat:v8];
}

- (CHWorkoutDetailPaceSelectionDelegate)paceSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paceSelectionDelegate);

  return WeakRetained;
}

@end