@interface RAPDirectionsRequestsCheckmarkSection
- (id)dequeueCellForValue:(id)value;
@end

@implementation RAPDirectionsRequestsCheckmarkSection

- (id)dequeueCellForValue:(id)value
{
  valueCopy = value;
  v4 = [(RAPTwoLinesMenuTableViewCell *)[RAPRouteHistoryItemTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  historyItem = [valueCopy historyItem];
  [(RAPRouteHistoryItemTableViewCell *)v4 setHistoryItem:historyItem];

  return v4;
}

@end