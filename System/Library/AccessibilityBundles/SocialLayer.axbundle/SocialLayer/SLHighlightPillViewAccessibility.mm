@interface SLHighlightPillViewAccessibility
- (id)_accessibilityAXAttributedLabel;
@end

@implementation SLHighlightPillViewAccessibility

- (id)_accessibilityAXAttributedLabel
{
  v2 = [(SLHighlightPillViewAccessibility *)self safeArrayForKey:@"_attributionIdentifiers"];
  if ([v2 count])
  {
    v3 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:@" "];
    [v3 setAttribute:v2 forKey:*MEMORY[0x29EDBD9C8] withRange:{objc_msgSend(v3, "length") - 1, 1}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end