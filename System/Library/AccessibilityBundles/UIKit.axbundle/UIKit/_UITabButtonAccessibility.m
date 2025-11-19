@interface _UITabButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityElementHasImage;
- (BOOL)isAccessibilityElement;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UITabButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UITabBarCustomizeView"];
  [location[0] validateClass:@"_UIVisualEffectContentView"];
  v3 = @"_UITabButton";
  [location[0] validateClass:?];
  [location[0] validateClass:@"_UITabButton" isKindOfClass:@"UIControl"];
  [location[0] validateClass:@"_UITabButton" hasSwiftField:@"imageView" withSwiftType:"UIImageView"];
  [location[0] validateClass:@"_UITabButton" hasSwiftField:@"titleLabel" withSwiftType:"Label"];
  [location[0] validateClass:@"_UITabButton" hasSwiftField:@"badgeView" withSwiftType:"Optional<_UIBarBadgeView>"];
  [location[0] validateClass:@"_UITabButton" hasInstanceMethod:@"accessibilityShouldUseSelectedColorWhileFocused" withFullSignature:{"B", 0}];
  [location[0] validateClass:v3 hasSwiftField:@"item" withSwiftType:"Optional<UITabBarItem>"];
  [location[0] validateClass:@"UITabBar" hasInstanceVariable:@"_visualProvider" withType:"_UITabBarVisualProvider"];
  v4 = @"UIKit._UITabBarVisualProvider_Floating";
  [location[0] validateClass:? hasSwiftField:? withSwiftType:?];
  [location[0] validateClass:v4];
  [location[0] validateClass:v4 hasSwiftField:@"suppressAuxiliarySearch" withSwiftType:"Bool"];
  [location[0] validateClass:v4 hasSwiftField:@"tabBarButtons" withSwiftType:"Array<_UITabButton>"];
  [location[0] validateClass:v4 hasSwiftField:@"auxiliaryView" withSwiftType:"Optional<_UITabBarAuxiliaryView>"];
  objc_storeStrong(v6, obj);
}

- (BOOL)isAccessibilityElement
{
  v5 = [(_UITabButtonAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 1;
  }

  v4 = [(_UITabButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (BOOL)_accessibilityElementHasImage
{
  v2 = [(_UITabButtonAccessibility *)self safeSwiftValueForKey:@"imageView"];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (id)accessibilityValue
{
  v19 = self;
  v18[1] = a2;
  v12 = [(_UITabButtonAccessibility *)self accessibilityUserDefinedValue];
  *&v2 = MEMORY[0x29EDC9740](v12).n128_u64[0];
  if (v12)
  {
    v20 = [(_UITabButtonAccessibility *)v19 accessibilityUserDefinedValue];
  }

  else
  {
    v11 = [(_UITabButtonAccessibility *)v19 safeSwiftValueForKey:@"badgeView", v2];
    v10 = [v11 accessibilityLabel];
    v9 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v18[0] = [v10 stringByTrimmingCharactersInSet:?];
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v10);
    if ([v18[0] length])
    {
      v17 = objc_opt_new();
      [v17 setUsesGroupingSeparator:1];
      if ([v18[0] isAXAttributedString])
      {
        v3 = [v18[0] string];
        v4 = v18[0];
        v18[0] = v3;
        MEMORY[0x29EDC9740](v4);
      }

      location = [v17 numberFromString:v18[0]];
      if (location)
      {
        v15 = [location intValue];
        v7 = MEMORY[0x29EDBA0F8];
        v8 = accessibilityLocalizedString(@"badge.count");
        v20 = [v7 localizedStringWithFormat:v15];
        MEMORY[0x29EDC9740](v8);
      }

      else
      {
        v20 = MEMORY[0x29EDC9748](v18[0]);
      }

      v14 = 1;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v13.receiver = v19;
      v13.super_class = _UITabButtonAccessibility;
      v20 = [(_UITabButtonAccessibility *)&v13 accessibilityValue];
      v14 = 1;
    }

    objc_storeStrong(v18, 0);
  }

  v5 = v20;

  return v5;
}

- (id)accessibilityLabel
{
  v46 = self;
  v45[1] = a2;
  v44.receiver = self;
  v44.super_class = _UITabButtonAccessibility;
  v45[0] = [(_UITabButtonAccessibility *)&v44 accessibilityLabel];
  if ([v45[0] length])
  {
    v47 = MEMORY[0x29EDC9748](v45[0]);
    v43 = 1;
  }

  else
  {
    v40 = [(_UITabButtonAccessibility *)v46 safeSwiftValueForKey:@"titleLabel"];
    v2 = [v40 accessibilityLabel];
    v3 = v45[0];
    v45[0] = v2;
    MEMORY[0x29EDC9740](v3);
    *&v4 = MEMORY[0x29EDC9740](v40).n128_u64[0];
    if (![v45[0] length])
    {
      location = [(_UITabButtonAccessibility *)v46 accessibilityIdentification];
      if (location)
      {
        v39 = [location integerValue];
        if (v39)
        {
          switch(v39)
          {
            case 1:
              v7 = accessibilityLocalizedString(@"favorites.button");
              v8 = v45[0];
              v45[0] = v7;
              MEMORY[0x29EDC9740](v8);
              break;
            case 2:
              v9 = accessibilityLocalizedString(@"featured.button");
              v10 = v45[0];
              v45[0] = v9;
              MEMORY[0x29EDC9740](v10);
              break;
            case 3:
              v11 = accessibilityLocalizedString(@"top.rated.button");
              v12 = v45[0];
              v45[0] = v11;
              MEMORY[0x29EDC9740](v12);
              break;
            case 4:
              v13 = accessibilityLocalizedString(@"recents.button");
              v14 = v45[0];
              v45[0] = v13;
              MEMORY[0x29EDC9740](v14);
              break;
            case 5:
              v15 = accessibilityLocalizedString(@"contacts.button");
              v16 = v45[0];
              v45[0] = v15;
              MEMORY[0x29EDC9740](v16);
              break;
            case 6:
              v17 = accessibilityLocalizedString(@"history.button");
              v18 = v45[0];
              v45[0] = v17;
              MEMORY[0x29EDC9740](v18);
              break;
            case 7:
              v19 = accessibilityLocalizedString(@"bookmarks.button");
              v20 = v45[0];
              v45[0] = v19;
              MEMORY[0x29EDC9740](v20);
              break;
            case 8:
              v21 = accessibilityLocalizedString(@"search.button");
              v22 = v45[0];
              v45[0] = v21;
              MEMORY[0x29EDC9740](v22);
              break;
            case 9:
              v23 = accessibilityLocalizedString(@"downloads.button");
              v24 = v45[0];
              v45[0] = v23;
              MEMORY[0x29EDC9740](v24);
              break;
            case 10:
              v25 = accessibilityLocalizedString(@"most.recent.button");
              v26 = v45[0];
              v45[0] = v25;
              MEMORY[0x29EDC9740](v26);
              break;
            case 11:
              v27 = accessibilityLocalizedString(@"most.viewed.button");
              v28 = v45[0];
              v45[0] = v27;
              MEMORY[0x29EDC9740](v28);
              break;
          }
        }

        else
        {
          v5 = accessibilityLocalizedString(@"more.button");
          v6 = v45[0];
          v45[0] = v5;
          MEMORY[0x29EDC9740](v6);
        }
      }

      objc_storeStrong(&location, 0);
    }

    if (![v45[0] length])
    {
      v38 = [(_UITabButtonAccessibility *)v46 _accessibilityAncestorIsKindOf:objc_opt_class()];
      v41 = [v38 delegate];
      *&v29 = MEMORY[0x29EDC9740](v38).n128_u64[0];
      v30 = [v41 _accessibililtyLabelForTabBarButton:{v46, v29}];
      v31 = v45[0];
      v45[0] = v30;
      MEMORY[0x29EDC9740](v31);
      objc_storeStrong(&v41, 0);
    }

    if (![v45[0] length])
    {
      v37 = [(_UITabButtonAccessibility *)v46 safeSwiftValueForKey:@"imageView"];
      v36 = [v37 safeValueForKey:@"image"];
      v32 = [v36 accessibilityLabel];
      v33 = v45[0];
      v45[0] = v32;
      MEMORY[0x29EDC9740](v33);
      MEMORY[0x29EDC9740](v36);
      MEMORY[0x29EDC9740](v37);
    }

    v47 = MEMORY[0x29EDC9748](v45[0]);
    v43 = 1;
  }

  objc_storeStrong(v45, 0);
  v34 = v47;

  return v34;
}

- (id)accessibilityHint
{
  v12 = self;
  v11[1] = a2;
  v10.receiver = self;
  v10.super_class = _UITabButtonAccessibility;
  v11[0] = [(_UITabButtonAccessibility *)&v10 accessibilityHint];
  if ([v11[0] length])
  {
    v13 = MEMORY[0x29EDC9748](v11[0]);
    v9 = 1;
  }

  else
  {
    location = [(_UITabButtonAccessibility *)v12 _accessibilityAncestorIsKindOf:objc_opt_class()];
    v6 = 0;
    LOBYTE(v4) = 0;
    if ([location isCustomizing])
    {
      v7 = [(_UITabButtonAccessibility *)v12 superview];
      v6 = 1;
      NSClassFromString(&cfstr_Uitabbarcustom.isa);
      v4 = objc_opt_isKindOfClass() ^ 1;
    }

    if (v6)
    {
      MEMORY[0x29EDC9740](v7);
    }

    if (v4)
    {
      v13 = accessibilityLocalizedString(@"non.editing.tab.bar.item.hint");
    }

    else
    {
      v5.receiver = v12;
      v5.super_class = _UITabButtonAccessibility;
      v13 = [(_UITabButtonAccessibility *)&v5 accessibilityHint];
    }

    v9 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v11, 0);
  v2 = v13;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v12 = self;
  v11 = a2;
  v10 = *MEMORY[0x29EDC7F70];
  v9 = [(_UITabButtonAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_30 startWithSelf:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v6 = MEMORY[0x29EDC9748](v7);
    objc_storeStrong(&v7, 0);
    v5 = [v6 isSelected];
    *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (v5)
    {
      v10 |= *MEMORY[0x29EDC7FC0];
    }

    else if ([v9 isCustomizing])
    {
      v10 |= *MEMORY[0x29EDC7510];
    }
  }

  else
  {
    NSClassFromString(&cfstr_Uitabbarcustom.isa);
    if (objc_opt_isKindOfClass())
    {
      v10 |= *MEMORY[0x29EDC7510];
    }
  }

  v10 |= *MEMORY[0x29EDC7588];
  v4 = v10;
  objc_storeStrong(&v9, 0);
  return v4;
}

- (_NSRange)accessibilityRowRange
{
  v52 = self;
  v51[1] = a2;
  v50 = 0;
  objc_opt_class();
  v13 = [(_UITabButtonAccessibility *)v52 safeValueForKey:@"tabBar"];
  v49 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v13);
  v48 = MEMORY[0x29EDC9748](v49);
  objc_storeStrong(&v49, 0);
  v51[0] = v48;
  v41 = 0;
  v42 = &v41;
  v43 = 0x10000000;
  v44 = 48;
  v45 = &unk_29C6A1FE6;
  v55 = 0x7FFFFFFFFFFFFFFFLL;
  v54 = 0;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = 0;
  v46 = 0x7FFFFFFFFFFFFFFFLL;
  v47 = 0;
  v40 = [v48 safeValueForKey:@"_visualProvider"];
  NSClassFromString(&cfstr_UikitUitabbarv.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = v51[0];
    v20 = MEMORY[0x29EDCA5F8];
    v21 = -1073741824;
    v22 = 0;
    v23 = __50___UITabButtonAccessibility_accessibilityRowRange__block_invoke;
    v24 = &unk_29F30D240;
    v25 = MEMORY[0x29EDC9748](v52);
    v26 = [v8 _accessibilityFindSubviewDescendantsPassingTest:&v20];
    v3 = [(_UITabButtonAccessibility *)v52 _accessibilityGeometrySortedElements:v26];
    v4 = v26;
    v26 = v3;
    MEMORY[0x29EDC9740](v4);
    v7 = v26;
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __50___UITabButtonAccessibility_accessibilityRowRange__block_invoke_2;
    v18 = &unk_29F30D828;
    v19[0] = MEMORY[0x29EDC9748](v52);
    v19[1] = &v41;
    [v7 enumerateObjectsUsingBlock:&v14];
    objc_storeStrong(v19, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
LABEL_17:
    v53 = *(v42 + 2);
    v37 = 1;
    goto LABEL_18;
  }

  v39 = [v40 safeSwiftValueForKey:@"collapseButton"];
  if (v52 == v39)
  {
    v38.receiver = v52;
    v38.super_class = _UITabButtonAccessibility;
    *&v12 = [(_UITabButtonAccessibility *)&v38 accessibilityRowRange];
    *(&v12 + 1) = v2;
    v53 = v12;
    v37 = 1;
  }

  else
  {
    v34 = 0;
    v11 = 0;
    if (([v40 safeSwiftBoolForKey:@"suppressAuxiliarySearch"] & 1) == 0)
    {
      v35 = [v40 safeSwiftValueForKey:@"auxiliaryView"];
      v34 = 1;
      v11 = v35 != 0;
    }

    if (v34)
    {
      MEMORY[0x29EDC9740](v35);
    }

    v36 = v11;
    v33 = [v40 safeSwiftArrayForKey:@"tabBarButtons"];
    v31 = 0;
    objc_opt_class();
    v10 = [(_UITabButtonAccessibility *)v52 safeSwiftValueForKey:@"item"];
    v30 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v10);
    v29 = MEMORY[0x29EDC9748](v30);
    objc_storeStrong(&v30, 0);
    v32 = v29;
    if (v36)
    {
      v9 = [v33 count] + 1;
    }

    else
    {
      v9 = [v33 count];
    }

    v28 = v9;
    v27 = [v33 indexOfObject:v52];
    if ([v32 systemItem] == 8)
    {
      v27 = [v33 count];
    }

    v42[4] = v27;
    v42[5] = v28;
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    v37 = 0;
  }

  objc_storeStrong(&v39, 0);
  if (!v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  objc_storeStrong(&v40, 0);
  _Block_object_dispose(&v41, 8);
  objc_storeStrong(v51, 0);
  v6 = *(&v53 + 1);
  v5 = v53;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)accessibilityPath
{
  v20 = self;
  v19 = a2;
  [(_UITabButtonAccessibility *)self accessibilityFrame];
  v17 = v23;
  v18 = CGRectIntegral(v23);
  v16 = MEMORY[0x29ED3E4C0](&__block_literal_global_431);
  location = [(_UITabButtonAccessibility *)v20 _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uivisualeffect_1.isa)];
  if (location)
  {
    [location accessibilityFrame];
    rect.origin.x = v2;
    rect.origin.y = v3;
    rect.size.width = v4;
    rect.size.height = v5;
    v13 = (*(v16 + 2))(v18.origin.x, v18.origin.y, v18.size.width, v18.size.height, v2, v3, v4, v5);
    v12 = CGRectIntegral(rect);
    if ((v13 & 5) != 0)
    {
      v24 = v18;
      v18.origin.x = v12.origin.x;
      v18.size.width = CGRectGetMaxX(v24) - v12.origin.x;
    }

    if ((v13 & 0xA) != 0)
    {
      v18.size.width = CGRectGetMaxX(v12) - v18.origin.x;
    }

    v10 = [location layer];
    [v10 cornerRadius];
    MEMORY[0x29EDC9740](v10);
    v11 = MEMORY[0x29EDC7948];
    CGSizeMake_1();
    v21 = [v11 bezierPathWithRoundedRect:v13 byRoundingCorners:v18.origin.x cornerRadii:{v18.origin.y, v18.size.width, v18.size.height, v6, v7}];
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v16, 0);
  v8 = v21;

  return v8;
}

@end