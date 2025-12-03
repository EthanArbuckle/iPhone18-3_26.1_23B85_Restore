@interface PKFooterHyperlinkViewAccessibility
- (id)_accessibilityInternalTextLinks;
@end

@implementation PKFooterHyperlinkViewAccessibility

- (id)_accessibilityInternalTextLinks
{
  v2 = [(PKFooterHyperlinkViewAccessibility *)self safeUIViewForKey:@"_textView"];
  _accessibilityInternalTextLinks = [v2 _accessibilityInternalTextLinks];

  return _accessibilityInternalTextLinks;
}

@end