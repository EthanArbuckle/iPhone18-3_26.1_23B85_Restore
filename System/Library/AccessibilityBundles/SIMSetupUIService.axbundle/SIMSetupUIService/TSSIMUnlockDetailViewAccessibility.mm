@interface TSSIMUnlockDetailViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (TSSIMUnlockDetailViewAccessibility)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TSSIMUnlockDetailViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TSSIMUnlockDetailView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"TSSIMUnlockDetailView" hasInstanceMethod:@"initWithActionType:actionSubtype:" withFullSignature:{"@", "q", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TSSIMUnlockDetailViewAccessibility;
  [(TSSIMUnlockDetailViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(TSSIMUnlockDetailViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 _accessibilityAddTrait:*MEMORY[0x29EDC7F80]];
}

- (TSSIMUnlockDetailViewAccessibility)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype
{
  v7.receiver = self;
  v7.super_class = TSSIMUnlockDetailViewAccessibility;
  v4 = [(TSSIMUnlockDetailViewAccessibility *)&v7 initWithActionType:type actionSubtype:subtype];
  v5 = v4;
  if (v4)
  {
    [(TSSIMUnlockDetailViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  }

  return v5;
}

@end