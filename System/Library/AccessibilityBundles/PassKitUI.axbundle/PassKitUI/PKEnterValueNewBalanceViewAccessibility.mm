@interface PKEnterValueNewBalanceViewAccessibility
- (id)accessibilityElements;
@end

@implementation PKEnterValueNewBalanceViewAccessibility

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(PKEnterValueNewBalanceViewAccessibility *)self safeValueForKey:@"_label"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end