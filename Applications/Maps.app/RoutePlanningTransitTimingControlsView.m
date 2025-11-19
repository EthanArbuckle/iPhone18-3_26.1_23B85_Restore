@interface RoutePlanningTransitTimingControlsView
- (RoutePlanningTransitTimingControlsView)initWithFrame:(CGRect)a3;
- (id)_horizontalStackViewWithViews:(id)a3 spacing:(double)a4;
- (void)_computeSelectedTiming;
- (void)_notifyDidUpdateTiming;
- (void)_planningTypeDidChange:(id)a3;
- (void)_selectedDateDidChange;
- (void)_setDatePickerBoundaries;
- (void)_setDatePickerDate;
- (void)_setupInitialConstraints;
- (void)_toggleChanged:(id)a3;
- (void)reset;
- (void)setSelectedTiming:(id)a3;
- (void)setShowPlanningControls:(BOOL)a3;
@end

@implementation RoutePlanningTransitTimingControlsView

- (void)_setDatePickerBoundaries
{
  v3 = [(MapsRadioButton *)self->_leaveAtButton isSelected];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  timePicker = self->_timePicker;
  v23[0] = self->_datePicker;
  v23[1] = timePicker;
  obj = [NSArray arrayWithObjects:v23 count:2];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(RoutePlanningTransitTimingControlsView *)self selectedTiming];
        v11 = v10;
        if (v3)
        {
          [v10 departureTimeZone];
        }

        else
        {
          [v10 arrivalTimeZone];
        }
        v12 = ;
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = +[NSTimeZone localTimeZone];
        }

        v15 = v14;

        [v9 setTimeZone:v15];
        v16 = [NSDate _maps_minimumDateForRoutePlanningWithTimeZone:v15];
        [v9 setMinimumDate:v16];

        v17 = +[NSDate _maps_maximumDateForRoutePlanning];
        [v9 setMaximumDate:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

- (void)_setDatePickerDate
{
  v3 = [(MapsRadioButton *)self->_leaveAtButton isSelected];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  timePicker = self->_timePicker;
  v19[0] = self->_datePicker;
  v19[1] = timePicker;
  v5 = [NSArray arrayWithObjects:v19 count:2, 0];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(RoutePlanningTransitTimingControlsView *)self selectedTiming];
        v12 = v11;
        if (v3)
        {
          [v11 departureDate];
        }

        else
        {
          [v11 arrivalDate];
        }
        v13 = ;
        if (v13)
        {
          [v10 setDate:v13];
        }

        else
        {
          v14 = objc_opt_new();
          [v10 setDate:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_selectedDateDidChange
{
  [(RoutePlanningTransitTimingControlsView *)self _computeSelectedTiming];
  if (sub_10000FA08(self) == 5)
  {
    [(RoutePlanningTransitTimingControlsView *)self _setDatePickerDate];
  }

  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:3031 onTarget:631 eventValue:0];

  [(RoutePlanningTransitTimingControlsView *)self _notifyDidUpdateTiming];
}

- (void)_computeSelectedTiming
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [(UIDatePicker *)self->_datePicker date];
  v5 = [v3 components:28 fromDate:v4];

  v6 = [(UIDatePicker *)self->_timePicker date];
  v7 = [v3 components:96 fromDate:v6];

  v8 = [v3 dateFromComponents:v5];
  v9 = [v3 dateByAddingComponents:v7 toDate:v8 options:0];

  v10 = sub_100798A3C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Computed date is %@", &v16, 0xCu);
  }

  v11 = [(MapsRadioButton *)self->_leaveAtButton isSelected];
  v12 = [(RoutePlanningTiming *)self->_selectedTiming departureTimeZone];
  v13 = [(RoutePlanningTiming *)self->_selectedTiming arrivalTimeZone];
  if (v11)
  {
    [RoutePlanningTiming timingWithDepartureDate:v9 departureTimeZone:v12 arrivalTimeZone:v13];
  }

  else
  {
    [RoutePlanningTiming timingWithArrivalDate:v9 departureTimeZone:v12 arrivalTimeZone:v13];
  }
  v14 = ;
  selectedTiming = self->_selectedTiming;
  self->_selectedTiming = v14;
}

- (void)_toggleChanged:(id)a3
{
  v4 = a3;
  [(RoutePlanningTransitTimingControlsView *)self _setDatePickerBoundaries];
  [(RoutePlanningTransitTimingControlsView *)self _computeSelectedTiming];
  [(RoutePlanningTransitTimingControlsView *)self _setDatePickerDate];
  leaveAtButton = self->_leaveAtButton;

  if (leaveAtButton == v4)
  {
    v6 = 3028;
  }

  else
  {
    v6 = 3029;
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:v6 onTarget:631 eventValue:0];

  [(RoutePlanningTransitTimingControlsView *)self _notifyDidUpdateTiming];
}

- (void)_planningTypeDidChange:(id)a3
{
  v4 = a3;
  if ([v4 selectedSegmentIndex])
  {
    v5 = [(UIDatePicker *)self->_datePicker date];
    v6 = [(RoutePlanningTiming *)self->_selectedTiming departureTimeZone];
    v7 = [(RoutePlanningTiming *)self->_selectedTiming arrivalTimeZone];
    v8 = [RoutePlanningTiming timingWithDepartureDate:v5 departureTimeZone:v6 arrivalTimeZone:v7];
    selectedTiming = self->_selectedTiming;
    self->_selectedTiming = v8;
  }

  else
  {
    v10 = [(RoutePlanningTiming *)self->_selectedTiming departureTimeZone];
    v11 = [(RoutePlanningTiming *)self->_selectedTiming arrivalTimeZone];
    v12 = [RoutePlanningTiming timingWithDepartureDate:0 departureTimeZone:v10 arrivalTimeZone:v11];
    v13 = self->_selectedTiming;
    self->_selectedTiming = v12;

    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:3030 onTarget:631 eventValue:0];
  }

  [(MapsRadioButton *)self->_leaveAtButton setSelected:1];
  [(RoutePlanningTransitTimingControlsView *)self _setDatePickerDate];
  [(RoutePlanningTransitTimingControlsView *)self _setDatePickerBoundaries];
  v14 = [v4 selectedSegmentIndex];

  [(RoutePlanningTransitTimingControlsView *)self setShowPlanningControls:v14 != 0];

  [(RoutePlanningTransitTimingControlsView *)self _notifyDidUpdateTiming];
}

- (void)setShowPlanningControls:(BOOL)a3
{
  if (self->_showPlanningControls != a3)
  {
    v3 = a3;
    self->_showPlanningControls = a3;
    [(UIView *)self->_planningControlsView setAlpha:a3];
    [(NSLayoutConstraint *)self->_planningControlsShowingConstraint setActive:v3];
    [(NSLayoutConstraint *)self->_planningControlsHidingConstraint setActive:v3 ^ 1];
    [(RoutePlanningTransitTimingControlsView *)self invalidateIntrinsicContentSize];
    v5 = [(RoutePlanningTransitTimingControlsView *)self layoutHandler];

    if (v5)
    {
      v6 = [(RoutePlanningTransitTimingControlsView *)self layoutHandler];
      v6[2](v6, v3);
    }
  }
}

- (void)_notifyDidUpdateTiming
{
  v3 = sub_100798A3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selectedTiming = self->_selectedTiming;
    v7 = 138412290;
    v8 = selectedTiming;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Notify selected timing is %@", &v7, 0xCu);
  }

  v5 = [(RoutePlanningTransitTimingControlsView *)self changeHandler];

  if (v5)
  {
    v6 = [(RoutePlanningTransitTimingControlsView *)self changeHandler];
    (v6)[2](v6, self->_selectedTiming);
  }
}

- (void)setSelectedTiming:(id)a3
{
  v5 = a3;
  v6 = self->_selectedTiming;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_selectedTiming, a3);
      if (v7)
      {
        [v7 timepoint];
        [(MapsRadioButton *)self->_leaveAtButton setSelected:v12 == 0];
        [v7 timepoint];
        [(MapsRadioButton *)self->_arriveByButton setSelected:v11 == 1];
        [(RoutePlanningTransitTimingControlsView *)self _setDatePickerDate];
        [(RoutePlanningTransitTimingControlsView *)self _setDatePickerBoundaries];
        -[UISegmentedControl setSelectedSegmentIndex:](self->_timingTypeControl, "setSelectedSegmentIndex:", [v7 isDepartNow] ^ 1);
        v9 = [v7 isDepartNow] ^ 1;
        v10 = self;
      }

      else
      {
        [(MapsRadioButton *)self->_leaveAtButton setSelected:1];
        [(RoutePlanningTransitTimingControlsView *)self _setDatePickerDate];
        [(RoutePlanningTransitTimingControlsView *)self _setDatePickerBoundaries];
        [(UISegmentedControl *)self->_timingTypeControl setSelectedSegmentIndex:0];
        v10 = self;
        v9 = 0;
      }

      [(RoutePlanningTransitTimingControlsView *)v10 setShowPlanningControls:v9];
    }
  }
}

- (void)reset
{
  v3 = [RoutePlanningTiming timingWithDepartureDate:0 departureTimeZone:0 arrivalTimeZone:0];
  [(RoutePlanningTransitTimingControlsView *)self setSelectedTiming:v3];
}

- (void)_setupInitialConstraints
{
  v61 = objc_alloc_init(NSMutableArray);
  v60 = [(UISegmentedControl *)self->_timingTypeControl topAnchor];
  v59 = [(RoutePlanningTransitTimingControlsView *)self topAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v62[0] = v58;
  v57 = [(UISegmentedControl *)self->_timingTypeControl leadingAnchor];
  v56 = [(RoutePlanningTransitTimingControlsView *)self leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v62[1] = v55;
  v54 = [(RoutePlanningTransitTimingControlsView *)self trailingAnchor];
  v53 = [(UISegmentedControl *)self->_timingTypeControl trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v62[2] = v52;
  v51 = [(UIView *)self->_planningControlsView topAnchor];
  v50 = [(UISegmentedControl *)self->_timingTypeControl bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:12.0];
  v62[3] = v49;
  v48 = [(UIView *)self->_planningControlsView leadingAnchor];
  v47 = [(RoutePlanningTransitTimingControlsView *)self leadingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v62[4] = v46;
  v45 = [(RoutePlanningTransitTimingControlsView *)self trailingAnchor];
  v44 = [(UIView *)self->_planningControlsView trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v62[5] = v43;
  v42 = [(MapsRadioButton *)self->_leaveAtButton heightAnchor];
  v41 = [(MapsRadioButton *)self->_arriveByButton heightAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v62[6] = v40;
  v39 = [(UIStackView *)self->_radioButtonStackView topAnchor];
  v38 = [(UIView *)self->_planningControlsView topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v62[7] = v37;
  v36 = [(UIStackView *)self->_radioButtonStackView leadingAnchor];
  v35 = [(UIView *)self->_planningControlsView leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v62[8] = v34;
  v33 = [(UIView *)self->_planningControlsView trailingAnchor];
  v32 = [(UIStackView *)self->_radioButtonStackView trailingAnchor];
  v31 = [v33 constraintGreaterThanOrEqualToAnchor:v32];
  v62[9] = v31;
  v30 = [(UIStackView *)self->_datePickerStackView topAnchor];
  v29 = [(UIStackView *)self->_radioButtonStackView bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:12.0];
  v62[10] = v28;
  v27 = [(UIStackView *)self->_datePickerStackView leadingAnchor];
  v26 = [(UIView *)self->_planningControlsView leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v62[11] = v25;
  v24 = [(UIStackView *)self->_timePickerStackView topAnchor];
  v23 = [(UIStackView *)self->_datePickerStackView topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v62[12] = v22;
  v21 = [(UIStackView *)self->_timePickerStackView leadingAnchor];
  v3 = [(UIStackView *)self->_datePickerStackView trailingAnchor];
  v4 = [v21 constraintEqualToAnchor:v3 constant:14.0];
  v62[13] = v4;
  v5 = [(UIView *)self->_planningControlsView trailingAnchor];
  v6 = [(UIStackView *)self->_timePickerStackView trailingAnchor];
  v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6];
  v62[14] = v7;
  v8 = [(UIView *)self->_planningControlsView bottomAnchor];
  v9 = [(UIStackView *)self->_datePickerStackView bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v62[15] = v10;
  v11 = [NSArray arrayWithObjects:v62 count:16];
  [v61 addObjectsFromArray:v11];

  v12 = [(RoutePlanningTransitTimingControlsView *)self bottomAnchor];
  v13 = [(UISegmentedControl *)self->_timingTypeControl bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  planningControlsHidingConstraint = self->_planningControlsHidingConstraint;
  self->_planningControlsHidingConstraint = v14;

  v16 = [(RoutePlanningTransitTimingControlsView *)self bottomAnchor];
  v17 = [(UIView *)self->_planningControlsView bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  planningControlsShowingConstraint = self->_planningControlsShowingConstraint;
  self->_planningControlsShowingConstraint = v18;

  if (self->_showPlanningControls)
  {
    v20 = 40;
  }

  else
  {
    v20 = 32;
  }

  [v61 addObject:*(&self->super.super.super.isa + v20)];
  [NSLayoutConstraint activateConstraints:v61];
}

- (id)_horizontalStackViewWithViews:(id)a3 spacing:(double)a4
{
  v5 = a3;
  v6 = [[UIStackView alloc] initWithArrangedSubviews:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setSpacing:a4];
  [v6 setAxis:0];
  [v6 setDistribution:0];
  [v6 setAlignment:3];

  return v6;
}

- (RoutePlanningTransitTimingControlsView)initWithFrame:(CGRect)a3
{
  v67.receiver = self;
  v67.super_class = RoutePlanningTransitTimingControlsView;
  v3 = [(RoutePlanningTransitTimingControlsView *)&v67 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(RoutePlanningTransitTimingControlsView *)v3 setAccessibilityIdentifier:v5];

    v6 = +[NSBundle mainBundle];
    v66 = [v6 localizedStringForKey:@"Leave Now [Route Planning value:Transit table:{Catalyst", @"localized string not found", 0}];

    v7 = +[NSBundle mainBundle];
    v65 = [v7 localizedStringForKey:@"Plan [Route Planning value:Transit table:{Catalyst", @"localized string not found", 0}];

    v8 = [UISegmentedControl alloc];
    v73[0] = v66;
    v73[1] = v65;
    v9 = [NSArray arrayWithObjects:v73 count:2];
    v10 = [v8 initWithItems:v9];
    timingTypeControl = v3->_timingTypeControl;
    v3->_timingTypeControl = v10;

    [(UISegmentedControl *)v3->_timingTypeControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UISegmentedControl *)v3->_timingTypeControl setSelectedSegmentIndex:0];
    [(UISegmentedControl *)v3->_timingTypeControl addTarget:v3 action:"_planningTypeDidChange:" forControlEvents:4096];
    [(UISegmentedControl *)v3->_timingTypeControl setAccessibilityIdentifier:@"TimingTypeSegmentedControl"];
    [(RoutePlanningTransitTimingControlsView *)v3 addSubview:v3->_timingTypeControl];
    v12 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    planningControlsView = v3->_planningControlsView;
    v3->_planningControlsView = v16;

    [(UIView *)v3->_planningControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_planningControlsView setAlpha:0.0];
    [(UIView *)v3->_planningControlsView setAccessibilityIdentifier:@"PlanningControls"];
    [(RoutePlanningTransitTimingControlsView *)v3 addSubview:v3->_planningControlsView];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Leave [Route Planning value:Transit table:{Catalyst, Radio Button]", @"localized string not found", 0}];
    [v18 setText:v20];

    v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v18 setFont:v21];

    [v18 setAccessibilityIdentifier:@"LeaveAtLabel"];
    v64 = +[NSUUID UUID];
    v22 = [MapsRadioButton buttonWithGroupIdentifier:v64];
    leaveAtButton = v3->_leaveAtButton;
    v3->_leaveAtButton = v22;

    [(MapsRadioButton *)v3->_leaveAtButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsRadioButton *)v3->_leaveAtButton setSelected:1];
    [(MapsRadioButton *)v3->_leaveAtButton setControlSize:1];
    [(MapsRadioButton *)v3->_leaveAtButton setAccessibilityIdentifier:@"LeaveAtButton"];
    [(MapsRadioButton *)v3->_leaveAtButton setAssociatedLabel:v18];
    [(MapsRadioButton *)v3->_leaveAtButton addTarget:v3 action:"_toggleChanged:" forControlEvents:4096];
    v24 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"Arrive [Route Planning value:Transit table:{Catalyst, Radio Button]", @"localized string not found", 0}];
    [v24 setText:v26];

    v63 = v18;
    v27 = [v18 font];
    [v24 setFont:v27];

    [v24 setAccessibilityIdentifier:@"ArriveByLabel"];
    v28 = [MapsRadioButton buttonWithGroupIdentifier:v64];
    arriveByButton = v3->_arriveByButton;
    v3->_arriveByButton = v28;

    [(MapsRadioButton *)v3->_arriveByButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsRadioButton *)v3->_arriveByButton setControlSize:1];
    [(MapsRadioButton *)v3->_arriveByButton setAccessibilityIdentifier:@"ArriveByButton"];
    v62 = v24;
    [(MapsRadioButton *)v3->_arriveByButton setAssociatedLabel:v24];
    [(MapsRadioButton *)v3->_arriveByButton addTarget:v3 action:"_toggleChanged:" forControlEvents:4096];
    v72[0] = v3->_leaveAtButton;
    v72[1] = v18;
    v30 = [NSArray arrayWithObjects:v72 count:2];
    v31 = [(RoutePlanningTransitTimingControlsView *)v3 _horizontalStackViewWithViews:v30 spacing:5.0];
    leaveAtStackView = v3->_leaveAtStackView;
    v3->_leaveAtStackView = v31;

    [(UIStackView *)v3->_leaveAtStackView setAccessibilityIdentifier:@"LeaveAtStackView"];
    v71[0] = v3->_arriveByButton;
    v71[1] = v24;
    v33 = [NSArray arrayWithObjects:v71 count:2];
    v34 = [(RoutePlanningTransitTimingControlsView *)v3 _horizontalStackViewWithViews:v33 spacing:5.0];
    arriveByStackView = v3->_arriveByStackView;
    v3->_arriveByStackView = v34;

    [(UIStackView *)v3->_arriveByStackView setAccessibilityIdentifier:@"ArriveByStackView"];
    v70[0] = v3->_leaveAtStackView;
    v70[1] = v3->_arriveByStackView;
    v36 = [NSArray arrayWithObjects:v70 count:2];
    v37 = [(RoutePlanningTransitTimingControlsView *)v3 _horizontalStackViewWithViews:v36 spacing:20.0];
    radioButtonStackView = v3->_radioButtonStackView;
    v3->_radioButtonStackView = v37;

    [(UIStackView *)v3->_radioButtonStackView setAccessibilityIdentifier:@"RadioButtonStackView"];
    [(UIView *)v3->_planningControlsView addSubview:v3->_radioButtonStackView];
    v39 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    datePicker = v3->_datePicker;
    v3->_datePicker = v39;

    [(UIDatePicker *)v3->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v3->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)v3->_datePicker setAccessibilityIdentifier:@"DatePicker"];
    [(UIDatePicker *)v3->_datePicker addTarget:v3 action:"_selectedDateDidChange" forControlEvents:4096];
    v41 = [UIImageView alloc];
    v42 = [UIImageSymbolConfiguration configurationWithPointSize:16.0];
    v43 = [UIImage systemImageNamed:@"calendar" withConfiguration:v42];
    v44 = [v43 imageWithRenderingMode:2];
    v45 = [v41 initWithImage:v44];

    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = +[UIColor secondaryLabelColor];
    [v45 setTintColor:v46];

    [v45 setAccessibilityIdentifier:@"DateImageView"];
    v47 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    timePicker = v3->_timePicker;
    v3->_timePicker = v47;

    [(UIDatePicker *)v3->_timePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v3->_timePicker setDatePickerMode:0];
    [(UIDatePicker *)v3->_timePicker setAccessibilityIdentifier:@"TimePicker"];
    [(UIDatePicker *)v3->_timePicker addTarget:v3 action:"_selectedDateDidChange" forControlEvents:4096];
    v49 = [UIImageView alloc];
    v50 = [UIImageSymbolConfiguration configurationWithPointSize:16.0];
    v51 = [UIImage systemImageNamed:@"clock" withConfiguration:v50];
    v52 = [v51 imageWithRenderingMode:2];
    v53 = [v49 initWithImage:v52];

    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = +[UIColor secondaryLabelColor];
    [v53 setTintColor:v54];

    [v53 setAccessibilityIdentifier:@"TimeImageView"];
    v69[0] = v45;
    v69[1] = v3->_datePicker;
    v55 = [NSArray arrayWithObjects:v69 count:2];
    v56 = [(RoutePlanningTransitTimingControlsView *)v3 _horizontalStackViewWithViews:v55 spacing:4.0];
    datePickerStackView = v3->_datePickerStackView;
    v3->_datePickerStackView = v56;

    v68[0] = v53;
    v68[1] = v3->_timePicker;
    v58 = [NSArray arrayWithObjects:v68 count:2];
    v59 = [(RoutePlanningTransitTimingControlsView *)v3 _horizontalStackViewWithViews:v58 spacing:4.0];
    timePickerStackView = v3->_timePickerStackView;
    v3->_timePickerStackView = v59;

    [(UIView *)v3->_planningControlsView addSubview:v3->_datePickerStackView];
    [(UIView *)v3->_planningControlsView addSubview:v3->_timePickerStackView];
    v3->_showSchedulingButtons = 1;
    [(RoutePlanningTransitTimingControlsView *)v3 sendSubviewToBack:v3->_planningControlsView];
    [(RoutePlanningTransitTimingControlsView *)v3 _setupInitialConstraints];
    [(RoutePlanningTransitTimingControlsView *)v3 reset];
  }

  return v3;
}

@end