@interface UIAccessibilityFrameRecalculatingElement
- (CGRect)accessibilityFrame;
- (void)dealloc;
@end

@implementation UIAccessibilityFrameRecalculatingElement

- (CGRect)accessibilityFrame
{
  calculateFrame = [(UIAccessibilityFrameRecalculatingElement *)self calculateFrame];
  v3 = calculateFrame[2]();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)dealloc
{
  [(UIAccessibilityFrameRecalculatingElement *)self setCalculateFrame:0];
  v3.receiver = self;
  v3.super_class = UIAccessibilityFrameRecalculatingElement;
  [(UIAccessibilityFrameRecalculatingElement *)&v3 dealloc];
}

@end