@interface NTKCFaceDetailComplicationCellAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKCFaceDetailComplicationCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 textLabel];
  v4 = [v3 accessibilityLabel];
  v5 = [v2 detailTextLabel];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end