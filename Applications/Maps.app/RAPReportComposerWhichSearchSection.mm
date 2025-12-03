@interface RAPReportComposerWhichSearchSection
- (id)dequeueCellForValue:(id)value;
@end

@implementation RAPReportComposerWhichSearchSection

- (id)dequeueCellForValue:(id)value
{
  valueCopy = value;
  v4 = [(RAPTwoLinesMenuTableViewCell *)[RAPSearchHistoryItemTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  [(RAPSearchHistoryItemTableViewCell *)v4 setHistoryItem:valueCopy];

  return v4;
}

@end