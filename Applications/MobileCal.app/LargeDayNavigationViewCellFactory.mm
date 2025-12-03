@interface LargeDayNavigationViewCellFactory
- (id)createCellWithFrame:(CGRect)frame;
@end

@implementation LargeDayNavigationViewCellFactory

- (id)createCellWithFrame:(CGRect)frame
{
  v3 = [[LargeDayNavigationViewCell alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(LargeDayNavigationViewCell *)v3 setUsesRoundedRectInsteadOfCircle:EKUIUsesRoundedRectsInsteadOfCircles()];

  return v3;
}

@end