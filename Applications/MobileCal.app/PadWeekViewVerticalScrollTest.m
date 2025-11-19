@interface PadWeekViewVerticalScrollTest
- (id)scrollView;
@end

@implementation PadWeekViewVerticalScrollTest

- (id)scrollView
{
  v2 = [(PadWeekViewScrollTest *)self controller];
  v3 = [v2 verticalScrollView];

  return v3;
}

@end