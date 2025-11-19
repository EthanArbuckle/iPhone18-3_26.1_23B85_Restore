@interface CompactDayNavigationViewCellFactory
- (id)createCellWithFrame:(CGRect)a3;
@end

@implementation CompactDayNavigationViewCellFactory

- (id)createCellWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [CompactDayNavigationViewCell alloc];
  v8 = CUIKGetOverlayCalendar();
  v9 = [(CompactDayNavigationViewCell *)v7 initWithFrame:0 loadMonthAnimationState:v8 != 0 hasOverlay:1 sizeClass:x, y, width, height];

  [(CompactDayNavigationViewCell *)v9 setMatchesMonthView:1];

  return v9;
}

@end