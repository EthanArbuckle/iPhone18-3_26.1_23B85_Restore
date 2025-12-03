@interface FileInfoCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (FileInfoCellAccessibility)initWithNameAndValue:(id)value value:(id)a4 maxLines:(int64_t)lines;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FileInfoCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FileInfoCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FileInfoCell" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FileInfoCell" hasInstanceMethod:@"initWithNameAndValue: value: maxLines:" withFullSignature:{"@", "@", "@", "q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(FileInfoCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(FileInfoCellAccessibility *)self safeValueForKey:@"valueLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"fileinfo.location.arrow");
  v7 = [v5 stringWithFormat:@", %@, ", v6];

  v8 = [v4 safeValueForKey:@"text"];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"▸" withString:v7];

  return v9;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = FileInfoCellAccessibility;
  [(FileInfoCellAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(FileInfoCellAccessibility *)self safeValueForKey:@"nameLabel", 0];
  v16[0] = v3;
  v4 = [(FileInfoCellAccessibility *)self safeValueForKey:@"valueLabel"];
  v16[1] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:2];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setIsAccessibilityElement:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (FileInfoCellAccessibility)initWithNameAndValue:(id)value value:(id)a4 maxLines:(int64_t)lines
{
  v7.receiver = self;
  v7.super_class = FileInfoCellAccessibility;
  v5 = [(FileInfoCellAccessibility *)&v7 initWithNameAndValue:value value:a4 maxLines:lines];
  [(FileInfoCellAccessibility *)v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end