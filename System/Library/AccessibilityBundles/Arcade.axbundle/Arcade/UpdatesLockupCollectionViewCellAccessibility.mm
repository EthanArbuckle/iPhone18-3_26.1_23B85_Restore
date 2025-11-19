@interface UpdatesLockupCollectionViewCellAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomContent;
- (unint64_t)accessibilityTraits;
@end

@implementation UpdatesLockupCollectionViewCellAccessibility

- (id)accessibilityCustomContent
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(UpdatesLockupCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityExpandableTextView"];
  if ([v4 length])
  {
    v5 = [MEMORY[0x29EDB8058] customContentWithLabel:&stru_2A2106700 value:v4];
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