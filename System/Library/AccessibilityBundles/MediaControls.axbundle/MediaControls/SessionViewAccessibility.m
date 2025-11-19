@interface SessionViewAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation SessionViewAccessibility

- (BOOL)accessibilityElementsHidden
{
  v3 = [(SessionViewAccessibility *)self safeSwiftBoolForKey:@"axIsStacked"];
  if (v3)
  {
    LOBYTE(v3) = [(SessionViewAccessibility *)self safeSwiftBoolForKey:@"axIsTopOfStack"]^ 1;
  }

  return v3;
}

@end