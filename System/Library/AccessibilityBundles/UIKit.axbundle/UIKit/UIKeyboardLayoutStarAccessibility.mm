@interface UIKeyboardLayoutStarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityFingerIsDown;
- (BOOL)_accessibilityHasBiasEscapeButton;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canProduceString:(id)a3;
- (UIKeyboardLayoutStarAccessibility)initWithFrame:(CGRect)a3;
- (double)_axClearReturnKeyLabel;
- (double)_axGetSortingNumberForEmojiCell:(uint64_t)a1;
- (id)_accessibilityBiasEscapeButton;
- (id)_accessibilityGetKeyboardRowsByRowNumber;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityInternalData;
- (id)_accessibilityKeyElementForKey:(id)a3;
- (id)_accessibilityKeyboardKeyForString:(id)a3;
- (id)_accessibilityKeys;
- (id)_accessibilityScannerGroupElements;
- (id)_accessibilitySortedUnstoredKeys;
- (id)_accessibilityStickyPopupKeys;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_accessibilityVisibleKeysByRow;
- (id)_accessibiltyAvailableKeyplanes;
- (id)_axKBModalView;
- (id)_rowNumberOverrideForSplitEmojiKey:(uint64_t)a1;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)atvGetKeyboardRowsByNumber;
- (id)atvGetOrderedRowsForRows:(id)a3 sortedRows:(id)a4 numRows:(int64_t)a5;
- (id)automationElements;
- (id)focusItemsInRect:(CGRect)a3;
- (id)iOSGetKeyboardRowsByNumber;
- (id)iOSGetOrderedRowsForRows:(id)a3 sortedRows:(id)a4 numRows:(int64_t)a5;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (uint64_t)_accessibilityBiasEscapeButtonIsFirst;
- (uint64_t)_accessibilityCreateElementForKey:(void *)a1;
- (uint64_t)_axIsWaitingForEmojiPopupAnnouncement;
- (uint64_t)_axSetIsWaitingForEmojiPopupAnnouncement:(uint64_t)result;
- (uint64_t)_isCapitalLetterKeyplane:(uint64_t)a1;
- (uint64_t)_isSmallLetterKeyplane:(uint64_t)a1;
- (void)_accessibilityChangeToKeyplane:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityResetInternalData;
- (void)_accessibilitySetStickyPopupKeys:(uint64_t)a1;
- (void)_axHandleEmojiPopupLayoutChangeAfterAnnouncement;
- (void)_axRegisterForAccessibilityContinuousPathSettingsNotifications;
- (void)_transitionToContinuousPathState:(int64_t)a3 forTouchInfo:(id)a4;
- (void)addContinuousPathPoint:(CGPoint)a3 withTimestamp:(double)a4;
- (void)continueFromInternationalActionForTouchUp:(id)a3 withActions:(unint64_t)a4 timestamp:(double)a5 interval:(double)a6 didLongPress:(BOOL)a7 prevActions:(unint64_t)a8 executionContext:(id)a9;
- (void)dealloc;
- (void)didBeginContinuousPath;
- (void)didMoveToWindow;
- (void)setActiveKey:(id)a3;
- (void)setKeyplaneName:(id)a3;
- (void)setLabel:(id)a3 forKey:(id)a4;
- (void)setReturnKeyEnabled:(BOOL)a3 withDisplayName:(id)a4 withType:(int)a5;
- (void)setState:(int)a3 forKey:(id)a4;
- (void)showPopupVariantsForKey:(id)a3;
- (void)showPopupView:(int64_t)a3 withKey:(id)a4 popupInfo:(id)a5 force:(BOOL)a6;
- (void)touchDown:(id)a3 executionContext:(id)a4;
- (void)touchDragged:(id)a3 executionContext:(id)a4;
- (void)touchUp:(id)a3 executionContext:(id)a4;
@end

@implementation UIKeyboardLayoutStarAccessibility

- (id)_accessibilityStickyPopupKeys
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UIKeyboardLayoutStarAccessibility___accessibilityStickyPopupKeys);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStickyPopupKeys:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v17 = location;
  v16 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = @"UIKeyboardLayoutStar";
  [location[0] validateClass:? isKindOfClass:?];
  v7 = @"UIKeyboardLayout";
  [location[0] validateClass:@"UIKeyboardLayoutStar" isKindOfClass:?];
  [location[0] validateClass:@"UIKBHandwritingCandidateView"];
  v10 = @"UIKeyboardEmojiCollectionInputView";
  [location[0] validateClass:?];
  [location[0] validateClass:@"UIHandwritingAssistantView"];
  v3 = "UIKBTree";
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_keyplane" withType:?];
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_keyplaneView" withType:"UIKBKeyplaneView"];
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_gestureKeyboardIntroduction" withType:"UIGestureKeyboardIntroduction"];
  v4 = @"UIKBKeyplaneView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_keyboard" withType:"UIKBTree"];
  [location[0] validateClass:@"UIKeyboardEmojiCollectionInputView" hasInstanceVariable:@"_collectionView" withType:"UIKeyboardEmojiCollectionView"];
  v11 = "B";
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceMethod:@"isHandwritingPlane" withFullSignature:0];
  v14 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"viewForKey:" withFullSignature:{"@", 0}];
  v8 = @"UIKBTree";
  [location[0] validateClass:v14 hasInstanceMethod:0 withFullSignature:?];
  v5 = "{CGPoint=dd}";
  [location[0] validateClass:v12 hasInstanceMethod:@"keyHitTestClosestToPoint:" withFullSignature:{v14, "{CGPoint=dd}", 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"keyHitTestContainingPoint:" withFullSignature:{v14, v5, 0}];
  v13 = "v";
  [location[0] validateClass:v12 hasInstanceMethod:@"setLabel: forKey:" withFullSignature:{v14, v14, 0}];
  v6 = "i";
  [location[0] validateClass:v12 hasInstanceMethod:@"setReturnKeyEnabled: withDisplayName: withType:" withFullSignature:{v13, v11, v14, "i", 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"setState: forKey:" withFullSignature:{v13, v6, v14, 0}];
  v9 = "q";
  [location[0] validateClass:v12 hasInstanceMethod:@"_transitionToContinuousPathState:forTouchInfo:" withFullSignature:{v13, "q", v14, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"touchDown:" withFullSignature:{v13, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"touchDown: executionContext:" withFullSignature:{v13, v14, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"touchDragged: executionContext:" withFullSignature:{v13, v14, v14, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"touchUp:" withFullSignature:{v13, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"touchUp: executionContext:" withFullSignature:{v13, v14, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"keyHasAccentedVariants:" withFullSignature:{v11, v14, 0}];
  [location[0] validateClass:@"UIKeyboardKeyplaneTransition" hasInstanceMethod:@"setInitiallyAtEnd:" withFullSignature:{v13, v11, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"selectedVariantIndex" withFullSignature:{v9, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"modalDisplayView" withFullSignature:{v14, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"tappedSkinToneEmoji" withFullSignature:{v14, 0}];
  v15 = "Q";
  [location[0] validateClass:v12 hasInstanceMethod:@"continueFromInternationalActionForTouchUp: withActions: timestamp: interval: didLongPress: prevActions: executionContext:" withFullSignature:{v13, v14, "Q", "d", "d", v11, "Q", v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"setActiveKey:" withFullSignature:{v13, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"activeKey" withFullSignature:{v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"didBeginContinuousPath" withFullSignature:{v13, 0}];
  [location[0] validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"syncInputManagerToKeyboardState" withFullSignature:{v13, 0}];
  [location[0] validateClass:@"UIKeyboardTouchInfo" hasInstanceMethod:@"touch" withFullSignature:{v14, 0}];
  [location[0] validateClass:@"UIKBTouchState" hasInstanceMethod:@"uiTouch" withFullSignature:{v14, 0}];
  [location[0] validateClass:@"UITouch" hasInstanceMethod:@"_senderID" withFullSignature:{v15, 0}];
  objc_storeStrong(v17, v16);
}

- (UIKeyboardLayoutStarAccessibility)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6[1] = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStarAccessibility;
  v7 = [(UIKeyboardLayoutStarAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6[0] = MEMORY[0x29EDC9748](v7);
  [(UIKeyboardLayoutStarAccessibility *)v7 _axRegisterForAccessibilityContinuousPathSettingsNotifications];
  v4 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (void)addContinuousPathPoint:(CGPoint)a3 withTimestamp:(double)a4
{
  v46 = *MEMORY[0x29EDCA608];
  point = a3;
  v42 = self;
  v41 = a2;
  v40 = a4;
  v39.receiver = self;
  v39.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v39 addContinuousPathPoint:a3.x withTimestamp:a3.y, a4];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    location = [(UIKeyboardLayoutStarAccessibility *)v42 _accessibilityVisibleKeysByRow];
    v37 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v27 = [obj countByEnumeratingWithState:__b objects:v45 count:16];
    if (v27)
    {
      v23 = *__b[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*__b[2] != v23)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(__b[1] + 8 * v24);
        memset(&recta, 0, sizeof(recta));
        v21 = [v36 firstObject];
        [v21 frame];
        r1.origin.x = v4;
        r1.origin.y = v5;
        r1.size.width = v6;
        r1.size.height = v7;
        v20 = [v36 lastObject];
        [v20 frame];
        r2.origin.x = v8;
        r2.origin.y = v9;
        r2.size.width = v10;
        r2.size.height = v11;
        recta = CGRectUnion(r1, r2);
        MEMORY[0x29EDC9740](v20);
        MEMORY[0x29EDC9740](v21);
        if (CGRectContainsPoint(recta, point))
        {
          if (v37 != addContinuousPathPoint_withTimestamp__CurrentRow)
          {
            addContinuousPathPoint_withTimestamp__CurrentRow = v37;
            v19 = [MEMORY[0x29EDBDDF8] sharedManager];
            [v19 playHapticFeedbackForType:15];
            MEMORY[0x29EDC9740](v19);
            v31 = 2;
            goto LABEL_23;
          }

          v30 = 0;
          memset(v28, 0, sizeof(v28));
          v17 = MEMORY[0x29EDC9748](v36);
          v18 = [v17 countByEnumeratingWithState:v28 objects:v44 count:16];
          if (v18)
          {
            v14 = *v28[2];
            v15 = 0;
            v16 = v18;
            while (1)
            {
              v13 = v15;
              if (*v28[2] != v14)
              {
                objc_enumerationMutation(v17);
              }

              v29 = *(v28[1] + 8 * v15);
              [v29 frame];
              if (CGRectContainsPoint(v47, point) && v30 != addContinuousPathPoint_withTimestamp__CurrentKey)
              {
                break;
              }

              ++v30;
              ++v15;
              if (v13 + 1 >= v16)
              {
                v15 = 0;
                v16 = [v17 countByEnumeratingWithState:v28 objects:v44 count:16];
                if (!v16)
                {
                  goto LABEL_18;
                }
              }
            }

            addContinuousPathPoint_withTimestamp__CurrentKey = v30;
            v12 = [MEMORY[0x29EDBDDF8] sharedManager];
            [v12 playHapticFeedbackForType:14];
            MEMORY[0x29EDC9740](v12);
            v31 = 4;
          }

          else
          {
LABEL_18:
            v31 = 0;
          }

          MEMORY[0x29EDC9740](v17);
        }

        ++v37;
        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [obj countByEnumeratingWithState:__b objects:v45 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    v31 = 0;
LABEL_23:
    MEMORY[0x29EDC9740](obj);
    objc_storeStrong(&location, 0);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(UIKeyboardLayoutStarAccessibility *)v8 safeValueForKey:@"_gestureKeyboardIntroduction"];
  [v3 _accessibilityLoadAccessibilityInformation];
  MEMORY[0x29EDC9740](v3);
  v5 = accessibilityLocalizedString(@"keyboard.bias.escape.label");
  v4 = [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilityBiasEscapeButton];
  [v4 setAccessibilityLabel:v5];
  MEMORY[0x29EDC9740](v4);
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  [(UIKeyboardLayoutStarAccessibility *)v8 _axRegisterForAccessibilityContinuousPathSettingsNotifications];
}

- (id)_accessibilityBiasEscapeButton
{
  v7 = a1;
  if (a1)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [v7 safeValueForKey:@"_biasEscapeButton"];
    v5 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v1 = v8;

  return v1;
}

- (void)didMoveToWindow
{
  v4 = self;
  v3 = a2;
  [(UIKeyboardLayoutStarAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v2.receiver = v4;
  v2.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v2 didMoveToWindow];
}

- (BOOL)accessibilityPerformEscape
{
  v24 = self;
  v23 = a2;
  if (AXDeviceIsPad() & 1) != 0 && (UIKeyboardSupportsSplit())
  {
    v22 = [MEMORY[0x29EDC7B08] isSplit];
    UIKeyboardSetSplit();
    notification = *MEMORY[0x29EDC7EA8];
    if (v22)
    {
      v2 = @"keyboard.unsplit";
    }

    else
    {
      v2 = @"keyboard.split";
    }

    v14 = accessibilityLocalizedString(v2);
    UIAccessibilityPostNotification(notification, v14);
    MEMORY[0x29EDC9740](v14);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    v25 = 1;
  }

  else
  {
    v10 = [MEMORY[0x29EDC7AF8] activeKeyboard];
    v11 = [v10 defaultTextInputTraits];
    v20 = 0;
    v18 = 0;
    v12 = 0;
    if (([v11 isDevicePasscodeEntry] & 1) == 0)
    {
      v21 = [MEMORY[0x29EDC7AF8] activeKeyboard];
      v20 = 1;
      v19 = [v21 defaultTextInputTraits];
      v18 = 1;
      v12 = [v19 keyboardType] != 127;
    }

    if (v18)
    {
      MEMORY[0x29EDC9740](v19);
    }

    if (v20)
    {
      MEMORY[0x29EDC9740](v21);
    }

    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v10);
    if (!v12)
    {
      goto LABEL_20;
    }

    v17 = 0;
    if (AXUIKeyboardIsOOP())
    {
      v9 = [MEMORY[0x29EDC7B08] activeInstance];
      [v9 dismissKeyboard];
      MEMORY[0x29EDC9740](v9);
      v17 = 1;
    }

    else
    {
      v17 = [*MEMORY[0x29EDC8008] resignFirstResponder];
      if ((v17 & 1) == 0)
      {
        v8 = [*MEMORY[0x29EDC8008] _accessibilityMainWindow];
        v16 = [v8 firstResponder];
        *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
        v17 = [v16 resignFirstResponder];
        objc_storeStrong(&v16, 0);
      }
    }

    if (v17)
    {
      v6 = MEMORY[0x29EDBD7E8];
      v7 = accessibilityLocalizedString(@"keyboard.hidden");
      v15 = [v6 axAttributedStringWithString:?];
      *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0];
      [v15 setAttribute:&unk_2A238E7E0 forKey:{*MEMORY[0x29EDBD860], v4}];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v15);
      v25 = 1;
      objc_storeStrong(&v15, 0);
    }

    else
    {
LABEL_20:
      v25 = 0;
    }
  }

  return v25 & 1;
}

- (uint64_t)_accessibilityCreateElementForKey:(void *)a1
{
  v18 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v18)
  {
    v3 = [location name];
    v14 = 0;
    v4 = 1;
    if (([v3 isEqualToString:@"Emoji-Category-Control-Key"] & 1) == 0)
    {
      v15 = [location name];
      v14 = 1;
      v4 = [v15 hasPrefix:@"Emoji-InputView-"];
    }

    if (v14)
    {
      MEMORY[0x29EDC9740](v15);
    }

    MEMORY[0x29EDC9740](v3);
    if (v4)
    {
      v7 = 0;
      v8 = &v7;
      v9 = 838860800;
      v10 = 48;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      v6[1] = &v7;
      v5 = MEMORY[0x29EDC9748](v18);
      v6[0] = MEMORY[0x29EDC9748](location);
      AXPerformSafeBlock();
      v19 = MEMORY[0x29EDC9748](v8[5]);
      v16 = 1;
      objc_storeStrong(v6, 0);
      objc_storeStrong(&v5, 0);
      _Block_object_dispose(&v7, 8);
      objc_storeStrong(&v13, 0);
    }

    else
    {
      v19 = [objc_allocWithZone(UIAccessibilityElementKBKey) initWithAccessibilityContainer:v18 key:location];
      v16 = 1;
    }
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(&location, 0);
  return v19;
}

uint64_t __71__UIKeyboardLayoutStarAccessibility__accessibilityCreateElementForKey___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14[2] = a1;
  v14[1] = a1;
  v10 = [*(a1 + 32) safeValueForKey:@"_keyplaneView"];
  v1 = [v10 viewForKey:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v14[0] = AXLogAppAccessibility();
    v13 = 17;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_FAULT))
    {
      log = v14[0];
      type = v13;
      v6 = *(a1 + 40);
      v9 = [*(a1 + 32) safeValueForKey:@"_keyplaneView"];
      v12 = MEMORY[0x29EDC9748](v9);
      __os_log_helper_16_2_2_8_64_8_64(v15, v6, v12);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Could not get view for key in keyplane: %@, %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v9);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(v14, 0);
  }

  return [*(*(*(a1 + 48) + 8) + 40) setAccessibilityContainer:{*(a1 + 32), v4}];
}

- (BOOL)_accessibilityFingerIsDown
{
  v3 = [(UIKeyboardLayoutStarAccessibility *)self _accessibilityValueForKey:@"IsFingerDown"];
  LOBYTE(v4) = 0;
  if ([v3 BOOLValue])
  {
    v4 = [(UIKeyboardLayoutStarAccessibility *)self _accessibilityBoolValueForKey:@"IsActivatingAXKey"]^ 1;
  }

  MEMORY[0x29EDC9740](v3);
  return v4 & 1;
}

- (void)touchDown:(id)a3 executionContext:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v5 touchDown:location[0] executionContext:v6];
  [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySetRetainedValue:*MEMORY[0x29EDB8F00] forKey:@"IsFingerDown"];
  [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySetIntegerValue:-1 forKey:@"AXSpokenVariant"];
  UIAccessibilityPostNotification(0xFA2u, &unk_2A238EA10);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)touchUp:(id)a3 executionContext:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v5 touchUp:location[0] executionContext:v6];
  [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySetRetainedValue:*MEMORY[0x29EDB8EF8] forKey:@"IsFingerDown"];
  [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySetBoolValue:0 forKey:@"IsActivatingAXKey"];
  _UIAXSetLastKeyboardUsed();
  UIAccessibilityPostNotification(0xFA2u, &unk_2A238EA38);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)touchDragged:(id)a3 executionContext:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v18 = 0;
    v6 = [(UIKeyboardLayoutStarAccessibility *)v24 safeValueForKey:@"activeKey"];
    v17 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v6);
    v16 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    v19 = v16;
    v15 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityIntegerValueForKey:@"AXSpokenVariant"];
    v14.receiver = v24;
    v14.super_class = UIKeyboardLayoutStarAccessibility;
    [(UIKeyboardLayoutStarAccessibility *)&v14 touchDragged:location[0] executionContext:v22];
    v13 = [v19 safeIntForKey:@"displayTypeHint"];
    v12 = [v19 safeArrayForKey:@"subtrees"];
    if (v13 == v15)
    {
      v20 = 1;
    }

    else
    {
      [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilitySetIntegerValue:v13 forKey:@"AXSpokenVariant"];
      if (v13 < [v12 count])
      {
        v11 = [v12 objectAtIndex:v13];
        v10 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityCreateElementForKey:v11];
        v9 = [v10 accessibilityLabel];
        argument = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v9];
        v4 = argument;
        v5 = [v10 accessibilityLanguage];
        [v4 setAttribute:? forKey:?];
        MEMORY[0x29EDC9740](v5);
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7478], argument);
        objc_storeStrong(&argument, 0);
        objc_storeStrong(&v9, 0);
        objc_storeStrong(&v10, 0);
        objc_storeStrong(&v11, 0);
      }

      v20 = 0;
    }

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v21.receiver = v24;
    v21.super_class = UIKeyboardLayoutStarAccessibility;
    [(UIKeyboardLayoutStarAccessibility *)&v21 touchDragged:location[0] executionContext:v22];
    v20 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (uint64_t)_axIsWaitingForEmojiPopupAnnouncement
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_axSetIsWaitingForEmojiPopupAnnouncement:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (void)_axHandleEmojiPopupLayoutChangeAfterAnnouncement
{
  v6 = self;
  location[1] = a2;
  if (([(UIKeyboardLayoutStarAccessibility *)self _axIsWaitingForEmojiPopupAnnouncement]& 1) != 0)
  {
    location[0] = [(UIKeyboardLayoutStarAccessibility *)v6 _accessibilityStickyPopupKeys];
    if ([location[0] count])
    {
      notification = *MEMORY[0x29EDC7ED8];
      v4 = [location[0] firstObject];
      UIAccessibilityPostNotification(notification, v4);
      MEMORY[0x29EDC9740](v4);
    }

    [UIKeyboardLayoutStarAccessibility _axSetIsWaitingForEmojiPopupAnnouncement:v6];
    v2 = [MEMORY[0x29EDBA068] defaultCenter];
    [v2 removeObserver:v6 name:*MEMORY[0x29EDC7E98] object:?];
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(location, 0);
  }
}

- (void)continueFromInternationalActionForTouchUp:(id)a3 withActions:(unint64_t)a4 timestamp:(double)a5 interval:(double)a6 didLongPress:(BOOL)a7 prevActions:(unint64_t)a8 executionContext:(id)a9
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = a4;
  v40 = a5;
  v39 = a6;
  v38 = a7;
  v37 = a8;
  v36 = 0;
  objc_storeStrong(&v36, a9);
  v35.receiver = v43;
  v35.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v35 continueFromInternationalActionForTouchUp:location[0] withActions:v41 timestamp:v38 interval:v37 didLongPress:v36 prevActions:v40 executionContext:v39];
  v33 = 0;
  objc_opt_class();
  v23 = [(UIKeyboardLayoutStarAccessibility *)v43 safeValueForKey:@"activeKey"];
  v32 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v23);
  v31 = MEMORY[0x29EDC9748](v32);
  objc_storeStrong(&v32, 0);
  v34 = v31;
  if (v31 && [v34 variantType] == 10)
  {
    v30 = [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Uikeyboardemoj_11.isa)];
    v28 = 0;
    objc_opt_class();
    v16 = [v30 safeValueForKey:@"_collectionView"];
    v27 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v16);
    v26 = MEMORY[0x29EDC9748](v27);
    objc_storeStrong(&v27, 0);
    v15 = [v30 safeValueForKey:@"tappedSkinToneEmoji"];
    v29 = [v26 cellForItemAtIndexPath:?];
    MEMORY[0x29EDC9740](v15);
    *&v9 = MEMORY[0x29EDC9740](v26).n128_u64[0];
    v25 = [v29 _accessibilityVariantKeys];
    [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilitySetStickyPopupKeys:v25];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      notification = *MEMORY[0x29EDC7EA8];
      v13 = accessibilityLocalizedString(@"emoji.variants.alert");
      UIAccessibilityPostNotification(notification, v13);
      MEMORY[0x29EDC9740](v13);
      [UIKeyboardLayoutStarAccessibility _axSetIsWaitingForEmojiPopupAnnouncement:v43];
      v14 = [MEMORY[0x29EDBA068] defaultCenter];
      [v14 addObserver:v43 selector:sel__axHandleEmojiPopupLayoutChangeAfterAnnouncement name:*MEMORY[0x29EDC7E98] object:?];
      MEMORY[0x29EDC9740](v14);
      v24 = MEMORY[0x29EDC9748](v43);
      AXPerformBlockOnMainThreadAfterDelay();
      objc_storeStrong(&v24, 0);
    }

    else
    {
      v10 = *MEMORY[0x29EDC7ED8];
      v11 = [v25 firstObject];
      UIAccessibilityPostNotification(v10, v11);
      MEMORY[0x29EDC9740](v11);
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)setActiveKey:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v6 setActiveKey:location[0]];
  v4 = 0;
  v3 = 0;
  if (!location[0])
  {
    v5 = [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilityStickyPopupKeys];
    v4 = 1;
    v3 = v5 != 0;
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v3)
  {
    [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySetStickyPopupKeys:?];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilityInternalData
{
  v4 = a1;
  if (a1)
  {
    v3 = [v4 _accessibilityValueForKey:@"AXInternalData"];
    if (!v3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
      [v4 _accessibilitySetRetainedValue:v3 forKey:{@"AXInternalData", MEMORY[0x29EDC9740](0).n128_f64[0]}];
    }

    v5 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (void)_accessibilityResetInternalData
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = a1;
  if (a1)
  {
    location = [(UIKeyboardLayoutStarAccessibility *)v13 _accessibilityInternalData];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v9 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(__b[1] + 8 * v6);
        v3 = [location objectForKey:v11];
        [v3 setAccessibilityContainer:0];
        *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v14 count:{16, v1}];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    [v13 _accessibilityRemoveValueForKey:{@"AXInternalData", v2}];
    [v13 _accessibilityRemoveValueForKey:@"AXInternalStoredKeyOrder"];
    [v13 _accessibilityRemoveValueForKey:@"kAXStoredVisibleKeysByRow"];
    objc_storeStrong(&location, 0);
  }
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(UIKeyboardLayoutStarAccessibility *)self _accessibilityResetInternalData];
  [(UIKeyboardLayoutStarAccessibility *)v4 _axUnregisterForAccessibilityContinuousPathSettingsNotifications];
  v2.receiver = v4;
  v2.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v2 dealloc];
}

- (BOOL)accessibilityElementsHidden
{
  LOBYTE(v3) = 0;
  if (([*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardActive] & 1) == 0)
  {
    v3 = AXProcessIsStickerPickerService() ^ 1;
  }

  return v3 & 1;
}

- (id)_accessibilityKeyboardKeyForString:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = 0;
  v5 = v20;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__UIKeyboardLayoutStarAccessibility__accessibilityKeyboardKeyForString___block_invoke;
  v10 = &unk_29F30D828;
  v11[0] = MEMORY[0x29EDC9748](location[0]);
  v11[1] = &v12;
  [(UIKeyboardLayoutStarAccessibility *)v5 accessibilityEnumerateContainerElementsUsingBlock:&v6];
  v4 = MEMORY[0x29EDC9748](v13[5]);
  objc_storeStrong(v11, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __72__UIKeyboardLayoutStarAccessibility__accessibilityKeyboardKeyForString___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v48 = a3;
  v47 = a4;
  v46 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = MEMORY[0x29EDC9748](location[0]);
    v11 = [v44 accessibilityLabel];
    v12 = 0;
    if ([v11 isEqualToString:*(a1 + 32)])
    {
      v12 = [v44 isAccessibilityElement];
    }

    *&v4 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    if (v12)
    {
      goto LABEL_53;
    }

    v42 = 0;
    v40 = 0;
    v10 = 0;
    if ([*(a1 + 32) isEqualToString:{@"\n", v4}])
    {
      v43 = [(UIAccessibilityElementKBKey *)v44 key];
      v42 = 1;
      v41 = [v43 name];
      v40 = 1;
      v10 = [v41 isEqualToString:@"Return-Key"];
    }

    if (v40)
    {
      MEMORY[0x29EDC9740](v41);
    }

    if (v42)
    {
      MEMORY[0x29EDC9740](v43);
    }

    if (v10)
    {
      goto LABEL_53;
    }

    v38 = 0;
    v36 = 0;
    v34 = 0;
    v32 = 0;
    v30 = 0;
    v28 = 0;
    v9 = 0;
    if ([*(a1 + 32) isEqualToString:@" "])
    {
      v39 = [(UIAccessibilityElementKBKey *)v44 key];
      v38 = 1;
      v37 = [v39 name];
      v36 = 1;
      v8 = 1;
      if (([v37 isEqualToString:@"Space-Key"] & 1) == 0)
      {
        v35 = [(UIAccessibilityElementKBKey *)v44 key];
        v34 = 1;
        v33 = [v35 name];
        v32 = 1;
        v8 = 1;
        if (([v33 isEqualToString:@"Unlabeled-Space-Key"] & 1) == 0)
        {
          v31 = [(UIAccessibilityElementKBKey *)v44 key];
          v30 = 1;
          v29 = [v31 name];
          v28 = 1;
          v8 = [v29 isEqualToString:@"Monolith-Space-Key"];
        }
      }

      v9 = v8;
    }

    if (v28)
    {
      MEMORY[0x29EDC9740](v29);
    }

    if (v30)
    {
      MEMORY[0x29EDC9740](v31);
    }

    if (v32)
    {
      MEMORY[0x29EDC9740](v33);
    }

    if (v34)
    {
      MEMORY[0x29EDC9740](v35);
    }

    if (v36)
    {
      MEMORY[0x29EDC9740](v37);
    }

    if (v38)
    {
      MEMORY[0x29EDC9740](v39);
    }

    if (v9)
    {
      goto LABEL_53;
    }

    v26 = 0;
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v7 = 0;
    if ([*(a1 + 32) isEqualToString:@"\b"])
    {
      v27 = [(UIAccessibilityElementKBKey *)v44 key];
      v26 = 1;
      v25 = [v27 name];
      v24 = 1;
      v6 = 1;
      if (([v25 isEqualToString:@"Delete-Key"] & 1) == 0)
      {
        v23 = [(UIAccessibilityElementKBKey *)v44 key];
        v22 = 1;
        v21 = [v23 name];
        v20 = 1;
        v6 = [v21 isEqualToString:@"Monolith-Linear-Delete-Key"];
      }

      v7 = v6;
    }

    if (v20)
    {
      MEMORY[0x29EDC9740](v21);
    }

    if (v22)
    {
      MEMORY[0x29EDC9740](v23);
    }

    if (v24)
    {
      MEMORY[0x29EDC9740](v25);
    }

    if (v26)
    {
      MEMORY[0x29EDC9740](v27);
    }

    if (v7)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v16 = 0;
    v5 = 0;
    if ([*(a1 + 32) isEqualToString:@"&"])
    {
      v19 = [(UIAccessibilityElementKBKey *)v44 key];
      v18 = 1;
      v17 = [v19 name];
      v16 = 1;
      v5 = [v17 isEqualToString:@"Ampersand"];
    }

    if (v16)
    {
      MEMORY[0x29EDC9740](v17);
    }

    if (v18)
    {
      MEMORY[0x29EDC9740](v19);
    }

    if (v5)
    {
LABEL_53:
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v44);
      *v47 = 1;
    }

    objc_storeStrong(&v44, 0);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityChangeToKeyplane:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [(UIKeyboardLayoutStarAccessibility *)v6 keyplaneNamed:location[0]];
    [(UIKeyboardLayoutStarAccessibility *)v6 changeToKeyplane:v3];
    [(UIKeyboardLayoutStarAccessibility *)v6 _accessibilityRemoveValueForKey:@"AXInternalStoredKeyOrder"];
    objc_storeStrong(&v3, 0);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibiltyAvailableKeyplanes
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = self;
  v16[1] = a2;
  v16[0] = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  v11 = [(UIKeyboardLayoutStarAccessibility *)v17 safeValueForKey:@"keyboard"];
  obj = [v11 safeValueForKey:@"subtrees"];
  v13 = [obj countByEnumeratingWithState:__b objects:v18 count:{16, MEMORY[0x29EDC9740](v11).n128_f64[0]}];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v5 = v16[0];
      v6 = [v15 name];
      [v5 addObject:?];
      *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v18 count:{16, v2}];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v4 = MEMORY[0x29EDC9748](v16[0]);
  objc_storeStrong(v16, 0);

  return v4;
}

- (id)_accessibilityKeys
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UIKeyboardLayoutStarAccessibility *)self _accessibilityValueForKey:@"AXInternalStoredKeyOrder"];
  if (!v7[0])
  {
    v7[0] = [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySortedUnstoredKeys];
    [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilitySetRetainedValue:v7[0] forKey:@"AXInternalStoredKeyOrder", MEMORY[0x29EDC9740](0).n128_f64[0]];
    v6 = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v5 = [v6 currentInputMode];
    v4 = [v5 primaryLanguage];
    [UIKeyboardLayoutStarAccessibility _accessibilitySetRetainedValue:v8 forKey:"_accessibilitySetRetainedValue:forKey:"];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
  }

  v3 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);

  return v3;
}

- (id)_accessibilityVisibleKeysByRow
{
  v56 = *MEMORY[0x29EDCA608];
  v52 = self;
  v51[1] = a2;
  v51[0] = [(UIKeyboardLayoutStarAccessibility *)self _accessibilityValueForKey:@"kAXStoredVisibleKeysByRow"];
  if (!v51[0])
  {
    v50 = [(UIKeyboardLayoutStarAccessibility *)v52 _accessibilityKeys];
    v49 = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v50);
    v32 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
    if (v32)
    {
      v28 = *__b[2];
      v29 = 0;
      v30 = v32;
      while (1)
      {
        v27 = v29;
        if (*__b[2] != v28)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(__b[1] + 8 * v29);
        if ([v48 visible])
        {
          v45 = 0u;
          v46 = 0u;
          [v48 frame];
          *&v45 = v2;
          *(&v45 + 1) = v3;
          *&v46 = v4;
          *(&v46 + 1) = v5;
          v44 = 0;
          memset(v42, 0, sizeof(v42));
          v25 = MEMORY[0x29EDC9748](v49);
          v26 = [v25 countByEnumeratingWithState:v42 objects:v54 count:16];
          if (v26)
          {
            v22 = *v42[2];
            v23 = 0;
            v24 = v26;
            while (1)
            {
              v21 = v23;
              if (*v42[2] != v22)
              {
                objc_enumerationMutation(v25);
              }

              v43 = *(v42[1] + 8 * v23);
              location = [v43 firstObject];
              v20 = *(&v45 + 1);
              [location frame];
              v37 = v6;
              v38 = v7;
              v39 = v8;
              v40 = v9;
              if (CGFAbs_0(v20 - v7) >= 0.001)
              {
                v36 = 0;
              }

              else
              {
                [v43 addObject:v48];
                v44 = 1;
                v36 = 4;
              }

              objc_storeStrong(&location, 0);
              if (v36)
              {
                break;
              }

              ++v23;
              if (v21 + 1 >= v24)
              {
                v23 = 0;
                v24 = [v25 countByEnumeratingWithState:v42 objects:v54 count:16];
                if (!v24)
                {
                  goto LABEL_17;
                }
              }
            }
          }

          else
          {
LABEL_17:
            v36 = 0;
          }

          *&v10 = MEMORY[0x29EDC9740](v25).n128_u64[0];
          if ((v44 & 1) == 0)
          {
            v35 = [MEMORY[0x29EDB8DE8] arrayWithObject:{v48, v10}];
            [v49 addObject:v35];
            objc_storeStrong(&v35, 0);
          }
        }

        ++v29;
        if (v27 + 1 >= v30)
        {
          v29 = 0;
          v30 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
          if (!v30)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    memset(v33, 0, sizeof(v33));
    v18 = MEMORY[0x29EDC9748](v49);
    v19 = [v18 countByEnumeratingWithState:v33 objects:v53 count:16];
    if (v19)
    {
      v15 = *v33[2];
      v16 = 0;
      v17 = v19;
      while (1)
      {
        v14 = v16;
        if (*v33[2] != v15)
        {
          objc_enumerationMutation(v18);
        }

        v34 = *(v33[1] + 8 * v16);
        [v34 sortUsingComparator:&__block_literal_global_25];
        ++v16;
        if (v14 + 1 >= v17)
        {
          v16 = 0;
          v17 = [v18 countByEnumeratingWithState:v33 objects:v53 count:16];
          if (!v17)
          {
            break;
          }
        }
      }
    }

    *&v11 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    [v49 sortUsingComparator:{&__block_literal_global_597, v11}];
    [(UIKeyboardLayoutStarAccessibility *)v52 _accessibilitySetRetainedValue:v49 forKey:@"kAXStoredVisibleKeysByRow"];
    objc_storeStrong(v51, v49);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
  }

  v13 = MEMORY[0x29EDC9748](v51[0]);
  v36 = 1;
  objc_storeStrong(v51, 0);

  return v13;
}

uint64_t __67__UIKeyboardLayoutStarAccessibility__accessibilityVisibleKeysByRow__block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  [location[0] frame];
  v7 = v3;
  [v8 frame];
  if (v7 >= v4)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

uint64_t __67__UIKeyboardLayoutStarAccessibility__accessibilityVisibleKeysByRow__block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v8 = [location[0] firstObject];
  [v8 frame];
  v10 = v3;
  v7 = [v11 firstObject];
  [v7 frame];
  v9 = v4;
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  if (v10 >= v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (id)_accessibilitySortedUnstoredKeys
{
  v37 = *MEMORY[0x29EDCA608];
  v34 = self;
  v33[1] = a2;
  v33[0] = [(UIKeyboardLayoutStarAccessibility *)self safeValueForKey:@"keyplane"];
  v32 = 0;
  if (([(UIKeyboardLayoutStarAccessibility *)v34 _accessibilityIsRTL]& 1) != 0)
  {
    v31 = 0;
    objc_opt_class();
    v19 = [v33[0] safeValueForKey:@"keys"];
    v30 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v19);
    v29 = MEMORY[0x29EDC9748](v30);
    objc_storeStrong(&v30, 0);
    v2 = [v29 sortedArrayUsingFunction:accessibilityRTLKeyPositionSort context:0];
    v3 = v32;
    v32 = v2;
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9740](v29).n128_u64[0];
  }

  else
  {
    v28 = 0;
    objc_opt_class();
    v18 = [v33[0] safeValueForKey:@"keysOrderedByPositionWithoutZip"];
    v27 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v18);
    v26 = MEMORY[0x29EDC9748](v27);
    objc_storeStrong(&v27, 0);
    v5 = v32;
    v32 = v26;
    v4 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  }

  v15 = [MEMORY[0x29EDB8E30] orderedSetWithArray:{v32, *&v4}];
  v14 = [v15 array];
  v25 = [v14 mutableCopy];
  MEMORY[0x29EDC9740](v14);
  MEMORY[0x29EDC9740](v15);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v32);
  v17 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v17)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v17;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v12);
      objc_opt_class();
      v22 = objc_opt_isKindOfClass() & 1;
      v21 = 1;
      if (!v22 || ([v24 visible] & 1) == 0 || (v21 & 1) == 0)
      {
        if ((v22 & 1) == 0)
        {
          oslog = AXLogCommon();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            log = oslog;
            __os_log_helper_16_2_1_8_64(v35, v24);
            _os_log_error_impl(&dword_29C4D6000, log, OS_LOG_TYPE_ERROR, "Unexpected kb tree: %@", v35, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        [v25 removeObject:v24];
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  v8 = [v25 copy];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);

  return v8;
}

- (double)_axClearReturnKeyLabel
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = a1;
  if (a1)
  {
    memset(__b, 0, sizeof(__b));
    v7 = [(UIKeyboardLayoutStarAccessibility *)v21 _accessibilityInternalData];
    obj = [v7 allValues];
    v9 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, MEMORY[0x29EDC9740](v7).n128_f64[0]}];
    if (v9)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v9;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(__b[1] + 8 * v5);
        objc_opt_class();
        v14 = 0;
        v12 = 0;
        v10 = 0;
        v2 = 0;
        if (objc_opt_isKindOfClass())
        {
          v18 = 0;
          objc_opt_class();
          v17 = __UIAccessibilityCastAsClass();
          if (v18)
          {
            abort();
          }

          v16 = MEMORY[0x29EDC9748](v17);
          objc_storeStrong(&v17, 0);
          v15 = v16;
          v14 = 1;
          v13 = [(UIAccessibilityElementKBKey *)v16 key];
          v12 = 1;
          v11 = [v13 name];
          v10 = 1;
          v2 = [v11 isEqualToString:@"Return-Key"];
        }

        if (v10)
        {
          MEMORY[0x29EDC9740](v11);
        }

        if (v12)
        {
          MEMORY[0x29EDC9740](v13);
        }

        if (v14)
        {
          MEMORY[0x29EDC9740](v15);
        }

        if (v2)
        {
          [v20 setAccessibilityLabel:0];
        }

        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    *&result = MEMORY[0x29EDC9740](obj).n128_u64[0];
  }

  return result;
}

- (void)setLabel:(id)a3 forKey:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v5 setLabel:location[0] forKey:v6];
  if ([v6 isEqualToString:*MEMORY[0x29EDC81C0]])
  {
    [(UIKeyboardLayoutStarAccessibility *)v8 _axClearReturnKeyLabel];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setReturnKeyEnabled:(BOOL)a3 withDisplayName:(id)a4 withType:(int)a5
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v7 = a5;
  v6.receiver = v11;
  v6.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v6 setReturnKeyEnabled:v9 withDisplayName:location withType:a5];
  [(UIKeyboardLayoutStarAccessibility *)v11 _axClearReturnKeyLabel];
  objc_storeStrong(&location, 0);
}

- (uint64_t)_isCapitalLetterKeyplane:(uint64_t)a1
{
  v6 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v6)
  {
    v3 = [location lowercaseString];
    if ([v3 hasSuffix:@"small_capital-letters"])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v3 hasSuffix:@"capital-letters"] & 1;
    }

    v4 = 1;
    objc_storeStrong(&v3, 0);
  }

  else
  {
    v7 = 0;
    v4 = 1;
  }

  objc_storeStrong(&location, 0);
  return v7 & 1;
}

- (uint64_t)_isSmallLetterKeyplane:(uint64_t)a1
{
  v5 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v5)
  {
    v3 = [location lowercaseString];
    v6 = [v3 hasSuffix:@"small-letters"] & 1;
    MEMORY[0x29EDC9740](v3);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  return v6 & 1;
}

- (void)setKeyplaneName:(id)a3
{
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x20000000;
  v51 = 32;
  v52 = 0;
  v3 = [(UIKeyboardLayoutStarAccessibility *)v55 _accessibilityKeys];
  v4 = v53;
  v53 = v3;
  *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v42[1] = MEMORY[0x29EDCA5F8];
  v43 = -1073741824;
  v44 = 0;
  v45 = __53__UIKeyboardLayoutStarAccessibility_setKeyplaneName___block_invoke;
  v46 = &unk_29F30CC98;
  v47 = &v48;
  [v53 enumerateObjectsUsingBlock:v5];
  v42[0] = [(UIKeyboardLayoutStarAccessibility *)v55 safeValueForKey:@"_keyplane"];
  v41 = [(UIKeyboardLayoutStarAccessibility *)v55 safeValueForKey:@"keyplaneName"];
  v40.receiver = v55;
  v40.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v40 setKeyplaneName:location[0]];
  v39 = [(UIKeyboardLayoutStarAccessibility *)v55 safeValueForKey:@"_keyplane"];
  if (v42[0] == v39)
  {
    v38 = 1;
  }

  else
  {
    v37 = [(UIKeyboardLayoutStarAccessibility *)v55 _accessibilityKeys];
    v36 = 0;
    if (([(UIKeyboardLayoutStarAccessibility *)v55 _isCapitalLetterKeyplane:v41]& 1) != 0 && ([(UIKeyboardLayoutStarAccessibility *)v55 _isSmallLetterKeyplane:?]& 1) != 0 || ([(UIKeyboardLayoutStarAccessibility *)v55 _isCapitalLetterKeyplane:?]& 1) != 0 && ([(UIKeyboardLayoutStarAccessibility *)v55 _isSmallLetterKeyplane:v41]& 1) != 0)
    {
      v36 = 1;
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x20000000;
    v34 = 32;
    v35 = 0;
    v25 = MEMORY[0x29EDCA5F8];
    v26 = -1073741824;
    v27 = 0;
    v28 = __53__UIKeyboardLayoutStarAccessibility_setKeyplaneName___block_invoke_2;
    v29 = &unk_29F30CC98;
    v30 = &v31;
    [v37 enumerateObjectsUsingBlock:?];
    v15 = 1;
    if (v36)
    {
      v15 = v49[3] != v32[3];
    }

    v24 = v15;
    if (v15)
    {
      v14 = [MEMORY[0x29EDC7B18] sharedInputModeController];
      v13 = [v14 currentInputMode];
      v12 = [v13 primaryLanguage];
      v10 = [(UIKeyboardLayoutStarAccessibility *)v55 _accessibilityValueForKey:@"AXCurrentLanguage"];
      v11 = [v12 isEqualToString:?];
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v13);
      MEMORY[0x29EDC9740](v14);
      if ((v11 & 1) == 0)
      {
        v24 = 1;
      }
    }

    v9 = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v8 = [v9 currentInputMode];
    v23 = [v8 primaryLanguage];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    if (!UIAccessibilityIsVoiceOverRunning() || (v36 & 1) != 0 && (([v23 hasPrefix:@"th"] & 1) != 0 || (objc_msgSend(v23, "hasPrefix:", @"hi") & 1) != 0 || (objc_msgSend(v23, "hasPrefix:", @"ko") & 1) != 0))
    {
      v24 = 1;
    }

    if (v24)
    {
      [(UIKeyboardLayoutStarAccessibility *)v55 _accessibilityResetInternalData];
    }

    else
    {
      v22 = [(UIKeyboardLayoutStarAccessibility *)v55 _accessibilityInternalData];
      v7 = [(UIKeyboardLayoutStarAccessibility *)v55 _accessibilityKeys];
      v16 = MEMORY[0x29EDCA5F8];
      v17 = -1073741824;
      v18 = 0;
      v19 = __53__UIKeyboardLayoutStarAccessibility_setKeyplaneName___block_invoke_3;
      v20 = &unk_29F30D218;
      v21 = MEMORY[0x29EDC9748](v22);
      [v7 enumerateObjectsUsingBlock:&v16];
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
    }

    if (v24 & 1) != 0 && ([*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardActive])
    {
      notification = *MEMORY[0x29EDC7ED8];
      if (UIAccessibilityIsSwitchControlRunning())
      {
        UIAccessibilityPostNotification(notification, *MEMORY[0x29EDBDAE8]);
      }

      else
      {
        UIAccessibilityPostNotification(notification, 0);
      }
    }

    objc_storeStrong(&v23, 0);
    _Block_object_dispose(&v31, 8);
    objc_storeStrong(&v37, 0);
    v38 = 0;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(v42, 0);
  _Block_object_dispose(&v48, 8);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

void __53__UIKeyboardLayoutStarAccessibility_setKeyplaneName___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] visible])
  {
    ++*(*(a1[4] + 8) + 24);
  }

  objc_storeStrong(location, 0);
}

void __53__UIKeyboardLayoutStarAccessibility_setKeyplaneName___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] visible])
  {
    ++*(*(a1[4] + 8) + 24);
  }

  objc_storeStrong(location, 0);
}

void __53__UIKeyboardLayoutStarAccessibility_setKeyplaneName___block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[3] = a3;
  v8[2] = a4;
  v8[1] = a1;
  v8[0] = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithUnsignedInteger:a3];
  v7 = [a1[4] objectForKey:v8[0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIAccessibilityElementKBKey *)v7 setKey:?];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didBeginContinuousPath
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v2 didBeginContinuousPath];
  UIAccessibilityPostNotification(0x427u, 0);
}

- (id)automationElements
{
  v10[2] = self;
  v10[1] = a2;
  v9.receiver = self;
  v9.super_class = UIKeyboardLayoutStarAccessibility;
  v10[0] = [(UIKeyboardLayoutStarAccessibility *)&v9 automationElements];
  v7 = [MEMORY[0x29EDC7B08] sharedInstance];
  location = [v7 autocorrectPrompt];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (location && ([location isHiddenOrHasHiddenAncestor] & 1) == 0)
  {
    v3 = [v10[0] arrayByAddingObject:location];
    v4 = v10[0];
    v10[0] = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = MEMORY[0x29EDC9748](v10[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);

  return v6;
}

- (void)showPopupVariantsForKey:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v11 = MEMORY[0x29EDCA5F8];
    v12 = -1073741824;
    v13 = 0;
    v14 = __61__UIKeyboardLayoutStarAccessibility_showPopupVariantsForKey___block_invoke;
    v15 = &unk_29F30C888;
    v16 = MEMORY[0x29EDC9748](location[0]);
    v17 = MEMORY[0x29EDC9748](v20);
    v18 = MEMORY[0x29ED3E4C0](&v11);
    v5 = [MEMORY[0x29EDC7AF8] activeKeyboard];
    v3 = [v5 _accessibilityKeyboardIsContinuousPathAvailable];
    v4 = 0.5;
    if ((v3 & 1) == 0)
    {
      v4 = 0.0;
    }

    *&v6 = v4;
    MEMORY[0x29EDC9740](v5);
    v10 = v6;
    oslog = VOTLogCommon();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v21, v10);
      _os_log_impl(&dword_29C4D6000, oslog, type, "Delay for popup keys: %f", v21, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v7.receiver = v20;
    v7.super_class = UIKeyboardLayoutStarAccessibility;
    [(UIKeyboardLayoutStarAccessibility *)&v7 showPopupVariantsForKey:location[0]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7460], 0);
  }

  objc_storeStrong(location, 0);
}

void __61__UIKeyboardLayoutStarAccessibility_showPopupVariantsForKey___block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v8 = [MEMORY[0x29EDC7AF8] activeKeyboard];
  v9 = [v8 _accessibilityKeyboardIsContinuousPathTracking];
  *&v1 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if ((v9 & 1) == 0)
  {
    v2 = *(a1 + 32);
    v10.receiver = *(a1 + 40);
    v10.super_class = UIKeyboardLayoutStarAccessibility;
    objc_msgSendSuper2(&v10, sel_showPopupVariantsForKey_, v2, v1);
    notification = *MEMORY[0x29EDC7EA8];
    v6 = accessibilityLocalizedString(@"keyboard.variants.alert");
    v3 = accessibilityLocalizedString(@"keyboard.variants.hint");
    v5 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(notification, v5);
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7460], 0);
  }
}

- (void)showPopupView:(int64_t)a3 withKey:(id)a4 popupInfo:(id)a5 force:(BOOL)a6
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = a6;
  v15 = [(UIKeyboardLayoutStarAccessibility *)v24 safeValueForKey:@"_keyplaneView"];
  v14 = [v15 safeDictionaryForKey:@"_activeViewIndex"];
  v13 = [location name];
  v16 = [v14 objectForKey:?];
  MEMORY[0x29EDC9740](v16);
  MEMORY[0x29EDC9740](v13);
  MEMORY[0x29EDC9740](v14);
  *&v6 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  v18 = v16 == 0;
  v17.receiver = v24;
  v17.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v17 showPopupView:v22 withKey:location popupInfo:v20 force:a6, v6];
  if (v18)
  {
    notification = *MEMORY[0x29EDC7EA8];
    v10 = accessibilityLocalizedString(@"keyboard.variants.alert");
    v7 = accessibilityLocalizedString(@"keyboard.variants.hint");
    v9 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(notification, v9);
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](v10);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7460], 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);
}

- (void)setState:(int)a3 forKey:(id)a4
{
  v33 = *MEMORY[0x29EDCA608];
  v30 = self;
  v29 = a2;
  v28 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v26.receiver = v30;
  v26.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v26 setState:v28 forKey:location];
  v25 = 0;
  if (v28 == 16)
  {
    v24 = 0;
    v23 = [location subtrees];
    if ([location interactionType] == 16)
    {
      v22 = [location flickDirection];
      if (v22 + 1 < [v23 count])
      {
        v4 = [v23 objectAtIndex:v22 + 1];
        v5 = v24;
        v24 = v4;
        MEMORY[0x29EDC9740](v5);
      }
    }

    else
    {
      v21 = [location safeIntegerForKey:@"selectedVariantIndex"];
      if (v21 < [v23 count])
      {
        v6 = [v23 objectAtIndex:v21];
        v7 = v24;
        v24 = v6;
        MEMORY[0x29EDC9740](v7);
      }

      if (_AXUIKit_UIKeyboardCurrentInputModeIsMultiscript())
      {
        v12 = [MEMORY[0x29EDC7B18] sharedInputModeController];
        v11 = [v12 currentInputMode];
        v20 = [v11 multilingualLanguages];
        MEMORY[0x29EDC9740](v11);
        MEMORY[0x29EDC9740](v12);
        oslog = AXLogCommon();
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v32, v20);
          _os_log_debug_impl(&dword_29C4D6000, oslog, type, "Multiscript multilingualLanguages %@", v32, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v20)
        {
          v10 = v21;
          if (v10 < [v20 count])
          {
            v8 = [v20 objectAtIndexedSubscript:v21];
            v9 = v25;
            v25 = v8;
            MEMORY[0x29EDC9740](v9);
            v17 = AXLogCommon();
            v16 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_1_8_64(v31, v25);
              _os_log_debug_impl(&dword_29C4D6000, v17, v16, "language %@", v31, 0xCu);
            }

            objc_storeStrong(&v17, 0);
          }
        }

        objc_storeStrong(&v20, 0);
      }
    }

    v15 = [(UIKeyboardLayoutStarAccessibility *)v30 _accessibilityCreateElementForKey:v24];
    obj = [v15 accessibilityLabel];
    argument = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:obj];
    if (v25)
    {
      [argument setAttribute:v25 forKey:*MEMORY[0x29EDBD918]];
    }

    if (!setState_forKey__LastLabel || ([obj isEqualToString:setState_forKey__LastLabel] & 1) == 0)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
      objc_storeStrong(&setState_forKey__LastLabel, obj);
    }

    objc_storeStrong(&argument, 0);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    objc_storeStrong(&setState_forKey__LastLabel, 0);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
}

- (void)_transitionToContinuousPathState:(int64_t)a3 forTouchInfo:(id)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4.receiver = v8;
  v4.super_class = UIKeyboardLayoutStarAccessibility;
  [(UIKeyboardLayoutStarAccessibility *)&v4 _transitionToContinuousPathState:v6 forTouchInfo:location];
  objc_storeStrong(&location, 0);
}

- (id)_accessibilityKeyElementForKey:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityKeys];
  v23 = [v11 indexOfObject:location[0]];
  v15 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v14 = [v15 currentInputMode];
  v13 = [v14 primaryLanguage];
  v12 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityValueForKey:@"AXCurrentLanguage"];
  v16 = [v13 isEqualToString:?] ^ 1;
  MEMORY[0x29EDC9740](v12);
  MEMORY[0x29EDC9740](v13);
  MEMORY[0x29EDC9740](v14);
  *&v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  v22 = v16 & 1;
  v17 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityIsRTL];
  v21 = v17 != [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityBoolValueForKey:@"AXIsRTL"];
  if ((v16 & 1) != 0 || v21)
  {
    [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityResetInternalData];
    [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilitySetBoolValue:[(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityIsRTL] forKey:@"AXIsRTL"];
  }

  if (v23 == 0x7FFFFFFFFFFFFFFFLL || (v22 & 1) != 0)
  {
    [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityRemoveValueForKey:@"AXInternalStoredKeyOrder"];
    v10 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityKeys];
    v23 = [v10 indexOfObject:location[0]];
    MEMORY[0x29EDC9740](v10);
  }

  v20 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityInternalData];
  v19 = 0;
  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityCreateElementForKey:?];
    v5 = v19;
    v19 = v4;
    MEMORY[0x29EDC9740](v5);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithUnsignedInteger:v23];
    v6 = [v20 objectForKey:v18];
    v7 = v19;
    v19 = v6;
    MEMORY[0x29EDC9740](v7);
    if (!v19)
    {
      v19 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityCreateElementForKey:?];
      [v20 setObject:v19 forKey:{v18, MEMORY[0x29EDC9740](0).n128_f64[0]}];
    }

    objc_storeStrong(&v18, 0);
  }

  v9 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v44 = a3;
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (([(UIKeyboardLayoutStarAccessibility *)v43 pointInside:location[0] withEvent:v44]& 1) != 0)
  {
    v40 = 0;
    v39 = [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilityStickyPopupKeys];
    if (v39)
    {
      v32 = MEMORY[0x29EDCA5F8];
      v33 = -1073741824;
      v34 = 0;
      v35 = __69__UIKeyboardLayoutStarAccessibility__accessibilityHitTest_withEvent___block_invoke;
      v36 = &__block_descriptor_48_e44_B32__0__UIAccessibilityElementKBKey_8Q16_B24l;
      v37 = v44;
      v38 = [v39 indexOfObjectPassingTest:?];
      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [v39 objectAtIndex:v38];
        v5 = v40;
        v40 = v4;
        MEMORY[0x29EDC9740](v5);
      }
    }

    v30 = 0;
    v23 = 0;
    v21 = 0;
    v19 = 0;
    if (!v40)
    {
      v18 = [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilityBiasEscapeButton];
      v31 = v18;
      v30 = 1;
      v27 = 0;
      objc_opt_class();
      v26 = __UIAccessibilityCastAsClass();
      v25 = MEMORY[0x29EDC9748](v26);
      objc_storeStrong(&v26, 0);
      v24 = v25;
      v23 = 1;
      v22 = [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilityBiasEscapeButton];
      v21 = 1;
      [v25 convertPoint:v44 toView:?];
      v28 = v6;
      v29 = v7;
      v19 = [v18 pointInside:0 withEvent:{v6, v7}];
    }

    if (v21)
    {
      MEMORY[0x29EDC9740](v22);
    }

    if (v23)
    {
      MEMORY[0x29EDC9740](v24);
    }

    if (v30)
    {
      MEMORY[0x29EDC9740](v31);
    }

    if (v19)
    {
      v45 = [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilityBiasEscapeButton];
      v41 = 1;
    }

    else
    {
      if (!v40 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v8 = [(UIKeyboardLayoutStarAccessibility *)v43 keyHitTestContainingPoint:v44];
        v9 = v40;
        v40 = v8;
        MEMORY[0x29EDC9740](v9);
        if (!v40 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v10 = [(UIKeyboardLayoutStarAccessibility *)v43 keyHitTestClosestToPoint:v44];
          v11 = v40;
          v40 = v10;
          MEMORY[0x29EDC9740](v11);
        }
      }

      if (v40)
      {
        v20 = MEMORY[0x29EDC9748](v40);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [(UIKeyboardLayoutStarAccessibility *)v43 _accessibilityKeyElementForKey:v40];
          v13 = v20;
          v20 = v12;
          MEMORY[0x29EDC9740](v13);
        }

        if (([v20 isAccessibilityElement] & 1) == 0)
        {
          v14 = [(UIKeyboardLayoutStarAccessibility *)v43 __accessibilityHitTest:location[0] withEvent:v44];
          v15 = v20;
          v20 = v14;
          MEMORY[0x29EDC9740](v15);
        }

        v45 = MEMORY[0x29EDC9748](v20);
        v41 = 1;
        objc_storeStrong(&v20, 0);
      }

      else
      {
        v45 = MEMORY[0x29EDC9748](v43);
        v41 = 1;
      }
    }

    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v45 = 0;
    v41 = 1;
  }

  objc_storeStrong(location, 0);
  v16 = v45;

  return v16;
}

BOOL __69__UIKeyboardLayoutStarAccessibility__accessibilityHitTest_withEvent___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] accessibilityFrame];
  v12.origin.x = v2;
  v12.origin.y = v3;
  v12.size.width = v4;
  v12.size.height = v5;
  v9 = [location[0] accessibilityContainer];
  UIAccessibilityPointForPoint();
  point.x = v6;
  point.y = v7;
  v10 = CGRectContainsPoint(v12, point);
  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(location, 0);
  return v10;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v35 = self;
  v34[1] = a2;
  v34[0] = [MEMORY[0x29EDB8DE8] array];
  if (([(UIKeyboardLayoutStarAccessibility *)v35 safeBoolForKey:@"isHandwritingPlane"]& 1) != 0)
  {
    v33 = [(UIKeyboardLayoutStarAccessibility *)v35 safeUIViewForKey:@"_keyplaneView"];
    v25 = 0;
    v26 = &v25;
    v27 = 838860800;
    v28 = 48;
    v29 = __Block_byref_object_copy__16;
    v30 = __Block_byref_object_dispose__16;
    v31 = 0;
    v19 = MEMORY[0x29EDCA5F8];
    v20 = -1073741824;
    v21 = 0;
    v22 = __75__UIKeyboardLayoutStarAccessibility__accessibilitySupplementaryHeaderViews__block_invoke;
    v23 = &unk_29F30CC70;
    v24[1] = &v25;
    v24[0] = MEMORY[0x29EDC9748](v35);
    AXPerformSafeBlock();
    v18 = MEMORY[0x29EDC9748](v26[5]);
    objc_storeStrong(v24, 0);
    _Block_object_dispose(&v25, 8);
    objc_storeStrong(&v31, 0);
    v32 = [v18 firstObject];
    MEMORY[0x29EDC9740](v18);
    v7 = v34[0];
    v11 = 0;
    v12 = &v11;
    v13 = 838860800;
    v14 = 48;
    v15 = __Block_byref_object_copy__16;
    v16 = __Block_byref_object_dispose__16;
    v17 = 0;
    v10[1] = &v11;
    v9 = MEMORY[0x29EDC9748](v33);
    v10[0] = MEMORY[0x29EDC9748](v32);
    AXPerformSafeBlock();
    v8 = MEMORY[0x29EDC9748](v12[5]);
    objc_storeStrong(v10, 0);
    objc_storeStrong(&v9, 0);
    _Block_object_dispose(&v11, 8);
    objc_storeStrong(&v17, 0);
    [v7 axSafelyAddObject:?];
    *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    v5 = v34[0];
    v6 = [v33 _accessibilityFindSubviewDescendant:{&__block_literal_global_673, v2}];
    [v5 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v6);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  v4 = MEMORY[0x29EDC9748](v34[0]);
  objc_storeStrong(v34, 0);

  return v4;
}

double __75__UIKeyboardLayoutStarAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) safeValueForKey:@"_keyplane"];
  v1 = [v6 cachedKeysByKeyName:@"Handwriting-Input"];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

double __75__UIKeyboardLayoutStarAccessibility__accessibilitySupplementaryHeaderViews__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) viewForKey:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

uint64_t __75__UIKeyboardLayoutStarAccessibility__accessibilitySupplementaryHeaderViews__block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uihandwritinga.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_axKBModalView
{
  if (a1)
  {
    v2 = [a1 safeValueForKey:@"modalDisplayView"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_accessibilityHasBiasEscapeButton
{
  if (a1)
  {
    v1 = [(UIKeyboardLayoutStarAccessibility *)a1 _accessibilityBiasEscapeButton];
    v3 = v1 != 0;
    MEMORY[0x29EDC9740](v1);
  }

  else
  {
    return 0;
  }

  return v3;
}

- (uint64_t)_accessibilityBiasEscapeButtonIsFirst
{
  v9 = a1;
  if (a1)
  {
    v7 = 0;
    objc_opt_class();
    v4 = [MEMORY[0x29EDC7B08] activeInstance];
    v3 = [v4 safeValueForKey:@"_layout"];
    v6 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v4);
    v5 = MEMORY[0x29EDC9748](v6);
    objc_storeStrong(&v6, 0);
    v8 = v5;
    v2 = [v5 currentHandBias];
    if (v2)
    {
      if (v2 == 1)
      {
        v10 = ([v9 _accessibilityIsRTL] ^ 1) & 1;
      }

      else if (v2 == 2)
      {
        v10 = [v9 _accessibilityIsRTL] & 1;
      }
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (int64_t)accessibilityElementCount
{
  v7 = self;
  location[1] = a2;
  v5 = [(UIKeyboardLayoutStarAccessibility *)self _axKBModalView];
  MEMORY[0x29EDC9740](v5);
  if (v5)
  {
    return 1;
  }

  location[0] = [(UIKeyboardLayoutStarAccessibility *)v7 _accessibilityStickyPopupKeys];
  if (location[0])
  {
    v8 = [location[0] count];
  }

  else
  {
    v4 = [(UIKeyboardLayoutStarAccessibility *)v7 _accessibilityKeys];
    v3 = [v4 count];
    v8 = v3 + [(UIKeyboardLayoutStarAccessibility *)v7 _accessibilityHasBiasEscapeButton];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  return v8;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = [(UIKeyboardLayoutStarAccessibility *)v25 _axKBModalView];
  MEMORY[0x29EDC9740](v18);
  if (v18)
  {
    v26 = 0;
    v23 = 1;
  }

  else
  {
    v22 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityStickyPopupKeys];
    if (v22)
    {
      v26 = [v22 indexOfObject:location[0]];
      v23 = 1;
    }

    else
    {
      v17 = location[0];
      v16 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityBiasEscapeButton];
      MEMORY[0x29EDC9740](v16);
      if (v17 == v16)
      {
        if (([(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityBiasEscapeButtonIsFirst]& 1) != 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = [(UIKeyboardLayoutStarAccessibility *)v25 accessibilityElementCount]- 1;
        }

        v26 = v15;
        v23 = 1;
      }

      else
      {
        v21 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityInternalData];
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](v21);
        v14 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (v14)
        {
          v10 = *__b[2];
          v11 = 0;
          v12 = v14;
          while (1)
          {
            v9 = v11;
            if (*__b[2] != v10)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(__b[1] + 8 * v11);
            v8 = [v21 objectForKey:v20];
            v7 = location[0];
            *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
            if (v8 == v7)
            {
              break;
            }

            ++v11;
            if (v9 + 1 >= v12)
            {
              v11 = 0;
              v12 = [obj countByEnumeratingWithState:__b objects:v27 count:{16, v3}];
              if (!v12)
              {
                goto LABEL_20;
              }
            }
          }

          v5 = [v20 unsignedIntegerValue];
          v6 = 0;
          if ([(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityHasBiasEscapeButton])
          {
            v6 = [(UIKeyboardLayoutStarAccessibility *)v25 _accessibilityBiasEscapeButtonIsFirst];
          }

          v26 = v5 + ((v6 & 1) != 0);
          v23 = 1;
        }

        else
        {
LABEL_20:
          v23 = 0;
        }

        MEMORY[0x29EDC9740](obj);
        if (!v23)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
          v23 = 1;
        }

        objc_storeStrong(&v21, 0);
      }
    }

    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(location, 0);
  return v26;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v14 = [(UIKeyboardLayoutStarAccessibility *)self _axKBModalView];
  MEMORY[0x29EDC9740](v14);
  if (v14)
  {
    v25 = [(UIKeyboardLayoutStarAccessibility *)v24 _axKBModalView];
    goto LABEL_26;
  }

  v21 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityStickyPopupKeys];
  if (v21)
  {
    v20 = 0;
    if ((v22 & 0x8000000000000000) != 0 || v22 >= [v21 count])
    {
      _AXAssert();
    }

    else
    {
      v3 = [v21 objectAtIndexedSubscript:v22];
      v4 = v20;
      v20 = v3;
      MEMORY[0x29EDC9740](v4);
    }

    v25 = MEMORY[0x29EDC9748](v20);
    v19 = 1;
    objc_storeStrong(&v20, 0);
    goto LABEL_25;
  }

  if (![(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityHasBiasEscapeButton]|| ([(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityBiasEscapeButtonIsFirst]& 1) == 0)
  {
LABEL_14:
    v18 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityInternalData];
    v17 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithUnsignedInteger:v22];
    v16 = [v18 objectForKey:v17];
    if (!v16)
    {
      v15 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityKeys];
      if (v22 < [v15 count])
      {
        v13 = [v15 objectAtIndex:v22];
        v5 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityCreateElementForKey:v13];
        v6 = v16;
        v16 = v5;
        MEMORY[0x29EDC9740](v6);
        *&v7 = MEMORY[0x29EDC9740](v13).n128_u64[0];
        if (v16)
        {
          [v18 setObject:v16 forKey:{v17, v7}];
        }
      }

      objc_storeStrong(&v15, 0);
    }

    if (!v16)
    {
      v12 = v22;
      if (v12 == [(UIKeyboardLayoutStarAccessibility *)v24 accessibilityElementCount]- 1 && [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityHasBiasEscapeButton]&& ([(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityBiasEscapeButtonIsFirst]& 1) == 0)
      {
        v8 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityBiasEscapeButton];
        v9 = v16;
        v16 = v8;
        MEMORY[0x29EDC9740](v9);
      }
    }

    v25 = MEMORY[0x29EDC9748](v16);
    v19 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    goto LABEL_25;
  }

  if (v22)
  {
    --v22;
    goto LABEL_14;
  }

  v25 = [(UIKeyboardLayoutStarAccessibility *)v24 _accessibilityBiasEscapeButton];
  v19 = 1;
LABEL_25:
  objc_storeStrong(&v21, 0);
LABEL_26:
  v10 = v25;

  return v10;
}

- (id)focusItemsInRect:(CGRect)a3
{
  v18 = a3;
  v17 = self;
  v16[1] = a2;
  v15.receiver = self;
  v15.super_class = UIKeyboardLayoutStarAccessibility;
  v16[0] = [(UIKeyboardLayoutStarAccessibility *)&v15 focusItemsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (([(UIKeyboardLayoutStarAccessibility *)v17 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v6 = [(UIKeyboardLayoutStarAccessibility *)v17 _accessibilityKeys];
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __54__UIKeyboardLayoutStarAccessibility_focusItemsInRect___block_invoke;
    v11 = &unk_29F30D8B0;
    v12 = MEMORY[0x29EDC9748](v17);
    v13 = [v6 axMapObjectsUsingBlock:&v7];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v19 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{1, v3, v13}];
    v14 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v19 = MEMORY[0x29EDC9748](v16[0]);
    v14 = 1;
  }

  objc_storeStrong(v16, 0);
  v4 = v19;

  return v4;
}

id __54__UIKeyboardLayoutStarAccessibility_focusItemsInRect___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] _accessibilityKeyElementForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)canProduceString:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13.receiver = v16;
  v13.super_class = UIKeyboardLayoutStarAccessibility;
  v14 = [(UIKeyboardLayoutStarAccessibility *)&v13 canProduceString:location[0]];
  if ((v14 & 1) == 0 && UIAccessibilityIsVoiceOverRunning())
  {
    v14 = 1;
    v12 = [location[0] length];
    for (i = 0; ; ++i)
    {
      v7 = 0;
      if (i < v12)
      {
        v7 = v14;
      }

      if ((v7 & 1) == 0)
      {
        break;
      }

      v5 = v16;
      v18 = i;
      v17 = 1;
      v19 = i;
      v20 = 1;
      v9 = i;
      v10 = 1;
      v6 = [location[0] substringWithRange:{i, 1}];
      v8.receiver = v5;
      v8.super_class = UIKeyboardLayoutStarAccessibility;
      v14 = [(UIKeyboardLayoutStarAccessibility *)&v8 canProduceString:?];
      MEMORY[0x29EDC9740](v6);
    }
  }

  v4 = v14;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (double)_axGetSortingNumberForEmojiCell:(uint64_t)a1
{
  v9 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v9)
  {
    v6 = 0.4;
    v5 = [location _accessibilityAncestorIsKindOf:objc_opt_class()];
    if (v5)
    {
      [location accessibilityFrame];
      UIAccessibilityFrameToBounds();
      rect = v11;
      Width = CGRectGetWidth(v11);
      v6 = (CGRectGetMidX(rect) / Width) / 100.0 + 0.5;
    }

    v10 = v6;
    v7 = 1;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v10 = 0.0;
    v7 = 1;
  }

  objc_storeStrong(&location, 0);
  return v10;
}

- (id)_rowNumberOverrideForSplitEmojiKey:(uint64_t)a1
{
  v8 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v8)
  {
    v5 = 0;
    v4 = [location name];
    if ([v4 isEqualToString:@"Space-Key"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Return-Key") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Delete-Key"))
    {
      objc_storeStrong(&v5, &unk_2A238E7F8);
    }

    else if ([v4 isEqualToString:@"Emoji-International-Key"])
    {
      objc_storeStrong(&v5, &unk_2A238E810);
    }

    v9 = MEMORY[0x29EDC9748](v5);
    v6 = 1;
    objc_storeStrong(&v4, 0);
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v9 = 0;
    v6 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v9;

  return v2;
}

- (id)_accessibilityGetKeyboardRowsByRowNumber
{
  if (a1)
  {
    v2 = [a1 iOSGetKeyboardRowsByNumber];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)atvGetKeyboardRowsByNumber
{
  v22 = self;
  v21 = a2;
  v17[0] = 0;
  v17[1] = v17;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  v12 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = [(UIKeyboardLayoutStarAccessibility *)v22 _accessibilityKeys];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __63__UIKeyboardLayoutStarAccessibility_atvGetKeyboardRowsByNumber__block_invoke;
  v9 = &unk_29F30D8D8;
  v10 = MEMORY[0x29EDC9748](v22);
  v11[1] = v13;
  v11[2] = v17;
  v11[0] = MEMORY[0x29EDC9748](v12);
  [v4 enumerateObjectsUsingBlock:&v5];
  MEMORY[0x29EDC9740](v4);
  v3 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v17, 8);

  return v3;
}

void __63__UIKeyboardLayoutStarAccessibility_atvGetKeyboardRowsByNumber__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v43[3] = a3;
  v43[2] = a4;
  v43[1] = a1;
  v43[0] = [*(a1 + 32) _accessibilityKeyElementForKey:location[0]];
  v42 = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  [v42 setShouldReturnScannerGroups:0];
  v41 = [v43[0] _accessibilityLeafDescendantsWithOptions:v42];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v41);
  v32 = [obj countByEnumeratingWithState:__b objects:v45 count:16];
  if (v32)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v32;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(__b[1] + 8 * v26);
      v38 = 0;
      v22 = [location[0] properties];
      v23 = [v22 objectForKeyedSubscript:*MEMORY[0x29EDC8140]];
      MEMORY[0x29EDC9740](v23);
      *&v4 = MEMORY[0x29EDC9740](v22).n128_u64[0];
      if (v23)
      {
        v21 = [location[0] properties];
        v5 = [v21 objectForKeyedSubscript:*MEMORY[0x29EDC8140]];
        v6 = v38;
        v38 = v5;
        MEMORY[0x29EDC9740](v6);
        v7 = MEMORY[0x29EDC9740](v21).n128_u64[0];
      }

      else
      {
        v8 = [MEMORY[0x29EDBA070] numberWithInt:{*(*(*(a1 + 48) + 8) + 24), v4}];
        v9 = v38;
        v38 = v8;
        *&v10 = MEMORY[0x29EDC9740](v9).n128_u64[0];
        v19 = [location[0] name];
        v20 = [v19 isEqualToString:@"Monolith-Linear-Delete-Key"];
        v7 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        if (v20)
        {
          ++*(*(*(a1 + 48) + 8) + 24);
        }

        v11 = *(*(*(a1 + 56) + 8) + 24);
        v36 = 0;
        v34 = 0;
        v18 = 0;
        if ((v11 & 1) == 0)
        {
          v37 = [location[0] name];
          v36 = 1;
          v17 = 1;
          if (([v37 isEqualToString:@"Monolith-Capital-Letters-Keyplane-Switch-Key"] & 1) == 0)
          {
            v35 = [location[0] name];
            v34 = 1;
            v17 = [v35 isEqualToString:@"Monolith-International-Key"];
          }

          v18 = v17;
        }

        if (v34)
        {
          v7 = MEMORY[0x29EDC9740](v35).n128_u64[0];
        }

        if (v36)
        {
          v7 = MEMORY[0x29EDC9740](v37).n128_u64[0];
        }

        if (v18)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          v12 = [MEMORY[0x29EDBA070] numberWithInt:{++*(*(*(a1 + 48) + 8) + 24), *&v7}];
          v13 = v38;
          v38 = v12;
          v7 = MEMORY[0x29EDC9740](v13).n128_u64[0];
        }
      }

      v33 = [*(a1 + 40) objectForKey:{v38, *&v7}];
      if (!v33)
      {
        v14 = [MEMORY[0x29EDB8DE8] array];
        v15 = v33;
        v33 = v14;
        *&v16 = MEMORY[0x29EDC9740](v15).n128_u64[0];
        [*(a1 + 40) setObject:v33 forKey:{v38, v16}];
      }

      [v33 addObject:v40];
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v38, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [obj countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(v43, 0);
  objc_storeStrong(location, 0);
}

- (id)iOSGetKeyboardRowsByNumber
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [MEMORY[0x29EDB8E00] dictionary];
  v3 = [(UIKeyboardLayoutStarAccessibility *)v8 _accessibilityKeys];
  v5 = MEMORY[0x29EDC9748](v8);
  v6 = MEMORY[0x29EDC9748](v7[0]);
  [v3 enumerateObjectsUsingBlock:?];
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v7, 0);

  return v4;
}

void __63__UIKeyboardLayoutStarAccessibility_iOSGetKeyboardRowsByNumber__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v57 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v54[3] = a3;
  v54[2] = a4;
  v54[1] = a1;
  v54[0] = [a1[4] _accessibilityKeyElementForKey:location[0]];
  v53 = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  [v53 setShouldReturnScannerGroups:0];
  v52 = [v54[0] _accessibilityLeafDescendantsWithOptions:v53];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v52);
  v40 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
  if (v40)
  {
    v33 = *__b[2];
    v34 = 0;
    v35 = v40;
    while (1)
    {
      v32 = v34;
      if (*__b[2] != v33)
      {
        objc_enumerationMutation(obj);
      }

      v51 = *(__b[1] + 8 * v34);
      v49 = 0;
      v48 = 0;
      objc_opt_class();
      v31 = [a1[4] safeValueForKey:@"_keyboard"];
      v47 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v31);
      if (v48)
      {
        abort();
      }

      v46 = MEMORY[0x29EDC9748](v47);
      objc_storeStrong(&v47, 0);
      v29 = v46;
      v30 = [v46 visualStyle];
      v4 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      if (v30 == 109)
      {
        v5 = [(UIKeyboardLayoutStarAccessibility *)a1[4] _rowNumberOverrideForSplitEmojiKey:?];
        v6 = v49;
        v49 = v5;
        v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      }

      if (!v49)
      {
        v28 = [location[0] properties];
        v7 = [v28 objectForKeyedSubscript:*MEMORY[0x29EDC8140]];
        v8 = v49;
        v49 = v7;
        MEMORY[0x29EDC9740](v8);
        v4 = MEMORY[0x29EDC9740](v28).n128_u64[0];
      }

      if (v49)
      {
        goto LABEL_28;
      }

      v26 = [location[0] name];
      v9 = [v26 isEqualToString:@"Emoji-Category-Control-Key"];
      v44 = 0;
      v27 = 1;
      if ((v9 & 1) == 0)
      {
        v45 = [location[0] name];
        v44 = 1;
        v27 = [v45 isEqualToString:@"Handwriting-Input"];
      }

      if (v44)
      {
        MEMORY[0x29EDC9740](v45);
      }

      *&v10 = MEMORY[0x29EDC9740](v26).n128_u64[0];
      if ((v27 & 1) == 0)
      {
        v24 = [location[0] name];
        v11 = [v24 hasPrefix:@"Emoji-InputView-"];
        v42 = 0;
        v25 = 1;
        if ((v11 & 1) == 0)
        {
          v43 = [location[0] name];
          v42 = 1;
          v25 = [v43 isEqualToString:@"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation"];
        }

        if (v42)
        {
          MEMORY[0x29EDC9740](v43);
        }

        *&v12 = MEMORY[0x29EDC9740](v24).n128_u64[0];
        if ((v25 & 1) == 0)
        {
          v19 = location[0];
          _AXAssert();
        }

        v22 = [location[0] name];
        v23 = [v22 hasPrefix:@"Emoji-InputView-"];
        *&v13 = MEMORY[0x29EDC9740](v22).n128_u64[0];
        if (v23)
        {
          v14 = [MEMORY[0x29EDBA070] numberWithDouble:{-[UIKeyboardLayoutStarAccessibility _axGetSortingNumberForEmojiCell:](a1[4], v51)}];
          v15 = v49;
          v49 = v14;
          v4 = MEMORY[0x29EDC9740](v15).n128_u64[0];
          goto LABEL_28;
        }

        v20 = [location[0] name];
        v21 = [v20 isEqualToString:@"Voiced-Sound-Mark-And-Semi-Voiced-Sound-Mark-And-Small-Variation"];
        MEMORY[0x29EDC9740](v20);
        if ((v21 & 1) == 0)
        {
          objc_storeStrong(&v49, &unk_2A238E828);
          goto LABEL_28;
        }
      }

      objc_storeStrong(&v49, &unk_2A238E7F8);
LABEL_28:
      v41 = [a1[5] objectForKey:{v49, *&v4, v19}];
      if (!v41)
      {
        v16 = [MEMORY[0x29EDB8DE8] array];
        v17 = v41;
        v41 = v16;
        *&v18 = MEMORY[0x29EDC9740](v17).n128_u64[0];
        [a1[5] setObject:v41 forKey:{v49, v18}];
      }

      [v41 addObject:v51];
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v49, 0);
      ++v34;
      if (v32 + 1 >= v35)
      {
        v34 = 0;
        v35 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
        if (!v35)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(v54, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityScannerGroupElements
{
  v14 = self;
  v13 = a2;
  v8 = [(UIKeyboardLayoutStarAccessibility *)self _axKBModalView];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8)
  {
    v12.receiver = v14;
    v12.super_class = UIKeyboardLayoutStarAccessibility;
    v15 = [(UIKeyboardLayoutStarAccessibility *)&v12 _accessibilityScannerGroupElements];
  }

  else
  {
    v7 = [(UIKeyboardLayoutStarAccessibility *)v14 _accessibilityStickyPopupKeys];
    MEMORY[0x29EDC9740](v7);
    if (v7)
    {
      v15 = [(UIKeyboardLayoutStarAccessibility *)v14 _accessibilityStickyPopupKeys];
    }

    else
    {
      v11 = [(UIKeyboardLayoutStarAccessibility *)v14 _accessibilityGetKeyboardRowsByRowNumber];
      v10 = [v11 count];
      v6 = [v11 allKeys];
      v9 = [v6 sortedArrayUsingComparator:&__block_literal_global_718];
      *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      v15 = [(UIKeyboardLayoutStarAccessibility *)v14 iOSGetOrderedRowsForRows:v11 sortedRows:v9 numRows:v10, v3];
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v11, 0);
    }
  }

  v4 = v15;

  return v4;
}

uint64_t __71__UIKeyboardLayoutStarAccessibility__accessibilityScannerGroupElements__block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  [location[0] doubleValue];
  v9 = v3;
  [v10 doubleValue];
  if (v9 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = 1;
    if (v9 < v4)
    {
      v5 = -1;
    }

    v7 = v5;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)atvGetOrderedRowsForRows:(id)a3 sortedRows:(id)a4 numRows:(int64_t)a5
{
  v46 = *MEMORY[0x29EDCA608];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38[1] = a5;
  v38[0] = [MEMORY[0x29EDB8DE8] arrayWithCapacity:a5];
  memset(__b, 0, sizeof(__b));
  v26 = MEMORY[0x29EDC9748](v39);
  v27 = [v26 countByEnumeratingWithState:__b objects:v45 count:16];
  if (v27)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v27;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(v26);
      }

      v37 = *(__b[1] + 8 * v22);
      v35 = [MEMORY[0x29EDB8DE8] array];
      v34 = [location[0] objectForKey:v37];
      v33 = [v34 count];
      if (v33 >= 6)
      {
        v5 = 2.0;
        if (v33 != 6)
        {
          v5 = 4.0;
        }

        v32 = v5;
        v31 = vcvtps_u32_f32(v33 / v5);
        for (i = 0; i < v33; i += v31)
        {
          if (&i[v31] > v33)
          {
            v31 = v33 - i;
          }

          v43 = @"GroupElements";
          location[4] = i;
          location[3] = v31;
          location[5] = i;
          location[6] = v31;
          v28[1] = i;
          v28[2] = v31;
          v19 = [v34 subarrayWithRange:{i, v31}];
          v44 = v19;
          v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          *&v6 = MEMORY[0x29EDC9740](v19).n128_u64[0];
          [v35 addObject:{v29, v6}];
          objc_storeStrong(&v29, 0);
        }
      }

      else
      {
        [v35 setArray:v34];
      }

      if ([v34 count] <= 1)
      {
        if ([v34 count] == 1)
        {
          v10 = v38[0];
          v11 = [v34 firstObject];
          [v10 addObject:?];
          MEMORY[0x29EDC9740](v11);
        }
      }

      else
      {
        v41[0] = @"GroupElements";
        v42[0] = v35;
        v41[1] = @"GroupTraits";
        v42[1] = &unk_2A238E840;
        v41[2] = @"GroupLabel";
        v12 = MEMORY[0x29EDBA0F8];
        v18 = UIKitAccessibilityLocalizedString();
        v17 = [v34 firstObject];
        v16 = [v17 accessibilityLabel];
        v15 = [v34 lastObject];
        v14 = [v15 accessibilityLabel];
        v13 = [v12 stringWithFormat:v18, v16, v14];
        v42[2] = v13;
        v28[0] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
        MEMORY[0x29EDC9740](v13);
        MEMORY[0x29EDC9740](v14);
        MEMORY[0x29EDC9740](v15);
        MEMORY[0x29EDC9740](v16);
        MEMORY[0x29EDC9740](v17);
        *&v7 = MEMORY[0x29EDC9740](v18).n128_u64[0];
        [v38[0] addObject:{v28[0], v7}];
        objc_storeStrong(v28, 0);
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v26 countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](v26);
  v9 = MEMORY[0x29EDC9748](v38[0]);
  objc_storeStrong(v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)iOSGetOrderedRowsForRows:(id)a3 sortedRows:(id)a4 numRows:(int64_t)a5
{
  v59 = *MEMORY[0x29EDCA608];
  v49 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46[1] = a5;
  v46[0] = [MEMORY[0x29EDB8DE8] arrayWithCapacity:a5];
  v45 = 1;
  v44 = [(UIKeyboardLayoutStarAccessibility *)v49 _accessibilityIsRTL];
  memset(__b, 0, sizeof(__b));
  v27 = MEMORY[0x29EDC9748](v47);
  v28 = [v27 countByEnumeratingWithState:__b objects:v58 count:16];
  if (v28)
  {
    v22 = *__b[2];
    v23 = 0;
    v24 = v28;
    while (1)
    {
      v21 = v23;
      if (*__b[2] != v22)
      {
        objc_enumerationMutation(v27);
      }

      v43 = *(__b[1] + 8 * v23);
      v41 = [MEMORY[0x29EDB8DE8] array];
      v40 = [location[0] objectForKey:v43];
      v39 = [v40 count];
      if (v39 <= 8)
      {
        [v41 setArray:v40];
      }

      else
      {
        v33 = MEMORY[0x29EDCA5F8];
        v34 = -1073741824;
        v35 = 0;
        v36 = __81__UIKeyboardLayoutStarAccessibility_iOSGetOrderedRowsForRows_sortedRows_numRows___block_invoke;
        v37 = &__block_descriptor_33_e11_q24__0_8_16l;
        v38 = v44 & 1;
        v5 = [v40 sortedArrayWithOptions:16 usingComparator:?];
        v6 = v40;
        v40 = v5;
        MEMORY[0x29EDC9740](v6);
        v32 = llroundf(v39 / 3.0);
        v31 = 0;
        while (v31 < v39)
        {
          if (&v31[v32] > v39 || v39 - v31 <= 5)
          {
            v32 = v39 - v31;
          }

          v56 = @"GroupElements";
          v51 = v31;
          v50 = v32;
          v52 = v31;
          v53 = v32;
          v29[1] = v31;
          v29[2] = v32;
          v20 = [v40 subarrayWithRange:{v31, v32}];
          v57 = v20;
          v30 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *&v7 = MEMORY[0x29EDC9740](v20).n128_u64[0];
          [v41 addObject:{v30, v7}];
          v31 += v32;
          objc_storeStrong(&v30, 0);
        }
      }

      if ([v40 count] <= 1)
      {
        if ([v40 count] == 1)
        {
          v11 = v46[0];
          v12 = [v40 firstObject];
          [v11 addObject:?];
          MEMORY[0x29EDC9740](v12);
        }
      }

      else
      {
        v54[0] = @"GroupElements";
        v55[0] = v41;
        v54[1] = @"GroupTraits";
        v55[1] = &unk_2A238E840;
        v54[2] = @"GroupLabel";
        v13 = MEMORY[0x29EDBA0F8];
        v19 = UIKitAccessibilityLocalizedString();
        v18 = [v40 firstObject];
        v17 = [v18 accessibilityLabel];
        v16 = [v40 lastObject];
        v15 = [v16 accessibilityLabel];
        v14 = [v13 stringWithFormat:v19, v17, v15];
        v55[2] = v14;
        v54[3] = @"GroupScanBehaviorTraits";
        v55[3] = &unk_2A238E858;
        v29[0] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
        MEMORY[0x29EDC9740](v14);
        MEMORY[0x29EDC9740](v15);
        MEMORY[0x29EDC9740](v16);
        MEMORY[0x29EDC9740](v17);
        MEMORY[0x29EDC9740](v18);
        *&v8 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        [v46[0] addObject:{v29[0], v8}];
        objc_storeStrong(v29, 0);
      }

      ++v45;
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [v27 countByEnumeratingWithState:__b objects:v58 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](v27);
  v10 = MEMORY[0x29EDC9748](v46[0]);
  objc_storeStrong(v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);

  return v10;
}

uint64_t __81__UIKeyboardLayoutStarAccessibility_iOSGetOrderedRowsForRows_sortedRows_numRows___block_invoke(_BYTE *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  [location[0] accessibilityFrame];
  v10 = v3;
  [v11 accessibilityFrame];
  if (v10 >= v4)
  {
    if (v4 >= v10)
    {
      v13 = 0;
    }

    else
    {
      v6 = 1;
      if (a1[32])
      {
        v6 = -1;
      }

      v13 = v6;
    }
  }

  else
  {
    v5 = -1;
    if (a1[32])
    {
      v5 = 1;
    }

    v13 = v5;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (void)_axRegisterForAccessibilityContinuousPathSettingsNotifications
{
  if (![(UIKeyboardLayoutStarAccessibility *)self _axDidRegisterForAXSettingsNotification])
  {
    _AXSAccessibilityKeyboardContinuousPathEnabled();
    [(UIKeyboardLayoutStarAccessibility *)self _setAxDidRegisterForAXSettingsNotification:1];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, _reloadAccessibilitySettings, *MEMORY[0x29EDC83B8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

@end