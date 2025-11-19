@interface EKEventRecurrenceEditItem
- (id)event;
- (id)minRecurrenceEndDate;
- (id)recurrenceDate;
- (id)recurrenceTimeZone;
- (void)setCalendarItem:(id)a3 store:(id)a4;
@end

@implementation EKEventRecurrenceEditItem

- (void)setCalendarItem:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(EKEventRecurrenceEditItem *)a2 setCalendarItem:v7 store:?];
    }
  }

  v9.receiver = self;
  v9.super_class = EKEventRecurrenceEditItem;
  [(EKCalendarItemEditItem *)&v9 setCalendarItem:v7 store:v8];
}

- (id)event
{
  v4.receiver = self;
  v4.super_class = EKEventRecurrenceEditItem;
  v2 = [(EKCalendarItemEditItem *)&v4 calendarItem];

  return v2;
}

- (id)recurrenceDate
{
  v2 = [(EKEventRecurrenceEditItem *)self event];
  v3 = [v2 startDate];

  return v3;
}

- (id)recurrenceTimeZone
{
  v2 = [(EKEventRecurrenceEditItem *)self event];
  v3 = [v2 timeZone];

  return v3;
}

- (id)minRecurrenceEndDate
{
  v3 = [(EKEventRecurrenceEditItem *)self event];
  v4 = [v3 singleRecurrenceRule];

  v5 = [v4 recurrenceEnd];
  v6 = [v5 endDate];

  v7 = [(EKEventRecurrenceEditItem *)self event];
  v8 = [v7 endDateUnadjustedForLegacyClients];

  if (!v6 || (v9 = [v6 CalIsBeforeDate:v8], v10 = v6, (v9 & 1) == 0))
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (void)setCalendarItem:(uint64_t)a3 store:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"EKEventRecurrenceEditItem.m" lineNumber:17 description:{@"Tried to set %@ as an event on %@", a3, a2}];
}

@end