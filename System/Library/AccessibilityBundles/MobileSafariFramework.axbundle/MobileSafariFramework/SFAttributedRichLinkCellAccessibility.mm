@interface SFAttributedRichLinkCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAXAttributedLabel;
@end

@implementation SFAttributedRichLinkCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFAttributedRichLinkCell" hasInstanceVariable:@"_attributionView" withType:"SLAttributionView"];
  [validationsCopy validateClass:@"SFAttributedRichLinkCell" hasInstanceVariable:@"_linkView" withType:"LPLinkView"];
}

- (id)_accessibilityAXAttributedLabel
{
  v3 = [(SFAttributedRichLinkCellAccessibility *)self safeUIViewForKey:@"_linkView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(SFAttributedRichLinkCellAccessibility *)self safeValueForKey:@"_attributionView"];
  _accessibilityAXAttributedLabel = [v5 _accessibilityAXAttributedLabel];

  if (_accessibilityAXAttributedLabel)
  {
    v7 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:accessibilityLabel];
    [v7 appendString:{@", "}];
    [v7 appendStringOrAXAttributedString:_accessibilityAXAttributedLabel];

    accessibilityLabel = v7;
  }

  return accessibilityLabel;
}

@end