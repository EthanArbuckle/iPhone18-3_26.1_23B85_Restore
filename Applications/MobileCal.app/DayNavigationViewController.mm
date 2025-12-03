@interface DayNavigationViewController
- (BOOL)dayNavigationViewAllowedToChangeSelectedDate;
- (DayNavigationViewController)initWithModel:(id)model;
- (DayNavigationViewControllerDelegate)delegate;
- (UIEdgeInsets)paletteSafeAreaInsets;
- (id)dayNavigationView:(id)view dayDataForDate:(id)date;
- (id)visibleCellBadgeColors;
- (id)visibleCellBadgeLocales;
- (id)visibleCellDayTypes;
- (void)_cachedOccurrencesChanged:(id)changed;
- (void)_contentSizeCategoryChanged;
- (void)_localeChanged:(id)changed;
- (void)_timeZoneChanged:(id)changed;
- (void)_updateOverlayCalendar;
- (void)_updateShowsWeekNumber;
- (void)dayNavigationView:(id)view didChangeCellWidth:(double)width;
- (void)dayNavigationView:(id)view selectedDateChanged:(id)changed;
- (void)dayNavigationViewFailedToSelectDate:(id)date;
- (void)loadView;
- (void)setEventSpringLoadingEnabled:(BOOL)enabled;
- (void)setVisible:(BOOL)visible;
- (void)timeZoneChanged;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DayNavigationViewController

- (void)loadView
{
  calendar = [(CUIKCalendarModel *)self->_model calendar];
  selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
  date = [selectedDate date];

  v5 = [DayNavigationView alloc];
  cellFactory = [(DayNavigationViewController *)self cellFactory];
  v7 = [(DayNavigationView *)v5 initWithCalendar:calendar selectedDate:date cellFactory:cellFactory eventSpringLoadingEnabled:self->_eventSpringLoadingEnabled];
  navigationView = self->_navigationView;
  self->_navigationView = v7;

  [(DayNavigationView *)self->_navigationView setDelegate:self];
  [(DayNavigationView *)self->_navigationView setShowsMultiDay:self->_showsMultiDay];
  [(DayNavigationViewController *)self setView:self->_navigationView];
  weekScrollView = [(DayNavigationView *)self->_navigationView weekScrollView];
  [weekScrollView updateDayBadges];

  [(DayNavigationViewController *)self _updateShowsWeekNumber];
  [(DayNavigationViewController *)self _updateOverlayCalendar];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_timeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:self->_model];

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = CUIKLocaleChangedNotification;
  [v11 addObserver:self selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_contentSizeCategoryChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_cachedOccurrencesChanged:" name:CUIKCalendarModelCachedOccurrencesChangedNotification object:self->_model];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_updateShowsWeekNumber" name:CUIKPreferencesNotification_ShowWeekNumbers object:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_updateOverlayCalendar" name:v12 object:0];
}

- (DayNavigationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DayNavigationViewController)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = DayNavigationViewController;
  v6 = [(DayNavigationViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DayNavigationViewController;
  [(DayNavigationViewController *)&v4 viewWillAppear:appear];
  [(DayNavigationViewController *)self _updateOverlayCalendar];
}

- (void)_updateShowsWeekNumber
{
  v4 = +[CUIKPreferences sharedPreferences];
  if ([v4 showWeekNumbers])
  {
    showsWeekNumberWhenEnabled = [(DayNavigationViewController *)self showsWeekNumberWhenEnabled];
  }

  else
  {
    showsWeekNumberWhenEnabled = 0;
  }

  [(DayNavigationView *)self->_navigationView setShowWeekNumber:showsWeekNumberWhenEnabled];
}

- (void)_updateOverlayCalendar
{
  delegate = [(DayNavigationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(DayNavigationViewController *)self delegate];
    dayNavigationViewControllerShowsOverlayCalendar = [delegate2 dayNavigationViewControllerShowsOverlayCalendar];

    if (!dayNavigationViewControllerShowsOverlayCalendar)
    {
      return;
    }

    v5 = CUIKGetOverlayCalendar();
    navigationView = self->_navigationView;
    delegate = v5;
    if (v5)
    {
      weekScrollView = [(DayNavigationView *)navigationView weekScrollView];
      startDateOfSelectedWeek = [weekScrollView startDateOfSelectedWeek];

      v9 = [CUIKDateStrings monthStringForDate:startDateOfSelectedWeek inCalendar:delegate];
      [(DayNavigationView *)self->_navigationView setOverlayMonthText:v9];
    }

    else
    {
      [(DayNavigationView *)navigationView setOverlayMonthText:0];
    }
  }
}

- (void)dayNavigationView:(id)view selectedDateChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(DayNavigationViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationViewController *)self delegate];
    [delegate2 dayNavigationViewController:self didSelectDate:changedCopy];
  }

  [(DayNavigationViewController *)self _updateOverlayCalendar];
}

- (void)dayNavigationViewFailedToSelectDate:(id)date
{
  dateCopy = date;
  delegate = [(DayNavigationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DayNavigationViewController *)self delegate];
    [delegate2 dayNavigationViewControllerFailedToChangeDate:dateCopy];
  }
}

- (BOOL)dayNavigationViewAllowedToChangeSelectedDate
{
  delegate = [(DayNavigationViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(DayNavigationViewController *)self delegate];
  dayNavigationViewControllerAllowedToChangeSelectedDate = [delegate2 dayNavigationViewControllerAllowedToChangeSelectedDate];

  return dayNavigationViewControllerAllowedToChangeSelectedDate;
}

- (void)dayNavigationView:(id)view didChangeCellWidth:(double)width
{
  delegate = [(DayNavigationViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(DayNavigationViewController *)self delegate];
    [delegate2 dayNavigationViewController:self didChangeCellWidth:width];
  }
}

- (id)dayNavigationView:(id)view dayDataForDate:(id)date
{
  dateCopy = date;
  if (_os_feature_enabled_impl())
  {
    if ([(CUIKCalendarModel *)self->_model cachedOccurrencesAreLoaded])
    {
      v12 = 0;
      v6 = [(CUIKCalendarModel *)self->_model sectionForCachedOccurrencesOnDate:dateCopy sectionExistsForDay:&v12];
      if (v12 == 1)
      {
        v7 = [(CUIKCalendarModel *)self->_model cachedSpecialDayDataForSection:v6];
        goto LABEL_10;
      }
    }

    else if (!self->_loadingOccurrenceCache)
    {
      self->_loadingOccurrenceCache = 1;
      if (qword_100251D48 != -1)
      {
        sub_100170D14();
      }

      v8 = qword_100251D40;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001217E0;
      block[3] = &unk_10020EC68;
      block[4] = self;
      v11 = dateCopy;
      dispatch_async(v8, block);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)_localeChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012196C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_timeZoneChanged:(id)changed
{
  calendar = [(CUIKCalendarModel *)self->_model calendar];
  [(DayNavigationView *)self->_navigationView setCalendar:calendar];
}

- (void)_contentSizeCategoryChanged
{
  cellFactory = [(DayNavigationViewController *)self cellFactory];
  [cellFactory contentSizeCategoryChanged];

  [(DayNavigationView *)self->_navigationView contentSizeCategoryChanged];
  view = [(DayNavigationViewController *)self view];
  superview = [view superview];
  [superview setNeedsLayout];
}

- (void)_cachedOccurrencesChanged:(id)changed
{
  if (_os_feature_enabled_impl())
  {
    weekScrollView = [(DayNavigationView *)self->_navigationView weekScrollView];
    [weekScrollView updateDayBadges];
  }
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  view = [(DayNavigationViewController *)self view];
  [view setHidden:visibleCopy ^ 1];
  [view setUserInteractionEnabled:visibleCopy];
}

- (void)timeZoneChanged
{
  navigationView = self->_navigationView;
  calendar = [(CUIKCalendarModel *)self->_model calendar];
  [(DayNavigationView *)navigationView setCalendar:calendar];

  v5 = self->_navigationView;

  [(DayNavigationView *)v5 significantTimeChangeOccurred];
}

- (void)setEventSpringLoadingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_eventSpringLoadingEnabled = enabled;
  weekScrollView = [(DayNavigationViewController *)self weekScrollView];
  [weekScrollView setEventSpringLoadingEnabled:enabledCopy];
}

- (UIEdgeInsets)paletteSafeAreaInsets
{
  [(DayNavigationView *)self->_navigationView paletteSafeAreaInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)visibleCellDayTypes
{
  weekScrollView = [(DayNavigationView *)self->_navigationView weekScrollView];
  visibleCellDayTypes = [weekScrollView visibleCellDayTypes];

  return visibleCellDayTypes;
}

- (id)visibleCellBadgeColors
{
  weekScrollView = [(DayNavigationView *)self->_navigationView weekScrollView];
  visibleCellBadgeColors = [weekScrollView visibleCellBadgeColors];

  return visibleCellBadgeColors;
}

- (id)visibleCellBadgeLocales
{
  weekScrollView = [(DayNavigationView *)self->_navigationView weekScrollView];
  visibleCellBadgeLocales = [weekScrollView visibleCellBadgeLocales];

  return visibleCellBadgeLocales;
}

@end