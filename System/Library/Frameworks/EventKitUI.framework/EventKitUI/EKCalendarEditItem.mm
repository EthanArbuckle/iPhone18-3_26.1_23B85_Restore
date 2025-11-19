@interface EKCalendarEditItem
- (BOOL)configureWithCalendar:(id)a3 store:(id)a4;
- (EKCalendarEditItemDelegate)delegate;
- (void)setCalendar:(id)a3 store:(id)a4;
@end

@implementation EKCalendarEditItem

- (void)setCalendar:(id)a3 store:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_calendar != v9)
  {
    objc_storeStrong(&self->_calendar, a3);
    if (!self->_calendar)
    {
      [(EKCalendarEditItem *)self reset];
    }
  }

  store = self->_store;
  self->_store = v7;
}

- (BOOL)configureWithCalendar:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  calendar = self->_calendar;
  self->_calendar = v6;
  v9 = v6;

  store = self->_store;
  self->_store = v7;

  LOBYTE(v7) = [(EKCalendarEditItem *)self configureWithCalendar:v9];
  return v7;
}

- (EKCalendarEditItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end