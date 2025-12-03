@interface PadDayViewVerticalScrollTest
- (id)scrollView;
@end

@implementation PadDayViewVerticalScrollTest

- (id)scrollView
{
  controller = [(PadDayViewScrollTest *)self controller];
  dayView = [controller dayView];
  verticalScrollView = [dayView verticalScrollView];

  return verticalScrollView;
}

@end