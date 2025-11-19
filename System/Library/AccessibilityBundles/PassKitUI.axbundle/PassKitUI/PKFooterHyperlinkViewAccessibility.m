@interface PKFooterHyperlinkViewAccessibility
- (id)_accessibilityInternalTextLinks;
@end

@implementation PKFooterHyperlinkViewAccessibility

- (id)_accessibilityInternalTextLinks
{
  v2 = [(PKFooterHyperlinkViewAccessibility *)self safeUIViewForKey:@"_textView"];
  v3 = [v2 _accessibilityInternalTextLinks];

  return v3;
}

@end