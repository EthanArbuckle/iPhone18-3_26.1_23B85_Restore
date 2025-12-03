@interface UIDimmingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityCoversScreen;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityViewIsModal;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_childFocusViews;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
- (uint64_t)_accessibilityCanDismiss;
@end

@implementation UIDimmingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"_childFocusViews" withFullSignature:0];
  v4 = @"UIDimmingView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v5 = "B";
  [location[0] validateClass:v4 hasInstanceMethod:@"hitTestsAsOpaque" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceVariable:@"_ignoresTouches" withType:v5];
  [location[0] validateClass:@"UIPresentationController" hasInstanceMethod:@"_shouldDismiss" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, obj);
}

- (BOOL)_accessibilityCoversScreen
{
  if (self)
  {
    v3 = [self safeValueForKey:@"_delegate"];
    NSClassFromString(&cfstr_Uiremoteviewco_0.isa);
    LOBYTE(v4) = 0;
    if (objc_opt_isKindOfClass())
    {
      v4 = [self safeBoolForKey:@"hitTestsAsOpaque"] ^ 1;
    }

    *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    return (v4 & 1) == 0 && ([self safeBoolForKey:{@"_ignoresTouches", v1}] & 1) == 0 && (objc_msgSend(self, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(self, "_accessibilityViewIsVisible") & 1) != 0;
  }

  else
  {
    return 0;
  }
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v30 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v26[1] = a2;
  v26[0] = [(UIDimmingViewAccessibility *)self safeValueForKey:@"passthroughViews"];
  superview = [(UIDimmingViewAccessibility *)selfCopy superview];
  subviews = [superview subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  MEMORY[0x29EDC9740](reverseObjectEnumerator);
  MEMORY[0x29EDC9740](subviews);
  array = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](allObjects);
  v18 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v18)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v18;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(__b[1] + 8 * v12);
      if (v23 == selfCopy)
      {
        break;
      }

      [array addObject:v23];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v13)
        {
          goto LABEL_9;
        }
      }
    }

    v21 = 2;
  }

  else
  {
LABEL_9:
    v21 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  memset(v19, 0, sizeof(v19));
  v8 = MEMORY[0x29EDC9748](v26[0]);
  v9 = [v8 countByEnumeratingWithState:v19 objects:v28 count:16];
  if (v9)
  {
    v5 = *v19[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*v19[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v20 = *(v19[1] + 8 * v6);
      if (([array containsObject:v20] & 1) == 0)
      {
        [array addObject:v20];
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:v19 objects:v28 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](v8);
  v3 = MEMORY[0x29EDC9748](array);
  v21 = 1;
  objc_storeStrong(&array, 0);
  objc_storeStrong(&allObjects, 0);
  objc_storeStrong(v26, 0);

  return v3;
}

- (BOOL)accessibilityViewIsModal
{
  storedAccessibilityViewIsModal = [(UIDimmingViewAccessibility *)self storedAccessibilityViewIsModal];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityViewIsModal).n128_u64[0];
  if (!storedAccessibilityViewIsModal)
  {
    return [(UIDimmingViewAccessibility *)self _accessibilityCoversScreen];
  }

  storedAccessibilityViewIsModal2 = [(UIDimmingViewAccessibility *)self storedAccessibilityViewIsModal];
  v7 = [storedAccessibilityViewIsModal2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](storedAccessibilityViewIsModal2);
  return v7;
}

- (uint64_t)_accessibilityCanDismiss
{
  selfCopy = self;
  if (self)
  {
    v4 = [selfCopy safeValueForKey:@"_delegate"];
    NSClassFromString(&cfstr_Uipopovercontr.isa);
    if (objc_opt_isKindOfClass())
    {
      location = [v4 safeValueForKey:@"_delegate"];
      if (location)
      {
        v6 = [location _accessibilityCanDismissPopoverController:v4] & 1;
        v2 = 1;
      }

      else
      {
        v2 = 0;
      }

      objc_storeStrong(&location, 0);
      if (v2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 safeBoolForKey:@"_shouldDismiss"] & 1;
LABEL_12:
        objc_storeStrong(&v4, 0);
        return v6 & 1;
      }
    }

    v6 = 1;
    goto LABEL_12;
  }

  v6 = 0;
  return v6 & 1;
}

- (BOOL)accessibilityActivate
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __51__UIDimmingViewAccessibility_accessibilityActivate__block_invoke;
  v7 = &unk_29F30C7C8;
  v8[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  objc_storeStrong(v8, 0);
  return 1;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v28[1] = a2;
  if (!AXDoesRequestingClientDeserveAutomation())
  {
    goto LABEL_10;
  }

  v28[0] = [(UIDimmingViewAccessibility *)selfCopy safeValueForKey:@"_delegate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((location = [v28[0] presentedView]) == 0 || (-[UIDimmingViewAccessibility accessibilityFrame](selfCopy, "accessibilityFrame"), v22 = v2, v23 = v3, v24 = v4, v25 = v5, objc_msgSend(location, "accessibilityFrame"), v18 = v6, v19 = v7, v20 = v8, v21 = v9, AX_CGRectBySubtractingRect(), v26 = v33, CGRectIsEmpty(v33)) ? (v17 = 0) : (AX_CGRectGetCenter(), v30 = v10, v31 = v11, v17 = 1), objc_storeStrong(&location, 0), !v17))
  {
    v17 = 0;
  }

  objc_storeStrong(v28, 0);
  if (!v17)
  {
LABEL_10:
    v16.receiver = selfCopy;
    v16.super_class = UIDimmingViewAccessibility;
    [(UIDimmingViewAccessibility *)&v16 accessibilityActivationPoint];
    v30 = v12;
    v31 = v13;
  }

  v14 = v30;
  v15 = v31;
  result.y = v15;
  result.x = v14;
  return result;
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  v6 = a2;
  storedAccessibilityContainerType = [(UIDimmingViewAccessibility *)self storedAccessibilityContainerType];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityContainerType).n128_u64[0];
  if (storedAccessibilityContainerType)
  {
    v5.receiver = selfCopy;
    v5.super_class = UIDimmingViewAccessibility;
    return [(UIDimmingViewAccessibility *)&v5 accessibilityContainerType];
  }

  else if ([(UIDimmingViewAccessibility *)selfCopy _accessibilityCoversScreen]&& ([(UIDimmingViewAccessibility *)selfCopy _accessibilityCanDismiss]& 1) != 0)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityLabel
{
  if ([(UIDimmingViewAccessibility *)self _accessibilityCoversScreen]&& ([(UIDimmingViewAccessibility *)self _accessibilityCanDismiss]& 1) != 0)
  {
    v4 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityIdentifier
{
  if ([(UIDimmingViewAccessibility *)self _accessibilityCoversScreen]&& ([(UIDimmingViewAccessibility *)self _accessibilityCanDismiss]& 1) != 0)
  {
    v4 = MEMORY[0x29EDC9748](@"PopoverDismissRegion");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(UIDimmingViewAccessibility *)self _accessibilityCoversScreen]&& ([(UIDimmingViewAccessibility *)self _accessibilityCanDismiss]& 1) != 0)
  {
    v4 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_childFocusViews
{
  selfCopy = self;
  v27[1] = a2;
  v26.receiver = self;
  v26.super_class = UIDimmingViewAccessibility;
  v27[0] = [(UIDimmingViewAccessibility *)&v26 _childFocusViews];
  if (([(UIDimmingViewAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    if (([(UIDimmingViewAccessibility *)selfCopy accessibilityElementsHidden]& 1) != 0)
    {
      v29 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      v25 = 1;
    }

    else
    {
      v17 = [(UIDimmingViewAccessibility *)selfCopy safeArrayForKey:@"passthroughViews"];
      v24 = [v17 mutableCopy];
      if ([v24 count])
      {
        v13 = selfCopy;
        v18 = MEMORY[0x29EDCA5F8];
        v19 = -1073741824;
        v20 = 0;
        v21 = __46__UIDimmingViewAccessibility__childFocusViews__block_invoke;
        v22 = &unk_29F30C818;
        v23 = MEMORY[0x29EDC9748](v24);
        v2 = [(UIDimmingViewAccessibility *)v13 _accessibilityFindAncestor:&v18 startWithSelf:0];
        v14 = MEMORY[0x29EDB8D80];
        reverseObjectEnumerator = [v24 reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];
        v3 = [v14 axArrayWithPossiblyNilArrays:{2, allObjects, v27[0]}];
        v4 = v27[0];
        v27[0] = v3;
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](allObjects);
        MEMORY[0x29EDC9740](reverseObjectEnumerator);
        objc_storeStrong(&v23, 0);
      }

      v7 = MEMORY[0x29EDC7DA0];
      reverseObjectEnumerator2 = [v27[0] reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];
      v10 = [v7 _subviewsReplacedByModalViewSubviewsIfNecessary:?];
      reverseObjectEnumerator3 = [v10 reverseObjectEnumerator];
      allObjects3 = [reverseObjectEnumerator3 allObjects];
      v29 = [allObjects3 ax_filteredArrayUsingBlock:&__block_literal_global_20];
      MEMORY[0x29EDC9740](allObjects3);
      MEMORY[0x29EDC9740](reverseObjectEnumerator3);
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](allObjects2);
      MEMORY[0x29EDC9740](reverseObjectEnumerator2);
      v25 = 1;
      objc_storeStrong(&v24, 0);
    }
  }

  else
  {
    v29 = MEMORY[0x29EDC9748](v27[0]);
    v25 = 1;
  }

  objc_storeStrong(v27, 0);
  v5 = v29;

  return v5;
}

uint64_t __46__UIDimmingViewAccessibility__childFocusViews__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([a1[4] containsObject:location[0]])
  {
    [a1[4] removeObject:location[0]];
  }

  objc_storeStrong(location, 0);
  return 0;
}

uint64_t __46__UIDimmingViewAccessibility__childFocusViews__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityFKAShouldBeProcessed];
  objc_storeStrong(location, 0);
  return v3;
}

@end