@interface UITabBarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityElementHasImage;
- (BOOL)_axIsSelected:(void *)selected;
- (BOOL)isAccessibilityElement;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_currentItemState;
- (unint64_t)accessibilityTraits;
@end

@implementation UITabBarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UITabBarButton";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UITabBarButton" hasInstanceVariable:@"_imageView" withType:"UITabBarSwappableImageView"];
  v3 = @"UIImageView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UITabBarSwappableImageView" isKindOfClass:v3];
  [location[0] validateClass:v4 hasInstanceMethod:@"_currentItemState" withFullSignature:{"q", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UITabBarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(UITabBarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (BOOL)_accessibilityElementHasImage
{
  v2 = [(UITabBarButtonAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v18[1] = a2;
  accessibilityUserDefinedValue = [(UITabBarButtonAccessibility *)self accessibilityUserDefinedValue];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedValue).n128_u64[0];
  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(UITabBarButtonAccessibility *)selfCopy accessibilityUserDefinedValue];
  }

  else
  {
    v11 = [(UITabBarButtonAccessibility *)selfCopy safeValueForKey:@"_badge", v2];
    accessibilityLabel = [v11 accessibilityLabel];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v18[0] = [accessibilityLabel stringByTrimmingCharactersInSet:?];
    MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet);
    MEMORY[0x29EDC9740](accessibilityLabel);
    if ([v18[0] length])
    {
      v17 = objc_opt_new();
      [v17 setUsesGroupingSeparator:1];
      if ([v18[0] isAXAttributedString])
      {
        string = [v18[0] string];
        v4 = v18[0];
        v18[0] = string;
        MEMORY[0x29EDC9740](v4);
      }

      location = [v17 numberFromString:v18[0]];
      if (location)
      {
        intValue = [location intValue];
        v7 = MEMORY[0x29EDBA0F8];
        v8 = accessibilityLocalizedString(@"badge.count");
        accessibilityUserDefinedValue2 = [v7 localizedStringWithFormat:intValue];
        MEMORY[0x29EDC9740](v8);
      }

      else
      {
        accessibilityUserDefinedValue2 = MEMORY[0x29EDC9748](v18[0]);
      }

      v14 = 1;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v13.receiver = selfCopy;
      v13.super_class = UITabBarButtonAccessibility;
      accessibilityUserDefinedValue2 = [(UITabBarButtonAccessibility *)&v13 accessibilityValue];
      v14 = 1;
    }

    objc_storeStrong(v18, 0);
  }

  v5 = accessibilityUserDefinedValue2;

  return v5;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v45[1] = a2;
  v44.receiver = self;
  v44.super_class = UITabBarButtonAccessibility;
  v45[0] = [(UITabBarButtonAccessibility *)&v44 accessibilityLabel];
  if ([v45[0] length])
  {
    v47 = MEMORY[0x29EDC9748](v45[0]);
    v43 = 1;
  }

  else
  {
    v40 = [(UITabBarButtonAccessibility *)selfCopy safeValueForKey:@"_label"];
    accessibilityLabel = [v40 accessibilityLabel];
    v3 = v45[0];
    v45[0] = accessibilityLabel;
    MEMORY[0x29EDC9740](v3);
    *&v4 = MEMORY[0x29EDC9740](v40).n128_u64[0];
    if (![v45[0] length])
    {
      location = [(UITabBarButtonAccessibility *)selfCopy accessibilityIdentification];
      if (location)
      {
        integerValue = [location integerValue];
        if (integerValue)
        {
          switch(integerValue)
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
      v38 = [(UITabBarButtonAccessibility *)selfCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
      v41 = [v38 safeValueForKey:@"delegate"];
      *&v29 = MEMORY[0x29EDC9740](v38).n128_u64[0];
      v30 = [v41 _accessibililtyLabelForTabBarButton:{selfCopy, v29}];
      v31 = v45[0];
      v45[0] = v30;
      MEMORY[0x29EDC9740](v31);
      objc_storeStrong(&v41, 0);
    }

    if (![v45[0] length])
    {
      v37 = [(UITabBarButtonAccessibility *)selfCopy safeValueForKey:@"_imageView"];
      v36 = [v37 safeValueForKey:@"image"];
      accessibilityLabel2 = [v36 accessibilityLabel];
      v33 = v45[0];
      v45[0] = accessibilityLabel2;
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
  selfCopy = self;
  v11[1] = a2;
  v10.receiver = self;
  v10.super_class = UITabBarButtonAccessibility;
  v11[0] = [(UITabBarButtonAccessibility *)&v10 accessibilityHint];
  if ([v11[0] length])
  {
    accessibilityHint = MEMORY[0x29EDC9748](v11[0]);
    v9 = 1;
  }

  else
  {
    location = [(UITabBarButtonAccessibility *)selfCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
    v6 = 0;
    LOBYTE(v4) = 0;
    if ([location isCustomizing])
    {
      superview = [(UITabBarButtonAccessibility *)selfCopy superview];
      v6 = 1;
      NSClassFromString(&cfstr_Uitabbarcustom.isa);
      v4 = objc_opt_isKindOfClass() ^ 1;
    }

    if (v6)
    {
      MEMORY[0x29EDC9740](superview);
    }

    if (v4)
    {
      accessibilityHint = accessibilityLocalizedString(@"non.editing.tab.bar.item.hint");
    }

    else
    {
      v5.receiver = selfCopy;
      v5.super_class = UITabBarButtonAccessibility;
      accessibilityHint = [(UITabBarButtonAccessibility *)&v5 accessibilityHint];
    }

    v9 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v11, 0);
  v2 = accessibilityHint;

  return v2;
}

- (BOOL)_axIsSelected:(void *)selected
{
  selectedCopy = selected;
  location = 0;
  objc_storeStrong(&location, a2);
  if (selectedCopy)
  {
    v4 = [location safeValueForKey:@"selectedItem"];
    v2 = [v4 safeValueForKey:@"_view"];
    v7 = v2 == selectedCopy;
    MEMORY[0x29EDC9740](v2);
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&location, 0);
  return v7;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6 = *MEMORY[0x29EDC7F70];
  v4 = [(UITabBarButtonAccessibility *)self safeValueForKey:@"superview"];
  location = MEMORY[0x29EDC9748](v4);
  MEMORY[0x29EDC9740](v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(UITabBarButtonAccessibility *)selfCopy _axIsSelected:?])
    {
      v6 |= *MEMORY[0x29EDC7FC0];
    }

    else if ([location isCustomizing])
    {
      v6 |= *MEMORY[0x29EDC7510];
    }
  }

  else
  {
    NSClassFromString(&cfstr_Uitabbarcustom.isa);
    if (objc_opt_isKindOfClass())
    {
      v6 |= *MEMORY[0x29EDC7510];
    }
  }

  v6 |= *MEMORY[0x29EDC7588];
  v3 = v6;
  objc_storeStrong(&location, 0);
  return v3;
}

- (_NSRange)accessibilityRowRange
{
  selfCopy = self;
  v28[1] = a2;
  v28[0] = [(UITabBarButtonAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v21 = 0;
  v22 = &v21;
  v23 = 0x10000000;
  v24 = 48;
  v25 = &unk_29C6A1FE6;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v31 = 0;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = 0;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v7 = v28[0];
  v14 = MEMORY[0x29EDCA5F8];
  v15 = -1073741824;
  v16 = 0;
  v17 = __52__UITabBarButtonAccessibility_accessibilityRowRange__block_invoke;
  v18 = &unk_29F30D240;
  v19 = MEMORY[0x29EDC9748](selfCopy);
  v20 = [v7 _accessibilityFindSubviewDescendantsPassingTest:&v14];
  v2 = [(UITabBarButtonAccessibility *)selfCopy _accessibilityGeometrySortedElements:v20];
  v3 = v20;
  v20 = v2;
  MEMORY[0x29EDC9740](v3);
  v6 = v20;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__UITabBarButtonAccessibility_accessibilityRowRange__block_invoke_2;
  v12 = &unk_29F30D828;
  v13[0] = MEMORY[0x29EDC9748](selfCopy);
  v13[1] = &v21;
  [v6 enumerateObjectsUsingBlock:&v8];
  v30 = *(v22 + 2);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v21, 8);
  objc_storeStrong(v28, 0);
  v5 = *(&v30 + 1);
  v4 = v30;
  result.length = v5;
  result.location = v4;
  return result;
}

uint64_t __52__UITabBarButtonAccessibility_accessibilityRowRange__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

void __52__UITabBarButtonAccessibility_accessibilityRowRange__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 40) + 8) + 40);
  }

  NSClassFromString(&cfstr_Uitabbarbutton.isa);
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 40) + 8) + 40);
  }

  objc_storeStrong(location, 0);
}

- (int64_t)_currentItemState
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UITabBarButtonAccessibility;
  _currentItemState = [(UITabBarButtonAccessibility *)&v3 _currentItemState];
  if (([(UITabBarButtonAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0 && _currentItemState == 4 && ([(UITabBarButtonAccessibility *)selfCopy safeBoolForKey:@"_isSelected"]& 1) != 0)
  {
    return 2;
  }

  return _currentItemState;
}

@end