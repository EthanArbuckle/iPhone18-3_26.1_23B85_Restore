@interface TraceNavBookmarkRow
- (TraceNavBookmarkRow)initWithBookmarkIndex:(unint64_t)a3 time:(double)a4;
@end

@implementation TraceNavBookmarkRow

- (TraceNavBookmarkRow)initWithBookmarkIndex:(unint64_t)a3 time:(double)a4
{
  v7 = [NSString stringWithFormat:@"Nav Bookmark %ld", a3 + 1];
  v8 = [NSString stringWithFormat:@"%lu:%02lu", a4 / 0x3C, a4 % 0x3C];
  v9 = [NSString stringWithFormat:@"At time: %@", v8];

  v13.receiver = self;
  v13.super_class = TraceNavBookmarkRow;
  v10 = [(TraceBookmarkRow *)&v13 initWithName:v7 detail:v9];
  v11 = v10;
  if (v10)
  {
    v10->_bookmarkIndex = a3;
  }

  return v11;
}

@end