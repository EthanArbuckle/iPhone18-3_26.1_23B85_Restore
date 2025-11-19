@interface TraceNoBookmarksRow
- (void)configureCell:(id)a3;
@end

@implementation TraceNoBookmarksRow

- (void)configureCell:(id)a3
{
  v6.receiver = self;
  v6.super_class = TraceNoBookmarksRow;
  v3 = a3;
  [(TraceBookmarkRow *)&v6 configureCell:v3];
  v4 = [UIColor blueColor:v6.receiver];
  v5 = [v3 textLabel];
  [v5 setTextColor:v4];

  [v3 setUserInteractionEnabled:0];
}

@end