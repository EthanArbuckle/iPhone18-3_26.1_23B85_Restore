@interface CompactMonthViewController
+ (double)topOfMonthNameLabelToGrayLineDistance;
+ (id)monthNameFont;
- (id)dayHeaderFrames;
- (void)_updateDayHeaderFrames;
- (void)contentSizeCategoryChanged;
- (void)didScroll;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)weekNumbersPrefChanged;
@end

@implementation CompactMonthViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CompactMonthViewController;
  [(CompactMonthViewController *)&v4 viewIsAppearing:appearing];
  [(CompactMonthViewController *)self ekui_adjustNavBarToTranslucentGrayStyleWithSeparator];
}

- (void)weekNumbersPrefChanged
{
  v3 = +[CUIKPreferences sharedPreferences];
  showWeekNumbers = [v3 showWeekNumbers];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100125B64;
  v5[3] = &unk_10020FA68;
  v6 = showWeekNumbers;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v5];
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setTodayButtonVisible:0];
  [paletteCopy setDateStringVisible:1];
  [paletteCopy setWeekdayHeaderVisible:1];
  [paletteCopy setDividerLineVisible:1];
  [paletteCopy setDayScrubberController:0];
  if (CalSolariumEnabled())
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [paletteCopy setFocusBannerPlacement:v5];
  [paletteCopy sizeToFit];
  [paletteCopy frame];
  v7 = v6;
  containingPalette = [paletteCopy containingPalette];

  [containingPalette setPreferredHeight:v7];
  view = [(CompactMonthViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CompactMonthViewController;
  [(MonthViewController *)&v10 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    selectedDate = [(CUIKCalendarModel *)self->super.super.super._model selectedDate];
    date = [selectedDate date];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = date;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. date = %{public}@", buf, 0x16u);
  }

  [(CUIKCalendarModel *)self->super.super.super._model simulateFirstLoadFinished];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CompactMonthViewController;
  [(InfiniteScrollViewController *)&v3 viewDidLayoutSubviews];
  [(CompactMonthViewController *)self _updateDayHeaderFrames];
}

- (void)didScroll
{
  firstViewOnScreen = [(InfiniteScrollViewController *)self firstViewOnScreen];
  calendarDate = [firstViewOnScreen calendarDate];

  weekOfMonth = [calendarDate weekOfMonth];
  if (weekOfMonth == [calendarDate weeksInMonth])
  {
    v5 = [calendarDate calendarDateByAddingWeeks:1];

    calendarDate = v5;
  }

  if (CalSolariumEnabled())
  {
    [(MonthViewController *)self _updateNavigationTitleControllerToDate:calendarDate];
  }

  else
  {
    navigationController = [(CompactMonthViewController *)self navigationController];
    [navigationController setNavBarStringFromDate:calendarDate includeMonth:1 includeYear:{-[CompactMonthViewController showsYearInMonthLabel](self, "showsYearInMonthLabel")}];
  }
}

- (id)dayHeaderFrames
{
  navigationController = [(CompactMonthViewController *)self navigationController];
  paletteView = [navigationController paletteView];

  if (!paletteView)
  {
    goto LABEL_14;
  }

  firstView = [(InfiniteScrollViewController *)self firstView];
  if (!firstView)
  {
    v7 = [CompactMonthWeekView alloc];
    v8 = +[NSDate date];
    v9 = +[NSTimeZone localTimeZone];
    v10 = [EKCalendarDate calendarDateWithDate:v8 timeZone:v9];
    v11 = +[NSCalendar currentCalendar];
    v6 = [(CompactMonthWeekView *)v7 initWithCalendarDate:v10 calendar:v11 compressed:0];

    [(CompactMonthWeekView *)v6 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    view = [(CompactMonthViewController *)self view];
    [view frame];
    v20 = v19;

    [(CompactMonthWeekView *)v6 setFrame:v13, v15, v20, v17];
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v6 = firstView;
LABEL_5:
  [(CompactMonthWeekView *)v6 layoutIfNeeded];
  dayNumberCellFrames = [(CompactMonthWeekView *)v6 dayNumberCellFrames];
  v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dayNumberCellFrames, "count")}];
  if ([dayNumberCellFrames count])
  {
    for (i = 0; i < [dayNumberCellFrames count]; ++i)
    {
      v24 = [dayNumberCellFrames objectAtIndexedSubscript:i];
      [v24 CGRectValue];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      traitCollection = [(CompactMonthViewController *)self traitCollection];
      if ([traitCollection horizontalSizeClass] == 1)
      {
        traitCollection2 = [(CompactMonthViewController *)self traitCollection];
        verticalSizeClass = [traitCollection2 verticalSizeClass];

        if (verticalSizeClass == 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      [(CompactMonthWeekView *)v6 convertRect:paletteView toView:v26, v28, v30, v32];
      v26 = v36;
      v30 = v37;
LABEL_12:
      [paletteView bounds];
      v39 = v38;
      [paletteView bounds];
      v40 = [NSValue valueWithCGRect:v26, v39, v30];
      [v22 addObject:v40];
    }
  }

LABEL_15:

  return v22;
}

- (void)_updateDayHeaderFrames
{
  navigationController = [(CompactMonthViewController *)self navigationController];
  paletteView = [navigationController paletteView];

  v4 = paletteView;
  if (paletteView)
  {
    dayHeaderFrames = [(CompactMonthViewController *)self dayHeaderFrames];
    [paletteView setDayHeaderFrames:dayHeaderFrames];

    view = [(CompactMonthViewController *)self view];
    window = [view window];

    if (window)
    {
      EKUIPushFallbackSizingContextWithViewHierarchy();
      EKUIPopFallbackSizingContextWithViewHierarchy();
    }

    v4 = paletteView;
  }
}

- (void)contentSizeCategoryChanged
{
  v3 = qword_100251D60;
  qword_100251D60 = 0;

  qword_100251D68 = 0;
  +[CompactMonthWeekView clearCalculatedValues];
  v4.receiver = self;
  v4.super_class = CompactMonthViewController;
  [(MonthViewController *)&v4 contentSizeCategoryChanged];
}

+ (id)monthNameFont
{
  v2 = qword_100251D60;
  if (!qword_100251D60)
  {
    v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 addingSymbolicTraits:32770 options:0];
    v4 = [UIFont fontWithDescriptor:v3 size:0.0];
    v5 = qword_100251D60;
    qword_100251D60 = v4;

    v6 = qword_100251D60;
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:20.0 shouldScaleForSmallerSizes:35.0];
    v7 = [v6 fontWithSize:?];
    v8 = qword_100251D60;
    qword_100251D60 = v7;

    v2 = qword_100251D60;
  }

  return v2;
}

+ (double)topOfMonthNameLabelToGrayLineDistance
{
  monthNameFont = [self monthNameFont];
  v3 = *&qword_100251D68;
  if (*&qword_100251D68 == 0.0)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setText:@"0"];
    [v4 setFont:monthNameFont];
    [v4 sizeToFit];
    [v4 _firstLineBaselineOffsetFromBoundsTop];
    v6 = v5;
    v7 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle3];
    [v7 scaledValueForValue:6.5];
    v9 = v8;

    *&qword_100251D68 = v6 + v9;
    v3 = *&qword_100251D68;
  }

  return v3;
}

@end