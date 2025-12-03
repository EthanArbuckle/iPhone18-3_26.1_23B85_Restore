@interface EKUIAvailabilityViewController
+ (double)defaultTimelineHeight;
+ (id)cancelNextTimeString;
+ (id)nextTimeString;
+ (id)presentAvailabilityViewControllerForEvent:(id)event fromViewController:(id)controller;
- (BOOL)span:(id)span overlapsWithDate:(id)date;
- (BOOL)span:(id)span overlapsWithStartDate:(id)date endDate:(id)endDate;
- (BOOL)updateCurrentEventAtTime:(id)time;
- (CGRect)frameForFreeSpanViewAtStart:(id)start endDate:(id)date duration:(double)duration;
- (CGSize)preferredContentSize;
- (EKUIAvailabilityViewController)initWithEvent:(id)event isAttendeeProposeTime:(BOOL)time proposedStartDate:(id)date proposedEndDate:(id)endDate;
- (double)convertDateIntoOffset:(id)offset;
- (id)dedupSpans:(id)spans;
- (id)eventFreeSpanAtStart:(id)start endDate:(id)date isFreeSpan:(BOOL)span;
- (id)mergeSpan:(id)span intoSpans:(id)spans;
- (void)cancelTapped:(id)tapped;
- (void)clearFreeSpanViews;
- (void)configureNavBarAndToolBar;
- (void)configureParticipants;
- (void)configureUnavailableStateForEvent;
- (void)doneTapped:(id)tapped;
- (void)fetchAvailability;
- (void)findNextFreeSpan;
- (void)findPossibleEventRanges;
- (void)layout;
- (void)loadView;
- (void)nextAvailableTimeTapped:(id)tapped;
- (void)nextDayTapped:(id)tapped;
- (void)previousDayTapped:(id)tapped;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAvailabilityPanelAvailable:(BOOL)available unavailableMessage:(id)message;
- (void)setDate:(id)date;
- (void)singleTap:(id)tap;
- (void)sizeWillBeCompact:(BOOL)compact;
- (void)updateForContentCategory;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewPinched:(id)pinched;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation EKUIAvailabilityViewController

+ (id)presentAvailabilityViewControllerForEvent:(id)event fromViewController:(id)controller
{
  controllerCopy = controller;
  eventCopy = event;
  v7 = [[EKUIAvailabilityViewController alloc] initWithEvent:eventCopy];

  [(EKUIAvailabilityViewController *)v7 setFromDetail:1];
  v8 = [[EKUIAvailabilityNavigationController alloc] initWithRootViewController:v7];
  [(EKUIAvailabilityViewController *)v7 preferredContentSize];
  [(EKUIAvailabilityNavigationController *)v8 setPreferredContentSize:?];
  [controllerCopy presentViewController:v8 animated:1 completion:0];

  return v7;
}

- (EKUIAvailabilityViewController)initWithEvent:(id)event isAttendeeProposeTime:(BOOL)time proposedStartDate:(id)date proposedEndDate:(id)endDate
{
  v96[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  v90.receiver = self;
  v90.super_class = EKUIAvailabilityViewController;
  v14 = [(EKUIAvailabilityViewController *)&v90 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_event, event);
    v15->_isAttendeeProposeTime = time;
    v15->_availableWidth = 1440.0;
    v16 = objc_opt_new();
    participantAvailabilityViews = v15->_participantAvailabilityViews;
    v15->_participantAvailabilityViews = v16;

    v18 = objc_opt_new();
    freeSpanViews = v15->_freeSpanViews;
    v15->_freeSpanViews = v18;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

    if (dateCopy)
    {
      startDate = dateCopy;
    }

    else
    {
      startDate = [eventCopy startDate];
    }

    v22 = startDate;
    v89 = endDateCopy;
    if (endDateCopy)
    {
      endDateUnadjustedForLegacyClients = endDateCopy;
    }

    else
    {
      endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
    }

    endDateUnadjustedForLegacyClients2 = endDateUnadjustedForLegacyClients;
    startDate2 = v22;
    if (!time)
    {
      startDate2 = [eventCopy startDate];
    }

    objc_storeStrong(&v15->_modifiedStartDate, startDate2);
    v87 = endDateUnadjustedForLegacyClients2;
    if (!time)
    {

      endDateUnadjustedForLegacyClients2 = [eventCopy endDateUnadjustedForLegacyClients];
    }

    v88 = v22;
    objc_storeStrong(&v15->_modifiedEndDate, endDateUnadjustedForLegacyClients2);
    if (!time)
    {
    }

    v26 = objc_opt_new();
    hourLines = v15->_hourLines;
    v15->_hourLines = v26;

    v28 = objc_opt_new();
    availabilityRequestsQueue = v15->_availabilityRequestsQueue;
    v15->_availabilityRequestsQueue = v28;

    objc_opt_class();
    v30 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    [(NSOperationQueue *)v15->_availabilityRequestsQueue setName:v30];

    [(EKUIAvailabilityViewController *)v15 configureParticipants];
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:58.0];
    v15->_rowHeight = v31;
    v32 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v15 action:sel_cancelTapped_];
    cancelButton = v15->_cancelButton;
    v15->_cancelButton = v32;

    v34 = objc_opt_new();
    largeWeekdayLabel = v15->_largeWeekdayLabel;
    v15->_largeWeekdayLabel = v34;

    v36 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
    [(EKUIResizingDateLabel *)v15->_largeWeekdayLabel setFont:v36];

    v37 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:0 style:0 target:0 action:0];
    largeDateNavItem = v15->_largeDateNavItem;
    v15->_largeDateNavItem = v37;

    [(UIBarButtonItem *)v15->_largeDateNavItem setHidesSharedBackground:1];
    v39 = objc_opt_new();
    titleContainer = v15->_titleContainer;
    v15->_titleContainer = v39;

    [(EKUIAvailabilityTitleContainerView *)v15->_titleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = objc_opt_new();
    weekdayLabel = v15->_weekdayLabel;
    v15->_weekdayLabel = v41;

    v43 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
    [(EKUIResizingDateLabel *)v15->_weekdayLabel setFont:v43];

    [(EKUIResizingDateLabel *)v15->_weekdayLabel setTextAlignment:1];
    [(EKUIResizingDateLabel *)v15->_weekdayLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v44) = 1132068864;
    [(EKUIResizingDateLabel *)v15->_weekdayLabel setContentCompressionResistancePriority:0 forAxis:v44];
    [(EKUIAvailabilityTitleContainerView *)v15->_titleContainer addSubview:v15->_weekdayLabel];
    v45 = MEMORY[0x1E696ACD8];
    v95 = @"date";
    v96[0] = v15->_weekdayLabel;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
    v47 = [v45 constraintsWithVisualFormat:@"H:|[date]|" options:0 metrics:0 views:v46];
    [v45 activateConstraints:v47];

    v48 = MEMORY[0x1E696ACD8];
    v93 = @"date";
    v94 = v15->_weekdayLabel;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v50 = [v48 constraintsWithVisualFormat:@"V:|[date]|" options:0 metrics:0 views:v49];
    [v48 activateConstraints:v50];

    v51 = objc_alloc(MEMORY[0x1E69DC708]);
    v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
    v53 = [v51 initWithImage:v52 style:0 target:v15 action:sel_previousDayTapped_];
    previousButton = v15->_previousButton;
    v15->_previousButton = v53;

    v55 = objc_alloc(MEMORY[0x1E69DC708]);
    v56 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v57 = [v55 initWithImage:v56 style:0 target:v15 action:sel_nextDayTapped_];
    nextButton = v15->_nextButton;
    v15->_nextButton = v57;

    v59 = objc_alloc(MEMORY[0x1E69DC708]);
    v60 = +[EKUIAvailabilityViewController nextTimeString];
    v61 = [v59 initWithTitle:v60 style:0 target:v15 action:sel_nextAvailableTimeTapped_];
    topNextTime = v15->_topNextTime;
    v15->_topNextTime = v61;

    if ([(EKUIAvailabilityViewController *)v15 isAttendeeProposeTime])
    {
      [(UIBarButtonItem *)v15->_topNextTime setEnabled:1];
    }

    else
    {
      event = [(EKUIAvailabilityViewController *)v15 event];
      -[UIBarButtonItem setEnabled:](v15->_topNextTime, "setEnabled:", [event isEditable]);
    }

    v64 = MEMORY[0x1E695DFD8];
    v65 = +[EKUIAvailabilityViewController cancelNextTimeString];
    v92[0] = v65;
    v66 = +[EKUIAvailabilityViewController nextTimeString];
    v92[1] = v66;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    v68 = [v64 setWithArray:v67];
    [(UIBarButtonItem *)v15->_topNextTime setPossibleTitles:v68];

    v69 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:15.0];
    topSpacer = v15->_topSpacer;
    v15->_topSpacer = v69;

    v71 = objc_opt_new();
    [v71 startAnimating];
    v72 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v71];
    topSpinner = v15->_topSpinner;
    v15->_topSpinner = v72;

    v74 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v15 action:sel_doneTapped_];
    doneButton = v15->_doneButton;
    v15->_doneButton = v74;

    if ([(EKUIAvailabilityViewController *)v15 isAttendeeProposeTime])
    {
      [(UIBarButtonItem *)v15->_doneButton setEnabled:1];
    }

    else
    {
      event2 = [(EKUIAvailabilityViewController *)v15 event];
      -[UIBarButtonItem setEnabled:](v15->_doneButton, "setEnabled:", [event2 isEditable]);
    }

    v91[0] = v15->_topSpacer;
    v91[1] = v15->_topSpinner;
    v91[2] = v15->_doneButton;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
    navigationItem = [(EKUIAvailabilityViewController *)v15 navigationItem];
    [navigationItem setRightBarButtonItems:v77];

    v79 = objc_opt_new();
    [v79 startAnimating];
    v80 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v79];
    bottomSpinner = v15->_bottomSpinner;
    v15->_bottomSpinner = v80;

    v82 = objc_alloc(MEMORY[0x1E69DC708]);
    v83 = +[EKUIAvailabilityViewController nextTimeString];
    v84 = [v82 initWithTitle:v83 style:0 target:v15 action:sel_nextAvailableTimeTapped_];
    bottomNextTime = v15->_bottomNextTime;
    v15->_bottomNextTime = v84;

    v15->_fetchingData = 1;
    endDateCopy = v89;
  }

  return v15;
}

+ (id)nextTimeString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Next Available Time" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)cancelNextTimeString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Stop Searching" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (CGSize)preferredContentSize
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:18.0];
  v4 = v3 + 13.0;
  participants = [(EKUIAvailabilityViewController *)self participants];
  v6 = [participants count];

  v7 = 5;
  if (v6 > 5)
  {
    v7 = v6;
  }

  v8 = v7;
  [(EKUIAvailabilityViewController *)self rowHeight];
  v10 = v4 + v8 * v9;
  v11 = 880.0;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)viewWillLayoutSubviews
{
  traitCollection = [(EKUIAvailabilityViewController *)self traitCollection];
  -[EKUIAvailabilityViewController sizeWillBeCompact:](self, "sizeWillBeCompact:", [traitCollection horizontalSizeClass] == 1);

  v4.receiver = self;
  v4.super_class = EKUIAvailabilityViewController;
  [(EKUIAvailabilityViewController *)&v4 viewWillLayoutSubviews];
}

- (void)sizeWillBeCompact:(BOOL)compact
{
  compactCopy = compact;
  if ([(EKUIAvailabilityViewController *)self compact]!= compact)
  {
    view = [(EKUIAvailabilityViewController *)self view];
    window = [view window];
    v7 = EKUIInterfaceOrientationForViewHierarchy(window);

    traitCollection = [(EKUIAvailabilityViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];

    if (verticalSizeClass == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    [EKUIAvailabilityParticipantList listWidthForCompact:compactCopy orientation:v10];
    v12 = v11;
    participantWidthConstraint = [(EKUIAvailabilityViewController *)self participantWidthConstraint];
    [participantWidthConstraint setConstant:v12];

    [(EKUIAvailabilityViewController *)self setCompact:compactCopy];
    [(EKUIAvailabilityViewController *)self configureNavBarAndToolBar];

    [(EKUIAvailabilityViewController *)self layout];
  }
}

+ (double)defaultTimelineHeight
{
  v2 = MEMORY[0x1D38B98D0](self, a2);
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:18.0];
  v4 = 68.0;
  if (v2)
  {
    v4 = 20.0;
  }

  return v3 + v4;
}

- (void)configureNavBarAndToolBar
{
  v65[3] = *MEMORY[0x1E69E9840];
  navigationController = [(EKUIAvailabilityViewController *)self navigationController];
  [navigationController setToolbarHidden:-[EKUIAvailabilityViewController compact](self animated:{"compact") ^ 1, 0}];

  searchingForNextAvailableTime = [(EKUIAvailabilityViewController *)self searchingForNextAvailableTime];
  topNextTime = [(EKUIAvailabilityViewController *)self topNextTime];
  if (searchingForNextAvailableTime)
  {
    v6 = +[EKUIAvailabilityViewController cancelNextTimeString];
    [topNextTime setTitle:v6];

    bottomNextTime = [(EKUIAvailabilityViewController *)self bottomNextTime];
    +[EKUIAvailabilityViewController cancelNextTimeString];
  }

  else
  {
    v8 = +[EKUIAvailabilityViewController nextTimeString];
    [topNextTime setTitle:v8];

    bottomNextTime = [(EKUIAvailabilityViewController *)self bottomNextTime];
    +[EKUIAvailabilityViewController nextTimeString];
  }
  v9 = ;
  [bottomNextTime setTitle:v9];

  +[EKUIAvailabilityViewController defaultTimelineHeight];
  v11 = v10;
  timelineHeightConstraint = [(EKUIAvailabilityViewController *)self timelineHeightConstraint];
  [timelineHeightConstraint setConstant:v11];

  if ([(EKUIAvailabilityViewController *)self compact])
  {
    if ([(EKUIAvailabilityViewController *)self fetchingData]&& ![(EKUIAvailabilityViewController *)self searchingForNextAvailableTime])
    {
      flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v65[0] = flexibleSpaceItem;
      bottomSpinner = [(EKUIAvailabilityViewController *)self bottomSpinner];
      v65[1] = bottomSpinner;
      v15 = v65;
    }

    else
    {
      flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v64[0] = flexibleSpaceItem;
      bottomSpinner = [(EKUIAvailabilityViewController *)self bottomNextTime];
      v64[1] = bottomSpinner;
      v15 = v64;
    }

    flexibleSpaceItem2 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v15[2] = flexibleSpaceItem2;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    [(EKUIAvailabilityViewController *)self setToolbarItems:v23 animated:1];

    cancelButton = [(EKUIAvailabilityViewController *)self cancelButton];
    [cancelButton setSharesBackground:0];

    v25 = objc_alloc(MEMORY[0x1E69DC720]);
    cancelButton2 = [(EKUIAvailabilityViewController *)self cancelButton];
    v62 = cancelButton2;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    v28 = [v25 initWithBarButtonItems:v27 representativeItem:0];
    v63[0] = v28;
    v29 = objc_alloc(MEMORY[0x1E69DC720]);
    previousButton = [(EKUIAvailabilityViewController *)self previousButton];
    v61 = previousButton;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    v32 = [v29 initWithBarButtonItems:v31 representativeItem:0];
    v63[1] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    navigationItem = [(EKUIAvailabilityViewController *)self navigationItem];
    [navigationItem setLeadingItemGroups:v33];

    titleContainer = [(EKUIAvailabilityViewController *)self titleContainer];
    navigationItem2 = [(EKUIAvailabilityViewController *)self navigationItem];
    [navigationItem2 setTitleView:titleContainer];

    navigationItem3 = [(EKUIAvailabilityViewController *)self navigationItem];
    doneButton = [(EKUIAvailabilityViewController *)self doneButton];
    v60[0] = doneButton;
    nextButton = [(EKUIAvailabilityViewController *)self nextButton];
    v60[1] = nextButton;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    [navigationItem3 setRightBarButtonItems:v40 animated:0];
  }

  else
  {
    navigationItem4 = [(EKUIAvailabilityViewController *)self navigationItem];
    [navigationItem4 setTitleView:0];

    if ([(EKUIAvailabilityViewController *)self fetchingData]&& ![(EKUIAvailabilityViewController *)self searchingForNextAvailableTime])
    {
      navigationItem5 = [(EKUIAvailabilityViewController *)self navigationItem];
      doneButton2 = [(EKUIAvailabilityViewController *)self doneButton];
      v59[0] = doneButton2;
      topSpacer = [(EKUIAvailabilityViewController *)self topSpacer];
      v59[1] = topSpacer;
      topSpinner = [(EKUIAvailabilityViewController *)self topSpinner];
      v59[2] = topSpinner;
      v21 = v59;
    }

    else
    {
      navigationItem5 = [(EKUIAvailabilityViewController *)self navigationItem];
      doneButton2 = [(EKUIAvailabilityViewController *)self doneButton];
      v58[0] = doneButton2;
      topSpacer = [(EKUIAvailabilityViewController *)self topSpacer];
      v58[1] = topSpacer;
      topSpinner = [(EKUIAvailabilityViewController *)self topNextTime];
      v58[2] = topSpinner;
      v21 = v58;
    }

    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    [navigationItem5 setRightBarButtonItems:v41 animated:1];

    v42 = objc_alloc(MEMORY[0x1E69DC720]);
    cancelButton3 = [(EKUIAvailabilityViewController *)self cancelButton];
    v57 = cancelButton3;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    navigationItem3 = [v42 initWithBarButtonItems:v44 representativeItem:0];

    v45 = objc_alloc(MEMORY[0x1E69DC720]);
    previousButton2 = [(EKUIAvailabilityViewController *)self previousButton];
    v56[0] = previousButton2;
    nextButton2 = [(EKUIAvailabilityViewController *)self nextButton];
    v56[1] = nextButton2;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    doneButton = [v45 initWithBarButtonItems:v48 representativeItem:0];

    v49 = objc_alloc(MEMORY[0x1E69DC720]);
    largeDateNavItem = [(EKUIAvailabilityViewController *)self largeDateNavItem];
    v55 = largeDateNavItem;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    nextButton = [v49 initWithBarButtonItems:v51 representativeItem:0];

    v54[0] = navigationItem3;
    v54[1] = doneButton;
    v54[2] = nextButton;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    navigationItem6 = [(EKUIAvailabilityViewController *)self navigationItem];
    [navigationItem6 setLeadingItemGroups:v40];
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __59__EKUIAvailabilityViewController_configureNavBarAndToolBar__block_invoke;
  v53[3] = &unk_1E843EC60;
  v53[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v53);
  [(EKUIAvailabilityViewController *)self configureUnavailableStateForEvent];
}

- (void)cancelTapped:(id)tapped
{
  availabilityRequestsQueue = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  editDelegate = [(EKEditItemViewController *)self editDelegate];

  if (editDelegate)
  {
    editDelegate2 = [(EKEditItemViewController *)self editDelegate];
    [editDelegate2 editItemViewController:self didCompleteWithAction:0];
  }

  else
  {
    editDelegate2 = [(EKUIAvailabilityViewController *)self presentingViewController];
    [editDelegate2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)nextDayTapped:(id)tapped
{
  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentStartDate dateByAddingDays:1 inCalendar:currentCalendar];
  [(EKUIAvailabilityViewController *)self setDate:v5];
}

- (void)previousDayTapped:(id)tapped
{
  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentStartDate dateByAddingDays:-1 inCalendar:currentCalendar];
  [(EKUIAvailabilityViewController *)self setDate:v5];
}

- (void)nextAvailableTimeTapped:(id)tapped
{
  if ([(EKUIAvailabilityViewController *)self searchingForNextAvailableTime])
  {
    [(EKUIAvailabilityViewController *)self setSearchingForNextAvailableTime:0];

    [(EKUIAvailabilityViewController *)self configureNavBarAndToolBar];
  }

  else
  {
    [(EKUIAvailabilityViewController *)self setSearchingForNextAvailableTime:1];
    v4 = [MEMORY[0x1E695DF00] now];
    event = [(EKUIAvailabilityViewController *)self event];
    timeZone = [event timeZone];
    v8 = [v4 dateForStartOfDayInTimeZone:timeZone];

    currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
    LODWORD(event) = [currentStartDate isBeforeDate:v8];

    if (event)
    {
      [(EKUIAvailabilityViewController *)self setDate:v8];
    }

    else if (![(EKUIAvailabilityViewController *)self fetchingData])
    {
      [(EKUIAvailabilityViewController *)self findNextFreeSpan];
    }
  }
}

- (void)doneTapped:(id)tapped
{
  tappedCopy = tapped;
  availabilityRequestsQueue = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  modifiedStartDate = [(EKUIAvailabilityViewController *)self modifiedStartDate];
  isAttendeeProposeTime = [(EKUIAvailabilityViewController *)self isAttendeeProposeTime];
  event = [(EKUIAvailabilityViewController *)self event];
  v9 = event;
  if (isAttendeeProposeTime)
  {
    [event proposedStartDate];
  }

  else
  {
    [event startDate];
  }
  v10 = ;
  v11 = [modifiedStartDate isEqualToDate:v10];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EKUIAvailabilityViewController_doneTapped___block_invoke;
  aBlock[3] = &unk_1E843EC60;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  if (!-[EKUIAvailabilityViewController isAttendeeProposeTime](self, "isAttendeeProposeTime") && -[EKUIAvailabilityViewController fromDetail](self, "fromDetail") && (v13 = v11 ^ 1, -[EKUIAvailabilityViewController event](self, "event"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 hasChanges] | v13, v14, (v15 & 1) != 0))
  {
    event2 = [(EKUIAvailabilityViewController *)self event];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__EKUIAvailabilityViewController_doneTapped___block_invoke_2;
    v23[3] = &unk_1E843FA10;
    v24 = event2;
    selfCopy = self;
    v26 = tappedCopy;
    v27 = v12;
    v17 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
    v21 = event2;
    v22 = [EKUISendInviteAlertController presentInviteAlertWithOptions:4 sourceView:0 sourceRect:v26 sourceItem:self viewController:v23 withCompletionHandler:v17, v18, v19, v20];
  }

  else
  {
    v12[2](v12);
  }
}

void __45__EKUIAvailabilityViewController_doneTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editDelegate];

  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 saveAndDismiss];
  }

  else
  {
    v4 = [v3 presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void __45__EKUIAvailabilityViewController_doneTapped___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(a1 + 32) rollback];
  }

  else
  {
    if (a2)
    {
      return;
    }

    v3 = [*(a1 + 40) modifiedStartDate];
    [*(a1 + 32) setStartDate:v3];

    v4 = [*(a1 + 40) modifiedEndDate];
    [*(a1 + 32) setEndDateUnadjustedForLegacyClients:v4];

    if ([*(a1 + 32) isOrWasPartOfRecurringSeries])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__12;
      v20 = __Block_byref_object_dispose__12;
      v21 = 0;
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __45__EKUIAvailabilityViewController_doneTapped___block_invoke_133;
      v12[3] = &unk_1E84414C8;
      v12[4] = v6;
      v13 = v7;
      v14 = *(a1 + 56);
      v15 = &v16;
      v8 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v6 barButtonItem:v5 forEvent:v13 withCompletionHandler:v12];
      v9 = v17[5];
      v17[5] = v8;

      _Block_object_dispose(&v16, 8);
      return;
    }

    v10 = [*(a1 + 40) saveBlock];
    v10[2](v10, *(a1 + 32), 0);
  }

  v11 = *(*(a1 + 56) + 16);

  v11();
}

void __45__EKUIAvailabilityViewController_doneTapped___block_invoke_133(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    v13 = v3;
    v14 = v2;
    if (a2 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a2 == 1;
    }

    v10 = [*(a1 + 32) saveBlock];
    v10[2](v10, *(a1 + 40), v9);

    (*(*(a1 + 48) + 16))();
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

- (void)loadView
{
  v178[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v3 setBackgroundColor:systemGroupedBackgroundColor];

  v155 = v3;
  [(EKUIAvailabilityViewController *)self setView:v3];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setHidden:1];
  [v10 setNumberOfLines:3];
  [v10 setTextAlignment:1];
  v168 = *MEMORY[0x1E69DDCF8];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
  [v10 setFont:v11];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v10 setTextColor:secondaryLabelColor];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [(EKUIAvailabilityViewController *)self setUnavailableLabel:v10];
  view = [(EKUIAvailabilityViewController *)self view];
  [view addSubview:v10];

  v14 = MEMORY[0x1E696ACD8];
  view2 = [(EKUIAvailabilityViewController *)self view];
  v15 = [v14 constraintWithItem:v10 attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];
  v178[0] = v15;
  v16 = MEMORY[0x1E696ACD8];
  view3 = [(EKUIAvailabilityViewController *)self view];
  v18 = [v16 constraintWithItem:v10 attribute:10 relatedBy:0 toItem:view3 attribute:10 multiplier:1.0 constant:0.0];
  v178[1] = v18;
  v19 = MEMORY[0x1E696ACD8];
  view4 = [(EKUIAvailabilityViewController *)self view];
  v21 = [v19 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:view4 attribute:5 multiplier:1.0 constant:16.0];
  v178[2] = v21;
  v22 = MEMORY[0x1E696ACD8];
  view5 = [(EKUIAvailabilityViewController *)self view];
  v154 = v10;
  v24 = [v22 constraintWithItem:v10 attribute:3 relatedBy:0 toItem:view5 attribute:3 multiplier:1.0 constant:16.0];
  v178[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:4];
  [v14 activateConstraints:v25];

  v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v26 setBackgroundColor:systemBackgroundColor];

  [(EKUIAvailabilityViewController *)self setContainerView:v26];
  view6 = [(EKUIAvailabilityViewController *)self view];
  containerView = [(EKUIAvailabilityViewController *)self containerView];
  [view6 addSubview:containerView];

  v152 = MEMORY[0x1E696ACD8];
  topAnchor = [v26 topAnchor];
  view7 = [(EKUIAvailabilityViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v162 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v177[0] = v162;
  leadingAnchor = [v26 leadingAnchor];
  view8 = [(EKUIAvailabilityViewController *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v150 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v177[1] = v150;
  trailingAnchor = [v26 trailingAnchor];
  view9 = [(EKUIAvailabilityViewController *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v177[2] = v33;
  v173 = v26;
  bottomAnchor = [v26 bottomAnchor];
  view10 = [(EKUIAvailabilityViewController *)self view];
  bottomAnchor2 = [view10 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v177[3] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:4];
  [v152 activateConstraints:v38];

  v39 = objc_opt_new();
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setDelegate:self];
  [v39 setBounces:0];
  [v39 setContentInset:{10.0, 0.0, 10.0, 0.0}];
  if (MEMORY[0x1D38B98D0]([v39 setShowsHorizontalScrollIndicator:0]))
  {
    [v39 _setHiddenPocketEdges:15];
    [v39 _setPocketStyle:1 forEdge:1];
  }

  [(EKUIAvailabilityViewController *)self setScrollView:v39];
  v171 = v39;
  [v173 addSubview:v39];
  v40 = objc_opt_new();
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v40 setBackgroundColor:systemBackgroundColor2];

  [v173 addSubview:v40];
  v42 = objc_opt_new();
  inviteesLabel = self->_inviteesLabel;
  self->_inviteesLabel = v42;

  v44 = MEMORY[0x1E696AEC0];
  v45 = EventKitUIBundle();
  v46 = [v45 localizedStringForKey:@"Invitees (%lu)" value:&stru_1F4EF6790 table:0];
  participants = [(EKUIAvailabilityViewController *)self participants];
  v48 = [v44 stringWithFormat:v46, objc_msgSend(participants, "count")];
  [(UILabel *)self->_inviteesLabel setText:v48];

  v49 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v168];
  [(UILabel *)self->_inviteesLabel setFont:v49];

  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_inviteesLabel setTextColor:secondaryLabelColor2];

  [(UILabel *)self->_inviteesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_inviteesLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v51) = 1148846080;
  [(UILabel *)self->_inviteesLabel setContentHuggingPriority:0 forAxis:v51];
  [v40 addSubview:self->_inviteesLabel];
  v52 = objc_opt_new();
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v52 setBackgroundColor:separatorColor];

  v169 = v40;
  v165 = v52;
  [v40 addSubview:v52];
  v54 = [EKUIHorizontalGradientView alloc];
  systemBackgroundColor3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  systemBackgroundColor4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v57 = [systemBackgroundColor4 colorWithAlphaComponent:0.0];
  v58 = [(EKUIHorizontalGradientView *)v54 initWithStartColor:systemBackgroundColor3 endColor:v57 start:0.0 end:1.0];

  v163 = v58;
  [v173 addSubview:v58];
  v59 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_singleTap_];
  [v59 setNumberOfTapsRequired:1];
  if ([(EKUIAvailabilityViewController *)self isAttendeeProposeTime])
  {
    [v59 setEnabled:1];
  }

  else
  {
    event = [(EKUIAvailabilityViewController *)self event];
    [v59 setEnabled:{objc_msgSend(event, "isEditable")}];
  }

  [v59 setCancelsTouchesInView:0];
  v153 = v59;
  [v171 addGestureRecognizer:v59];
  v151 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_viewPinched_];
  [v171 addGestureRecognizer:?];
  v61 = [EKUIAvailabilityParticipantList alloc];
  participants2 = [(EKUIAvailabilityViewController *)self participants];
  v63 = [(EKUIAvailabilityParticipantList *)v61 initWithParticipants:participants2 viewController:self];

  [(EKUIAvailabilityParticipantList *)v63 setDelegate:self];
  [(EKUIAvailabilityParticipantList *)v63 setBounces:0];
  [(EKUIAvailabilityParticipantList *)v63 setShowsVerticalScrollIndicator:0];
  systemBackgroundColor5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(EKUIAvailabilityParticipantList *)v63 setBackgroundColor:systemBackgroundColor5];

  if (MEMORY[0x1D38B98D0]([(EKUIAvailabilityParticipantList *)v63 setContentInset:10.0, 0.0, 10.0, 0.0]))
  {
    [(EKUIAvailabilityParticipantList *)v63 _setHiddenPocketEdges:15];
    [(EKUIAvailabilityParticipantList *)v63 _setPocketStyle:1 forEdge:1];
  }

  [(EKUIAvailabilityViewController *)self setParticipantList:v63];
  v161 = v63;
  [v173 addSubview:v63];
  v65 = objc_opt_new();
  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
  separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
  [v65 setBackgroundColor:separatorColor2];

  v167 = v65;
  [v173 addSubview:v65];
  v67 = [EKUIHorizontalGradientView alloc];
  systemBackgroundColor6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v69 = [systemBackgroundColor6 colorWithAlphaComponent:0.0];
  systemBackgroundColor7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v71 = [(EKUIHorizontalGradientView *)v67 initWithStartColor:v69 endColor:systemBackgroundColor7 start:0.0 end:1.0];

  v159 = v71;
  [v173 addSubview:v71];
  v72 = objc_opt_new();
  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v72 setBackgroundColor:systemBackgroundColor8];

  [v72 setDelegate:self];
  [v72 setBounces:0];
  if (MEMORY[0x1D38B98D0]([v72 setShowsHorizontalScrollIndicator:0]))
  {
    [v72 _setHiddenPocketEdges:15];
    [v72 _setPocketStyle:1 forEdge:1];
  }

  [(EKUIAvailabilityViewController *)self setTimelineView:v72];
  [v173 addSubview:v72];
  v157 = v72;
  v74 = _NSDictionaryOfVariableBindings(&cfstr_ScrollviewPart.isa, v171, v161, v72, v40, v167, v165, self->_inviteesLabel, 0);
  [(EKUIAvailabilityParticipantList *)v161 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EKUIAvailabilityParticipantList *)v161 setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = MEMORY[0x1E696ACD8];
  view11 = [(EKUIAvailabilityViewController *)self view];
  window = [view11 window];
  [EKUIAvailabilityParticipantList listWidthForCompact:0 orientation:EKUIInterfaceOrientationForViewHierarchy(window)];
  v79 = [v75 constraintWithItem:v161 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v78];
  [(EKUIAvailabilityViewController *)self setParticipantWidthConstraint:v79];

  participantWidthConstraint = [(EKUIAvailabilityViewController *)self participantWidthConstraint];
  [participantWidthConstraint setActive:1];

  v81 = [MEMORY[0x1E696ACD8] constraintWithItem:v40 attribute:7 relatedBy:0 toItem:v161 attribute:7 multiplier:1.0 constant:0.0];
  [v81 setActive:1];

  v82 = MEMORY[0x1E696ACD8];
  v83 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[participantListHeader][timeLine]|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v82 activateConstraints:v83];

  v84 = MEMORY[0x1E696ACD8];
  v85 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[participantList][scrollView]|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v84 activateConstraints:v85];

  leadingAnchor3 = [(UILabel *)self->_inviteesLabel leadingAnchor];
  view12 = [(EKUIAvailabilityViewController *)self view];
  safeAreaLayoutGuide = [view12 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v90 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  [v90 setConstant:22.0];
  v148 = v90;
  [v90 setActive:1];
  v91 = MEMORY[0x1E696ACD8];
  v92 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_inviteesLabel]-(11)-|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v91 activateConstraints:v92];

  v93 = MEMORY[0x1E696ACD8];
  v94 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[participantDivider]|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v93 activateConstraints:v94];

  v95 = MEMORY[0x1E696ACD8];
  v96 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[participantDivider(==dividerWidth)]-(dividerWidth)-|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v95 activateConstraints:v96];

  v97 = MEMORY[0x1D38B98D0]();
  v98 = MEMORY[0x1E696ACD8];
  if (v97)
  {
    v99 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[participantListDivider]|" options:0 metrics:&unk_1F4F32978 views:v74];
    [v98 activateConstraints:v99];

    v100 = MEMORY[0x1E696ACD8];
    v101 = [MEMORY[0x1E696ACD8] constraintWithItem:v167 attribute:3 relatedBy:0 toItem:v161 attribute:3 multiplier:1.0 constant:0.0];
    v176 = v101;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
    [v100 activateConstraints:v102];
  }

  else
  {
    v101 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[participantListDivider]|" options:0 metrics:&unk_1F4F32978 views:v74];
    [v98 activateConstraints:v101];
  }

  v103 = MEMORY[0x1E696ACD8];
  v104 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[participantListDivider(==dividerWidth)][scrollView]" options:0 metrics:&unk_1F4F32978 views:v74];
  [v103 activateConstraints:v104];

  v105 = MEMORY[0x1E696ACD8];
  +[EKUIAvailabilityViewController defaultTimelineHeight];
  v107 = [v105 constraintWithItem:v157 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v106];
  [(EKUIAvailabilityViewController *)self setTimelineHeightConstraint:v107];

  timelineHeightConstraint = [(EKUIAvailabilityViewController *)self timelineHeightConstraint];
  [timelineHeightConstraint setActive:1];

  v109 = MEMORY[0x1D38B98D0]();
  if (v109)
  {
    v110 = @"V:|-[timeLine][scrollView]|";
  }

  else
  {
    v110 = @"V:|[timeLine][scrollView]|";
  }

  if (v109)
  {
    v111 = @"V:|-[participantListHeader][participantList]|";
  }

  else
  {
    v111 = @"V:|[participantListHeader][participantList]|";
  }

  v112 = MEMORY[0x1E696ACD8];
  v113 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v110 options:0 metrics:&unk_1F4F32978 views:v74];
  [v112 activateConstraints:v113];

  v114 = MEMORY[0x1E696ACD8];
  v149 = v74;
  v115 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v111 options:0 metrics:&unk_1F4F32978 views:v74];
  [v114 activateConstraints:v115];

  v116 = [MEMORY[0x1E696ACD8] constraintWithItem:v40 attribute:8 relatedBy:0 toItem:v157 attribute:8 multiplier:1.0 constant:0.0];
  [v116 setActive:1];

  v138 = MEMORY[0x1E696ACD8];
  leadingAnchor5 = [v163 leadingAnchor];
  trailingAnchor3 = [v40 trailingAnchor];
  v145 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
  v175[0] = v145;
  widthAnchor = [v163 widthAnchor];
  v143 = [widthAnchor constraintEqualToConstant:10.0];
  v175[1] = v143;
  topAnchor3 = [v163 topAnchor];
  topAnchor4 = [v40 topAnchor];
  v140 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v175[2] = v140;
  bottomAnchor3 = [v163 bottomAnchor];
  bottomAnchor4 = [v40 bottomAnchor];
  v136 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v175[3] = v136;
  trailingAnchor4 = [v159 trailingAnchor];
  trailingAnchor5 = [(EKUIAvailabilityParticipantList *)v161 trailingAnchor];
  v133 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v175[4] = v133;
  widthAnchor2 = [v159 widthAnchor];
  v118 = [widthAnchor2 constraintEqualToConstant:10.0];
  v175[5] = v118;
  topAnchor5 = [v159 topAnchor];
  topAnchor6 = [(EKUIAvailabilityParticipantList *)v161 topAnchor];
  v121 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v175[6] = v121;
  bottomAnchor5 = [v159 bottomAnchor];
  bottomAnchor6 = [(EKUIAvailabilityParticipantList *)v161 bottomAnchor];
  v124 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v175[7] = v124;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:8];
  [v138 activateConstraints:v125];

  v126 = 23;
  do
  {
    v127 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    separatorColor3 = [MEMORY[0x1E69DC888] separatorColor];
    [v127 setBackgroundColor:separatorColor3];

    scrollView = [(EKUIAvailabilityViewController *)self scrollView];
    [scrollView addSubview:v127];

    hourLines = [(EKUIAvailabilityViewController *)self hourLines];
    [hourLines addObject:v127];

    --v126;
  }

  while (v126);
  participants3 = [(EKUIAvailabilityViewController *)self participants];
  v174[0] = MEMORY[0x1E69E9820];
  v174[1] = 3221225472;
  v174[2] = __42__EKUIAvailabilityViewController_loadView__block_invoke;
  v174[3] = &unk_1E84414F0;
  v174[4] = self;
  [participants3 enumerateObjectsUsingBlock:v174];

  [v173 bringSubviewToFront:v159];
  [v173 bringSubviewToFront:v163];
  [v173 bringSubviewToFront:v167];
  [(EKUIAvailabilityViewController *)self updateForContentCategory];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
}

void __42__EKUIAvailabilityViewController_loadView__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v10 = [[EKUIAvailabilityRowView alloc] initWithParticipant:v5];

  if (a3)
  {
    v6 = [MEMORY[0x1E69DC888] systemGrayColor];
    v7 = [v6 colorWithAlphaComponent:0.05];
    [(EKUIAvailabilityRowView *)v10 setBackgroundColor:v7];
  }

  v8 = [*(a1 + 32) participantAvailabilityViews];
  [v8 addObject:v10];

  v9 = [*(a1 + 32) scrollView];
  [v9 addSubview:v10];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = EKUIAvailabilityViewController;
  [(EKEditItemViewController *)&v3 viewDidLoad];
  [(EKUIAvailabilityViewController *)self configureUnavailableStateForEvent];
}

- (void)configureUnavailableStateForEvent
{
  v3 = MEMORY[0x1E6966988];
  event = [(EKUIAvailabilityViewController *)self event];
  v5 = [v3 availabilityPanelVisibilityForEvent:event];

  if (v5 > 2)
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v6 = EventKitUIBundle();
        v9 = v6;
        v7 = @"You can only see availability for events with invitees.";
      }

      else
      {
        if (v5 != 6)
        {
          return;
        }

        v6 = EventKitUIBundle();
        v9 = v6;
        v7 = @"You cannot see the status of attendees.";
      }
    }

    else
    {
      v6 = EventKitUIBundle();
      v9 = v6;
      if (v5 == 3)
      {
        v7 = @"You cannot see availability for all-day events.";
      }

      else
      {
        v7 = @"You cannot see availability for events spanning multiple days.";
      }
    }

    goto LABEL_19;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = EventKitUIBundle();
      v9 = v6;
      v7 = @"No event is selected.";
    }

    else
    {
      if (v5 != 2)
      {
        return;
      }

      v6 = EventKitUIBundle();
      v9 = v6;
      v7 = @"This calendar does not support availability.";
    }

LABEL_19:
    v8 = [v6 localizedStringForKey:v7 value:&stru_1F4EF6790 table:0];
    [(EKUIAvailabilityViewController *)self setAvailabilityPanelAvailable:0 unavailableMessage:v8];

    return;
  }

  [(EKUIAvailabilityViewController *)self setAvailabilityPanelAvailable:1 unavailableMessage:0];
}

- (void)setAvailabilityPanelAvailable:(BOOL)available unavailableMessage:(id)message
{
  availableCopy = available;
  messageCopy = message;
  unavailableLabel = [(EKUIAvailabilityViewController *)self unavailableLabel];
  v7 = unavailableLabel;
  if (availableCopy)
  {
    [unavailableLabel setHidden:1];

    [(UIBarButtonItem *)self->_previousButton setEnabled:1];
    [(UIBarButtonItem *)self->_nextButton setEnabled:1];
    if ([(EKUIAvailabilityViewController *)self isAttendeeProposeTime])
    {
      [(UIBarButtonItem *)self->_topNextTime setEnabled:1];
    }

    else
    {
      event = [(EKUIAvailabilityViewController *)self event];
      -[UIBarButtonItem setEnabled:](self->_topNextTime, "setEnabled:", [event isEditable]);
    }

    if ([(EKUIAvailabilityViewController *)self isAttendeeProposeTime])
    {
      [(UIBarButtonItem *)self->_doneButton setEnabled:1];
    }

    else
    {
      event2 = [(EKUIAvailabilityViewController *)self event];
      -[UIBarButtonItem setEnabled:](self->_doneButton, "setEnabled:", [event2 isEditable]);
    }

    containerView = [(EKUIAvailabilityViewController *)self containerView];
    [containerView setHidden:0];

    navigationController = [(EKUIAvailabilityViewController *)self navigationController];
    v12 = [(EKUIAvailabilityViewController *)self compact]^ 1;
    navigationController2 = navigationController;
  }

  else
  {
    [unavailableLabel setHidden:0];

    unavailableLabel2 = [(EKUIAvailabilityViewController *)self unavailableLabel];
    [unavailableLabel2 setText:messageCopy];

    [(UIBarButtonItem *)self->_previousButton setEnabled:0];
    [(UIBarButtonItem *)self->_nextButton setEnabled:0];
    [(UIBarButtonItem *)self->_topNextTime setEnabled:0];
    [(UIBarButtonItem *)self->_doneButton setEnabled:0];
    containerView2 = [(EKUIAvailabilityViewController *)self containerView];
    [containerView2 setHidden:1];

    navigationController2 = [(EKUIAvailabilityViewController *)self navigationController];
    navigationController = navigationController2;
    v12 = 1;
  }

  [navigationController2 setToolbarHidden:v12 animated:0];
}

- (void)updateForContentCategory
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:58.0];
  [(EKUIAvailabilityViewController *)self setRowHeight:?];
  traitCollection = [(EKUIAvailabilityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = *MEMORY[0x1E69DDC60];

  if (preferredContentSizeCategory <= v5)
  {
    v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    weekdayLabel = [(EKUIAvailabilityViewController *)self weekdayLabel];
    [weekdayLabel setFont:v13];

    v15 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    largeWeekdayLabel = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
    [largeWeekdayLabel setFont:v15];

    v17 = MEMORY[0x1E696AEC0];
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Invitees (%lu)" value:&stru_1F4EF6790 table:0];
    participants = [(EKUIAvailabilityViewController *)self participants];
    v18 = [v17 stringWithFormat:v11, objc_msgSend(participants, "count")];
    inviteesLabel = [(EKUIAvailabilityViewController *)self inviteesLabel];
    [inviteesLabel setText:v18];
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:22.0];
    weekdayLabel2 = [(EKUIAvailabilityViewController *)self weekdayLabel];
    [weekdayLabel2 setFont:v6];

    v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:22.0];
    largeWeekdayLabel2 = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
    [largeWeekdayLabel2 setFont:v8];

    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Invitees" value:&stru_1F4EF6790 table:0];
    participants = [(EKUIAvailabilityViewController *)self inviteesLabel];
    [participants setText:v11];
  }

  +[EKUIAvailabilityViewController defaultTimelineHeight];
  v21 = v20;
  timelineHeightConstraint = [(EKUIAvailabilityViewController *)self timelineHeightConstraint];
  [timelineHeightConstraint setConstant:v21];

  timelineView = [(EKUIAvailabilityViewController *)self timelineView];
  [timelineView setLabels];

  view = [(EKUIAvailabilityViewController *)self view];
  [view setNeedsLayout];
}

- (void)configureParticipants
{
  v3 = MEMORY[0x1E69933A8];
  event = [(EKUIAvailabilityViewController *)self event];
  v4 = [v3 participantsForAvailabilityViewControllerFromEvent:event];
  [(EKUIAvailabilityViewController *)self setParticipants:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = EKUIAvailabilityViewController;
  [(EKEditItemViewController *)&v5 viewWillAppear:appear];
  modifiedStartDate = [(EKUIAvailabilityViewController *)self modifiedStartDate];
  [(EKUIAvailabilityViewController *)self setDate:modifiedStartDate];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = EKUIAvailabilityViewController;
  [(EKUIAvailabilityViewController *)&v7 viewDidAppear:appear];
  modifiedStartDate = [(EKUIAvailabilityViewController *)self modifiedStartDate];
  v5 = [(EKUIAvailabilityViewController *)self updateCurrentEventAtTime:modifiedStartDate];

  if (!v5)
  {
    scrollView = [(EKUIAvailabilityViewController *)self scrollView];
    [scrollView setContentOffset:{510.0, 0.0}];
  }
}

- (void)layout
{
  v60 = *MEMORY[0x1E69E9840];
  weekdayLabel = [(EKUIAvailabilityViewController *)self weekdayLabel];
  [weekdayLabel layoutSubviews];

  largeWeekdayLabel = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
  [largeWeekdayLabel layoutSubviews];

  view = [(EKUIAvailabilityViewController *)self view];
  window = [view window];
  v7 = EKUIInterfaceOrientationForViewHierarchy(window);

  if (![(EKUIAvailabilityViewController *)self compact])
  {
    if (CalInterfaceIsLeftToRight())
    {
      [EKUIAvailabilityParticipantList listWidthForCompact:0 orientation:v7];
    }

    else
    {
      view2 = [(EKUIAvailabilityViewController *)self view];
      [view2 frame];
      [EKUIAvailabilityParticipantList listWidthForCompact:0 orientation:v7];
    }
  }

  participantAvailabilityViews = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v10 = [participantAvailabilityViews count];
  [(EKUIAvailabilityViewController *)self rowHeight];
  v12 = v11 * v10;

  participantList = [(EKUIAvailabilityViewController *)self participantList];
  [(EKUIAvailabilityViewController *)self rowHeight];
  [participantList setRowHeight:?];

  [EKUIAvailabilityParticipantList listWidthForCompact:[(EKUIAvailabilityViewController *)self compact] orientation:v7];
  v15 = v14;
  participantList2 = [(EKUIAvailabilityViewController *)self participantList];
  [participantList2 setContentSize:{v15, v12}];

  timelineView = [(EKUIAvailabilityViewController *)self timelineView];
  [(EKUIAvailabilityViewController *)self timelineWidth];
  [timelineView setContentWidth:?];

  hourLines = [(EKUIAvailabilityViewController *)self hourLines];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __40__EKUIAvailabilityViewController_layout__block_invoke;
  v57[3] = &unk_1E8441518;
  v57[4] = self;
  *&v57[5] = v12;
  [hourLines enumerateObjectsUsingBlock:v57];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  participantAvailabilityViews2 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v20 = [participantAvailabilityViews2 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(participantAvailabilityViews2);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        [(EKUIAvailabilityViewController *)self availableWidth];
        v27 = v26;
        [(EKUIAvailabilityViewController *)self rowHeight];
        [v25 setFrame:{0.0, v23, v27, v28}];
        [(EKUIAvailabilityViewController *)self rowHeight];
        v23 = v23 + v29;
      }

      v21 = [participantAvailabilityViews2 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v21);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  freeSpanViews = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v31 = [freeSpanViews countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(freeSpanViews);
        }

        v35 = *(*(&v49 + 1) + 8 * j);
        startDate = [v35 startDate];
        endDate = [v35 endDate];
        [(EKUIAvailabilityViewController *)self frameForFreeSpanViewAtStart:startDate endDate:endDate duration:0.0];
        [v35 setFrame:?];

        [v35 setNeedsDisplay];
      }

      v32 = [freeSpanViews countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v32);
  }

  eventTime = [(EKUIAvailabilityViewController *)self eventTime];
  eventTime2 = [(EKUIAvailabilityViewController *)self eventTime];
  startDate2 = [eventTime2 startDate];
  event = [(EKUIAvailabilityViewController *)self event];
  [event duration];
  [(EKUIAvailabilityViewController *)self frameForFreeSpanViewAtStart:startDate2 endDate:0 duration:?];
  [eventTime setFrame:?];

  [(EKUIAvailabilityViewController *)self availableWidth];
  v43 = v42;
  participantAvailabilityViews3 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v45 = [participantAvailabilityViews3 count];
  [(EKUIAvailabilityViewController *)self rowHeight];
  v47 = v46 * v45;
  scrollView = [(EKUIAvailabilityViewController *)self scrollView];
  [scrollView setContentSize:{v43, v47}];
}

void __40__EKUIAvailabilityViewController_layout__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v13 = a2;
  [v5 timelineWidth];
  v7 = (a3 + 1) / 24.0 * v6 + -0.5;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) scrollView];
  [v9 frame];
  v11 = v10;

  if (v8 >= v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  [v13 setFrame:{v7, -10.0, 0.5, v12 + 20.0}];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  event = [(EKUIAvailabilityViewController *)self event];
  timeZone = [event timeZone];
  v6 = [dateCopy dateForStartOfDayInTimeZone:timeZone];

  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  LOBYTE(timeZone) = [v6 isEqualToDate:currentStartDate];

  if ((timeZone & 1) == 0)
  {
    [(EKUIAvailabilityViewController *)self setCurrentStartDate:v6];
    weekdayLabel = [(EKUIAvailabilityViewController *)self weekdayLabel];
    [weekdayLabel setDate:dateCopy];

    largeWeekdayLabel = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
    [largeWeekdayLabel setDate:dateCopy];

    v10 = CUIKLongDayStringForDate();
    largeDateNavItem = [(EKUIAvailabilityViewController *)self largeDateNavItem];
    [largeDateNavItem setTitle:v10];

    eventTime = [(EKUIAvailabilityViewController *)self eventTime];
    [eventTime removeFromSuperview];

    [(EKUIAvailabilityViewController *)self setEventTime:0];
    [(EKUIAvailabilityViewController *)self clearFreeSpanViews];
    [(EKUIAvailabilityViewController *)self fetchAvailability];
  }
}

- (void)clearFreeSpanViews
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  freeSpanViews = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v4 = [freeSpanViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(freeSpanViews);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [freeSpanViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  freeSpanViews2 = [(EKUIAvailabilityViewController *)self freeSpanViews];
  [freeSpanViews2 removeAllObjects];
}

- (void)fetchAvailability
{
  v45 = *MEMORY[0x1E69E9840];
  [(EKUIAvailabilityViewController *)self setFetchingData:1];
  [(EKUIAvailabilityViewController *)self configureNavBarAndToolBar];
  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  v28 = [currentStartDate dateByAddingTimeInterval:86399.0];

  objc_initWeak(&location, self);
  availabilityRequestsQueue = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  v5 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  participantAvailabilityViews = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v7 = [participantAvailabilityViews countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(participantAvailabilityViews);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        currentStartDate2 = [(EKUIAvailabilityViewController *)self currentStartDate];
        [v10 startLoadForDate:currentStartDate2];

        participant = [v10 participant];
        v13 = [participant URL];
        absoluteString = [v13 absoluteString];

        [v5 setObject:v10 forKeyedSubscript:absoluteString];
        ++v9;
      }

      while (v7 != v9);
      v7 = [participantAvailabilityViews countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  currentStartDate3 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v16 = objc_alloc(MEMORY[0x1E6966AE0]);
  event = [(EKUIAvailabilityViewController *)self event];
  calendar = [event calendar];
  source = [calendar source];
  currentStartDate4 = [(EKUIAvailabilityViewController *)self currentStartDate];
  event2 = [(EKUIAvailabilityViewController *)self event];
  allKeys = [v5 allKeys];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke;
  v35[3] = &unk_1E8441540;
  objc_copyWeak(&v38, &location);
  v23 = currentStartDate3;
  v36 = v23;
  v24 = v5;
  v37 = v24;
  v25 = [v16 initWithSource:source startDate:currentStartDate4 endDate:v28 ignoredEvent:event2 addresses:allKeys resultsBlock:v35];

  objc_initWeak(&from, v25);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke_3;
  v29[3] = &unk_1E8441568;
  objc_copyWeak(&v32, &location);
  v26 = v23;
  v30 = v26;
  objc_copyWeak(&v33, &from);
  selfCopy = self;
  [v25 setCompletionBlock:v29];
  availabilityRequestsQueue2 = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [availabilityRequestsQueue2 addOperation:v25];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  v6 = [WeakRetained currentStartDate];
  LODWORD(v5) = [v5 isEqualToDate:v6];

  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke_2;
    v7[3] = &unk_1E843EF90;
    v8 = *(a1 + 40);
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:a2];
  [v6 addToSpans:v5];
}

void __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [WeakRetained currentStartDate];
  LODWORD(v3) = [v3 isEqualToDate:v4];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    if (([v5 isCancelled] & 1) == 0)
    {
      [WeakRetained setFetchingData:0];
      v6 = [v5 error];

      if (v6)
      {
        [*(a1 + 40) setSearchingForNextAvailableTime:0];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [*(a1 + 40) participantAvailabilityViews];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            v11 = 0;
            do
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v22 + 1) + 8 * v11++) completedLoad];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v9);
        }
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = [*(a1 + 40) participantAvailabilityViews];
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            v16 = 0;
            do
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v18 + 1) + 8 * v16++) completedLoad];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v14);
        }

        [*(a1 + 40) findPossibleEventRanges];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke_4;
      block[3] = &unk_1E843EC60;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (BOOL)span:(id)span overlapsWithDate:(id)date
{
  spanCopy = span;
  dateCopy = date;
  startDate = [spanCopy startDate];
  if ([startDate CalIsBeforeOrSameAsDate:dateCopy])
  {
    endDate = [spanCopy endDate];
    v9 = [endDate CalIsAfterOrSameAsDate:dateCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dedupSpans:(id)spans
{
  v38 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v24 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = spansCopy;
  v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v25)
  {
    v23 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = v24;
        v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (!v7)
        {

LABEL_18:
          [v6 addObject:v5];
          continue;
        }

        v8 = v7;
        v26 = i;
        v27 = v5;
        v9 = 0;
        v10 = *v29;
        do
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v28 + 1) + 8 * j);
            startDate = [v12 startDate];
            startDate2 = [v5 startDate];
            if ([startDate isEqualToDate:startDate2])
            {
              endDate = [v12 endDate];
              [v5 endDate];
              v16 = v10;
              v18 = v17 = v9;
              v19 = v6;
              v20 = [endDate isEqualToDate:v18];

              LODWORD(v18) = v17;
              v10 = v16;

              v9 = v20 | v18;
              v6 = v19;
              v5 = v27;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v8);

        i = v26;
        if ((v9 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  return v24;
}

- (id)mergeSpan:(id)span intoSpans:(id)spans
{
  v46 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  spansCopy = spans;
  if (![MEMORY[0x1E6966988] showTypeAsBusy:{objc_msgSend(spanCopy, "type")}])
  {
    goto LABEL_22;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [spansCopy copy];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v9)
  {

LABEL_20:
    v30 = objc_alloc(MEMORY[0x1E6966980]);
    startDate = [spanCopy startDate];
    endDate = [spanCopy endDate];
    v28 = [v30 initWithStartDate:startDate endDate:endDate type:{objc_msgSend(spanCopy, "type")}];

    [spansCopy addObject:v28];
    goto LABEL_21;
  }

  v10 = v9;
  v37 = spansCopy;
  selfCopy = self;
  v40 = 0;
  v11 = *v42;
  v39 = spanCopy;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v41 + 1) + 8 * i);
      startDate2 = [spanCopy startDate];
      startDate3 = [v13 startDate];
      if ([startDate2 CalIsAfterOrSameAsDate:startDate3])
      {
        [spanCopy endDate];
        v16 = v11;
        v18 = v17 = v8;
        [v13 endDate];
        v20 = v19 = v10;
        v21 = [v18 CalIsBeforeOrSameAsDate:v20];

        v10 = v19;
        v8 = v17;
        v11 = v16;
        self = selfCopy;
        spanCopy = v39;

        if (v21)
        {
          v29 = v37;

          goto LABEL_23;
        }
      }

      else
      {
      }

      startDate4 = [v13 startDate];
      v23 = [(EKUIAvailabilityViewController *)self span:spanCopy overlapsWithDate:startDate4];

      if (v23)
      {
        startDate5 = [spanCopy startDate];
        [v13 setStartDate:startDate5];

        v40 = 1;
      }

      endDate2 = [v13 endDate];
      v26 = [(EKUIAvailabilityViewController *)self span:spanCopy overlapsWithDate:endDate2];

      if (v26)
      {
        endDate3 = [spanCopy endDate];
        [v13 setEndDate:endDate3];

        v40 = 1;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v10);

  spansCopy = v37;
  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }

  [(EKUIAvailabilityViewController *)self dedupSpans:v37];
  spansCopy = v28 = v37;
LABEL_21:

  v33 = MEMORY[0x1E695DF70];
  v34 = [spansCopy sortedArrayUsingComparator:&__block_literal_global_35];
  v35 = [v33 arrayWithArray:v34];

  spansCopy = v35;
LABEL_22:
  v29 = spansCopy;
LABEL_23:

  return v29;
}

uint64_t __54__EKUIAvailabilityViewController_mergeSpan_intoSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)findPossibleEventRanges
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        spans = [v8 spans];
        v10 = [spans countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v38;
          do
          {
            v13 = 0;
            v14 = v3;
            do
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(spans);
              }

              v3 = [(EKUIAvailabilityViewController *)self mergeSpan:*(*(&v37 + 1) + 8 * v13) intoSpans:v14];

              ++v13;
              v14 = v3;
            }

            while (v11 != v13);
            v11 = [spans countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  v15 = objc_opt_new();
  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      v22 = currentStartDate;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v33 + 1) + 8 * v21);
        startDate = [v23 startDate];
        v25 = [v22 CalIsBeforeDate:startDate];

        if (v25)
        {
          v26 = objc_alloc(MEMORY[0x1E6966980]);
          startDate2 = [v23 startDate];
          v28 = [v26 initWithStartDate:v22 endDate:startDate2 type:2];

          [v15 addObject:v28];
        }

        currentStartDate = [v23 endDate];

        ++v21;
        v22 = currentStartDate;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v19);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__EKUIAvailabilityViewController_findPossibleEventRanges__block_invoke;
  block[3] = &unk_1E843EFB8;
  block[4] = self;
  v32 = v15;
  v29 = v15;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__EKUIAvailabilityViewController_findPossibleEventRanges__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) clearFreeSpanViews];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [v7 endDate];
        v9 = [v7 startDate];
        [v8 timeIntervalSinceDate:v9];
        v11 = v10;

        v12 = [*(a1 + 32) event];
        [v12 duration];
        v14 = v13;

        if (v11 >= v14)
        {
          v15 = *(a1 + 32);
          v16 = [v7 startDate];
          v17 = [v7 endDate];
          v18 = [v15 eventFreeSpanAtStart:v16 endDate:v17 isFreeSpan:1];

          v19 = [*(a1 + 32) freeSpanViews];
          [v19 addObject:v18];

          v20 = [*(a1 + 32) scrollView];
          [v20 addSubview:v18];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  v21 = *(a1 + 32);
  v22 = [v21 modifiedStartDate];
  [v21 updateCurrentEventAtTime:v22];

  result = [*(a1 + 32) searchingForNextAvailableTime];
  if (result)
  {
    return [*(a1 + 32) findNextFreeSpan];
  }

  return result;
}

- (void)findNextFreeSpan
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  freeSpanViews = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v4 = [freeSpanViews countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v30 != v6)
      {
        objc_enumerationMutation(freeSpanViews);
      }

      v8 = *(*(&v29 + 1) + 8 * v7);
      startDate = [v8 startDate];
      modifiedStartDate = [(EKUIAvailabilityViewController *)self modifiedStartDate];
      v11 = [startDate isAfterDate:modifiedStartDate];

      if (v11)
      {
        break;
      }

      endDate = [v8 endDate];
      modifiedEndDate = [(EKUIAvailabilityViewController *)self modifiedEndDate];
      v14 = [endDate isAfterDate:modifiedEndDate];

      if (v14)
      {
        modifiedStartDate2 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v19 = [modifiedStartDate2 dateByAddingHours:1 inCalendar:currentCalendar];
        [(EKUIAvailabilityViewController *)self setModifiedStartDate:v19];

        modifiedStartDate3 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
        event = [(EKUIAvailabilityViewController *)self event];
        [event duration];
        v22 = [modifiedStartDate3 dateByAddingTimeInterval:?];

        endDate2 = [v8 endDate];
        LOBYTE(event) = [v22 isBeforeDate:endDate2];

        if ((event & 1) == 0)
        {
          endDate3 = [v8 endDate];
          event2 = [(EKUIAvailabilityViewController *)self event];
          [event2 duration];
          v27 = [endDate3 dateByAddingTimeInterval:-v26];
          [(EKUIAvailabilityViewController *)self setModifiedStartDate:v27];
        }

        modifiedStartDate4 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
        [(EKUIAvailabilityViewController *)self updateCurrentEventAtTime:modifiedStartDate4];

        [(EKUIAvailabilityViewController *)self setSearchingForNextAvailableTime:0];
        goto LABEL_15;
      }

      if (v5 == ++v7)
      {
        v5 = [freeSpanViews countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    startDate2 = [v8 startDate];
    [(EKUIAvailabilityViewController *)self setModifiedStartDate:startDate2];

    modifiedStartDate5 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
    [(EKUIAvailabilityViewController *)self updateCurrentEventAtTime:modifiedStartDate5];

    [(EKUIAvailabilityViewController *)self setSearchingForNextAvailableTime:0];
LABEL_15:

    return;
  }

LABEL_10:

  [(EKUIAvailabilityViewController *)self nextDayTapped:0];
}

- (void)singleTap:(id)tap
{
  v44 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  scrollView = [(EKUIAvailabilityViewController *)self scrollView];
  [tapCopy locationInView:scrollView];
  v7 = v6;

  [(EKUIAvailabilityViewController *)self timelineWidth];
  v9 = v8 / 24.0;
  event = [(EKUIAvailabilityViewController *)self event];
  [event duration];
  v12 = v9 * (v11 / 3600.0);

  v37 = v12;
  v13 = v7 - v12 * 0.5;
  v14 = v7 + v12 * 0.5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__EKUIAvailabilityViewController_singleTap___block_invoke;
  aBlock[3] = &unk_1E8441590;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  freeSpanViews = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v17 = [freeSpanViews countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = v9 * 0.25;
    v20 = *v39;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(freeSpanViews);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        [v22 frame];
        v24 = v23;
        [v22 frame];
        v26 = v25;
        [v22 frame];
        v28 = v26 + v27;
        if (v7 > v24 && v7 < v28)
        {
          v30 = v13 - v24 >= 0.0 ? v13 - v24 : -(v13 - v24);
          v31 = v28 - v14 >= 0.0 ? v28 - v14 : -(v28 - v14);
          if (v30 < v19 || v31 < v19)
          {
            IsLeftToRight = CalTimeDirectionIsLeftToRight();
            v35.n128_f64[0] = v28 - v37;
            if (!IsLeftToRight)
            {
              v35.n128_f64[0] = v28;
            }

            v36 = v37 + v24;
            if (IsLeftToRight)
            {
              v36 = v24;
            }

            if (v30 <= v31)
            {
              v35.n128_f64[0] = v36;
            }

            v15[2](v15, v35, 60.0);

            goto LABEL_34;
          }
        }
      }

      v18 = [freeSpanViews countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (CalTimeDirectionIsLeftToRight())
  {
    v33.n128_f64[0] = v13;
  }

  else
  {
    v33.n128_f64[0] = v14;
  }

  v15[2](v15, v33, 900.0);
LABEL_34:
}

void __44__EKUIAvailabilityViewController_singleTap___block_invoke(uint64_t a1, double a2, double a3)
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  [*(a1 + 32) timelineWidth];
  if (!IsLeftToRight)
  {
    a2 = v7 - a2;
    [*(a1 + 32) timelineWidth];
  }

  v8 = floor(a2 / v7 * 86400.0 / a3 + 0.5) * a3;
  v30 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [*(a1 + 32) event];
  v10 = [v9 startDate];
  v11 = [v30 components:64 fromDate:v10];

  v12 = [*(a1 + 32) event];
  v13 = [v12 endDateUnadjustedForLegacyClients];
  v14 = [v30 components:64 fromDate:v13];

  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * [v14 minute] + 0x888888888888888, 1) <= 0x888888888888888uLL && objc_msgSend(v11, "minute") <= 9)
  {
    HIDWORD(v15) = -2023406815 * v8 + 9544368;
    LODWORD(v15) = HIDWORD(v15);
    if ((v15 >> 3) <= 0x2468AC)
    {
      v8 = v8 + (60 * [v11 minute]);
    }
  }

  v16 = [*(a1 + 32) currentStartDate];
  v17 = [v16 dateByAddingTimeInterval:v8];

  v18 = [*(a1 + 32) event];
  v19 = [v18 timeZone];
  v20 = [*(a1 + 32) currentStartDate];
  [v19 daylightSavingTimeOffsetForDate:v20];
  v22 = v21;

  v23 = [*(a1 + 32) event];
  v24 = [v23 timeZone];
  [v24 daylightSavingTimeOffsetForDate:v17];
  v26 = v25;

  v27 = *(a1 + 32);
  v28 = [v27 currentStartDate];
  v29 = [v28 dateByAddingTimeInterval:v8 + (v22 - v26)];
  [v27 updateCurrentEventAtTime:v29];
}

- (void)viewPinched:(id)pinched
{
  pinchedCopy = pinched;
  state = [pinchedCopy state];
  if ((state - 3) <= 2)
  {
    [(EKUIAvailabilityViewController *)self layout];
  }

  if (([pinchedCopy numberOfTouches] & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (state == 2)
    {
      timelineView = [(EKUIAvailabilityViewController *)self timelineView];
      [timelineView minWidth];
      v11 = v10;

      [(EKUIAvailabilityViewController *)self pinchStartWidth];
      v13 = v12;
      [pinchedCopy scale];
      v15 = v13 * v14;
      if (v11 >= v15)
      {
        v15 = v11;
      }

      if (v15 > 5000.0)
      {
        v15 = 5000.0;
      }

      [(EKUIAvailabilityViewController *)self setAvailableWidth:v15];
      view = [(EKUIAvailabilityViewController *)self view];
      [pinchedCopy locationOfTouch:0 inView:view];
      v18 = v17;
      compact = [(EKUIAvailabilityViewController *)self compact];
      view2 = [(EKUIAvailabilityViewController *)self view];
      window = [view2 window];
      [EKUIAvailabilityParticipantList listWidthForCompact:compact orientation:EKUIInterfaceOrientationForViewHierarchy(window)];
      v23 = v18 - v22;

      [(EKUIAvailabilityViewController *)self pinchStartRatio];
      v25 = v24;
      [(EKUIAvailabilityViewController *)self availableWidth];
      v27 = -(v23 - v25 * v26);
      scrollView = [(EKUIAvailabilityViewController *)self scrollView];
      [scrollView contentOffset];
      v30 = v29;

      if (v27 >= 0.0)
      {
        v31 = v27;
      }

      else
      {
        v31 = 0.0;
      }

      [(EKUIAvailabilityViewController *)self availableWidth];
      v33 = v32;
      scrollView2 = [(EKUIAvailabilityViewController *)self scrollView];
      [scrollView2 frame];
      v36 = v33 - v35;

      if (v31 < v36)
      {
        v36 = v31;
      }

      scrollView3 = [(EKUIAvailabilityViewController *)self scrollView];
      [scrollView3 setContentOffset:0 animated:{v36, v30}];

      [(EKUIAvailabilityViewController *)self layout];
    }

    else if (state == 1)
    {
      [(EKUIAvailabilityViewController *)self availableWidth];
      [(EKUIAvailabilityViewController *)self setPinchStartWidth:?];
      scrollView4 = [(EKUIAvailabilityViewController *)self scrollView];
      [pinchedCopy locationOfTouch:0 inView:scrollView4];
      v7 = v6;
      [(EKUIAvailabilityViewController *)self pinchStartWidth];
      [(EKUIAvailabilityViewController *)self setPinchStartRatio:v7 / v8];
    }
  }
}

- (BOOL)span:(id)span overlapsWithStartDate:(id)date endDate:(id)endDate
{
  spanCopy = span;
  dateCopy = date;
  endDateCopy = endDate;
  if ([MEMORY[0x1E6966988] showTypeAsBusy:{objc_msgSend(spanCopy, "type")}])
  {
    startDate = [spanCopy startDate];
    if ([startDate CalIsBeforeOrSameAsDate:dateCopy])
    {
      endDate = [spanCopy endDate];
      v12 = [endDate CalIsAfterDate:dateCopy];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    startDate2 = [spanCopy startDate];
    if ([startDate2 CalIsBeforeDate:endDateCopy])
    {
      endDate2 = [spanCopy endDate];
      v16 = [endDate2 CalIsAfterOrSameAsDate:endDateCopy];

      if (v16)
      {
LABEL_9:
        v13 = 1;
        goto LABEL_15;
      }
    }

    else
    {
    }

    startDate3 = [spanCopy startDate];
    if ([startDate3 CalIsAfterOrSameAsDate:dateCopy])
    {
      endDate3 = [spanCopy endDate];
      v13 = [endDate3 CalIsBeforeOrSameAsDate:endDateCopy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (BOOL)updateCurrentEventAtTime:(id)time
{
  v45 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  event = [(EKUIAvailabilityViewController *)self event];
  [event duration];
  v6 = [timeCopy dateByAddingTimeInterval:?];

  [(EKUIAvailabilityViewController *)self setModifiedStartDate:timeCopy];
  [(EKUIAvailabilityViewController *)self setModifiedEndDate:v6];
  eventTime = [(EKUIAvailabilityViewController *)self eventTime];
  [eventTime removeFromSuperview];

  v8 = objc_alloc(MEMORY[0x1E6992F70]);
  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  v10 = [v8 initWithStartDate:currentStartDate duration:86400.0];

  if (([v10 containsDate:timeCopy] & 1) != 0 || objc_msgSend(v10, "containsDate:", v6))
  {
    v11 = [(EKUIAvailabilityViewController *)self eventFreeSpanAtStart:timeCopy endDate:v6 isFreeSpan:0];
    [(EKUIAvailabilityViewController *)self setEventTime:v11];

    scrollView = [(EKUIAvailabilityViewController *)self scrollView];
    eventTime2 = [(EKUIAvailabilityViewController *)self eventTime];
    [scrollView addSubview:eventTime2];

    scrollView2 = [(EKUIAvailabilityViewController *)self scrollView];
    eventTime3 = [(EKUIAvailabilityViewController *)self eventTime];
    [eventTime3 frame];
    v16 = 1;
    [scrollView2 scrollRectToVisible:1 animated:?];

    if (![(EKUIAvailabilityViewController *)self fetchingData])
    {
      v31 = v10;
      v33 = objc_opt_new();
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
      v17 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v34 = *v40;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v40 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            spans = [v20 spans];
            v22 = [spans countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v36;
              while (2)
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v36 != v24)
                  {
                    objc_enumerationMutation(spans);
                  }

                  if ([(EKUIAvailabilityViewController *)self span:*(*(&v35 + 1) + 8 * j) overlapsWithStartDate:timeCopy endDate:v6])
                  {
                    v26 = MEMORY[0x1E6966A88];
                    participant = [v20 participant];
                    v28 = [v26 participantForSortingWithEKParticipant:participant];

                    [v33 addObject:v28];
                    goto LABEL_19;
                  }
                }

                v23 = [spans countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }

          v18 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v18);
      }

      [(EKUIAvailabilityViewController *)self setBusyParticipants:v33];
      participantList = [(EKUIAvailabilityViewController *)self participantList];
      [participantList setBusyParticipants:v33];

      v16 = 1;
      v10 = v31;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (CGRect)frameForFreeSpanViewAtStart:(id)start endDate:(id)date duration:(double)duration
{
  dateCopy = date;
  [(EKUIAvailabilityViewController *)self convertDateIntoOffset:start];
  v9 = v8;
  if (dateCopy)
  {
    [(EKUIAvailabilityViewController *)self convertDateIntoOffset:dateCopy];
    v11 = v10;
    if (CalTimeDirectionIsLeftToRight())
    {
      v12 = v11 - v9;
    }

    else
    {
      v12 = v9 - v11;
    }
  }

  else
  {
    event = [(EKUIAvailabilityViewController *)self event];
    [event duration];
    v15 = v14 / 86400.0;
    [(EKUIAvailabilityViewController *)self timelineWidth];
    v17 = v16;
    v12 = v15 * v16;

    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v19 = -(v15 * v17);
    if (IsLeftToRight)
    {
      v19 = v12;
    }

    v11 = v9 + v19;
  }

  +[EKUIAvailabilityRowView padInset];
  v21 = v20;
  +[EKUIAvailabilityRowView cornerRadius];
  if (v12 < v22)
  {
    +[EKUIAvailabilityRowView cornerRadius];
    v12 = v23;
  }

  if (CalTimeDirectionIsLeftToRight())
  {
    v24 = v9 + v21;
  }

  else
  {
    v24 = v11 - v21;
  }

  participantAvailabilityViews = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v26 = [participantAvailabilityViews count];
  [(EKUIAvailabilityViewController *)self rowHeight];
  v28 = v21 * -2.0 + v26 * v27;

  v29 = v24;
  v30 = v21;
  v31 = v12 + v21 * -2.0;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)eventFreeSpanAtStart:(id)start endDate:(id)date isFreeSpan:(BOOL)span
{
  spanCopy = span;
  dateCopy = date;
  startCopy = start;
  event = [(EKUIAvailabilityViewController *)self event];
  calendar = [event calendar];
  displayColor = [calendar displayColor];

  [(EKUIAvailabilityViewController *)self frameForFreeSpanViewAtStart:startCopy endDate:dateCopy duration:0.0];
  v17 = [[EKUIAvailabilityFreeSpanView alloc] initWithFrame:displayColor andColor:startCopy startDate:dateCopy endDate:spanCopy isFreeSpan:v13, v14, v15, v16];

  return v17;
}

- (double)convertDateIntoOffset:(id)offset
{
  offsetCopy = offset;
  event = [(EKUIAvailabilityViewController *)self event];
  timeZone = [event timeZone];
  currentStartDate = [(EKUIAvailabilityViewController *)self currentStartDate];
  [timeZone daylightSavingTimeOffsetForDate:currentStartDate];
  v9 = v8;

  event2 = [(EKUIAvailabilityViewController *)self event];
  timeZone2 = [event2 timeZone];
  [timeZone2 daylightSavingTimeOffsetForDate:offsetCopy];
  v13 = v12;

  currentStartDate2 = [(EKUIAvailabilityViewController *)self currentStartDate];
  [offsetCopy timeIntervalSinceDate:currentStartDate2];
  v16 = v15;

  [(EKUIAvailabilityViewController *)self timelineWidth];
  v18 = (v16 + (v13 - v9)) / 86400.0 * v17;
  if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
  {
    [(EKUIAvailabilityViewController *)self timelineWidth];
    return v19 - v18;
  }

  return v18;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollView = [(EKUIAvailabilityViewController *)self scrollView];

  if (scrollView == scrollCopy)
  {
    timelineView = [(EKUIAvailabilityViewController *)self timelineView];
    [scrollCopy contentOffset];
    [timelineView setHorizontalScrollOffset:?];

    participantList = [(EKUIAvailabilityViewController *)self participantList];
    [scrollCopy contentOffset];
    [participantList setVerticalScrollOffset:v7];
  }

  participantList2 = [(EKUIAvailabilityViewController *)self participantList];

  if (participantList2 == scrollCopy)
  {
    scrollView2 = [(EKUIAvailabilityViewController *)self scrollView];
    scrollView3 = [(EKUIAvailabilityViewController *)self scrollView];
    [scrollView3 contentOffset];
    v12 = v11;
    [scrollCopy contentOffset];
    [scrollView2 setContentOffset:v12];
  }

  timelineView2 = [(EKUIAvailabilityViewController *)self timelineView];

  if (timelineView2 == scrollCopy)
  {
    scrollView4 = [(EKUIAvailabilityViewController *)self scrollView];
    [scrollCopy contentOffset];
    v16 = v15;
    scrollView5 = [(EKUIAvailabilityViewController *)self scrollView];
    [scrollView5 contentOffset];
    [scrollView4 setContentOffset:v16];
  }
}

@end