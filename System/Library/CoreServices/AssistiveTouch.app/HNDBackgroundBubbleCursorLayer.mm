@interface HNDBackgroundBubbleCursorLayer
- (id)_strokeColorForTheme:(int)theme level:(int)level pointerSizeMultiplier:(double)multiplier;
@end

@implementation HNDBackgroundBubbleCursorLayer

- (id)_strokeColorForTheme:(int)theme level:(int)level pointerSizeMultiplier:(double)multiplier
{
  if (_AXSPointerStrokeColor() && _AXSPointerStrokeColor() != 1 && (_AXSPointerStrokeColor(), _AXSPointerStrokeColorValues()))
  {
    v5 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  else
  {
    v5 = [UIColor colorWithWhite:0.8 alpha:0.6, 0, 0];
  }

  return v5;
}

@end