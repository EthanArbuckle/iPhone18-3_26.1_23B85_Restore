@interface SUTableHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SUTableHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SUTableHeaderViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SUTableHeaderViewAccessibility *)self safeValueForKey:@"subtitle"];
  string = [MEMORY[0x29EDBA050] string];
  if ([v3 length])
  {
    [string appendFormat:@"%@, ", v3];
  }

  if ([v4 length])
  {
    [string appendFormat:@"%@, ", v4];
  }

  return string;
}

@end