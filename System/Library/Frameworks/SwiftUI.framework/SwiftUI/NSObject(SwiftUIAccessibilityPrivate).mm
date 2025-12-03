@interface NSObject(SwiftUIAccessibilityPrivate)
- (id)swiftUI_accessibilityAttributedLabel;
- (id)swiftUI_accessibilityAttributedValue;
- (id)swiftUI_accessibilityFindAncestor:()SwiftUIAccessibilityPrivate startWithSelf:;
- (id)swiftUI_accessibilityUserDefinedLabel;
- (id)swiftUI_accessibilityUserDefinedValue;
- (uint64_t)swiftUI_accessibilityCanBeConsideredMediaAnalysisElement;
- (uint64_t)swiftUI_accessibilityIsMacVisualAppearance;
- (uint64_t)swiftUI_accessibilityIsSwiftUIHostingCellView;
- (uint64_t)swiftUI_accessibilityShowContextMenuForElement:()SwiftUIAccessibilityPrivate targetPointValue:;
@end

@implementation NSObject(SwiftUIAccessibilityPrivate)

- (uint64_t)swiftUI_accessibilityIsMacVisualAppearance
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self _accessibilityIsMacVisualAppearance];
}

- (uint64_t)swiftUI_accessibilityCanBeConsideredMediaAnalysisElement
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self _accessibilityCanBeConsideredMediaAnalysisElement];
}

- (uint64_t)swiftUI_accessibilityIsSwiftUIHostingCellView
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self _accessibilityIsSwiftUIHostingCellView];
}

- (id)swiftUI_accessibilityFindAncestor:()SwiftUIAccessibilityPrivate startWithSelf:
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [self _accessibilityFindAncestor:v6 startWithSelf:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swiftUI_accessibilityUserDefinedLabel
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityUserDefinedLabel = [self accessibilityUserDefinedLabel];
  }

  else
  {
    accessibilityUserDefinedLabel = 0;
  }

  return accessibilityUserDefinedLabel;
}

- (id)swiftUI_accessibilityUserDefinedValue
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityUserDefinedValue = [self accessibilityUserDefinedValue];
  }

  else
  {
    accessibilityUserDefinedValue = 0;
  }

  return accessibilityUserDefinedValue;
}

- (id)swiftUI_accessibilityAttributedLabel
{
  if (objc_opt_respondsToSelector())
  {
    _internalAccessibilityAttributedLabel = [self _internalAccessibilityAttributedLabel];
  }

  else
  {
    _internalAccessibilityAttributedLabel = 0;
  }

  return _internalAccessibilityAttributedLabel;
}

- (id)swiftUI_accessibilityAttributedValue
{
  if (objc_opt_respondsToSelector())
  {
    _internalAccessibilityAttributedValue = [self _internalAccessibilityAttributedValue];
  }

  else
  {
    _internalAccessibilityAttributedValue = 0;
  }

  return _internalAccessibilityAttributedValue;
}

- (uint64_t)swiftUI_accessibilityShowContextMenuForElement:()SwiftUIAccessibilityPrivate targetPointValue:
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [self _accessibilityShowContextMenuForElement:v6 targetPointValue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end