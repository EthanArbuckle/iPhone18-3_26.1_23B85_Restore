@interface EKEventRecurrenceEditItem
- (id)event;
- (id)minRecurrenceEndDate;
- (id)recurrenceDate;
- (id)recurrenceTimeZone;
- (void)setCalendarItem:(id)item store:(id)store;
@end

@implementation EKEventRecurrenceEditItem

- (void)setCalendarItem:(id)item store:(id)store
{
  itemCopy = item;
  storeCopy = store;
  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(EKEventRecurrenceEditItem *)a2 setCalendarItem:itemCopy store:?];
    }
  }

  v9.receiver = self;
  v9.super_class = EKEventRecurrenceEditItem;
  [(EKCalendarItemEditItem *)&v9 setCalendarItem:itemCopy store:storeCopy];
}

- (id)event
{
  v4.receiver = self;
  v4.super_class = EKEventRecurrenceEditItem;
  calendarItem = [(EKCalendarItemEditItem *)&v4 calendarItem];

  return calendarItem;
}

- (id)recurrenceDate
{
  event = [(EKEventRecurrenceEditItem *)self event];
  startDate = [event startDate];

  return startDate;
}

- (id)recurrenceTimeZone
{
  event = [(EKEventRecurrenceEditItem *)self event];
  timeZone = [event timeZone];

  return timeZone;
}

- (id)minRecurrenceEndDate
{
  event = [(EKEventRecurrenceEditItem *)self event];
  singleRecurrenceRule = [event singleRecurrenceRule];

  recurrenceEnd = [singleRecurrenceRule recurrenceEnd];
  endDate = [recurrenceEnd endDate];

  event2 = [(EKEventRecurrenceEditItem *)self event];
  endDateUnadjustedForLegacyClients = [event2 endDateUnadjustedForLegacyClients];

  if (!endDate || (v9 = [endDate CalIsBeforeDate:endDateUnadjustedForLegacyClients], v10 = endDate, (v9 & 1) == 0))
  {
    v10 = endDateUnadjustedForLegacyClients;
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