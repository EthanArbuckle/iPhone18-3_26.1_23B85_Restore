@interface _UIContextMenuListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_configureCell:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 forElement:(id)a6 section:(id)a7 size:(int64_t)a8;
@end

@implementation _UIContextMenuListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@";
  [location[0] validateClass:@"_UIContextMenuListView" hasInstanceMethod:@"_configureCell: inCollectionView: atIndexPath: forElement: section: size:" withFullSignature:{"v", "@", "@", "@", "@", "@", "q", 0}];
  [location[0] validateClass:@"_UIContextMenuCell" hasInstanceMethod:@"actionView" withFullSignature:{v3, 0}];
  objc_storeStrong(v5, v4);
}

- (void)_configureCell:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 forElement:(id)a6 section:(id)a7 size:(int64_t)a8
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v32 = 0;
  objc_storeStrong(&v32, a7);
  v31 = a8;
  v30.receiver = v37;
  v30.super_class = _UIContextMenuListViewAccessibility;
  [(_UIContextMenuListViewAccessibility *)&v30 _configureCell:location[0] inCollectionView:v35 atIndexPath:v34 forElement:v33 section:v32 size:a8];
  v28 = 0;
  objc_opt_class();
  v25 = [location[0] safeValueForKey:@"actionView"];
  v27 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v25);
  v26 = MEMORY[0x29EDC9748](v27);
  objc_storeStrong(&v27, 0);
  v29 = v26;
  v14 = [v33 accessibilityLabel];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredLabelFromMenuElement:v14];
  *&v8 = MEMORY[0x29EDC9740](v14).n128_u64[0];
  v15 = [v33 accessibilityValue];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredValueFromMenuElement:v15];
  *&v9 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  v16 = [v33 accessibilityHint];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredHintFromMenuElement:v16];
  *&v10 = MEMORY[0x29EDC9740](v16).n128_u64[0];
  v17 = [v33 accessibilityIdentifier];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredIdentifierFromMenuElement:v17];
  *&v11 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v33, "accessibilityTraits", v11)}];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredTraitsFromMenuElement:v18];
  *&v12 = MEMORY[0x29EDC9740](v18).n128_u64[0];
  v19 = [v33 accessibilityUserInputLabels];
  [(_UIContextMenuCellContentViewAccessibility *)v29 _accessibilitySetStoredUserInputLabelsFromMenuElement:v19];
  *&v13 = MEMORY[0x29EDC9740](v19).n128_u64[0];
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