@interface UIAccessibilityElementKBKey
+ (id)variantKeysForKey:(void *)a1;
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityActivatePanAlternate:(id)a3;
- (BOOL)_accessibilityDismissAlternativeKeyPicker;
- (BOOL)_accessibilityHasVariantKeys;
- (BOOL)_accessibilityIsInternationalKeyboardKey;
- (BOOL)_accessibilityKeyboardKeyAllowsTouchTyping;
- (BOOL)_accessibilityKeyboardKeyCanStartContinuousPath;
- (BOOL)_accessibilityKeyboardKeyHasSignificantAlternateActions;
- (BOOL)_accessibilityKeyboardSupportsGestureMode;
- (BOOL)_allowCachingAccessibilityLabel;
- (BOOL)_axLayoutSupportsContinuousPath;
- (BOOL)_performCapsLockDoubleTap;
- (BOOL)allowsCaseChangeOnShift;
- (BOOL)isAccessibilityElement;
- (BOOL)isButtonType;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_accessibilityKeyboardKeyEnteredString;
- (id)_accessibilityLabel;
- (id)_accessibilityLocalizedStringForKeyboardLocale:(uint64_t)a1;
- (id)_accessibilitySupportGesturesAttributes;
- (id)_accessibilityVariantKeys;
- (id)_axDualStringLabel;
- (id)_axLayoutStar;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (uint64_t)_accessibilityActivateForPanAlternate:(char)a3 isSecondAlternate:;
- (uint64_t)_accessibilityActivateForPanAlternate:(char)a3 isSecondAlternate:(char)a4 isSecondaryActivate:;
- (uint64_t)_accessibilityIsDeleteKey;
- (uint64_t)_axDisplaysGlobeKeyAsEmojiKey;
- (uint64_t)_axIsDictationKey;
- (uint64_t)_axIsShifted;
- (uint64_t)cachedVariantKeys;
- (uint64_t)changesOnShiftDown;
- (uint64_t)initWithAccessibilityContainer:(void *)a3 key:;
- (uint64_t)isUnaffectedByShiftLock;
- (uint64_t)key;
- (uint64_t)setChangesOnShiftDown:(uint64_t)result;
- (unint64_t)accessibilityTraits;
- (void)_applyCapitalLetterTransform;
- (void)setCachedVariantKeys:(uint64_t)a1;
- (void)setKey:(uint64_t)a1;
@end

@implementation UIAccessibilityElementKBKey

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = @"UIKeyboardLayoutStar";
  [location[0] validateClass:?];
  [location[0] validateClass:@"UIKeyboardLayoutStar" isKindOfClass:@"UIView"];
  [location[0] validateClass:@"UIKeyboardLayoutStar" isKindOfClass:@"UIKeyboardLayout"];
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_keyplaneView" withType:"UIKBKeyplaneView"];
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_keyplane" withType:"UIKBTree"];
  v4 = "v";
  [location[0] validateClass:@"UIKBKeyplaneView" hasInstanceMethod:@"deactivateKeys" withFullSignature:0];
  v7 = "B";
  v3 = @"UITouch";
  [location[0] validateClass:"{CGPoint=dd}" hasInstanceMethod:"B" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"setTimestamp:" withFullSignature:{v4, "d", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"setPhase:" withFullSignature:{v4, "q", 0}];
  v5 = "@";
  [location[0] validateClass:v6 hasInstanceMethod:@"setActiveKey:" withFullSignature:{v4, "@", 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"useDismissForMessagesWriteboard" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"_layout" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIKeyboadLayoutStarAccessibility" hasInstanceMethod:@"_accessibilityVisibleKeysByRow" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"globeKeyDisplaysAsEmojiKey" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"supportsContinuousPath" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (uint64_t)initWithAccessibilityContainer:(void *)a3 key:
{
  v10 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  if (v10)
  {
    v3 = v10;
    v10 = 0;
    v6.receiver = v3;
    v6.super_class = UIAccessibilityElementKBKey;
    v10 = objc_msgSendSuper2(&v6, sel_initWithAccessibilityContainer_, location);
    objc_storeStrong(&v10, v10);
    if (v10)
    {
      objc_storeStrong(v10 + 6, v8);
      v11 = MEMORY[0x29EDC9748](v10);
    }

    else
    {
      v11 = 0;
    }

    v7 = 1;
  }

  else
  {
    v11 = 0;
    v7 = 1;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
  return v11;
}

- (id)description
{
  v8 = self;
  v7 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v6.receiver = self;
  v6.super_class = UIAccessibilityElementKBKey;
  v4 = [(UIAccessibilityElementKBKey *)&v6 description];
  v5 = [v3 stringWithFormat:@"%@: Key:%@", v4, v8->_key];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (id)_accessibilityLocalizedStringForKeyboardLocale:(uint64_t)a1
{
  v5 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v5)
  {
    v6 = AXKBElementLocalizedForKeyboardLocale(location);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  v2 = v6;

  return v2;
}

- (BOOL)_accessibilityKeyboardKeyAllowsTouchTyping
{
  v4 = 0;
  v3 = 1;
  if ([(UIAccessibilityElementKBKey *)&self->super.super.super.isa isButtonType])
  {
    v5 = [(UIKBTree *)self->_key name];
    v4 = 1;
    v3 = [v5 hasSuffix:@"Shift-Key"];
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  return v3 & 1;
}

- (BOOL)isButtonType
{
  v3 = a1;
  if (a1)
  {
    v6 = &isButtonType_onceToken;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_11);
    if (*v6 != -1)
    {
      dispatch_once(v6, location);
    }

    objc_storeStrong(&location, 0);
    v2 = [v3[6] name];
    v4 = ([isButtonType_AcceptableButtonTypes containsObject:v2] & 1) != 0 || (objc_msgSend(v3, "_accessibilityIsInternationalKeyboardKey") & 1) != 0 || (-[UIAccessibilityElementKBKey _axIsDictationKey](v3) & 1) != 0 || objc_msgSend(v3[6], "variantType") == 5;
    objc_storeStrong(&v2, 0);
  }

  else
  {
    return 0;
  }

  return v4;
}

- (id)_axLayoutStar
{
  if (a1)
  {
    v2 = [a1 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uikeyboardlayo.isa)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_accessibilityDismissAlternativeKeyPicker
{
  v10[2] = self;
  v10[1] = a2;
  v10[0] = [(UIAccessibilityElementKBKey *)self _axLayoutStar];
  v5 = [v10[0] safeValueForKey:@"_keyplaneView"];
  v2 = [v5 safeValueForKey:@"deactivateKeys"];
  MEMORY[0x29EDC9740](v5);
  argument[1] = MEMORY[0x29EDCA5F8];
  argument[2] = 3221225472;
  argument[3] = __72__UIAccessibilityElementKBKey__accessibilityDismissAlternativeKeyPicker__block_invoke;
  argument[4] = &unk_29F30C7C8;
  v9 = MEMORY[0x29EDC9748](v10[0]);
  AXPerformSafeBlock();
  v6 = MEMORY[0x29EDBD7E8];
  v7 = accessibilityLocalizedString(@"alternative.keys.dismissed");
  argument[0] = [v6 axAttributedStringWithString:?];
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  [argument[0] setAttribute:&unk_2A238E768 forKey:{*MEMORY[0x29EDBD860], v3}];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument[0]);
  objc_storeStrong(argument, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  return 1;
}

- (uint64_t)_accessibilityActivateForPanAlternate:(char)a3 isSecondAlternate:
{
  if (a1)
  {
    v4 = [(UIAccessibilityElementKBKey *)a1 _accessibilityActivateForPanAlternate:a3 & 1 isSecondAlternate:0 isSecondaryActivate:?]& 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_accessibilityActivateForPanAlternate:(char)a3 isSecondAlternate:(char)a4 isSecondaryActivate:
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  if (a1)
  {
    v16 = [(UIAccessibilityElementKBKey *)v20 _axLayoutStar];
    if (v16)
    {
      v5 = MEMORY[0x29EDCA5F8];
      v6 = -1073741824;
      v7 = 0;
      v8 = __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke;
      v9 = &unk_29F30CF78;
      v10 = MEMORY[0x29EDC9748](v16);
      v11 = MEMORY[0x29EDC9748](v20);
      v12 = v19 & 1;
      v13 = v18 & 1;
      v14 = v17 & 1;
      AXPerformSafeBlock();
      v21 = 1;
      v15 = 1;
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v10, 0);
    }

    else
    {
      v21 = 0;
      v15 = 1;
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke(uint64_t a1)
{
  v25 = a1;
  v24 = a1;
  [*(a1 + 32) _accessibilitySetBoolValue:1 forKey:@"IsActivatingAXKey"];
  memset(&v23[3], 0, 32);
  [*(*(a1 + 40) + 48) frame];
  *&v23[3] = v26;
  CGRectGetMidX(v26);
  CGRectGetMidY(*&v23[3]);
  CGPointMake_1();
  v23[1] = v1;
  v23[2] = v2;
  v23[0] = AXUIMakeTouchForTouchesBeganAtLocation();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x29EDB8E50] setWithObject:v23[0]];
  [v3 touchesBegan:? withEvent:?];
  MEMORY[0x29EDC9740](v4);
  v22 = 0x3F847AE147AE147BLL;
  v6 = [*(*(a1 + 40) + 48) name];
  v7 = [v6 isEqualToString:@"Caps-Lock-Key"];
  MEMORY[0x29EDC9740](v6);
  if (v7)
  {
    v22 = 0x3FC3333333333333;
  }

  if (*(a1 + 48))
  {
    v11 = MEMORY[0x29EDCA5F8];
    v12 = -1073741824;
    v13 = 0;
    v14 = __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_2;
    v15 = &unk_29F30CF00;
    v16 = MEMORY[0x29EDC9748](*(a1 + 40));
    v19 = *&v23[3];
    v21 = *(a1 + 49) & 1;
    v17 = MEMORY[0x29EDC9748](v23[0]);
    v20 = v22;
    v18 = MEMORY[0x29EDC9748](*(a1 + 32));
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v8 = MEMORY[0x29EDC9748](v23[0]);
    v9[1] = v22;
    v9[0] = MEMORY[0x29EDC9748](*(a1 + 32));
    v10 = *(a1 + 50) & 1;
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v23, 0);
}

void __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_2(uint64_t a1)
{
  v27 = a1;
  v26 = a1;
  v12 = [*(*(a1 + 32) + 48) secondaryRepresentedStrings];
  if ([v12 count] == 1)
  {
    MidX = CGRectGetMidX(*(a1 + 56));
  }

  else
  {
    v1 = *(a1 + 56);
    v2 = *(a1 + 64);
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    if (*(a1 + 96))
    {
      v9 = CGRectGetMaxX(*&v1) + 10.0;
    }

    else
    {
      v9 = CGRectGetMinX(*&v1) - 10.0;
    }

    MidX = v9;
  }

  MEMORY[0x29EDC9740](v12);
  v25 = MidX;
  v24 = 0uLL;
  CGRectGetMaxY(*(a1 + 56));
  CGPointMake_1();
  *&v24 = v5;
  *(&v24 + 1) = v6;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = -1073741824;
  v18 = 0;
  v19 = __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_3;
  v20 = &unk_29F30CED8;
  v21 = MEMORY[0x29EDC9748](*(a1 + 40));
  v22[1] = *(a1 + 88);
  v22[0] = MEMORY[0x29EDC9748](*(a1 + 48));
  v23 = v24;
  AXPerformSafeBlock();
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x29EDB8E50] setWithObject:*(a1 + 40)];
  [v7 touchesMoved:? withEvent:?];
  MEMORY[0x29EDC9740](v8);
  v13 = MEMORY[0x29EDC9748](*(a1 + 40));
  v14[1] = *(a1 + 88);
  v14[0] = MEMORY[0x29EDC9748](*(a1 + 48));
  v15 = v24;
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(&v21, 0);
}

uint64_t __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_3(uint64_t a1)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 48) / 2.0;
  [v6 timestamp];
  [v6 setTimestamp:v1 + v5];
  [*(a1 + 32) setPhase:1];
  v8 = *(a1 + 32);
  [*(a1 + 40) convertPoint:0 toView:{*(a1 + 56), *(a1 + 64)}];
  return [v8 _setLocationInWindow:0 resetPrevious:{v2, v3}];
}

void __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_4(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_5;
  v8 = &unk_29F30CED8;
  v9 = MEMORY[0x29EDC9748](*(a1 + 32));
  v10[1] = *(a1 + 48);
  v10[0] = MEMORY[0x29EDC9748](*(a1 + 40));
  v11 = *(a1 + 56);
  AXPerformSafeBlock();
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x29EDB8E50] setWithObject:*(a1 + 32)];
  [v2 touchesEnded:? withEvent:?];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
}

uint64_t __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_5(uint64_t a1)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 48) / 2.0;
  [v6 timestamp];
  [v6 setTimestamp:v1 + v5];
  [*(a1 + 32) setPhase:3];
  v8 = *(a1 + 32);
  [*(a1 + 40) convertPoint:0 toView:{*(a1 + 56), *(a1 + 64)}];
  return [v8 _setLocationInWindow:0 resetPrevious:{v2, v3}];
}

void __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_6(uint64_t a1)
{
  v7[3] = a1;
  v7[2] = a1;
  [*(a1 + 32) setPhase:3];
  v2 = *(a1 + 32);
  [v2 timestamp];
  [v2 setTimestamp:v1 + *(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x29EDB8E50] setWithObject:*(a1 + 32)];
  [v3 touchesEnded:? withEvent:?];
  MEMORY[0x29EDC9740](v4);
  if (*(a1 + 56))
  {
    v6 = MEMORY[0x29EDC9748](*(a1 + 32));
    v7[1] = *(a1 + 48);
    v7[0] = MEMORY[0x29EDC9748](*(a1 + 40));
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(v7, 0);
    objc_storeStrong(&v6, 0);
  }
}

void __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_7(uint64_t a1)
{
  v7[3] = a1;
  v7[2] = a1;
  [*(a1 + 32) setPhase:0];
  v2 = *(a1 + 32);
  [v2 timestamp];
  [v2 setTimestamp:v1 + *(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x29EDB8E50] setWithObject:*(a1 + 32)];
  [v3 touchesBegan:? withEvent:?];
  MEMORY[0x29EDC9740](v4);
  v6 = MEMORY[0x29EDC9748](*(a1 + 32));
  v7[1] = *(a1 + 48);
  v7[0] = MEMORY[0x29EDC9748](*(a1 + 40));
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v6, 0);
}

double __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setPhase:3];
  v3 = *(a1 + 32);
  [v3 timestamp];
  [v3 setTimestamp:v1 + *(a1 + 48)];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x29EDB8E50] setWithObject:*(a1 + 32)];
  [v5 touchesEnded:? withEvent:?];
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

- (uint64_t)_axIsDictationKey
{
  v11 = a1;
  if (a1)
  {
    v10 = [v11 _accessibilityValueForKey:@"AXIsDictationKey"];
    if (v10)
    {
      v12 = [v10 BOOLValue] & 1;
      v9 = 1;
    }

    else
    {
      v8 = [v11 safeValueForKey:@"key"];
      v4 = [v8 properties];
      v3 = [v4 objectForKey:*MEMORY[0x29EDC8150]];
      v5 = [v3 intValue] == 4;
      MEMORY[0x29EDC9740](v3);
      *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      v6 = v11;
      v7 = [MEMORY[0x29EDBA070] numberWithBool:{v5, v1}];
      [v6 _accessibilitySetRetainedValue:? forKey:?];
      MEMORY[0x29EDC9740](v7);
      v12 = v5;
      v9 = 1;
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (id)_accessibilityKeyboardKeyEnteredString
{
  v3 = [(UIKBTree *)self->_key properties];
  v4 = [v3 objectForKey:*MEMORY[0x29EDC8158]];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)isAccessibilityElement
{
  if (([(UIKBTree *)self->_key visible]& 1) == 0 || [(UIKBTree *)self->_key displayType]== 1)
  {
    return 0;
  }

  if (([(UIKBTree *)self->_key ghost]& 1) != 0)
  {
    return 0;
  }

  v6 = [(UIAccessibilityElementKBKey *)self accessibilityLabel];
  v7 = [v6 length];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (!v7)
  {
    return 0;
  }

  v4 = [(UIAccessibilityElementKBKey *)self accessibilityLabel];
  v8 = 0;
  v5 = 1;
  if (([v4 isEqualToString:@"Padding-Left"] & 1) == 0)
  {
    v9 = [(UIAccessibilityElementKBKey *)self accessibilityLabel];
    v8 = 1;
    v5 = [v9 isEqualToString:@"Padding-Right"];
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  MEMORY[0x29EDC9740](v4);
  return (v5 & 1) == 0;
}

- (id)accessibilityValue
{
  v8 = self;
  location[1] = a2;
  if (!self->_key)
  {
    v9 = 0;
    goto LABEL_13;
  }

  location[0] = [(UIKBTree *)v8->_key name];
  if (([location[0] hasSuffix:@"Shift-Key"] & 1) == 0)
  {
    if ([(UIAccessibilityElementKBKey *)v8 _accessibilityIsInternationalKeyboardKey])
    {
      if (([(UIAccessibilityElementKBKey *)v8 _axDisplaysGlobeKeyAsEmojiKey]& 1) != 0)
      {
        v9 = 0;
      }

      else
      {
        KeyboardKeys = UIAXRequiresTwoNextKeyboardKeys();
        v9 = UIAXNextKeyboardValue(KeyboardKeys);
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = [MEMORY[0x29EDC7B08] sharedInstance];
  v5 = [v4 isShiftLocked];
  MEMORY[0x29EDC9740](v4);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = accessibilityLocalizedString(@"caps.lock.enabled");
LABEL_12:
  objc_storeStrong(location, 0);
LABEL_13:
  v2 = v9;

  return v2;
}

- (uint64_t)_axDisplaysGlobeKeyAsEmojiKey
{
  if (a1)
  {
    v2 = [(UIAccessibilityElementKBKey *)a1 _axLayoutStar];
    v3 = [v2 safeBoolForKey:@"globeKeyDisplaysAsEmojiKey"] & 1;
    MEMORY[0x29EDC9740](v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)accessibilityIdentifier
{
  v35 = self;
  location[1] = a2;
  v25 = [(UIKBTree *)self->_key name];
  v26 = [v25 isEqualToString:@"Return-Key"];
  *&v2 = MEMORY[0x29EDC9740](v25).n128_u64[0];
  if (v26)
  {
    location[0] = [MEMORY[0x29EDC7B08] sharedInstance];
    v24 = [location[0] returnKeyType];
    if (v24)
    {
      switch(v24)
      {
        case 1:
          v36 = MEMORY[0x29EDC9748](@"Go");
          v33 = 1;
          break;
        case 2:
          v36 = MEMORY[0x29EDC9748](@"Google");
          v33 = 1;
          break;
        case 3:
          v36 = MEMORY[0x29EDC9748](@"Join:");
          v33 = 1;
          break;
        case 4:
          v36 = MEMORY[0x29EDC9748](@"Next:");
          v33 = 1;
          break;
        case 5:
          v36 = MEMORY[0x29EDC9748](@"Route");
          v33 = 1;
          break;
        case 6:
          v36 = MEMORY[0x29EDC9748](@"Search");
          v33 = 1;
          break;
        case 7:
          v36 = MEMORY[0x29EDC9748](@"Send");
          v33 = 1;
          break;
        case 8:
          v36 = MEMORY[0x29EDC9748](@"Yahoo");
          v33 = 1;
          break;
        case 9:
          v36 = MEMORY[0x29EDC9748](@"Done");
          v33 = 1;
          break;
        case 10:
          v36 = MEMORY[0x29EDC9748](@"Emergency call");
          v33 = 1;
          break;
        default:
          v33 = 0;
          break;
      }
    }

    else
    {
      v36 = MEMORY[0x29EDC9748](@"Return");
      v33 = 1;
    }

    objc_storeStrong(location, 0);
    if (v33)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  v22 = [(UIKBTree *)v35->_key name];
  v23 = [v22 isEqualToString:@"Tab-Key"];
  *&v3 = MEMORY[0x29EDC9740](v22).n128_u64[0];
  if (v23)
  {
    v36 = MEMORY[0x29EDC9748](@"tab");
  }

  else
  {
    v20 = [(UIKBTree *)v35->_key name];
    v31 = 0;
    v21 = 1;
    if (([v20 isEqualToString:@"Delete-Key"] & 1) == 0)
    {
      v32 = [(UIKBTree *)v35->_key name];
      v31 = 1;
      v21 = [v32 isEqualToString:@"Monolith-Linear-Delete-Key"];
    }

    if (v31)
    {
      MEMORY[0x29EDC9740](v32);
    }

    *&v4 = MEMORY[0x29EDC9740](v20).n128_u64[0];
    if (v21)
    {
      v36 = MEMORY[0x29EDC9748](@"delete");
    }

    else
    {
      v18 = [(UIKBTree *)v35->_key name];
      v19 = [v18 isEqualToString:@"Shift-Key"];
      *&v5 = MEMORY[0x29EDC9740](v18).n128_u64[0];
      if (v19)
      {
        v36 = MEMORY[0x29EDC9748](@"shift");
      }

      else
      {
        v16 = [(UIKBTree *)v35->_key name];
        v17 = [v16 isEqualToString:@"Caps-Lock-Key"];
        *&v6 = MEMORY[0x29EDC9740](v16).n128_u64[0];
        if (v17)
        {
          v36 = MEMORY[0x29EDC9748](@"caps-lock");
        }

        else
        {
          v14 = [(UIKBTree *)v35->_key name];
          v15 = [v14 isEqualToString:@"International-Key"];
          *&v7 = MEMORY[0x29EDC9740](v14).n128_u64[0];
          if (v15)
          {
            v36 = MEMORY[0x29EDC9748](@"emoji");
          }

          else
          {
            v12 = [(UIKBTree *)v35->_key name];
            v13 = [v12 isEqualToString:@"Space-Key"];
            MEMORY[0x29EDC9740](v12);
            if (v13)
            {
              v36 = MEMORY[0x29EDC9748](@"space");
            }

            else if (([(UIAccessibilityElementKBKey *)v35 _axIsDictationKey]& 1) != 0)
            {
              v36 = MEMORY[0x29EDC9748](@"dictation");
            }

            else
            {
              v10 = [(UIKBTree *)v35->_key name];
              v29 = 0;
              v11 = 1;
              if (([v10 hasSuffix:@"More-Key"] & 1) == 0)
              {
                v30 = [(UIKBTree *)v35->_key name];
                v29 = 1;
                v11 = [v30 isEqualToString:@"NumberPad-More"];
              }

              if (v29)
              {
                MEMORY[0x29EDC9740](v30);
              }

              MEMORY[0x29EDC9740](v10);
              if ((v11 & 1) == 0)
              {
LABEL_51:
                v28 = [(UIKBTree *)v35->_key name];
                if ([v28 isEqualToString:@"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation"])
                {
                  v36 = [(UIKBTree *)v35->_key representedString];
                }

                else
                {
                  v27.receiver = v35;
                  v27.super_class = UIAccessibilityElementKBKey;
                  v36 = [(UIAccessibilityElementKBKey *)&v27 accessibilityIdentifier];
                }

                v33 = 1;
                objc_storeStrong(&v28, 0);
                goto LABEL_55;
              }

              v36 = MEMORY[0x29EDC9748](@"more");
            }
          }
        }
      }
    }
  }

LABEL_55:
  v8 = v36;

  return v8;
}

- (uint64_t)_axIsShifted
{
  v7 = a1;
  if (a1)
  {
    location = [MEMORY[0x29EDC7B08] sharedInstance];
    v4 = 0;
    v3 = 1;
    if (([location isShifted] & 1) == 0)
    {
      LOBYTE(v2) = 0;
      if ([location isShiftLocked])
      {
        v5 = [(UIAccessibilityElementKBKey *)v7 _axLayoutStar];
        v4 = 1;
        v2 = [v5 safeBoolForKey:@"isShiftKeyBeingHeld"] ^ 1;
      }

      v3 = v2;
    }

    v8 = v3 & 1;
    if (v4)
    {
      MEMORY[0x29EDC9740](v5);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_accessibilityLabel
{
  v254 = a1;
  if (!a1)
  {
    v255 = 0;
    goto LABEL_273;
  }

  v253 = 0;
  v252 = 0;
  location = 0;
  v250 = 0;
  v198 = MEMORY[0x29EDB8DE0];
  v201 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v200 = [v201 currentInputMode];
  v199 = [v200 primaryLanguage];
  v202 = [v198 characterDirectionForLanguage:?] == 2;
  MEMORY[0x29EDC9740](v199);
  MEMORY[0x29EDC9740](v200);
  MEMORY[0x29EDC9740](v201);
  v249 = v202;
  if (v254[6])
  {
    if (([(UIAccessibilityElementKBKey *)v254 _axIsDictationKey]& 1) != 0)
    {
      v255 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
      v248 = 1;
      goto LABEL_272;
    }

    v247 = [v254[6] name];
    v246 = [v254[6] variantType];
    v245 = 0;
    if ([v247 isEqualToString:@"NumberPad-Delete"])
    {
      v253 = 1;
      v1 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
      v2 = location;
      location = v1;
      v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Delete-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"Monolith-Linear-Delete-Key"))
    {
      v252 = 1;
      v253 = 1;
      v197 = [v254[6] properties];
      v4 = [v197 valueForKey:*MEMORY[0x29EDC8148]];
      v5 = location;
      location = v4;
      MEMORY[0x29EDC9740](v5);
      v3 = MEMORY[0x29EDC9740](v197).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Double-Em-Dash"])
    {
      v253 = 1;
      v6 = accessibilityLocalizedString(@"double.em.dash.key");
      v7 = location;
      location = v6;
      v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Double-Horizontal-Ellipsis"])
    {
      v253 = 1;
      v8 = accessibilityLocalizedString(@"double.ellipsis.dash.key");
      v9 = location;
      location = v8;
      v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Cut-Key"])
    {
      v253 = 1;
      v10 = accessibilityLocalizedString(@"cut.keyboard.key");
      v11 = location;
      location = v10;
      v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Copy-Key"])
    {
      v253 = 1;
      v12 = accessibilityLocalizedString(@"copy.keyboard.key");
      v13 = location;
      location = v12;
      v3 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Paste-Key"])
    {
      v253 = 1;
      v14 = accessibilityLocalizedString(@"paste.keyboard.key");
      v15 = location;
      location = v14;
      v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Hebrew-Accents"])
    {
      v253 = 1;
      v16 = accessibilityLocalizedString(@"hebrew.accents.key");
      v17 = location;
      location = v16;
      v3 = MEMORY[0x29EDC9740](v17).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Bold-Key"])
    {
      v253 = 1;
      v18 = accessibilityLocalizedString(@"bold.keyboard.key");
      v19 = location;
      location = v18;
      v3 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Undo-Key"])
    {
      v253 = 1;
      v20 = accessibilityLocalizedString(@"undo.keyboard.key");
      v21 = location;
      location = v20;
      v3 = MEMORY[0x29EDC9740](v21).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Roman-to-Non-Roman-Switch-Key"])
    {
      v253 = 1;
      v22 = accessibilityLocalizedString(@"switch.back.to.non.roman.key");
      v23 = location;
      location = v22;
      v3 = MEMORY[0x29EDC9740](v23).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Non-Roman-to-Roman-Switch-Key"])
    {
      v253 = 1;
      v24 = accessibilityLocalizedString(@"switch.to.roman.key");
      v25 = location;
      location = v24;
      v3 = MEMORY[0x29EDC9740](v25).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"BIU-Key"])
    {
      v253 = 1;
      v26 = accessibilityLocalizedString(@"biu.keyboard.key");
      v27 = location;
      location = v26;
      v3 = MEMORY[0x29EDC9740](v27).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Left-Arrow-Key"])
    {
      v253 = 1;
      v28 = accessibilityLocalizedString(@"left.arrow.keyboard.key");
      v29 = location;
      location = v28;
      v3 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Right-Arrow-Key"])
    {
      v253 = 1;
      v30 = accessibilityLocalizedString(@"right.arrow.keyboard.key");
      v31 = location;
      location = v30;
      v3 = MEMORY[0x29EDC9740](v31).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Redo-Key"])
    {
      v253 = 1;
      v32 = accessibilityLocalizedString(@"redo.keyboard.key");
      v33 = location;
      location = v32;
      v3 = MEMORY[0x29EDC9740](v33).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Emoji"])
    {
      v253 = 1;
      v34 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
      v35 = location;
      location = v34;
      v3 = MEMORY[0x29EDC9740](v35).n128_u64[0];
      goto LABEL_165;
    }

    if ([v254 _accessibilityIsInternationalKeyboardKey])
    {
      v253 = 1;
      if (([(UIAccessibilityElementKBKey *)v254 _axDisplaysGlobeKeyAsEmojiKey]& 1) != 0)
      {
        v36 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
      }

      else
      {
        v36 = accessibilityLocalizedString(@"global.keyboard.key");
      }

      v37 = location;
      location = v36;
      v3 = MEMORY[0x29EDC9740](v37).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"Handwriting-Input"])
    {
      v253 = 1;
      v38 = accessibilityLocalizedString(@"handwriting.input.area");
      v39 = location;
      location = v38;
      v3 = MEMORY[0x29EDC9740](v39).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"FiftyOn-Fullwidth-Left-And-Right-Corner-Bracket-Right"])
    {
      v253 = 1;
      v40 = accessibilityLocalizedString(@"parentheses");
      v41 = location;
      location = v40;
      v3 = MEMORY[0x29EDC9740](v41).n128_u64[0];
      goto LABEL_165;
    }

    if ([v247 isEqualToString:@"FiftyOn-SymbolNumber-Keyplane-Switch-Key"])
    {
LABEL_69:
      v252 = 1;
      v253 = 1;
      v56 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
      v57 = location;
      location = v56;
      v3 = MEMORY[0x29EDC9740](v57).n128_u64[0];
      goto LABEL_165;
    }

    if (([v247 isEqualToString:@"TenKey-Alphabet-Keyplane-Switch-Key"] & 1) == 0)
    {
      if ([v247 isEqualToString:@"FiftyOn-Kana-Keyplane-Switch-Key"])
      {
        v252 = 1;
        v253 = 1;
        v44 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
        v45 = location;
        location = v44;
        v3 = MEMORY[0x29EDC9740](v45).n128_u64[0];
        goto LABEL_165;
      }

      if ([v247 isEqualToString:@"TenKey-Pinyin-Keyplane-Switch-Key"])
      {
        v252 = 1;
        v253 = 1;
        v46 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
        v47 = location;
        location = v46;
        v3 = MEMORY[0x29EDC9740](v47).n128_u64[0];
        goto LABEL_165;
      }

      if ([v247 isEqualToString:@"Multitap-Complete-Key"])
      {
        v253 = 1;
        v48 = accessibilityLocalizedString(@"keyboard.complete.key");
        v49 = location;
        location = v48;
        v3 = MEMORY[0x29EDC9740](v49).n128_u64[0];
        goto LABEL_165;
      }

      if ([v247 isEqualToString:@"Multitap-Reverse-Key"])
      {
        v253 = 1;
        v50 = accessibilityLocalizedString(@"keyboard.reverse.key");
        v51 = location;
        location = v50;
        v3 = MEMORY[0x29EDC9740](v51).n128_u64[0];
        goto LABEL_165;
      }

      if ([v247 isEqualToString:@"TenKey-Case-Swap"])
      {
        v252 = 1;
        v253 = 1;
        v52 = accessibilityLocalizedString(@"keyboard.case.swap.key");
        v53 = location;
        location = v52;
        v3 = MEMORY[0x29EDC9740](v53).n128_u64[0];
        goto LABEL_165;
      }

      if ([v247 isEqualToString:@"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation"])
      {
        v252 = 1;
        v253 = 1;
        v54 = accessibilityLocalizedString(@"keyboard.voice.sound.mark.key");
        v55 = location;
        location = v54;
        v3 = MEMORY[0x29EDC9740](v55).n128_u64[0];
        goto LABEL_165;
      }

      if ([v247 hasSuffix:@"TenKey-Alphabet-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(v247, "hasSuffix:", @"SymbolNumber-Keyplane-Switch-Key"))
      {
        goto LABEL_69;
      }

      if (([v247 hasSuffix:@"Alphabet-Keyplane-Switch-Key"] & 1) == 0)
      {
        if ([v247 hasSuffix:@"Monolith-Clear-Key"])
        {
          v252 = 1;
          v253 = 1;
          v58 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v59 = location;
          location = v58;
          v3 = MEMORY[0x29EDC9740](v59).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"Monolith-Capital-Letters-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v60 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v61 = location;
          location = v60;
          v3 = MEMORY[0x29EDC9740](v61).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"Monolith-Small-Letters-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v62 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v63 = location;
          location = v62;
          v3 = MEMORY[0x29EDC9740](v63).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"Monolith-Numbers-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v64 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v65 = location;
          location = v64;
          v3 = MEMORY[0x29EDC9740](v65).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"Monolith-Punctuation-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v66 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v67 = location;
          location = v66;
          v3 = MEMORY[0x29EDC9740](v67).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"Monolith-Recents-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v68 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v69 = location;
          location = v68;
          v3 = MEMORY[0x29EDC9740](v69).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"More-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"NumberPad-More"))
        {
          v253 = 1;
          v195 = [(UIAccessibilityElementKBKey *)v254 _axLayoutStar];
          v194 = [v195 safeValueForKey:@"displayTypeHintForMoreKey"];
          v196 = [v194 intValue];
          MEMORY[0x29EDC9740](v194);
          MEMORY[0x29EDC9740](v195);
          v244 = v196;
          switch(v196)
          {
            case 1:
              v70 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v71 = location;
              location = v70;
              v3 = MEMORY[0x29EDC9740](v71).n128_u64[0];
              break;
            case 2:
              v72 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v73 = location;
              location = v72;
              v3 = MEMORY[0x29EDC9740](v73).n128_u64[0];
              break;
            case 3:
              v74 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v75 = location;
              location = v74;
              v3 = MEMORY[0x29EDC9740](v75).n128_u64[0];
              break;
            case 4:
              v76 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v77 = location;
              location = v76;
              v3 = MEMORY[0x29EDC9740](v77).n128_u64[0];
              break;
            case 5:
              v78 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v79 = location;
              location = v78;
              v3 = MEMORY[0x29EDC9740](v79).n128_u64[0];
              break;
            default:
              objc_storeStrong(&location, 0);
              break;
          }

          if (!location)
          {
            v80 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
            v81 = location;
            location = v80;
            v3 = MEMORY[0x29EDC9740](v81).n128_u64[0];
          }

          v252 = 1;
        }

        else if ([v247 hasSuffix:@"Shift-Key"])
        {
          v253 = 1;
          v192 = [(UIAccessibilityElementKBKey *)v254 _axLayoutStar];
          v191 = [v192 safeValueForKey:@"displayTypeHintForShiftKey"];
          v193 = [v191 intValue];
          MEMORY[0x29EDC9740](v191);
          MEMORY[0x29EDC9740](v192);
          v243 = v193;
          switch(v193)
          {
            case 1:
              v82 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v83 = location;
              location = v82;
              v3 = MEMORY[0x29EDC9740](v83).n128_u64[0];
              break;
            case 2:
              v84 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v85 = location;
              location = v84;
              v3 = MEMORY[0x29EDC9740](v85).n128_u64[0];
              break;
            case 3:
              v86 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
              v87 = location;
              location = v86;
              v3 = MEMORY[0x29EDC9740](v87).n128_u64[0];
              break;
            default:
              objc_storeStrong(&location, 0);
              break;
          }

          if (!location)
          {
            v88 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
            v89 = location;
            location = v88;
            v3 = MEMORY[0x29EDC9740](v89).n128_u64[0];
          }

          v252 = 1;
        }

        else if ([v247 isEqualToString:@"Space-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"Unlabeled-Space-Key") & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"TenKey-Number-To-Number-Alternative-Keyplane-Switch-Key") & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"TenKey-Number-Alternative-To-Number-Keyplane-Switch-Key") & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"Monolith-Space-Key") & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"Monolith-Linear-Space-Key"))
        {
          v190 = [v254[6] properties];
          v242 = [v190 valueForKey:*MEMORY[0x29EDC8148]];
          if ([v242 length])
          {
            objc_storeStrong(&location, v242);
          }

          else
          {
            v253 = 1;
            v90 = accessibilityLocalizedString(@"spacebar.key");
            v91 = location;
            location = v90;
            MEMORY[0x29EDC9740](v91);
          }

          v245 = 1;
          objc_storeStrong(&v242, 0);
        }

        else if ([v247 isEqualToString:@"Return-Key"])
        {
          v241 = [v254[6] displayString];
          if ([v241 isEqualToString:@"⏎"] & 1) != 0 || (objc_msgSend(v241, "isEqualToString:", @"⮑") & 1) != 0 || (objc_msgSend(v241, "isEqualToString:", @"⮐"))
          {
            v253 = 1;
            v92 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
            v93 = location;
            location = v92;
            MEMORY[0x29EDC9740](v93);
          }

          objc_storeStrong(&v241, 0);
        }

        else if ([v247 isEqualToString:@"Dismiss-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"Dismiss-HWR-Key"))
        {
          v253 = 1;
          v94 = accessibilityLocalizedString(@"keyboard.dismiss.key.default");
          v95 = location;
          location = v94;
          v3 = MEMORY[0x29EDC9740](v95).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Chinese-Facemark"])
        {
          v253 = 1;
          v96 = accessibilityLocalizedString(@"face.marks.keyboard.button");
          v97 = location;
          location = v96;
          v3 = MEMORY[0x29EDC9740](v97).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Wubihua-Letter-WildCard"])
        {
          v253 = 1;
          v98 = accessibilityLocalizedString(@"keyboard.key.chinese.stroke.wildcard");
          v99 = location;
          location = v98;
          v3 = MEMORY[0x29EDC9740](v99).n128_u64[0];
        }

        else if ([v247 hasSuffix:@"Chinese10Key-Ideographic-Comma-Fullwidth-Question-Mark-Exclamation-Mark"] & 1) != 0 || (objc_msgSend(v247, "hasSuffix:", @"Period-Comma-Question-Mark-Exclamation-Mark"))
        {
          v253 = 1;
          v100 = accessibilityLocalizedString(@"keyboard.key.chinese.stroke.punctuation");
          v101 = location;
          location = v100;
          v3 = MEMORY[0x29EDC9740](v101).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Japanese-50on-Emoji"])
        {
          v253 = 1;
          v102 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
          v103 = location;
          location = v102;
          v3 = MEMORY[0x29EDC9740](v103).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"TenKey-Fullwidth-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"TenKey-Wubihua-Fullwidth-Keyplane-Switch-Key"))
        {
          v253 = 1;
          v104 = accessibilityLocalizedString(@"keyboard.chinese.fullwidth.toggle");
          v105 = location;
          location = v104;
          v3 = MEMORY[0x29EDC9740](v105).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"TenKey-Fullwidth-SymbolNumber-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"TenKey-Wubihua-Fullwidth-SymbolNumber-Keyplane-Switch-Key"))
        {
          v253 = 1;
          v106 = accessibilityLocalizedString(@"keyboard.chinese.regularwidth.toggle");
          v107 = location;
          location = v106;
          v3 = MEMORY[0x29EDC9740](v107).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Wubihua-Facemark"])
        {
          v253 = 1;
          v108 = accessibilityLocalizedString(@"keyboard.emoticon.key");
          v109 = location;
          location = v108;
          v3 = MEMORY[0x29EDC9740](v109).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"TenKey-Wubihua-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(v247, "isEqualToString:", @"TenKey-Wubihua-Stroke-Keyplane-Switch-Key"))
        {
          v110 = [v254[6] displayString];
          v111 = location;
          location = v110;
          v3 = MEMORY[0x29EDC9740](v111).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Cangjie-Letter-Z"])
        {
          objc_storeStrong(&location, @"蟲");
        }

        else if ([v247 isEqualToString:@"Ampersand"])
        {
          if (AXRequestingClient() != 15)
          {
            v253 = 1;
            v112 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
            v113 = location;
            location = v112;
            v3 = MEMORY[0x29EDC9740](v113).n128_u64[0];
          }
        }

        else if (v246 == 5)
        {
          v188 = [v254[6] representedString];
          v187 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
          v186 = [v188 stringByTrimmingCharactersInSet:?];
          v189 = [v186 length];
          MEMORY[0x29EDC9740](v186);
          MEMORY[0x29EDC9740](v187);
          v3 = MEMORY[0x29EDC9740](v188).n128_u64[0];
          if (!v189)
          {
            v253 = 1;
            v114 = accessibilityLocalizedString(@"keyboard.key.accents");
            v115 = location;
            location = v114;
            v3 = MEMORY[0x29EDC9740](v115).n128_u64[0];
          }
        }

        else if ([v247 isEqualToString:@"Tab-Key"])
        {
          v253 = 1;
          v116 = accessibilityLocalizedString(@"keyboard.tab.key");
          v117 = location;
          location = v116;
          v3 = MEMORY[0x29EDC9740](v117).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Caps-Lock-Key"])
        {
          v253 = 1;
          v118 = accessibilityLocalizedString(@"caps.lock");
          v119 = location;
          location = v118;
          v3 = MEMORY[0x29EDC9740](v119).n128_u64[0];
        }

        else if ([v247 isEqualToString:@"Writeboard-Key"])
        {
          v253 = 1;
          v120 = accessibilityLocalizedString(@"keyboard.writeboard.key");
          v121 = location;
          location = v120;
          v3 = MEMORY[0x29EDC9740](v121).n128_u64[0];
        }

LABEL_165:
        if (![location length])
        {
          v250 = [(UIAccessibilityElementKBKey *)v254 _axIsShifted];
          if ([v254[6] displayType] == 7)
          {
            [(UIAccessibilityElementKBKey *)v254 setChangesOnShiftDown:?];
            v122 = [(UIAccessibilityElementKBKey *)v254 _axDualStringLabel];
            v123 = location;
            location = v122;
            MEMORY[0x29EDC9740](v123);
          }
        }

        if (![location length] || (v245 & 1) != 0)
        {
          v240 = [v254[6] overrideDisplayString];
          if ([v240 length])
          {
            objc_storeStrong(&location, v240);
            v253 = 0;
          }

          objc_storeStrong(&v240, 0);
        }

        if ([location length])
        {
          goto LABEL_213;
        }

        v238 = 0;
        objc_opt_class();
        v185 = [v254[6] displayString];
        v237 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v185);
        v236 = MEMORY[0x29EDC9748](v237);
        objc_storeStrong(&v237, 0);
        v239 = v236;
        v234 = 0;
        objc_opt_class();
        v184 = [v254[6] representedString];
        v233 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v184);
        v232 = MEMORY[0x29EDC9748](v233);
        objc_storeStrong(&v233, 0);
        v235 = v232;
        if ([v247 hasPrefix:@"TenKey-Latin"] & 1) != 0 || (objc_msgSend(v247, "hasPrefix:", @"TenKey-At") & 1) != 0 || (objc_msgSend(v247, "hasPrefix:", @"TenKey-Period") & 1) != 0 || (objc_msgSend(v247, "hasPrefix:", @"TenKey-Chinese-Pinyin"))
        {
          v231 = [MEMORY[0x29EDBA050] string];
          v230 = [v239 length];
          for (i = 0; i < v230; ++i)
          {
            v261 = i;
            v260 = 1;
            v262 = i;
            v263 = 1;
            obj[1] = i;
            obj[2] = 1;
            v183 = [v239 substringWithRange:{i, 1}];
            [v231 appendFormat:@"%@ ", v183];
            MEMORY[0x29EDC9740](v183);
          }

          objc_storeStrong(&v235, v231);
          v181 = [v254[6] name];
          v182 = [v181 hasPrefix:@"TenKey-Period"];
          *&v124 = MEMORY[0x29EDC9740](v181).n128_u64[0];
          if (v182)
          {
            obj[0] = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v235, v124}];
            v180 = MEMORY[0x29EDB8EB0];
            [obj[0] setAttribute:? forKey:?];
            [obj[0] setAttribute:v180 forKey:*MEMORY[0x29EDBD930]];
            objc_storeStrong(&v235, obj[0]);
            objc_storeStrong(obj, 0);
          }

          objc_storeStrong(&v231, 0);
        }

        else if ([v247 hasSuffix:@"10Key-Keyplane-Switch-Key"])
        {
          objc_storeStrong(&v235, v239);
        }

        else if ([v247 hasPrefix:@"Hebrew-Accents"])
        {
          objc_storeStrong(&v239, v235);
        }

        if ([v235 length] && (objc_msgSend(v239, "isEqualToString:", v235) & 1) == 0 && !-[UIAccessibilityElementKBKey isButtonType](v254) && !v249)
        {
          objc_storeStrong(&v239, v235);
          if ([v239 length] == 1 && objc_msgSend(v239, "characterAtIndex:", 0) == 9787)
          {
            v255 = accessibilityLocalizedString(@"face.marks.keyboard.button");
            v248 = 1;
            goto LABEL_212;
          }

          if ([v247 isEqualToString:@"Wubihua-Letter-ExactMatch"])
          {
            v125 = [v254[6] displayString];
            v126 = v239;
            v239 = v125;
            MEMORY[0x29EDC9740](v126);
          }
        }

        if (v239)
        {
          if ([(UIAccessibilityElementKBKey *)v254 allowsCaseChangeOnShift])
          {
            if ([v239 length])
            {
              v226 = [v239 rangeOfComposedCharacterSequenceAtIndex:0];
              v227 = v127;
              if (v127 == [v239 length])
              {
                [(UIAccessibilityElementKBKey *)v254 setChangesOnShiftDown:?];
                if (v250)
                {
                  v128 = [v239 uppercaseString];
                }

                else
                {
                  v128 = [v239 lowercaseString];
                }

                v129 = v239;
                v239 = v128;
                MEMORY[0x29EDC9740](v129);
              }
            }
          }

          v178 = [v254[6] name];
          v179 = [v178 hasPrefix:@"NumberPad"];
          v130 = MEMORY[0x29EDC9740](v178).n128_u64[0];
          if (v179)
          {
            v224 = [v239 rangeOfString:{@"/", *&v130}];
            v225 = v131;
            if (v224 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v132 = [v239 substringToIndex:v224];
              v133 = location;
              location = v132;
              v130 = MEMORY[0x29EDC9740](v133).n128_u64[0];
            }
          }

          if (![location length])
          {
            objc_storeStrong(&location, v239);
          }
        }

        v248 = 0;
LABEL_212:
        objc_storeStrong(&v235, 0);
        objc_storeStrong(&v239, 0);
        if (v248)
        {
LABEL_271:
          objc_storeStrong(&v247, 0);
          goto LABEL_272;
        }

LABEL_213:
        if (![location length])
        {
          v223 = [v254[6] variantDisplayString];
          if (v223)
          {
            objc_storeStrong(&location, v223);
          }

          objc_storeStrong(&v223, 0);
        }

        v175 = [MEMORY[0x29EDC7B18] sharedInputModeController];
        v222 = [v175 currentInputMode];
        v176 = [v222 primaryLanguage];
        v177 = [v176 _containsSubstring:@"zh"];
        v134 = MEMORY[0x29EDC9740](v176).n128_u64[0];
        if (v177)
        {
          v173 = [v222 identifier];
          v174 = [v173 _containsSubstring:@"Wubihua"];
          *&v135 = MEMORY[0x29EDC9740](v173).n128_u64[0];
          if (v174)
          {
            v221 = 0;
            v171 = [v222 primaryLanguage];
            v219 = 0;
            v172 = 1;
            if ([v171 compare:@"zh-hant" options:1])
            {
              v220 = [v222 primaryLanguage];
              v219 = 1;
              v172 = [v220 compare:@"zh_hant" options:1] == 0;
            }

            if (v219)
            {
              MEMORY[0x29EDC9740](v220);
            }

            *&v136 = MEMORY[0x29EDC9740](v171).n128_u64[0];
            if (v172)
            {
              v137 = _TraditionalStrokeDictionary();
              v138 = v221;
              v221 = v137;
              v139 = MEMORY[0x29EDC9740](v138).n128_u64[0];
            }

            else
            {
              v169 = [v222 primaryLanguage];
              v217 = 0;
              v170 = 1;
              if ([v169 compare:@"zh-hans" options:1])
              {
                v218 = [v222 primaryLanguage];
                v217 = 1;
                v170 = [v218 compare:@"zh_hans" options:1] == 0;
              }

              if (v217)
              {
                MEMORY[0x29EDC9740](v218);
              }

              v139 = MEMORY[0x29EDC9740](v169).n128_u64[0];
              if (v170)
              {
                v140 = _SimplifiedStrokeDictionary();
                v141 = v221;
                v221 = v140;
                v139 = MEMORY[0x29EDC9740](v141).n128_u64[0];
              }
            }

            v216 = [v221 objectForKey:{location, *&v139}];
            if ([v216 length])
            {
              objc_storeStrong(&location, v216);
            }

            objc_storeStrong(&v216, 0);
            objc_storeStrong(&v221, 0);
          }

          else
          {
            v167 = [v222 identifier];
            v168 = [v167 _containsSubstring:@"Zhuyin"];
            v134 = MEMORY[0x29EDC9740](v167).n128_u64[0];
            if (v168)
            {
              v215 = 0;
              v165 = [v222 primaryLanguage];
              v213 = 0;
              v166 = 1;
              if ([v165 compare:@"zh-hant" options:1])
              {
                v214 = [v222 primaryLanguage];
                v213 = 1;
                v166 = [v214 compare:@"zh_hant" options:1] == 0;
              }

              if (v213)
              {
                MEMORY[0x29EDC9740](v214);
              }

              v142 = MEMORY[0x29EDC9740](v165).n128_u64[0];
              if (v166)
              {
                v143 = _ZhuyinTraditionalStrokeDictionary();
                v144 = v215;
                v215 = v143;
                v142 = MEMORY[0x29EDC9740](v144).n128_u64[0];
              }

              v212 = [v215 objectForKey:{location, *&v142}];
              if ([v212 length])
              {
                objc_storeStrong(&location, v212);
              }

              objc_storeStrong(&v212, 0);
              objc_storeStrong(&v215, 0);
            }
          }
        }

        v211 = 0;
        if (([location isAXAttributedString] & 1) == 0 && location)
        {
          v145 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:location];
          v146 = v211;
          v211 = v145;
          MEMORY[0x29EDC9740](v146);
        }

        else
        {
          objc_storeStrong(&v211, location);
        }

        v210 = [(UIAccessibilityElementKBKey *)v254 _accessibilityWasForcedToUseForeignKB];
        if ((v253 & 1) != 0 || ![location length])
        {
          if ((v252 & 1) != 0 && !v210)
          {
            v204 = [v222 primaryLanguage];
            v151 = MEMORY[0x29ED3D240](v204);
            v152 = v204;
            v204 = v151;
            if ([v151 length])
            {
              [v211 setAttribute:v204 forKey:*MEMORY[0x29EDBD918]];
            }

            objc_storeStrong(&v204, 0);
          }
        }

        else
        {
          v148 = [location length];
          v257 = 0;
          v256 = v148;
          v258 = 0;
          v259 = v148;
          v208 = 0;
          v209 = v148;
          if (![(UIAccessibilityElementKBKey *)v254 isButtonType]&& v209 == 1)
          {
            v163 = v211;
            v164 = [MEMORY[0x29EDBA070] numberWithBool:1];
            [v163 setAttribute:? forKey:? withRange:?];
            MEMORY[0x29EDC9740](v164);
          }

          v161 = [v254 accessibilityLanguage];
          v162 = [v161 length];
          v147 = MEMORY[0x29EDC9740](v161).n128_u64[0];
          if (!v162)
          {
            v158 = [MEMORY[0x29EDC7B08] sharedInstance];
            v157 = [v158 textInputTraits];
            v159 = [v157 keyboardType];
            MEMORY[0x29EDC9740](v157);
            v147 = MEMORY[0x29EDC9740](v158).n128_u64[0];
            v207 = v159;
            v160 = 1;
            if (v159 != 5)
            {
              v160 = 1;
              if (v207 != 4)
              {
                v160 = v207 == 8;
              }
            }

            v206 = v160;
            if (!v160 && !v210)
            {
              v205 = [v222 primaryLanguage];
              v149 = MEMORY[0x29ED3D240](v205);
              v150 = v205;
              v205 = v149;
              if ([v149 length])
              {
                [v211 setAttribute:v205 forKey:*MEMORY[0x29EDBD918] withRange:{v208, v209}];
              }

              objc_storeStrong(&v205, 0);
            }
          }
        }

        v203[0] = 0;
        v203[1] = 0;
        v155 = [v211 attributesAtIndex:0 effectiveRange:{v203, *&v147}];
        v156 = [v155 count];
        MEMORY[0x29EDC9740](v155);
        if (v156)
        {
          objc_storeStrong(&location, v211);
        }

        v255 = MEMORY[0x29EDC9748](location);
        v248 = 1;
        objc_storeStrong(&v211, 0);
        objc_storeStrong(&v222, 0);
        goto LABEL_271;
      }
    }

    v252 = 1;
    v253 = 1;
    v42 = [(UIAccessibilityElementKBKey *)v254 _accessibilityLocalizedStringForKeyboardLocale:?];
    v43 = location;
    location = v42;
    v3 = MEMORY[0x29EDC9740](v43).n128_u64[0];
    goto LABEL_165;
  }

  v255 = 0;
  v248 = 1;
LABEL_272:
  objc_storeStrong(&location, 0);
LABEL_273:
  v153 = v255;

  return v153;
}

- (uint64_t)setChangesOnShiftDown:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2 & 1;
  }

  return result;
}

- (id)_axDualStringLabel
{
  v28 = a1;
  if (a1)
  {
    v27[8] = 0;
    *v27 = [(UIAccessibilityElementKBKey *)v28 _axIsShifted];
    v26 = [MEMORY[0x29EDC7B08] sharedInstance];
    if (([v26 isShiftLocked] & 1) == 0 || (v20 = 1, (-[UIAccessibilityElementKBKey isUnaffectedByShiftLock](v28) & 1) == 0))
    {
      v20 = 1;
      if (([v26 isAutoShifted] & 1) == 0)
      {
        v20 = v27[0] ^ 1;
      }
    }

    v25 = v20 & 1;
    v18 = [v28[6] representedString];
    v19 = [v18 length];
    *&v1 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    if (v19 == 1)
    {
      if (v25)
      {
        v2 = [v28[6] representedString];
        v3 = *&v27[1];
        *&v27[1] = v2;
        MEMORY[0x29EDC9740](v3);
      }

      else
      {
        v24 = [v28[6] secondaryRepresentedStrings];
        if ([v24 count])
        {
          v23 = 0;
          objc_opt_class();
          v17 = [v28[6] secondaryRepresentedStrings];
          v16 = [v17 firstObject];
          v22 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](v16);
          MEMORY[0x29EDC9740](v17);
          v21 = MEMORY[0x29EDC9748](v22);
          objc_storeStrong(&v22, 0);
          v4 = *&v27[1];
          *&v27[1] = v21;
          MEMORY[0x29EDC9740](v4);
        }

        objc_storeStrong(&v24, 0);
      }
    }

    else
    {
      v14 = [v28[6] representedString];
      v15 = [v14 length];
      *&v5 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      if (v15 >= 2)
      {
        if (v25)
        {
          v13 = [v28[6] representedString];
          v35 = 0;
          v34 = 1;
          v36 = 0;
          v37 = 1;
          v6 = [v13 substringWithRange:{0, 1}];
          v7 = *&v27[1];
          *&v27[1] = v6;
          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](v13);
        }

        else
        {
          v12 = [v28[6] representedString];
          v31 = 1;
          v30 = 1;
          v32 = 1;
          v33 = 1;
          v8 = [v12 substringWithRange:{1, 1}];
          v9 = *&v27[1];
          *&v27[1] = v8;
          MEMORY[0x29EDC9740](v9);
          MEMORY[0x29EDC9740](v12);
        }
      }
    }

    v29 = MEMORY[0x29EDC9748](*&v27[1]);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27[1], 0);
  }

  else
  {
    v29 = 0;
  }

  v10 = v29;

  return v10;
}

- (BOOL)allowsCaseChangeOnShift
{
  v5 = a1;
  if (a1)
  {
    location = [*(v5 + 48) name];
    if ([location isEqualToString:@"Return-Key"])
    {
      v6 = 0;
    }

    else
    {
      v2 = [*(v5 + 48) name];
      v3 = [v2 hasPrefix:@"Latin-Small-Letter-Small-Display"];
      MEMORY[0x29EDC9740](v2);
      v6 = (v3 & 1) == 0;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    return 0;
  }

  return v6;
}

- (uint64_t)isUnaffectedByShiftLock
{
  v5 = a1;
  if (a1)
  {
    v2 = [(UIAccessibilityElementKBKey *)v5 key];
    location = [v2 name];
    v3 = 1;
    if (([location isEqualToString:{@"Comma-With-Exclamation-Mark", MEMORY[0x29EDC9740](v2).n128_f64[0]}] & 1) == 0)
    {
      v3 = [location isEqualToString:@"Full-Stop-With-Question-Mark"];
    }

    v6 = v3 & 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_applyCapitalLetterTransform
{
  v11 = a1;
  if (a1 && ([(UIAccessibilityElementKBKey *)v11 changesOnShiftDown]& 1) != 0)
  {
    v10 = [(UIAccessibilityElementKBKey *)v11 _axIsShifted];
    v9 = [v11 accessibilityUserDefinedLabel];
    if ([v9 length])
    {
      v7 = 0;
      if ([v11[6] displayType] == 7)
      {
        [(UIAccessibilityElementKBKey *)v11 setChangesOnShiftDown:?];
        v2 = [(UIAccessibilityElementKBKey *)v11 _axDualStringLabel];
        v3 = v7;
        v7 = v2;
        *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      }

      if (![v7 length])
      {
        if ([(UIAccessibilityElementKBKey *)v11 allowsCaseChangeOnShift])
        {
          if (v10)
          {
            v4 = [v9 uppercaseString];
          }

          else
          {
            v4 = [v9 lowercaseString];
          }

          v5 = v7;
          v7 = v4;
          MEMORY[0x29EDC9740](v5);
        }

        if (([v9 isAXAttributedString] & 1) != 0 && objc_msgSend(v7, "length"))
        {
          obj = [v9 copy];
          [obj replaceString:v7];
          objc_storeStrong(&v7, obj);
          objc_storeStrong(&obj, 0);
        }
      }

      if (([v7 isEqualToString:v9] & 1) == 0)
      {
        [v11 setAccessibilityLabel:v7];
      }

      objc_storeStrong(&v7, 0);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    objc_storeStrong(&v9, 0);
  }
}

- (uint64_t)changesOnShiftDown
{
  if (a1)
  {
    v2 = *(a1 + 56) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)_allowCachingAccessibilityLabel
{
  v4 = a1;
  if (a1)
  {
    v2 = [(UIAccessibilityElementKBKey *)v4 key];
    location = [v2 name];
    v5 = ([location isEqualToString:{@"TenKey-Facemark-Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation", MEMORY[0x29EDC9740](v2).n128_f64[0]}] & 1) == 0 && (objc_msgSend(location, "isEqualToString:", @"Space-Key") & 1) == 0 && (-[UIAccessibilityElementKBKey isUnaffectedByShiftLock](v4) & 1) == 0 && (objc_msgSend(location, "isEqualToString:", @"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation") & 1) == 0;
    objc_storeStrong(&location, 0);
  }

  else
  {
    return 0;
  }

  return v5;
}

- (uint64_t)key
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityLabel
{
  v5 = self;
  location[1] = a2;
  [(UIAccessibilityElementKBKey *)&self->super.super.super.isa _applyCapitalLetterTransform];
  location[0] = [(UIAccessibilityElementKBKey *)v5 accessibilityUserDefinedLabel];
  if (!location[0])
  {
    location[0] = [(UIAccessibilityElementKBKey *)&v5->super.super.super.isa _accessibilityLabel];
    MEMORY[0x29EDC9740](0);
    if ([(UIAccessibilityElementKBKey *)v5 _allowCachingAccessibilityLabel])
    {
      [(UIAccessibilityElementKBKey *)v5 setAccessibilityLabel:location[0]];
    }
  }

  v6 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (BOOL)_accessibilityKeyboardSupportsGestureMode
{
  v3 = [(UIAccessibilityElementKBKey *)self accessibilityContainer];
  v4 = [v3 _accessibilityKeyboardSupportsGestureMode];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v11 = self;
  v10 = a2;
  v7 = [(UIKBTree *)self->_key name];
  v8 = [v7 isEqualToString:@"Handwriting-Input"];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v8)
  {
    v12 = *MEMORY[0x29EDB90B8];
  }

  else
  {
    v9.receiver = v11;
    v9.super_class = UIAccessibilityElementKBKey;
    [(UIAccessibilityElementKBKey *)&v9 accessibilityActivationPoint];
    *&v12 = v3;
    *(&v12 + 1) = v4;
  }

  v6 = *(&v12 + 1);
  v5 = *&v12;
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)accessibilityHint
{
  v27 = self;
  v26[1] = a2;
  if (([(UIAccessibilityElementKBKey *)self _axIsDictationKey]& 1) != 0)
  {
    v28 = accessibilityLocalizedString(@"dictation.key.hint");
    goto LABEL_43;
  }

  v26[0] = [(UIKBTree *)v27->_key displayString];
  v25 = [(UIKBTree *)v27->_key name];
  if ([v25 hasPrefix:@"NumberPad"])
  {
    v23 = [v26[0] rangeOfString:@"/"];
    v24 = v2;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0;
      v22 = 1;
    }

    else
    {
      v3 = [v26[0] substringFromIndex:v23];
      v4 = v26[0];
      v26[0] = v3;
      v21 = [MEMORY[0x29EDB9F50] letterCharacterSet];
      v20 = [MEMORY[0x29EDBA050] string];
      v19 = 0;
      v18 = [v26[0] length];
      while (v19 < v18)
      {
        v17 = [v26[0] characterAtIndex:v19];
        if ([v21 characterIsMember:v17])
        {
          [v20 appendFormat:@"%C", v17];
          if (v19 < v18 - 1)
          {
            [v20 appendString:@"-"];
          }
        }

        ++v19;
      }

      v28 = MEMORY[0x29EDC9748](v20);
      v22 = 1;
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
    }

    goto LABEL_42;
  }

  if (([v25 isEqualToString:@"Handwriting-Input"] & 1) == 0)
  {
    v15 = 0;
    v12 = 1;
    if (([v25 isEqualToString:@"Dismiss-Key"] & 1) == 0)
    {
      v16 = [(UIKBTree *)v27->_key name];
      v15 = 1;
      v12 = [v16 isEqualToString:@"Dismiss-HWR-Key"];
    }

    if (v15)
    {
      MEMORY[0x29EDC9740](v16);
    }

    if (v12)
    {
      v10 = [(UIAccessibilityElementKBKey *)v27 accessibilityContainer];
      v11 = [v10 safeBoolForKey:@"useDismissForMessagesWriteboard"];
      MEMORY[0x29EDC9740](v10);
      if (v11)
      {
        v28 = accessibilityLocalizedString(@"keyboard.writeboard.key");
      }

      else
      {
        v28 = accessibilityLocalizedString(@"keyboard.dismiss.hint");
      }

      v22 = 1;
      goto LABEL_42;
    }

    if ([(UIAccessibilityElementKBKey *)v27 _accessibilityIsInternationalKeyboardKey])
    {
      if (([(UIAccessibilityElementKBKey *)v27 _axDisplaysGlobeKeyAsEmojiKey]& 1) == 0)
      {
        v28 = accessibilityLocalizedString(@"globe.keyboard.key.hint");
        v22 = 1;
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
      v9 = 0;
      if ([v25 hasSuffix:@"Shift-Key"])
      {
        v14 = [MEMORY[0x29EDC7B08] sharedInstance];
        v13 = 1;
        v9 = [v14 shiftLockedEnabled];
      }

      if (v13)
      {
        MEMORY[0x29EDC9740](v14);
      }

      if (v9)
      {
        v8 = [MEMORY[0x29EDC7B08] sharedInstance];
        if ([v8 isShiftLocked])
        {
          v5 = @"keyboard.turn.capslock.off.hint";
        }

        else
        {
          v5 = @"keyboard.turn.capslock.on.hint";
        }

        v28 = accessibilityLocalizedString(v5);
        MEMORY[0x29EDC9740](v8);
        v22 = 1;
        goto LABEL_42;
      }

      if ([v25 isEqualToString:@"Monolith-Linear-Delete-Key"])
      {
        v28 = accessibilityLocalizedString(@"atv.delete.keyboard.key.hint");
        v22 = 1;
        goto LABEL_42;
      }

      if ([v25 isEqualToString:@"Writeboard-Key"])
      {
        v28 = accessibilityLocalizedString(@"keyboard.writeboard.key.hint");
        v22 = 1;
        goto LABEL_42;
      }
    }

    v28 = 0;
    v22 = 1;
    goto LABEL_42;
  }

  v28 = accessibilityLocalizedString(@"handwriting.input.hint");
  v22 = 1;
LABEL_42:
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);
LABEL_43:
  v6 = v28;

  return v6;
}

- (CGRect)accessibilityFrame
{
  v20 = self;
  v19 = a2;
  if (self->_key)
  {
    v17 = [(UIAccessibilityElementKBKey *)v20 _axLayoutStar];
    [(UIKBTree *)v20->_key frame];
    rect.origin.x = v6;
    rect.origin.y = v7;
    rect.size.width = v8;
    rect.size.height = v9;
    v14 = [(UIKBTree *)v20->_key name];
    v15 = [v14 isEqualToString:@"Handwriting-Input"];
    MEMORY[0x29EDC9740](v14);
    if (v15 & 1) != 0 && (AXDeviceIsPhoneIdiom())
    {
      rect.origin.y = rect.origin.y + 30.0;
      rect.size.height = rect.size.height - 30.0;
    }

    v21 = UIAccessibilityConvertFrameToScreenCoordinates(rect, v17);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v18.receiver = v20;
    v18.super_class = UIAccessibilityElementKBKey;
    [(UIAccessibilityElementKBKey *)&v18 accessibilityFrame];
    v21.origin.x = v2;
    v21.origin.y = v3;
    v21.size.width = v4;
    v21.size.height = v5;
  }

  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

double __43__UIAccessibilityElementKBKey_isButtonType__block_invoke(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v1 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithObjects:{@"Return-Key", @"Dismiss-Key", @"Dismiss-HWR-Key", @"Tab-Key", @"Handwriting-Input", @"Emoji-International-Key", @"Emoji", @"Cut-Key", @"Copy-Key", @"Undo-Key", @"Paste-Key", @"Redo-Key", @"Shift-Key", @"BIU-Key", @"Writeboard-Key", 0}];
  v2 = isButtonType_AcceptableButtonTypes;
  isButtonType_AcceptableButtonTypes = v1;
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (uint64_t)_accessibilityIsDeleteKey
{
  v4 = a1;
  if (a1)
  {
    location = [*(v4 + 48) name];
    v2 = 1;
    if (([location isEqualToString:@"Delete-Key"] & 1) == 0)
    {
      v2 = 1;
      if (([location isEqualToString:@"NumberPad-Delete"] & 1) == 0)
      {
        v2 = [location isEqualToString:@"Monolith-Linear-Delete-Key"];
      }
    }

    v5 = v2 & 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)_accessibilityIsInternationalKeyboardKey
{
  v3 = [(UIKBTree *)self->_key name];
  v5 = 0;
  v4 = 1;
  if (([v3 isEqualToString:@"International-Key"] & 1) == 0)
  {
    v6 = [(UIKBTree *)self->_key name];
    v5 = 1;
    v4 = [v6 isEqualToString:@"Emoji-International-Key"];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  MEMORY[0x29EDC9740](v3);
  return v4 & 1;
}

- (unint64_t)accessibilityTraits
{
  v18 = self;
  v17 = a2;
  v16 = *MEMORY[0x29EDC7FB0] | *MEMORY[0x29EDC7F90];
  v15 = [(UIKBTree *)self->_key name];
  if ([(UIAccessibilityElementKBKey *)&v18->super.super.super.isa isButtonType])
  {
    v16 |= *MEMORY[0x29EDC7F70];
  }

  if (([(UIAccessibilityElementKBKey *)v18 _axIsDictationKey]& 1) != 0)
  {
    if (([(UIKBTree *)v18->_key state]& 4) != 0)
    {
      v16 |= *MEMORY[0x29EDC7FC0];
    }

    v16 |= *MEMORY[0x29EDC7FC8];
  }

  v2 = [(UIKBTree *)v18->_key disabled];
  v13 = 0;
  v10 = 1;
  if ((v2 & 1) == 0)
  {
    LOBYTE(v9) = 0;
    if ([v15 isEqualToString:@"Return-Key"])
    {
      v14 = [MEMORY[0x29EDC7B08] sharedInstance];
      v13 = 1;
      v9 = [v14 returnKeyEnabled] ^ 1;
    }

    v10 = v9;
  }

  if (v13)
  {
    MEMORY[0x29EDC9740](v14);
  }

  if (v10)
  {
    v16 |= *MEMORY[0x29EDC7FA8];
  }

  if (([(UIAccessibilityElementKBKey *)v18 _accessibilityIsDeleteKey]& 1) != 0)
  {
    v16 |= *MEMORY[0x29EDC7508];
  }

  if (([(UIKBTree *)v18->_key visible]& 1) == 0)
  {
    v16 |= *MEMORY[0x29EDC7578];
  }

  if ([v15 hasSuffix:@"Shift-Key"])
  {
    v7 = [(UIAccessibilityElementKBKey *)v18 _axLayoutStar];
    v6 = [v7 safeValueForKey:@"displayTypeHintForShiftKey"];
    v8 = [v6 intValue];
    MEMORY[0x29EDC9740](v6);
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v12 = v8;
    if (!v8)
    {
      location = [MEMORY[0x29EDC7B08] sharedInstance];
      if ([location isShifted])
      {
        v16 |= *MEMORY[0x29EDC7FC0];
      }

      objc_storeStrong(&location, 0);
    }
  }

  else if ([v15 isEqualToString:@"Handwriting-Input"])
  {
    v16 |= *MEMORY[0x29EDC7F68];
  }

  if (([UIAccessibilityElementKBKey _accessibilityIsKeySelected]& 1) != 0)
  {
    v16 |= *MEMORY[0x29EDC7FC0];
  }

  v5 = v16;
  objc_storeStrong(&v15, 0);
  return v5;
}

- (id)_accessibilityVariantKeys
{
  v4 = [(UIAccessibilityElementKBKey *)self cachedVariantKeys];
  v5 = [v4 count];
  MEMORY[0x29EDC9740](v4);
  if (!v5)
  {
    v3 = [UIAccessibilityElementKBKey variantKeysForKey:?];
    [(UIAccessibilityElementKBKey *)self setCachedVariantKeys:v3];
    MEMORY[0x29EDC9740](v3);
  }

  return [(UIAccessibilityElementKBKey *)self cachedVariantKeys];
}

- (uint64_t)cachedVariantKeys
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

+ (id)variantKeysForKey:(void *)a1
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v20 = objc_opt_self();
  v18 = [location subtrees];
  v17 = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v18);
  v13 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v10);
      if ([v16 displayType] != 50)
      {
        v6 = [UIAccessibilityElementKBKey alloc];
        v7 = UIAccessibilityGetKeyboardLayoutStar();
        v14 = [(UIAccessibilityElementKBKey *)v6 initWithAccessibilityContainer:v7 key:v16];
        *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
        [v17 addObject:{v14, v2}];
        objc_storeStrong(&v14, 0);
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  [v20 _accessibilitySortElementsUsingGeometry:{v17, v3}];
  v5 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

- (void)setCachedVariantKeys:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (BOOL)_accessibilityHasVariantKeys
{
  v7 = self;
  v6 = a2;
  v5 = 0;
  v4 = [(UIKBTree *)self->_key variantType];
  if (v4 == 1 || v4 == 3 || v4 == 7 || v4 == 4 || v4 == 5 || v4 == 8)
  {
    v5 = 1;
  }

  else
  {
    v3 = UIAccessibilityGetKeyboardLayoutStar();
    v5 = [v3 keyHasAccentedVariants:v7->_key];
    objc_storeStrong(&v3, 0);
  }

  return v5 & 1;
}

- (id)_accessibilitySupportGesturesAttributes
{
  v10[1] = *MEMORY[0x29EDCA608];
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  if (([(UIAccessibilityElementKBKey *)self _accessibilityIsDeleteKey]& 1) != 0)
  {
    v8[0] = @"AXSupportedGestureTypeKey";
    v9[0] = &unk_2A238E768;
    v8[1] = @"AXGestureTapCountKey";
    v9[1] = &unk_2A238E780;
    v8[2] = @"AXGestureFingerCountKey";
    v9[2] = &unk_2A238E780;
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    v10[0] = v6;
    v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);

  return v5;
}

- (BOOL)_performCapsLockDoubleTap
{
  v8 = [MEMORY[0x29EDC7B08] sharedInstance];
  v9 = [v8 isShiftLocked];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v9)
  {
    v6 = [MEMORY[0x29EDC7B08] sharedInstance];
    [v6 setShiftLocked:0];
    v7 = [MEMORY[0x29EDC7B08] sharedInstance];
    [v7 setShift:0];
    MEMORY[0x29EDC9740](v7);
  }

  else
  {
    v4 = [MEMORY[0x29EDC7B08] sharedInstance];
    [v4 setShift:1];
    v5 = [MEMORY[0x29EDC7B08] sharedInstance];
    [v5 setShiftLocked:1];
    MEMORY[0x29EDC9740](v5);
  }

  return 1;
}

- (BOOL)_accessibilityActivatePanAlternate:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v8;
  v3 = [(UIAccessibilityPanAlternateCustomAction *)location[0] isSecondAlternate];
  v6 = [(UIAccessibilityElementKBKey *)v5 _accessibilityActivateForPanAlternate:v3 isSecondAlternate:?];
  objc_storeStrong(location, 0);
  return v6;
}

- (id)accessibilityCustomActions
{
  v21[1] = *MEMORY[0x29EDCA608];
  v19 = self;
  v18[1] = a2;
  v13 = [(UIKBTree *)self->_key name];
  v14 = [v13 hasSuffix:@"Shift-Key"];
  *&v2 = MEMORY[0x29EDC9740](v13).n128_u64[0];
  if (v14)
  {
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12 = accessibilityLocalizedString(@"caps.lock");
    v11 = [v10 initWithName:? target:? selector:?];
    v21[0] = v11;
    v20 = [MEMORY[0x29EDB8D80] arrayWithObjects:v21 count:1];
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v12);
  }

  else if ([(UIKBTree *)v19->_key displayTypeHint]== 10)
  {
    v18[0] = [MEMORY[0x29EDB8DE8] array];
    v8 = [(UIKBTree *)v19->_key secondaryRepresentedStrings];
    v9 = [v8 count];
    MEMORY[0x29EDC9740](v8);
    v17 = v9;
    for (i = 0; i < v17; ++i)
    {
      v5 = [UIAccessibilityPanAlternateCustomAction alloc];
      v7 = [(UIKBTree *)v19->_key secondaryDisplayStrings];
      v6 = [v7 objectAtIndexedSubscript:i];
      v15 = [UIAccessibilityPanAlternateCustomAction initWithName:v5 target:"initWithName:target:selector:" selector:?];
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      [(UIAccessibilityPanAlternateCustomAction *)v15 setIsSecondAlternate:?];
      [v18[0] addObject:v15];
      objc_storeStrong(&v15, 0);
    }

    v20 = MEMORY[0x29EDC9748](v18[0]);
    objc_storeStrong(v18, 0);
  }

  else
  {
    v20 = 0;
  }

  v3 = v20;

  return v3;
}

- (BOOL)_accessibilityKeyboardKeyHasSignificantAlternateActions
{
  v3 = [(UIKBTree *)self->_key name];
  v4 = 1;
  if (([v3 hasSuffix:@"Shift-Key"] & 1) == 0)
  {
    v4 = [(UIAccessibilityElementKBKey *)self _accessibilityIsDeleteKey];
  }

  MEMORY[0x29EDC9740](v3);
  return v4 & 1;
}

- (BOOL)_accessibilityKeyboardKeyCanStartContinuousPath
{
  v19 = self;
  v18[1] = a2;
  v17 = 0;
  objc_opt_class();
  v8 = [(UIAccessibilityElementKBKey *)v19 _axLayoutStar];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  v7 = 1;
  if (([v15 isAlphabeticPlane] & 1) == 0)
  {
    v7 = [(UIAccessibilityElementKBKey *)v19 _axLayoutSupportsContinuousPath];
  }

  v6 = [MEMORY[0x29EDC7B08] activeInstance];
  v13 = 0;
  v11 = 0;
  if (([v6 usesContinuousPath] & 1) != 0 || (v5 = 0, AXRequestingClient() == 4))
  {
    v14 = [MEMORY[0x29EDC7B08] sharedInstance];
    v13 = 1;
    v12 = [v14 textInputTraits];
    v11 = 1;
    v5 = 0;
    if (([v12 isSecureTextEntry] & 1) == 0)
    {
      v5 = v7 & 1;
    }
  }

  if (v11)
  {
    MEMORY[0x29EDC9740](v12);
  }

  if (v13)
  {
    MEMORY[0x29EDC9740](v14);
  }

  MEMORY[0x29EDC9740](v6);
  v3 = [(UIAccessibilityElementKBKey *)v19 key];
  v9 = 0;
  v4 = 0;
  if ([v3 allowsStartingContinuousPath])
  {
    v10 = [(UIAccessibilityElementKBKey *)v19 key];
    v9 = 1;
    v4 = 0;
    if ([v10 interactionType] != 15)
    {
      v4 = v5 & 1;
    }
  }

  v20 = v4;
  if (v9)
  {
    MEMORY[0x29EDC9740](v10);
  }

  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v18, 0);
  return v20 & 1;
}

- (BOOL)_axLayoutSupportsContinuousPath
{
  v9 = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(UIAccessibilityElementKBKey *)v9 _axLayoutStar];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  v3 = [v5 safeBoolForKey:@"supportsContinuousPath"];
  objc_storeStrong(v8, 0);
  return v3;
}

- (void)setKey:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

@end