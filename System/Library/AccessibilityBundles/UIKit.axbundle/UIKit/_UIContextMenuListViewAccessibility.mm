@interface _UIContextMenuListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_configureCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path forElement:(id)element section:(id)section size:(int64_t)size;
@end

@implementation _UIContextMenuListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  [location[0] validateClass:@"_UIContextMenuListView" hasInstanceMethod:@"_configureCell: inCollectionView: atIndexPath: forElement: section: size:" withFullSignature:{"v", "@", "@", "@", "@", "@", "q", 0}];
  [location[0] validateClass:@"_UIContextMenuCell" hasInstanceMethod:@"actionView" withFullSignature:{v3, 0}];
  objc_storeStrong(v5, v4);
}

- (void)_configureCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path forElement:(id)element section:(id)section size:(int64_t)size
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v35 = 0;
  objc_storeStrong(&v35, view);
  v34 = 0;
  objc_storeStrong(&v34, path);
  v33 = 0;
  objc_storeStrong(&v33, element);
  v32 = 0;
  objc_storeStrong(&v32, section);
  sizeCopy = size;
  v30.receiver = selfCopy;
  v30.super_class = _UIContextMenuListViewAccessibility;
  [(_UIContextMenuListViewAccessibility *)&v30 _configureCell:location[0] inCollectionView:v35 atIndexPath:v34 forElement:v33 section:v32 size:size];
  v28 = 0;
  objc_opt_class();
  v25 = [location[0] safeValueForKey:@"actionView"];
  v27 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v25);
  v26 = MEMORY[0x29EDC9748](v27);
  objc_storeStrong(&v27, 0);
  v29 = v26;
  accessibilityLabel = [v33 accessibilityLabel];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredLabelFromMenuElement:accessibilityLabel];
  *&v8 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
  accessibilityValue = [v33 accessibilityValue];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredValueFromMenuElement:accessibilityValue];
  *&v9 = MEMORY[0x29EDC9740](accessibilityValue).n128_u64[0];
  accessibilityHint = [v33 accessibilityHint];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredHintFromMenuElement:accessibilityHint];
  *&v10 = MEMORY[0x29EDC9740](accessibilityHint).n128_u64[0];
  accessibilityIdentifier = [v33 accessibilityIdentifier];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredIdentifierFromMenuElement:accessibilityIdentifier];
  *&v11 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v33, "accessibilityTraits", v11)}];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredTraitsFromMenuElement:v18];
  *&v12 = MEMORY[0x29EDC9740](v18).n128_u64[0];
  accessibilityUserInputLabels = [v33 accessibilityUserInputLabels];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredUserInputLabelsFromMenuElement:accessibilityUserInputLabels];
  *&v13 = MEMORY[0x29EDC9740](accessibilityUserInputLabels).n128_u64[0];
  [v33 accessibilityElementsHidden];
  [_UIContextMenuCellContentViewAccessibility _accessibilitySetStoredElementsHidden:v29];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

@end