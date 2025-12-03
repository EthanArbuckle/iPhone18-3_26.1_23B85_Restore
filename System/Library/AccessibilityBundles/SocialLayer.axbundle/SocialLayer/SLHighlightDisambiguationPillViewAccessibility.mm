@interface SLHighlightDisambiguationPillViewAccessibility
- (id)_accessibilityAXAttributedLabel;
@end

@implementation SLHighlightDisambiguationPillViewAccessibility

- (id)_accessibilityAXAttributedLabel
{
  objc_opt_class();
  v3 = [(SLHighlightDisambiguationPillViewAccessibility *)self safeValueForKey:@"attribution"];
  v4 = __UIAccessibilityCastAsClass();

  uniqueIdentifier = [v4 uniqueIdentifier];
  v6 = [uniqueIdentifier length];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:@" "];
    uniqueIdentifier2 = [v4 uniqueIdentifier];
    [v7 setAttribute:uniqueIdentifier2 forKey:*MEMORY[0x29EDBD9C8] withRange:{objc_msgSend(v7, "length") - 1, 1}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end