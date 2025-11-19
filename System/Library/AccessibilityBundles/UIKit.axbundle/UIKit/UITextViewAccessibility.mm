@interface UITextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)a3;
- (BOOL)_accessibilityTextViewShouldBreakUpParagraphs;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)replaceAnimatedTextPlaceholderWith:(id)a3;
- (BOOL)resignFirstResponder;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (double)_accessibilityFontSize;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3;
- (id)_accessibilityDataDetectorScheme:(CGPoint)a3;
- (id)_accessibilityGetValue:(BOOL)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilityLinksForRange:(NSUInteger)a3;
- (id)_accessibilityParagraphElements;
- (id)_accessibilityParagraphElementsWithLinks;
- (id)_accessibilityParagraphLinksCustomRotor;
- (id)_accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:(void *)a1;
- (id)_replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityPlaceholderValue;
- (id)accessibilityValue;
- (id)automationElements;
- (uint64_t)_accessibilityActivateLink:(void *)a1;
- (uint64_t)_axDidRegisterForDDNotification;
- (uint64_t)_axIsOnlyOneLinkElement;
- (uint64_t)_axRegisterForDDNotificationIfNeeded;
- (uint64_t)_axSetDidRegisterForDDNotification:(uint64_t)result;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_accessibilitySetValue:(id)a3;
- (void)_axClearCachedLinkData;
- (void)_axDidFinishDataDetectorURLification:(id)a3;
- (void)dealloc;
- (void)insertAnimatedTextPlaceholderAtLocation:(id)a3 numLines:(double)a4;
- (void)removeAnimatedTextPlaceholders;
- (void)setAttributedPlaceholder:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setSelectedRange:(_NSRange)a3;
@end

@implementation UITextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v21 = location;
  v20 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = @"UITextView";
  v17 = "B";
  [location[0] validateClass:0 hasClassMethod:? withFullSignature:?];
  v19 = "@";
  v16 = "v";
  [location[0] validateClass:v18 hasInstanceMethod:@"setAttributedText:" withFullSignature:{"@", 0}];
  v13 = "{_NSRange=QQ}";
  [location[0] validateClass:v18 hasInstanceMethod:@"setSelectedRange:" withFullSignature:{v16, "{_NSRange=QQ}", 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"keyboardInput: shouldInsertText: isMarkedText:" withFullSignature:{v19, v19, v17, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"keyboardInput: shouldReplaceTextInRange: replacementText:" withFullSignature:{v17, v19, v13, v19, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"keyboardInputChangedSelection:" withFullSignature:{v16, v19, 0}];
  v12 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
  [location[0] validateClass:v18 hasInstanceMethod:@"visibleTextRect" withFullSignature:0];
  v6 = "Q";
  [location[0] validateClass:v18 hasInstanceMethod:@"marginTop" withFullSignature:0];
  [location[0] validateClass:v18 hasInstanceMethod:@"setAttributedPlaceholder:" withFullSignature:{v16, v19, 0}];
  [location[0] validateClass:v18 hasInstanceVariable:@"_placeholderLabel" withType:"UILabel"];
  [location[0] validateClass:v18 isKindOfClass:@"UIResponder"];
  [location[0] validateClass:v18 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v17, 0}];
  v11 = @"_UITextKit2LayoutController";
  [location[0] validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v18 hasInstanceVariable:@"_textLayoutController" withType:"_UITextLayoutControllerBase<_UITextLayoutController>"];
  v3 = @"_UITextKit1LayoutController";
  v4 = @"layoutManager";
  [location[0] validateClass:? hasProperty:? withType:?];
  v5 = @"canAccessLayoutManager";
  [location[0] validateClass:v3 hasProperty:? withType:?];
  [location[0] validateClass:v11 hasProperty:v4 withType:v19];
  [location[0] validateClass:v11 hasProperty:v5 withType:v17];
  [location[0] validateClass:v18 hasInstanceMethod:@"_textInteractableItemAtPoint:precision:" withFullSignature:{v19, "{CGPoint=dd}", v6, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"interactionAssistant" withFullSignature:{v19, 0}];
  v7 = @"UITextInteractionAssistant";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"linkInteraction" withFullSignature:{v19, 0}];
  v9 = @"contextMenuInteraction";
  [location[0] validateClass:@"UITextLinkInteraction" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:@"_UITextMenuLinkInteraction"];
  v10 = @"_UITextInteractableItem";
  [location[0] validateClass:v19 hasInstanceMethod:0 withFullSignature:?];
  v8 = @"UITextInteraction";
  [location[0] validateClass:@"_UITextSimpleLinkInteraction" isKindOfClass:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"assistantDelegate" withFullSignature:{v19, 0}];
  [location[0] validateProtocol:@"UITextInteraction_AssistantDelegate" hasMethod:v9 isInstanceMethod:1 isRequired:1];
  [location[0] validateClass:v10 hasInstanceMethod:@"invokeDefaultAction" withFullSignature:{v16, 0}];
  [location[0] validateClass:v11];
  [location[0] validateClass:v11 hasInstanceMethod:@"boundingRectForCharacterRange:" withFullSignature:{v12, v13, 0}];
  [location[0] validateClass:@"UIKeyboard" hasClassMethod:@"presentsInlineTextCompletionAsMarkedText" withFullSignature:{v17, 0}];
  [location[0] validateClass:@"_UITextKitTextRange" hasInstanceMethod:@"asRange" withFullSignature:{v13, 0}];
  [location[0] validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"inlineTextCompletionController" withFullSignature:{v19, 0}];
  [location[0] validateClass:@"UIInlineTextCompletionController" hasInstanceMethod:@"lastAcceptedTextCompletion" withFullSignature:{v19, 0}];
  v14 = @"_UIInlineTextCompletion";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v14 hasInstanceMethod:@"input" withFullSignature:{v19, 0}];
  v15 = @"_UITextInteractableLinkItem";
  [location[0] validateClass:?];
  [location[0] validateClass:v15 hasInstanceMethod:@"link" withFullSignature:{v19, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"replaceAnimatedTextPlaceholderWith:" withFullSignature:{v17, v19, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"removeAnimatedTextPlaceholders" withFullSignature:{v16, 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"insertAnimatedTextPlaceholderAtLocation:numLines:" withFullSignature:{v16, v19, "d", 0}];
  [location[0] validateClass:v18 hasInstanceMethod:@"_replaceRange:withAttributedText:updatingSelection:" withFullSignature:{v19, v19, v17, 0}];
  objc_storeStrong(v21, v20);
}

- (uint64_t)_axDidRegisterForDDNotification
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

- (uint64_t)_axSetDidRegisterForDDNotification:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (uint64_t)_axRegisterForDDNotificationIfNeeded
{
  v2 = result;
  if (result)
  {
    result = [(UITextViewAccessibility *)result _axDidRegisterForDDNotification];
    if ((result & 1) == 0)
    {
      v1 = [MEMORY[0x29EDBA068] defaultCenter];
      [v1 addObserver:v2 selector:sel__axDidFinishDataDetectorURLification_ name:@"DataDetectorsUIDidFinishURLificationNotification" object:v2];
      MEMORY[0x29EDC9740](v1);
      return [UITextViewAccessibility _axSetDidRegisterForDDNotification:v2];
    }
  }

  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UITextViewAccessibility *)v4 _axRegisterForDDNotificationIfNeeded];
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:v6 name:@"DataDetectorsUIDidFinishURLificationNotification" object:v6];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v4 dealloc];
}

- (void)_axClearCachedLinkData
{
  v1 = result;
  if (result)
  {
    [result _accessibilitySetRetainedValue:? forKey:?];
    return [v1 _accessibilitySetRetainedValue:0 forKey:@"AXOnlyHasOneLink"];
  }

  return result;
}

- (void)_axDidFinishDataDetectorURLification:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (_AXSInUnitTestMode())
  {
    v3 = [(UITextViewAccessibility *)v5 _accessibilityValueForKey:@"UnitTestDataDetectionDoneBlock"];
    if (v3)
    {
      (*(v3 + 2))();
    }

    objc_storeStrong(&v3, 0);
  }

  [(UITextViewAccessibility *)v5 _axClearCachedLinkData];
  [UITextViewAccessibility _accessibilitySetRetainedValue:v5 forKey:"_accessibilitySetRetainedValue:forKey:"];
  [(UITextViewAccessibility *)v5 _accessibilitySetRetainedValue:0 forKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(UITextViewAccessibility *)self selectedRange:a2];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)a3
{
  v4 = [(UITextViewAccessibility *)self safeValueForKey:@"webView"];
  v5 = [v4 _accessibilityDataDetectorScheme:{a3.x, a3.y}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (void)setAttributedText:(id)a3
{
  v10[2] = *MEMORY[0x29EDCA608];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UITextViewAccessibility *)v8 _axClearCachedLinkData];
  [(UITextViewAccessibility *)v8 _accessibilitySetRetainedValue:0 forKey:@"AXParagraphLinkRotor"];
  [(UITextViewAccessibility *)v8 _accessibilitySetRetainedValue:0 forKey:*MEMORY[0x29EDC7620]];
  v6.receiver = v8;
  v6.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v6 setAttributedText:location[0]];
  v5 = [(UITextViewAccessibility *)v8 isFirstResponder];
  if (!location[0] || ([(UITextViewAccessibility *)v8 safeBoolForKey:@"hasText"]& 1) == 0 && (v5 & 1) != 0)
  {
    notification = *MEMORY[0x29EDC75C8];
    v9[0] = *MEMORY[0x29EDBDCF0];
    v10[0] = MEMORY[0x29EDB8EB0];
    v9[1] = *MEMORY[0x29EDBDCF8];
    v10[1] = MEMORY[0x29EDB8EB0];
    v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    UIAccessibilityPostNotification(notification, v4);
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)setSelectedRange:(_NSRange)a3
{
  v13 = a3;
  v12 = self;
  v11 = a2;
  v10 = 0;
  if (([(UITextViewAccessibility *)self isFirstResponder]& 1) == 0 || (v8 = [(UITextViewAccessibility *)v12 selectedRange], v9 = v3, v8 == v13.location) && (v6 = [(UITextViewAccessibility *)v12 selectedRange], v7 = v4, v4 == v13.length))
  {
    MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC74D0]);
    v10 = 1;
  }

  v5.receiver = v12;
  v5.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v5 setSelectedRange:v13.location, v13.length];
  if (v10)
  {
    MEMORY[0x29ED3DFA0](0);
  }
}

- (BOOL)resignFirstResponder
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UITextViewAccessibility;
  v4 = [(UITextViewAccessibility *)&v3 resignFirstResponder];
  [(UITextViewAccessibility *)v6 _axClearCachedLinkData];
  return v4 & 1;
}

- (double)_accessibilityFontSize
{
  v4 = [(UITextViewAccessibility *)self font];
  [v4 pointSize];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  return v5;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v37 = *MEMORY[0x29EDCA608];
  v34 = a3;
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v31 = [(UITextViewAccessibility *)v33 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v23 = 0;
  v14 = 0;
  if ((v31 & 1) == 0)
  {
    v25 = MEMORY[0x29EDCA5F8];
    v26 = -1073741824;
    v27 = 0;
    v28 = __59__UITextViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v29 = &unk_29F30CEB0;
    v30 = MEMORY[0x29EDC9748](v33);
    v24 = &v30;
    v23 = 1;
    v14 = (__59__UITextViewAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v14)
  {
    [(UITextViewAccessibility *)v33 _accessibilitySetBoolValue:1 forKey:?];
    v22 = [(UITextViewAccessibility *)v33 accessibilityHitTest:location[0] withEvent:v34.x, v34.y];
    [(UITextViewAccessibility *)v33 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v35 = MEMORY[0x29EDC9748](v22);
    v21 = 1;
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v21 = 0;
  }

  if (v23)
  {
    objc_storeStrong(v24, 0);
  }

  if (!v21)
  {
    if (!_AXSAutomationEnabled())
    {
      goto LABEL_24;
    }

    memset(__b, 0, sizeof(__b));
    obj = [(UITextViewAccessibility *)v33 automationElements];
    v13 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
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

        v20 = *(__b[1] + 8 * v10);
        v18 = [v20 _accessibilityHitTest:location[0] withEvent:{v34.x, v34.y}];
        if (v18)
        {
          v35 = MEMORY[0x29EDC9748](v18);
          v21 = 1;
        }

        else
        {
          UIAccessibilityPointForPoint();
          point.x = v4;
          point.y = v5;
          [v20 accessibilityFrame];
          rect = v39;
          if (CGRectContainsPoint(v39, point))
          {
            v35 = MEMORY[0x29EDC9748](v20);
            v21 = 1;
          }

          else
          {
            v21 = 0;
          }
        }

        objc_storeStrong(&v18, 0);
        if (v21)
        {
          break;
        }

        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
          if (!v11)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
LABEL_22:
      v21 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v21)
    {
LABEL_24:
      v15.receiver = v33;
      v15.super_class = UITextViewAccessibility;
      v35 = [(UITextViewAccessibility *)&v15 _accessibilityHitTest:location[0] withEvent:v34.x, v34.y];
      v21 = 1;
    }
  }

  objc_storeStrong(location, 0);
  v6 = v35;

  return v6;
}

BOOL __59__UITextViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_onceToken_4;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_51);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_4;
}

void __59__UITextViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_4 = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (void)_accessibilitySetValue:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x29EDC7B08] activeInstance];
    v6 = [v10 textInputTraits];
    v7 = [v6 contentsIsSingleValue];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v8 = [v10 textInputTraits];
    [v8 setContentsIsSingleValue:1];
    *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    [(UITextViewAccessibility *)v13 setText:location[0], v4];
    v9 = [v10 textInputTraits];
    [v9 setContentsIsSingleValue:v7 & 1];
    *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    [(UITextViewAccessibility *)v13 keyboardInputChanged:v5];
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = [(UITextViewAccessibility *)self _accessibilityAXAttributedValue];
  location = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_msgSend(v23 "cfAttributedString")];
    v4 = location;
    location = v3;
    v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v23 mutableCopy];
      v7 = location;
      location = v6;
      v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = 0;
        v21 = 1;
        goto LABEL_13;
      }

      v8 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:v23];
      v9 = location;
      location = v8;
      v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    }
  }

  length = v24->length;
  v28 = v24->location;
  v29 = length;
  if (v28 + length <= [location length])
  {
    v19 = [location attributedSubstringFromRange:{v24->location, v24->length}];
    v12 = [v19 mutableCopy];
    v13 = location;
    location = v12;
    MEMORY[0x29EDC9740](v13);
    v11 = MEMORY[0x29EDC9740](v19).n128_u64[0];
  }

  if (!location)
  {
    v20.receiver = v26;
    v20.super_class = UITextViewAccessibility;
    v18 = [(UITextViewAccessibility *)&v20 _accessibilityAttributedValueForRange:v24, *&v11];
    v14 = [v18 mutableCopy];
    v15 = location;
    location = v14;
    MEMORY[0x29EDC9740](v15);
    v11 = MEMORY[0x29EDC9740](v18).n128_u64[0];
  }

  [(UITextViewAccessibility *)v26 _accessibilityAddAutoCorrectionAttributes:location, *&v11];
  [(UITextViewAccessibility *)v26 _accessibilityConvertStyleAttributesToAccessibility:location];
  [(UITextViewAccessibility *)v26 _accessibilityAddMispellingsToAttributedString:location];
  v27 = MEMORY[0x29EDC9748](location);
  v21 = 1;
LABEL_13:
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v23, 0);
  v16 = v27;

  return v16;
}

- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)a3
{
  v9 = self;
  v8 = a2;
  name = a3;
  v12 = &_accessibilityOverridesPotentiallyAttributedAPISelector__onceToken_1;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_526);
  if (*v12 != -1)
  {
    dispatch_once(v12, location);
  }

  objc_storeStrong(&location, 0);
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, name);
  if (name == sel_accessibilityValue)
  {
    return InstanceMethod != _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityValueBaseMethod_0;
  }

  if (name == sel_accessibilityAttributedValue)
  {
    return InstanceMethod != _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedValueBaseMethod_0;
  }

  v5.receiver = v9;
  v5.super_class = UITextViewAccessibility;
  return [(UITextViewAccessibility *)&v5 _accessibilityOverridesPotentiallyAttributedAPISelector:name];
}

Method __83__UITextViewAccessibility__accessibilityOverridesPotentiallyAttributedAPISelector___block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityValueBaseMethod_0 = class_getInstanceMethod(v0, sel_accessibilityValue);
  v1 = objc_opt_class();
  result = class_getInstanceMethod(v1, sel_accessibilityAttributedValue);
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedValueBaseMethod_0 = result;
  return result;
}

- (id)_accessibilityGetValue:(BOOL)a3
{
  v69[1] = *MEMORY[0x29EDCA608];
  v66 = self;
  v65 = a2;
  v64 = a3;
  v63 = 0;
  v37 = [(UITextViewAccessibility *)self accessibilityUserDefinedValue];
  *&v3 = MEMORY[0x29EDC9740](v37).n128_u64[0];
  if (v37)
  {
    v4 = [(UITextViewAccessibility *)v66 accessibilityUserDefinedValue];
    v5 = v63;
    v63 = v4;
    *&v6 = MEMORY[0x29EDC9740](v5).n128_u64[0];
LABEL_30:
    v43 = [(UITextViewAccessibility *)v66 safeValueForKey:@"textInputTraits", v6];
    v26 = [v43 safeValueForKey:@"isSecureTextEntry"];
    v27 = [v26 BOOLValue];
    v19 = MEMORY[0x29EDC9740](v26).n128_u64[0];
    if (v27)
    {
      v42 = 0;
      objc_opt_class();
      v41 = __UIAccessibilityCastAsClass();
      v40 = MEMORY[0x29EDC9748](v41);
      objc_storeStrong(&v41, 0);
      v20 = [(UIView *)v40 _accessibilitySecureTextForString:v63];
      v21 = v63;
      v63 = v20;
      MEMORY[0x29EDC9740](v21);
      v19 = MEMORY[0x29EDC9740](v40).n128_u64[0];
    }

    if (![v63 length])
    {
      v39 = [(UITextViewAccessibility *)v66 accessibilityPlaceholderValue];
      if (v39)
      {
        v38 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:v39];
        v24 = v38;
        v68 = *MEMORY[0x29EDBD970];
        v69[0] = MEMORY[0x29EDB8EB0];
        v25 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
        [v24 setAttributes:?];
        MEMORY[0x29EDC9740](v25);
        objc_storeStrong(&v63, v38);
        objc_storeStrong(&v38, 0);
      }

      objc_storeStrong(&v39, 0);
    }

    v67 = MEMORY[0x29EDC9748](v63);
    v45 = 1;
    objc_storeStrong(&v43, 0);
    goto LABEL_37;
  }

  v61 = 0;
  objc_opt_class();
  v36 = [(UITextViewAccessibility *)v66 safeValueForKey:@"attributedText"];
  v60 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v36);
  v59 = MEMORY[0x29EDC9748](v60);
  objc_storeStrong(&v60, 0);
  v62 = v59;
  v58 = [MEMORY[0x29EDC7B08] activeInstance];
  v34 = [v58 delegate];
  v35 = [v34 isEqual:v66];
  *&v7 = MEMORY[0x29EDC9740](v34).n128_u64[0];
  if ((v35 & 1) == 0 || ([MEMORY[0x29EDC7AF8] safeBoolForKey:{@"presentsInlineTextCompletionAsMarkedText", v7}] & 1) == 0)
  {
    goto LABEL_23;
  }

  v31 = [v58 inlineCompletionAsMarkedText];
  v57 = [v31 string];
  v33 = [v58 inputDelegate];
  v32 = [v33 markedTextRange];
  v55 = [v32 safeRangeForKey:@"asRange"];
  v56 = v8;
  MEMORY[0x29EDC9740](v32);
  *&v9 = MEMORY[0x29EDC9740](v33).n128_u64[0];
  v52 = 0;
  v50 = 0;
  if (v55 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x29EDC9748](0);
  }

  else
  {
    v53 = [v62 string];
    v52 = 1;
    v51 = [v53 substringWithRange:{v55, v56}];
    v50 = 1;
    v10 = MEMORY[0x29EDC9748](v51);
  }

  v54 = v10;
  if (v50)
  {
    MEMORY[0x29EDC9740](v51);
  }

  if (v52)
  {
    MEMORY[0x29EDC9740](v53);
  }

  v49 = [v54 isEqualToString:v57];
  v28 = MEMORY[0x29EDBD7E8];
  v29 = [v62 string];
  v48 = [v28 axAttributedStringWithString:?];
  v30 = [v58 safeValueForKeyPath:{@"inlineTextCompletionController.lastAcceptedTextCompletion", MEMORY[0x29EDC9740](v29).n128_f64[0]}];
  v47 = [v30 safeStringForKey:@"candidate"];
  *&v11 = MEMORY[0x29EDC9740](v30).n128_u64[0];
  v46 = 0;
  if (v57 && v54 && (v49 & 1) != 0)
  {
    [v48 setAttribute:v57 forKey:*MEMORY[0x29EDBD830] withRange:{v55, v56, v11}];
    v46 = 1;
  }

  else if (v47)
  {
    [v48 setAttribute:v47 forKey:{*MEMORY[0x29EDBD820], v11}];
    v46 = 1;
  }

  if ([v48 length] && (v46 & 1) != 0)
  {
    v67 = MEMORY[0x29EDC9748](v48);
    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v57, 0);
  if (!v45)
  {
LABEL_23:
    if (v62)
    {
      if ([v62 length])
      {
        v14 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
        v15 = v63;
        v63 = v14;
        *&v16 = MEMORY[0x29EDC9740](v15).n128_u64[0];
        if (!v63)
        {
          v17 = [v62 string];
          v18 = v63;
          v63 = v17;
          MEMORY[0x29EDC9740](v18);
        }
      }
    }

    else
    {
      v12 = [(UITextViewAccessibility *)v66 safeValueForKey:@"text", v7];
      v13 = v63;
      v63 = v12;
      MEMORY[0x29EDC9740](v13);
    }

    v45 = 0;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v62, 0);
  if (!v45)
  {
    goto LABEL_30;
  }

LABEL_37:
  objc_storeStrong(&v63, 0);
  v22 = v67;

  return v22;
}

- (id)accessibilityValue
{
  if (([(UITextViewAccessibility *)self _axIsOnlyOneLinkElement]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(UITextViewAccessibility *)self _accessibilityGetValue];
  }

  return v4;
}

- (uint64_t)_axIsOnlyOneLinkElement
{
  v19 = a1;
  if (a1)
  {
    v18 = [v19 isEditable];
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v17 = [v19 _accessibilityValueForKey:@"AXOnlyHasOneLink"];
      if (v17)
      {
        v20 = [v17 BOOLValue] & 1;
        v16 = 1;
      }

      else
      {
        v15 = 0;
        v9 = [v19 _accessibilityInternalTextLinks];
        v10 = [v9 count];
        *&v1 = MEMORY[0x29EDC9740](v9).n128_u64[0];
        if (v10 == 1)
        {
          v14 = [v19 attributedText];
          v12 = 0;
          v13 = 0;
          location = [v14 attributesAtIndex:0 effectiveRange:&v12];
          v8 = [location objectForKey:*MEMORY[0x29EDC7648]];
          *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
          if (v8)
          {
            v3 = [v14 length];
            v26 = 0;
            v25 = v3;
            v27 = 0;
            v28 = v3;
            v23 = v12;
            v24 = v13;
            v21 = 0;
            v22 = v3;
            v7 = 0;
            if (!v12)
            {
              v7 = v24 == v22;
            }

            if (v7)
            {
              v15 = 1;
            }
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v14, 0);
        }

        v6 = [MEMORY[0x29EDBA070] numberWithBool:{v15 & 1, v19}];
        [v5 _accessibilitySetRetainedValue:? forKey:?];
        MEMORY[0x29EDC9740](v6);
        [(UITextViewAccessibility *)v19 _axRegisterForDDNotificationIfNeeded];
        v20 = v15 & 1;
        v16 = 1;
      }

      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

- (id)accessibilityAttributedValue
{
  v5 = self;
  location[1] = a2;
  if (([(UITextViewAccessibility *)self _axIsOnlyOneLinkElement]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    location[0] = [(UITextViewAccessibility *)v5 _accessibilityGetValue];
    if ([location[0] isAXAttributedString])
    {
      v6 = [location[0] cfAttributedString];
    }

    else if (location[0])
    {
      v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:location[0]];
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(location, 0);
  }

  v2 = v6;

  return v2;
}

- (id)accessibilityLabel
{
  v6 = self;
  v5 = a2;
  if (([(UITextViewAccessibility *)self _axIsOnlyOneLinkElement]& 1) != 0)
  {
    v7 = [(UITextViewAccessibility *)v6 _accessibilityGetValue:1];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITextViewAccessibility;
    v7 = [(UITextViewAccessibility *)&v4 accessibilityLabel];
  }

  v2 = v7;

  return v2;
}

- (id)accessibilityPlaceholderValue
{
  v16 = self;
  v15[1] = a2;
  v15[0] = 0;
  v13 = 0;
  objc_opt_class();
  v10 = [(UITextViewAccessibility *)v16 safeValueForKey:@"_placeholderLabel"];
  v12 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v10);
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v14 = v11;
  if ([v11 _accessibilityViewIsVisible])
  {
    v2 = [v14 accessibilityLabel];
    v3 = v15[0];
    v15[0] = v2;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v15[0], v4}];
    v6 = v15[0];
    v15[0] = v5;
    *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    [v15[0] setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD970], v7}];
  }

  v9 = MEMORY[0x29EDC9748](v15[0]);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v9;
}

- (void)setAttributedPlaceholder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v4 setAttributedPlaceholder:location[0]];
  v3 = [(UITextViewAccessibility *)v6 safeValueForKey:@"_placeholderLabel"];
  [v3 setIsAccessibilityElement:0];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (BOOL)isAccessibilityElement
{
  v5 = [(UITextViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return ![(UITextViewAccessibility *)self _accessibilityTextViewShouldBreakUpParagraphs]&& (([(UITextViewAccessibility *)self _accessibilityViewIsVisible]& 1) != 0 || AXDoesRequestingClientDeserveAutomation());
  }

  v4 = [(UITextViewAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (BOOL)accessibilityActivate
{
  v13 = self;
  v12[1] = a2;
  v6 = [(UITextViewAccessibility *)self _accessibilityInternalTextLinks];
  v7 = [v6 count];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v7 == 1)
  {
    v11 = 0;
    objc_opt_class();
    v5 = [(UITextViewAccessibility *)v13 _accessibilityInternalTextLinks];
    v4 = [v5 firstObject];
    v10 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v12[0] = v9;
    v14 = [(UITextViewAccessibility *)v13 _accessibilityActivateLink:v9]& 1;
    objc_storeStrong(v12, 0);
  }

  else
  {
    v8.receiver = v13;
    v8.super_class = UITextViewAccessibility;
    v14 = [(UITextViewAccessibility *)&v8 accessibilityActivate];
  }

  return v14 & 1;
}

- (uint64_t)_accessibilityActivateLink:(void *)a1
{
  v80 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v80)
  {
    v77 = [v80 _accessibilityActivateTextViewLink:location];
    if (v77)
    {
      v81 = 1;
      v78 = 1;
    }

    else
    {
      v76 = [v80 safeValueForKey:@"delegate"];
      if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
      {
        v74 = [location range];
        v75 = v2;
        v73 = 0;
        if (objc_opt_respondsToSelector())
        {
          v23 = v80;
          v24 = [location url];
          v73 = [v76 textView:v23 shouldInteractWithURL:? inRange:? interaction:?];
          MEMORY[0x29EDC9740](v24);
        }

        if (objc_opt_respondsToSelector())
        {
          v21 = v80;
          v22 = [location url];
          v73 = [v76 textView:v21 shouldInteractWithURL:? inRange:?];
          MEMORY[0x29EDC9740](v22);
        }

        if (v73)
        {
          v72 = [location textRangeForTextView:v80];
          v70 = 0u;
          v71 = 0u;
          [v80 firstRectForRange:v72];
          *&v70 = v3;
          *(&v70 + 1) = v4;
          *&v71 = v5;
          *(&v71 + 1) = v6;
          v61[1] = MEMORY[0x29EDCA5F8];
          v62 = -1073741824;
          v63 = 0;
          v64 = __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke;
          v65 = &unk_29F30DF08;
          v66 = MEMORY[0x29EDC9748](v80);
          v68 = v70;
          v69 = v71;
          v67 = MEMORY[0x29EDC9748](location);
          AXPerformSafeBlock();
          objc_storeStrong(&v67, 0);
          objc_storeStrong(&v66, 0);
          objc_storeStrong(&v72, 0);
        }

        v81 = v73 & 1;
        v78 = 1;
      }

      else if (objc_opt_respondsToSelector())
      {
        v61[0] = [location textRangeForTextView:v80];
        v59 = 0u;
        v60 = 0u;
        [v80 firstRectForRange:v61[0]];
        *&v59 = v7;
        *(&v59 + 1) = v8;
        *&v60 = v9;
        *(&v60 + 1) = v10;
        v54 = 0;
        v55 = &v54;
        v56 = 0x20000000;
        v57 = 32;
        v58 = 0;
        v45[3] = MEMORY[0x29EDCA5F8];
        v46 = -1073741824;
        v47 = 0;
        v48 = __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_2;
        v49 = &unk_29F30DF50;
        v50 = MEMORY[0x29EDC9748](v80);
        v52 = v59;
        v53 = v60;
        v51[0] = MEMORY[0x29EDC9748](v76);
        v51[1] = &v54;
        AXPerformSafeBlock();
        v81 = v55[3] & 1;
        v78 = 1;
        objc_storeStrong(v51, 0);
        objc_storeStrong(&v50, 0);
        _Block_object_dispose(&v54, 8);
        objc_storeStrong(v61, 0);
      }

      else
      {
        v45[0] = [v80 safeValueForKeyPath:@"interactionAssistant.linkInteraction"];
        NSClassFromString(&cfstr_Uitextsimpleli.isa);
        v42 = 0;
        if (objc_opt_isKindOfClass())
        {
          v43 = [v45[0] safeValueForKey:@"contextMenuInteraction"];
          v42 = 1;
          v11 = MEMORY[0x29EDC9748](v43);
        }

        else
        {
          v11 = MEMORY[0x29EDC9748](0);
        }

        v44 = v11;
        if (v42)
        {
          MEMORY[0x29EDC9740](v43);
        }

        if (v45[0] && v44)
        {
          v41 = [location textRangeForTextView:v80];
          v39 = 0u;
          v40 = 0u;
          [v80 firstRectForRange:v41];
          *&v39 = v12;
          *(&v39 + 1) = v13;
          *&v40 = v14;
          *(&v40 + 1) = v15;
          [v45[0] _accessibilitySetBoolValue:1 forKey:?];
          v30[1] = MEMORY[0x29EDCA5F8];
          v31 = -1073741824;
          v32 = 0;
          v33 = __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_5;
          v34 = &unk_29F30DF08;
          v35 = MEMORY[0x29EDC9748](v80);
          v37 = v39;
          v38 = v40;
          v36 = MEMORY[0x29EDC9748](v44);
          AXPerformSafeBlock();
          [v45[0] _accessibilitySetBoolValue:0 forKey:@"AXIsPerformingSimpleTap"];
          v81 = 1;
          v78 = 1;
          objc_storeStrong(&v36, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v41, 0);
        }

        else
        {
          v30[0] = [location textRangeForTextView:v80];
          [v80 firstRectForRange:v30[0]];
          *&v28 = v16;
          *(&v28 + 1) = v17;
          *&v29 = v18;
          *(&v29 + 1) = v19;
          v25 = MEMORY[0x29EDC9748](v80);
          v26 = v28;
          v27 = v29;
          AXPerformSafeBlock();
          v81 = 1;
          v78 = 1;
          objc_storeStrong(&v25, 0);
          objc_storeStrong(v30, 0);
        }

        objc_storeStrong(&v44, 0);
        objc_storeStrong(v45, 0);
      }

      objc_storeStrong(&v76, 0);
    }
  }

  else
  {
    v81 = 0;
    v78 = 1;
  }

  objc_storeStrong(&location, 0);
  return v81 & 1;
}

void __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke(uint64_t a1)
{
  v23[2] = a1;
  v23[1] = a1;
  v12 = *(a1 + 32);
  CGRectGetMinX(*(a1 + 48));
  AX_CGRectGetCenter();
  v19 = v1;
  v20 = v2;
  CGPointMake_12();
  v21 = v3;
  v22 = v4;
  v23[0] = [v12 _textInteractableItemAtPoint:0 precision:{v3, v4}];
  NSClassFromString(&cfstr_Uitextinteract_3.isa);
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    objc_opt_class();
    v10 = [v23[0] safeValueForKey:@"link"];
    v17 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v10);
    v16 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    v8 = [*(a1 + 40) url];
    v9 = [v16 isEqual:?];
    MEMORY[0x29EDC9740](v8);
    *&v5 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    if (v9)
    {
      v15 = [*(a1 + 32) safeValueForKeyPath:{@"interactionAssistant.linkInteraction", v5}];
      NSClassFromString(&cfstr_Uitextsimpleli.isa);
      if (objc_opt_isKindOfClass())
      {
        v6 = v23[0];
        v7 = [v15 safeValueForKey:@"contextMenuInteraction"];
        v13 = 0;
        if (v7)
        {
          [v6 setContextMenuInteraction:v7];
        }

        else
        {
          v14 = [v15 safeValueForKeyPath:@"assistantDelegate.contextMenuInteraction"];
          v13 = 1;
          [v6 setContextMenuInteraction:v14];
        }

        if (v13)
        {
          MEMORY[0x29EDC9740](v14);
        }

        MEMORY[0x29EDC9740](v7);
      }

      [v23[0] invokeDefaultAction];
      objc_storeStrong(&v15, 0);
    }
  }

  objc_storeStrong(v23, 0);
}

void __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_2(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v6 = *(a1 + 32);
  CGRectGetMinX(*(a1 + 56));
  AX_CGRectGetCenter();
  v7[1] = v1;
  v7[2] = v2;
  CGPointMake_12();
  v7[3] = v3;
  v7[4] = v4;
  v8[0] = [v6 _textInteractableItemAtPoint:0 precision:{*&v3, *&v4}];
  NSClassFromString(&cfstr_Uitextinteract_3.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = &UIKBEmojiZeroWidthJoiner_block_invoke_2_onceToken_1;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_575);
    if (*v10 != -1)
    {
      dispatch_once(v10, location);
    }

    objc_storeStrong(&location, 0);
    v7[0] = [*(a1 + 40) textView:*(a1 + 32) primaryActionForTextItem:v8[0] defaultAction:UIKBEmojiZeroWidthJoiner_block_invoke_2_DefaultAction];
    if (v7[0])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v8[0] invokeDefaultAction];
    }

    objc_storeStrong(v7, 0);
  }

  objc_storeStrong(v8, 0);
}

double __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_3(uint64_t a1)
{
  v1 = [MEMORY[0x29EDC7908] actionWithTitle:&stru_2A2358AA8 image:0 identifier:@"UITextInteractableItemDefaultAction" handler:{&__block_literal_global_585, a1, a1}];
  v2 = UIKBEmojiZeroWidthJoiner_block_invoke_2_DefaultAction;
  UIKBEmojiZeroWidthJoiner_block_invoke_2_DefaultAction = v1;
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

void __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_5(void *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v3 = a1[4];
  AX_CGRectGetCenter();
  v5[0] = [v3 _textInteractableItemAtPoint:0 precision:{v1, v2}];
  [v5[0] setContextMenuInteraction:a1[5]];
  [v5[0] invokeDefaultAction];
  objc_storeStrong(v5, 0);
}

uint64_t __54__UITextViewAccessibility__accessibilityActivateLink___block_invoke_6(uint64_t a1)
{
  v8 = *(a1 + 32);
  AX_CGRectGetCenter();
  [v8 startInteractionWithLinkAtPoint:{v1, v2}];
  v9 = *(a1 + 32);
  AX_CGRectGetCenter();
  [v9 updateInteractionWithLinkAtPoint:{v3, v4}];
  v11 = *(a1 + 32);
  AX_CGRectGetCenter();
  return [v11 validateInteractionWithLinkAtPoint:{v5, v6}];
}

- (unint64_t)accessibilityTraits
{
  v21 = self;
  v20 = a2;
  v11 = [(UITextViewAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (v11)
  {
    v9 = [(UITextViewAccessibility *)v21 accessibilityUserDefinedTraits];
    v10 = [v9 unsignedLongLongValue];
    MEMORY[0x29EDC9740](v9);
    v19 = v10;
    if (v10 != *MEMORY[0x29EDBDB50])
    {
      return v19;
    }
  }

  if (([(UITextViewAccessibility *)v21 _axIsOnlyOneLinkElement]& 1) != 0)
  {
    return *MEMORY[0x29EDC7F98];
  }

  v18 = [(UITextViewAccessibility *)v21 isEditable];
  v17 = 0;
  if (v18)
  {
    v17 = *MEMORY[0x29EDC7598] | *MEMORY[0x29EDBDC00];
  }

  else
  {
    v17 = *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDBDC00];
  }

  v6 = [(UITextViewAccessibility *)v21 safeValueForKey:@"selectedRange"];
  v15 = [v6 rangeValue];
  v16 = v3;
  v7 = [(UITextViewAccessibility *)v21 safeValueForKey:@"isEditing", MEMORY[0x29EDC9740](v6).n128_f64[0]];
  v8 = 0;
  if ([v7 BOOLValue])
  {
    v8 = v15 != 0x7FFFFFFFFFFFFFFFLL;
  }

  MEMORY[0x29EDC9740](v7);
  if (v8 && (_AXSMossdeepEnabled() || ([*MEMORY[0x29EDC8008] _accessibilityHardwareKeyboardActive] & 1) != 0 || (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilitySoftwareKeyboardActive") & 1) != 0))
  {
    v17 |= *MEMORY[0x29EDC7528];
  }

  v14 = 0;
  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();
  v12 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  v4 = [(UIView *)v12 _accessibilityTextAreaTraits];
  v17 |= v4;
  MEMORY[0x29EDC9740](v12);
  return v17;
}

- (id)accessibilityElements
{
  v6 = self;
  v5 = a2;
  if ([(UITextViewAccessibility *)self _accessibilityTextViewShouldBreakUpParagraphs])
  {
    v7 = [(UITextViewAccessibility *)v6 _accessibilityParagraphElements];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UITextViewAccessibility;
    v7 = [(UITextViewAccessibility *)&v4 accessibilityElements];
  }

  v2 = v7;

  return v2;
}

- (id)_accessibilityParagraphElements
{
  v49 = a1;
  if (a1)
  {
    v48 = [v49 _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
    if (v48)
    {
      v50 = MEMORY[0x29EDC9748](v48);
      v47 = 1;
    }

    else
    {
      v45 = 0;
      objc_opt_class();
      v44 = __UIAccessibilityCastAsClass();
      v43 = MEMORY[0x29EDC9748](v44);
      objc_storeStrong(&v44, 0);
      v46 = v43;
      if (v43)
      {
        v36 = 0;
        v37 = &v36;
        v38 = 838860800;
        v39 = 48;
        v40 = __Block_byref_object_copy__26;
        v41 = __Block_byref_object_dispose__26;
        v42 = [MEMORY[0x29EDB8DE8] array];
        v30[0] = 0;
        v30[1] = v30;
        v31 = 838860800;
        v32 = 48;
        v33 = __Block_byref_object_copy__26;
        v34 = __Block_byref_object_dispose__26;
        v35 = [MEMORY[0x29EDB8DE8] array];
        v29 = [v49 _accessibilityAXAttributedValue];
        v9 = [v46 text];
        v7 = [v46 text];
        v8 = [v7 length];
        v56 = 0;
        v55 = v8;
        v57 = 0;
        v58 = v8;
        v27 = 0;
        v28 = v8;
        v21[1] = MEMORY[0x29EDCA5F8];
        v22 = -1073741824;
        v23 = 0;
        v24 = __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke;
        v25 = &unk_29F30E040;
        v26 = v30;
        [v9 enumerateSubstringsInRange:0 options:v8 usingBlock:1];
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v9);
        v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v21[0] = dispatch_queue_create("AXUITextViewLinkQueue", v4);
        *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
        v5 = v29;
        v6 = [v29 length];
        v52 = 0;
        v51 = v6;
        v53 = 0;
        v54 = v6;
        v19 = 0;
        v20 = v6;
        v10 = MEMORY[0x29EDCA5F8];
        v11 = -1073741824;
        v12 = 0;
        v13 = __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_2;
        v14 = &unk_29F30E0E0;
        v18[1] = v30;
        v15 = MEMORY[0x29EDC9748](v49);
        v16 = MEMORY[0x29EDC9748](v21[0]);
        v17 = MEMORY[0x29EDC9748](v29);
        v18[0] = MEMORY[0x29EDC9748](v46);
        v18[2] = &v36;
        [v5 enumerateSubstringsInRange:v19 options:v20 usingBlock:{1, &v10}];
        if ([v37[5] count])
        {
          [v49 _accessibilitySetRetainedValue:v37[5] forKey:*MEMORY[0x29EDC7620]];
        }

        v50 = MEMORY[0x29EDC9748](v37[5]);
        v47 = 1;
        objc_storeStrong(v18, 0);
        objc_storeStrong(&v17, 0);
        objc_storeStrong(&v16, 0);
        objc_storeStrong(&v15, 0);
        objc_storeStrong(v21, 0);
        objc_storeStrong(&v29, 0);
        _Block_object_dispose(v30, 8);
        objc_storeStrong(&v35, 0);
        _Block_object_dispose(&v36, 8);
        objc_storeStrong(&v42, 0);
      }

      else
      {
        v50 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
        v47 = 1;
      }

      objc_storeStrong(&v46, 0);
    }

    objc_storeStrong(&v48, 0);
  }

  else
  {
    v50 = 0;
  }

  v2 = v50;

  return v2;
}

- (id)_accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:(void *)a1
{
  v44 = *MEMORY[0x29EDCA608];
  v41 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v41)
  {
    v37 = 0;
    objc_opt_class();
    v36 = __UIAccessibilityCastAsClass();
    v35 = MEMORY[0x29EDC9748](v36);
    objc_storeStrong(&v36, 0);
    v38 = v35;
    v34 = 0;
    v33 = 0.0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v24 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
    if (v24)
    {
      v20 = *__b[2];
      v21 = 0;
      v22 = v24;
      while (1)
      {
        v19 = v21;
        if (*__b[2] != v20)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(__b[1] + 8 * v21);
        v17 = v38;
        [v32 rect];
        v26 = v2;
        v27 = v3;
        v28 = v4;
        v29 = v5;
        v18 = [v38 superview];
        [v17 convertRect:v26 toView:{v27, v28, v29}];
        r1.origin.x = v6;
        r1.origin.y = v7;
        r1.size.width = v8;
        r1.size.height = v9;
        MEMORY[0x29EDC9740](v18);
        [v41 frame];
        r2.origin.x = v10;
        r2.origin.y = v11;
        r2.size.width = v12;
        r2.size.height = v13;
        v46 = CGRectIntersection(r1, r2);
        v14 = v46.size.width * v46.size.height;
        if (v46.size.width * v46.size.height > v33)
        {
          v33 = v46.size.width * v46.size.height;
          objc_storeStrong(&v34, v32);
        }

        ++v21;
        if (v19 + 1 >= v22)
        {
          v21 = 0;
          v22 = [obj countByEnumeratingWithState:__b objects:v43 count:{16, v14}];
          if (!v22)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v42 = MEMORY[0x29EDC9748](v34);
    v39 = 1;
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    v42 = 0;
    v39 = 1;
  }

  objc_storeStrong(&location, 0);
  v15 = v42;

  return v15;
}

- (id)accessibilityDragSourceDescriptors
{
  v20[1] = *MEMORY[0x29EDCA608];
  v18 = self;
  v17[1] = a2;
  v17[0] = [(UITextViewAccessibility *)self accessibilityUserDefinedDragSourceDescriptors];
  if (v17[0])
  {
    v19 = MEMORY[0x29EDC9748](v17[0]);
    v16 = 1;
  }

  else
  {
    v14 = 0;
    objc_opt_class();
    v13 = __UIAccessibilityCastAsClass();
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v15 = v12;
    v11 = [v12 selectedTextRange];
    if (v11 && ([v11 isEmpty] & 1) == 0)
    {
      v10 = [v15 selectionRectsForRange:v11];
      v9 = [(UITextViewAccessibility *)v18 _accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:v10];
      if (v9)
      {
        v6 = objc_alloc(MEMORY[0x29EDC7900]);
        v8 = accessibilityLocalizedString(@"drag.selection");
        [v9 rect];
        UIRectGetCenter();
        v7 = [v6 initWithName:v8 point:v15 inView:{v2, v3}];
        v20[0] = v7;
        v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v8);
      }

      else
      {
        v19 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      }

      v16 = 1;
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    else
    {
      v19 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      v16 = 1;
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  v4 = v19;

  return v4;
}

- (id)accessibilityDropPointDescriptors
{
  v53[1] = *MEMORY[0x29EDCA608];
  v49 = self;
  v48[1] = a2;
  v48[0] = [(UITextViewAccessibility *)self accessibilityUserDefinedDropPointDescriptors];
  if (v48[0])
  {
    v50 = MEMORY[0x29EDC9748](v48[0]);
    v47 = 1;
    goto LABEL_16;
  }

  v45 = 0;
  objc_opt_class();
  v44 = __UIAccessibilityCastAsClass();
  v43 = MEMORY[0x29EDC9748](v44);
  objc_storeStrong(&v44, 0);
  v46 = v43;
  v42 = [v43 textDropDelegate];
  if ([v46 isEditable] & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v41 = [v46 selectedTextRange];
    if (v41)
    {
      if ([v41 isEmpty])
      {
        v24 = v46;
        v25 = [v41 start];
        [v24 caretRectForPosition:?];
        v37 = v2;
        v38 = v3;
        v39 = v4;
        v40 = v5;
        MEMORY[0x29EDC9740](v25);
        UIRectGetCenter();
        v35 = v6;
        v36 = v7;
        v26 = objc_alloc(MEMORY[0x29EDC7900]);
        v28 = accessibilityLocalizedString(@"drop.at.point");
        v27 = [v26 initWithName:v35 point:v36 inView:?];
        v53[0] = v27;
        v50 = [MEMORY[0x29EDB8D80] arrayWithObjects:v53 count:1];
        MEMORY[0x29EDC9740](v27);
        MEMORY[0x29EDC9740](v28);
        v47 = 1;
LABEL_14:
        objc_storeStrong(&v41, 0);
        goto LABEL_15;
      }

      v34 = [v46 selectionRectsForRange:v41];
      v33 = [(UITextViewAccessibility *)v49 _accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:v34];
      if (v33)
      {
        v21 = objc_alloc(MEMORY[0x29EDC7900]);
        v23 = accessibilityLocalizedString(@"drop.on.selection");
        [v33 rect];
        UIRectGetCenter();
        v22 = [v21 initWithName:v23 point:v46 inView:{v8, v9}];
        v52 = v22;
        v50 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v52 count:1];
        MEMORY[0x29EDC9740](v22);
        MEMORY[0x29EDC9740](v23);
        v47 = 1;
      }

      else
      {
        v47 = 0;
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      if (v47)
      {
        goto LABEL_14;
      }
    }

    v16 = v46;
    [v46 frame];
    UIRectGetCenter();
    v29 = v10;
    v30 = v11;
    v17 = [v46 superview];
    [v16 convertPoint:v29 fromView:v30];
    v31 = v12;
    v32 = v13;
    MEMORY[0x29EDC9740](v17);
    v18 = objc_alloc(MEMORY[0x29EDC7900]);
    v20 = accessibilityLocalizedString(@"drop.into.text");
    v19 = [v18 initWithName:v31 point:v32 inView:?];
    v51 = v19;
    v50 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v51 count:1];
    MEMORY[0x29EDC9740](v19);
    MEMORY[0x29EDC9740](v20);
    v47 = 1;
    goto LABEL_14;
  }

  v50 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
  v47 = 1;
LABEL_15:
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v46, 0);
LABEL_16:
  objc_storeStrong(v48, 0);
  v14 = v50;

  return v14;
}

- (CGPoint)accessibilityActivationPoint
{
  v23 = self;
  location[1] = a2;
  v2 = [(UITextViewAccessibility *)self accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7528]) != 0)
  {
    location[0] = [(UITextViewAccessibility *)v23 selectedTextRange];
    v17 = [location[0] start];
    [(UITextViewAccessibility *)v23 caretRectForPosition:?];
    *&v3 = MEMORY[0x29EDC9740](v17).n128_u64[0];
    if (location[0] && ([location[0] isEmpty] & 1) == 0)
    {
      [(UITextViewAccessibility *)v23 firstRectForRange:location[0]];
    }

    UIAccessibilityFrameForBounds();
    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    CGRectGetMidX(v21);
    CGRectGetMidY(v21);
    CGPointMake_12();
    *&v24 = v8;
    *(&v24 + 1) = v9;
    objc_storeStrong(location, 0);
  }

  else
  {
    v16 = [(UITextViewAccessibility *)v23 safeValueForKey:@"visibleTextRect"];
    [v16 rectValue];
    v19 = v10;
    v20 = v11;
    MEMORY[0x29EDC9740](v16);
    if (AX_CGSizeIsEmpty_0(v19, v20))
    {
      [(UITextViewAccessibility *)v23 bounds];
    }

    [(UITextViewAccessibility *)v23 safeIntegerForKey:@"marginTop"];
    UIAccessibilityFrameForBounds();
    *&v18 = v12;
    *(&v18 + 1) = v13;
    v24 = v18;
  }

  v15 = *(&v24 + 1);
  v14 = *&v24;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGRect)accessibilityFrame
{
  [(UITextViewAccessibility *)self safeCGRectForKey:@"visibleTextRect"];
  if (AX_CGSizeIsEmpty_0(v2, v3))
  {
    [(UITextViewAccessibility *)self bounds];
  }

  UIAccessibilityFrameForBounds();
  *v16 = v4;
  *&v16[8] = v5;
  *&v16[16] = v6;
  *&v16[24] = v7;
  if (v4 < 0.0 || (v4 = v5, v5 < 0.0))
  {
    v12 = [(UITextViewAccessibility *)self _accessibilityWindow];
    [v12 frame];
    v18 = CGRectIntersection(v17, *v16);
    *&v13 = v18.origin.x;
    *(&v13 + 1) = *&v18.origin.y;
    *&v14 = v18.size.width;
    *(&v14 + 1) = *&v18.size.height;
    *v16 = v13;
    *&v16[16] = v14;
    MEMORY[0x29EDC9740](v12);
  }

  v9 = *&v16[8];
  v8 = *v16;
  v11 = *&v16[24];
  v10 = *&v16[16];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  v12 = a3;
  v11 = self;
  v10 = a2;
  [(UITextViewAccessibility *)self safeCGPointForKey:@"contentOffset"];
  v7 = v3;
  v8 = v4;
  v9 = !__CGPointEqualToPoint_2(v12.x, v12.y, v3, v4);
  v6.receiver = v11;
  v6.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v6 setContentOffset:v12.x, v12.y];
  if (v9)
  {
    v5 = MEMORY[0x29EDC9748](v11);
    AXPerformBlockAsynchronouslyOnMainThread();
    objc_storeStrong(&v5, 0);
  }
}

void __44__UITextViewAccessibility_setContentOffset___block_invoke(uint64_t a1)
{
  if (_AXSAuditInspectionModeEnabled() && ([*(a1 + 32) isAccessibilityElement] & 1) != 0 || UIAccessibilityIsSwitchControlRunning() && (objc_msgSend(*(a1 + 32), "_accessibilityTextViewShouldBreakUpParagraphs") & 1) != 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v13 = a4;
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v8.receiver = v12;
  v8.super_class = UITextViewAccessibility;
  v9 = [(UITextViewAccessibility *)&v8 keyboardInput:location[0] shouldReplaceTextInRange:v13.location replacementText:v13.length, v10];
  if ((v9 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v9;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v9.receiver = v14;
  v9.super_class = UITextViewAccessibility;
  v10 = [(UITextViewAccessibility *)&v9 keyboardInput:location[0] shouldInsertText:v12 isMarkedText:a5];
  if ((v10 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v10;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v13 = a3;
  v12 = self;
  v11[1] = a2;
  v11[0] = [(UITextViewAccessibility *)self _accessibilityAXAttributedValue];
  if (!v11[0])
  {
    v11[0] = [(UITextViewAccessibility *)v12 _accessibilityAXAttributedLabel];
    MEMORY[0x29EDC9740](0);
  }

  v10 = 0;
  if (AXIsDictationListening())
  {
    AXHandleUserInteractionForDictation(1);
    v10 = 1;
  }

  v9 = MEMORY[0x29EDC9748](v12);
  if (v13.length || (location = v13.location, v16 = 0, v13.location > [v11[0] length]))
  {
    if (v13.length)
    {
      [v12 _accessibilitySetTextSelection:v13.length];
    }
  }

  else
  {
    [v9 setSelectedRange:{v13.location, v13.length}];
    if (([v9 isEditing] & 1) == 0)
    {
      v7 = [v9 beginningOfDocument];
      v6 = [v9 positionFromPosition:? offset:?];
      v5 = [v9 beginningOfDocument];
      v14 = v13;
      v4 = [v9 positionFromPosition:? offset:?];
      v8 = [v9 textRangeFromPosition:v6 toPosition:?];
      MEMORY[0x29EDC9740](v4);
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v6);
      *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
      [v9 setSelectedTextRange:{v8, v3}];
      objc_storeStrong(&v8, 0);
    }
  }

  if (v10)
  {
    AXHandleUserInteractionForDictation(0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(v11, 0);
}

- (id)accessibilityCustomRotors
{
  v19 = self;
  v18[1] = a2;
  v18[0] = [MEMORY[0x29EDB8DE8] array];
  v15 = v18[0];
  v17.receiver = v19;
  v17.super_class = UITextViewAccessibility;
  v16 = [(UITextViewAccessibility *)&v17 accessibilityCustomRotors];
  [v15 axSafelyAddObjectsFromArray:?];
  *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
  if ([(UITextViewAccessibility *)v19 _accessibilityTextViewShouldBreakUpParagraphs])
  {
    v13 = v18[0];
    v14 = [(UITextViewAccessibility *)v19 _accessibilityParagraphLinksCustomRotor];
    [v13 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v14);
  }

  else
  {
    v11 = v18[0];
    v12 = [(UITextViewAccessibility *)v19 _accessibilityInternalTextLinkCustomRotors];
    [v11 axSafelyAddObjectsFromArray:?];
    *&v3 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    if (([(UITextViewAccessibility *)v19 isEditable]& 1) != 0)
    {
      v9 = v18[0];
      v10 = [(UITextViewAccessibility *)v19 _accessibilityCommonStylingRotors];
      [v9 axSafelyAddObjectsFromArray:?];
      *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      if (!AXUIKeyboardTypeSupportsMisspelledRotor([(UITextViewAccessibility *)v19 keyboardType]))
      {
        v7 = v18[0];
        v8 = [(UITextViewAccessibility *)v19 _accessibilityMisspelledRotor];
        [v7 removeObject:?];
        MEMORY[0x29EDC9740](v8);
      }
    }
  }

  v6 = MEMORY[0x29EDC9748](v18[0]);
  objc_storeStrong(v18, 0);

  return v6;
}

- (id)_accessibilityParagraphLinksCustomRotor
{
  v35 = *MEMORY[0x29EDCA608];
  v32 = a1;
  if (a1)
  {
    v18 = [(UITextViewAccessibility *)v32 _accessibilityParagraphElements];
    v30 = 0;
    v17 = 0;
    if ([v18 count])
    {
      v31 = [(UITextViewAccessibility *)v32 _accessibilityParagraphElementsWithLinks];
      v30 = 1;
      v17 = [v31 count] != 0;
    }

    if (v30)
    {
      MEMORY[0x29EDC9740](v31);
    }

    *&v1 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    if (v17)
    {
      v29 = [v32 _accessibilityValueForKey:{@"AXParagraphLinkRotor", v1}];
      if (!v29)
      {
        objc_initWeak(&location, v32);
        v16 = objc_alloc(MEMORY[0x29EDC78E8]);
        v22 = MEMORY[0x29EDCA5F8];
        v23 = -1073741824;
        v24 = 0;
        v25 = __66__UITextViewAccessibility__accessibilityParagraphLinksCustomRotor__block_invoke;
        v26 = &unk_29F30E018;
        objc_copyWeak(&v27, &location);
        v15 = [v16 initWithSystemType:1 itemSearchBlock:&v22];
        v2 = v29;
        v29 = v15;
        MEMORY[0x29EDC9740](v2);
        v21 = 0;
        memset(__b, 0, sizeof(__b));
        obj = [(UITextViewAccessibility *)v32 _accessibilityParagraphElementsWithLinks];
        v14 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
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
            v7 = [(_AXUITextViewParagraphElement *)v20 links];
            v8 = [v7 count];
            v21 += v8;
            *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
            ++v11;
            if (v9 + 1 >= v12)
            {
              v11 = 0;
              v12 = [obj countByEnumeratingWithState:__b objects:v34 count:{16, v3}];
              if (!v12)
              {
                break;
              }
            }
          }
        }

        *&v4 = MEMORY[0x29EDC9740](obj).n128_u64[0];
        [v29 setLinkCount:{v21, v4}];
        [v32 _accessibilitySetRetainedValue:v29 forKey:@"AXParagraphLinkRotor"];
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      v33 = MEMORY[0x29EDC9748](v29);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v5 = v33;

  return v5;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  v71 = a3;
  v70 = self;
  v69 = a2;
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UITextViewAccessibility *)v70 accessibilityFrame];
    *&v72 = v3;
    *(&v72 + 1) = v4;
    *&v73 = v5;
    *(&v73 + 1) = v6;
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v72 = *MEMORY[0x29EDB90E0];
    v73 = *(MEMORY[0x29EDB90E0] + 16);
    if (([(UITextViewAccessibility *)v70 isEditable]& 1) != 0)
    {
      v66.receiver = v70;
      v66.super_class = UITextViewAccessibility;
      [(UITextViewAccessibility *)&v66 _accessibilityBoundsForRange:v71];
      *&v67 = v7;
      *(&v67 + 1) = v8;
      *&v68 = v9;
      *(&v68 + 1) = v10;
      v72 = v67;
      v73 = v68;
    }

    v65 = [(UITextViewAccessibility *)v70 safeValueForKey:@"_textLayoutController"];
    if (__CGSizeEqualToSize_2(*MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8), *&v73, *(&v73 + 1)) && ([v65 safeBoolForKey:@"canAccessLayoutManager"] & 1) != 0)
    {
      v63 = 0;
      objc_opt_class();
      v32 = [v65 safeValueForKey:@"layoutManager"];
      v62 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v32);
      v61 = MEMORY[0x29EDC9748](v62);
      objc_storeStrong(&v62, 0);
      v64 = v61;
      v59 = 0;
      objc_opt_class();
      v31 = [(UITextViewAccessibility *)v70 safeValueForKey:@"_textContainer"];
      v58 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v31);
      v57 = MEMORY[0x29EDC9748](v58);
      objc_storeStrong(&v58, 0);
      v60 = v57;
      [v64 boundingRectForGlyphRange:v71 inTextContainer:v57];
      v51 = v11;
      v52 = v12;
      v53 = v13;
      v54 = v14;
      UIAccessibilityFrameForBounds();
      *&v55 = v15;
      *(&v55 + 1) = v16;
      *&v56 = v17;
      *(&v56 + 1) = v18;
      v72 = v55;
      v73 = v56;
      v49 = 0u;
      v50 = 0u;
      v48 = 0;
      objc_opt_class();
      v47 = __UIAccessibilityCastAsClass();
      v46 = MEMORY[0x29EDC9748](v47);
      objc_storeStrong(&v47, 0);
      [v46 textContainerInset];
      *&v49 = v19;
      *(&v49 + 1) = v20;
      *&v50 = v21;
      *(&v50 + 1) = v22;
      MEMORY[0x29EDC9740](v46);
      *&v72 = *&v72 + *(&v49 + 1);
      *(&v72 + 1) = *(&v72 + 1) + *&v49;
      objc_storeStrong(&v60, 0);
      objc_storeStrong(&v64, 0);
    }

    else if (__CGSizeEqualToSize_2(*MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8), *&v73, *(&v73 + 1)))
    {
      NSClassFromString(&cfstr_Uitextkit2layo.isa);
      if (objc_opt_isKindOfClass())
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x10000000;
        v38 = 64;
        v39 = &unk_29C6A1FE6;
        v40 = 0u;
        v41 = 0u;
        v33[1] = &v35;
        v33[0] = MEMORY[0x29EDC9748](v65);
        v34 = v71;
        AXPerformSafeBlock();
        v42 = *(v36 + 2);
        v43 = *(v36 + 3);
        objc_storeStrong(v33, 0);
        _Block_object_dispose(&v35, 8);
        UIAccessibilityFrameForBounds();
        *&v44 = v23;
        *(&v44 + 1) = v24;
        *&v45 = v25;
        *(&v45 + 1) = v26;
        v72 = v44;
        v73 = v45;
      }
    }

    objc_storeStrong(&v65, 0);
  }

  v28 = *(&v72 + 1);
  v27 = *&v72;
  v30 = *(&v73 + 1);
  v29 = *&v73;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

__n128 __56__UITextViewAccessibility__accessibilityBoundsForRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) boundingRectForCharacterRange:{*(a1 + 48), *(a1 + 56)}];
  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

- (id)_accessibilityInternalTextLinks
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = self;
  v23[1] = a2;
  v22.receiver = self;
  v22.super_class = UITextViewAccessibility;
  v23[0] = [(UITextViewAccessibility *)&v22 _accessibilityInternalTextLinks];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v23[0]);
  v10 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v7);
      objc_initWeak(&location, v21);
      objc_initWeak(&from, v24);
      v4 = v21;
      v11 = MEMORY[0x29EDCA5F8];
      v12 = -1073741824;
      v13 = 0;
      v14 = __58__UITextViewAccessibility__accessibilityInternalTextLinks__block_invoke;
      v15 = &unk_29F30DFC8;
      objc_copyWeak(&v16, &from);
      objc_copyWeak(&v17, &location);
      [v4 setAccessibilityActivateBlock:&v11];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  [(UITextViewAccessibility *)v24 _axRegisterForDDNotificationIfNeeded];
  v3 = MEMORY[0x29EDC9748](v23[0]);
  objc_storeStrong(v23, 0);

  return v3;
}

uint64_t __58__UITextViewAccessibility__accessibilityInternalTextLinks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5 = [(UITextViewAccessibility *)WeakRetained _accessibilityActivateLink:v3];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  return v5;
}

- (BOOL)canBecomeFocused
{
  v5 = self;
  v4 = a2;
  if (([(UITextViewAccessibility *)self _accessibilityIsFocusForFocusEverywhereRunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  if (([(UITextViewAccessibility *)v5 _accessibilityIsFKARunningForFocusItem]& 1) != 0 && ![(UITextViewAccessibility *)v5 isAccessibilityElement])
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = UITextViewAccessibility;
  return [(UITextViewAccessibility *)&v3 canBecomeFocused];
}

- (id)automationElements
{
  v29 = self;
  v28[1] = a2;
  v27.receiver = self;
  v27.super_class = UITextViewAccessibility;
  v11 = [(UITextViewAccessibility *)&v27 automationElements];
  v12 = [v11 mutableCopy];
  v25 = 0;
  if (v12)
  {
    v2 = MEMORY[0x29EDC9748](v12);
  }

  else
  {
    v26 = [MEMORY[0x29EDB8DE8] array];
    v25 = 1;
    v2 = MEMORY[0x29EDC9748](v26);
  }

  v28[0] = v2;
  if (v25)
  {
    MEMORY[0x29EDC9740](v26);
  }

  MEMORY[0x29EDC9740](v12);
  *&v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  v10 = [(UITextViewAccessibility *)v29 safeValueForKey:@"interactionAssistant", v3];
  v24 = [v10 safeUIViewForKey:@"_selectionView"];
  if ([v24 _accessibilityViewIsVisible])
  {
    [v28[0] addObject:v24];
  }

  v23 = MEMORY[0x29EDC9748](v29);
  v8 = [v23 textStorage];
  v6 = *MEMORY[0x29EDC7628];
  v7 = [v23 textStorage];
  v4 = [v7 length];
  v31 = 0;
  v30 = v4;
  v32 = 0;
  v33 = v4;
  v21 = 0;
  v22 = v4;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = -1073741824;
  v15 = 0;
  v16 = __45__UITextViewAccessibility_automationElements__block_invoke;
  v17 = &unk_29F30DFF0;
  v18 = MEMORY[0x29EDC9748](v23);
  v19 = MEMORY[0x29EDC9748](v29);
  v20 = MEMORY[0x29EDC9748](v28[0]);
  [v8 enumerateAttribute:v6 inRange:v21 options:v22 usingBlock:{0, &v13}];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  v9 = MEMORY[0x29EDC9748](v28[0]);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v28, 0);

  return v9;
}

void __45__UITextViewAccessibility_automationElements__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v52 = a3;
  *(&v52 + 1) = a4;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v50[2] = a5;
  v50[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50[0] = MEMORY[0x29EDC9748](location[0]);
    v49 = 0;
    v24 = [*(a1 + 32) textLayoutManager];
    *&v5 = MEMORY[0x29EDC9740](v24).n128_u64[0];
    if (v24)
    {
      v18 = [*(a1 + 32) textLayoutManager];
      v17 = [*(a1 + 32) textLayoutManager];
      v16 = [v17 documentRange];
      v15 = [v16 location];
      v27 = [v18 locationFromLocation:? withOffset:?];
      MEMORY[0x29EDC9740](v15);
      MEMORY[0x29EDC9740](v16);
      MEMORY[0x29EDC9740](v17);
      v19 = [*(a1 + 32) textLayoutManager];
      v11 = [v19 viewProviderForTextAttachment:v50[0] location:v27];
      v12 = v49;
      v49 = v11;
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v19);
      objc_storeStrong(&v27, 0);
    }

    else if ([objc_opt_class() safeBoolForKey:@"_isTextLayoutManagerEnabled"] & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v48 = [*(a1 + 40) safeValueForKey:@"_textLayoutController"];
      v40 = 0;
      v41 = &v40;
      v42 = 838860800;
      v43 = 48;
      v44 = __Block_byref_object_copy__26;
      v45 = __Block_byref_object_dispose__26;
      v46 = 0;
      v33 = MEMORY[0x29EDCA5F8];
      v34 = -1073741824;
      v35 = 0;
      v36 = __45__UITextViewAccessibility_automationElements__block_invoke_643;
      v37 = &unk_29F30DFA0;
      v38[1] = &v40;
      v38[0] = MEMORY[0x29EDC9748](v48);
      v39 = v52;
      AXPerformSafeBlock();
      v32 = MEMORY[0x29EDC9748](v41[5]);
      objc_storeStrong(v38, 0);
      _Block_object_dispose(&v40, 8);
      objc_storeStrong(&v46, 0);
      v47 = v32;
      v30 = 0;
      objc_opt_class();
      v23 = [*(a1 + 40) safeValueForKey:@"_textContainer"];
      v29 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v23);
      v28 = MEMORY[0x29EDC9748](v29);
      objc_storeStrong(&v29, 0);
      v31 = v28;
      v6 = [v50[0] viewProviderForParentView:*(a1 + 32) location:v47 textContainer:v28];
      v7 = v49;
      v49 = v6;
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
    }

    else
    {
      v20 = *(a1 + 32);
      v21 = v52;
      v22 = [v20 layoutManager];
      v9 = [v50[0] viewProviderForParentView:v20 characterIndex:v21 layoutManager:?];
      v10 = v49;
      v49 = v9;
      MEMORY[0x29EDC9740](v10);
      *&v8 = MEMORY[0x29EDC9740](v22).n128_u64[0];
    }

    v13 = *(a1 + 48);
    v14 = [v49 view];
    [v13 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v14);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(v50, 0);
  }

  objc_storeStrong(location, 0);
}

double __45__UITextViewAccessibility_automationElements__block_invoke_643(uint64_t a1)
{
  v1 = [*(a1 + 32) _locationWithOffset:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (BOOL)replaceAnimatedTextPlaceholderWith:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UITextViewAccessibility;
  v6 = [(UITextViewAccessibility *)&v5 replaceAnimatedTextPlaceholderWith:location[0]];
  [(UITextViewAccessibility *)v8 _accessibilitySetRetainedValue:0 forKey:*MEMORY[0x29EDC7620]];
  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)removeAnimatedTextPlaceholders
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v2 removeAnimatedTextPlaceholders];
  [(UITextViewAccessibility *)v4 _accessibilitySetRetainedValue:0 forKey:*MEMORY[0x29EDC7620]];
}

- (void)insertAnimatedTextPlaceholderAtLocation:(id)a3 numLines:(double)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITextViewAccessibility;
  [(UITextViewAccessibility *)&v5 insertAnimatedTextPlaceholderAtLocation:location[0] numLines:a4];
  [(UITextViewAccessibility *)v8 _accessibilitySetRetainedValue:0 forKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (id)_replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v9.receiver = v14;
  v9.super_class = UITextViewAccessibility;
  v10 = [(UITextViewAccessibility *)&v9 _replaceRange:location[0] withAttributedText:v12 updatingSelection:a5];
  [(UITextViewAccessibility *)v14 _accessibilitySetRetainedValue:0 forKey:*MEMORY[0x29EDC7620]];
  v8 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (BOOL)_accessibilityTextViewShouldBreakUpParagraphs
{
  v9 = self;
  v8 = a2;
  v7 = [(UITextViewAccessibility *)self isEditable];
  if (v7)
  {
    return 0;
  }

  v4 = [(UITextViewAccessibility *)v9 accessibilityLabel];
  v5 = [v4 length];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5)
  {
    return 0;
  }

  if (([(UITextViewAccessibility *)v9 _accessibilityViewIsVisible]& 1) == 0)
  {
    return 0;
  }

  v6.receiver = v9;
  v6.super_class = UITextViewAccessibility;
  return [(UITextViewAccessibility *)&v6 _accessibilityTextViewShouldBreakUpParagraphs];
}

- (id)_accessibilityLinksForRange:(NSUInteger)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v20.location = a2;
  v20.length = a3;
  v19 = a1;
  if (a1)
  {
    v13 = [v19 _accessibilityInternalTextLinks];
    v14 = [v13 count];
    *&v3 = MEMORY[0x29EDC9740](v13).n128_u64[0];
    if (v14)
    {
      v18 = [MEMORY[0x29EDB8DE8] array];
      memset(__b, 0, sizeof(__b));
      obj = [v19 _accessibilityInternalTextLinks];
      v12 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
      if (v12)
      {
        v8 = *__b[2];
        v9 = 0;
        v10 = v12;
        while (1)
        {
          v7 = v9;
          if (*__b[2] != v8)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(__b[1] + 8 * v9);
          range2.location = [v17 range];
          range2.length = v4;
          if (NSIntersectionRange(v20, range2).length)
          {
            [v18 addObject:v17];
          }

          ++v9;
          if (v7 + 1 >= v10)
          {
            v9 = 0;
            v10 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
            if (!v10)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      v21 = MEMORY[0x29EDC9748](v18);
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v21 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
    }
  }

  else
  {
    v21 = 0;
  }

  v5 = v21;

  return v5;
}

- (id)_accessibilityParagraphElementsWithLinks
{
  v18 = a1;
  if (a1)
  {
    v17 = [(UITextViewAccessibility *)v18 _accessibilityParagraphElements];
    if ([v17 count])
    {
      v9 = 0;
      v10 = &v9;
      v11 = 838860800;
      v12 = 48;
      v13 = __Block_byref_object_copy__26;
      v14 = __Block_byref_object_dispose__26;
      v15 = [MEMORY[0x29EDB8DE8] array];
      v3 = MEMORY[0x29EDCA5F8];
      v4 = -1073741824;
      v5 = 0;
      v6 = __67__UITextViewAccessibility__accessibilityParagraphElementsWithLinks__block_invoke;
      v7 = &unk_29F30E108;
      v8 = &v9;
      [v17 enumerateObjectsUsingBlock:?];
      v19 = MEMORY[0x29EDC9748](v10[5]);
      v16 = 1;
      _Block_object_dispose(&v9, 8);
      objc_storeStrong(&v15, 0);
    }

    else
    {
      v19 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      v16 = 1;
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    v19 = 0;
  }

  v1 = v19;

  return v1;
}

id __66__UITextViewAccessibility__accessibilityParagraphLinksCustomRotor__block_invoke(id *a1, void *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30[1] = a1;
  v30[0] = objc_loadWeakRetained(a1 + 4);
  v29 = [(UITextViewAccessibility *)v30[0] _accessibilityParagraphElementsWithLinks];
  v28 = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v29);
  v22 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
  if (v22)
  {
    v17 = *__b[2];
    v18 = 0;
    v19 = v22;
    while (1)
    {
      v16 = v18;
      if (*__b[2] != v17)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(__b[1] + 8 * v18);
      v14 = v28;
      v15 = [(_AXUITextViewParagraphElement *)v27 links];
      [v14 axSafelyAddObjectsFromArray:?];
      *&v2 = MEMORY[0x29EDC9740](v15).n128_u64[0];
      ++v18;
      if (v16 + 1 >= v19)
      {
        v18 = 0;
        v19 = [obj countByEnumeratingWithState:__b objects:v33 count:{16, v2}];
        if (!v19)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  if ([v28 count])
  {
    v10 = v28;
    v12 = [location[0] currentItem];
    v11 = [v12 targetElement];
    v13 = [v10 indexOfObject:?];
    MEMORY[0x29EDC9740](v11);
    *&v4 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    v24 = v13;
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = 0;
    }

    else if ([location[0] searchDirection])
    {
      ++v24;
    }

    else
    {
      --v24;
    }

    if (v24 < [v28 count])
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        v8 = [v28 count] - 1;
      }

      else
      {
        v8 = v24;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v24 = v9;
    v23 = objc_alloc_init(MEMORY[0x29EDC78F0]);
    v7 = [v28 objectAtIndex:v9];
    [v23 setTargetElement:?];
    MEMORY[0x29EDC9740](v7);
    v32 = MEMORY[0x29EDC9748](v23);
    v25 = 1;
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v32 = 0;
    v25 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
  objc_storeStrong(location, 0);
  v5 = v32;

  return v5;
}

void __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  location[2] = a5;
  location[3] = a6;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = *(*(a1[4] + 8) + 40);
  v8 = [MEMORY[0x29EDBA168] valueWithRange:{v10, v11}];
  [v7 addObject:?];
  MEMORY[0x29EDC9740](v8);
  objc_storeStrong(location, 0);
}

void __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  location[4] = a3;
  location[5] = a4;
  location[2] = a5;
  location[3] = a6;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v42 = a7;
  v41 = a1;
  v40 = 0uLL;
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v19 = [*(*(*(a1 + 64) + 8) + 40) firstObject];
    *&v39 = [v19 rangeValue];
    *(&v39 + 1) = v7;
    v40 = v39;
    [*(*(*(a1 + 64) + 8) + 40) removeObjectAtIndex:{0, MEMORY[0x29EDC9740](v19).n128_f64[0]}];
  }

  else
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v45 = 0;
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    v48 = 0;
    v38 = 0x7FFFFFFFFFFFFFFFuLL;
    v40 = 0x7FFFFFFFFFFFFFFFuLL;
  }

  if ([location[0] length])
  {
    v36 = 0;
    objc_opt_class();
    v35 = __UIAccessibilityCastAsClass();
    v34 = MEMORY[0x29EDC9748](v35);
    objc_storeStrong(&v35, 0);
    v37 = v34;
    v8 = [_AXUITextViewParagraphElement alloc];
    v33 = [(_AXUITextViewParagraphElement *)v8 initWithAccessibilityContainer:v40 textRange:*(&v40 + 1) links:0];
    v17 = [v37 text];
    v18 = [v17 length];
    MEMORY[0x29EDC9740](v17);
    if (v18 <= 0x2710)
    {
      v23 = [(UITextViewAccessibility *)*(a1 + 32) _accessibilityLinksForRange:v40, *(&v40 + 1)];
      v9 = [_AXUITextViewParagraphElement alloc];
      v10 = [(_AXUITextViewParagraphElement *)v9 initWithAccessibilityContainer:v40 textRange:*(&v40 + 1) links:v23];
      v11 = v33;
      v33 = v10;
      MEMORY[0x29EDC9740](v11);
      objc_storeStrong(&v23, 0);
    }

    else
    {
      objc_initWeak(&v32, *(a1 + 32));
      queue = *(a1 + 40);
      v24 = MEMORY[0x29EDCA5F8];
      v25 = -1073741824;
      v26 = 0;
      v27 = __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_3;
      v28 = &unk_29F30E0B8;
      objc_copyWeak(&v30, &v32);
      v31 = v40;
      v29 = MEMORY[0x29EDC9748](v33);
      dispatch_async(queue, &v24);
      objc_storeStrong(&v29, 0);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&v32);
    }

    if (([*(a1 + 48) isAXAttributedString] & 1) != 0 && (objc_msgSend(*(a1 + 48), "hasAttributes") & 1) != 0 && v40 != 0x7FFFFFFFFFFFFFFFLL && (v44 = v40, v15 = v40 + *(&v40 + 1), v15 <= objc_msgSend(*(a1 + 48), "length")))
    {
      v13 = [*(a1 + 48) attributedString];
      v22 = [v13 attributedSubstringFromRange:v40];
      MEMORY[0x29EDC9740](v13);
      v14 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
      [(_AXUITextViewParagraphElement *)v33 set_accessibilityContent:v14];
      MEMORY[0x29EDC9740](v14);
      objc_storeStrong(&v22, 0);
    }

    else
    {
      [(_AXUITextViewParagraphElement *)v33 set_accessibilityContent:?];
    }

    [*(*(*(a1 + 72) + 8) + 40) addObject:{v33, &v33}];
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(location, 0);
}

void __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_3(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  location[0] = [(UITextViewAccessibility *)WeakRetained _accessibilityLinksForRange:*(a1 + 56)];
  MEMORY[0x29EDC9740](WeakRetained);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_4;
  v7 = &unk_29F30E090;
  v8 = MEMORY[0x29EDC9748](*(a1 + 32));
  v9 = MEMORY[0x29EDC9748](location[0]);
  objc_copyWeak(&v10, (a1 + 40));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v10);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

double __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_4(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v29 = a1;
  v28 = a1;
  [(_AXUITextViewParagraphElement *)*(a1 + 32) setLinks:?];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](*(a1 + 40));
  v9 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
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

      v27 = *(__b[1] + 8 * v6);
      [v27 setAccessibilityContainer:*(a1 + 32)];
      objc_initWeak(&location, v27);
      v3 = v27;
      v18 = MEMORY[0x29EDCA5F8];
      v19 = -1073741824;
      v20 = 0;
      v21 = __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_5;
      v22 = &unk_29F30E068;
      objc_copyWeak(&v23, (a1 + 48));
      objc_copyWeak(&v24, &location);
      [v3 _setAccessibilityFrameBlock:&v18];
      v2 = v27;
      v11 = MEMORY[0x29EDCA5F8];
      v12 = -1073741824;
      v13 = 0;
      v14 = __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_6;
      v15 = &unk_29F30DFC8;
      objc_copyWeak(&v16, (a1 + 48));
      objc_copyWeak(v17, &location);
      [v2 _setAccessibilityActivateBlock:&v11];
      objc_destroyWeak(v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *&result = MEMORY[0x29EDC9740](obj).n128_u64[0];
  return result;
}

double __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 range];
  [WeakRetained _accessibilityBoundsForRange:{v7, v1}];
  v8 = v2;
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](WeakRetained);
  return v8;
}

uint64_t __58__UITextViewAccessibility__accessibilityParagraphElements__block_invoke_6(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v8 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](WeakRetained);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [(UITextViewAccessibility *)v6 _accessibilityActivateLink:v2];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v6);
  return v3;
}

void __67__UITextViewAccessibility__accessibilityParagraphElementsWithLinks__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [(_AXUITextViewParagraphElement *)location[0] links];
  v5 = [v4 count];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5)
  {
    [*(*(a1[4] + 8) + 40) addObject:{location[0], v2}];
  }

  objc_storeStrong(location, 0);
}

@end