@interface SessionTimeProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDidUpdateTimer:(double)a3 percentage:(float)a4;
@end

@implementation SessionTimeProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.SessionTimeProgressView" hasInstanceMethod:@"accessibilityDidUpdateTimer:percentage:" withFullSignature:{"v", "d", "f", 0}];
  [v3 validateClass:@"SeymourUI.SessionTimeProgressView" hasInstanceMethod:@"accessibilityShowRemaining" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SessionTimeProgressViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(SessionTimeProgressViewAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityDidUpdateTimer:(double)a3 percentage:(float)a4
{
  v6 = (a3 / 60);
  v7 = (a3 % 60);
  v8 = [(SessionTimeProgressViewAccessibility *)self safeBoolForKey:@"accessibilityShowRemaining"];
  v9 = MEMORY[0x29EDBA0F8];
  if (v8)
  {
    v10 = @"timer.remaining.format";
  }

  else
  {
    v10 = @"timer.format";
  }

  v11 = accessibilityLocalizedString(v10);
  v17 = [v9 stringWithFormat:v11, v6, v7];

  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"percent.complete.format");
  v14 = [v12 stringWithFormat:v13, (a4 * 100.0)];

  v15 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v17, v14}];
  if (v15)
  {
    v16 = AXLabelForElements();
    [(SessionTimeProgressViewAccessibility *)self setAccessibilityLabel:v16];
  }
}

@end