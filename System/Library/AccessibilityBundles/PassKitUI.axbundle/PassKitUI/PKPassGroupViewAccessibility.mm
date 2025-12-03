@interface PKPassGroupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)_axIsCardFirstInPile;
- (BOOL)_axIsOnlyCardInPile;
- (BOOL)_axMoveCard:(id)card up:(BOOL)up;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_axSuperAccessibilityFrame;
- (CGRect)accessibilityFrame;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPassGroupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"PKPassGroupStackViewDatasource" hasMethod:@"indexOfGroup:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateProtocol:@"PKPassGroupStackViewDatasource" hasMethod:@"numberOfGroups" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateProtocol:@"PKPassGroupStackViewDatasource" hasMethod:@"indexOfSeparationGroup" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"PKPassGroupStackView"];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"groupViewPanDidBegin:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"groupViewPanDidEnd:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"reloadData" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKGroup" hasInstanceMethod:@"passAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"PKPassGroupView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"_groupCellHeight" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_passPileViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceMethod:@"datasource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPassGroupStackView" hasInstanceVariable:@"_headerContainerView" withType:"PKPassthroughView"];
  [validationsCopy validateClass:@"PKPassGroupStackView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"PKPassGroupView" hasInstanceMethod:@"_groupViewTapped" withFullSignature:{"v", 0}];
}

- (BOOL)_axIsCardFirstInPile
{
  v3 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"presentationState"];
  intValue = [v3 intValue];

  if (intValue != 2)
  {
    return 0;
  }

  objc_opt_class();
  v5 = [(PKPassGroupViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pkpassgroupsta.isa)];
  v6 = [v5 safeValueForKey:@"_passPileViews"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 indexOfObject:self];
  v9 = v8 == [v7 count] - 1;

  return v9;
}

- (BOOL)_axIsOnlyCardInPile
{
  objc_opt_class();
  v3 = [(PKPassGroupViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pkpassgroupsta.isa)];
  v4 = [v3 safeValueForKey:@"_passPileViews"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 count] == 1;
  return v6;
}

- (BOOL)isAccessibilityElement
{
  if ([(PKPassGroupViewAccessibility *)self _axIsOnlyCardInPile])
  {
    return 0;
  }

  v4 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"presentationState"];
  intValue = [v4 intValue];

  if (intValue == 1)
  {
    return 1;
  }

  return [(PKPassGroupViewAccessibility *)self _axIsCardFirstInPile];
}

- (BOOL)accessibilityElementsHidden
{
  if ([(PKPassGroupViewAccessibility *)self _axIsOnlyCardInPile])
  {
    return 0;
  }

  v3 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"presentationState"];
  intValue = [v3 intValue];

  if (intValue == 3)
  {
    return 0;
  }

  else
  {
    return ![(PKPassGroupViewAccessibility *)self isAccessibilityElement];
  }
}

- (BOOL)_accessibilityScrollToVisible
{
  v3 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"presentationState"];
  intValue = [v3 intValue];

  if (intValue == 1)
  {
    v23 = 0;
    objc_opt_class();
    v5 = [(PKPassGroupViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v6 = __UIAccessibilityCastAsClass();

    if (v6)
    {
      v7 = [(PKPassGroupViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pkpassgroupsta.isa)];
      v8 = v7 != 0;
      if (v7)
      {
        [(PKPassGroupViewAccessibility *)self frame];
        v10 = v9;
        [v6 contentOffset];
        v12 = v11;
        v14 = v13;
        v15 = [v7 safeValueForKey:@"_groupCellHeight"];
        [v15 doubleValue];
        v17 = v16;

        v18 = fmax(v17, 120.0);
        if (v10 < v14 || v10 > v14 - v18)
        {
          v19 = v10 + v18 * -1.5;
          v20 = 0.0;
          if (v19 >= 0.0)
          {
            v20 = v19;
          }

          [v6 setContentOffset:0 animated:{v12, v20}];
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = PKPassGroupViewAccessibility;
    return [(PKPassGroupViewAccessibility *)&v22 _accessibilityScrollToVisible];
  }

  return v8;
}

- (CGRect)_axSuperAccessibilityFrame
{
  v6.receiver = self;
  v6.super_class = PKPassGroupViewAccessibility;
  [(PKPassGroupViewAccessibility *)&v6 accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)accessibilityFrame
{
  v28.receiver = self;
  v28.super_class = PKPassGroupViewAccessibility;
  [(PKPassGroupViewAccessibility *)&v28 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"superview"];
  v12 = [v11 safeValueForKey:@"subviews"];
  v13 = [v12 indexesOfObjectsPassingTest:&__block_literal_global_4];
  v14 = [v12 objectsAtIndexes:v13];
  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_363];

  v16 = [v15 indexOfObject:self] + 1;
  if ([v15 count] > v16)
  {
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    if (CGRectGetMaxY(v29) > 0.0)
    {
      v17 = [v15 objectAtIndex:v16];
      [v17 accessibilityFrame];
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      if (CGRectGetMaxY(v30) > 0.0)
      {
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        MinY = CGRectGetMinY(v31);
        v32.origin.x = v4;
        v32.origin.y = v6;
        v32.size.width = v8;
        v32.size.height = v10;
        v23 = MinY - CGRectGetMinY(v32);
        if (v23 < v10)
        {
          v10 = v23;
        }
      }
    }
  }

  v24 = v4;
  v25 = v6;
  v26 = v8;
  v27 = v10;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

uint64_t __50__PKPassGroupViewAccessibility_accessibilityFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Pkpassgroupvie.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __50__PKPassGroupViewAccessibility_accessibilityFrame__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 _axSuperAccessibilityFrame];
  }

  else
  {
    [v5 accessibilityFrame];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  if (objc_opt_respondsToSelector())
  {
    [v4 _axSuperAccessibilityFrame];
  }

  else
  {
    [v4 accessibilityFrame];
  }

  rect = v14;
  v18 = v15;
  v19 = v16;
  v20 = v17;
  v29.origin.x = v10;
  v29.origin.y = v11;
  v29.size.width = v12;
  v29.size.height = v13;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = rect;
  v30.origin.y = v18;
  v30.size.width = v19;
  v30.size.height = v20;
  if (MinY >= CGRectGetMinY(v30))
  {
    v31.origin.x = v23;
    v31.origin.y = v22;
    v31.size.width = v21;
    v31.size.height = v13;
    v26 = CGRectGetMinY(v31);
    v32.origin.x = rect;
    v32.origin.y = v18;
    v32.size.width = v19;
    v32.size.height = v20;
    v25 = v26 != CGRectGetMinY(v32);
  }

  else
  {
    v25 = -1;
  }

  return v25;
}

- (unint64_t)accessibilityTraits
{
  if ([(PKPassGroupViewAccessibility *)self _axIsCardFirstInPile]&& ![(PKPassGroupViewAccessibility *)self _axIsOnlyCardInPile])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = PKPassGroupViewAccessibility;
  return [(PKPassGroupViewAccessibility *)&v4 accessibilityTraits];
}

- (id)accessibilityHint
{
  if ([(PKPassGroupViewAccessibility *)self _axIsCardFirstInPile]&& ![(PKPassGroupViewAccessibility *)self _axIsOnlyCardInPile])
  {
    v3 = @"other.cards.pile.hint";
  }

  else
  {
    v3 = @"stacked.card.hint";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"group"];
  v4 = [v3 safeValueForKey:@"passCount"];
  integerValue = [v4 integerValue];

  if (integerValue)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v11 = MEMORY[0x29EDCA5F8];
    v12 = v3;
    AXPerformSafeBlock();
    if ([(PKPassGroupViewAccessibility *)self _axIsCardFirstInPile:v11]&& ![(PKPassGroupViewAccessibility *)self _axIsOnlyCardInPile])
    {
      v9 = accessibilityLocalizedString(@"other.cards.piled.together");
    }

    else
    {
      v6 = [(PKPassGroupViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_386];
      accessibilityLabel = [v6 accessibilityLabel];
      v8 = [accessibilityLabel length];

      if (v8)
      {
        [v6 accessibilityLabel];
      }

      else
      {
        [v14[5] safeValueForKey:@"organizationName"];
      }
      v9 = ;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __50__PKPassGroupViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passAtIndex:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __50__PKPassGroupViewAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Pkpasspaymentc_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityCustomActions
{
  v3 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"group"];
  v4 = [(PKPassGroupViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pkpassgroupsta.isa)];
  [v4 safeValueForKey:@"datasource"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v21 = v25 = 0;
  v5 = v3;
  AXPerformSafeBlock();
  v6 = v23[3];

  _Block_object_dispose(&v22, 8);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20 = v21;
  AXPerformSafeBlock();
  v7 = v23[3];

  _Block_object_dispose(&v22, 8);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v8 = v20;
  AXPerformSafeBlock();
  v9 = v23[3];

  _Block_object_dispose(&v22, 8);
  v10 = objc_alloc(MEMORY[0x29EDC78E0]);
  v11 = accessibilityLocalizedString(@"move.card.up.action");
  v12 = [v10 initWithName:v11 target:self selector:{sel__axMoveCardUp_, v19, 3221225472, __58__PKPassGroupViewAccessibility_accessibilityCustomActions__block_invoke_3, &unk_29F2E1C50}];

  v13 = objc_alloc(MEMORY[0x29EDC78E0]);
  v14 = accessibilityLocalizedString(@"move.card.down.action");
  v15 = [v13 initWithName:v14 target:self selector:sel__axMoveCardDown_];

  array = [MEMORY[0x29EDB8DE8] array];
  v17 = array;
  if (v6 && v6 != v9 + 1)
  {
    [array addObject:v12];
  }

  if (v6 < v7 - 1 && v6 != v9)
  {
    [v17 addObject:v15];
  }

  return v17;
}

uint64_t __58__PKPassGroupViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) indexOfGroup:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __58__PKPassGroupViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) numberOfGroups];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __58__PKPassGroupViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) indexOfSeparationGroup];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_axMoveCard:(id)card up:(BOOL)up
{
  cardCopy = card;
  v6 = [(PKPassGroupViewAccessibility *)self safeValueForKey:@"group"];
  v7 = [(PKPassGroupViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pkpassgroupsta.isa)];
  [v7 safeValueForKey:@"datasource"];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v11 = v16 = 0;
  v12 = v6;
  AXPerformSafeBlock();
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  v9 = v7;
  AXPerformSafeBlock();

  return 1;
}

uint64_t __47__PKPassGroupViewAccessibility__axMoveCard_up___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) indexOfGroup:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __47__PKPassGroupViewAccessibility__axMoveCard_up___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) groupViewPanDidBegin:*(a1 + 40)];
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  v3 = v2;
  v4 = *(a1 + 48);
  if (*(a1 + 56))
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  [v2 groupStackView:*(a1 + 32) groupDidMoveFromIndex:v4 toIndex:v5];

  [*(a1 + 32) reloadData];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 groupViewPanDidEnd:v7];
}

- (id)accessibilityValue
{
  v3 = [(PKPassGroupViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_406];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [accessibilityLabel length];

  if (v5)
  {
    accessibilityLabel2 = [v3 accessibilityLabel];
    accessibilityValue = [v3 accessibilityValue];
    accessibilityValue3 = __AXStringForVariables();
  }

  else
  {
    accessibilityLabel2 = [(PKPassGroupViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_414];
    accessibilityValue2 = [accessibilityLabel2 accessibilityValue];
    v9 = [accessibilityValue2 length];

    if (v9)
    {
      accessibilityValue3 = [accessibilityLabel2 accessibilityValue];
    }

    else
    {
      accessibilityValue3 = 0;
    }
  }

  return accessibilityValue3;
}

uint64_t __50__PKPassGroupViewAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Pkpassfieldvie.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __50__PKPassGroupViewAccessibility_accessibilityValue__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Pkpasspaymentc_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)accessibilityPerformEscape
{
  AXPerformSafeBlock();
  AXPerformBlockOnMainThreadAfterDelay();
  return 1;
}

void __58__PKPassGroupViewAccessibility_accessibilityPerformEscape__block_invoke_2()
{
  v0 = *MEMORY[0x29EDC7F10];
  v1 = accessibilityLocalizedString(@"card.dismissed");
  UIAccessibilityPostNotification(v0, v1);
}

- (CGPoint)accessibilityActivationPoint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 bounds];
  MidX = CGRectGetMidX(v14);
  [v2 bounds];
  MidY = CGRectGetMidY(v15);
  if (MidY <= 10.0)
  {
    v5 = MidY;
  }

  else
  {
    v5 = 10.0;
  }

  window = [v2 window];
  [v2 convertPoint:0 toView:{MidX, v5}];
  [window convertPoint:0 toWindow:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

@end