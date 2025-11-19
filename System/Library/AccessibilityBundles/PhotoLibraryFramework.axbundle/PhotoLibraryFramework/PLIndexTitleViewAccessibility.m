@interface PLIndexTitleViewAccessibility
- (id)accessibilityLabel;
@end

@implementation PLIndexTitleViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(PLIndexTitleViewAccessibility *)self safeValueForKey:@"_title"];
  v4 = [(PLIndexTitleViewAccessibility *)self safeValueForKey:@"_dateString"];
  v5 = [MEMORY[0x29EDBA050] string];
  if ([v3 length])
  {
    [v5 appendFormat:@"%@, ", v3];
  }

  if ([v4 length])
  {
    [v5 appendFormat:@"%@", v4];
  }

  return v5;
}

@end