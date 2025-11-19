@interface OBBulletedListItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation OBBulletedListItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBBulletedListItem" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBBulletedListItem" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBBulletedListItem" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBBulletedListItem" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(OBBulletedListItemAccessibility *)self safeUIViewForKey:@"imageView"];
  v4 = [v3 safeValueForKey:@"image"];
  v5 = [v4 accessibilityUserDefinedLabel];

  v8 = [(OBBulletedListItemAccessibility *)self _accessibilityStringForLabelKeyValues:@"titleLabel, descriptionLabel"];
  v6 = __AXStringForVariables();

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(OBBulletedListItemAccessibility *)self safeUIViewForKey:@"accessoryButton"];
  if ([v2 _accessibilityViewIsVisible])
  {
    v6[0] = v2;
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

@end