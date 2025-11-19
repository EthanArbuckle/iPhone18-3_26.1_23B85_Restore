@interface WeekAllDayLabelAccessibilityElement
- (CGRect)accessibilityFrame;
- (UIView)allDayView;
@end

@implementation WeekAllDayLabelAccessibilityElement

- (CGRect)accessibilityFrame
{
  v3 = [(WeekAllDayLabelAccessibilityElement *)self allDayView];
  v4 = [v3 safeValueForKey:@"_dayWidth"];
  [v4 doubleValue];

  v5 = [v3 safeValueForKey:@"bounds"];
  [v5 CGRectValue];

  v6 = [v3 safeValueForKey:@"firstEventYOffset"];
  [v6 doubleValue];

  [(WeekAllDayLabelAccessibilityElement *)self dayIndex];
  UIAccessibilityFrameForBounds();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (UIView)allDayView
{
  WeakRetained = objc_loadWeakRetained(&self->_allDayView);

  return WeakRetained;
}

@end