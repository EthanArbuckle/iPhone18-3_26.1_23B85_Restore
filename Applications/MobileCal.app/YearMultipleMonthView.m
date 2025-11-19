@interface YearMultipleMonthView
+ (BOOL)_headerEligibleForCalendarDate:(id)a3;
+ (Class)headerClass;
+ (Class)monthClass;
+ (double)_heightForViewWithVisibleHeader:(BOOL)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5 orientation:(int64_t)a6;
+ (double)heightForViewWithCalendarDate:(id)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5 orientation:(int64_t)a6;
- (BOOL)eligibleToShowYearNumber;
- (BOOL)pointIsAboveMonthNameBaseline:(CGPoint)a3;
- (CGRect)insetBounds;
- (CGSize)monthViewSubviewSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKCalendarDate)endCalendarDate;
- (UIEdgeInsets)_yearLayoutMargins;
- (double)_leftMarginWithOriginalValue:(double)a3;
- (double)_rightMarginWithOriginalValue:(double)a3;
- (double)topInset;
- (id)description;
- (id)initCalendarDate:(id)a3 calendar:(id)a4 maximumNumberOfMonths:(unint64_t)a5;
- (id)monthViewForCalendarDate:(id)a3;
- (id)startOfMonthForPoint:(CGPoint)a3;
- (void)_initializeHeaderView;
- (void)_initializeMonthViews;
- (void)_reloadHeaderView;
- (void)_reloadMonthViews;
- (void)didMoveToWindow;
- (void)hideYearNumberAnimated:(BOOL)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)localeChanged;
- (void)overlaySignificantDatesChangedInRange:(id)a3;
- (void)pulseTodayCircle;
- (void)setCalendarDate:(id)a3;
- (void)setOverlaySignificantDatesProvider:(id)a3;
- (void)showYearNumberAnimated:(BOOL)a3;
@end

@implementation YearMultipleMonthView

- (id)initCalendarDate:(id)a3 calendar:(id)a4 maximumNumberOfMonths:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = YearMultipleMonthView;
  v10 = [(YearMultipleMonthView *)&v14 init];
  if (v10)
  {
    v11 = [v8 calendarDateForMonth];
    calendarDate = v10->_calendarDate;
    v10->_calendarDate = v11;

    objc_storeStrong(&v10->_calendar, a4);
    v10->_maximumNumberOfMonths = a5;
    v10->_needToCalculateEligibleToShowYearNumber = 1;
    if ([objc_opt_class() useUIKitLayoutMargins])
    {
      [(YearMultipleMonthView *)v10 setPreservesSuperviewLayoutMargins:1];
    }

    [(YearMultipleMonthView *)v10 _initializeHeaderView];
    [(YearMultipleMonthView *)v10 _initializeMonthViews];
  }

  return v10;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = YearMultipleMonthView;
  v3 = [(YearMultipleMonthView *)&v8 description];
  v4 = [(YearMultipleMonthView *)self calendarDate];
  v5 = [(YearMultipleMonthView *)self endCalendarDate];
  v6 = [NSString stringWithFormat:@"%@ calendarDate: [%@]; endCalendarDate: [%@]", v3, v4, v5];;

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(YearMultipleMonthView *)self window:a3.width];
  if (v5)
  {
    v6 = [(YearMultipleMonthView *)self window];
    [v6 mainContentSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    EKUICurrentWindowSize();
    v8 = v11;
    v10 = v12;
  }

  v13 = [(YearMultipleMonthView *)self eligibleToShowYearNumber];
  v14 = objc_opt_class();
  v15 = EKUIHeightSizeClassForViewHierarchy();
  [v14 _heightForViewWithVisibleHeader:v13 windowSize:v15 heightSizeClass:EKUIInterfaceOrientationForViewHierarchy() orientation:{v8, v10}];
  v17 = v16;
  if ([(YearMultipleMonthView *)self containsLastMonthOfYear])
  {
    EKUICurrentWindowSize();
    if (EKUIWindowSizeParadigmForWindowSize() == 0x1000000)
    {
      v17 = v17 + 7.0;
    }
  }

  v18 = width;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)_leftMarginWithOriginalValue:(double)a3
{
  v5 = objc_opt_class();
  EKUICurrentWindowSize();
  [v5 leftMarginForWindowSize:?];
  if (result < 0.0)
  {
    [(YearMultipleMonthView *)self leftMarginAdjustment];
    return v7 + a3;
  }

  return result;
}

- (double)_rightMarginWithOriginalValue:(double)a3
{
  v5 = objc_opt_class();
  EKUICurrentWindowSize();
  [v5 rightMarginForWindowSize:?];
  if (result < 0.0)
  {
    [(YearMultipleMonthView *)self rightMarginAdjustment];
    return v7 + a3;
  }

  return result;
}

- (UIEdgeInsets)_yearLayoutMargins
{
  if ([objc_opt_class() useUIKitLayoutMargins])
  {
    [(YearMultipleMonthView *)self layoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    [(YearMultipleMonthView *)self bounds];
    EKUILayoutMarginsForFullscreenLayoutRectWithSize();
    v5 = v10;
    v9 = v11;
    v13 = v12;
    [(YearMultipleMonthView *)self _leftMarginWithOriginalValue:v14];
    v7 = v15;
    [(YearMultipleMonthView *)self _rightMarginWithOriginalValue:v13];
    v3 = v16;
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  result.right = v3;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (CGRect)insetBounds
{
  [(YearMultipleMonthView *)self _yearLayoutMargins];
  v4 = v3;
  v6 = v5;
  [(YearMultipleMonthView *)self bounds];

  return CGRectInset(*&v7, v6 + v4, 0.0);
}

- (void)didMoveToWindow
{
  if (self->_layoutWhenJoiningViewHierarchy)
  {
    v3 = [(YearMultipleMonthView *)self window];

    if (v3)
    {
      [(YearMultipleMonthView *)self layoutSubviews];
      self->_layoutWhenJoiningViewHierarchy = 0;
    }
  }
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = YearMultipleMonthView;
  [(YearMultipleMonthView *)&v44 layoutSubviews];
  v4 = [(YearMultipleMonthView *)self window];

  if (!v4)
  {
    self->_layoutWhenJoiningViewHierarchy = 1;
    return;
  }

  [(YearMultipleMonthView *)self _yearLayoutMargins];
  v6 = v5;
  v8 = v7;
  [(YearMultipleMonthView *)self insetBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([(YearMultipleMonthView *)self eligibleToShowYearNumber])
  {
    [(YearViewYearHeader *)self->_header sizeThatFits:v12, v14];
    v16 = v15;
    [(YearViewYearHeader *)self->_header setFrame:v6, v10, v8 + v6 + v12, v15];
    v10 = v10 + v16;
  }

  v17 = [(YearMultipleMonthView *)self maximumNumberOfMonths];
  v18 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  if (EKUICurrentWindowInterfaceParadigm() != 8)
  {
    goto LABEL_24;
  }

  v19 = 0;
  if (v18 <= 0x1FFFFFF)
  {
    if (v18 != 0x80000 && v18 != 0x800000)
    {
      goto LABEL_13;
    }
  }

  else if (v18 != 0x2000000 && v18 != 0x8000000 && v18 != 0x20000000)
  {
LABEL_13:
    v2 = [(YearMultipleMonthView *)self traitCollection];
    v19 = EKUIUsesLargeTextYearView() ^ 1;
  }

  if (v18 > 0x1FFFFFF)
  {
    if (v18 != 0x2000000 && v18 != 0x8000000 && v18 != 0x20000000)
    {
      goto LABEL_23;
    }

LABEL_21:
    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v20 = 45.0;
    goto LABEL_27;
  }

  if (v18 == 0x80000 || v18 == 0x800000)
  {
    goto LABEL_21;
  }

LABEL_23:

  if (v19)
  {
    goto LABEL_22;
  }

LABEL_24:
  [(YearMultipleMonthView *)self monthViewSubviewSize];
  v22 = v21;
  if ([(YearMultipleMonthView *)self maximumNumberOfMonths])
  {
    [(YearMultipleMonthView *)self _yearLayoutMargins];
    v24 = v23;
    v26 = v25;
    [(YearMultipleMonthView *)self bounds];
    v28 = v27 - v24 - v26 - v22 * [(YearMultipleMonthView *)self maximumNumberOfMonths];
    v20 = v28 / ([(YearMultipleMonthView *)self maximumNumberOfMonths]- 1);
  }

  else
  {
    v20 = 0.0;
  }

LABEL_27:
  v37 = 0;
  v38 = &v37;
  v39 = 0x4010000000;
  v40 = &unk_1001EBD39;
  size = CGRectZero.size;
  v41 = v6;
  v42 = v10;
  [(YearMultipleMonthView *)self monthViewSubviewSize];
  v29 = v38;
  v38[6] = v30;
  v29[7] = v31;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v32 = CalTimeDirectionIsLeftToRight() == 0;
  monthViews = self->_monthViews;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000AE550;
  v35[3] = &unk_1002107A0;
  if (v32)
  {
    v34 = 2;
  }

  else
  {
    v34 = 0;
  }

  v35[4] = &v37;
  v35[5] = v36;
  v35[6] = v17;
  *&v35[7] = v20;
  [(NSArray *)monthViews enumerateObjectsWithOptions:v34 usingBlock:v35];
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = YearMultipleMonthView;
  [(YearMultipleMonthView *)&v3 layoutMarginsDidChange];
  if ([objc_opt_class() useUIKitLayoutMargins])
  {
    [(YearMultipleMonthView *)self setNeedsLayout];
  }
}

- (EKCalendarDate)endCalendarDate
{
  endCalendarDate = self->_endCalendarDate;
  if (!endCalendarDate)
  {
    v4 = [(NSArray *)self->_monthViews lastObject];
    v5 = [v4 calendarDate];
    v6 = [v5 calendarDateForEndOfMonth];
    v7 = self->_endCalendarDate;
    self->_endCalendarDate = v6;

    endCalendarDate = self->_endCalendarDate;
  }

  return endCalendarDate;
}

- (double)topInset
{
  v2 = objc_opt_class();

  [v2 topInset];
  return result;
}

- (void)pulseTodayCircle
{
  v6 = CUIKTodayDate();
  v3 = [(NSCalendar *)self->_calendar timeZone];
  v4 = [EKCalendarDate calendarDateWithDate:v6 timeZone:v3];
  v5 = [(YearMultipleMonthView *)self monthViewForCalendarDate:v4];
  [v5 pulseTodayCircle];
}

- (void)setOverlaySignificantDatesProvider:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_overlaySignificantDatesProvider, a3);
  monthViews = self->_monthViews;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AE870;
  v8[3] = &unk_1002107C8;
  v9 = v5;
  v7 = v5;
  [(NSArray *)monthViews enumerateObjectsUsingBlock:v8];
}

- (void)overlaySignificantDatesChangedInRange:(id)a3
{
  v4 = a3;
  monthViews = self->_monthViews;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AE91C;
  v7[3] = &unk_1002107C8;
  v8 = v4;
  v6 = v4;
  [(NSArray *)monthViews enumerateObjectsUsingBlock:v7];
}

- (void)localeChanged
{
  [(YearViewYearHeader *)self->_header localeChanged];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_monthViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) localeChanged];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (double)heightForViewWithCalendarDate:(id)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5 orientation:(int64_t)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = [objc_opt_class() _headerEligibleForCalendarDate:v10];

  v12 = objc_opt_class();

  [v12 _heightForViewWithVisibleHeader:v11 windowSize:a5 heightSizeClass:a6 orientation:{width, height}];
  return result;
}

- (BOOL)pointIsAboveMonthNameBaseline:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(NSArray *)self->_monthViews firstObject];
  [v6 convertPoint:v5 fromView:{x, y}];
  LOBYTE(v5) = [v6 pointIsAboveMonthNameBaseline:?];

  return v5;
}

- (void)setCalendarDate:(id)a3
{
  v4 = [a3 calendarDateForMonth];
  v5 = v4;
  if (self->_calendarDate != v4)
  {
    v7 = v4;
    objc_storeStrong(&self->_calendarDate, v4);
    endCalendarDate = self->_endCalendarDate;
    self->_endCalendarDate = 0;

    self->_needToCalculateEligibleToShowYearNumber = 1;
    [(YearMultipleMonthView *)self _reloadHeaderView];
    v4 = [(YearMultipleMonthView *)self _reloadMonthViews];
    v5 = v7;
  }

  _objc_release_x1(v4, v5);
}

- (id)startOfMonthForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_monthViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 frame];
        v17.x = x;
        v17.y = y;
        if (CGRectContainsPoint(v18, v17))
        {
          v6 = [v9 calendarDate];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)monthViewForCalendarDate:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_monthViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsCalendarDate:{v4, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)eligibleToShowYearNumber
{
  if (self->_needToCalculateEligibleToShowYearNumber)
  {
    v3 = objc_opt_class();
    v4 = [(YearMultipleMonthView *)self calendarDate];
    self->_eligibleToShowYearNumber = [v3 _headerEligibleForCalendarDate:v4];

    self->_needToCalculateEligibleToShowYearNumber = 0;
  }

  return self->_eligibleToShowYearNumber;
}

- (void)hideYearNumberAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(YearMultipleMonthView *)self eligibleToShowYearNumber])
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      header = self->_header;
      v7 = v5;
      v8 = [(YearViewYearHeader *)header calendarDate];
      *buf = 134217984;
      v11 = [v8 year];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Hiding year number: [%lu]", buf, 0xCu);
    }

    if (v3)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000AF074;
      v9[3] = &unk_10020EB00;
      v9[4] = self;
      [UIView animateWithDuration:v9 animations:0.3];
    }

    else
    {
      [(YearViewYearHeader *)self->_header setAlpha:0.0];
    }
  }
}

- (void)showYearNumberAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(YearMultipleMonthView *)self eligibleToShowYearNumber])
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      header = self->_header;
      v7 = v5;
      v8 = [(YearViewYearHeader *)header calendarDate];
      *buf = 134217984;
      v11 = [v8 year];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Showing year number: [%lu]", buf, 0xCu);
    }

    if (v3)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000AF1F4;
      v9[3] = &unk_10020EB00;
      v9[4] = self;
      [UIView animateWithDuration:v9 animations:0.3];
    }

    else
    {
      [(YearViewYearHeader *)self->_header setAlpha:1.0];
    }
  }
}

+ (double)_heightForViewWithVisibleHeader:(BOOL)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5 orientation:(int64_t)a6
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  [objc_msgSend(objc_opt_class() "monthClass")];
  v10 = v9;
  if (v8)
  {
    [objc_msgSend(objc_opt_class() "headerClass")];
    return v10 + v11;
  }

  return v10;
}

+ (BOOL)_headerEligibleForCalendarDate:(id)a3
{
  v3 = a3;
  v4 = [v3 year];
  v5 = [v3 calendarDateByAddingMonths:-1];

  LOBYTE(v3) = [v5 year] != v4;
  return v3;
}

- (CGSize)monthViewSubviewSize
{
  v3 = [(NSArray *)self->_monthViews lastObject];
  [(YearMultipleMonthView *)self insetBounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_initializeHeaderView
{
  if (self->_header)
  {
    v2 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "The header already been initialized.", v8, 2u);
    }
  }

  else
  {
    v4 = objc_alloc([objc_opt_class() headerClass]);
    v5 = [(YearMultipleMonthView *)self calendarDate];
    v6 = [v4 initWithCalendarDate:v5];
    header = self->_header;
    self->_header = v6;

    self->_headerIsInViewHierarchy = 0;

    [(YearMultipleMonthView *)self _reloadHeaderView];
  }
}

- (void)_initializeMonthViews
{
  if (self->_monthViews)
  {
    v2 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Month views have already been initialized.", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(NSMutableArray);
    v11 = [(YearMultipleMonthView *)self calendarDate];
    v5 = [objc_opt_class() monthClass];
    if (v5)
    {
      v6 = v5;
      v7 = [(YearMultipleMonthView *)self maximumNumberOfMonths];
      if (v7)
      {
        v8 = v7;
        do
        {
          v9 = [[v6 alloc] initWithCalendarDate:v11 calendar:self->_calendar];
          [(YearMultipleMonthView *)self addSubview:v9];
          [(NSArray *)v4 addObject:v9];

          --v8;
        }

        while (v8);
      }
    }

    monthViews = self->_monthViews;
    self->_monthViews = v4;

    [(YearMultipleMonthView *)self _reloadMonthViews];
  }
}

- (void)_reloadHeaderView
{
  if ([(YearMultipleMonthView *)self eligibleToShowYearNumber])
  {
    v3 = [(YearMultipleMonthView *)self calendarDate];
    [(YearViewYearHeader *)self->_header setCalendarDate:v3];

    [(YearViewYearHeader *)self->_header setHidden:0];
    if (self->_headerIsInViewHierarchy)
    {
      return;
    }

    [(YearMultipleMonthView *)self addSubview:self->_header];
    self->_headerIsInViewHierarchy = 1;
  }

  else
  {
    [(YearViewYearHeader *)self->_header setHidden:1];
    [(YearViewYearHeader *)self->_header removeFromSuperview];
    self->_headerIsInViewHierarchy = 0;
  }

  [(YearMultipleMonthView *)self setNeedsLayout];
}

- (void)_reloadMonthViews
{
  v3 = [(YearMultipleMonthView *)self calendarDate];
  v4 = [v3 year];
  self->_containsLastMonthOfYear = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_monthViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v8)
        {
          v8 = 1;
          [*(*(&v14 + 1) + 8 * v10) setHidden:1];
        }

        else
        {
          [*(*(&v14 + 1) + 8 * v10) setHidden:{0, v14}];
          [v11 setCalendarDate:v3];
          v12 = [v3 calendarDateByAddingMonths:1];
          v13 = [v12 year];
          v8 = v13 != v4;
          if (v13 != v4)
          {
            self->_containsLastMonthOfYear = 1;
          }

          v3 = v12;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

+ (Class)headerClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (Class)monthClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end