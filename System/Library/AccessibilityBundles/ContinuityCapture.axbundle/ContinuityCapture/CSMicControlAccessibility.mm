@interface CSMicControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CSMicControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSMicControl" hasInstanceVariable:@"_micState" withType:"NSUInteger"];
  [validationsCopy validateClass:@"CSMicControl" hasInstanceMethod:@"setMicControlState:animated:" withFullSignature:{"v", "Q", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(CSMicControlAccessibility *)self safeUnsignedIntegerForKey:@"_micState"];
  switch(v2)
  {
    case 0:
      v3 = @"off";
      goto LABEL_7;
    case 3:
      v3 = @"loading";
      goto LABEL_7;
    case 1:
      v3 = @"on";
LABEL_7:
      v4 = accessibilityLocalizedString(v3);
      goto LABEL_9;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CSMicControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CSMicControlAccessibility *)&v3 accessibilityTraits];
}

@end