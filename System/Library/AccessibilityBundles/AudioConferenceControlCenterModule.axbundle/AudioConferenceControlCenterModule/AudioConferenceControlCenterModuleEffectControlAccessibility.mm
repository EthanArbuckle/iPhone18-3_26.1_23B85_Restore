@interface AudioConferenceControlCenterModuleEffectControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AudioConferenceControlCenterModuleEffectControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"isExpanded" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"buttonTitle" withSwiftType:"String"];
}

- (id)accessibilityLabel
{
  v3 = [(AudioConferenceControlCenterModuleEffectControlAccessibility *)self safeSwiftStringForKey:@"buttonTitle"];
  v4 = v3;
  if (v3)
  {
    accessibilityLabel = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AudioConferenceControlCenterModuleEffectControlAccessibility;
    accessibilityLabel = [(AudioConferenceControlCenterModuleEffectControlAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AudioConferenceControlCenterModuleEffectControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AudioConferenceControlCenterModuleEffectControlAccessibility *)&v3 accessibilityTraits];
}

@end