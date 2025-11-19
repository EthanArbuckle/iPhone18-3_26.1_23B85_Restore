@interface CHWorkoutDetailSummaryTableViewCell
+ (double)preferredHeightForWorkout:(id)a3;
+ (id)_geocoder;
+ (id)_locationArrowImage;
- (BOOL)_workoutIsThirdParty:(id)a3;
- (CHWorkoutDetailSummaryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_constrainViews;
- (void)_navigateToSeymourWorkout;
- (void)_treatAsFirstPartyWorkout:(id)a3 workoutActivity:(id)a4 formattingManager:(id)a5;
- (void)setLocation:(id)a3 completion:(id)a4;
- (void)setSwimDistanceByStrokeStyle:(id)a3;
- (void)summaryConfigureWithWorkout:(id)a3 workoutActivity:(id)a4 fitnessAppContext:(id)a5 catalogItemViewModel:(id)a6 formattingManager:(id)a7 resizeBlock:(id)a8;
@end

@implementation CHWorkoutDetailSummaryTableViewCell

+ (double)preferredHeightForWorkout:(id)a3
{
  v3 = a3;
  v4 = [v3 _goalType];
  v5 = [v3 workoutActivityType];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 46;
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

- (CHWorkoutDetailSummaryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v65.receiver = self;
  v65.super_class = CHWorkoutDetailSummaryTableViewCell;
  v4 = [(CHWorkoutDetailSummaryTableViewCell *)&v65 initWithStyle:a3 reuseIdentifier:a4];
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
    v9 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_ringImageView];

    v10 = objc_alloc_init(UIImageView);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v10;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setUserInteractionEnabled:1];
    LODWORD(v12) = 1148846080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:0 forAxis:v12];
    v13 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [v13 addSubview:v4->_iconImageView];

    v14 = objc_alloc_init(UIImageView);
    workoutTypeIconImageView = v4->_workoutTypeIconImageView;
    v4->_workoutTypeIconImageView = v14;

    [(UIImageView *)v4->_workoutTypeIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [v16 addSubview:v4->_workoutTypeIconImageView];

    v17 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
    summaryContainer = v4->_summaryContainer;
    v4->_summaryContainer = v17;

    [(UIStackView *)v4->_summaryContainer setAxis:1];
    [(UIStackView *)v4->_summaryContainer setDistribution:3];
    [(UIStackView *)v4->_summaryContainer setAlignment:1];
    [(UIStackView *)v4->_summaryContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UIStackView *)v4->_summaryContainer setContentCompressionResistancePriority:1 forAxis:v19];
    v20 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [v20 addSubview:v4->_summaryContainer];

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
    v40 = [(_CHWorkoutDetailTextSpacerView *)v36 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v40];
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
    v46 = [[_CHWorkoutDetailTextSpacerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(UIStackView *)v4->_summaryContainer addArrangedSubview:v46];
    swimmingDistanceByStrokeStyleLabelTrailingSpacer = v4->_swimmingDistanceByStrokeStyleLabelTrailingSpacer;
    v4->_swimmingDistanceByStrokeStyleLabelTrailingSpacer = v46;
    v48 = v46;

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
    v61 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [v61 addSubview:v4->_contentViewLayoutView];

    v62 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"_navigateToSeymourWorkout"];
    v63 = [(CHWorkoutDetailSummaryTableViewCell *)v4 contentView];
    [v63 addGestureRecognizer:v62];

    [(CHWorkoutDetailSummaryTableViewCell *)v4 _constrainViews];
  }

  return v4;
}

- (void)summaryConfigureWithWorkout:(id)a3 workoutActivity:(id)a4 fitnessAppContext:(id)a5 catalogItemViewModel:(id)a6 formattingManager:(id)a7 resizeBlock:(id)a8
{
  v15 = a3;
  v16 = a4;
  v43 = a5;
  v17 = a6;
  v18 = a7;
  v42 = a8;
  objc_storeStrong(&self->_currentWorkout, a3);
  objc_storeStrong(&self->_currentWorkoutActivity, a4);
  objc_storeStrong(&self->_fitnessAppContext, a5);
  objc_storeStrong(&self->_catalogItemViewModel, a6);
  objc_storeWeak(&self->_formattingManager, v18);
  v19 = [v18 formattedTypeForWorkout:v15 workoutActivity:v16 context:@"WorkoutDetailDisplayContext"];
  [(UILabel *)self->_workoutTypeLabel setAttributedText:v19];

  v20 = [v18 formattedTimeRangeForWorkout:v15 workoutActivity:v16 context:@"WorkoutDetailDisplayContext"];
  [(UILabel *)self->_timeRangeLabel setAttributedText:v20];

  v21 = [v15 fiui_connectedGymBrandName];
  v41 = v21;
  if (v21)
  {
    [(UILabel *)self->_brandLabel setText:v21];
  }

  else
  {
    [(UIStackView *)self->_summaryContainer removeArrangedSubview:self->_brandLabel];
  }

  v22 = [v15 isFirstPartyWorkout];
  v23 = [v43 seymourCatalogItemDataProvider];
  v24 = [v23 isSeymourWorkout:v15];

  if ([v15 fiui_isConnectedGymWorkout])
  {
    v25 = [v18 hasConnectedGymVendorIconForWorkout:v15];
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
      [v18 fetchIconImageForWorkout:v15 context:@"WorkoutDetailDisplayContext" completion:v49];
      [(UILabel *)self->_completionLabel setHidden:1];
      goto LABEL_24;
    }
  }

  else
  {
    objc_initWeak(location, self);
  }

  if (((v17 != 0) & v24) == 1)
  {
    v27 = [v17 isSeymourPairedWorkout];
    [(UIImageView *)self->_workoutTypeIconImageView setHidden:1];
    [(UIImageView *)self->_ringImageView setHidden:1];
    [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel setHidden:1];
    [(_CHWorkoutDetailTextSpacerView *)self->_swimmingDistanceByStrokeStyleLabelTrailingSpacer setHidden:1];
    v28 = [(UIImageView *)self->_iconImageView layer];
    [v28 setMasksToBounds:1];

    v29 = [(UIImageView *)self->_iconImageView layer];
    v30 = v29;
    v31 = 12.0;
    if (v27)
    {
      v31 = 10.0;
    }

    [v29 setCornerRadius:v31];

    v32 = [v17 title];
    [(UILabel *)self->_workoutTypeLabel setAttributedText:v32];

    v33 = [v17 subtitle];
    [(UILabel *)self->_completionLabel setAttributedText:v33];

    v34 = [*(&self->super.super.super.super.isa + v40) seymourCatalogItemDataProvider];
    if (v27)
    {
      v35 = 76.0;
    }

    else
    {
      v35 = 85.0;
    }

    if (v27)
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
    v47 = v42;
    [v34 fetchCatalogArtworkForCatalogItemViewModel:v17 imageSize:v46 completion:{v36, v35}];
  }

  else
  {
    v37 = [v15 isMultiSportWorkout] ^ 1;
    if (!v16)
    {
      LOBYTE(v37) = 1;
    }

    if ((v37 & 1) == 0)
    {
      v38 = [v18 defaultCircularRingImageForContext:@"WorkoutDetailDisplayContext"];
      [(UIImageView *)self->_ringImageView setImage:v38];

      [(CHWorkoutDetailSummaryTableViewCell *)self _treatAsFirstPartyWorkout:v15 workoutActivity:v16 formattingManager:v18];
      goto LABEL_25;
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10011C73C;
    v44[3] = &unk_10083C298;
    v26 = &v45;
    objc_copyWeak(&v45, location);
    [v18 fetchIconImageForWorkout:v15 context:@"WorkoutDetailDisplayContext" completion:v44];
    if (v22)
    {
      [(CHWorkoutDetailSummaryTableViewCell *)self _treatAsFirstPartyWorkout:v15 workoutActivity:v16 formattingManager:v18];
    }
  }

LABEL_24:
  objc_destroyWeak(v26);
LABEL_25:
  if ([v15 workoutActivityType] == 84)
  {
    [(UILabel *)self->_completionLabel setHidden:1];
  }

  v39 = [v18 locationForWorkout:v15 workoutActivity:v16];
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
  v3 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  v4 = [v3 isSeymourWorkout:self->_currentWorkout];

  if (v4)
  {
    fitnessAppContext = self->_fitnessAppContext;
    currentWorkout = self->_currentWorkout;

    [(CHFitnessAppContext *)fitnessAppContext navigateToWorkout:currentWorkout];
  }
}

- (void)_treatAsFirstPartyWorkout:(id)a3 workoutActivity:(id)a4 formattingManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v89 = a5;
  v10 = [ARUIMetricColors metricColorsForWorkout:v8];
  v11 = [v10 nonGradientTextColor];

  [(UIImageView *)self->_ringImageView setHidden:0];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  v13 = [v12 fiui_activityType];
  v14 = [v8 fiui_isConnectedGymWorkout];
  workoutTypeIconImageView = self->_workoutTypeIconImageView;
  v88 = v13;
  if (v14)
  {
    [(UIImageView *)workoutTypeIconImageView setHidden:1];
  }

  else
  {
    [(UIImageView *)workoutTypeIconImageView setHidden:0];
    v16 = FIUIStaticWorkoutIconImage();
    v17 = [v16 imageWithRenderingMode:2];

    [(UIImageView *)self->_workoutTypeIconImageView setImage:v17];
    [(UIImageView *)self->_workoutTypeIconImageView setTintColor:v11];
  }

  [(UIImageView *)self->_iconImageView setHidden:1];
  v18 = [[NSAttributedString alloc] initWithString:&stru_1008680E8];
  v19 = &selRef_textViewWritingToolsWillBegin_;
  if (!v9)
  {
    if ([v8 wasUserEntered])
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
      v28 = [v8 formattedCreationDate];
      v29 = [NSString stringWithFormat:v27, v28];

      v30 = [[NSAttributedString alloc] initWithString:v29];
      [v20 appendAttributedString:v30];

      v19 = &selRef_textViewWritingToolsWillBegin_;
      v18 = v20;
      v11 = v85;
      goto LABEL_31;
    }

    v79 = [v8 _goalType] - 1;
    v31 = [v89 fitnessUIFormattingManager];
    v84 = [v8 displayDetail:v31];

    v32 = [(UILabel *)self->_completionLabel font];
    v86 = [v32 fontDescriptor];
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
    v37 = [v86 fontDescriptorByAddingAttributes:v35];
    v82 = v32;
    [v32 pointSize];
    v38 = [UIFont fontWithDescriptor:v37 size:?];
    v39 = v38;
    if (v79 <= 2 && v84)
    {
      v78 = v37;
      v80 = v38;
      v40 = [(__CFString *)v84 localizedLowercaseString];
      v41 = +[NSBundle mainBundle];
      v42 = [v41 localizedStringForKey:@"WORKOUT_SUMMARY_GOAL_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      if (v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = &stru_1008680E8;
      }

      v44 = [NSString stringWithFormat:v42, v43];

      v45 = [[NSMutableAttributedString alloc] initWithString:v44];
      v46 = [v44 rangeOfString:v40];
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

      v18 = v40;
      v19 = &selRef_textViewWritingToolsWillBegin_;
      v36 = v84;
    }

    else
    {
      if (![v8 isRaceWorkout])
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
      v51 = [v89 fitnessUIFormattingManager];
      [v8 raceWorkoutDisplayDistance];
      v53 = v52;
      v54 = [v8 fiui_activityType];
      v55 = [v51 localizedCompactGoalDescriptionForGoalType:1 goalValue:v54 activityType:v53];

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
  [*(&self->super.super.super.super.isa + v67) setColor:v11];
  if ([v88 identifier] == 46)
  {
    v68 = [(CHWorkoutDetailSummaryTableViewCell *)self swimDistanceByStrokeStyle];

    if (v68)
    {
      v87 = v18;
      v69 = v11;
      if (v9)
      {
        v70 = v88;
        v71 = [v9 workoutConfiguration];
        v72 = [v71 swimmingLocationType];
      }

      else
      {
        v9 = 0;
        v70 = v88;
        v72 = [v8 fi_swimmingLocationType];
      }

      v73 = [(CHWorkoutDetailSummaryTableViewCell *)self swimDistanceByStrokeStyle];
      v74 = [v89 formattedDistanceByStrokeStyle:v73 isPoolSwim:v72 == 1 context:@"WorkoutDetailDisplayContext"];
      [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel setAttributedText:v74];

      v75 = [(UILabel *)self->_swimmingDistanceByStrokeStyleLabel attributedText];
      v76 = [v75 length];

      v66 = v70;
      v11 = v69;
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

- (void)setLocation:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = [objc_opt_class() _geocoder];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011D1B8;
    v9[3] = &unk_10083B328;
    v9[4] = self;
    v10 = v6;
    [v8 reverseGeocodeLocation:v7 completionHandler:v9];
  }
}

- (void)setSwimDistanceByStrokeStyle:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_swimDistanceByStrokeStyle, a3);
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

- (BOOL)_workoutIsThirdParty:(id)a3
{
  v3 = [a3 sourceRevision];
  v4 = [v3 source];
  v5 = [v4 _isAppleWatch];

  return v5 ^ 1;
}

- (void)_constrainViews
{
  if (![(NSArray *)self->_addedConstraints count])
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = [(UIImageView *)self->_ringImageView leadingAnchor];
    v5 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v6 = [v5 leadingAnchor];
    v72 = [v4 constraintEqualToAnchor:v6];

    v7 = [(UIImageView *)self->_ringImageView topAnchor];
    v8 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v9 = [v8 topAnchor];
    v71 = [v7 constraintEqualToAnchor:v9 constant:14.0];

    v77[0] = v72;
    v77[1] = v71;
    v10 = [NSArray arrayWithObjects:v77 count:2];
    [v3 addObjectsFromArray:v10];

    v11 = [(UIImageView *)self->_workoutTypeIconImageView centerXAnchor];
    v12 = [(UIImageView *)self->_ringImageView centerXAnchor];
    v70 = [v11 constraintEqualToAnchor:v12];

    v13 = [(UIImageView *)self->_workoutTypeIconImageView centerYAnchor];
    v14 = [(UIImageView *)self->_ringImageView centerYAnchor];
    v69 = [v13 constraintEqualToAnchor:v14];

    v76[0] = v70;
    v76[1] = v69;
    v15 = [NSArray arrayWithObjects:v76 count:2];
    [v3 addObjectsFromArray:v15];

    v16 = [(UIImageView *)self->_iconImageView leadingAnchor];
    v17 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v18 = [v17 leadingAnchor];
    v68 = [v16 constraintEqualToAnchor:v18];

    v19 = [(UIImageView *)self->_iconImageView topAnchor];
    v20 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v21 = [v20 topAnchor];
    v67 = [v19 constraintEqualToAnchor:v21 constant:14.0];

    v75[0] = v68;
    v75[1] = v67;
    v22 = [NSArray arrayWithObjects:v75 count:2];
    [v3 addObjectsFromArray:v22];

    v23 = [(UIStackView *)self->_summaryContainer leadingAnchor];
    v24 = [(UIImageView *)self->_iconImageView trailingAnchor];
    [(CHWorkoutDetailSummaryTableViewCell *)self directionalLayoutMargins];
    v26 = [v23 constraintEqualToAnchor:v24 constant:v25];
    v63 = v3;
    [v3 addObject:v26];

    v27 = [(UIStackView *)self->_summaryContainer leadingAnchor];
    v28 = [(UIImageView *)self->_ringImageView trailingAnchor];
    [(CHWorkoutDetailSummaryTableViewCell *)self directionalLayoutMargins];
    v66 = [v27 constraintEqualToAnchor:v28 constant:v29];

    v30 = [(UIStackView *)self->_summaryContainer trailingAnchor];
    v31 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v32 = [v31 trailingAnchor];
    v65 = [v30 constraintEqualToAnchor:v32];

    v33 = [(UIStackView *)self->_summaryContainer topAnchor];
    v34 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v35 = [v34 topAnchor];
    v64 = [v33 constraintEqualToAnchor:v35 constant:14.0];

    v74[0] = v66;
    v74[1] = v65;
    v74[2] = v64;
    v36 = [NSArray arrayWithObjects:v74 count:3];
    [v3 addObjectsFromArray:v36];

    v37 = [(UIView *)self->_contentViewLayoutView widthAnchor];
    v62 = [v37 constraintEqualToConstant:30.0];

    v38 = [(UIView *)self->_contentViewLayoutView topAnchor];
    v39 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v40 = [v39 topAnchor];
    v61 = [v38 constraintEqualToAnchor:v40 constant:14.0];

    v41 = [(UIView *)self->_contentViewLayoutView bottomAnchor];
    v42 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v43 = [v42 bottomAnchor];
    v60 = [v41 constraintEqualToAnchor:v43 constant:-14.0];

    v44 = [(UIView *)self->_contentViewLayoutView leadingAnchor];
    v45 = [(CHWorkoutDetailSummaryTableViewCell *)self contentView];
    v46 = [v45 leadingAnchor];
    v59 = [v44 constraintEqualToAnchor:v46];

    v47 = [(UIView *)self->_contentViewLayoutView heightAnchor];
    v48 = [(UIStackView *)self->_summaryContainer heightAnchor];
    v58 = [v47 constraintGreaterThanOrEqualToAnchor:v48];

    v49 = [(UIView *)self->_contentViewLayoutView heightAnchor];
    v50 = [(UIImageView *)self->_iconImageView heightAnchor];
    v51 = [v49 constraintGreaterThanOrEqualToAnchor:v50];

    v52 = [(UIView *)self->_contentViewLayoutView heightAnchor];
    v53 = [(UIImageView *)self->_ringImageView heightAnchor];
    v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53];

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