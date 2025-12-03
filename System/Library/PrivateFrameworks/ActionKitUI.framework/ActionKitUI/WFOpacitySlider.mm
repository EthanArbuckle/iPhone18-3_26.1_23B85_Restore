@interface WFOpacitySlider
- (CGRect)trackRectForBounds:(CGRect)bounds;
@end

@implementation WFOpacitySlider

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  v16.receiver = self;
  v16.super_class = WFOpacitySlider;
  [(WFOpacitySlider *)&v16 trackRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = 2.0 / v10;

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end