@interface DayNavigationViewController
- (BOOL)dayNavigationViewAllowedToChangeSelectedDate;
- (DayNavigationViewController)initWithModel:(id)a3;
- (DayNavigationViewControllerDelegate)delegate;
- (UIEdgeInsets)paletteSafeAreaInsets;
- (id)dayNavigationView:(id)a3 dayDataForDate:(id)a4;
- (id)visibleCellBadgeColors;
- (id)visibleCellBadgeLocales;
- (id)visibleCellDayTypes;
- (void)_cachedOccurrencesChanged:(id)a3;
- (void)_contentSizeCategoryChanged;
- (void)_localeChanged:(id)a3;
- (void)_timeZoneChanged:(id)a3;
- (void)_updateOverlayCalendar;
- (void)_updateShowsWeekNumber;
- (void)dayNavigationView:(id)a3 didChangeCellWidth:(double)a4;
- (void)dayNavigationView:(id)a3 selectedDateChanged:(id)a4;
- (void)dayNavigationViewFailedToSelectDate:(id)a3;
- (void)loadView;
- (void)setEventSpringLoadingEnabled:(BOOL)a3;
- (void)setVisible:(BOOL)a3;
- (void)timeZoneChanged;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DayNavigationViewController

- (void)loadView
{
  v17 = [(CUIKCalendarModel *)self->_model calendar];
  v3 = [(CUIKCalendarModel *)self->_model selectedDate];
  v4 = [v3 date];

  v5 = [DayNavigationView alloc];
  v6 = [(DayNavigationViewController *)self cellFactory];
  v7 = [(DayNavigationView *)v5 initWithCalendar:v17 selectedDate:v4 cellFactory:v6 eventSpringLoadingEnabled:self->_eventSpringLoadingEnabled];
  navigationView = self->_navigationView;
  self->_navigationView = v7;

  [(DayNavigationView *)self->_navigationView setDelegate:self];
  [(DayNavigationView *)self->_navigationView setShowsMultiDay:self->_showsMultiDay];
  [(DayNavigationViewController *)self setView:self->_navigationView];
  v9 = [(DayNavigationView *)self->_navigationView weekScrollView];
  [v9 updateDayBadges];

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

- (DayNavigationViewController)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DayNavigationViewController;
  v6 = [(DayNavigationViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DayNavigationViewController;
  [(DayNavigationViewController *)&v4 viewWillAppear:a3];
  [(DayNavigationViewController *)self _updateOverlayCalendar];
}

- (void)_updateShowsWeekNumber
{
  v4 = +[CUIKPreferences sharedPreferences];
  if ([v4 showWeekNumbers])
  {
    v3 = [(DayNavigationViewController *)self showsWeekNumberWhenEnabled];
  }

  else
  {
    v3 = 0;
  }

  [(DayNavigationView *)self->_navigationView setShowWeekNumber:v3];
}

- (void)_updateOverlayCalendar
{
  v10 = [(DayNavigationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(DayNavigationViewController *)self delegate];
    v4 = [v3 dayNavigationViewControllerShowsOverlayCalendar];

    if (!v4)
    {
      return;
    }

    v5 = CUIKGetOverlayCalendar();
    navigationView = self->_navigationView;
    v10 = v5;
    if (v5)
    {
      v7 = [(DayNavigationView *)navigationView weekScrollView];
      v8 = [v7 startDateOfSelectedWeek];

      v9 = [CUIKDateStrings monthStringForDate:v8 inCalendar:v10];
      [(DayNavigationView *)self->_navigationView setOverlayMonthText:v9];
    }

    else
    {
      [(DayNavigationView *)navigationView setOverlayMonthText:0];
    }
  }
}

- (void)dayNavigationView:(id)a3 selectedDateChanged:(id)a4
{
  v7 = a4;
  v5 = [(DayNavigationViewController *)self delegate];

  if (v5)
  {
    v6 = [(DayNavigationViewController *)self delegate];
    [v6 dayNavigationViewController:self didSelectDate:v7];
  }

  [(DayNavigationViewController *)self _updateOverlayCalendar];
}

- (void)dayNavigationViewFailedToSelectDate:(id)a3
{
  v7 = a3;
  v4 = [(DayNavigationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DayNavigationViewController *)self delegate];
    [v6 dayNavigationViewControllerFailedToChangeDate:v7];
  }
}

- (BOOL)dayNavigationViewAllowedToChangeSelectedDate
{
  v3 = [(DayNavigationViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(DayNavigationViewController *)self delegate];
  v6 = [v5 dayNavigationViewControllerAllowedToChangeSelectedDate];

  return v6;
}

- (void)dayNavigationView:(id)a3 didChangeCellWidth:(double)a4
{
  v6 = [(DayNavigationViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(DayNavigationViewController *)self delegate];
    [v8 dayNavigationViewController:self didChangeCellWidth:a4];
  }
}

- (id)dayNavigationView:(id)a3 dayDataForDate:(id)a4
{
  v5 = a4;
  if (_os_feature_enabled_impl())
  {
    if ([(CUIKCalendarModel *)self->_model cachedOccurrencesAreLoaded])
    {
      v12 = 0;
      v6 = [(CUIKCalendarModel *)self->_model sectionForCachedOccurrencesOnDate:v5 sectionExistsForDay:&v12];
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
      v11 = v5;
      dispatch_async(v8, block);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)_localeChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012196C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_timeZoneChanged:(id)a3
{
  v4 = [(CUIKCalendarModel *)self->_model calendar];
  [(DayNavigationView *)self->_navigationView setCalendar:v4];
}

- (void)_contentSizeCategoryChanged
{
  v3 = [(DayNavigationViewController *)self cellFactory];
  [v3 contentSizeCategoryChanged];

  [(DayNavigationView *)self->_navigationView contentSizeCategoryChanged];
  v5 = [(DayNavigationViewController *)self view];
  v4 = [v5 superview];
  [v4 setNeedsLayout];
}

- (void)_cachedOccurrencesChanged:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    v4 = [(DayNavigationView *)self->_navigationView weekScrollView];
    [v4 updateDayBadges];
  }
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(DayNavigationViewController *)self view];
  [v4 setHidden:v3 ^ 1];
  [v4 setUserInteractionEnabled:v3];
}

- (void)timeZoneChanged
{
  navigationView = self->_navigationView;
  v4 = [(CUIKCalendarModel *)self->_model calendar];
  [(DayNavigationView *)navigationView setCalendar:v4];

  v5 = self->_navigationView;

  [(DayNavigationView *)v5 significantTimeChangeOccurred];
}

- (void)setEventSpringLoadingEnabled:(BOOL)a3
{
  v3 = a3;
  self->_eventSpringLoadingEnabled = a3;
  v4 = [(DayNavigationViewController *)self weekScrollView];
  [v4 setEventSpringLoadingEnabled:v3];
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
  v2 = [(DayNavigationView *)self->_navigationView weekScrollView];
  v3 = [v2 visibleCellDayTypes];

  return v3;
}

- (id)visibleCellBadgeColors
{
  v2 = [(DayNavigationView *)self->_navigationView weekScrollView];
  v3 = [v2 visibleCellBadgeColors];

  return v3;
}

- (id)visibleCellBadgeLocales
{
  v2 = [(DayNavigationView *)self->_navigationView weekScrollView];
  v3 = [v2 visibleCellBadgeLocales];

  return v3;
}

@end