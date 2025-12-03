@interface CompactDayNavigationViewCellFactory
- (id)createCellWithFrame:(CGRect)frame;
@end

@implementation CompactDayNavigationViewCellFactory

- (id)createCellWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [CompactDayNavigationViewCell alloc];
  v8 = CUIKGetOverlayCalendar();
  height = [(CompactDayNavigationViewCell *)v7 initWithFrame:0 loadMonthAnimationState:v8 != 0 hasOverlay:1 sizeClass:x, y, width, height];

  [(CompactDayNavigationViewCell *)height setMatchesMonthView:1];

  return height;
}

@end