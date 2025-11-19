@interface SUTableHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SUTableHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SUTableHeaderViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SUTableHeaderViewAccessibility *)self safeValueForKey:@"subtitle"];
  v5 = [MEMORY[0x29EDBA050] string];
  if ([v3 length])
  {
    [v5 appendFormat:@"%@, ", v3];
  }

  if ([v4 length])
  {
    [v5 appendFormat:@"%@, ", v4];
  }

  return v5;
}

@end