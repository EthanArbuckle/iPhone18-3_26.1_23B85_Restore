@interface TraceNavBookmarkRow
- (TraceNavBookmarkRow)initWithBookmarkIndex:(unint64_t)index time:(double)time;
@end

@implementation TraceNavBookmarkRow

- (TraceNavBookmarkRow)initWithBookmarkIndex:(unint64_t)index time:(double)time
{
  v7 = [NSString stringWithFormat:@"Nav Bookmark %ld", index + 1];
  0x3C = [NSString stringWithFormat:@"%lu:%02lu", time / 0x3C, time % 0x3C];
  v9 = [NSString stringWithFormat:@"At time: %@", 0x3C];

  v13.receiver = self;
  v13.super_class = TraceNavBookmarkRow;
  v10 = [(TraceBookmarkRow *)&v13 initWithName:v7 detail:v9];
  v11 = v10;
  if (v10)
  {
    v10->_bookmarkIndex = index;
  }

  return v11;
}

@end