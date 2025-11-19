@interface UpdatesLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomContent;
- (unint64_t)accessibilityTraits;
@end

@implementation UpdatesLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.UpdatesLockupCollectionViewCell" hasInstanceMethod:@"accessibilitytLockupView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.UpdatesLockupCollectionViewCell" hasInstanceMethod:@"accessibilityExpandableTextView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.UpdatesLockupCollectionViewCell" hasInstanceMethod:@"accessibilityVersionMetadata" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomContent
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(UpdatesLockupCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityExpandableTextView"];
  if ([v4 length])
  {
    v5 = [MEMORY[0x29EDB8058] customContentWithLabel:&stru_2A20EDBF0 value:v4];
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UpdatesLockupCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UpdatesLockupCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(UpdatesLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilitytLockupView"];
  v5 = [v4 _accessibilitySupplementaryFooterViews];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [v3 axSafelyAddObject:v6];
  }

  v7 = [(UpdatesLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityExpandableTextView"];
  [v3 axSafelyAddObject:v7];

  return v3;
}

@end