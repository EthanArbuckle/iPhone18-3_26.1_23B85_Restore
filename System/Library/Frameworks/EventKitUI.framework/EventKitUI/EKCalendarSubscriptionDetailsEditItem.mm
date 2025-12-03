@interface EKCalendarSubscriptionDetailsEditItem
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
@end

@implementation EKCalendarSubscriptionDetailsEditItem

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD028]);
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Subscription Details" value:&stru_1F4EF6790 table:0];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  [v3 setAccessoryType:1];
  [v3 setAccessibilityIdentifier:@"calendar-subscription-details-cell"];

  return v3;
}

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v8 = [[EKCalendarSubscriptionDetailsViewController alloc] initWithCalendar:self->super._calendar store:self->super._store];
  delegate = [(EKCalendarEditItem *)self delegate];
  [(EKCalendarSubscriptionDetailsViewController *)v8 setDelegate:delegate];

  delegate2 = [(EKCalendarEditItem *)self delegate];
  owningNavigationController = [delegate2 owningNavigationController];
  [owningNavigationController pushViewController:v8 animated:1];
}

@end