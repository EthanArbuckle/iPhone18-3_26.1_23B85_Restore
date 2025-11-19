@interface RoutePlanningTimingViewController
- (BOOL)_shouldShowCompact;
- (NSTimeZone)destinationTimeZone;
- (NSTimeZone)originTimeZone;
- (RoutePlanningTimingViewController)initWithCurrentTiming:(id)a3 shouldShowArriveBy:(BOOL)a4 pickerDelegate:(id)a5;
- (RoutePlanningTimingViewControllerDelegate)pickerDelegate;
- (id)_currentTiming;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_pressedDone;
- (void)_pressedLeaveNow;
- (void)_pressedSegmentControl;
- (void)_selectedDate;
- (void)_updateDatePicker;
- (void)_updateLeaveNowButton;
- (void)_updateSegmentControl;
- (void)handleDismissAction:(id)a3;
- (void)setDestinationTimeZone:(id)a3;
- (void)setLeavingNow:(BOOL)a3;
- (void)setOriginTimeZone:(id)a3;
- (void)setShowArriveBy:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation RoutePlanningTimingViewController

- (RoutePlanningTimingViewControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

- (void)_pressedLeaveNow
{
  [GEOAPPortal captureUserAction:3030 target:631 value:0];
  [(UISegmentedControl *)self->_segmentControl setSelectedSegmentIndex:0];
  self->_isLeaveAt = 1;
  v3 = objc_opt_new();
  [(UIDatePicker *)self->_datePicker setDate:v3];

  [(RoutePlanningTimingViewController *)self setLeavingNow:1];

  [(RoutePlanningTimingViewController *)self _updateDatePicker];
}

- (void)_selectedDate
{
  [GEOAPPortal captureUserAction:3031 target:631 value:0];

  [(RoutePlanningTimingViewController *)self setLeavingNow:0];
}

- (void)_pressedSegmentControl
{
  v3 = [(UISegmentedControl *)self->_segmentControl selectedSegmentIndex]== 0;
  self->_isLeaveAt = v3;
  if (v3)
  {
    v4 = 3028;
  }

  else
  {
    v4 = 3029;
  }

  [GEOAPPortal captureUserAction:v4 target:631 value:0];

  [(RoutePlanningTimingViewController *)self _updateDatePicker];
}

- (void)_pressedDone
{
  [GEOAPPortal captureUserAction:17 target:631 value:0];
  v3 = [(RoutePlanningTimingViewController *)self isLeavingNow];
  v4 = [(RoutePlanningTimingViewController *)self pickerDelegate];
  if (v3)
  {
    +[RoutePlanningTiming leaveNowTiming];
  }

  else
  {
    [(RoutePlanningTimingViewController *)self _currentTiming];
  }
  v5 = ;
  [v4 timingViewController:self didPickTiming:v5];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 dismiss:!UIAccessibilityIsReduceMotionEnabled()];
}

- (void)handleDismissAction:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 dismiss:!UIAccessibilityIsReduceMotionEnabled()];
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v22 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];

  if (v22)
  {
    [v22 CGRectValue];
    [(UIScrollView *)self->_scrollView convertRect:0 fromView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIScrollView *)self->_scrollView bounds];
    Height = CGRectGetHeight(v24);
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    v14 = Height - CGRectGetMinY(v25);
    if (v14 > 0.0)
    {
      [(UIScrollView *)self->_scrollView setContentInset:0.0, 0.0, v14, 0.0];
      [(UIDatePicker *)self->_datePicker frame];
      scrollView = self->_scrollView;
      x = 0.0;
      goto LABEL_7;
    }

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [(UIScrollView *)self->_scrollView setContentInset:top, left, bottom, right];
  x = CGPointZero.x;
  y = CGPointZero.y;
  scrollView = self->_scrollView;
LABEL_7:
  [(UIScrollView *)scrollView setContentOffset:x, y];
}

- (BOOL)_shouldShowCompact
{
  v2 = [(RoutePlanningTimingViewController *)self traitCollection];
  v3 = [v2 verticalSizeClass] == 1;

  return v3;
}

- (id)_currentTiming
{
  isLeaveAt = self->_isLeaveAt;
  v4 = [(UIDatePicker *)self->_datePicker date];
  v5 = [(RoutePlanningTimingViewController *)self originTimeZone];
  v6 = [(RoutePlanningTimingViewController *)self destinationTimeZone];
  if (isLeaveAt)
  {
    [RoutePlanningTiming timingWithDepartureDate:v4 departureTimeZone:v5 arrivalTimeZone:v6];
  }

  else
  {
    [RoutePlanningTiming timingWithArrivalDate:v4 departureTimeZone:v5 arrivalTimeZone:v6];
  }
  v7 = ;

  return v7;
}

- (void)setDestinationTimeZone:(id)a3
{
  v5 = a3;
  v6 = self->_destinationTimeZone;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_destinationTimeZone, a3);
      [(RoutePlanningTimingViewController *)self _updateDatePicker];
      v7 = v9;
    }
  }
}

- (NSTimeZone)destinationTimeZone
{
  destinationTimeZone = self->_destinationTimeZone;
  if (!destinationTimeZone)
  {
    v4 = +[NSTimeZone localTimeZone];
    v5 = self->_destinationTimeZone;
    self->_destinationTimeZone = v4;

    destinationTimeZone = self->_destinationTimeZone;
  }

  return destinationTimeZone;
}

- (void)setOriginTimeZone:(id)a3
{
  v5 = a3;
  v6 = self->_originTimeZone;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_originTimeZone, a3);
      [(RoutePlanningTimingViewController *)self _updateDatePicker];
      v7 = v9;
    }
  }
}

- (NSTimeZone)originTimeZone
{
  originTimeZone = self->_originTimeZone;
  if (!originTimeZone)
  {
    v4 = +[NSTimeZone localTimeZone];
    v5 = self->_originTimeZone;
    self->_originTimeZone = v4;

    originTimeZone = self->_originTimeZone;
  }

  return originTimeZone;
}

- (void)setLeavingNow:(BOOL)a3
{
  if (self->_leavingNow != a3)
  {
    self->_leavingNow = a3;
    [(UIButton *)self->_leaveNowButton setEnabled:!a3];
  }
}

- (void)_updateLeaveNowButton
{
  v6 = [(RoutePlanningTimingViewController *)self traitCollection];
  v3 = [v6 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];
  v5 = [(UIButton *)self->_leaveNowButton titleLabel];
  [v5 setFont:v4];
}

- (void)_updateSegmentControl
{
  v3 = [(RoutePlanningTimingViewController *)self traitCollection];
  v4 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v4];

  segmentControl = self->_segmentControl;
  v8 = NSFontAttributeName;
  v9 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(UISegmentedControl *)segmentControl setTitleTextAttributes:v7 forState:0];
}

- (void)_updateDatePicker
{
  v3 = [(RoutePlanningTimingViewController *)self _shouldShowCompact];
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:v4];
  if (v3)
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor secondarySystemGroupedBackgroundColor];
  }
  v5 = ;
  [(UIDatePicker *)self->_datePicker setBackgroundColor:v5];

  [(NSLayoutConstraint *)self->_datePickerWidthConstraint setActive:v3 ^ 1];
  if (self->_isLeaveAt)
  {
    [(RoutePlanningTimingViewController *)self originTimeZone];
  }

  else
  {
    [(RoutePlanningTimingViewController *)self destinationTimeZone];
  }
  v7 = ;
  [(UIDatePicker *)self->_datePicker setTimeZone:v7];
  v6 = [NSDate _maps_minimumDateForRoutePlanningWithTimeZone:v7];
  [(UIDatePicker *)self->_datePicker setMinimumDate:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:a3];
  [(UIDatePicker *)self->_datePicker setMinuteInterval:5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = RoutePlanningTimingViewController;
  [(MapsThemeViewController *)&v4 traitCollectionDidChange:a3];
  [(RoutePlanningTimingViewController *)self _updateDatePicker];
  [(RoutePlanningTimingViewController *)self _updateSegmentControl];
  [(RoutePlanningTimingViewController *)self _updateLeaveNowButton];
}

- (void)setShowArriveBy:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showArriveBy != a3)
  {
    v15[5] = v7;
    v15[6] = v6;
    v15[11] = v4;
    v15[12] = v5;
    v8 = a4;
    self->_showArriveBy = a3;
    if (!a3 && !self->_isLeaveAt)
    {
      self->_isLeaveAt = 1;
      [(RoutePlanningTimingViewController *)self _updateDatePicker];
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100FA0CDC;
    v15[3] = &unk_101661B18;
    v15[4] = self;
    v10 = objc_retainBlock(v15);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100FA0D8C;
    v14[3] = &unk_101661738;
    v14[4] = self;
    v11 = objc_retainBlock(v14);
    if (v8)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100FA0DB8;
      v12[3] = &unk_101661090;
      v12[4] = self;
      v13 = v10;
      [UIView animateWithDuration:v12 animations:v11 completion:UINavigationControllerHideShowBarDuration];
    }

    else
    {
      (v10[2])(v10);
      (v11[2])(v11, 1);
    }
  }
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v7 willBecomeCurrent:a3];
  if (sub_10000FA08(self) == 5)
  {
    [(UIDatePicker *)self->_datePicker _setSafeAreaInsetsFrozen:0];
    LODWORD(v4) = 1148846080;
    [(NSLayoutConstraint *)self->_datePickerWidthConstraint setPriority:v4];
    LODWORD(v5) = 1148846080;
    [(NSLayoutConstraint *)self->_datePickerLeadingConstraint setPriority:v5];
    LODWORD(v6) = 1148846080;
    [(NSLayoutConstraint *)self->_datePickerTrailingConstraint setPriority:v6];
  }
}

- (void)willResignCurrent:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v7 willResignCurrent:a3];
  if (sub_10000FA08(self) == 5)
  {
    [(UIDatePicker *)self->_datePicker _setSafeAreaInsetsFrozen:1];
    LODWORD(v4) = 1144750080;
    [(NSLayoutConstraint *)self->_datePickerWidthConstraint setPriority:v4];
    LODWORD(v5) = 1144750080;
    [(NSLayoutConstraint *)self->_datePickerLeadingConstraint setPriority:v5];
    LODWORD(v6) = 1144750080;
    [(NSLayoutConstraint *)self->_datePickerTrailingConstraint setPriority:v6];
  }
}

- (void)viewDidLoad
{
  v123.receiver = self;
  v123.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v123 viewDidLoad];
  v3 = objc_opt_new();
  v121 = objc_opt_new();
  v122 = objc_opt_new();
  v4 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[RoutePlanning][Timing] Date & Time" value:@"localized string not found" table:0];
  [(ModalCardHeaderView *)v4 setTitle:v6];

  v120 = [MapsThemeButton buttonWithType:1];
  [v120 addTarget:self action:"handleDismissAction:" forControlEvents:64];
  [(ModalCardHeaderView *)v4 setLeadingButton:v120];
  v119 = [MapsThemeButton buttonWithType:1];
  [v119 addTarget:self action:"_pressedDone" forControlEvents:64];
  [(ModalCardHeaderView *)v4 setTrailingButton:v119];
  v7 = [(ContaineeViewController *)self headerView];
  [v7 addSubview:v4];

  v8 = [(ModalCardHeaderView *)v4 leadingAnchor];
  v9 = [(ContaineeViewController *)self headerView];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v3 addObject:v11];

  v12 = [(ModalCardHeaderView *)v4 trailingAnchor];
  v13 = [(ContaineeViewController *)self headerView];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(ModalCardHeaderView *)v4 topAnchor];
  v17 = [(ContaineeViewController *)self headerView];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v3 addObject:v19];

  v20 = [(ModalCardHeaderView *)v4 bottomAnchor];
  v21 = [(ContaineeViewController *)self headerView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v3 addObject:v23];

  v24 = objc_opt_new();
  scrollView = self->_scrollView;
  self->_scrollView = v24;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  v26 = [(ContaineeViewController *)self contentView];
  [v26 addSubview:self->_scrollView];

  v27 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v28 = [(ContaineeViewController *)self contentView];
  v29 = [v28 leadingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v3 addObject:v30];

  v31 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v32 = [(ContaineeViewController *)self contentView];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v3 addObject:v34];

  v35 = [(UIScrollView *)self->_scrollView topAnchor];
  v36 = [(ContaineeViewController *)self contentView];
  v37 = [v36 topAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  [v3 addObject:v38];

  v39 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v40 = [(ContaineeViewController *)self contentView];
  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  [v3 addObject:v42];

  v43 = +[NSBundle mainBundle];
  v44 = [v43 localizedStringForKey:@"[RoutePlanning][TimingPicker] Leave at" value:@"localized string not found" table:0];
  v124[0] = v44;
  v45 = +[NSBundle mainBundle];
  v46 = [v45 localizedStringForKey:@"[RoutePlanning][TimingPicker] Arrive by" value:@"localized string not found" table:0];
  v124[1] = v46;
  v118 = [NSArray arrayWithObjects:v124 count:2];

  v47 = [[UISegmentedControl alloc] initWithItems:v118];
  segmentControl = self->_segmentControl;
  self->_segmentControl = v47;

  [(UISegmentedControl *)self->_segmentControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RoutePlanningTimingViewController *)self _updateSegmentControl];
  [(UISegmentedControl *)self->_segmentControl addTarget:self action:"_pressedSegmentControl" forControlEvents:4096];
  [(UIScrollView *)self->_scrollView addSubview:self->_segmentControl];
  v49 = [(UISegmentedControl *)self->_segmentControl leadingAnchor];
  v50 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];
  [v3 addObject:v51];

  v52 = [(UISegmentedControl *)self->_segmentControl trailingAnchor];
  v53 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-16.0];
  [v3 addObject:v54];

  v55 = [(UISegmentedControl *)self->_segmentControl topAnchor];
  v56 = [(UIScrollView *)self->_scrollView topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:16.0];
  [v121 addObject:v57];

  v58 = [(UISegmentedControl *)self->_segmentControl bottomAnchor];
  v59 = [(UIScrollView *)self->_scrollView topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:0.0];
  [v122 addObject:v60];

  [(UISegmentedControl *)self->_segmentControl setSelectedSegmentIndex:!self->_isLeaveAt];
  v61 = objc_opt_new();
  datePicker = self->_datePicker;
  self->_datePicker = v61;

  [(UIDatePicker *)self->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIDatePicker *)self->_datePicker addTarget:self action:"_selectedDate" forControlEvents:4096];
  [(UIDatePicker *)self->_datePicker setRoundsToMinuteInterval:0];
  [(UIDatePicker *)self->_datePicker setMinuteInterval:1];
  [(UIDatePicker *)self->_datePicker setDate:self->_originalDate];
  v63 = +[NSDate _maps_maximumDateForRoutePlanning];
  [(UIDatePicker *)self->_datePicker setMaximumDate:v63];

  [(UIDatePicker *)self->_datePicker _setContinuousCornerRadius:10.0];
  v64 = [(UIDatePicker *)self->_datePicker layer];
  [v64 setMasksToBounds:1];

  [(UIScrollView *)self->_scrollView addSubview:self->_datePicker];
  v65 = [(UIDatePicker *)self->_datePicker widthAnchor];
  v66 = [(RoutePlanningTimingViewController *)self view];
  v67 = [v66 widthAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 constant:-32.0];
  datePickerWidthConstraint = self->_datePickerWidthConstraint;
  self->_datePickerWidthConstraint = v68;

  v70 = [(UIDatePicker *)self->_datePicker leadingAnchor];
  v71 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:16.0];
  datePickerLeadingConstraint = self->_datePickerLeadingConstraint;
  self->_datePickerLeadingConstraint = v72;

  v74 = [(UIDatePicker *)self->_datePicker trailingAnchor];
  v75 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v76 = [v74 constraintLessThanOrEqualToAnchor:v75 constant:-16.0];
  datePickerTrailingConstraint = self->_datePickerTrailingConstraint;
  self->_datePickerTrailingConstraint = v76;

  [v3 addObject:self->_datePickerLeadingConstraint];
  [v3 addObject:self->_datePickerTrailingConstraint];
  v78 = [(UIDatePicker *)self->_datePicker topAnchor];
  v79 = [(UISegmentedControl *)self->_segmentControl bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:16.0];
  [v121 addObject:v80];

  v81 = [(UIDatePicker *)self->_datePicker topAnchor];
  v82 = [(UIScrollView *)self->_scrollView topAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:16.0];
  [v122 addObject:v83];

  v84 = objc_opt_new();
  leaveNowButton = self->_leaveNowButton;
  self->_leaveNowButton = v84;

  [(UIButton *)self->_leaveNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_leaveNowButton addTarget:self action:"_pressedLeaveNow" forControlEvents:64];
  v86 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(UIButton *)self->_leaveNowButton setBackgroundColor:v86];

  v87 = [(UIButton *)self->_leaveNowButton titleLabel];
  [v87 setAdjustsFontForContentSizeCategory:1];

  [(UIButton *)self->_leaveNowButton _setContinuousCornerRadius:10.0];
  [(UIButton *)self->_leaveNowButton setContentHorizontalAlignment:4];
  [(UIButton *)self->_leaveNowButton setTitleEdgeInsets:0.0, 16.0, 0.0, 16.0];
  v88 = self->_leaveNowButton;
  v89 = +[NSBundle mainBundle];
  v90 = [v89 localizedStringForKey:@"[RoutePlanning][Timing] Leave Now" value:@"localized string not found" table:0];
  [(UIButton *)v88 setTitle:v90 forState:0];

  v91 = self->_leaveNowButton;
  v92 = +[UIColor systemBlueColor];
  [(UIButton *)v91 setTitleColor:v92 forState:0];

  v93 = self->_leaveNowButton;
  v94 = +[UIColor systemDarkGrayColor];
  [(UIButton *)v93 setTitleColor:v94 forState:2];

  [(RoutePlanningTimingViewController *)self _updateLeaveNowButton];
  [(UIScrollView *)self->_scrollView addSubview:self->_leaveNowButton];
  v95 = [(UIButton *)self->_leaveNowButton leadingAnchor];
  v96 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v97 = [v95 constraintEqualToAnchor:v96 constant:16.0];
  [v3 addObject:v97];

  v98 = [(UIButton *)self->_leaveNowButton trailingAnchor];
  v99 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:-16.0];
  [v3 addObject:v100];

  v101 = [(UIButton *)self->_leaveNowButton topAnchor];
  v102 = [(UIDatePicker *)self->_datePicker bottomAnchor];
  v103 = [v101 constraintEqualToAnchor:v102 constant:16.0];
  [v3 addObject:v103];

  v104 = [(UIButton *)self->_leaveNowButton bottomAnchor];
  v105 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v106 = [v104 constraintEqualToAnchor:v105 constant:-16.0];
  [v3 addObject:v106];

  v107 = [(UIButton *)self->_leaveNowButton widthAnchor];
  v108 = [(RoutePlanningTimingViewController *)self view];
  v109 = [v108 widthAnchor];
  v110 = [v107 constraintEqualToAnchor:v109 constant:-32.0];
  [v3 addObject:v110];

  v111 = [(UIButton *)self->_leaveNowButton heightAnchor];
  v112 = [v111 constraintGreaterThanOrEqualToConstant:50.0];
  [v3 addObject:v112];

  v113 = [v121 copy];
  constraintsShowingArriveBy = self->_constraintsShowingArriveBy;
  self->_constraintsShowingArriveBy = v113;

  v115 = [v122 copy];
  constraintsHidingArriveBy = self->_constraintsHidingArriveBy;
  self->_constraintsHidingArriveBy = v115;

  [(UISegmentedControl *)self->_segmentControl setHidden:!self->_showArriveBy];
  if (self->_showArriveBy)
  {
    v117 = 200;
  }

  else
  {
    v117 = 208;
  }

  [v3 addObjectsFromArray:*(&self->super.super.super.super.super.isa + v117)];
  [NSLayoutConstraint activateConstraints:v3];
  [(RoutePlanningTimingViewController *)self _updateDatePicker];
  [(RoutePlanningTimingViewController *)self setLeavingNow:self->_originalDate == 0];
}

- (RoutePlanningTimingViewController)initWithCurrentTiming:(id)a3 shouldShowArriveBy:(BOOL)a4 pickerDelegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = RoutePlanningTimingViewController;
  v10 = [(RoutePlanningTimingViewController *)&v22 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [v8 arrivalDate];
    v12 = v11;
    if (!v11)
    {
      v12 = [v8 departureDate];
    }

    objc_storeStrong(&v10->_originalDate, v12);
    if (!v11)
    {
    }

    v13 = [v8 arrivalDate];
    v10->_isLeaveAt = v13 == 0;

    v14 = [v8 departureTimeZone];
    originTimeZone = v10->_originTimeZone;
    v10->_originTimeZone = v14;

    v16 = [v8 arrivalTimeZone];
    destinationTimeZone = v10->_destinationTimeZone;
    v10->_destinationTimeZone = v16;

    v10->_showArriveBy = a4;
    objc_storeWeak(&v10->_pickerDelegate, v9);
    v18 = [(ContaineeViewController *)v10 cardPresentationController];
    [v18 setPresentedModally:1];

    v19 = [(ContaineeViewController *)v10 cardPresentationController];
    [v19 setTakesAvailableHeight:1];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v10 selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
  }

  return v10;
}

@end