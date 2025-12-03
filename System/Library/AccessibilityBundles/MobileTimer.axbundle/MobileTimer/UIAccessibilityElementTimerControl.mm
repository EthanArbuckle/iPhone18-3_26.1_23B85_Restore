@interface UIAccessibilityElementTimerControl
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIAccessibilityElementTimerControl

- (CGRect)accessibilityFrame
{
  icon = [(UIAccessibilityElementTimerControl *)self icon];
  [icon accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  name = [(UIAccessibilityElementTimerControl *)self name];
  [name accessibilityFrame];
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
  name = [(UIAccessibilityElementTimerControl *)self name];
  accessibilityLabel = [name accessibilityLabel];
  v7 = [v3 stringWithFormat:v4, accessibilityLabel];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  icon = [(UIAccessibilityElementTimerControl *)self icon];
  accessibilityTraits = [icon accessibilityTraits];
  name = [(UIAccessibilityElementTimerControl *)self name];
  accessibilityTraits2 = [name accessibilityTraits];

  return accessibilityTraits2 | accessibilityTraits;
}

@end