@interface RAPReportComposerWhichSearchSection
- (id)dequeueCellForValue:(id)a3;
@end

@implementation RAPReportComposerWhichSearchSection

- (id)dequeueCellForValue:(id)a3
{
  v3 = a3;
  v4 = [(RAPTwoLinesMenuTableViewCell *)[RAPSearchHistoryItemTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  [(RAPSearchHistoryItemTableViewCell *)v4 setHistoryItem:v3];

  return v4;
}

@end