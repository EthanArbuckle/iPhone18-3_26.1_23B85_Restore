@interface TransitDirectionsInstructionsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation TransitDirectionsInstructionsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TransitDirectionsInstructionsCell" isKindOfClass:@"TransitDirectionsCell"];
  [v3 validateClass:@"TransitDirectionsCell" hasInstanceVariable:@"_stepView" withType:"TransitDirectionsStepView"];
}

- (id)accessibilityElements
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = [(TransitDirectionsInstructionsCellAccessibility *)self safeValueForKey:@"_stepView"];
  v3 = v2;
  if (v2 && [v2 isAccessibilityElement])
  {
    v7[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x29EDB8E90];
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

@end