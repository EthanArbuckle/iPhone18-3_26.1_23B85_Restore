@interface AVActionAccessibility
- (id)accessibilityLabel;
@end

@implementation AVActionAccessibility

- (id)accessibilityLabel
{
  v3 = [(AVActionAccessibility *)self safeStringForKey:@"title"];
  if ([v3 length])
  {
    accessibilityLabel = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AVActionAccessibility;
    accessibilityLabel = [(AVActionAccessibility *)&v7 accessibilityLabel];
  }

  v5 = accessibilityLabel;

  return v5;
}

@end