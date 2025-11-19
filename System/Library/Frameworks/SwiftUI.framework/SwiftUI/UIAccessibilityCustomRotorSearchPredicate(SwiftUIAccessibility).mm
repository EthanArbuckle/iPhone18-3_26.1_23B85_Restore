@interface UIAccessibilityCustomRotorSearchPredicate(SwiftUIAccessibility)
- (uint64_t)setSwiftUI_honorsGroups:()SwiftUIAccessibility;
- (uint64_t)swiftUI_honorsGroups;
@end

@implementation UIAccessibilityCustomRotorSearchPredicate(SwiftUIAccessibility)

- (uint64_t)swiftUI_honorsGroups
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 honorsGroups];
}

- (uint64_t)setSwiftUI_honorsGroups:()SwiftUIAccessibility
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a1 setHonorsGroups:a3];
  }

  return result;
}

@end