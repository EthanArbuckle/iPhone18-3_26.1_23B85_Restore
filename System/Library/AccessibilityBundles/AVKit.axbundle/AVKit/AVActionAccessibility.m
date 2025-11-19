@interface AVActionAccessibility
- (id)accessibilityLabel;
@end

@implementation AVActionAccessibility

- (id)accessibilityLabel
{
  v3 = [(AVActionAccessibility *)self safeStringForKey:@"title"];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AVActionAccessibility;
    v4 = [(AVActionAccessibility *)&v7 accessibilityLabel];
  }

  v5 = v4;

  return v5;
}

@end