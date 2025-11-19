@interface CAMDrawerSmartStyleButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerSmartStyleButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [v3 validateClass:@"CAMDrawerSmartStyleButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [v3 validateClass:@"CAMDrawerSmartStyleButton" hasInstanceMethod:@"shutterButton" withFullSignature:{"@", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CAMDrawerSmartStyleButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = MEMORY[0x29EDB8DE8];
  v11.receiver = self;
  v11.super_class = CAMDrawerSmartStyleButtonAccessibility;
  v4 = [(CAMDrawerSmartStyleButtonAccessibility *)&v11 _accessibilitySupplementaryFooterViews];
  v5 = [v3 axArrayWithPossiblyNilArrays:{1, v4}];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x29EDB8DE8] array];
  }

  v8 = v7;

  v9 = [(CAMDrawerSmartStyleButtonAccessibility *)self safeValueForKey:@"shutterButton"];
  [v9 _setIsAccessibilityElementBlock:&__block_literal_global_3];
  if ([v9 _accessibilityViewIsVisible])
  {
    [v8 axSafelyAddObject:v9];
  }

  return v8;
}

@end