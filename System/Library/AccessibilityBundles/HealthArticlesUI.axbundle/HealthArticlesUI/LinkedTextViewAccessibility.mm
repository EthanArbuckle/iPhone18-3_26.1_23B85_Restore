@interface LinkedTextViewAccessibility
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (id)_accessibilityLinkedTextView;
- (id)accessibilityLabel;
@end

@implementation LinkedTextViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(LinkedTextViewAccessibility *)self _accessibilityLinkedTextView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(LinkedTextViewAccessibility *)self _accessibilityLinkedTextView];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityActivate
{
  v2 = [(LinkedTextViewAccessibility *)self _accessibilityLinkedTextView];
  v3 = [v2 accessibilityActivate];

  return v3;
}

- (id)_accessibilityLinkedTextView
{
  v3 = objc_opt_class();

  return [(LinkedTextViewAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end