@interface PadDayViewVerticalScrollTest
- (id)scrollView;
@end

@implementation PadDayViewVerticalScrollTest

- (id)scrollView
{
  v2 = [(PadDayViewScrollTest *)self controller];
  v3 = [v2 dayView];
  v4 = [v3 verticalScrollView];

  return v4;
}

@end