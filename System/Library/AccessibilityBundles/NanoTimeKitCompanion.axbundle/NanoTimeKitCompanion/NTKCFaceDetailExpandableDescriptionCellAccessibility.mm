@interface NTKCFaceDetailExpandableDescriptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (NTKCFaceDetailExpandableDescriptionCellAccessibility)init;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTKCFaceDetailExpandableDescriptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailExpandableDescriptionCell" isKindOfClass:@"NTKCCFaceDetailDescriptionCell"];
  [validationsCopy validateClass:@"NTKCFaceDetailDescriptionCell" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailExpandableDescriptionCell" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailExpandableDescriptionCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NTKCFaceDetailExpandableDescriptionCellAccessibility;
  [(NTKCFaceDetailExpandableDescriptionCellAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    AXPerformSafeBlock();
  }
}

- (id)accessibilityLabel
{
  v9 = 0;
  objc_opt_class();
  v3 = [(NTKCFaceDetailExpandableDescriptionCellAccessibility *)self safeValueForKey:@"text"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 length])
  {
    accessibilityLabel = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCFaceDetailExpandableDescriptionCellAccessibility;
    accessibilityLabel = [(NTKCFaceDetailExpandableDescriptionCellAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

- (NTKCFaceDetailExpandableDescriptionCellAccessibility)init
{
  v5.receiver = self;
  v5.super_class = NTKCFaceDetailExpandableDescriptionCellAccessibility;
  v2 = [(NTKCFaceDetailExpandableDescriptionCellAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKCFaceDetailExpandableDescriptionCellAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

@end