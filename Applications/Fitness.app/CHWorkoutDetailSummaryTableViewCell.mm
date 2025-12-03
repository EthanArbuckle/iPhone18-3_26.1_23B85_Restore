@interface CHWorkoutDetailSummaryTableViewCell
+ (double)preferredHeightForWorkout:(id)workout;
+ (id)_geocoder;
+ (id)_locationArrowImage;
- (BOOL)_workoutIsThirdParty:(id)party;
- (CHWorkoutDetailSummaryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_constrainViews;
- (void)_navigateToSeymourWorkout;
- (void)_treatAsFirstPartyWorkout:(id)workout workoutActivity:(id)activity formattingManager:(id)manager;
- (void)setLocation:(id)location completion:(id)completion;
- (void)setSwimDistanceByStrokeStyle:(id)style;
- (void)summaryConfigureWithWorkout:(id)workout workoutActivity:(id)activity fitnessAppContext:(id)context catalogItemViewModel:(id)model formattingManager:(id)manager resizeBlock:(id)block;
@end

@implementation CHWorkoutDetailSummaryTableViewCell

+ (double)preferredHeightForWorkout:(id)workout
{
  workoutCopy = workout;
  _goalType = [workoutCopy _goalType];
  workoutActivityType = [workoutCopy workoutActivityType];

  if (_goalType)
  {
    v6 = 1;
  }

  else
  {
    v6 = workoutActivityType == 46;
  }

  result = 184.0;
  if (!v6)
  {
    return 128.0;
  }

  return result;
}

+ (id)_geocoder
{
  if (qword_1008F9B08 != -1)
  {
    sub_10069CB44();
  }

  v3 = qword_1008F9B00;

  return v3;
}

+ (id)_locationArrowImage
{
  if (qword_1008F9B18 != -1)
  {
    sub_10069CB58();
  }

  v3 = qword_1008F9B10;

  return v3;
}

- (CHWorkoutDetailSummaryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v65.receiver = self;
  v65.super_class = CHWorkoutDetailSummaryTableViewCell;
  v4 = [(CHWorkoutDetailSummaryTableViewCell *)&v65 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CHWorkoutDetailSummaryTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(UIImageView);
    ringImageView = v4->_ringImageView;
    v4->_ringImageView = v6;

    [(UIImageView *)v4->_ringImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(UIImageView *)v4->_ringImageView setContentCompressionResistancePriority:0 forAxis:v8];
    contentView = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_ringImageView];

    v10 = objc_alloc_init(UIImageView);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v10;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setUserInteractionEnabled:1];
    LODWORD(v12) = 1148846080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:0 forAxis:v12];
    contentView2 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_iconImageView];

    v14 = objc_alloc_init(UIImageView);
    workoutTypeIconImageView = v4->_workoutTypeIconImageView;
    v4->_workoutTypeIconImageView = v14;

    [(UIImageView *)v4->_workoutTypeIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_workoutTypeIconImageView];

    v17 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
    summaryContainer = v4->_summaryContainer;
    v4->_summaryContainer = v17;

    [(UIStackView *)v4->_summaryContainer setAxis:1];
    [(UIStackView *)v4->_summaryContainer setDistribution:3];
    [(UIStackView *)v4->_summaryContainer setAlignment:1];
    [(UIStackView *)v4->_summaryContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UIStackView *)v4->_summaryContainer setContentCompressionResistancePriority:1 forAxis:v19];
    contentView4 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_summaryContainer];

    v21 = objc_alloc_init(UILabel);
    workoutTypeLabel = v4->_workoutTypeLabel;
    v4->_workoutTypeLabel = v21;

    [(UILabel *)v4->_workoutTypeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_workoutTypeLabel setNumberOfLines:0];
    [(UILabel *)v4->_workoutTypeLabel setAllowsDefaultTighteningForTruncation:1];
    v23 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_workoutTypeLabel setFont:v23];

    v24 = +[UIColor labelColor];
    [(UILabel *)v4->_workoutTypeLabel setTextColor:v24];

    LODWORD(v25) = 1148846080;
    [(UILabel *)v4->_workoutTypeLabel setContentCompressionResistancePriority:1 forAxis:v25];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v4->_workoutTypeLabel];
    v26 = objc_alloc_init(UILabel);
    brandLabel = v4->_brandLabel;
    v4->_brandLabel = v26;

    [(UILabel *)v4->_brandLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_brandLabel setNumberOfLines:0];
    [(UILabel *)v4->_brandLabel setAllowsDefaultTighteningForTruncation:1];
    v28 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_brandLabel setFont:v28];

    v29 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_brandLabel setTextColor:v29];

    LODWORD(v30) = 1148846080;
    [(UILabel *)v4->_brandLabel setContentCompressionResistancePriority:1 forAxis:v30];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v4->_brandLabel];
    v31 = objc_alloc_init(UILabel);
    completionLabel = v4->_completionLabel;
    v4->_completionLabel = v31;

    [(UILabel *)v4->_completionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_completionLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v4->_completionLabel setNumberOfLines:0];
    v33 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_completionLabel setFont:v33];

    v34 = +[UIColor labelColor];
    [(UILabel *)v4->_completionLabel setTextColor:v34];

    LODWORD(v35) = 1148846080;
    [(UILabel *)v4->_completionLabel setContentCompressionResistancePriority:1 forAxis:v35];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v4->_completionLabel];
    v36 = [_CHWorkoutDetailTextSpacerView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(_CHWorkoutDetailTextSpacerView *)v36 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:height];
    v41 = objc_alloc_init(UILabel);
    swimmingDistanceByStrokeStyleLabel = v4->_swimmingDistanceByStrokeStyleLabel;
    v4->_swimmingDistanceByStrokeStyleLabel = v41;

    [(UILabel *)v4->_swimmingDistanceByStrokeStyleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_swimmingDistanceByStrokeStyleLabel setAllowsDefaultTighteningForTruncation:1];
    v43 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_swimmingDistanceByStrokeStyleLabel setFont:v43];

    v44 = +[UIColor labelColor];
    [(UILabel *)v4->_swimmingDistanceByStrokeStyleLabel setTextColor:v44];

    [(UILabel *)v4->_swimmingDistanceByStrokeStyleLabel setNumberOfLines:0];
    LODWORD(v45) = 1148846080;
    [(UILabel *)v4->_swimmingDistanceByStrokeStyleLabel setContentCompressionResistancePriority:1 forAxis:v45];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v4->_swimmingDistanceByStrokeStyleLabel];
    height2 = [[_CHWorkoutDetailTextSpacerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:height2];
    swimmingDistanceByStrokeStyleLabelTrailingSpacer = v4->_swimmingDistanceByStrokeStyleLabelTrailingSpacer;
    v4->_swimmingDistanceByStrokeStyleLabelTrailingSpacer = height2;
    v48 = height2;

    v49 = objc_alloc_init(UILabel);
    timeRangeLabel = v4->_timeRangeLabel;
    v4->_timeRangeLabel = v49;

    v51 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_timeRangeLabel setFont:v51];

    [(UILabel *)v4->_timeRangeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_timeRangeLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_timeRangeLabel setMinimumScaleFactor:0.8];
    v52 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_timeRangeLabel setTextColor:v52];

    LODWORD(v53) = 1148846080;
    [(UILabel *)v4->_timeRangeLabel setContentCompressionResistancePriority:1 forAxis:v53];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v4->_timeRangeLabel];
    v54 = objc_alloc_init(UILabel);
    locationLabel = v4->_locationLabel;
    v4->_locationLabel = v54;

    v56 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_locationLabel setFont:v56];

    [(UILabel *)v4->_locationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_locationLabel setTextColor:v57];

    LODWORD(v58) = 1148846080;
    [(UILabel *)v4->_locationLabel setContentCompressionResistancePriority:1 forAxis:v58];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v4->_locationLabel];
    v59 = objc_alloc_init(UIView);
    contentViewLayoutView = v4->_contentViewLayoutView;
    v4->_contentViewLayoutView = v59;

    [(UIView *)v4->_contentViewLayoutView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_contentViewLayoutView];

    v62 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"_navigateToSeymourWorkout"];
    contentView6 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [contentView6 addGestureRecognizer:v62];

    [(CHWorkoutDetailSummaryTableViewCell *)v4 _constrainViews];
  }

  return v4;
}

- (void)summaryConfigureWithWorkout:(id)workout workoutActivity:(id)activity fitnessAppContext:(id)context catalogItemViewModel:(id)model formattingManager:(id)manager resizeBlock:(id)block
{
  workoutCopy = workout;
  activityCopy = activity;
  contextCopy = context;
  modelCopy = model;
  managerCopy = manager;
  blockCopy = block;
  objc_storeStrong(&self->_currentWorkout, workout);
  objc_storeStrong(&self->_currentWorkoutActivity, activity);
  objc_storeStrong(&self->_fitnessAppContext, context);
  objc_storeStrong(&self->_catalogItemViewModel, model);
  objc_storeWeak(&self->_formattingManager, managerCopy);
  v19 = [managerCopy formattedTypeForWorkout:workoutCopy workoutActivity:activityCopy context:@"WorkoutDetailDisplayContext"];
  [(UILabel *)self->_workoutTypeLabel setAttributedText:v19];

  v20 = [managerCopy formattedTimeRangeForWorkout:workoutCopy workoutActivity:activityCopy context:@"WorkoutDetailDisplayContext"];
  [(UILabel *)self->_timeRangeLabel setAttributedText:v20];

  fiui_connectedGymBrandName = [workoutCopy fiui_connectedGymBrandName];
  v41 = fiui_connectedGymBrandName;
  if (fiui_connectedGymBrandName)
  {
    [(UILabel *)self->_brandLabel setText:fiui_connectedGymBrandName];
  }

  else
  {
    [(UIStackView *)self->_summaryContainer removeArrangedSubview:self->_brandLabel];
  }

  isFirstPartyWorkout = [workoutCopy isFirstPartyWorkout];
  seymourCatalogItemDataProvider = [contextCopy seymourCatalogItemDataProvider];
  v24 = [seymourCatalogItemDataProvider isSeymourWorkout:workoutCopy];

  if ([workoutCopy fiui_isConnectedGymWorkout])
  {
    v25 = [managerCopy hasConnectedGymVendorIconForWorkout:workoutCopy];
    objc_initWeak(location, self);
    if (!(v24 & 1 | ((v25 & 1) == 0)))
    {
      [(UIImageView *)self->_ringImageView setHidden:1];
      [(UIImageView *)self->_workoutTypeIconImageView setHidden:1];
      [(UIImageView *)self->_iconImageView setHidden:0];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10011C62C;
      v49[3] = &unk_10083C298;
      v26 = &v50;
      objc_copyWeak(&v50, location);
      [managerCopy fetchIconImageForWorkout:workoutCopy context:@"WorkoutDetailDisplayContext" completion:v49];
      [(UILabel *)self->_completionLabel setHidden:1];
      goto LABEL_24;
    }
  }

  else
  {
    objc_initWeak(location, self);
  }

  if (((modelCopy != 0) & v24) == 1)
  {
    isSeymourPairedWorkout = [modelCopy isSeymourPairedWorkout];
    [(UIImageView *)self->_workoutTypeIconImageView setHidden:1];
    [(UIImageView *)self->_ringImageView setHidden:1];
    [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel setHidden:1];
    [(_CHWorkoutDetailTextSpacerView *)self->_swimmingDistanceByStrokeStyleLabelTrailingSpacer setHidden:1];
    layer = [(UIImageView *)self->_iconImageView layer];
    [layer setMasksToBounds:1];

    layer2 = [(UIImageView *)self->_iconImageView layer];
    v30 = layer2;
    v31 = 12.0;
    if (isSeymourPairedWorkout)
    {
      v31 = 10.0;
    }

    [layer2 setCornerRadius:v31];

    title = [modelCopy title];
    [(UILabel *)self->_workoutTypeLabel setAttributedText:title];

    subtitle = [modelCopy subtitle];
    [(UILabel *)self->_completionLabel setAttributedText:subtitle];

    seymourCatalogItemDataProvider2 = [*(&self->super.super.super.super.isa + v40) seymourCatalogItemDataProvider];
    if (isSeymourPairedWorkout)
    {
      v35 = 76.0;
    }

    else
    {
      v35 = 85.0;
    }

    if (isSeymourPairedWorkout)
    {
      v36 = 135.0;
    }

    else
    {
      v36 = 85.0;
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10011C698;
    v46[3] = &unk_10083CCF0;
    v26 = &v48;
    objc_copyWeak(&v48, location);
    v47 = blockCopy;
    [seymourCatalogItemDataProvider2 fetchCatalogArtworkForCatalogItemViewModel:modelCopy imageSize:v46 completion:{v36, v35}];
  }

  else
  {
    v37 = [workoutCopy isMultiSportWorkout] ^ 1;
    if (!activityCopy)
    {
      LOBYTE(v37) = 1;
    }

    if ((v37 & 1) == 0)
    {
      v38 = [managerCopy defaultCircularRingImageForContext:@"WorkoutDetailDisplayContext"];
      [(UIImageView *)self->_ringImageView setImage:v38];

      [(CHWorkoutDetailSummaryTableViewCell *)self _treatAsFirstPartyWorkout:workoutCopy workoutActivity:activityCopy formattingManager:managerCopy];
      goto LABEL_25;
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10011C73C;
    v44[3] = &unk_10083C298;
    v26 = &v45;
    objc_copyWeak(&v45, location);
    [managerCopy fetchIconImageForWorkout:workoutCopy context:@"WorkoutDetailDisplayContext" completion:v44];
    if (isFirstPartyWorkout)
    {
      [(CHWorkoutDetailSummaryTableViewCell *)self _treatAsFirstPartyWorkout:workoutCopy workoutActivity:activityCopy formattingManager:managerCopy];
    }
  }

LABEL_24:
  objc_destroyWeak(v26);
LABEL_25:
  if ([workoutCopy workoutActivityType] == 84)
  {
    [(UILabel *)self->_completionLabel setHidden:1];
  }

  v39 = [managerCopy locationForWorkout:workoutCopy workoutActivity:activityCopy];
  if (v39)
  {
    [(UILabel *)self->_locationLabel setText:@" "];
  }

  [(CHWorkoutDetailSummaryTableViewCell *)self setLocation:v39];
  [(CHWorkoutDetailSummaryTableViewCell *)self setLocation:v39 completion:0];
  [(CHWorkoutDetailSummaryTableViewCell *)self setNeedsLayout];

  objc_destroyWeak(location);
}

- (void)_navigateToSeymourWorkout
{
  seymourCatalogItemDataProvider = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  v4 = [seymourCatalogItemDataProvider isSeymourWorkout:self->_currentWorkout];

  if (v4)
  {
    fitnessAppContext = self->_fitnessAppContext;
    currentWorkout = self->_currentWorkout;

    [(CHFitnessAppContext *)fitnessAppContext navigateToWorkout:currentWorkout];
  }
}

- (void)_treatAsFirstPartyWorkout:(id)workout workoutActivity:(id)activity formattingManager:(id)manager
{
  workoutCopy = workout;
  activityCopy = activity;
  managerCopy = manager;
  v10 = [ARUIMetricColors metricColorsForWorkout:workoutCopy];
  nonGradientTextColor = [v10 nonGradientTextColor];

  [(UIImageView *)self->_ringImageView setHidden:0];
  if (activityCopy)
  {
    v12 = activityCopy;
  }

  else
  {
    v12 = workoutCopy;
  }

  fiui_activityType = [v12 fiui_activityType];
  fiui_isConnectedGymWorkout = [workoutCopy fiui_isConnectedGymWorkout];
  workoutTypeIconImageView = self->_workoutTypeIconImageView;
  v88 = fiui_activityType;
  if (fiui_isConnectedGymWorkout)
  {
    [(UIImageView *)workoutTypeIconImageView setHidden:1];
  }

  else
  {
    [(UIImageView *)workoutTypeIconImageView setHidden:0];
    v16 = FIUIStaticWorkoutIconImage();
    v17 = [v16 imageWithRenderingMode:2];

    [(UIImageView *)self->_workoutTypeIconImageView setImage:v17];
    [(UIImageView *)self->_workoutTypeIconImageView setTintColor:nonGradientTextColor];
  }

  [(UIImageView *)self->_iconImageView setHidden:1];
  v18 = [[NSAttributedString alloc] initWithString:&stru_1008680E8];
  v19 = &selRef_textViewWritingToolsWillBegin_;
  if (!activityCopy)
  {
    if ([workoutCopy wasUserEntered])
    {
      v85 = +[UIColor secondaryLabelColor];

      v20 = objc_alloc_init(NSMutableAttributedString);
      v21 = objc_alloc_init(NSTextAttachment);
      v83 = [UIImageSymbolConfiguration configurationWithScale:1];
      v22 = [UIImage systemImageNamed:@"list.clipboard" withConfiguration:v83];
      v23 = [v22 imageWithTintColor:v85];
      [v21 setImage:v23];

      v24 = [NSAttributedString attributedStringWithAttachment:v21];
      [v20 appendAttributedString:v24];

      v25 = [[NSAttributedString alloc] initWithString:@" "];
      [v20 appendAttributedString:v25];

      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"MANUALLY_LOGGED_WORKOUT_DETAIL" value:&stru_1008680E8 table:@"Localizable-Kahana"];
      formattedCreationDate = [workoutCopy formattedCreationDate];
      v29 = [NSString stringWithFormat:v27, formattedCreationDate];

      v30 = [[NSAttributedString alloc] initWithString:v29];
      [v20 appendAttributedString:v30];

      v19 = &selRef_textViewWritingToolsWillBegin_;
      v18 = v20;
      nonGradientTextColor = v85;
      goto LABEL_31;
    }

    v79 = [workoutCopy _goalType] - 1;
    fitnessUIFormattingManager = [managerCopy fitnessUIFormattingManager];
    v84 = [workoutCopy displayDetail:fitnessUIFormattingManager];

    font = [(UILabel *)self->_completionLabel font];
    fontDescriptor = [font fontDescriptor];
    v97 = UIFontDescriptorFeatureSettingsAttribute;
    v94[0] = UIFontFeatureTypeIdentifierKey;
    v94[1] = UIFontFeatureSelectorIdentifierKey;
    v95[0] = &off_10086E380;
    v95[1] = &off_10086E398;
    v33 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];
    v96 = v33;
    v34 = [NSArray arrayWithObjects:&v96 count:1];
    v98 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];

    v36 = v84;
    v81 = v35;
    v37 = [fontDescriptor fontDescriptorByAddingAttributes:v35];
    v82 = font;
    [font pointSize];
    v38 = [UIFont fontWithDescriptor:v37 size:?];
    v39 = v38;
    if (v79 <= 2 && v84)
    {
      v78 = v37;
      v80 = v38;
      localizedLowercaseString = [(__CFString *)v84 localizedLowercaseString];
      v41 = +[NSBundle mainBundle];
      v42 = [v41 localizedStringForKey:@"WORKOUT_SUMMARY_GOAL_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      if (localizedLowercaseString)
      {
        v43 = localizedLowercaseString;
      }

      else
      {
        v43 = &stru_1008680E8;
      }

      v44 = [NSString stringWithFormat:v42, v43];

      v45 = [[NSMutableAttributedString alloc] initWithString:v44];
      v46 = [v44 rangeOfString:localizedLowercaseString];
      if (v46 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = v46;
        v92 = NSFontAttributeName;
        v93 = v80;
        v77 = v47;
        v49 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        [v45 addAttributes:v49 range:{v48, v77}];
      }

      v50 = [v45 copy];

      v18 = localizedLowercaseString;
      v19 = &selRef_textViewWritingToolsWillBegin_;
      v36 = v84;
    }

    else
    {
      if (![workoutCopy isRaceWorkout])
      {
        v64 = [NSAttributedString alloc];
        if (v84)
        {
          v65 = v84;
        }

        else
        {
          v65 = &stru_1008680E8;
        }

        v50 = [v64 initWithString:v65];
        goto LABEL_30;
      }

      v78 = v37;
      v80 = v39;
      fitnessUIFormattingManager2 = [managerCopy fitnessUIFormattingManager];
      [workoutCopy raceWorkoutDisplayDistance];
      v53 = v52;
      fiui_activityType2 = [workoutCopy fiui_activityType];
      v55 = [fitnessUIFormattingManager2 localizedCompactGoalDescriptionForGoalType:1 goalValue:fiui_activityType2 activityType:v53];

      v36 = v84;
      v56 = [NSMutableAttributedString alloc];
      if (v84)
      {
        v57 = v84;
      }

      else
      {
        v57 = &stru_1008680E8;
      }

      v58 = [v56 initWithString:v57];
      v59 = [(__CFString *)v84 rangeOfString:v55];
      if (v59 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v61 = v59;
        v62 = v60;
        v90 = NSFontAttributeName;
        v91 = v80;
        v63 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        [v58 addAttributes:v63 range:{v61, v62}];

        v36 = v84;
      }

      v50 = [v58 copy];

      v18 = v55;
      v19 = &selRef_textViewWritingToolsWillBegin_;
    }

    v37 = v78;
    v39 = v80;
LABEL_30:

    v18 = v50;
  }

LABEL_31:
  v66 = v88;
  v67 = *(v19 + 656);
  [*(&self->super.super.super.super.isa + v67) setAttributedText:v18];
  [*(&self->super.super.super.super.isa + v67) setColor:nonGradientTextColor];
  if ([v88 identifier] == 46)
  {
    swimDistanceByStrokeStyle = [(CHWorkoutDetailSummaryTableViewCell *)self swimDistanceByStrokeStyle];

    if (swimDistanceByStrokeStyle)
    {
      v87 = v18;
      v69 = nonGradientTextColor;
      if (activityCopy)
      {
        v70 = v88;
        workoutConfiguration = [activityCopy workoutConfiguration];
        swimmingLocationType = [workoutConfiguration swimmingLocationType];
      }

      else
      {
        activityCopy = 0;
        v70 = v88;
        swimmingLocationType = [workoutCopy fi_swimmingLocationType];
      }

      swimDistanceByStrokeStyle2 = [(CHWorkoutDetailSummaryTableViewCell *)self swimDistanceByStrokeStyle];
      v74 = [managerCopy formattedDistanceByStrokeStyle:swimDistanceByStrokeStyle2 isPoolSwim:swimmingLocationType == 1 context:@"WorkoutDetailDisplayContext"];
      [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel setAttributedText:v74];

      attributedText = [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel attributedText];
      v76 = [attributedText length];

      v66 = v70;
      nonGradientTextColor = v69;
      v18 = v87;
      if (v76)
      {
        self->_shouldShowSubtypeLabel = 1;
      }
    }
  }

  [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel setHidden:!self->_shouldShowSubtypeLabel];
  [(_CHWorkoutDetailTextSpacerView *)self->_swimmingDistanceByStrokeStyleLabelTrailingSpacer setHidden:!self->_shouldShowSubtypeLabel];
}

- (void)setLocation:(id)location completion:(id)completion
{
  completionCopy = completion;
  if (location)
  {
    locationCopy = location;
    _geocoder = [objc_opt_class() _geocoder];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011D1B8;
    v9[3] = &unk_10083B328;
    v9[4] = self;
    v10 = completionCopy;
    [_geocoder reverseGeocodeLocation:locationCopy completionHandler:v9];
  }
}

- (void)setSwimDistanceByStrokeStyle:(id)style
{
  styleCopy = style;
  objc_storeStrong(&self->_swimDistanceByStrokeStyle, style);
  if (self->_currentWorkout)
  {
    WeakRetained = objc_loadWeakRetained(&self->_formattingManager);

    if (WeakRetained)
    {
      currentWorkout = self->_currentWorkout;
      currentWorkoutActivity = self->_currentWorkoutActivity;
      fitnessAppContext = self->_fitnessAppContext;
      catalogItemViewModel = self->_catalogItemViewModel;
      v10 = objc_loadWeakRetained(&self->_formattingManager);
      [(CHWorkoutDetailSummaryTableViewCell *)self summaryConfigureWithWorkout:currentWorkout workoutActivity:currentWorkoutActivity fitnessAppContext:fitnessAppContext catalogItemViewModel:catalogItemViewModel formattingManager:v10 resizeBlock:0];
    }
  }
}

- (BOOL)_workoutIsThirdParty:(id)party
{
  sourceRevision = [party sourceRevision];
  source = [sourceRevision source];
  _isAppleWatch = [source _isAppleWatch];

  return _isAppleWatch ^ 1;
}

- (void)_constrainViews
{
  if (![(NSArray *)self->_addedConstraints count])
  {
    v3 = objc_alloc_init(NSMutableArray);
    leadingAnchor = [(UIImageView *)self->_ringImageView leadingAnchor];
    contentView = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    topAnchor = [(UIImageView *)self->_ringImageView topAnchor];
    contentView2 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v71 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];

    v77[0] = v72;
    v77[1] = v71;
    v10 = [NSArray arrayWithObjects:v77 count:2];
    [v3 addObjectsFromArray:v10];

    centerXAnchor = [(UIImageView *)self->_workoutTypeIconImageView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)self->_ringImageView centerXAnchor];
    v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    centerYAnchor = [(UIImageView *)self->_workoutTypeIconImageView centerYAnchor];
    centerYAnchor2 = [(UIImageView *)self->_ringImageView centerYAnchor];
    v69 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v76[0] = v70;
    v76[1] = v69;
    v15 = [NSArray arrayWithObjects:v76 count:2];
    [v3 addObjectsFromArray:v15];

    leadingAnchor3 = [(UIImageView *)self->_iconImageView leadingAnchor];
    contentView3 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    leadingAnchor4 = [contentView3 leadingAnchor];
    v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

    topAnchor3 = [(UIImageView *)self->_iconImageView topAnchor];
    contentView4 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    topAnchor4 = [contentView4 topAnchor];
    v67 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:14.0];

    v75[0] = v68;
    v75[1] = v67;
    v22 = [NSArray arrayWithObjects:v75 count:2];
    [v3 addObjectsFromArray:v22];

    leadingAnchor5 = [(UIStackView *)self->_summaryContainer leadingAnchor];
    trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
    [(CHWorkoutDetailSummaryTableViewCell *)self directionalLayoutMargins];
    v26 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:v25];
    v63 = v3;
    [v3 addObject:v26];

    leadingAnchor6 = [(UIStackView *)self->_summaryContainer leadingAnchor];
    trailingAnchor2 = [(UIImageView *)self->_ringImageView trailingAnchor];
    [(CHWorkoutDetailSummaryTableViewCell *)self directionalLayoutMargins];
    v66 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor2 constant:v29];

    trailingAnchor3 = [(UIStackView *)self->_summaryContainer trailingAnchor];
    contentView5 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    trailingAnchor4 = [contentView5 trailingAnchor];
    v65 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

    topAnchor5 = [(UIStackView *)self->_summaryContainer topAnchor];
    contentView6 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    topAnchor6 = [contentView6 topAnchor];
    v64 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:14.0];

    v74[0] = v66;
    v74[1] = v65;
    v74[2] = v64;
    v36 = [NSArray arrayWithObjects:v74 count:3];
    [v3 addObjectsFromArray:v36];

    widthAnchor = [(UIView *)self->_contentViewLayoutView widthAnchor];
    v62 = [widthAnchor constraintEqualToConstant:30.0];

    topAnchor7 = [(UIView *)self->_contentViewLayoutView topAnchor];
    contentView7 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    topAnchor8 = [contentView7 topAnchor];
    v61 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:14.0];

    bottomAnchor = [(UIView *)self->_contentViewLayoutView bottomAnchor];
    contentView8 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-14.0];

    leadingAnchor7 = [(UIView *)self->_contentViewLayoutView leadingAnchor];
    contentView9 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    leadingAnchor8 = [contentView9 leadingAnchor];
    v59 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];

    heightAnchor = [(UIView *)self->_contentViewLayoutView heightAnchor];
    heightAnchor2 = [(UIStackView *)self->_summaryContainer heightAnchor];
    v58 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];

    heightAnchor3 = [(UIView *)self->_contentViewLayoutView heightAnchor];
    heightAnchor4 = [(UIImageView *)self->_iconImageView heightAnchor];
    v51 = [heightAnchor3 constraintGreaterThanOrEqualToAnchor:heightAnchor4];

    heightAnchor5 = [(UIView *)self->_contentViewLayoutView heightAnchor];
    heightAnchor6 = [(UIImageView *)self->_ringImageView heightAnchor];
    v54 = [heightAnchor5 constraintGreaterThanOrEqualToAnchor:heightAnchor6];

    v73[0] = v62;
    v73[1] = v61;
    v73[2] = v60;
    v73[3] = v59;
    v73[4] = v58;
    v73[5] = v51;
    v73[6] = v54;
    v55 = [NSArray arrayWithObjects:v73 count:7];
    [v63 addObjectsFromArray:v55];

    v56 = [[NSArray alloc] initWithArray:v63];
    addedConstraints = self->_addedConstraints;
    self->_addedConstraints = v56;

    [NSLayoutConstraint activateConstraints:self->_addedConstraints];
  }
}

@end