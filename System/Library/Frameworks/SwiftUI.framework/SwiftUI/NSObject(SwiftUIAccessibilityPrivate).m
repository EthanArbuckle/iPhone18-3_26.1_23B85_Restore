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

  return [a1 _accessibilityIsMacVisualAppearance];
}

- (uint64_t)swiftUI_accessibilityCanBeConsideredMediaAnalysisElement
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 _accessibilityCanBeConsideredMediaAnalysisElement];
}

- (uint64_t)swiftUI_accessibilityIsSwiftUIHostingCellView
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 _accessibilityIsSwiftUIHostingCellView];
}

- (id)swiftUI_accessibilityFindAncestor:()SwiftUIAccessibilityPrivate startWithSelf:
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 _accessibilityFindAncestor:v6 startWithSelf:a4];
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
    v2 = [a1 accessibilityUserDefinedLabel];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)swiftUI_accessibilityUserDefinedValue
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 accessibilityUserDefinedValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)swiftUI_accessibilityAttributedLabel
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _internalAccessibilityAttributedLabel];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)swiftUI_accessibilityAttributedValue
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _internalAccessibilityAttributedValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)swiftUI_accessibilityShowContextMenuForElement:()SwiftUIAccessibilityPrivate targetPointValue:
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [a1 _accessibilityShowContextMenuForElement:v6 targetPointValue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end