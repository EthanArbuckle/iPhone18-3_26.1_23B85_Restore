@interface Mail_UIScrollViewAccessibility
- (UIEdgeInsets)_accessibilityVisibleContentInset;
@end

@implementation Mail_UIScrollViewAccessibility

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v17.receiver = self;
  v17.super_class = Mail_UIScrollViewAccessibility;
  [(Mail_UIScrollViewAccessibility *)&v17 _accessibilityVisibleContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessibilityIdentification = [(Mail_UIScrollViewAccessibility *)self accessibilityIdentification];
  v12 = [accessibilityIdentification isEqualToString:@"kAXMailContentViewWebViewIdentifier"];

  v13 = 0.0;
  if (!v12)
  {
    v13 = v4;
  }

  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

@end