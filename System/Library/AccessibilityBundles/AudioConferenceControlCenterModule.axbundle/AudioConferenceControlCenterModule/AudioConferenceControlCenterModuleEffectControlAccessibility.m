@interface AudioConferenceControlCenterModuleEffectControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AudioConferenceControlCenterModuleEffectControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"isExpanded" withSwiftType:"Bool"];
  [v3 validateClass:@"VideoConferenceControlCenterModule.EffectControl" hasSwiftField:@"buttonTitle" withSwiftType:"String"];
}

- (id)accessibilityLabel
{
  v3 = [(AudioConferenceControlCenterModuleEffectControlAccessibility *)self safeSwiftStringForKey:@"buttonTitle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AudioConferenceControlCenterModuleEffectControlAccessibility;
    v5 = [(AudioConferenceControlCenterModuleEffectControlAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AudioConferenceControlCenterModuleEffectControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AudioConferenceControlCenterModuleEffectControlAccessibility *)&v3 accessibilityTraits];
}

@end