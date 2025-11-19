@interface EKUIAvailabilityViewController
+ (double)defaultTimelineHeight;
+ (id)cancelNextTimeString;
+ (id)nextTimeString;
+ (id)presentAvailabilityViewControllerForEvent:(id)a3 fromViewController:(id)a4;
- (BOOL)span:(id)a3 overlapsWithDate:(id)a4;
- (BOOL)span:(id)a3 overlapsWithStartDate:(id)a4 endDate:(id)a5;
- (BOOL)updateCurrentEventAtTime:(id)a3;
- (CGRect)frameForFreeSpanViewAtStart:(id)a3 endDate:(id)a4 duration:(double)a5;
- (CGSize)preferredContentSize;
- (EKUIAvailabilityViewController)initWithEvent:(id)a3 isAttendeeProposeTime:(BOOL)a4 proposedStartDate:(id)a5 proposedEndDate:(id)a6;
- (double)convertDateIntoOffset:(id)a3;
- (id)dedupSpans:(id)a3;
- (id)eventFreeSpanAtStart:(id)a3 endDate:(id)a4 isFreeSpan:(BOOL)a5;
- (id)mergeSpan:(id)a3 intoSpans:(id)a4;
- (void)cancelTapped:(id)a3;
- (void)clearFreeSpanViews;
- (void)configureNavBarAndToolBar;
- (void)configureParticipants;
- (void)configureUnavailableStateForEvent;
- (void)doneTapped:(id)a3;
- (void)fetchAvailability;
- (void)findNextFreeSpan;
- (void)findPossibleEventRanges;
- (void)layout;
- (void)loadView;
- (void)nextAvailableTimeTapped:(id)a3;
- (void)nextDayTapped:(id)a3;
- (void)previousDayTapped:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAvailabilityPanelAvailable:(BOOL)a3 unavailableMessage:(id)a4;
- (void)setDate:(id)a3;
- (void)singleTap:(id)a3;
- (void)sizeWillBeCompact:(BOOL)a3;
- (void)updateForContentCategory;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewPinched:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation EKUIAvailabilityViewController

+ (id)presentAvailabilityViewControllerForEvent:(id)a3 fromViewController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[EKUIAvailabilityViewController alloc] initWithEvent:v6];

  [(EKUIAvailabilityViewController *)v7 setFromDetail:1];
  v8 = [[EKUIAvailabilityNavigationController alloc] initWithRootViewController:v7];
  [(EKUIAvailabilityViewController *)v7 preferredContentSize];
  [(EKUIAvailabilityNavigationController *)v8 setPreferredContentSize:?];
  [v5 presentViewController:v8 animated:1 completion:0];

  return v7;
}

- (EKUIAvailabilityViewController)initWithEvent:(id)a3 isAttendeeProposeTime:(BOOL)a4 proposedStartDate:(id)a5 proposedEndDate:(id)a6
{
  v96[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v90.receiver = self;
  v90.super_class = EKUIAvailabilityViewController;
  v14 = [(EKUIAvailabilityViewController *)&v90 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_event, a3);
    v15->_isAttendeeProposeTime = a4;
    v15->_availableWidth = 1440.0;
    v16 = objc_opt_new();
    participantAvailabilityViews = v15->_participantAvailabilityViews;
    v15->_participantAvailabilityViews = v16;

    v18 = objc_opt_new();
    freeSpanViews = v15->_freeSpanViews;
    v15->_freeSpanViews = v18;

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v15 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

    if (v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = [v11 startDate];
    }

    v22 = v21;
    v89 = v13;
    if (v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = [v11 endDateUnadjustedForLegacyClients];
    }

    v24 = v23;
    v25 = v22;
    if (!a4)
    {
      v25 = [v11 startDate];
    }

    objc_storeStrong(&v15->_modifiedStartDate, v25);
    v87 = v24;
    if (!a4)
    {

      v24 = [v11 endDateUnadjustedForLegacyClients];
    }

    v88 = v22;
    objc_storeStrong(&v15->_modifiedEndDate, v24);
    if (!a4)
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
      v63 = [(EKUIAvailabilityViewController *)v15 event];
      -[UIBarButtonItem setEnabled:](v15->_topNextTime, "setEnabled:", [v63 isEditable]);
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
      v76 = [(EKUIAvailabilityViewController *)v15 event];
      -[UIBarButtonItem setEnabled:](v15->_doneButton, "setEnabled:", [v76 isEditable]);
    }

    v91[0] = v15->_topSpacer;
    v91[1] = v15->_topSpinner;
    v91[2] = v15->_doneButton;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
    v78 = [(EKUIAvailabilityViewController *)v15 navigationItem];
    [v78 setRightBarButtonItems:v77];

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
    v13 = v89;
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
  v5 = [(EKUIAvailabilityViewController *)self participants];
  v6 = [v5 count];

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
  v3 = [(EKUIAvailabilityViewController *)self traitCollection];
  -[EKUIAvailabilityViewController sizeWillBeCompact:](self, "sizeWillBeCompact:", [v3 horizontalSizeClass] == 1);

  v4.receiver = self;
  v4.super_class = EKUIAvailabilityViewController;
  [(EKUIAvailabilityViewController *)&v4 viewWillLayoutSubviews];
}

- (void)sizeWillBeCompact:(BOOL)a3
{
  v3 = a3;
  if ([(EKUIAvailabilityViewController *)self compact]!= a3)
  {
    v5 = [(EKUIAvailabilityViewController *)self view];
    v6 = [v5 window];
    v7 = EKUIInterfaceOrientationForViewHierarchy(v6);

    v8 = [(EKUIAvailabilityViewController *)self traitCollection];
    v9 = [v8 verticalSizeClass];

    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    [EKUIAvailabilityParticipantList listWidthForCompact:v3 orientation:v10];
    v12 = v11;
    v13 = [(EKUIAvailabilityViewController *)self participantWidthConstraint];
    [v13 setConstant:v12];

    [(EKUIAvailabilityViewController *)self setCompact:v3];
    [(EKUIAvailabilityViewController *)self configureNavBarAndToolBar];

    [(EKUIAvailabilityViewController *)self layout];
  }
}

+ (double)defaultTimelineHeight
{
  v2 = MEMORY[0x1D38B98D0](a1, a2);
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
  v3 = [(EKUIAvailabilityViewController *)self navigationController];
  [v3 setToolbarHidden:-[EKUIAvailabilityViewController compact](self animated:{"compact") ^ 1, 0}];

  v4 = [(EKUIAvailabilityViewController *)self searchingForNextAvailableTime];
  v5 = [(EKUIAvailabilityViewController *)self topNextTime];
  if (v4)
  {
    v6 = +[EKUIAvailabilityViewController cancelNextTimeString];
    [v5 setTitle:v6];

    v7 = [(EKUIAvailabilityViewController *)self bottomNextTime];
    +[EKUIAvailabilityViewController cancelNextTimeString];
  }

  else
  {
    v8 = +[EKUIAvailabilityViewController nextTimeString];
    [v5 setTitle:v8];

    v7 = [(EKUIAvailabilityViewController *)self bottomNextTime];
    +[EKUIAvailabilityViewController nextTimeString];
  }
  v9 = ;
  [v7 setTitle:v9];

  +[EKUIAvailabilityViewController defaultTimelineHeight];
  v11 = v10;
  v12 = [(EKUIAvailabilityViewController *)self timelineHeightConstraint];
  [v12 setConstant:v11];

  if ([(EKUIAvailabilityViewController *)self compact])
  {
    if ([(EKUIAvailabilityViewController *)self fetchingData]&& ![(EKUIAvailabilityViewController *)self searchingForNextAvailableTime])
    {
      v13 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v65[0] = v13;
      v14 = [(EKUIAvailabilityViewController *)self bottomSpinner];
      v65[1] = v14;
      v15 = v65;
    }

    else
    {
      v13 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v64[0] = v13;
      v14 = [(EKUIAvailabilityViewController *)self bottomNextTime];
      v64[1] = v14;
      v15 = v64;
    }

    v22 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    v15[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    [(EKUIAvailabilityViewController *)self setToolbarItems:v23 animated:1];

    v24 = [(EKUIAvailabilityViewController *)self cancelButton];
    [v24 setSharesBackground:0];

    v25 = objc_alloc(MEMORY[0x1E69DC720]);
    v26 = [(EKUIAvailabilityViewController *)self cancelButton];
    v62 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    v28 = [v25 initWithBarButtonItems:v27 representativeItem:0];
    v63[0] = v28;
    v29 = objc_alloc(MEMORY[0x1E69DC720]);
    v30 = [(EKUIAvailabilityViewController *)self previousButton];
    v61 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    v32 = [v29 initWithBarButtonItems:v31 representativeItem:0];
    v63[1] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    v34 = [(EKUIAvailabilityViewController *)self navigationItem];
    [v34 setLeadingItemGroups:v33];

    v35 = [(EKUIAvailabilityViewController *)self titleContainer];
    v36 = [(EKUIAvailabilityViewController *)self navigationItem];
    [v36 setTitleView:v35];

    v37 = [(EKUIAvailabilityViewController *)self navigationItem];
    v38 = [(EKUIAvailabilityViewController *)self doneButton];
    v60[0] = v38;
    v39 = [(EKUIAvailabilityViewController *)self nextButton];
    v60[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    [v37 setRightBarButtonItems:v40 animated:0];
  }

  else
  {
    v16 = [(EKUIAvailabilityViewController *)self navigationItem];
    [v16 setTitleView:0];

    if ([(EKUIAvailabilityViewController *)self fetchingData]&& ![(EKUIAvailabilityViewController *)self searchingForNextAvailableTime])
    {
      v17 = [(EKUIAvailabilityViewController *)self navigationItem];
      v18 = [(EKUIAvailabilityViewController *)self doneButton];
      v59[0] = v18;
      v19 = [(EKUIAvailabilityViewController *)self topSpacer];
      v59[1] = v19;
      v20 = [(EKUIAvailabilityViewController *)self topSpinner];
      v59[2] = v20;
      v21 = v59;
    }

    else
    {
      v17 = [(EKUIAvailabilityViewController *)self navigationItem];
      v18 = [(EKUIAvailabilityViewController *)self doneButton];
      v58[0] = v18;
      v19 = [(EKUIAvailabilityViewController *)self topSpacer];
      v58[1] = v19;
      v20 = [(EKUIAvailabilityViewController *)self topNextTime];
      v58[2] = v20;
      v21 = v58;
    }

    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    [v17 setRightBarButtonItems:v41 animated:1];

    v42 = objc_alloc(MEMORY[0x1E69DC720]);
    v43 = [(EKUIAvailabilityViewController *)self cancelButton];
    v57 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    v37 = [v42 initWithBarButtonItems:v44 representativeItem:0];

    v45 = objc_alloc(MEMORY[0x1E69DC720]);
    v46 = [(EKUIAvailabilityViewController *)self previousButton];
    v56[0] = v46;
    v47 = [(EKUIAvailabilityViewController *)self nextButton];
    v56[1] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    v38 = [v45 initWithBarButtonItems:v48 representativeItem:0];

    v49 = objc_alloc(MEMORY[0x1E69DC720]);
    v50 = [(EKUIAvailabilityViewController *)self largeDateNavItem];
    v55 = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v39 = [v49 initWithBarButtonItems:v51 representativeItem:0];

    v54[0] = v37;
    v54[1] = v38;
    v54[2] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v52 = [(EKUIAvailabilityViewController *)self navigationItem];
    [v52 setLeadingItemGroups:v40];
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __59__EKUIAvailabilityViewController_configureNavBarAndToolBar__block_invoke;
  v53[3] = &unk_1E843EC60;
  v53[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v53);
  [(EKUIAvailabilityViewController *)self configureUnavailableStateForEvent];
}

- (void)cancelTapped:(id)a3
{
  v4 = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [v4 cancelAllOperations];

  v5 = [(EKEditItemViewController *)self editDelegate];

  if (v5)
  {
    v6 = [(EKEditItemViewController *)self editDelegate];
    [v6 editItemViewController:self didCompleteWithAction:0];
  }

  else
  {
    v6 = [(EKUIAvailabilityViewController *)self presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)nextDayTapped:(id)a3
{
  v6 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v6 dateByAddingDays:1 inCalendar:v4];
  [(EKUIAvailabilityViewController *)self setDate:v5];
}

- (void)previousDayTapped:(id)a3
{
  v6 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v6 dateByAddingDays:-1 inCalendar:v4];
  [(EKUIAvailabilityViewController *)self setDate:v5];
}

- (void)nextAvailableTimeTapped:(id)a3
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
    v5 = [(EKUIAvailabilityViewController *)self event];
    v6 = [v5 timeZone];
    v8 = [v4 dateForStartOfDayInTimeZone:v6];

    v7 = [(EKUIAvailabilityViewController *)self currentStartDate];
    LODWORD(v5) = [v7 isBeforeDate:v8];

    if (v5)
    {
      [(EKUIAvailabilityViewController *)self setDate:v8];
    }

    else if (![(EKUIAvailabilityViewController *)self fetchingData])
    {
      [(EKUIAvailabilityViewController *)self findNextFreeSpan];
    }
  }
}

- (void)doneTapped:(id)a3
{
  v4 = a3;
  v5 = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [v5 cancelAllOperations];

  v6 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
  v7 = [(EKUIAvailabilityViewController *)self isAttendeeProposeTime];
  v8 = [(EKUIAvailabilityViewController *)self event];
  v9 = v8;
  if (v7)
  {
    [v8 proposedStartDate];
  }

  else
  {
    [v8 startDate];
  }
  v10 = ;
  v11 = [v6 isEqualToDate:v10];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EKUIAvailabilityViewController_doneTapped___block_invoke;
  aBlock[3] = &unk_1E843EC60;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  if (!-[EKUIAvailabilityViewController isAttendeeProposeTime](self, "isAttendeeProposeTime") && -[EKUIAvailabilityViewController fromDetail](self, "fromDetail") && (v13 = v11 ^ 1, -[EKUIAvailabilityViewController event](self, "event"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 hasChanges] | v13, v14, (v15 & 1) != 0))
  {
    v16 = [(EKUIAvailabilityViewController *)self event];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__EKUIAvailabilityViewController_doneTapped___block_invoke_2;
    v23[3] = &unk_1E843FA10;
    v24 = v16;
    v25 = self;
    v26 = v4;
    v27 = v12;
    v17 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
    v21 = v16;
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
  v4 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

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

  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v10 setTextColor:v12];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [(EKUIAvailabilityViewController *)self setUnavailableLabel:v10];
  v13 = [(EKUIAvailabilityViewController *)self view];
  [v13 addSubview:v10];

  v14 = MEMORY[0x1E696ACD8];
  v172 = [(EKUIAvailabilityViewController *)self view];
  v15 = [v14 constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v172 attribute:9 multiplier:1.0 constant:0.0];
  v178[0] = v15;
  v16 = MEMORY[0x1E696ACD8];
  v17 = [(EKUIAvailabilityViewController *)self view];
  v18 = [v16 constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  v178[1] = v18;
  v19 = MEMORY[0x1E696ACD8];
  v20 = [(EKUIAvailabilityViewController *)self view];
  v21 = [v19 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v20 attribute:5 multiplier:1.0 constant:16.0];
  v178[2] = v21;
  v22 = MEMORY[0x1E696ACD8];
  v23 = [(EKUIAvailabilityViewController *)self view];
  v154 = v10;
  v24 = [v22 constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v23 attribute:3 multiplier:1.0 constant:16.0];
  v178[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:4];
  [v14 activateConstraints:v25];

  v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v26 setBackgroundColor:v27];

  [(EKUIAvailabilityViewController *)self setContainerView:v26];
  v28 = [(EKUIAvailabilityViewController *)self view];
  v29 = [(EKUIAvailabilityViewController *)self containerView];
  [v28 addSubview:v29];

  v152 = MEMORY[0x1E696ACD8];
  v166 = [v26 topAnchor];
  v170 = [(EKUIAvailabilityViewController *)self view];
  v164 = [v170 topAnchor];
  v162 = [v166 constraintEqualToAnchor:v164];
  v177[0] = v162;
  v158 = [v26 leadingAnchor];
  v160 = [(EKUIAvailabilityViewController *)self view];
  v156 = [v160 leadingAnchor];
  v150 = [v158 constraintEqualToAnchor:v156];
  v177[1] = v150;
  v30 = [v26 trailingAnchor];
  v31 = [(EKUIAvailabilityViewController *)self view];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v177[2] = v33;
  v173 = v26;
  v34 = [v26 bottomAnchor];
  v35 = [(EKUIAvailabilityViewController *)self view];
  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
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
  v41 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v40 setBackgroundColor:v41];

  [v173 addSubview:v40];
  v42 = objc_opt_new();
  inviteesLabel = self->_inviteesLabel;
  self->_inviteesLabel = v42;

  v44 = MEMORY[0x1E696AEC0];
  v45 = EventKitUIBundle();
  v46 = [v45 localizedStringForKey:@"Invitees (%lu)" value:&stru_1F4EF6790 table:0];
  v47 = [(EKUIAvailabilityViewController *)self participants];
  v48 = [v44 stringWithFormat:v46, objc_msgSend(v47, "count")];
  [(UILabel *)self->_inviteesLabel setText:v48];

  v49 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v168];
  [(UILabel *)self->_inviteesLabel setFont:v49];

  v50 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_inviteesLabel setTextColor:v50];

  [(UILabel *)self->_inviteesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_inviteesLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v51) = 1148846080;
  [(UILabel *)self->_inviteesLabel setContentHuggingPriority:0 forAxis:v51];
  [v40 addSubview:self->_inviteesLabel];
  v52 = objc_opt_new();
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = [MEMORY[0x1E69DC888] separatorColor];
  [v52 setBackgroundColor:v53];

  v169 = v40;
  v165 = v52;
  [v40 addSubview:v52];
  v54 = [EKUIHorizontalGradientView alloc];
  v55 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v56 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v57 = [v56 colorWithAlphaComponent:0.0];
  v58 = [(EKUIHorizontalGradientView *)v54 initWithStartColor:v55 endColor:v57 start:0.0 end:1.0];

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
    v60 = [(EKUIAvailabilityViewController *)self event];
    [v59 setEnabled:{objc_msgSend(v60, "isEditable")}];
  }

  [v59 setCancelsTouchesInView:0];
  v153 = v59;
  [v171 addGestureRecognizer:v59];
  v151 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_viewPinched_];
  [v171 addGestureRecognizer:?];
  v61 = [EKUIAvailabilityParticipantList alloc];
  v62 = [(EKUIAvailabilityViewController *)self participants];
  v63 = [(EKUIAvailabilityParticipantList *)v61 initWithParticipants:v62 viewController:self];

  [(EKUIAvailabilityParticipantList *)v63 setDelegate:self];
  [(EKUIAvailabilityParticipantList *)v63 setBounces:0];
  [(EKUIAvailabilityParticipantList *)v63 setShowsVerticalScrollIndicator:0];
  v64 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(EKUIAvailabilityParticipantList *)v63 setBackgroundColor:v64];

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
  v66 = [MEMORY[0x1E69DC888] separatorColor];
  [v65 setBackgroundColor:v66];

  v167 = v65;
  [v173 addSubview:v65];
  v67 = [EKUIHorizontalGradientView alloc];
  v68 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v69 = [v68 colorWithAlphaComponent:0.0];
  v70 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v71 = [(EKUIHorizontalGradientView *)v67 initWithStartColor:v69 endColor:v70 start:0.0 end:1.0];

  v159 = v71;
  [v173 addSubview:v71];
  v72 = objc_opt_new();
  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
  v73 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v72 setBackgroundColor:v73];

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
  v76 = [(EKUIAvailabilityViewController *)self view];
  v77 = [v76 window];
  [EKUIAvailabilityParticipantList listWidthForCompact:0 orientation:EKUIInterfaceOrientationForViewHierarchy(v77)];
  v79 = [v75 constraintWithItem:v161 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v78];
  [(EKUIAvailabilityViewController *)self setParticipantWidthConstraint:v79];

  v80 = [(EKUIAvailabilityViewController *)self participantWidthConstraint];
  [v80 setActive:1];

  v81 = [MEMORY[0x1E696ACD8] constraintWithItem:v40 attribute:7 relatedBy:0 toItem:v161 attribute:7 multiplier:1.0 constant:0.0];
  [v81 setActive:1];

  v82 = MEMORY[0x1E696ACD8];
  v83 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[participantListHeader][timeLine]|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v82 activateConstraints:v83];

  v84 = MEMORY[0x1E696ACD8];
  v85 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[participantList][scrollView]|" options:0 metrics:&unk_1F4F32978 views:v74];
  [v84 activateConstraints:v85];

  v86 = [(UILabel *)self->_inviteesLabel leadingAnchor];
  v87 = [(EKUIAvailabilityViewController *)self view];
  v88 = [v87 safeAreaLayoutGuide];
  v89 = [v88 leadingAnchor];
  v90 = [v86 constraintEqualToAnchor:v89];

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

  v108 = [(EKUIAvailabilityViewController *)self timelineHeightConstraint];
  [v108 setActive:1];

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
  v147 = [v163 leadingAnchor];
  v146 = [v40 trailingAnchor];
  v145 = [v147 constraintEqualToAnchor:v146];
  v175[0] = v145;
  v144 = [v163 widthAnchor];
  v143 = [v144 constraintEqualToConstant:10.0];
  v175[1] = v143;
  v142 = [v163 topAnchor];
  v141 = [v40 topAnchor];
  v140 = [v142 constraintEqualToAnchor:v141];
  v175[2] = v140;
  v139 = [v163 bottomAnchor];
  v137 = [v40 bottomAnchor];
  v136 = [v139 constraintEqualToAnchor:v137];
  v175[3] = v136;
  v135 = [v159 trailingAnchor];
  v134 = [(EKUIAvailabilityParticipantList *)v161 trailingAnchor];
  v133 = [v135 constraintEqualToAnchor:v134];
  v175[4] = v133;
  v117 = [v159 widthAnchor];
  v118 = [v117 constraintEqualToConstant:10.0];
  v175[5] = v118;
  v119 = [v159 topAnchor];
  v120 = [(EKUIAvailabilityParticipantList *)v161 topAnchor];
  v121 = [v119 constraintEqualToAnchor:v120];
  v175[6] = v121;
  v122 = [v159 bottomAnchor];
  v123 = [(EKUIAvailabilityParticipantList *)v161 bottomAnchor];
  v124 = [v122 constraintEqualToAnchor:v123];
  v175[7] = v124;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:8];
  [v138 activateConstraints:v125];

  v126 = 23;
  do
  {
    v127 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    v128 = [MEMORY[0x1E69DC888] separatorColor];
    [v127 setBackgroundColor:v128];

    v129 = [(EKUIAvailabilityViewController *)self scrollView];
    [v129 addSubview:v127];

    v130 = [(EKUIAvailabilityViewController *)self hourLines];
    [v130 addObject:v127];

    --v126;
  }

  while (v126);
  v131 = [(EKUIAvailabilityViewController *)self participants];
  v174[0] = MEMORY[0x1E69E9820];
  v174[1] = 3221225472;
  v174[2] = __42__EKUIAvailabilityViewController_loadView__block_invoke;
  v174[3] = &unk_1E84414F0;
  v174[4] = self;
  [v131 enumerateObjectsUsingBlock:v174];

  [v173 bringSubviewToFront:v159];
  [v173 bringSubviewToFront:v163];
  [v173 bringSubviewToFront:v167];
  [(EKUIAvailabilityViewController *)self updateForContentCategory];
  v132 = [MEMORY[0x1E696AD88] defaultCenter];
  [v132 addObserver:self selector:sel_contentCategorySizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
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
  v4 = [(EKUIAvailabilityViewController *)self event];
  v5 = [v3 availabilityPanelVisibilityForEvent:v4];

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

- (void)setAvailabilityPanelAvailable:(BOOL)a3 unavailableMessage:(id)a4
{
  v4 = a3;
  v16 = a4;
  v6 = [(EKUIAvailabilityViewController *)self unavailableLabel];
  v7 = v6;
  if (v4)
  {
    [v6 setHidden:1];

    [(UIBarButtonItem *)self->_previousButton setEnabled:1];
    [(UIBarButtonItem *)self->_nextButton setEnabled:1];
    if ([(EKUIAvailabilityViewController *)self isAttendeeProposeTime])
    {
      [(UIBarButtonItem *)self->_topNextTime setEnabled:1];
    }

    else
    {
      v13 = [(EKUIAvailabilityViewController *)self event];
      -[UIBarButtonItem setEnabled:](self->_topNextTime, "setEnabled:", [v13 isEditable]);
    }

    if ([(EKUIAvailabilityViewController *)self isAttendeeProposeTime])
    {
      [(UIBarButtonItem *)self->_doneButton setEnabled:1];
    }

    else
    {
      v14 = [(EKUIAvailabilityViewController *)self event];
      -[UIBarButtonItem setEnabled:](self->_doneButton, "setEnabled:", [v14 isEditable]);
    }

    v15 = [(EKUIAvailabilityViewController *)self containerView];
    [v15 setHidden:0];

    v11 = [(EKUIAvailabilityViewController *)self navigationController];
    v12 = [(EKUIAvailabilityViewController *)self compact]^ 1;
    v10 = v11;
  }

  else
  {
    [v6 setHidden:0];

    v8 = [(EKUIAvailabilityViewController *)self unavailableLabel];
    [v8 setText:v16];

    [(UIBarButtonItem *)self->_previousButton setEnabled:0];
    [(UIBarButtonItem *)self->_nextButton setEnabled:0];
    [(UIBarButtonItem *)self->_topNextTime setEnabled:0];
    [(UIBarButtonItem *)self->_doneButton setEnabled:0];
    v9 = [(EKUIAvailabilityViewController *)self containerView];
    [v9 setHidden:1];

    v10 = [(EKUIAvailabilityViewController *)self navigationController];
    v11 = v10;
    v12 = 1;
  }

  [v10 setToolbarHidden:v12 animated:0];
}

- (void)updateForContentCategory
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:58.0];
  [(EKUIAvailabilityViewController *)self setRowHeight:?];
  v3 = [(EKUIAvailabilityViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = *MEMORY[0x1E69DDC60];

  if (v4 <= v5)
  {
    v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    v14 = [(EKUIAvailabilityViewController *)self weekdayLabel];
    [v14 setFont:v13];

    v15 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    v16 = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
    [v16 setFont:v15];

    v17 = MEMORY[0x1E696AEC0];
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Invitees (%lu)" value:&stru_1F4EF6790 table:0];
    v12 = [(EKUIAvailabilityViewController *)self participants];
    v18 = [v17 stringWithFormat:v11, objc_msgSend(v12, "count")];
    v19 = [(EKUIAvailabilityViewController *)self inviteesLabel];
    [v19 setText:v18];
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:22.0];
    v7 = [(EKUIAvailabilityViewController *)self weekdayLabel];
    [v7 setFont:v6];

    v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:22.0];
    v9 = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
    [v9 setFont:v8];

    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Invitees" value:&stru_1F4EF6790 table:0];
    v12 = [(EKUIAvailabilityViewController *)self inviteesLabel];
    [v12 setText:v11];
  }

  +[EKUIAvailabilityViewController defaultTimelineHeight];
  v21 = v20;
  v22 = [(EKUIAvailabilityViewController *)self timelineHeightConstraint];
  [v22 setConstant:v21];

  v23 = [(EKUIAvailabilityViewController *)self timelineView];
  [v23 setLabels];

  v24 = [(EKUIAvailabilityViewController *)self view];
  [v24 setNeedsLayout];
}

- (void)configureParticipants
{
  v3 = MEMORY[0x1E69933A8];
  v5 = [(EKUIAvailabilityViewController *)self event];
  v4 = [v3 participantsForAvailabilityViewControllerFromEvent:v5];
  [(EKUIAvailabilityViewController *)self setParticipants:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EKUIAvailabilityViewController;
  [(EKEditItemViewController *)&v5 viewWillAppear:a3];
  v4 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
  [(EKUIAvailabilityViewController *)self setDate:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EKUIAvailabilityViewController;
  [(EKUIAvailabilityViewController *)&v7 viewDidAppear:a3];
  v4 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
  v5 = [(EKUIAvailabilityViewController *)self updateCurrentEventAtTime:v4];

  if (!v5)
  {
    v6 = [(EKUIAvailabilityViewController *)self scrollView];
    [v6 setContentOffset:{510.0, 0.0}];
  }
}

- (void)layout
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = [(EKUIAvailabilityViewController *)self weekdayLabel];
  [v3 layoutSubviews];

  v4 = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
  [v4 layoutSubviews];

  v5 = [(EKUIAvailabilityViewController *)self view];
  v6 = [v5 window];
  v7 = EKUIInterfaceOrientationForViewHierarchy(v6);

  if (![(EKUIAvailabilityViewController *)self compact])
  {
    if (CalInterfaceIsLeftToRight())
    {
      [EKUIAvailabilityParticipantList listWidthForCompact:0 orientation:v7];
    }

    else
    {
      v8 = [(EKUIAvailabilityViewController *)self view];
      [v8 frame];
      [EKUIAvailabilityParticipantList listWidthForCompact:0 orientation:v7];
    }
  }

  v9 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v10 = [v9 count];
  [(EKUIAvailabilityViewController *)self rowHeight];
  v12 = v11 * v10;

  v13 = [(EKUIAvailabilityViewController *)self participantList];
  [(EKUIAvailabilityViewController *)self rowHeight];
  [v13 setRowHeight:?];

  [EKUIAvailabilityParticipantList listWidthForCompact:[(EKUIAvailabilityViewController *)self compact] orientation:v7];
  v15 = v14;
  v16 = [(EKUIAvailabilityViewController *)self participantList];
  [v16 setContentSize:{v15, v12}];

  v17 = [(EKUIAvailabilityViewController *)self timelineView];
  [(EKUIAvailabilityViewController *)self timelineWidth];
  [v17 setContentWidth:?];

  v18 = [(EKUIAvailabilityViewController *)self hourLines];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __40__EKUIAvailabilityViewController_layout__block_invoke;
  v57[3] = &unk_1E8441518;
  v57[4] = self;
  *&v57[5] = v12;
  [v18 enumerateObjectsUsingBlock:v57];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v59 count:16];
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
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        [(EKUIAvailabilityViewController *)self availableWidth];
        v27 = v26;
        [(EKUIAvailabilityViewController *)self rowHeight];
        [v25 setFrame:{0.0, v23, v27, v28}];
        [(EKUIAvailabilityViewController *)self rowHeight];
        v23 = v23 + v29;
      }

      v21 = [v19 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v21);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v31 = [v30 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v49 + 1) + 8 * j);
        v36 = [v35 startDate];
        v37 = [v35 endDate];
        [(EKUIAvailabilityViewController *)self frameForFreeSpanViewAtStart:v36 endDate:v37 duration:0.0];
        [v35 setFrame:?];

        [v35 setNeedsDisplay];
      }

      v32 = [v30 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v32);
  }

  v38 = [(EKUIAvailabilityViewController *)self eventTime];
  v39 = [(EKUIAvailabilityViewController *)self eventTime];
  v40 = [v39 startDate];
  v41 = [(EKUIAvailabilityViewController *)self event];
  [v41 duration];
  [(EKUIAvailabilityViewController *)self frameForFreeSpanViewAtStart:v40 endDate:0 duration:?];
  [v38 setFrame:?];

  [(EKUIAvailabilityViewController *)self availableWidth];
  v43 = v42;
  v44 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v45 = [v44 count];
  [(EKUIAvailabilityViewController *)self rowHeight];
  v47 = v46 * v45;
  v48 = [(EKUIAvailabilityViewController *)self scrollView];
  [v48 setContentSize:{v43, v47}];
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

- (void)setDate:(id)a3
{
  v13 = a3;
  v4 = [(EKUIAvailabilityViewController *)self event];
  v5 = [v4 timeZone];
  v6 = [v13 dateForStartOfDayInTimeZone:v5];

  v7 = [(EKUIAvailabilityViewController *)self currentStartDate];
  LOBYTE(v5) = [v6 isEqualToDate:v7];

  if ((v5 & 1) == 0)
  {
    [(EKUIAvailabilityViewController *)self setCurrentStartDate:v6];
    v8 = [(EKUIAvailabilityViewController *)self weekdayLabel];
    [v8 setDate:v13];

    v9 = [(EKUIAvailabilityViewController *)self largeWeekdayLabel];
    [v9 setDate:v13];

    v10 = CUIKLongDayStringForDate();
    v11 = [(EKUIAvailabilityViewController *)self largeDateNavItem];
    [v11 setTitle:v10];

    v12 = [(EKUIAvailabilityViewController *)self eventTime];
    [v12 removeFromSuperview];

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
  v3 = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(EKUIAvailabilityViewController *)self freeSpanViews];
  [v8 removeAllObjects];
}

- (void)fetchAvailability
{
  v45 = *MEMORY[0x1E69E9840];
  [(EKUIAvailabilityViewController *)self setFetchingData:1];
  [(EKUIAvailabilityViewController *)self configureNavBarAndToolBar];
  v3 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v28 = [v3 dateByAddingTimeInterval:86399.0];

  objc_initWeak(&location, self);
  v4 = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [v4 cancelAllOperations];

  v5 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        v11 = [(EKUIAvailabilityViewController *)self currentStartDate];
        [v10 startLoadForDate:v11];

        v12 = [v10 participant];
        v13 = [v12 URL];
        v14 = [v13 absoluteString];

        [v5 setObject:v10 forKeyedSubscript:v14];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v15 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v16 = objc_alloc(MEMORY[0x1E6966AE0]);
  v17 = [(EKUIAvailabilityViewController *)self event];
  v18 = [v17 calendar];
  v19 = [v18 source];
  v20 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v21 = [(EKUIAvailabilityViewController *)self event];
  v22 = [v5 allKeys];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke;
  v35[3] = &unk_1E8441540;
  objc_copyWeak(&v38, &location);
  v23 = v15;
  v36 = v23;
  v24 = v5;
  v37 = v24;
  v25 = [v16 initWithSource:v19 startDate:v20 endDate:v28 ignoredEvent:v21 addresses:v22 resultsBlock:v35];

  objc_initWeak(&from, v25);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__EKUIAvailabilityViewController_fetchAvailability__block_invoke_3;
  v29[3] = &unk_1E8441568;
  objc_copyWeak(&v32, &location);
  v26 = v23;
  v30 = v26;
  objc_copyWeak(&v33, &from);
  v31 = self;
  [v25 setCompletionBlock:v29];
  v27 = [(EKUIAvailabilityViewController *)self availabilityRequestsQueue];
  [v27 addOperation:v25];

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

- (BOOL)span:(id)a3 overlapsWithDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 startDate];
  if ([v7 CalIsBeforeOrSameAsDate:v6])
  {
    v8 = [v5 endDate];
    v9 = [v8 CalIsAfterOrSameAsDate:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dedupSpans:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
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
            v13 = [v12 startDate];
            v14 = [v5 startDate];
            if ([v13 isEqualToDate:v14])
            {
              v15 = [v12 endDate];
              [v5 endDate];
              v16 = v10;
              v18 = v17 = v9;
              v19 = v6;
              v20 = [v15 isEqualToDate:v18];

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

- (id)mergeSpan:(id)a3 intoSpans:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![MEMORY[0x1E6966988] showTypeAsBusy:{objc_msgSend(v6, "type")}])
  {
    goto LABEL_22;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v7 copy];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v9)
  {

LABEL_20:
    v30 = objc_alloc(MEMORY[0x1E6966980]);
    v31 = [v6 startDate];
    v32 = [v6 endDate];
    v28 = [v30 initWithStartDate:v31 endDate:v32 type:{objc_msgSend(v6, "type")}];

    [v7 addObject:v28];
    goto LABEL_21;
  }

  v10 = v9;
  v37 = v7;
  v38 = self;
  v40 = 0;
  v11 = *v42;
  v39 = v6;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v41 + 1) + 8 * i);
      v14 = [v6 startDate];
      v15 = [v13 startDate];
      if ([v14 CalIsAfterOrSameAsDate:v15])
      {
        [v6 endDate];
        v16 = v11;
        v18 = v17 = v8;
        [v13 endDate];
        v20 = v19 = v10;
        v21 = [v18 CalIsBeforeOrSameAsDate:v20];

        v10 = v19;
        v8 = v17;
        v11 = v16;
        self = v38;
        v6 = v39;

        if (v21)
        {
          v29 = v37;

          goto LABEL_23;
        }
      }

      else
      {
      }

      v22 = [v13 startDate];
      v23 = [(EKUIAvailabilityViewController *)self span:v6 overlapsWithDate:v22];

      if (v23)
      {
        v24 = [v6 startDate];
        [v13 setStartDate:v24];

        v40 = 1;
      }

      v25 = [v13 endDate];
      v26 = [(EKUIAvailabilityViewController *)self span:v6 overlapsWithDate:v25];

      if (v26)
      {
        v27 = [v6 endDate];
        [v13 setEndDate:v27];

        v40 = 1;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v10);

  v7 = v37;
  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }

  [(EKUIAvailabilityViewController *)self dedupSpans:v37];
  v7 = v28 = v37;
LABEL_21:

  v33 = MEMORY[0x1E695DF70];
  v34 = [v7 sortedArrayUsingComparator:&__block_literal_global_35];
  v35 = [v33 arrayWithArray:v34];

  v7 = v35;
LABEL_22:
  v29 = v7;
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
        v9 = [v8 spans];
        v10 = [v9 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
                objc_enumerationMutation(v9);
              }

              v3 = [(EKUIAvailabilityViewController *)self mergeSpan:*(*(&v37 + 1) + 8 * v13) intoSpans:v14];

              ++v13;
              v14 = v3;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  v15 = objc_opt_new();
  v16 = [(EKUIAvailabilityViewController *)self currentStartDate];
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
      v22 = v16;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v33 + 1) + 8 * v21);
        v24 = [v23 startDate];
        v25 = [v22 CalIsBeforeDate:v24];

        if (v25)
        {
          v26 = objc_alloc(MEMORY[0x1E6966980]);
          v27 = [v23 startDate];
          v28 = [v26 initWithStartDate:v22 endDate:v27 type:2];

          [v15 addObject:v28];
        }

        v16 = [v23 endDate];

        ++v21;
        v22 = v16;
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
  v3 = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v29 + 1) + 8 * v7);
      v9 = [v8 startDate];
      v10 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
      v11 = [v9 isAfterDate:v10];

      if (v11)
      {
        break;
      }

      v12 = [v8 endDate];
      v13 = [(EKUIAvailabilityViewController *)self modifiedEndDate];
      v14 = [v12 isAfterDate:v13];

      if (v14)
      {
        v17 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
        v18 = [MEMORY[0x1E695DEE8] currentCalendar];
        v19 = [v17 dateByAddingHours:1 inCalendar:v18];
        [(EKUIAvailabilityViewController *)self setModifiedStartDate:v19];

        v20 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
        v21 = [(EKUIAvailabilityViewController *)self event];
        [v21 duration];
        v22 = [v20 dateByAddingTimeInterval:?];

        v23 = [v8 endDate];
        LOBYTE(v21) = [v22 isBeforeDate:v23];

        if ((v21 & 1) == 0)
        {
          v24 = [v8 endDate];
          v25 = [(EKUIAvailabilityViewController *)self event];
          [v25 duration];
          v27 = [v24 dateByAddingTimeInterval:-v26];
          [(EKUIAvailabilityViewController *)self setModifiedStartDate:v27];
        }

        v28 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
        [(EKUIAvailabilityViewController *)self updateCurrentEventAtTime:v28];

        [(EKUIAvailabilityViewController *)self setSearchingForNextAvailableTime:0];
        goto LABEL_15;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v15 = [v8 startDate];
    [(EKUIAvailabilityViewController *)self setModifiedStartDate:v15];

    v16 = [(EKUIAvailabilityViewController *)self modifiedStartDate];
    [(EKUIAvailabilityViewController *)self updateCurrentEventAtTime:v16];

    [(EKUIAvailabilityViewController *)self setSearchingForNextAvailableTime:0];
LABEL_15:

    return;
  }

LABEL_10:

  [(EKUIAvailabilityViewController *)self nextDayTapped:0];
}

- (void)singleTap:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKUIAvailabilityViewController *)self scrollView];
  [v4 locationInView:v5];
  v7 = v6;

  [(EKUIAvailabilityViewController *)self timelineWidth];
  v9 = v8 / 24.0;
  v10 = [(EKUIAvailabilityViewController *)self event];
  [v10 duration];
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
  v16 = [(EKUIAvailabilityViewController *)self freeSpanViews];
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v16);
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

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
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

- (void)viewPinched:(id)a3
{
  v38 = a3;
  v4 = [v38 state];
  if ((v4 - 3) <= 2)
  {
    [(EKUIAvailabilityViewController *)self layout];
  }

  if (([v38 numberOfTouches] & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (v4 == 2)
    {
      v9 = [(EKUIAvailabilityViewController *)self timelineView];
      [v9 minWidth];
      v11 = v10;

      [(EKUIAvailabilityViewController *)self pinchStartWidth];
      v13 = v12;
      [v38 scale];
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
      v16 = [(EKUIAvailabilityViewController *)self view];
      [v38 locationOfTouch:0 inView:v16];
      v18 = v17;
      v19 = [(EKUIAvailabilityViewController *)self compact];
      v20 = [(EKUIAvailabilityViewController *)self view];
      v21 = [v20 window];
      [EKUIAvailabilityParticipantList listWidthForCompact:v19 orientation:EKUIInterfaceOrientationForViewHierarchy(v21)];
      v23 = v18 - v22;

      [(EKUIAvailabilityViewController *)self pinchStartRatio];
      v25 = v24;
      [(EKUIAvailabilityViewController *)self availableWidth];
      v27 = -(v23 - v25 * v26);
      v28 = [(EKUIAvailabilityViewController *)self scrollView];
      [v28 contentOffset];
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
      v34 = [(EKUIAvailabilityViewController *)self scrollView];
      [v34 frame];
      v36 = v33 - v35;

      if (v31 < v36)
      {
        v36 = v31;
      }

      v37 = [(EKUIAvailabilityViewController *)self scrollView];
      [v37 setContentOffset:0 animated:{v36, v30}];

      [(EKUIAvailabilityViewController *)self layout];
    }

    else if (v4 == 1)
    {
      [(EKUIAvailabilityViewController *)self availableWidth];
      [(EKUIAvailabilityViewController *)self setPinchStartWidth:?];
      v5 = [(EKUIAvailabilityViewController *)self scrollView];
      [v38 locationOfTouch:0 inView:v5];
      v7 = v6;
      [(EKUIAvailabilityViewController *)self pinchStartWidth];
      [(EKUIAvailabilityViewController *)self setPinchStartRatio:v7 / v8];
    }
  }
}

- (BOOL)span:(id)a3 overlapsWithStartDate:(id)a4 endDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([MEMORY[0x1E6966988] showTypeAsBusy:{objc_msgSend(v7, "type")}])
  {
    v10 = [v7 startDate];
    if ([v10 CalIsBeforeOrSameAsDate:v8])
    {
      v11 = [v7 endDate];
      v12 = [v11 CalIsAfterDate:v8];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v14 = [v7 startDate];
    if ([v14 CalIsBeforeDate:v9])
    {
      v15 = [v7 endDate];
      v16 = [v15 CalIsAfterOrSameAsDate:v9];

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

    v17 = [v7 startDate];
    if ([v17 CalIsAfterOrSameAsDate:v8])
    {
      v18 = [v7 endDate];
      v13 = [v18 CalIsBeforeOrSameAsDate:v9];
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

- (BOOL)updateCurrentEventAtTime:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKUIAvailabilityViewController *)self event];
  [v5 duration];
  v6 = [v4 dateByAddingTimeInterval:?];

  [(EKUIAvailabilityViewController *)self setModifiedStartDate:v4];
  [(EKUIAvailabilityViewController *)self setModifiedEndDate:v6];
  v7 = [(EKUIAvailabilityViewController *)self eventTime];
  [v7 removeFromSuperview];

  v8 = objc_alloc(MEMORY[0x1E6992F70]);
  v9 = [(EKUIAvailabilityViewController *)self currentStartDate];
  v10 = [v8 initWithStartDate:v9 duration:86400.0];

  if (([v10 containsDate:v4] & 1) != 0 || objc_msgSend(v10, "containsDate:", v6))
  {
    v11 = [(EKUIAvailabilityViewController *)self eventFreeSpanAtStart:v4 endDate:v6 isFreeSpan:0];
    [(EKUIAvailabilityViewController *)self setEventTime:v11];

    v12 = [(EKUIAvailabilityViewController *)self scrollView];
    v13 = [(EKUIAvailabilityViewController *)self eventTime];
    [v12 addSubview:v13];

    v14 = [(EKUIAvailabilityViewController *)self scrollView];
    v15 = [(EKUIAvailabilityViewController *)self eventTime];
    [v15 frame];
    v16 = 1;
    [v14 scrollRectToVisible:1 animated:?];

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
            v21 = [v20 spans];
            v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                    objc_enumerationMutation(v21);
                  }

                  if ([(EKUIAvailabilityViewController *)self span:*(*(&v35 + 1) + 8 * j) overlapsWithStartDate:v4 endDate:v6])
                  {
                    v26 = MEMORY[0x1E6966A88];
                    v27 = [v20 participant];
                    v28 = [v26 participantForSortingWithEKParticipant:v27];

                    [v33 addObject:v28];
                    goto LABEL_19;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
      v29 = [(EKUIAvailabilityViewController *)self participantList];
      [v29 setBusyParticipants:v33];

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

- (CGRect)frameForFreeSpanViewAtStart:(id)a3 endDate:(id)a4 duration:(double)a5
{
  v7 = a4;
  [(EKUIAvailabilityViewController *)self convertDateIntoOffset:a3];
  v9 = v8;
  if (v7)
  {
    [(EKUIAvailabilityViewController *)self convertDateIntoOffset:v7];
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
    v13 = [(EKUIAvailabilityViewController *)self event];
    [v13 duration];
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

  v25 = [(EKUIAvailabilityViewController *)self participantAvailabilityViews];
  v26 = [v25 count];
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

- (id)eventFreeSpanAtStart:(id)a3 endDate:(id)a4 isFreeSpan:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(EKUIAvailabilityViewController *)self event];
  v11 = [v10 calendar];
  v12 = [v11 displayColor];

  [(EKUIAvailabilityViewController *)self frameForFreeSpanViewAtStart:v9 endDate:v8 duration:0.0];
  v17 = [[EKUIAvailabilityFreeSpanView alloc] initWithFrame:v12 andColor:v9 startDate:v8 endDate:v5 isFreeSpan:v13, v14, v15, v16];

  return v17;
}

- (double)convertDateIntoOffset:(id)a3
{
  v4 = a3;
  v5 = [(EKUIAvailabilityViewController *)self event];
  v6 = [v5 timeZone];
  v7 = [(EKUIAvailabilityViewController *)self currentStartDate];
  [v6 daylightSavingTimeOffsetForDate:v7];
  v9 = v8;

  v10 = [(EKUIAvailabilityViewController *)self event];
  v11 = [v10 timeZone];
  [v11 daylightSavingTimeOffsetForDate:v4];
  v13 = v12;

  v14 = [(EKUIAvailabilityViewController *)self currentStartDate];
  [v4 timeIntervalSinceDate:v14];
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

- (void)scrollViewDidScroll:(id)a3
{
  v18 = a3;
  v4 = [(EKUIAvailabilityViewController *)self scrollView];

  if (v4 == v18)
  {
    v5 = [(EKUIAvailabilityViewController *)self timelineView];
    [v18 contentOffset];
    [v5 setHorizontalScrollOffset:?];

    v6 = [(EKUIAvailabilityViewController *)self participantList];
    [v18 contentOffset];
    [v6 setVerticalScrollOffset:v7];
  }

  v8 = [(EKUIAvailabilityViewController *)self participantList];

  if (v8 == v18)
  {
    v9 = [(EKUIAvailabilityViewController *)self scrollView];
    v10 = [(EKUIAvailabilityViewController *)self scrollView];
    [v10 contentOffset];
    v12 = v11;
    [v18 contentOffset];
    [v9 setContentOffset:v12];
  }

  v13 = [(EKUIAvailabilityViewController *)self timelineView];

  if (v13 == v18)
  {
    v14 = [(EKUIAvailabilityViewController *)self scrollView];
    [v18 contentOffset];
    v16 = v15;
    v17 = [(EKUIAvailabilityViewController *)self scrollView];
    [v17 contentOffset];
    [v14 setContentOffset:v16];
  }
}

@end