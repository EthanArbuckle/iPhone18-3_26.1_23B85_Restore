@interface CAMDrawerSmartStyleButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerSmartStyleButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [validationsCopy validateClass:@"CAMDrawerSmartStyleButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [validationsCopy validateClass:@"CAMDrawerSmartStyleButton" hasInstanceMethod:@"shutterButton" withFullSignature:{"@", 0}];
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
  _accessibilitySupplementaryFooterViews = [(CAMDrawerSmartStyleButtonAccessibility *)&v11 _accessibilitySupplementaryFooterViews];
  v5 = [v3 axArrayWithPossiblyNilArrays:{1, _accessibilitySupplementaryFooterViews}];
  v6 = v5;
  if (v5)
  {
    array = v5;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v8 = array;

  v9 = [(CAMDrawerSmartStyleButtonAccessibility *)self safeValueForKey:@"shutterButton"];
  [v9 _setIsAccessibilityElementBlock:&__block_literal_global_3];
  if ([v9 _accessibilityViewIsVisible])
  {
    [v8 axSafelyAddObject:v9];
  }

  return v8;
}

@end