@interface NTKCFaceDetailComplicationCellAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKCFaceDetailComplicationCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  textLabel = [v2 textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  detailTextLabel = [v2 detailTextLabel];
  accessibilityLabel2 = [detailTextLabel accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end