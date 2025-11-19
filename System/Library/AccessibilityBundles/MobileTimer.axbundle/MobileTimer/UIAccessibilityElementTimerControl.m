@interface UIAccessibilityElementTimerControl
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIAccessibilityElementTimerControl

- (CGRect)accessibilityFrame
{
  v3 = [(UIAccessibilityElementTimerControl *)self icon];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIAccessibilityElementTimerControl *)self name];
  [v12 accessibilityFrame];
  v28.origin.x = v13;
  v28.origin.y = v14;
  v28.size.width = v15;
  v28.size.height = v16;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v26 = CGRectUnion(v25, v28);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"timer.alert.tone");
  v5 = [(UIAccessibilityElementTimerControl *)self name];
  v6 = [v5 accessibilityLabel];
  v7 = [v3 stringWithFormat:v4, v6];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(UIAccessibilityElementTimerControl *)self icon];
  v4 = [v3 accessibilityTraits];
  v5 = [(UIAccessibilityElementTimerControl *)self name];
  v6 = [v5 accessibilityTraits];

  return v6 | v4;
}

@end