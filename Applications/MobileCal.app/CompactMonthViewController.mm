@interface CompactMonthViewController
+ (double)topOfMonthNameLabelToGrayLineDistance;
+ (id)monthNameFont;
- (id)dayHeaderFrames;
- (void)_updateDayHeaderFrames;
- (void)contentSizeCategoryChanged;
- (void)didScroll;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)weekNumbersPrefChanged;
@end

@implementation CompactMonthViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompactMonthViewController;
  [(CompactMonthViewController *)&v4 viewIsAppearing:a3];
  [(CompactMonthViewController *)self ekui_adjustNavBarToTranslucentGrayStyleWithSeparator];
}

- (void)weekNumbersPrefChanged
{
  v3 = +[CUIKPreferences sharedPreferences];
  v4 = [v3 showWeekNumbers];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100125B64;
  v5[3] = &unk_10020FA68;
  v6 = v4;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v5];
}

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [v4 setTodayButtonVisible:0];
  [v4 setDateStringVisible:1];
  [v4 setWeekdayHeaderVisible:1];
  [v4 setDividerLineVisible:1];
  [v4 setDayScrubberController:0];
  if (CalSolariumEnabled())
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v4 setFocusBannerPlacement:v5];
  [v4 sizeToFit];
  [v4 frame];
  v7 = v6;
  v8 = [v4 containingPalette];

  [v8 setPreferredHeight:v7];
  v9 = [(CompactMonthViewController *)self view];
  [v9 setNeedsLayout];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CompactMonthViewController;
  [(MonthViewController *)&v10 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(CUIKCalendarModel *)self->super.super.super._model selectedDate];
    v9 = [v8 date];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
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
  v3 = [(InfiniteScrollViewController *)self firstViewOnScreen];
  v7 = [v3 calendarDate];

  v4 = [v7 weekOfMonth];
  if (v4 == [v7 weeksInMonth])
  {
    v5 = [v7 calendarDateByAddingWeeks:1];

    v7 = v5;
  }

  if (CalSolariumEnabled())
  {
    [(MonthViewController *)self _updateNavigationTitleControllerToDate:v7];
  }

  else
  {
    v6 = [(CompactMonthViewController *)self navigationController];
    [v6 setNavBarStringFromDate:v7 includeMonth:1 includeYear:{-[CompactMonthViewController showsYearInMonthLabel](self, "showsYearInMonthLabel")}];
  }
}

- (id)dayHeaderFrames
{
  v3 = [(CompactMonthViewController *)self navigationController];
  v4 = [v3 paletteView];

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = [(InfiniteScrollViewController *)self firstView];
  if (!v5)
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
    v18 = [(CompactMonthViewController *)self view];
    [v18 frame];
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

  v6 = v5;
LABEL_5:
  [(CompactMonthWeekView *)v6 layoutIfNeeded];
  v21 = [(CompactMonthWeekView *)v6 dayNumberCellFrames];
  v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
  if ([v21 count])
  {
    for (i = 0; i < [v21 count]; ++i)
    {
      v24 = [v21 objectAtIndexedSubscript:i];
      [v24 CGRectValue];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = [(CompactMonthViewController *)self traitCollection];
      if ([v33 horizontalSizeClass] == 1)
      {
        v34 = [(CompactMonthViewController *)self traitCollection];
        v35 = [v34 verticalSizeClass];

        if (v35 == 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      [(CompactMonthWeekView *)v6 convertRect:v4 toView:v26, v28, v30, v32];
      v26 = v36;
      v30 = v37;
LABEL_12:
      [v4 bounds];
      v39 = v38;
      [v4 bounds];
      v40 = [NSValue valueWithCGRect:v26, v39, v30];
      [v22 addObject:v40];
    }
  }

LABEL_15:

  return v22;
}

- (void)_updateDayHeaderFrames
{
  v3 = [(CompactMonthViewController *)self navigationController];
  v8 = [v3 paletteView];

  v4 = v8;
  if (v8)
  {
    v5 = [(CompactMonthViewController *)self dayHeaderFrames];
    [v8 setDayHeaderFrames:v5];

    v6 = [(CompactMonthViewController *)self view];
    v7 = [v6 window];

    if (v7)
    {
      EKUIPushFallbackSizingContextWithViewHierarchy();
      EKUIPopFallbackSizingContextWithViewHierarchy();
    }

    v4 = v8;
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
  v2 = [a1 monthNameFont];
  v3 = *&qword_100251D68;
  if (*&qword_100251D68 == 0.0)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setText:@"0"];
    [v4 setFont:v2];
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