@interface TipsWidgetExtensionUIViewAccessibility
- (BOOL)_accessibilityOverridesInvalidFrames;
- (BOOL)_accessibilityUseAccessibilityFrameForHittest;
- (CGRect)accessibilityFrame;
@end

@implementation TipsWidgetExtensionUIViewAccessibility

- (BOOL)_accessibilityUseAccessibilityFrameForHittest
{
  accessibilityIdentifier = [(TipsWidgetExtensionUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:kAXSingleTipsViewIdentifier];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TipsWidgetExtensionUIViewAccessibility;
  return [(TipsWidgetExtensionUIViewAccessibility *)&v6 _accessibilityUseAccessibilityFrameForHittest];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  accessibilityIdentifier = [(TipsWidgetExtensionUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:kAXSingleTipsViewIdentifier];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TipsWidgetExtensionUIViewAccessibility;
  return [(TipsWidgetExtensionUIViewAccessibility *)&v6 _accessibilityOverridesInvalidFrames];
}

- (CGRect)accessibilityFrame
{
  accessibilityIdentifier = [(TipsWidgetExtensionUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:kAXSingleTipsViewIdentifier];

  if (v4)
  {
    superview = [(TipsWidgetExtensionUIViewAccessibility *)self superview];
    [superview accessibilityFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TipsWidgetExtensionUIViewAccessibility;
    [(TipsWidgetExtensionUIViewAccessibility *)&v22 accessibilityFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end