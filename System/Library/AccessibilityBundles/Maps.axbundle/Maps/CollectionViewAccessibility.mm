@interface CollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axNonHiddenViewForKey:(id)key;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CollectionView" hasInstanceMethod:@"editing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CollectionView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CollectionView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CollectionView" hasInstanceVariable:@"_newCollectionLabel" withType:"MapsThemeLabel"];
  [validationsCopy validateClass:@"CollectionView" hasInstanceVariable:@"_imageView" withType:"CollectionImageView"];
  [validationsCopy validateClass:@"CollectionImageView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CollectionView" hasInstanceVariable:@"_titleTextField" withType:"UITextField"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CollectionViewAccessibility;
  [(CollectionViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CollectionViewAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = [v3 safeValueForKey:@"_editButton"];
  v5 = AXMapsLocString(@"EDIT_IMAGE");
  [v4 setAccessibilityLabel:v5];
}

- (id)_axNonHiddenViewForKey:(id)key
{
  v3 = [(CollectionViewAccessibility *)self safeUIViewForKey:key];
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_titleLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v6 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_subtitleLabel"];
  v7 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_newCollectionLabel"];
  v8 = [v3 axArrayByIgnoringNilElementsWithCount:{3, accessibilityLabel, v6, v7}];
  v9 = MEMORY[0x29C2DCCF0]();

  return v9;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_imageView"];
  v5 = [v4 safeValueForKey:@"_editButton"];
  v6 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_titleLabel"];
  v7 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_titleTextField"];
  v8 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_subtitleLabel"];
  v9 = [(CollectionViewAccessibility *)self _axNonHiddenViewForKey:@"_newCollectionLabel"];
  v10 = [v3 axArrayByIgnoringNilElementsWithCount:{4, v5, v6, v7, v8, v9}];

  return v10;
}

@end