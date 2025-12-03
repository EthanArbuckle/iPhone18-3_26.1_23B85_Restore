@interface RoutePlanningTimingViewController
- (BOOL)_shouldShowCompact;
- (NSTimeZone)destinationTimeZone;
- (NSTimeZone)originTimeZone;
- (RoutePlanningTimingViewController)initWithCurrentTiming:(id)timing shouldShowArriveBy:(BOOL)by pickerDelegate:(id)delegate;
- (RoutePlanningTimingViewControllerDelegate)pickerDelegate;
- (id)_currentTiming;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_pressedDone;
- (void)_pressedLeaveNow;
- (void)_pressedSegmentControl;
- (void)_selectedDate;
- (void)_updateDatePicker;
- (void)_updateLeaveNowButton;
- (void)_updateSegmentControl;
- (void)handleDismissAction:(id)action;
- (void)setDestinationTimeZone:(id)zone;
- (void)setLeavingNow:(BOOL)now;
- (void)setOriginTimeZone:(id)zone;
- (void)setShowArriveBy:(BOOL)by animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willResignCurrent:(BOOL)current;
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
  isLeavingNow = [(RoutePlanningTimingViewController *)self isLeavingNow];
  pickerDelegate = [(RoutePlanningTimingViewController *)self pickerDelegate];
  if (isLeavingNow)
  {
    +[RoutePlanningTiming leaveNowTiming];
  }

  else
  {
    [(RoutePlanningTimingViewController *)self _currentTiming];
  }
  v5 = ;
  [pickerDelegate timingViewController:self didPickTiming:v5];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController dismiss:!UIAccessibilityIsReduceMotionEnabled()];
}

- (void)handleDismissAction:(id)action
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController dismiss:!UIAccessibilityIsReduceMotionEnabled()];
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v22 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];

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
  traitCollection = [(RoutePlanningTimingViewController *)self traitCollection];
  v3 = [traitCollection verticalSizeClass] == 1;

  return v3;
}

- (id)_currentTiming
{
  isLeaveAt = self->_isLeaveAt;
  date = [(UIDatePicker *)self->_datePicker date];
  originTimeZone = [(RoutePlanningTimingViewController *)self originTimeZone];
  destinationTimeZone = [(RoutePlanningTimingViewController *)self destinationTimeZone];
  if (isLeaveAt)
  {
    [RoutePlanningTiming timingWithDepartureDate:date departureTimeZone:originTimeZone arrivalTimeZone:destinationTimeZone];
  }

  else
  {
    [RoutePlanningTiming timingWithArrivalDate:date departureTimeZone:originTimeZone arrivalTimeZone:destinationTimeZone];
  }
  v7 = ;

  return v7;
}

- (void)setDestinationTimeZone:(id)zone
{
  zoneCopy = zone;
  v6 = self->_destinationTimeZone;
  v7 = zoneCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_destinationTimeZone, zone);
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

- (void)setOriginTimeZone:(id)zone
{
  zoneCopy = zone;
  v6 = self->_originTimeZone;
  v7 = zoneCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_originTimeZone, zone);
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

- (void)setLeavingNow:(BOOL)now
{
  if (self->_leavingNow != now)
  {
    self->_leavingNow = now;
    [(UIButton *)self->_leaveNowButton setEnabled:!now];
  }
}

- (void)_updateLeaveNowButton
{
  traitCollection = [(RoutePlanningTimingViewController *)self traitCollection];
  v3 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];
  titleLabel = [(UIButton *)self->_leaveNowButton titleLabel];
  [titleLabel setFont:v4];
}

- (void)_updateSegmentControl
{
  traitCollection = [(RoutePlanningTimingViewController *)self traitCollection];
  v4 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v4];

  segmentControl = self->_segmentControl;
  v8 = NSFontAttributeName;
  v9 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(UISegmentedControl *)segmentControl setTitleTextAttributes:v7 forState:0];
}

- (void)_updateDatePicker
{
  _shouldShowCompact = [(RoutePlanningTimingViewController *)self _shouldShowCompact];
  if (_shouldShowCompact)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:v4];
  if (_shouldShowCompact)
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor secondarySystemGroupedBackgroundColor];
  }
  v5 = ;
  [(UIDatePicker *)self->_datePicker setBackgroundColor:v5];

  [(NSLayoutConstraint *)self->_datePickerWidthConstraint setActive:_shouldShowCompact ^ 1];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:appear];
  [(UIDatePicker *)self->_datePicker setMinuteInterval:5];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = RoutePlanningTimingViewController;
  [(MapsThemeViewController *)&v4 traitCollectionDidChange:change];
  [(RoutePlanningTimingViewController *)self _updateDatePicker];
  [(RoutePlanningTimingViewController *)self _updateSegmentControl];
  [(RoutePlanningTimingViewController *)self _updateLeaveNowButton];
}

- (void)setShowArriveBy:(BOOL)by animated:(BOOL)animated
{
  if (self->_showArriveBy != by)
  {
    v15[5] = v7;
    v15[6] = v6;
    v15[11] = v4;
    v15[12] = v5;
    animatedCopy = animated;
    self->_showArriveBy = by;
    if (!by && !self->_isLeaveAt)
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
    if (animatedCopy)
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

- (void)willBecomeCurrent:(BOOL)current
{
  v7.receiver = self;
  v7.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v7 willBecomeCurrent:current];
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

- (void)willResignCurrent:(BOOL)current
{
  v7.receiver = self;
  v7.super_class = RoutePlanningTimingViewController;
  [(ContaineeViewController *)&v7 willResignCurrent:current];
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
  headerView = [(ContaineeViewController *)self headerView];
  [headerView addSubview:v4];

  leadingAnchor = [(ModalCardHeaderView *)v4 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v11];

  trailingAnchor = [(ModalCardHeaderView *)v4 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v15];

  topAnchor = [(ModalCardHeaderView *)v4 topAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView4 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v19];

  bottomAnchor = [(ModalCardHeaderView *)v4 bottomAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v23];

  v24 = objc_opt_new();
  scrollView = self->_scrollView;
  self->_scrollView = v24;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView addSubview:self->_scrollView];

  leadingAnchor3 = [(UIScrollView *)self->_scrollView leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView2 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v3 addObject:v30];

  trailingAnchor3 = [(UIScrollView *)self->_scrollView trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v3 addObject:v34];

  topAnchor3 = [(UIScrollView *)self->_scrollView topAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView4 topAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v3 addObject:v38];

  bottomAnchor3 = [(UIScrollView *)self->_scrollView bottomAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
  leadingAnchor5 = [(UISegmentedControl *)self->_segmentControl leadingAnchor];
  leadingAnchor6 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v51 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  [v3 addObject:v51];

  trailingAnchor5 = [(UISegmentedControl *)self->_segmentControl trailingAnchor];
  trailingAnchor6 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v54 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  [v3 addObject:v54];

  topAnchor5 = [(UISegmentedControl *)self->_segmentControl topAnchor];
  topAnchor6 = [(UIScrollView *)self->_scrollView topAnchor];
  v57 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:16.0];
  [v121 addObject:v57];

  bottomAnchor5 = [(UISegmentedControl *)self->_segmentControl bottomAnchor];
  topAnchor7 = [(UIScrollView *)self->_scrollView topAnchor];
  v60 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:0.0];
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
  layer = [(UIDatePicker *)self->_datePicker layer];
  [layer setMasksToBounds:1];

  [(UIScrollView *)self->_scrollView addSubview:self->_datePicker];
  widthAnchor = [(UIDatePicker *)self->_datePicker widthAnchor];
  view = [(RoutePlanningTimingViewController *)self view];
  widthAnchor2 = [view widthAnchor];
  v68 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-32.0];
  datePickerWidthConstraint = self->_datePickerWidthConstraint;
  self->_datePickerWidthConstraint = v68;

  leadingAnchor7 = [(UIDatePicker *)self->_datePicker leadingAnchor];
  leadingAnchor8 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v72 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  datePickerLeadingConstraint = self->_datePickerLeadingConstraint;
  self->_datePickerLeadingConstraint = v72;

  trailingAnchor7 = [(UIDatePicker *)self->_datePicker trailingAnchor];
  trailingAnchor8 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v76 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8 constant:-16.0];
  datePickerTrailingConstraint = self->_datePickerTrailingConstraint;
  self->_datePickerTrailingConstraint = v76;

  [v3 addObject:self->_datePickerLeadingConstraint];
  [v3 addObject:self->_datePickerTrailingConstraint];
  topAnchor8 = [(UIDatePicker *)self->_datePicker topAnchor];
  bottomAnchor6 = [(UISegmentedControl *)self->_segmentControl bottomAnchor];
  v80 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:16.0];
  [v121 addObject:v80];

  topAnchor9 = [(UIDatePicker *)self->_datePicker topAnchor];
  topAnchor10 = [(UIScrollView *)self->_scrollView topAnchor];
  v83 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:16.0];
  [v122 addObject:v83];

  v84 = objc_opt_new();
  leaveNowButton = self->_leaveNowButton;
  self->_leaveNowButton = v84;

  [(UIButton *)self->_leaveNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_leaveNowButton addTarget:self action:"_pressedLeaveNow" forControlEvents:64];
  v86 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(UIButton *)self->_leaveNowButton setBackgroundColor:v86];

  titleLabel = [(UIButton *)self->_leaveNowButton titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

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
  leadingAnchor9 = [(UIButton *)self->_leaveNowButton leadingAnchor];
  leadingAnchor10 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v97 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
  [v3 addObject:v97];

  trailingAnchor9 = [(UIButton *)self->_leaveNowButton trailingAnchor];
  trailingAnchor10 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v100 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-16.0];
  [v3 addObject:v100];

  topAnchor11 = [(UIButton *)self->_leaveNowButton topAnchor];
  bottomAnchor7 = [(UIDatePicker *)self->_datePicker bottomAnchor];
  v103 = [topAnchor11 constraintEqualToAnchor:bottomAnchor7 constant:16.0];
  [v3 addObject:v103];

  bottomAnchor8 = [(UIButton *)self->_leaveNowButton bottomAnchor];
  bottomAnchor9 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v106 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-16.0];
  [v3 addObject:v106];

  widthAnchor3 = [(UIButton *)self->_leaveNowButton widthAnchor];
  view2 = [(RoutePlanningTimingViewController *)self view];
  widthAnchor4 = [view2 widthAnchor];
  v110 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:-32.0];
  [v3 addObject:v110];

  heightAnchor = [(UIButton *)self->_leaveNowButton heightAnchor];
  v112 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];
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

- (RoutePlanningTimingViewController)initWithCurrentTiming:(id)timing shouldShowArriveBy:(BOOL)by pickerDelegate:(id)delegate
{
  timingCopy = timing;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = RoutePlanningTimingViewController;
  v10 = [(RoutePlanningTimingViewController *)&v22 initWithNibName:0 bundle:0];
  if (v10)
  {
    arrivalDate = [timingCopy arrivalDate];
    departureDate = arrivalDate;
    if (!arrivalDate)
    {
      departureDate = [timingCopy departureDate];
    }

    objc_storeStrong(&v10->_originalDate, departureDate);
    if (!arrivalDate)
    {
    }

    arrivalDate2 = [timingCopy arrivalDate];
    v10->_isLeaveAt = arrivalDate2 == 0;

    departureTimeZone = [timingCopy departureTimeZone];
    originTimeZone = v10->_originTimeZone;
    v10->_originTimeZone = departureTimeZone;

    arrivalTimeZone = [timingCopy arrivalTimeZone];
    destinationTimeZone = v10->_destinationTimeZone;
    v10->_destinationTimeZone = arrivalTimeZone;

    v10->_showArriveBy = by;
    objc_storeWeak(&v10->_pickerDelegate, delegateCopy);
    cardPresentationController = [(ContaineeViewController *)v10 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v10 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v10 selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
  }

  return v10;
}

@end