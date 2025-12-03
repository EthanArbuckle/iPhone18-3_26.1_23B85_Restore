@interface PadWeekViewVerticalScrollTest
- (id)scrollView;
@end

@implementation PadWeekViewVerticalScrollTest

- (id)scrollView
{
  controller = [(PadWeekViewScrollTest *)self controller];
  verticalScrollView = [controller verticalScrollView];

  return verticalScrollView;
}

@end