@interface SFAttributedRichLinkCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityAXAttributedLabel;
@end

@implementation SFAttributedRichLinkCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFAttributedRichLinkCell" hasInstanceVariable:@"_attributionView" withType:"SLAttributionView"];
  [v3 validateClass:@"SFAttributedRichLinkCell" hasInstanceVariable:@"_linkView" withType:"LPLinkView"];
}

- (id)_accessibilityAXAttributedLabel
{
  v3 = [(SFAttributedRichLinkCellAccessibility *)self safeUIViewForKey:@"_linkView"];
  v4 = [v3 accessibilityLabel];

  v5 = [(SFAttributedRichLinkCellAccessibility *)self safeValueForKey:@"_attributionView"];
  v6 = [v5 _accessibilityAXAttributedLabel];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:v4];
    [v7 appendString:{@", "}];
    [v7 appendStringOrAXAttributedString:v6];

    v4 = v7;
  }

  return v4;
}

@end