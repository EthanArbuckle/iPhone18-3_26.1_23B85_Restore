@interface EKCalendarEditItem
- (BOOL)configureWithCalendar:(id)calendar store:(id)store;
- (EKCalendarEditItemDelegate)delegate;
- (void)setCalendar:(id)calendar store:(id)store;
@end

@implementation EKCalendarEditItem

- (void)setCalendar:(id)calendar store:(id)store
{
  calendarCopy = calendar;
  storeCopy = store;
  if (self->_calendar != calendarCopy)
  {
    objc_storeStrong(&self->_calendar, calendar);
    if (!self->_calendar)
    {
      [(EKCalendarEditItem *)self reset];
    }
  }

  store = self->_store;
  self->_store = storeCopy;
}

- (BOOL)configureWithCalendar:(id)calendar store:(id)store
{
  calendarCopy = calendar;
  storeCopy = store;
  calendar = self->_calendar;
  self->_calendar = calendarCopy;
  v9 = calendarCopy;

  store = self->_store;
  self->_store = storeCopy;

  LOBYTE(storeCopy) = [(EKCalendarEditItem *)self configureWithCalendar:v9];
  return storeCopy;
}

- (EKCalendarEditItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end