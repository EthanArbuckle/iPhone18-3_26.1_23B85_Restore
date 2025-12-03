@interface UIAccessibilityElementKBKey
+ (id)variantKeysForKey:(void *)key;
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityActivatePanAlternate:(id)alternate;
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
- (id)_accessibilityLocalizedStringForKeyboardLocale:(uint64_t)locale;
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
- (uint64_t)_accessibilityActivateForPanAlternate:(char)alternate isSecondAlternate:;
- (uint64_t)_accessibilityActivateForPanAlternate:(char)alternate isSecondAlternate:(char)secondAlternate isSecondaryActivate:;
- (uint64_t)_accessibilityIsDeleteKey;
- (uint64_t)_axDisplaysGlobeKeyAsEmojiKey;
- (uint64_t)_axIsDictationKey;
- (uint64_t)_axIsShifted;
- (uint64_t)cachedVariantKeys;
- (uint64_t)changesOnShiftDown;
- (uint64_t)initWithAccessibilityContainer:(void *)container key:;
- (uint64_t)isUnaffectedByShiftLock;
- (uint64_t)key;
- (uint64_t)setChangesOnShiftDown:(uint64_t)result;
- (unint64_t)accessibilityTraits;
- (void)_applyCapitalLetterTransform;
- (void)setCachedVariantKeys:(uint64_t)keys;
- (void)setKey:(uint64_t)key;
@end

@implementation UIAccessibilityElementKBKey

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

- (uint64_t)initWithAccessibilityContainer:(void *)container key:
{
  selfCopy = self;
  location = 0;
  objc_storeStrong(&location, a2);
  v8 = 0;
  objc_storeStrong(&v8, container);
  if (selfCopy)
  {
    v3 = selfCopy;
    selfCopy = 0;
    v6.receiver = v3;
    v6.super_class = UIAccessibilityElementKBKey;
    selfCopy = objc_msgSendSuper2(&v6, sel_initWithAccessibilityContainer_, location);
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      objc_storeStrong(selfCopy + 6, v8);
      v11 = MEMORY[0x29EDC9748](selfCopy);
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
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)description
{
  selfCopy = self;
  v7 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v6.receiver = self;
  v6.super_class = UIAccessibilityElementKBKey;
  v4 = [(UIAccessibilityElementKBKey *)&v6 description];
  v5 = [v3 stringWithFormat:@"%@: Key:%@", v4, selfCopy->_key];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (id)_accessibilityLocalizedStringForKeyboardLocale:(uint64_t)locale
{
  localeCopy = locale;
  location = 0;
  objc_storeStrong(&location, a2);
  if (localeCopy)
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
    name = [(UIKBTree *)self->_key name];
    v4 = 1;
    v3 = [name hasSuffix:@"Shift-Key"];
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](name);
  }

  return v3 & 1;
}

- (BOOL)isButtonType
{
  selfCopy = self;
  if (self)
  {
    v6 = &isButtonType_onceToken;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_11);
    if (*v6 != -1)
    {
      dispatch_once(v6, location);
    }

    objc_storeStrong(&location, 0);
    name = [selfCopy[6] name];
    v4 = ([isButtonType_AcceptableButtonTypes containsObject:name] & 1) != 0 || (objc_msgSend(selfCopy, "_accessibilityIsInternationalKeyboardKey") & 1) != 0 || (-[UIAccessibilityElementKBKey _axIsDictationKey](selfCopy) & 1) != 0 || objc_msgSend(selfCopy[6], "variantType") == 5;
    objc_storeStrong(&name, 0);
  }

  else
  {
    return 0;
  }

  return v4;
}

- (id)_axLayoutStar
{
  if (self)
  {
    v2 = [self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uikeyboardlayo.isa)];
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

- (uint64_t)_accessibilityActivateForPanAlternate:(char)alternate isSecondAlternate:
{
  if (self)
  {
    v4 = [(UIAccessibilityElementKBKey *)self _accessibilityActivateForPanAlternate:alternate & 1 isSecondAlternate:0 isSecondaryActivate:?]& 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_accessibilityActivateForPanAlternate:(char)alternate isSecondAlternate:(char)secondAlternate isSecondaryActivate:
{
  selfCopy = self;
  v19 = a2;
  alternateCopy = alternate;
  secondAlternateCopy = secondAlternate;
  if (self)
  {
    _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
    if (_axLayoutStar)
    {
      v5 = MEMORY[0x29EDCA5F8];
      v6 = -1073741824;
      v7 = 0;
      v8 = __107__UIAccessibilityElementKBKey__accessibilityActivateForPanAlternate_isSecondAlternate_isSecondaryActivate___block_invoke;
      v9 = &unk_29F30CF78;
      v10 = MEMORY[0x29EDC9748](_axLayoutStar);
      v11 = MEMORY[0x29EDC9748](selfCopy);
      v12 = v19 & 1;
      v13 = alternateCopy & 1;
      v14 = secondAlternateCopy & 1;
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

    objc_storeStrong(&_axLayoutStar, 0);
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
  selfCopy = self;
  if (self)
  {
    v10 = [selfCopy _accessibilityValueForKey:@"AXIsDictationKey"];
    if (v10)
    {
      v12 = [v10 BOOLValue] & 1;
      v9 = 1;
    }

    else
    {
      v8 = [selfCopy safeValueForKey:@"key"];
      properties = [v8 properties];
      v3 = [properties objectForKey:*MEMORY[0x29EDC8150]];
      v5 = [v3 intValue] == 4;
      MEMORY[0x29EDC9740](v3);
      *&v1 = MEMORY[0x29EDC9740](properties).n128_u64[0];
      v6 = selfCopy;
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
  properties = [(UIKBTree *)self->_key properties];
  v4 = [properties objectForKey:*MEMORY[0x29EDC8158]];
  MEMORY[0x29EDC9740](properties);

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

  accessibilityLabel = [(UIAccessibilityElementKBKey *)self accessibilityLabel];
  v7 = [accessibilityLabel length];
  *&v2 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
  if (!v7)
  {
    return 0;
  }

  accessibilityLabel2 = [(UIAccessibilityElementKBKey *)self accessibilityLabel];
  v8 = 0;
  v5 = 1;
  if (([accessibilityLabel2 isEqualToString:@"Padding-Left"] & 1) == 0)
  {
    accessibilityLabel3 = [(UIAccessibilityElementKBKey *)self accessibilityLabel];
    v8 = 1;
    v5 = [accessibilityLabel3 isEqualToString:@"Padding-Right"];
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](accessibilityLabel3);
  }

  MEMORY[0x29EDC9740](accessibilityLabel2);
  return (v5 & 1) == 0;
}

- (id)accessibilityValue
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_key)
  {
    v9 = 0;
    goto LABEL_13;
  }

  location[0] = [(UIKBTree *)selfCopy->_key name];
  if (([location[0] hasSuffix:@"Shift-Key"] & 1) == 0)
  {
    if ([(UIAccessibilityElementKBKey *)selfCopy _accessibilityIsInternationalKeyboardKey])
    {
      if (([(UIAccessibilityElementKBKey *)selfCopy _axDisplaysGlobeKeyAsEmojiKey]& 1) != 0)
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

  mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
  isShiftLocked = [mEMORY[0x29EDC7B08] isShiftLocked];
  MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
  if ((isShiftLocked & 1) == 0)
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
  if (self)
  {
    _axLayoutStar = [(UIAccessibilityElementKBKey *)self _axLayoutStar];
    v3 = [_axLayoutStar safeBoolForKey:@"globeKeyDisplaysAsEmojiKey"] & 1;
    MEMORY[0x29EDC9740](_axLayoutStar);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  location[1] = a2;
  name = [(UIKBTree *)self->_key name];
  v26 = [name isEqualToString:@"Return-Key"];
  *&v2 = MEMORY[0x29EDC9740](name).n128_u64[0];
  if (v26)
  {
    location[0] = [MEMORY[0x29EDC7B08] sharedInstance];
    returnKeyType = [location[0] returnKeyType];
    if (returnKeyType)
    {
      switch(returnKeyType)
      {
        case 1:
          representedString = MEMORY[0x29EDC9748](@"Go");
          v33 = 1;
          break;
        case 2:
          representedString = MEMORY[0x29EDC9748](@"Google");
          v33 = 1;
          break;
        case 3:
          representedString = MEMORY[0x29EDC9748](@"Join:");
          v33 = 1;
          break;
        case 4:
          representedString = MEMORY[0x29EDC9748](@"Next:");
          v33 = 1;
          break;
        case 5:
          representedString = MEMORY[0x29EDC9748](@"Route");
          v33 = 1;
          break;
        case 6:
          representedString = MEMORY[0x29EDC9748](@"Search");
          v33 = 1;
          break;
        case 7:
          representedString = MEMORY[0x29EDC9748](@"Send");
          v33 = 1;
          break;
        case 8:
          representedString = MEMORY[0x29EDC9748](@"Yahoo");
          v33 = 1;
          break;
        case 9:
          representedString = MEMORY[0x29EDC9748](@"Done");
          v33 = 1;
          break;
        case 10:
          representedString = MEMORY[0x29EDC9748](@"Emergency call");
          v33 = 1;
          break;
        default:
          v33 = 0;
          break;
      }
    }

    else
    {
      representedString = MEMORY[0x29EDC9748](@"Return");
      v33 = 1;
    }

    objc_storeStrong(location, 0);
    if (v33)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  name2 = [(UIKBTree *)selfCopy->_key name];
  v23 = [name2 isEqualToString:@"Tab-Key"];
  *&v3 = MEMORY[0x29EDC9740](name2).n128_u64[0];
  if (v23)
  {
    representedString = MEMORY[0x29EDC9748](@"tab");
  }

  else
  {
    name3 = [(UIKBTree *)selfCopy->_key name];
    v31 = 0;
    v21 = 1;
    if (([name3 isEqualToString:@"Delete-Key"] & 1) == 0)
    {
      name4 = [(UIKBTree *)selfCopy->_key name];
      v31 = 1;
      v21 = [name4 isEqualToString:@"Monolith-Linear-Delete-Key"];
    }

    if (v31)
    {
      MEMORY[0x29EDC9740](name4);
    }

    *&v4 = MEMORY[0x29EDC9740](name3).n128_u64[0];
    if (v21)
    {
      representedString = MEMORY[0x29EDC9748](@"delete");
    }

    else
    {
      name5 = [(UIKBTree *)selfCopy->_key name];
      v19 = [name5 isEqualToString:@"Shift-Key"];
      *&v5 = MEMORY[0x29EDC9740](name5).n128_u64[0];
      if (v19)
      {
        representedString = MEMORY[0x29EDC9748](@"shift");
      }

      else
      {
        name6 = [(UIKBTree *)selfCopy->_key name];
        v17 = [name6 isEqualToString:@"Caps-Lock-Key"];
        *&v6 = MEMORY[0x29EDC9740](name6).n128_u64[0];
        if (v17)
        {
          representedString = MEMORY[0x29EDC9748](@"caps-lock");
        }

        else
        {
          name7 = [(UIKBTree *)selfCopy->_key name];
          v15 = [name7 isEqualToString:@"International-Key"];
          *&v7 = MEMORY[0x29EDC9740](name7).n128_u64[0];
          if (v15)
          {
            representedString = MEMORY[0x29EDC9748](@"emoji");
          }

          else
          {
            name8 = [(UIKBTree *)selfCopy->_key name];
            v13 = [name8 isEqualToString:@"Space-Key"];
            MEMORY[0x29EDC9740](name8);
            if (v13)
            {
              representedString = MEMORY[0x29EDC9748](@"space");
            }

            else if (([(UIAccessibilityElementKBKey *)selfCopy _axIsDictationKey]& 1) != 0)
            {
              representedString = MEMORY[0x29EDC9748](@"dictation");
            }

            else
            {
              name9 = [(UIKBTree *)selfCopy->_key name];
              v29 = 0;
              v11 = 1;
              if (([name9 hasSuffix:@"More-Key"] & 1) == 0)
              {
                name10 = [(UIKBTree *)selfCopy->_key name];
                v29 = 1;
                v11 = [name10 isEqualToString:@"NumberPad-More"];
              }

              if (v29)
              {
                MEMORY[0x29EDC9740](name10);
              }

              MEMORY[0x29EDC9740](name9);
              if ((v11 & 1) == 0)
              {
LABEL_51:
                name11 = [(UIKBTree *)selfCopy->_key name];
                if ([name11 isEqualToString:@"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation"])
                {
                  representedString = [(UIKBTree *)selfCopy->_key representedString];
                }

                else
                {
                  v27.receiver = selfCopy;
                  v27.super_class = UIAccessibilityElementKBKey;
                  representedString = [(UIAccessibilityElementKBKey *)&v27 accessibilityIdentifier];
                }

                v33 = 1;
                objc_storeStrong(&name11, 0);
                goto LABEL_55;
              }

              representedString = MEMORY[0x29EDC9748](@"more");
            }
          }
        }
      }
    }
  }

LABEL_55:
  v8 = representedString;

  return v8;
}

- (uint64_t)_axIsShifted
{
  selfCopy = self;
  if (self)
  {
    location = [MEMORY[0x29EDC7B08] sharedInstance];
    v4 = 0;
    v3 = 1;
    if (([location isShifted] & 1) == 0)
    {
      LOBYTE(v2) = 0;
      if ([location isShiftLocked])
      {
        _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
        v4 = 1;
        v2 = [_axLayoutStar safeBoolForKey:@"isShiftKeyBeingHeld"] ^ 1;
      }

      v3 = v2;
    }

    v8 = v3 & 1;
    if (v4)
    {
      MEMORY[0x29EDC9740](_axLayoutStar);
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
  selfCopy = self;
  if (!self)
  {
    v255 = 0;
    goto LABEL_273;
  }

  v253 = 0;
  v252 = 0;
  location = 0;
  _axIsShifted = 0;
  v198 = MEMORY[0x29EDB8DE0];
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];
  v202 = [v198 characterDirectionForLanguage:?] == 2;
  MEMORY[0x29EDC9740](primaryLanguage);
  MEMORY[0x29EDC9740](currentInputMode);
  MEMORY[0x29EDC9740](mEMORY[0x29EDC7B18]);
  v249 = v202;
  if (selfCopy[6])
  {
    if (([(UIAccessibilityElementKBKey *)selfCopy _axIsDictationKey]& 1) != 0)
    {
      v255 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
      v248 = 1;
      goto LABEL_272;
    }

    name = [selfCopy[6] name];
    variantType = [selfCopy[6] variantType];
    v245 = 0;
    if ([name isEqualToString:@"NumberPad-Delete"])
    {
      v253 = 1;
      v1 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
      v2 = location;
      location = v1;
      v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Delete-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"Monolith-Linear-Delete-Key"))
    {
      v252 = 1;
      v253 = 1;
      properties = [selfCopy[6] properties];
      v4 = [properties valueForKey:*MEMORY[0x29EDC8148]];
      v5 = location;
      location = v4;
      MEMORY[0x29EDC9740](v5);
      v3 = MEMORY[0x29EDC9740](properties).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Double-Em-Dash"])
    {
      v253 = 1;
      v6 = accessibilityLocalizedString(@"double.em.dash.key");
      v7 = location;
      location = v6;
      v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Double-Horizontal-Ellipsis"])
    {
      v253 = 1;
      v8 = accessibilityLocalizedString(@"double.ellipsis.dash.key");
      v9 = location;
      location = v8;
      v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Cut-Key"])
    {
      v253 = 1;
      v10 = accessibilityLocalizedString(@"cut.keyboard.key");
      v11 = location;
      location = v10;
      v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Copy-Key"])
    {
      v253 = 1;
      v12 = accessibilityLocalizedString(@"copy.keyboard.key");
      v13 = location;
      location = v12;
      v3 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Paste-Key"])
    {
      v253 = 1;
      v14 = accessibilityLocalizedString(@"paste.keyboard.key");
      v15 = location;
      location = v14;
      v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Hebrew-Accents"])
    {
      v253 = 1;
      v16 = accessibilityLocalizedString(@"hebrew.accents.key");
      v17 = location;
      location = v16;
      v3 = MEMORY[0x29EDC9740](v17).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Bold-Key"])
    {
      v253 = 1;
      v18 = accessibilityLocalizedString(@"bold.keyboard.key");
      v19 = location;
      location = v18;
      v3 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Undo-Key"])
    {
      v253 = 1;
      v20 = accessibilityLocalizedString(@"undo.keyboard.key");
      v21 = location;
      location = v20;
      v3 = MEMORY[0x29EDC9740](v21).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Roman-to-Non-Roman-Switch-Key"])
    {
      v253 = 1;
      v22 = accessibilityLocalizedString(@"switch.back.to.non.roman.key");
      v23 = location;
      location = v22;
      v3 = MEMORY[0x29EDC9740](v23).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Non-Roman-to-Roman-Switch-Key"])
    {
      v253 = 1;
      v24 = accessibilityLocalizedString(@"switch.to.roman.key");
      v25 = location;
      location = v24;
      v3 = MEMORY[0x29EDC9740](v25).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"BIU-Key"])
    {
      v253 = 1;
      v26 = accessibilityLocalizedString(@"biu.keyboard.key");
      v27 = location;
      location = v26;
      v3 = MEMORY[0x29EDC9740](v27).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Left-Arrow-Key"])
    {
      v253 = 1;
      v28 = accessibilityLocalizedString(@"left.arrow.keyboard.key");
      v29 = location;
      location = v28;
      v3 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Right-Arrow-Key"])
    {
      v253 = 1;
      v30 = accessibilityLocalizedString(@"right.arrow.keyboard.key");
      v31 = location;
      location = v30;
      v3 = MEMORY[0x29EDC9740](v31).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Redo-Key"])
    {
      v253 = 1;
      v32 = accessibilityLocalizedString(@"redo.keyboard.key");
      v33 = location;
      location = v32;
      v3 = MEMORY[0x29EDC9740](v33).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"Emoji"])
    {
      v253 = 1;
      v34 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
      v35 = location;
      location = v34;
      v3 = MEMORY[0x29EDC9740](v35).n128_u64[0];
      goto LABEL_165;
    }

    if ([selfCopy _accessibilityIsInternationalKeyboardKey])
    {
      v253 = 1;
      if (([(UIAccessibilityElementKBKey *)selfCopy _axDisplaysGlobeKeyAsEmojiKey]& 1) != 0)
      {
        v36 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
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

    if ([name isEqualToString:@"Handwriting-Input"])
    {
      v253 = 1;
      v38 = accessibilityLocalizedString(@"handwriting.input.area");
      v39 = location;
      location = v38;
      v3 = MEMORY[0x29EDC9740](v39).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"FiftyOn-Fullwidth-Left-And-Right-Corner-Bracket-Right"])
    {
      v253 = 1;
      v40 = accessibilityLocalizedString(@"parentheses");
      v41 = location;
      location = v40;
      v3 = MEMORY[0x29EDC9740](v41).n128_u64[0];
      goto LABEL_165;
    }

    if ([name isEqualToString:@"FiftyOn-SymbolNumber-Keyplane-Switch-Key"])
    {
LABEL_69:
      v252 = 1;
      v253 = 1;
      v56 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
      v57 = location;
      location = v56;
      v3 = MEMORY[0x29EDC9740](v57).n128_u64[0];
      goto LABEL_165;
    }

    if (([name isEqualToString:@"TenKey-Alphabet-Keyplane-Switch-Key"] & 1) == 0)
    {
      if ([name isEqualToString:@"FiftyOn-Kana-Keyplane-Switch-Key"])
      {
        v252 = 1;
        v253 = 1;
        v44 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
        v45 = location;
        location = v44;
        v3 = MEMORY[0x29EDC9740](v45).n128_u64[0];
        goto LABEL_165;
      }

      if ([name isEqualToString:@"TenKey-Pinyin-Keyplane-Switch-Key"])
      {
        v252 = 1;
        v253 = 1;
        v46 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
        v47 = location;
        location = v46;
        v3 = MEMORY[0x29EDC9740](v47).n128_u64[0];
        goto LABEL_165;
      }

      if ([name isEqualToString:@"Multitap-Complete-Key"])
      {
        v253 = 1;
        v48 = accessibilityLocalizedString(@"keyboard.complete.key");
        v49 = location;
        location = v48;
        v3 = MEMORY[0x29EDC9740](v49).n128_u64[0];
        goto LABEL_165;
      }

      if ([name isEqualToString:@"Multitap-Reverse-Key"])
      {
        v253 = 1;
        v50 = accessibilityLocalizedString(@"keyboard.reverse.key");
        v51 = location;
        location = v50;
        v3 = MEMORY[0x29EDC9740](v51).n128_u64[0];
        goto LABEL_165;
      }

      if ([name isEqualToString:@"TenKey-Case-Swap"])
      {
        v252 = 1;
        v253 = 1;
        v52 = accessibilityLocalizedString(@"keyboard.case.swap.key");
        v53 = location;
        location = v52;
        v3 = MEMORY[0x29EDC9740](v53).n128_u64[0];
        goto LABEL_165;
      }

      if ([name isEqualToString:@"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation"])
      {
        v252 = 1;
        v253 = 1;
        v54 = accessibilityLocalizedString(@"keyboard.voice.sound.mark.key");
        v55 = location;
        location = v54;
        v3 = MEMORY[0x29EDC9740](v55).n128_u64[0];
        goto LABEL_165;
      }

      if ([name hasSuffix:@"TenKey-Alphabet-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(name, "hasSuffix:", @"SymbolNumber-Keyplane-Switch-Key"))
      {
        goto LABEL_69;
      }

      if (([name hasSuffix:@"Alphabet-Keyplane-Switch-Key"] & 1) == 0)
      {
        if ([name hasSuffix:@"Monolith-Clear-Key"])
        {
          v252 = 1;
          v253 = 1;
          v58 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v59 = location;
          location = v58;
          v3 = MEMORY[0x29EDC9740](v59).n128_u64[0];
        }

        else if ([name hasSuffix:@"Monolith-Capital-Letters-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v60 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v61 = location;
          location = v60;
          v3 = MEMORY[0x29EDC9740](v61).n128_u64[0];
        }

        else if ([name hasSuffix:@"Monolith-Small-Letters-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v62 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v63 = location;
          location = v62;
          v3 = MEMORY[0x29EDC9740](v63).n128_u64[0];
        }

        else if ([name hasSuffix:@"Monolith-Numbers-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v64 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v65 = location;
          location = v64;
          v3 = MEMORY[0x29EDC9740](v65).n128_u64[0];
        }

        else if ([name hasSuffix:@"Monolith-Punctuation-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v66 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v67 = location;
          location = v66;
          v3 = MEMORY[0x29EDC9740](v67).n128_u64[0];
        }

        else if ([name hasSuffix:@"Monolith-Recents-Keyplane-Switch-Key"])
        {
          v252 = 1;
          v253 = 1;
          v68 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v69 = location;
          location = v68;
          v3 = MEMORY[0x29EDC9740](v69).n128_u64[0];
        }

        else if ([name hasSuffix:@"More-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"NumberPad-More"))
        {
          v253 = 1;
          _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
          v194 = [_axLayoutStar safeValueForKey:@"displayTypeHintForMoreKey"];
          intValue = [v194 intValue];
          MEMORY[0x29EDC9740](v194);
          MEMORY[0x29EDC9740](_axLayoutStar);
          v244 = intValue;
          switch(intValue)
          {
            case 1:
              v70 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
              v71 = location;
              location = v70;
              v3 = MEMORY[0x29EDC9740](v71).n128_u64[0];
              break;
            case 2:
              v72 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
              v73 = location;
              location = v72;
              v3 = MEMORY[0x29EDC9740](v73).n128_u64[0];
              break;
            case 3:
              v74 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
              v75 = location;
              location = v74;
              v3 = MEMORY[0x29EDC9740](v75).n128_u64[0];
              break;
            case 4:
              v76 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
              v77 = location;
              location = v76;
              v3 = MEMORY[0x29EDC9740](v77).n128_u64[0];
              break;
            case 5:
              v78 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
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
            v80 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
            v81 = location;
            location = v80;
            v3 = MEMORY[0x29EDC9740](v81).n128_u64[0];
          }

          v252 = 1;
        }

        else if ([name hasSuffix:@"Shift-Key"])
        {
          v253 = 1;
          _axLayoutStar2 = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
          v191 = [_axLayoutStar2 safeValueForKey:@"displayTypeHintForShiftKey"];
          intValue2 = [v191 intValue];
          MEMORY[0x29EDC9740](v191);
          MEMORY[0x29EDC9740](_axLayoutStar2);
          v243 = intValue2;
          switch(intValue2)
          {
            case 1:
              v82 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
              v83 = location;
              location = v82;
              v3 = MEMORY[0x29EDC9740](v83).n128_u64[0];
              break;
            case 2:
              v84 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
              v85 = location;
              location = v84;
              v3 = MEMORY[0x29EDC9740](v85).n128_u64[0];
              break;
            case 3:
              v86 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
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
            v88 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
            v89 = location;
            location = v88;
            v3 = MEMORY[0x29EDC9740](v89).n128_u64[0];
          }

          v252 = 1;
        }

        else if ([name isEqualToString:@"Space-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"Unlabeled-Space-Key") & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"TenKey-Number-To-Number-Alternative-Keyplane-Switch-Key") & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"TenKey-Number-Alternative-To-Number-Keyplane-Switch-Key") & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"Monolith-Space-Key") & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"Monolith-Linear-Space-Key"))
        {
          properties2 = [selfCopy[6] properties];
          v242 = [properties2 valueForKey:*MEMORY[0x29EDC8148]];
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

        else if ([name isEqualToString:@"Return-Key"])
        {
          displayString = [selfCopy[6] displayString];
          if ([displayString isEqualToString:@"⏎"] & 1) != 0 || (objc_msgSend(displayString, "isEqualToString:", @"⮑") & 1) != 0 || (objc_msgSend(displayString, "isEqualToString:", @"⮐"))
          {
            v253 = 1;
            v92 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
            v93 = location;
            location = v92;
            MEMORY[0x29EDC9740](v93);
          }

          objc_storeStrong(&displayString, 0);
        }

        else if ([name isEqualToString:@"Dismiss-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"Dismiss-HWR-Key"))
        {
          v253 = 1;
          v94 = accessibilityLocalizedString(@"keyboard.dismiss.key.default");
          v95 = location;
          location = v94;
          v3 = MEMORY[0x29EDC9740](v95).n128_u64[0];
        }

        else if ([name isEqualToString:@"Chinese-Facemark"])
        {
          v253 = 1;
          v96 = accessibilityLocalizedString(@"face.marks.keyboard.button");
          v97 = location;
          location = v96;
          v3 = MEMORY[0x29EDC9740](v97).n128_u64[0];
        }

        else if ([name isEqualToString:@"Wubihua-Letter-WildCard"])
        {
          v253 = 1;
          v98 = accessibilityLocalizedString(@"keyboard.key.chinese.stroke.wildcard");
          v99 = location;
          location = v98;
          v3 = MEMORY[0x29EDC9740](v99).n128_u64[0];
        }

        else if ([name hasSuffix:@"Chinese10Key-Ideographic-Comma-Fullwidth-Question-Mark-Exclamation-Mark"] & 1) != 0 || (objc_msgSend(name, "hasSuffix:", @"Period-Comma-Question-Mark-Exclamation-Mark"))
        {
          v253 = 1;
          v100 = accessibilityLocalizedString(@"keyboard.key.chinese.stroke.punctuation");
          v101 = location;
          location = v100;
          v3 = MEMORY[0x29EDC9740](v101).n128_u64[0];
        }

        else if ([name isEqualToString:@"Japanese-50on-Emoji"])
        {
          v253 = 1;
          v102 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
          v103 = location;
          location = v102;
          v3 = MEMORY[0x29EDC9740](v103).n128_u64[0];
        }

        else if ([name isEqualToString:@"TenKey-Fullwidth-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"TenKey-Wubihua-Fullwidth-Keyplane-Switch-Key"))
        {
          v253 = 1;
          v104 = accessibilityLocalizedString(@"keyboard.chinese.fullwidth.toggle");
          v105 = location;
          location = v104;
          v3 = MEMORY[0x29EDC9740](v105).n128_u64[0];
        }

        else if ([name isEqualToString:@"TenKey-Fullwidth-SymbolNumber-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"TenKey-Wubihua-Fullwidth-SymbolNumber-Keyplane-Switch-Key"))
        {
          v253 = 1;
          v106 = accessibilityLocalizedString(@"keyboard.chinese.regularwidth.toggle");
          v107 = location;
          location = v106;
          v3 = MEMORY[0x29EDC9740](v107).n128_u64[0];
        }

        else if ([name isEqualToString:@"Wubihua-Facemark"])
        {
          v253 = 1;
          v108 = accessibilityLocalizedString(@"keyboard.emoticon.key");
          v109 = location;
          location = v108;
          v3 = MEMORY[0x29EDC9740](v109).n128_u64[0];
        }

        else if ([name isEqualToString:@"TenKey-Wubihua-Keyplane-Switch-Key"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"TenKey-Wubihua-Stroke-Keyplane-Switch-Key"))
        {
          displayString2 = [selfCopy[6] displayString];
          v111 = location;
          location = displayString2;
          v3 = MEMORY[0x29EDC9740](v111).n128_u64[0];
        }

        else if ([name isEqualToString:@"Cangjie-Letter-Z"])
        {
          objc_storeStrong(&location, @"蟲");
        }

        else if ([name isEqualToString:@"Ampersand"])
        {
          if (AXRequestingClient() != 15)
          {
            v253 = 1;
            v112 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
            v113 = location;
            location = v112;
            v3 = MEMORY[0x29EDC9740](v113).n128_u64[0];
          }
        }

        else if (variantType == 5)
        {
          representedString = [selfCopy[6] representedString];
          whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
          v186 = [representedString stringByTrimmingCharactersInSet:?];
          v189 = [v186 length];
          MEMORY[0x29EDC9740](v186);
          MEMORY[0x29EDC9740](whitespaceCharacterSet);
          v3 = MEMORY[0x29EDC9740](representedString).n128_u64[0];
          if (!v189)
          {
            v253 = 1;
            v114 = accessibilityLocalizedString(@"keyboard.key.accents");
            v115 = location;
            location = v114;
            v3 = MEMORY[0x29EDC9740](v115).n128_u64[0];
          }
        }

        else if ([name isEqualToString:@"Tab-Key"])
        {
          v253 = 1;
          v116 = accessibilityLocalizedString(@"keyboard.tab.key");
          v117 = location;
          location = v116;
          v3 = MEMORY[0x29EDC9740](v117).n128_u64[0];
        }

        else if ([name isEqualToString:@"Caps-Lock-Key"])
        {
          v253 = 1;
          v118 = accessibilityLocalizedString(@"caps.lock");
          v119 = location;
          location = v118;
          v3 = MEMORY[0x29EDC9740](v119).n128_u64[0];
        }

        else if ([name isEqualToString:@"Writeboard-Key"])
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
          _axIsShifted = [(UIAccessibilityElementKBKey *)selfCopy _axIsShifted];
          if ([selfCopy[6] displayType] == 7)
          {
            [(UIAccessibilityElementKBKey *)selfCopy setChangesOnShiftDown:?];
            _axDualStringLabel = [(UIAccessibilityElementKBKey *)selfCopy _axDualStringLabel];
            v123 = location;
            location = _axDualStringLabel;
            MEMORY[0x29EDC9740](v123);
          }
        }

        if (![location length] || (v245 & 1) != 0)
        {
          overrideDisplayString = [selfCopy[6] overrideDisplayString];
          if ([overrideDisplayString length])
          {
            objc_storeStrong(&location, overrideDisplayString);
            v253 = 0;
          }

          objc_storeStrong(&overrideDisplayString, 0);
        }

        if ([location length])
        {
          goto LABEL_213;
        }

        v238 = 0;
        objc_opt_class();
        displayString3 = [selfCopy[6] displayString];
        v237 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](displayString3);
        v236 = MEMORY[0x29EDC9748](v237);
        objc_storeStrong(&v237, 0);
        v239 = v236;
        v234 = 0;
        objc_opt_class();
        representedString2 = [selfCopy[6] representedString];
        v233 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](representedString2);
        v232 = MEMORY[0x29EDC9748](v233);
        objc_storeStrong(&v233, 0);
        v235 = v232;
        if ([name hasPrefix:@"TenKey-Latin"] & 1) != 0 || (objc_msgSend(name, "hasPrefix:", @"TenKey-At") & 1) != 0 || (objc_msgSend(name, "hasPrefix:", @"TenKey-Period") & 1) != 0 || (objc_msgSend(name, "hasPrefix:", @"TenKey-Chinese-Pinyin"))
        {
          string = [MEMORY[0x29EDBA050] string];
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
            [string appendFormat:@"%@ ", v183];
            MEMORY[0x29EDC9740](v183);
          }

          objc_storeStrong(&v235, string);
          name2 = [selfCopy[6] name];
          v182 = [name2 hasPrefix:@"TenKey-Period"];
          *&v124 = MEMORY[0x29EDC9740](name2).n128_u64[0];
          if (v182)
          {
            obj[0] = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v235, v124}];
            v180 = MEMORY[0x29EDB8EB0];
            [obj[0] setAttribute:? forKey:?];
            [obj[0] setAttribute:v180 forKey:*MEMORY[0x29EDBD930]];
            objc_storeStrong(&v235, obj[0]);
            objc_storeStrong(obj, 0);
          }

          objc_storeStrong(&string, 0);
        }

        else if ([name hasSuffix:@"10Key-Keyplane-Switch-Key"])
        {
          objc_storeStrong(&v235, v239);
        }

        else if ([name hasPrefix:@"Hebrew-Accents"])
        {
          objc_storeStrong(&v239, v235);
        }

        if ([v235 length] && (objc_msgSend(v239, "isEqualToString:", v235) & 1) == 0 && !-[UIAccessibilityElementKBKey isButtonType](selfCopy) && !v249)
        {
          objc_storeStrong(&v239, v235);
          if ([v239 length] == 1 && objc_msgSend(v239, "characterAtIndex:", 0) == 9787)
          {
            v255 = accessibilityLocalizedString(@"face.marks.keyboard.button");
            v248 = 1;
            goto LABEL_212;
          }

          if ([name isEqualToString:@"Wubihua-Letter-ExactMatch"])
          {
            displayString4 = [selfCopy[6] displayString];
            v126 = v239;
            v239 = displayString4;
            MEMORY[0x29EDC9740](v126);
          }
        }

        if (v239)
        {
          if ([(UIAccessibilityElementKBKey *)selfCopy allowsCaseChangeOnShift])
          {
            if ([v239 length])
            {
              v226 = [v239 rangeOfComposedCharacterSequenceAtIndex:0];
              v227 = v127;
              if (v127 == [v239 length])
              {
                [(UIAccessibilityElementKBKey *)selfCopy setChangesOnShiftDown:?];
                if (_axIsShifted)
                {
                  uppercaseString = [v239 uppercaseString];
                }

                else
                {
                  uppercaseString = [v239 lowercaseString];
                }

                v129 = v239;
                v239 = uppercaseString;
                MEMORY[0x29EDC9740](v129);
              }
            }
          }

          name3 = [selfCopy[6] name];
          v179 = [name3 hasPrefix:@"NumberPad"];
          v130 = MEMORY[0x29EDC9740](name3).n128_u64[0];
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
          objc_storeStrong(&name, 0);
          goto LABEL_272;
        }

LABEL_213:
        if (![location length])
        {
          variantDisplayString = [selfCopy[6] variantDisplayString];
          if (variantDisplayString)
          {
            objc_storeStrong(&location, variantDisplayString);
          }

          objc_storeStrong(&variantDisplayString, 0);
        }

        mEMORY[0x29EDC7B18]2 = [MEMORY[0x29EDC7B18] sharedInputModeController];
        currentInputMode2 = [mEMORY[0x29EDC7B18]2 currentInputMode];
        primaryLanguage2 = [currentInputMode2 primaryLanguage];
        v177 = [primaryLanguage2 _containsSubstring:@"zh"];
        v134 = MEMORY[0x29EDC9740](primaryLanguage2).n128_u64[0];
        if (v177)
        {
          identifier = [currentInputMode2 identifier];
          v174 = [identifier _containsSubstring:@"Wubihua"];
          *&v135 = MEMORY[0x29EDC9740](identifier).n128_u64[0];
          if (v174)
          {
            v221 = 0;
            primaryLanguage3 = [currentInputMode2 primaryLanguage];
            v219 = 0;
            v172 = 1;
            if ([primaryLanguage3 compare:@"zh-hant" options:1])
            {
              primaryLanguage4 = [currentInputMode2 primaryLanguage];
              v219 = 1;
              v172 = [primaryLanguage4 compare:@"zh_hant" options:1] == 0;
            }

            if (v219)
            {
              MEMORY[0x29EDC9740](primaryLanguage4);
            }

            *&v136 = MEMORY[0x29EDC9740](primaryLanguage3).n128_u64[0];
            if (v172)
            {
              v137 = _TraditionalStrokeDictionary();
              v138 = v221;
              v221 = v137;
              v139 = MEMORY[0x29EDC9740](v138).n128_u64[0];
            }

            else
            {
              primaryLanguage5 = [currentInputMode2 primaryLanguage];
              v217 = 0;
              v170 = 1;
              if ([primaryLanguage5 compare:@"zh-hans" options:1])
              {
                primaryLanguage6 = [currentInputMode2 primaryLanguage];
                v217 = 1;
                v170 = [primaryLanguage6 compare:@"zh_hans" options:1] == 0;
              }

              if (v217)
              {
                MEMORY[0x29EDC9740](primaryLanguage6);
              }

              v139 = MEMORY[0x29EDC9740](primaryLanguage5).n128_u64[0];
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
            identifier2 = [currentInputMode2 identifier];
            v168 = [identifier2 _containsSubstring:@"Zhuyin"];
            v134 = MEMORY[0x29EDC9740](identifier2).n128_u64[0];
            if (v168)
            {
              v215 = 0;
              primaryLanguage7 = [currentInputMode2 primaryLanguage];
              v213 = 0;
              v166 = 1;
              if ([primaryLanguage7 compare:@"zh-hant" options:1])
              {
                primaryLanguage8 = [currentInputMode2 primaryLanguage];
                v213 = 1;
                v166 = [primaryLanguage8 compare:@"zh_hant" options:1] == 0;
              }

              if (v213)
              {
                MEMORY[0x29EDC9740](primaryLanguage8);
              }

              v142 = MEMORY[0x29EDC9740](primaryLanguage7).n128_u64[0];
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

        _accessibilityWasForcedToUseForeignKB = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityWasForcedToUseForeignKB];
        if ((v253 & 1) != 0 || ![location length])
        {
          if ((v252 & 1) != 0 && !_accessibilityWasForcedToUseForeignKB)
          {
            primaryLanguage9 = [currentInputMode2 primaryLanguage];
            v151 = MEMORY[0x29ED3D240](primaryLanguage9);
            v152 = primaryLanguage9;
            primaryLanguage9 = v151;
            if ([v151 length])
            {
              [v211 setAttribute:primaryLanguage9 forKey:*MEMORY[0x29EDBD918]];
            }

            objc_storeStrong(&primaryLanguage9, 0);
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
          if (![(UIAccessibilityElementKBKey *)selfCopy isButtonType]&& v209 == 1)
          {
            v163 = v211;
            v164 = [MEMORY[0x29EDBA070] numberWithBool:1];
            [v163 setAttribute:? forKey:? withRange:?];
            MEMORY[0x29EDC9740](v164);
          }

          accessibilityLanguage = [selfCopy accessibilityLanguage];
          v162 = [accessibilityLanguage length];
          v147 = MEMORY[0x29EDC9740](accessibilityLanguage).n128_u64[0];
          if (!v162)
          {
            mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
            textInputTraits = [mEMORY[0x29EDC7B08] textInputTraits];
            keyboardType = [textInputTraits keyboardType];
            MEMORY[0x29EDC9740](textInputTraits);
            v147 = MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]).n128_u64[0];
            v207 = keyboardType;
            v160 = 1;
            if (keyboardType != 5)
            {
              v160 = 1;
              if (v207 != 4)
              {
                v160 = v207 == 8;
              }
            }

            v206 = v160;
            if (!v160 && !_accessibilityWasForcedToUseForeignKB)
            {
              primaryLanguage10 = [currentInputMode2 primaryLanguage];
              v149 = MEMORY[0x29ED3D240](primaryLanguage10);
              v150 = primaryLanguage10;
              primaryLanguage10 = v149;
              if ([v149 length])
              {
                [v211 setAttribute:primaryLanguage10 forKey:*MEMORY[0x29EDBD918] withRange:{v208, v209}];
              }

              objc_storeStrong(&primaryLanguage10, 0);
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
        objc_storeStrong(&currentInputMode2, 0);
        goto LABEL_271;
      }
    }

    v252 = 1;
    v253 = 1;
    v42 = [(UIAccessibilityElementKBKey *)selfCopy _accessibilityLocalizedStringForKeyboardLocale:?];
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
  selfCopy = self;
  if (self)
  {
    v27[8] = 0;
    *v27 = [(UIAccessibilityElementKBKey *)selfCopy _axIsShifted];
    mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
    if (([mEMORY[0x29EDC7B08] isShiftLocked] & 1) == 0 || (v20 = 1, (-[UIAccessibilityElementKBKey isUnaffectedByShiftLock](selfCopy) & 1) == 0))
    {
      v20 = 1;
      if (([mEMORY[0x29EDC7B08] isAutoShifted] & 1) == 0)
      {
        v20 = v27[0] ^ 1;
      }
    }

    v25 = v20 & 1;
    representedString = [selfCopy[6] representedString];
    v19 = [representedString length];
    *&v1 = MEMORY[0x29EDC9740](representedString).n128_u64[0];
    if (v19 == 1)
    {
      if (v25)
      {
        representedString2 = [selfCopy[6] representedString];
        v3 = *&v27[1];
        *&v27[1] = representedString2;
        MEMORY[0x29EDC9740](v3);
      }

      else
      {
        secondaryRepresentedStrings = [selfCopy[6] secondaryRepresentedStrings];
        if ([secondaryRepresentedStrings count])
        {
          v23 = 0;
          objc_opt_class();
          secondaryRepresentedStrings2 = [selfCopy[6] secondaryRepresentedStrings];
          firstObject = [secondaryRepresentedStrings2 firstObject];
          v22 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](firstObject);
          MEMORY[0x29EDC9740](secondaryRepresentedStrings2);
          v21 = MEMORY[0x29EDC9748](v22);
          objc_storeStrong(&v22, 0);
          v4 = *&v27[1];
          *&v27[1] = v21;
          MEMORY[0x29EDC9740](v4);
        }

        objc_storeStrong(&secondaryRepresentedStrings, 0);
      }
    }

    else
    {
      representedString3 = [selfCopy[6] representedString];
      v15 = [representedString3 length];
      *&v5 = MEMORY[0x29EDC9740](representedString3).n128_u64[0];
      if (v15 >= 2)
      {
        if (v25)
        {
          representedString4 = [selfCopy[6] representedString];
          v35 = 0;
          v34 = 1;
          v36 = 0;
          v37 = 1;
          v6 = [representedString4 substringWithRange:{0, 1}];
          v7 = *&v27[1];
          *&v27[1] = v6;
          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](representedString4);
        }

        else
        {
          representedString5 = [selfCopy[6] representedString];
          v31 = 1;
          v30 = 1;
          v32 = 1;
          v33 = 1;
          v8 = [representedString5 substringWithRange:{1, 1}];
          v9 = *&v27[1];
          *&v27[1] = v8;
          MEMORY[0x29EDC9740](v9);
          MEMORY[0x29EDC9740](representedString5);
        }
      }
    }

    v29 = MEMORY[0x29EDC9748](*&v27[1]);
    objc_storeStrong(&mEMORY[0x29EDC7B08], 0);
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
  selfCopy = self;
  if (self)
  {
    location = [*(selfCopy + 48) name];
    if ([location isEqualToString:@"Return-Key"])
    {
      v6 = 0;
    }

    else
    {
      name = [*(selfCopy + 48) name];
      v3 = [name hasPrefix:@"Latin-Small-Letter-Small-Display"];
      MEMORY[0x29EDC9740](name);
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
  selfCopy = self;
  if (self)
  {
    v2 = [(UIAccessibilityElementKBKey *)selfCopy key];
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
  selfCopy = self;
  if (self && ([(UIAccessibilityElementKBKey *)selfCopy changesOnShiftDown]& 1) != 0)
  {
    _axIsShifted = [(UIAccessibilityElementKBKey *)selfCopy _axIsShifted];
    accessibilityUserDefinedLabel = [selfCopy accessibilityUserDefinedLabel];
    if ([accessibilityUserDefinedLabel length])
    {
      v7 = 0;
      if ([selfCopy[6] displayType] == 7)
      {
        [(UIAccessibilityElementKBKey *)selfCopy setChangesOnShiftDown:?];
        _axDualStringLabel = [(UIAccessibilityElementKBKey *)selfCopy _axDualStringLabel];
        v3 = v7;
        v7 = _axDualStringLabel;
        *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      }

      if (![v7 length])
      {
        if ([(UIAccessibilityElementKBKey *)selfCopy allowsCaseChangeOnShift])
        {
          if (_axIsShifted)
          {
            uppercaseString = [accessibilityUserDefinedLabel uppercaseString];
          }

          else
          {
            uppercaseString = [accessibilityUserDefinedLabel lowercaseString];
          }

          v5 = v7;
          v7 = uppercaseString;
          MEMORY[0x29EDC9740](v5);
        }

        if (([accessibilityUserDefinedLabel isAXAttributedString] & 1) != 0 && objc_msgSend(v7, "length"))
        {
          obj = [accessibilityUserDefinedLabel copy];
          [obj replaceString:v7];
          objc_storeStrong(&v7, obj);
          objc_storeStrong(&obj, 0);
        }
      }

      if (([v7 isEqualToString:accessibilityUserDefinedLabel] & 1) == 0)
      {
        [selfCopy setAccessibilityLabel:v7];
      }

      objc_storeStrong(&v7, 0);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    objc_storeStrong(&accessibilityUserDefinedLabel, 0);
  }
}

- (uint64_t)changesOnShiftDown
{
  if (self)
  {
    v2 = *(self + 56) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)_allowCachingAccessibilityLabel
{
  selfCopy = self;
  if (self)
  {
    v2 = [(UIAccessibilityElementKBKey *)selfCopy key];
    location = [v2 name];
    v5 = ([location isEqualToString:{@"TenKey-Facemark-Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation", MEMORY[0x29EDC9740](v2).n128_f64[0]}] & 1) == 0 && (objc_msgSend(location, "isEqualToString:", @"Space-Key") & 1) == 0 && (-[UIAccessibilityElementKBKey isUnaffectedByShiftLock](selfCopy) & 1) == 0 && (objc_msgSend(location, "isEqualToString:", @"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation") & 1) == 0;
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
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  [(UIAccessibilityElementKBKey *)&self->super.super.super.isa _applyCapitalLetterTransform];
  location[0] = [(UIAccessibilityElementKBKey *)selfCopy accessibilityUserDefinedLabel];
  if (!location[0])
  {
    location[0] = [(UIAccessibilityElementKBKey *)&selfCopy->super.super.super.isa _accessibilityLabel];
    MEMORY[0x29EDC9740](0);
    if ([(UIAccessibilityElementKBKey *)selfCopy _allowCachingAccessibilityLabel])
    {
      [(UIAccessibilityElementKBKey *)selfCopy setAccessibilityLabel:location[0]];
    }
  }

  v6 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (BOOL)_accessibilityKeyboardSupportsGestureMode
{
  accessibilityContainer = [(UIAccessibilityElementKBKey *)self accessibilityContainer];
  _accessibilityKeyboardSupportsGestureMode = [accessibilityContainer _accessibilityKeyboardSupportsGestureMode];
  MEMORY[0x29EDC9740](accessibilityContainer);
  return _accessibilityKeyboardSupportsGestureMode;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v10 = a2;
  name = [(UIKBTree *)self->_key name];
  v8 = [name isEqualToString:@"Handwriting-Input"];
  *&v2 = MEMORY[0x29EDC9740](name).n128_u64[0];
  if (v8)
  {
    v12 = *MEMORY[0x29EDB90B8];
  }

  else
  {
    v9.receiver = selfCopy;
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
  selfCopy = self;
  v26[1] = a2;
  if (([(UIAccessibilityElementKBKey *)self _axIsDictationKey]& 1) != 0)
  {
    v28 = accessibilityLocalizedString(@"dictation.key.hint");
    goto LABEL_43;
  }

  v26[0] = [(UIKBTree *)selfCopy->_key displayString];
  name = [(UIKBTree *)selfCopy->_key name];
  if ([name hasPrefix:@"NumberPad"])
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
      letterCharacterSet = [MEMORY[0x29EDB9F50] letterCharacterSet];
      string = [MEMORY[0x29EDBA050] string];
      v19 = 0;
      v18 = [v26[0] length];
      while (v19 < v18)
      {
        v17 = [v26[0] characterAtIndex:v19];
        if ([letterCharacterSet characterIsMember:v17])
        {
          [string appendFormat:@"%C", v17];
          if (v19 < v18 - 1)
          {
            [string appendString:@"-"];
          }
        }

        ++v19;
      }

      v28 = MEMORY[0x29EDC9748](string);
      v22 = 1;
      objc_storeStrong(&string, 0);
      objc_storeStrong(&letterCharacterSet, 0);
    }

    goto LABEL_42;
  }

  if (([name isEqualToString:@"Handwriting-Input"] & 1) == 0)
  {
    v15 = 0;
    v12 = 1;
    if (([name isEqualToString:@"Dismiss-Key"] & 1) == 0)
    {
      name2 = [(UIKBTree *)selfCopy->_key name];
      v15 = 1;
      v12 = [name2 isEqualToString:@"Dismiss-HWR-Key"];
    }

    if (v15)
    {
      MEMORY[0x29EDC9740](name2);
    }

    if (v12)
    {
      accessibilityContainer = [(UIAccessibilityElementKBKey *)selfCopy accessibilityContainer];
      v11 = [accessibilityContainer safeBoolForKey:@"useDismissForMessagesWriteboard"];
      MEMORY[0x29EDC9740](accessibilityContainer);
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

    if ([(UIAccessibilityElementKBKey *)selfCopy _accessibilityIsInternationalKeyboardKey])
    {
      if (([(UIAccessibilityElementKBKey *)selfCopy _axDisplaysGlobeKeyAsEmojiKey]& 1) == 0)
      {
        v28 = accessibilityLocalizedString(@"globe.keyboard.key.hint");
        v22 = 1;
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
      shiftLockedEnabled = 0;
      if ([name hasSuffix:@"Shift-Key"])
      {
        mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
        v13 = 1;
        shiftLockedEnabled = [mEMORY[0x29EDC7B08] shiftLockedEnabled];
      }

      if (v13)
      {
        MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
      }

      if (shiftLockedEnabled)
      {
        mEMORY[0x29EDC7B08]2 = [MEMORY[0x29EDC7B08] sharedInstance];
        if ([mEMORY[0x29EDC7B08]2 isShiftLocked])
        {
          v5 = @"keyboard.turn.capslock.off.hint";
        }

        else
        {
          v5 = @"keyboard.turn.capslock.on.hint";
        }

        v28 = accessibilityLocalizedString(v5);
        MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]2);
        v22 = 1;
        goto LABEL_42;
      }

      if ([name isEqualToString:@"Monolith-Linear-Delete-Key"])
      {
        v28 = accessibilityLocalizedString(@"atv.delete.keyboard.key.hint");
        v22 = 1;
        goto LABEL_42;
      }

      if ([name isEqualToString:@"Writeboard-Key"])
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
  objc_storeStrong(&name, 0);
  objc_storeStrong(v26, 0);
LABEL_43:
  v6 = v28;

  return v6;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v19 = a2;
  if (self->_key)
  {
    _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
    [(UIKBTree *)selfCopy->_key frame];
    rect.origin.x = v6;
    rect.origin.y = v7;
    rect.size.width = v8;
    rect.size.height = v9;
    name = [(UIKBTree *)selfCopy->_key name];
    v15 = [name isEqualToString:@"Handwriting-Input"];
    MEMORY[0x29EDC9740](name);
    if (v15 & 1) != 0 && (AXDeviceIsPhoneIdiom())
    {
      rect.origin.y = rect.origin.y + 30.0;
      rect.size.height = rect.size.height - 30.0;
    }

    v21 = UIAccessibilityConvertFrameToScreenCoordinates(rect, _axLayoutStar);
    objc_storeStrong(&_axLayoutStar, 0);
  }

  else
  {
    v18.receiver = selfCopy;
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
  selfCopy = self;
  if (self)
  {
    location = [*(selfCopy + 48) name];
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
  name = [(UIKBTree *)self->_key name];
  v5 = 0;
  v4 = 1;
  if (([name isEqualToString:@"International-Key"] & 1) == 0)
  {
    name2 = [(UIKBTree *)self->_key name];
    v5 = 1;
    v4 = [name2 isEqualToString:@"Emoji-International-Key"];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](name2);
  }

  MEMORY[0x29EDC9740](name);
  return v4 & 1;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v17 = a2;
  v16 = *MEMORY[0x29EDC7FB0] | *MEMORY[0x29EDC7F90];
  name = [(UIKBTree *)self->_key name];
  if ([(UIAccessibilityElementKBKey *)&selfCopy->super.super.super.isa isButtonType])
  {
    v16 |= *MEMORY[0x29EDC7F70];
  }

  if (([(UIAccessibilityElementKBKey *)selfCopy _axIsDictationKey]& 1) != 0)
  {
    if (([(UIKBTree *)selfCopy->_key state]& 4) != 0)
    {
      v16 |= *MEMORY[0x29EDC7FC0];
    }

    v16 |= *MEMORY[0x29EDC7FC8];
  }

  disabled = [(UIKBTree *)selfCopy->_key disabled];
  v13 = 0;
  v10 = 1;
  if ((disabled & 1) == 0)
  {
    LOBYTE(v9) = 0;
    if ([name isEqualToString:@"Return-Key"])
    {
      mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
      v13 = 1;
      v9 = [mEMORY[0x29EDC7B08] returnKeyEnabled] ^ 1;
    }

    v10 = v9;
  }

  if (v13)
  {
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
  }

  if (v10)
  {
    v16 |= *MEMORY[0x29EDC7FA8];
  }

  if (([(UIAccessibilityElementKBKey *)selfCopy _accessibilityIsDeleteKey]& 1) != 0)
  {
    v16 |= *MEMORY[0x29EDC7508];
  }

  if (([(UIKBTree *)selfCopy->_key visible]& 1) == 0)
  {
    v16 |= *MEMORY[0x29EDC7578];
  }

  if ([name hasSuffix:@"Shift-Key"])
  {
    _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
    v6 = [_axLayoutStar safeValueForKey:@"displayTypeHintForShiftKey"];
    intValue = [v6 intValue];
    MEMORY[0x29EDC9740](v6);
    *&v3 = MEMORY[0x29EDC9740](_axLayoutStar).n128_u64[0];
    v12 = intValue;
    if (!intValue)
    {
      location = [MEMORY[0x29EDC7B08] sharedInstance];
      if ([location isShifted])
      {
        v16 |= *MEMORY[0x29EDC7FC0];
      }

      objc_storeStrong(&location, 0);
    }
  }

  else if ([name isEqualToString:@"Handwriting-Input"])
  {
    v16 |= *MEMORY[0x29EDC7F68];
  }

  if (([UIAccessibilityElementKBKey _accessibilityIsKeySelected]& 1) != 0)
  {
    v16 |= *MEMORY[0x29EDC7FC0];
  }

  v5 = v16;
  objc_storeStrong(&name, 0);
  return v5;
}

- (id)_accessibilityVariantKeys
{
  cachedVariantKeys = [(UIAccessibilityElementKBKey *)self cachedVariantKeys];
  v5 = [cachedVariantKeys count];
  MEMORY[0x29EDC9740](cachedVariantKeys);
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
  if (self)
  {
    return *(self + 64);
  }

  else
  {
    return 0;
  }
}

+ (id)variantKeysForKey:(void *)key
{
  v22 = *MEMORY[0x29EDCA608];
  keyCopy = key;
  location = 0;
  objc_storeStrong(&location, a2);
  keyCopy = objc_opt_self();
  subtrees = [location subtrees];
  array = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](subtrees);
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
        [array addObject:{v14, v2}];
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
  [keyCopy _accessibilitySortElementsUsingGeometry:{array, v3}];
  v5 = MEMORY[0x29EDC9748](array);
  objc_storeStrong(&array, 0);
  objc_storeStrong(&subtrees, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

- (void)setCachedVariantKeys:(uint64_t)keys
{
  if (keys)
  {
    objc_storeStrong((keys + 64), a2);
  }
}

- (BOOL)_accessibilityHasVariantKeys
{
  selfCopy = self;
  v6 = a2;
  v5 = 0;
  variantType = [(UIKBTree *)self->_key variantType];
  if (variantType == 1 || variantType == 3 || variantType == 7 || variantType == 4 || variantType == 5 || variantType == 8)
  {
    v5 = 1;
  }

  else
  {
    v3 = UIAccessibilityGetKeyboardLayoutStar();
    v5 = [v3 keyHasAccentedVariants:selfCopy->_key];
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
  mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
  isShiftLocked = [mEMORY[0x29EDC7B08] isShiftLocked];
  *&v2 = MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]).n128_u64[0];
  if (isShiftLocked)
  {
    mEMORY[0x29EDC7B08]2 = [MEMORY[0x29EDC7B08] sharedInstance];
    [mEMORY[0x29EDC7B08]2 setShiftLocked:0];
    mEMORY[0x29EDC7B08]3 = [MEMORY[0x29EDC7B08] sharedInstance];
    [mEMORY[0x29EDC7B08]3 setShift:0];
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]3);
  }

  else
  {
    mEMORY[0x29EDC7B08]4 = [MEMORY[0x29EDC7B08] sharedInstance];
    [mEMORY[0x29EDC7B08]4 setShift:1];
    mEMORY[0x29EDC7B08]5 = [MEMORY[0x29EDC7B08] sharedInstance];
    [mEMORY[0x29EDC7B08]5 setShiftLocked:1];
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]5);
  }

  return 1;
}

- (BOOL)_accessibilityActivatePanAlternate:(id)alternate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alternate);
  v5 = selfCopy;
  isSecondAlternate = [(UIAccessibilityPanAlternateCustomAction *)location[0] isSecondAlternate];
  v6 = [(UIAccessibilityElementKBKey *)v5 _accessibilityActivateForPanAlternate:isSecondAlternate isSecondAlternate:?];
  objc_storeStrong(location, 0);
  return v6;
}

- (id)accessibilityCustomActions
{
  v21[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v18[1] = a2;
  name = [(UIKBTree *)self->_key name];
  v14 = [name hasSuffix:@"Shift-Key"];
  *&v2 = MEMORY[0x29EDC9740](name).n128_u64[0];
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

  else if ([(UIKBTree *)selfCopy->_key displayTypeHint]== 10)
  {
    v18[0] = [MEMORY[0x29EDB8DE8] array];
    secondaryRepresentedStrings = [(UIKBTree *)selfCopy->_key secondaryRepresentedStrings];
    v9 = [secondaryRepresentedStrings count];
    MEMORY[0x29EDC9740](secondaryRepresentedStrings);
    v17 = v9;
    for (i = 0; i < v17; ++i)
    {
      v5 = [UIAccessibilityPanAlternateCustomAction alloc];
      secondaryDisplayStrings = [(UIKBTree *)selfCopy->_key secondaryDisplayStrings];
      v6 = [secondaryDisplayStrings objectAtIndexedSubscript:i];
      v15 = [UIAccessibilityPanAlternateCustomAction initWithName:v5 target:"initWithName:target:selector:" selector:?];
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](secondaryDisplayStrings);
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
  name = [(UIKBTree *)self->_key name];
  _accessibilityIsDeleteKey = 1;
  if (([name hasSuffix:@"Shift-Key"] & 1) == 0)
  {
    _accessibilityIsDeleteKey = [(UIAccessibilityElementKBKey *)self _accessibilityIsDeleteKey];
  }

  MEMORY[0x29EDC9740](name);
  return _accessibilityIsDeleteKey & 1;
}

- (BOOL)_accessibilityKeyboardKeyCanStartContinuousPath
{
  selfCopy = self;
  v18[1] = a2;
  v17 = 0;
  objc_opt_class();
  _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](_axLayoutStar);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  _axLayoutSupportsContinuousPath = 1;
  if (([v15 isAlphabeticPlane] & 1) == 0)
  {
    _axLayoutSupportsContinuousPath = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutSupportsContinuousPath];
  }

  activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
  v13 = 0;
  v11 = 0;
  if (([activeInstance usesContinuousPath] & 1) != 0 || (v5 = 0, AXRequestingClient() == 4))
  {
    mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
    v13 = 1;
    textInputTraits = [mEMORY[0x29EDC7B08] textInputTraits];
    v11 = 1;
    v5 = 0;
    if (([textInputTraits isSecureTextEntry] & 1) == 0)
    {
      v5 = _axLayoutSupportsContinuousPath & 1;
    }
  }

  if (v11)
  {
    MEMORY[0x29EDC9740](textInputTraits);
  }

  if (v13)
  {
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
  }

  MEMORY[0x29EDC9740](activeInstance);
  v3 = [(UIAccessibilityElementKBKey *)selfCopy key];
  v9 = 0;
  v4 = 0;
  if ([v3 allowsStartingContinuousPath])
  {
    v10 = [(UIAccessibilityElementKBKey *)selfCopy key];
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
  selfCopy = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  _axLayoutStar = [(UIAccessibilityElementKBKey *)selfCopy _axLayoutStar];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](_axLayoutStar);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  v3 = [v5 safeBoolForKey:@"supportsContinuousPath"];
  objc_storeStrong(v8, 0);
  return v3;
}

- (void)setKey:(uint64_t)key
{
  if (key)
  {
    objc_storeStrong((key + 48), a2);
  }
}

@end