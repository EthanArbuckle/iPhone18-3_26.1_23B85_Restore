@interface RAPDirectionsRequestsCheckmarkSection
- (id)dequeueCellForValue:(id)a3;
@end

@implementation RAPDirectionsRequestsCheckmarkSection

- (id)dequeueCellForValue:(id)a3
{
  v3 = a3;
  v4 = [(RAPTwoLinesMenuTableViewCell *)[RAPRouteHistoryItemTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  v5 = [v3 historyItem];
  [(RAPRouteHistoryItemTableViewCell *)v4 setHistoryItem:v5];

  return v4;
}

@end