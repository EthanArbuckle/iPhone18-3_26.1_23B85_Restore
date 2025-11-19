@interface LargeDayNavigationViewCellFactory
- (id)createCellWithFrame:(CGRect)a3;
@end

@implementation LargeDayNavigationViewCellFactory

- (id)createCellWithFrame:(CGRect)a3
{
  v3 = [[LargeDayNavigationViewCell alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(LargeDayNavigationViewCell *)v3 setUsesRoundedRectInsteadOfCircle:EKUIUsesRoundedRectsInsteadOfCircles()];

  return v3;
}

@end