@interface EKEventEditItem
- (id)event;
- (void)setCalendarItem:(id)a3 store:(id)a4;
@end

@implementation EKEventEditItem

- (void)setCalendarItem:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(EKEventEditItem *)a2 setCalendarItem:v7 store:?];
    }
  }

  v9.receiver = self;
  v9.super_class = EKEventEditItem;
  [(EKCalendarItemEditItem *)&v9 setCalendarItem:v7 store:v8];
}

- (id)event
{
  v4.receiver = self;
  v4.super_class = EKEventEditItem;
  v2 = [(EKCalendarItemEditItem *)&v4 calendarItem];

  return v2;
}

- (void)setCalendarItem:(uint64_t)a3 store:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"EKEventEditItem.m" lineNumber:15 description:{@"Tried to set %@ as an event on %@", a3, a2}];
}

@end