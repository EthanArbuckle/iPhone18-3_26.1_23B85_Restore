@interface CapsuleTabGroupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsInteractionEnabled;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityAllTabGroups;
- (id)_accessibilityCapsuleCollectionView;
- (id)accessibilityLabel;
- (int64_t)_accessibilityIndexOfSelfIn:(id)in;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CapsuleTabGroupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFCapsuleTabGroupView" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"SFCapsuleTabGroupView" hasSwiftField:@"isSelected" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"MobileSafari.ScrollingCapsuleCollectionView" hasInstanceMethod:@"accessibilityTapItemAtIndex:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"SFScrollingCapsuleCollectionViewLayout" hasSwiftField:@"content" withSwiftType:"Content"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.ScrollingCapsuleCollectionView[class].Content" hasSwiftField:@"items" withSwiftType:"Array<Item>"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.ScrollingCapsuleCollectionView[class].Item" hasSwiftField:@"isInteractivelyInserted" withSwiftType:"Bool"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.ScrollingCapsuleCollectionView[class].Item" hasSwiftField:@"id" withSwiftType:"UUID"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CapsuleTabGroupViewAccessibility;
  [(CapsuleTabGroupViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CapsuleTabGroupViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (BOOL)accessibilityActivate
{
  _axIsInteractionEnabled = [(CapsuleTabGroupViewAccessibility *)self _axIsInteractionEnabled];
  if (_axIsInteractionEnabled)
  {
    _accessibilityAllTabGroups = [(CapsuleTabGroupViewAccessibility *)self _accessibilityAllTabGroups];
    [(CapsuleTabGroupViewAccessibility *)self _accessibilityIndexOfSelfIn:_accessibilityAllTabGroups];
    _accessibilityCapsuleCollectionView = [(CapsuleTabGroupViewAccessibility *)self _accessibilityCapsuleCollectionView];
    v5 = _accessibilityCapsuleCollectionView;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  }

  return _axIsInteractionEnabled;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = CapsuleTabGroupViewAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(CapsuleTabGroupViewAccessibility *)&v10 accessibilityTraits];
  v4 = [(CapsuleTabGroupViewAccessibility *)self safeSwiftBoolForKey:@"isSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v3 | v5;
  _axIsInteractionEnabled = [(CapsuleTabGroupViewAccessibility *)self _axIsInteractionEnabled];
  v8 = *MEMORY[0x29EDC7FA8];
  if (_axIsInteractionEnabled)
  {
    v8 = 0;
  }

  return v6 | v8;
}

- (id)accessibilityLabel
{
  v2 = [(CapsuleTabGroupViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v3 = [v2 safeValueForKey:@"text"];
  v6 = accessibilityMobileSafariLocalizedString(@"tab.group");
  v4 = __UIAXStringForVariables();

  return v4;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (![(CapsuleTabGroupViewAccessibility *)self _axIsInteractionEnabled])
  {
    return 0;
  }

  _accessibilityCapsuleCollectionView = [(CapsuleTabGroupViewAccessibility *)self _accessibilityCapsuleCollectionView];
  _accessibilityAllTabGroups = [(CapsuleTabGroupViewAccessibility *)self _accessibilityAllTabGroups];
  v7 = [(CapsuleTabGroupViewAccessibility *)self _accessibilityIndexOfSelfIn:_accessibilityAllTabGroups];
  v8 = [_accessibilityCapsuleCollectionView safeSwiftValueForKey:@"$__lazy_storage_$_scrollView"];
  if (v8)
  {
    v9 = 0;
    if ([(CapsuleTabGroupViewAccessibility *)self safeSwiftBoolForKey:@"isSelected"]&& v7 != -1)
    {
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x3032000000;
      v18[3] = __Block_byref_object_copy__0;
      v18[4] = __Block_byref_object_dispose__0;
      v10 = [_accessibilityAllTabGroups objectAtIndexedSubscript:v7];
      v11 = [v10 safeSwiftValueForKey:@"id"];
      v19 = [v11 safeStringForKey:@"UUIDString"];

      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 3221225472;
      v17[2] = __56__CapsuleTabGroupViewAccessibility_accessibilityScroll___block_invoke;
      v17[3] = &unk_29F2D6830;
      v17[4] = v18;
      v12 = [_accessibilityAllTabGroups indexOfObjectPassingTest:v17];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL || (scroll - 1) > 5 || (v13 = v12 + qword_29BFDEBD8[scroll - 1], v13 < 0) || v13 >= [_accessibilityAllTabGroups count])
      {
        v9 = 0;
      }

      else
      {
        v16 = _accessibilityCapsuleCollectionView;
        AXPerformSafeBlock();
        v15 = v16;
        AXPerformBlockOnMainThreadAfterDelay();

        v9 = 1;
      }

      _Block_object_dispose(v18, 8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __56__CapsuleTabGroupViewAccessibility_accessibilityScroll___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safeSwiftValueForKey:@"id"];
  v4 = [v3 safeStringForKey:@"UUIDString"];

  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];
  return v5;
}

void __56__CapsuleTabGroupViewAccessibility_accessibilityScroll___block_invoke_3(uint64_t a1)
{
  v10 = [*(a1 + 32) _accessibilityAccessibleDescendants];
  v2 = [v10 indexOfObject:*(a1 + 40)];
  if ([v10 count] < 2)
  {
    if ([v10 count] != 1)
    {
      goto LABEL_12;
    }

    v7 = 0;
    goto LABEL_11;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = v3 <= v4;
  if (v3 >= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (!v5)
  {
    v6 = 1;
  }

  v7 = v6 + v2;
  if (v6 + v2 < [v10 count])
  {
LABEL_11:
    v8 = *MEMORY[0x29EDC7F10];
    v9 = [v10 objectAtIndexedSubscript:v7];
    UIAccessibilityPostNotification(v8, v9);
  }

LABEL_12:
}

- (_NSRange)accessibilityRowRange
{
  _accessibilityAllTabGroups = [(CapsuleTabGroupViewAccessibility *)self _accessibilityAllTabGroups];
  v4 = [(CapsuleTabGroupViewAccessibility *)self _accessibilityIndexOfSelfIn:_accessibilityAllTabGroups];
  if (v4 == -1 || (v5 = v4, v4 >= [_accessibilityAllTabGroups count]))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = [_accessibilityAllTabGroups count];
  }

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)_accessibilityAllTabGroups
{
  _accessibilityCapsuleCollectionView = [(CapsuleTabGroupViewAccessibility *)self _accessibilityCapsuleCollectionView];
  v3 = [_accessibilityCapsuleCollectionView safeSwiftValueForKey:@"$__lazy_storage_$_layout"];
  v4 = [v3 safeSwiftValueForKey:@"content"];
  v5 = [v4 safeSwiftValueForKey:@"items"];

  v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_1];

  return v6;
}

- (id)_accessibilityCapsuleCollectionView
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    do
    {
      MEMORY[0x29C2E0540](@"MobileSafari.ScrollingCapsuleCollectionView");
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }

      superview = [(CapsuleTabGroupViewAccessibility *)v3 superview];

      if (v4)
      {
        break;
      }

      v3 = superview;
    }

    while (superview);
  }

  else
  {
    superview = 0;
    v4 = 0;
  }

  return v4;
}

- (int64_t)_accessibilityIndexOfSelfIn:(id)in
{
  inCopy = in;
  v5 = [(CapsuleTabGroupViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v6 = [v5 safeValueForKey:@"text"];

  if (v6 && [inCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [inCopy objectAtIndexedSubscript:v7];
      v9 = [v8 safeSwiftStringForKey:@"title"];
      v10 = [v9 isEqualToString:v6];

      if (v10)
      {
        break;
      }

      if (++v7 >= [inCopy count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = -1;
  }

  return v7;
}

- (BOOL)_axIsInteractionEnabled
{
  _accessibilityCapsuleCollectionView = [(CapsuleTabGroupViewAccessibility *)self _accessibilityCapsuleCollectionView];
  objc_opt_class();
  v3 = [_accessibilityCapsuleCollectionView safeSwiftValueForKey:@"scrollView"];
  v4 = __UIAccessibilityCastAsClass();

  LOBYTE(v3) = [v4 isUserInteractionEnabled];
  return v3;
}

@end