@interface UpdatesLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomContent;
- (unint64_t)accessibilityTraits;
@end

@implementation UpdatesLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.UpdatesLockupCollectionViewCell" hasInstanceMethod:@"accessibilitytLockupView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.UpdatesLockupCollectionViewCell" hasInstanceMethod:@"accessibilityExpandableTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.UpdatesLockupCollectionViewCell" hasInstanceMethod:@"accessibilityVersionMetadata" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomContent
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(UpdatesLockupCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityExpandableTextView"];
  if ([v4 length])
  {
    v5 = [MEMORY[0x29EDB8058] customContentWithLabel:&stru_2A20EDBF0 value:v4];
    [array axSafelyAddObject:v5];
  }

  return array;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UpdatesLockupCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UpdatesLockupCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(UpdatesLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilitytLockupView"];
  _accessibilitySupplementaryFooterViews = [v4 _accessibilitySupplementaryFooterViews];

  if ([_accessibilitySupplementaryFooterViews count])
  {
    v6 = [_accessibilitySupplementaryFooterViews objectAtIndexedSubscript:0];
    [array axSafelyAddObject:v6];
  }

  v7 = [(UpdatesLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityExpandableTextView"];
  [array axSafelyAddObject:v7];

  return array;
}

@end