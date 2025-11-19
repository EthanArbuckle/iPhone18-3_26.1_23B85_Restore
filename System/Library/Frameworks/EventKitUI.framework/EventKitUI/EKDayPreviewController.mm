@interface EKDayPreviewController
- (BOOL)_eventOccursOnThisDay:(id)a3;
- (CGSize)preferredContentSize;
- (EKDayPreviewController)initWithDate:(id)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6 model:(id)a7 overriddenDayViewHourScale:(double)a8 overriddenDayViewMinHourRange:(int64_t)a9;
- (UIViewController)hostingViewController;
- (_NSRange)_displayedHoursRange;
- (double)_dayViewHeight;
- (id)_anchorEvent;
- (id)_dateForFirstHourMarker;
- (id)_eventsForStartDate:(id)a3 endDate:(id)a4;
- (id)_hourMaskForEvents:(id)a3;
- (id)_selectedCalendars;
- (id)dayView:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)_scrollDayViewToCorrectOffsetAnimated:(BOOL)a3;
- (void)_setNewVisibleHourLabels;
- (void)_setupAutoLayout;
- (void)_setupDayView;
- (void)_updateIvarsWithDate:(id)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6;
- (void)loadView;
- (void)reload;
- (void)reloadWithNewDate:(id)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6;
- (void)toggleExpandedState;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKDayPreviewController

- (EKDayPreviewController)initWithDate:(id)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6 model:(id)a7 overriddenDayViewHourScale:(double)a8 overriddenDayViewMinHourRange:(int64_t)a9
{
  v30[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v29.receiver = self;
  v29.super_class = EKDayPreviewController;
  v21 = [(EKDayPreviewController *)&v29 init];
  v22 = v21;
  if (v21)
  {
    [(EKDayPreviewController *)v21 _updateIvarsWithDate:v16 event:v17 overriddenEventStartDate:v18 overriddenEventEndDate:v19];
    objc_storeStrong(&v22->_model, a7);
    [(EKDayPreviewController *)v22 setRespectsSelectedCalendarsFilter:1];
    [(EKDayPreviewController *)v22 setStyle:0];
    v22->_overriddenDayViewHourScale = a8;
    v22->_overriddenDayViewMinHourRange = a9;
    objc_initWeak(&location, v22);
    v30[0] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __156__EKDayPreviewController_initWithDate_event_overriddenEventStartDate_overriddenEventEndDate_model_overriddenDayViewHourScale_overriddenDayViewMinHourRange___block_invoke;
    v26[3] = &unk_1E843EBE8;
    objc_copyWeak(&v27, &location);
    v24 = [(EKDayPreviewController *)v22 registerForTraitChanges:v23 withHandler:v26];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v22;
}

void __156__EKDayPreviewController_initWithDate_event_overriddenEventStartDate_overriddenEventEndDate_model_overriddenDayViewHourScale_overriddenDayViewMinHourRange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained style] == 2;
    WeakRetained = v8;
    if (!v2)
    {
      v3 = [v8[126] layer];
      v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      v5 = [v4 CGColor];

      [v3 setBackgroundColor:v5];
      if (![v8 style])
      {
        v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
        [v3 setBorderColor:{objc_msgSend(v6, "CGColor")}];

        if (MEMORY[0x1D38B98D0]())
        {
          v7 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
          [v3 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
        }
      }

      WeakRetained = v8;
    }
  }
}

- (void)_updateIvarsWithDate:(id)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6
{
  v21 = a3;
  v11 = a5;
  v12 = a6;
  objc_storeStrong(&self->_date, a3);
  v13 = a4;
  v14 = [v13 copy];

  objc_storeStrong(&self->_event, v14);
  v15 = [(EKEvent *)self->_event startDate];
  originalEventStartDate = self->_originalEventStartDate;
  self->_originalEventStartDate = v15;

  v17 = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
  originalEventEndDate = self->_originalEventEndDate;
  self->_originalEventEndDate = v17;

  objc_storeStrong(&self->_overriddenEventStartDate, a5);
  objc_storeStrong(&self->_overriddenEventEndDate, a6);
  overriddenEventStartDate = self->_overriddenEventStartDate;
  if (overriddenEventStartDate && self->_overriddenEventEndDate)
  {
    v20 = [(NSDate *)overriddenEventStartDate CalIsBeforeOrSameAsDate:?];
    self->_hasOverriddenEventDates = v20;
    if (v20)
    {
      [(EKEvent *)self->_event overrideStartDate:self->_overriddenEventStartDate];
      [(EKEvent *)self->_event overrideEndDate:self->_overriddenEventEndDate];
    }
  }

  else
  {
    self->_hasOverriddenEventDates = 0;
  }
}

- (void)loadView
{
  v48.receiver = self;
  v48.super_class = EKDayPreviewController;
  [(EKDayPreviewController *)&v48 loadView];
  if (self->_date)
  {
    v3 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
    [(EKDayPreviewController *)self setTitle:v3];
  }

  else
  {
    v3 = EventKitUIBundle();
    v4 = [v3 localizedStringForKey:@"Calendar" value:&stru_1F4EF6790 table:0];
    [(EKDayPreviewController *)self setTitle:v4];
  }

  v5 = CUIKCalendar();
  v6 = [v5 components:30 fromDate:self->_date];

  if (self->_style == 1)
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    v8 = [v7 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x1E69DC888] clearColor];
  if ([(EKDayPreviewController *)self style]|| !MEMORY[0x1D38B98D0]())
  {
    v13 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];

    v13 = 1;
    v11 = v12;
  }

  v14 = [EKDayView alloc];
  LOBYTE(v47) = 1;
  v15 = [(EKDayView *)v14 initWithFrame:v10 sizeClass:1 orientation:v6 displayDate:v11 backgroundColor:v13 opaque:0 scrollbarShowsInside:*MEMORY[0x1E695F058] isMiniPreviewInEventDetail:*(MEMORY[0x1E695F058] + 8) rightClickDelegate:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v47, 0];
  dayView = self->_dayView;
  self->_dayView = v15;

  [(EKDayView *)self->_dayView setTodayScrollSecondBuffer:0.0];
  v17 = self->_dayView;
  v18 = CUIKCalendar();
  [(EKDayView *)v17 setCalendar:v18];

  [(EKDayView *)self->_dayView setAllowsOccurrenceSelection:0];
  v19 = self->_dayView;
  v20 = CalCopyTimeZone();
  [(EKDayView *)v19 setTimeZone:v20];

  [(EKDayView *)self->_dayView setDataSource:self];
  [(EKDayView *)self->_dayView setShouldEverShowTimeIndicators:0];
  [(EKDayView *)self->_dayView setHourScale:self->_overriddenDayViewHourScale];
  [(EKDayView *)self->_dayView setAnimatesTimeMarker:0];
  [(EKDayView *)self->_dayView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EKDayView *)self->_dayView setHideMagicPocketBlur:1];
  [(EKDayView *)self->_dayView setDelegate:self];
  if ([(EKDayPreviewController *)self style]== 2)
  {
    v21 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v22 = [(EKDayPreviewController *)self view];
    [v22 setBackgroundColor:v21];

    [(EKDayView *)self->_dayView setOpaque:1];
    v23 = [(EKDayPreviewController *)self view];
    [v23 addSubview:self->_dayView];
  }

  else
  {
    v24 = [(EKDayView *)self->_dayView dayContent];
    [v24 setUsesSmallText:1];

    [(EKDayView *)self->_dayView setUserInteractionEnabled:0];
    [(EKDayView *)self->_dayView setScrollAnimationDurationOverride:0.4];
    v25 = [(EKDayView *)self->_dayView dayContent];
    [v25 setOffscreenOccurrencePinningEnabled:0];

    v26 = self->_dayView;
    if (MEMORY[0x1D38B98D0]())
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 16.0;
    }

    v28 = [(EKDayView *)v26 setTopContentInset:v27];
    v29 = self->_dayView;
    v30 = MEMORY[0x1D38B98D0](v28);
    v31 = 28.0;
    if (v30)
    {
      v31 = 0.0;
    }

    [(EKDayView *)v29 setBottomContentInset:v31];
    v32 = [(EKDayView *)self->_dayView dayContent];
    MEMORY[0x1D38B98D0]();
    [v32 setOccurrenceLayoutLeadingInset:0.0];

    v33 = [(EKDayView *)self->_dayView dayContent];
    if (MEMORY[0x1D38B98D0]())
    {
      v34 = 8.0;
    }

    else
    {
      v34 = 0.0;
    }

    [v33 setOccurrenceLayoutTrailingInset:v34];

    if (MEMORY[0x1D38B98D0]())
    {
      v35 = 8.0;
    }

    else
    {
      v35 = 0.0;
    }

    [(EKDayView *)self->_dayView setLeadingMargin:v35];
    if ([(EKDayPreviewController *)self style])
    {
      v36 = 0.0;
    }

    else
    {
      v36 = 16.0;
    }

    [(EKDayView *)self->_dayView setTrailingMargin:v36];
    [(EKDayView *)self->_dayView setAlignsMidnightToTop:1];
    [(EKDayView *)self->_dayView setAllowsScrolling:[(EKDayPreviewController *)self style]!= 0];
    if ([(EKDayPreviewController *)self style]== 1)
    {
      [(EKDayView *)self->_dayView setEventsFillGrid:1];
    }

    v37 = objc_alloc_init(MEMORY[0x1E69DD250]);
    roundedView = self->_roundedView;
    self->_roundedView = v37;

    v23 = [(UIView *)self->_roundedView layer];
    v39 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v23 setBackgroundColor:{objc_msgSend(v39, "CGColor")}];

    [v23 setMasksToBounds:1];
    [(UIView *)self->_roundedView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (![(EKDayPreviewController *)self style])
    {
      [v23 setCornerRadius:5.0];
      v40 = [MEMORY[0x1E69DC888] separatorColor];
      [v23 setBorderColor:{objc_msgSend(v40, "CGColor")}];

      v41 = [v23 setBorderWidth:1.0 / EKUIScaleFactor()];
      if (MEMORY[0x1D38B98D0](v41))
      {
        v42 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
        [v23 setBorderColor:{objc_msgSend(v42, "CGColor")}];

        [v23 setCornerRadius:EKUITableViewCellCornerRadius()];
        v43 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
        v44 = [(EKDayPreviewController *)self view];
        [v44 setBackgroundColor:v43];

        [(EKDayView *)self->_dayView setOpaque:1];
        v45 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
        [v23 setBackgroundColor:{objc_msgSend(v45, "CGColor")}];
      }
    }

    [(UIView *)self->_roundedView addSubview:self->_dayView];
    v46 = [(EKDayPreviewController *)self view];
    [v46 addSubview:self->_roundedView];
  }
}

- (void)viewDidLoad
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = EKDayPreviewController;
  [(EKDayPreviewController *)&v17 viewDidLoad];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(EKDayPreviewController *)self navigationController];
  v4 = [v3 viewControllers];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = [v7 toolbarItems];
  [(EKDayPreviewController *)self setToolbarItems:v12 animated:0];

  [(EKDayPreviewController *)self _setupAutoLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = EKDayPreviewController;
  [(EKDayPreviewController *)&v6 viewWillAppear:a3];
  if (!self->_event)
  {
    v4 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "EKDayPreviewController is being shown with a nil event.", v5, 2u);
    }
  }

  [(EKDayPreviewController *)self _setupDayView];
  if (self->_requireScrollPositionCorrection)
  {
    [(EKDayPreviewController *)self _scrollDayViewToCorrectOffsetAnimated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  [(EKDayPreviewController *)self _setupDayView];

  [(EKDayPreviewController *)self _scrollDayViewToCorrectOffsetAnimated:0];
}

- (void)reloadWithNewDate:(id)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6
{
  [(EKDayPreviewController *)self _updateIvarsWithDate:a3 event:a4 overriddenEventStartDate:a5 overriddenEventEndDate:a6];

  [(EKDayPreviewController *)self reload];
}

- (void)reload
{
  if (self->_date)
  {
    v3 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
    [(EKDayPreviewController *)self setTitle:v3];
  }

  else
  {
    v3 = EventKitUIBundle();
    v4 = [v3 localizedStringForKey:@"Calendar" value:&stru_1F4EF6790 table:0];
    [(EKDayPreviewController *)self setTitle:v4];
  }

  v5 = CUIKCalendar();
  v8 = [v5 components:30 fromDate:self->_date];

  [(EKDayView *)self->_dayView setDisplayDate:v8];
  [(EKDayView *)self->_dayView reloadDataSynchronously];
  if ([(EKDayPreviewController *)self style]== 2)
  {
    [(EKDayView *)self->_dayView bringEventToFront:self->_event];
  }

  v6 = [(EKDayView *)self->_dayView occurrenceViewForEvent:self->_event];
  [v6 setSelected:1];
  if (self->_hasOverriddenStatus)
  {
    [v6 setTentative:self->_overriddenParticipantStatus == 4];
    [v6 setDeclined:self->_overriddenParticipantStatus == 3];
    [v6 setNeedsReply:{objc_msgSend(MEMORY[0x1E6966A80], "needsResponseForParticipantStatus:", self->_overriddenParticipantStatus)}];
  }

  [(EKDayPreviewController *)self _setNewVisibleHourLabels];
  v7 = [(EKDayView *)self->_dayView window];

  if (v7)
  {
    [(EKDayPreviewController *)self _scrollDayViewToCorrectOffsetAnimated:0];
  }

  else
  {
    self->_requireScrollPositionCorrection = 1;
  }

  [(EKDayView *)self->_dayView setNeedsDisplay];
}

- (void)_setupDayView
{
  if (!self->_firstshow)
  {
    self->_firstshow = 1;
    [(EKDayPreviewController *)self reload];
  }
}

- (void)_setupAutoLayout
{
  v76[4] = *MEMORY[0x1E69E9840];
  if ([(EKDayPreviewController *)self style]== 2)
  {
    v61 = MEMORY[0x1E696ACD8];
    v58 = [(EKDayView *)self->_dayView leadingAnchor];
    v65 = [(EKDayPreviewController *)self view];
    v3 = [v65 safeAreaLayoutGuide];
    v67 = [v3 leadingAnchor];
    v66 = [v58 constraintEqualToAnchor:v67];
    v76[0] = v66;
    v63 = [(EKDayView *)self->_dayView trailingAnchor];
    v64 = [(EKDayPreviewController *)self view];
    v62 = [v64 safeAreaLayoutGuide];
    v60 = [v62 trailingAnchor];
    v59 = [v63 constraintEqualToAnchor:v60];
    v76[1] = v59;
    v56 = [(EKDayView *)self->_dayView topAnchor];
    v57 = [(EKDayPreviewController *)self view];
    v4 = [v57 safeAreaLayoutGuide];
    v5 = [v4 topAnchor];
    v6 = [v56 constraintEqualToAnchor:v5];
    v76[2] = v6;
    v7 = [(EKDayView *)self->_dayView bottomAnchor];
    v8 = [(EKDayPreviewController *)self view];
    v9 = [v8 safeAreaLayoutGuide];
    v10 = [v9 bottomAnchor];
    v11 = [v7 constraintEqualToAnchor:v10];
    v76[3] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
    [v61 activateConstraints:v12];

    v13 = v58;
    v14 = v65;
  }

  else
  {
    v15 = [(EKDayPreviewController *)self hostingViewController];
    v16 = objc_opt_respondsToSelector();

    v17 = [(EKDayPreviewController *)self hostingViewController];
    v18 = v17;
    if (v16)
    {
      v19 = sel_tableView;
    }

    else
    {
      v19 = sel_view;
    }

    [objc_msgSend(v17 performSelector:{v19), "layoutMargins"}];
    v21 = v20;
    v23 = v22;

    if (MEMORY[0x1D38B98D0]())
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 16.0;
    }

    if (MEMORY[0x1D38B98D0]())
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 28.0;
    }

    if (CalInterfaceIsLeftToRight())
    {
      v26 = -4.0;
    }

    else
    {
      v26 = 1.0;
    }

    v27 = [(EKDayPreviewController *)self style];
    if (v27 == 1)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v24;
    }

    if (v27 == 1)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v25;
    }

    if (v27 == 1)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v26;
    }

    if (v27 == 1)
    {
      v31 = -1.0;
    }

    else
    {
      v31 = 0.0;
    }

    if (v27 == 1)
    {
      v23 = 0.0;
      v32 = 0.0;
    }

    else
    {
      v32 = v21;
    }

    v33 = [(EKDayPreviewController *)self style];
    if (v33)
    {
      v34 = v23;
    }

    else
    {
      v34 = 0.0;
    }

    if (v33)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v37 = MEMORY[0x1E696AD98];
      v38 = v36;
      v39 = [v37 numberWithDouble:v35];
      v40 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
      v41 = [(EKDayPreviewController *)self hostingViewController];
      *buf = 138412802;
      v71 = v39;
      v72 = 2112;
      v73 = v40;
      v74 = 2112;
      v75 = v41;
      _os_log_impl(&dword_1D3400000, v38, OS_LOG_TYPE_DEBUG, "left %@ right %@ host %@", buf, 0x20u);
    }

    v42 = _NSDictionaryOfVariableBindings(&cfstr_Roundedview.isa, self->_roundedView, 0);
    v68[0] = @"leftMargin";
    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
    v69[0] = v43;
    v68[1] = @"rightMargin";
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    v69[1] = v44;
    v68[2] = @"topContentInset";
    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
    v69[2] = v45;
    v68[3] = @"bottomContentInset";
    v46 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    v69[3] = v46;
    v68[4] = @"leftContentInset";
    v47 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    v69[4] = v47;
    v68[5] = @"rightContentInset";
    v48 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
    v69[5] = v48;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:6];

    v49 = MEMORY[0x1E696ACD8];
    v50 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(leftMargin)-[_roundedView]-(rightMargin)-|" options:0 metrics:v14 views:v42];
    [v49 activateConstraints:v50];

    v51 = MEMORY[0x1E696ACD8];
    v52 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(topContentInset)-[_roundedView]-(bottomContentInset)-|" options:0 metrics:v14 views:v42];
    [v51 activateConstraints:v52];

    v13 = _NSDictionaryOfVariableBindings(&cfstr_Dayview.isa, self->_dayView, 0);

    v53 = MEMORY[0x1E696ACD8];
    v54 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(leftContentInset)-[_dayView]-(rightContentInset)-|" options:0 metrics:v14 views:v13];
    [v53 activateConstraints:v54];

    v55 = MEMORY[0x1E696ACD8];
    v3 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_dayView]|" options:0 metrics:0 views:v13];
    [v55 activateConstraints:v3];
  }
}

- (id)dayView:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = [a4 date];
  v9 = [v7 date];

  v10 = [(EKDayPreviewController *)self _eventsForStartDate:v8 endDate:v9];

  return v10;
}

- (id)_selectedCalendars
{
  v3 = [(EKEvent *)self->_event calendar];
  v4 = [v3 source];

  if (([v4 isDelegate] & 1) == 0)
  {

    v4 = 0;
  }

  v5 = objc_alloc(MEMORY[0x1E69669B8]);
  v6 = [(EKEvent *)self->_event eventStore];
  v7 = [v5 initWithEventStore:v6 limitedToSource:v4 visibilityChangedCallback:0 queue:0];

  v8 = [v7 visibleCalendars];

  return v8;
}

- (id)_eventsForStartDate:(id)a3 endDate:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v43 = a4;
  v45 = self;
  if ([(EKDayPreviewController *)self respectsSelectedCalendarsFilter])
  {
    v41 = [(EKDayPreviewController *)self _selectedCalendars];
  }

  else
  {
    v41 = 0;
  }

  model = self->_model;
  if (model)
  {
    [(CUIKCalendarModel *)model setPreferredReloadStartDate:v44 endDate:v43];
    v7 = [(CUIKCalendarModel *)self->_model occurrencesForStartDate:v44 endDate:v43 preSorted:0 waitForLoad:1];
    v42 = [v7 occurrences];
  }

  else
  {
    v8 = [(EKEvent *)self->_event eventStore];
    v7 = [v8 predicateForEventsWithStartDate:v44 endDate:v43 calendars:v41];

    v9 = [(EKEvent *)v45->_event eventStore];
    v42 = [v9 eventsMatchingPredicate:v7];
  }

  v10 = [v42 mutableCopy];
  v11 = v10;
  v12 = v45;
  if (v45->_hasOverriddenEventDates)
  {
    if (v10)
    {
      v51 = 0;
      *&v52 = &v51;
      *(&v52 + 1) = 0x3032000000;
      v53 = __Block_byref_object_copy__5;
      v54 = __Block_byref_object_dispose__5;
      v55 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __54__EKDayPreviewController__eventsForStartDate_endDate___block_invoke;
      v50[3] = &unk_1E84400C8;
      v50[4] = v45;
      v50[5] = &v51;
      [v10 enumerateObjectsUsingBlock:v50];
      [v11 removeObject:*(v52 + 40)];
      _Block_object_dispose(&v51, 8);

      v12 = v45;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (v12->_event)
    {
      [v11 addObject:?];
    }
  }

  [v11 sortUsingSelector:sel_compareStartDateWithEvent_];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v16 = [(EKEvent *)v45->_event eventStore];
  [v16 timeZone];

  [v44 timeIntervalSinceReferenceDate];
  v18 = v17;
  [v43 timeIntervalSinceReferenceDate];
  v20 = v19;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v22)
  {
    v23 = *v47;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        v26 = [v25 startDate];
        [v26 timeIntervalSinceReferenceDate];
        v28 = v27;

        if (v28 >= v18)
        {
          if (v28 >= v20)
          {
            goto LABEL_31;
          }

          v34 = [v25 isAllDay];
          [v13 addObject:v25];
          v35 = v15;
          if ((v34 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          [v25 duration];
          v30 = v29;
          v31 = [v25 isAllDay];
          v32 = v30;
          if ((v31 & 1) == 0)
          {
            if (v28 + v32 <= v18)
            {
              continue;
            }

            [v13 addObject:v25];
            v35 = v15;
LABEL_28:
            [v35 addObject:v25];
            continue;
          }

          v51 = 0;
          LODWORD(v52) = (v32 + 1) / 0x15180;
          *(&v52 + 4) = 0;
          HIDWORD(v52) = 0;
          v53 = 0xBFF0000000000000;
          CalAbsoluteTimeAddGregorianUnits();
          if (v33 <= v18)
          {
            continue;
          }

          [v13 addObject:v25];
        }

        v36 = [(EKDayPreviewController *)v45 hidesAllDayEvents];
        v35 = v14;
        if (!v36)
        {
          goto LABEL_28;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v22);
  }

LABEL_31:

  v37 = [v15 copy];
  cachedTimedEvents = v45->_cachedTimedEvents;
  v45->_cachedTimedEvents = v37;

  v39 = [objc_alloc(MEMORY[0x1E6993448]) initWithOccurrences:v13 timedOccurrences:v15 allDayOccurrences:v14];

  return v39;
}

void __54__EKDayPreviewController__eventsForStartDate_endDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 calendarItemIdentifier];
  v8 = [*(*(a1 + 32) + 1080) calendarItemIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v13 startDate];
    if ([v10 isEqualToDate:*(*(a1 + 32) + 1032)])
    {
      v11 = [v13 endDateUnadjustedForLegacyClients];
      v12 = [v11 isEqualToDate:*(*(a1 + 32) + 1040)];

      if (v12)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a4 = 1;
      }
    }

    else
    {
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(EKDayPreviewController *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v2);

  if (IsCompactInViewHierarchy)
  {
    return 26;
  }

  else
  {
    return 30;
  }
}

- (id)_anchorEvent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = self->_event;
  if ([(EKDayPreviewController *)self style]!= 2 && [(EKDayPreviewController *)self _shouldShowAllVisibleEvents])
  {
    cachedTimedEvents = self->_cachedTimedEvents;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__EKDayPreviewController__anchorEvent__block_invoke;
    v6[3] = &unk_1E84400C8;
    v6[4] = self;
    v6[5] = &v7;
    [(NSArray *)cachedTimedEvents enumerateObjectsUsingBlock:v6];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__EKDayPreviewController__anchorEvent__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 startCalendarDateIncludingTravelTime];
  [v7 absoluteTime];
  v9 = v8;
  [*(*(a1 + 32) + 1016) dayStart];
  v11 = v10;

  if (v9 >= v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_setNewVisibleHourLabels
{
  if ([(EKDayPreviewController *)self style])
  {
    v3 = 0;
    v4 = 0x7FFFFFFFLL;
  }

  else
  {
    v3 = [(EKDayPreviewController *)self _displayedHoursRange];
    v4 = v5;
  }

  dayView = self->_dayView;

  [(EKDayView *)dayView setHoursToRender:v3, v4];
}

- (void)_scrollDayViewToCorrectOffsetAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKDayPreviewController *)self _anchorEvent];
  if (v5 && -[EKDayPreviewController _eventOccursOnThisDay:](self, "_eventOccursOnThisDay:", v5) && ([v5 isAllDay] & 1) == 0)
  {
    v15 = [(EKDayPreviewController *)self _dateForFirstHourMarker];
    if (MEMORY[0x1D38B98D0]())
    {
      v16 = -0.0;
    }

    else
    {
      v16 = -16.0;
    }

    if (![(EKDayPreviewController *)self style])
    {
      [(EKDayView *)self->_dayView scaledHourHeight];
      v16 = v16 + v17 * -0.5;
    }

    dayView = self->_dayView;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__EKDayPreviewController__scrollDayViewToCorrectOffsetAnimated___block_invoke;
    v20[3] = &unk_1E843EC60;
    v20[4] = self;
    [(EKDayView *)dayView scrollToDate:v15 offset:v3 animated:v20 whenFinished:v16];
  }

  else
  {
    v6 = self->_dayView;
    date = self->_date;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__EKDayPreviewController__scrollDayViewToCorrectOffsetAnimated___block_invoke_2;
    v19[3] = &unk_1E843EC60;
    v19[4] = self;
    [(EKDayView *)v6 scrollToDate:date animated:v3 whenFinished:v19];
  }

  if (![(EKDayPreviewController *)self style])
  {
    roundedView = self->_roundedView;
    v9 = [(EKDayView *)self->_dayView verticalScrollView];
    [v9 contentOffset];
    v11 = v10;
    v12 = [(EKDayView *)self->_dayView dayContent];
    [(UIView *)roundedView convertPoint:v12 fromView:0.0, v11];
    v14 = v13;

    [(EKDayView *)self->_dayView setAdditionalGridCurtainHeight:2.0 - v14];
  }

  self->_requireScrollPositionCorrection = 0;
}

- (BOOL)_eventOccursOnThisDay:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [v4 endDateUnadjustedForLegacyClients];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  [(EKDayView *)self->_dayView dayStart];
  result = 0;
  if (v10 >= v11)
  {
    [(EKDayView *)self->_dayView dayEnd];
    if (v7 <= v12)
    {
      return 1;
    }
  }

  return result;
}

- (id)_dateForFirstHourMarker
{
  if ([(EKDayPreviewController *)self style]== 1)
  {
    v3 = [(EKDayPreviewController *)self _displayedHoursRange];
  }

  else
  {
    v3 = [(EKDayView *)self->_dayView hoursToRender];
  }

  v4 = MEMORY[0x1E695DF00];
  [(EKDayView *)self->_dayView dayStart];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = CUIKCalendar();
  v7 = [v5 dateByAddingHours:v3 inCalendar:v6];

  return v7;
}

- (id)_hourMaskForEvents:(id)a3
{
  v4 = a3;
  v5 = 25;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:25];
  v7 = MEMORY[0x1E695E110];
  do
  {
    [v6 addObject:v7];
    --v5;
  }

  while (v5);
  v8 = MEMORY[0x1E695DF00];
  [(EKDayView *)self->_dayView dayStart];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v9 dateByAddingDays:1 inCalendar:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__EKDayPreviewController__hourMaskForEvents___block_invoke;
  v17[3] = &unk_1E84400F0;
  v18 = v9;
  v19 = v10;
  v21 = 25;
  v11 = v6;
  v20 = v11;
  v12 = v10;
  v13 = v9;
  [v4 enumerateObjectsUsingBlock:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

void __45__EKDayPreviewController__hourMaskForEvents___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 startDateIncludingTravel];
  v4 = [v3 dateByAddingHours:-1 inCalendar:0];

  v5 = [v4 roundSecondsAndMinutesUpInCalendar:0];
  v6 = [v16 endDateUnadjustedForLegacyClients];
  v7 = [v6 dateByAddingHours:1 inCalendar:0];

  v8 = [v7 roundSecondsAndMinutesDownInCalendar:0];
  if ([v5 isBeforeDate:*(a1 + 32)])
  {
    v9 = *(a1 + 32);

    v5 = v9;
  }

  if ([v8 isAfterDate:*(a1 + 40)])
  {
    v10 = *(a1 + 40);

    v8 = v10;
  }

  if (*(a1 + 56))
  {
    v11 = 0;
    v12 = MEMORY[0x1E695E118];
    do
    {
      v13 = [*(a1 + 32) dateByAddingHours:v11 inCalendar:0];
      v14 = [v5 compare:v13] != -1 && objc_msgSend(v5, "compare:", v13) != 0;
      v15 = [v8 compare:v13] != 1 && objc_msgSend(v8, "compare:", v13) != 0;
      if (!v14 && !v15)
      {
        [*(a1 + 48) setObject:v12 atIndexedSubscript:v11];
      }

      ++v11;
    }

    while (v11 < *(a1 + 56));
  }
}

- (_NSRange)_displayedHoursRange
{
  v43[1] = *MEMORY[0x1E69E9840];
  if ([(EKDayPreviewController *)self _shouldShowAllVisibleEvents])
  {
    v3 = self->_cachedTimedEvents;
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  if (self->_event)
  {
    v43[0] = self->_event;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    goto LABEL_5;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_6:
  v5 = [(EKDayPreviewController *)self _hourMaskForEvents:v4];
  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Hour Mask: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = -1;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __46__EKDayPreviewController__displayedHoursRange__block_invoke;
  v32[3] = &unk_1E8440118;
  v32[4] = &buf;
  [v5 enumerateObjectsUsingBlock:v32];
  v7 = [v5 count];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v5 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v9)
  {
    v10 = *v29;
    v11 = -1;
LABEL_10:
    v12 = 0;
    v13 = v7 - 1;
    v7 -= v9;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v8);
      }

      if (v11 != -1)
      {
        break;
      }

      if ([*(*(&v28 + 1) + 8 * v12) BOOLValue])
      {
        v11 = v13;
      }

      else
      {
        v11 = -1;
      }

      ++v12;
      --v13;
      if (v9 == v12)
      {
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v9)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  else
  {
    v11 = -1;
  }

  v14 = *(*(&buf + 1) + 24);
  overriddenDayViewMinHourRange = self->_overriddenDayViewMinHourRange;
  v16 = [(EKDayPreviewController *)self _shouldShowAllVisibleEvents];
  v17 = v11 - v14 + 1;
  if (overriddenDayViewMinHourRange <= v17)
  {
    v18 = v11 - v14 + 1;
  }

  else
  {
    v18 = overriddenDayViewMinHourRange;
  }

  if (v18 <= 1)
  {
    v18 = 1;
  }

  v19 = 4;
  if (v18 < 4)
  {
    v19 = v18;
  }

  if (v16)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = kEKUILogHandle;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(&buf + 1) + 24)];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
    *v33 = 138412802;
    v34 = v22;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_DEBUG, "rangeStart %@ length %@ cappedHours %@", v33, 0x20u);
  }

  v25 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  v26 = v25;
  v27 = v20;
  result.length = v27;
  result.location = v26;
  return result;
}

uint64_t __46__EKDayPreviewController__displayedHoursRange__block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(*(result + 32) + 8) + 24) == -1)
  {
    v5 = result;
    result = [a2 BOOLValue];
    if (result)
    {
      *(*(*(v5 + 32) + 8) + 24) = a3;
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (double)_dayViewHeight
{
  [(EKDayPreviewController *)self _displayedHoursRange];
  v4 = (v3 - 1);
  [(EKDayView *)self->_dayView scaledHourHeight];

  [EKDayTimeView defaultHeightForNumHours:v4 scaledHourHeight:?];
  return result;
}

- (CGSize)preferredContentSize
{
  v3 = [(EKDayPreviewController *)self view];
  [v3 sizeThatFits:{2147483650.0, 2147483650.0}];
  v5 = v4;

  if (MEMORY[0x1D38B98D0]())
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 16.0;
  }

  v7 = MEMORY[0x1D38B98D0]();
  v8 = 28.0;
  if (v7)
  {
    v8 = 0.0;
  }

  v9 = (v6 + v8);
  [(EKDayPreviewController *)self _dayViewHeight];
  v11 = v10 + v9;
  v12 = v5;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)toggleExpandedState
{
  if (!self->_isAnimating)
  {
    self->_userHasTappedToExpand ^= 1u;
    self->_isAnimating = 1;
    v3 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "User tapped to expand", buf, 2u);
    }

    v4 = [(EKDayPreviewController *)self view];
    [v4 setNeedsLayout];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__EKDayPreviewController_toggleExpandedState__block_invoke;
    block[3] = &unk_1E843EC60;
    block[4] = self;
    v5 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__EKDayPreviewController_toggleExpandedState__block_invoke_2;
    v6[3] = &unk_1E843EC60;
    v6[4] = self;
    dispatch_async(v5, v6);
  }
}

uint64_t __45__EKDayPreviewController_toggleExpandedState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setNewVisibleHourLabels];
  v2 = *(a1 + 32);

  return [v2 _scrollDayViewToCorrectOffsetAnimated:1];
}

void __45__EKDayPreviewController_toggleExpandedState__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1016) dayContent];
  v1 = [v2 layer];
  recursiveAnimationRemove(v1);
}

- (UIViewController)hostingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);

  return WeakRetained;
}

@end