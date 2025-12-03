@interface TraceNoBookmarksRow
- (void)configureCell:(id)cell;
@end

@implementation TraceNoBookmarksRow

- (void)configureCell:(id)cell
{
  v6.receiver = self;
  v6.super_class = TraceNoBookmarksRow;
  cellCopy = cell;
  [(TraceBookmarkRow *)&v6 configureCell:cellCopy];
  v4 = [UIColor blueColor:v6.receiver];
  textLabel = [cellCopy textLabel];
  [textLabel setTextColor:v4];

  [cellCopy setUserInteractionEnabled:0];
}

@end