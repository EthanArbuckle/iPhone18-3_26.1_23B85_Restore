@interface EditButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation EditButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.EditButton" hasInstanceMethod:@"editEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Measure.EditButton" hasInstanceMethod:@"isInputEnabled" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  v2 = AXMeasureSpeakableDescriptionForCurrentMeasurement();
  if (v2)
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityLocalizedString(@"ADD_BUTTON_LAST_MEASUREMENT");
    v5 = [v3 localizedStringWithFormat:v4, v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7FF0] | *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FC8];
  if (![(EditButtonAccessibility *)self safeBoolForKey:@"editEnabled"]|| ([(EditButtonAccessibility *)self safeBoolForKey:@"isInputEnabled"]& 1) == 0)
  {
    v3 |= *MEMORY[0x29EDC7FA8];
  }

  return v3;
}

@end