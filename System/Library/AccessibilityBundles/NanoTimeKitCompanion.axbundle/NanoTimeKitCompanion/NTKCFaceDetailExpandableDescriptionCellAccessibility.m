@interface NTKCFaceDetailExpandableDescriptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (NTKCFaceDetailExpandableDescriptionCellAccessibility)init;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTKCFaceDetailExpandableDescriptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailExpandableDescriptionCell" isKindOfClass:@"NTKCCFaceDetailDescriptionCell"];
  [v3 validateClass:@"NTKCFaceDetailDescriptionCell" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailExpandableDescriptionCell" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailExpandableDescriptionCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
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
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCFaceDetailExpandableDescriptionCellAccessibility;
    v5 = [(NTKCFaceDetailExpandableDescriptionCellAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

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