@interface PLIndexTitleViewAccessibility
- (id)accessibilityLabel;
@end

@implementation PLIndexTitleViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(PLIndexTitleViewAccessibility *)self safeValueForKey:@"_title"];
  v4 = [(PLIndexTitleViewAccessibility *)self safeValueForKey:@"_dateString"];
  string = [MEMORY[0x29EDBA050] string];
  if ([v3 length])
  {
    [string appendFormat:@"%@, ", v3];
  }

  if ([v4 length])
  {
    [string appendFormat:@"%@", v4];
  }

  return string;
}

@end