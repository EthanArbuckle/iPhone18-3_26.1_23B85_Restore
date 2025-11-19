@interface CKMessageEntryTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsSMSPlaceholderVisible;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityGetValue;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_axCreateEmojiRotor;
- (id)_axEmojiCandidatesFromEmojiKit;
- (id)_axTextRangeForRange:(_NSRange)a3;
- (id)accessibilityCustomRotors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPlaceholderValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axRemoveElementFromEmojiCandidates:(id)a3;
- (void)_axReplaceEmojiWithElement:(id)a3;
- (void)_axShowOverlayWithEmojiElement:(id)a3;
- (void)_axUpdateEmojiCandidates;
- (void)_startTextKit1EmojiDisplayUpdateTimer:(id)a3;
- (void)_stopTextKit1EmojiDisplayUpdateTimer:(id)a3;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)updateTextView;
@end

@implementation CKMessageEntryTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMessageEntryTextView" isKindOfClass:@"EMKTextView"];
  [v3 validateClass:@"EMKTextView" isKindOfClass:@"UITextView"];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EMKTextView" hasInstanceVariable:@"_emojiConversionActive" withType:"B"];
  [v3 validateClass:@"EMKTextView" hasInstanceMethod:@"personalizedEmojiTokenListForList:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"EMKTextView" hasInstanceMethod:@"_startTextKit1EmojiDisplayUpdateTimer:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"EMKTextView" hasInstanceMethod:@"_stopTextKit1EmojiDisplayUpdateTimer:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"EMKOverlayView" hasInstanceMethod:@"initWithView:anchorRect:emojiTokenList:selectionHandler:" withFullSignature:{"@", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "@?", 0}];
  [v3 validateClass:@"EMKLayoutManager"];
  [v3 validateClass:@"EMKLayoutManager" hasInstanceMethod:@"attributes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EMFEmojiToken"];
  [v3 validateClass:@"EMFEmojiToken" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EMKEmojiTokenList" hasInstanceMethod:@"emojiTokenArray" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EMKTextView" hasInstanceVariable:@"_textKit2Controller" withType:"_EMKTextKit2Controller"];
  [v3 validateClass:@"_EMKTextKit2Controller" hasInstanceMethod:@"replaceRange:withEmojiToken:language:" withFullSignature:{"v", "{_NSRange=QQ}", "@", "@", 0}];
  [v3 validateClass:@"CKMessageEntryTextView" isKindOfClass:@"UITextView"];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"_placeholderLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"conversation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"sendingService" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"__ck_isSMS" withFullSignature:{"B", 0, 0, 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryTextView" hasInstanceVariable:@"_placeholderLabel" withType:"UILabel"];
  [v3 validateClass:@"CKMessageEntryTextView" hasInstanceMethod:@"placeholderText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryTextView" hasInstanceMethod:@"updateTextView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKActionMenuWindow"];
  [v3 validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKMessageEntryTextViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"messageBodyField"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"text.message.content.view");
    if ([(CKMessageEntryTextViewAccessibility *)self _axIsSMSPlaceholderVisible])
    {
      v6 = accessibilityLocalizedString(@"sms.placeholder.label");
    }

    else
    {
      v8 = [(CKMessageEntryTextViewAccessibility *)self _axEmojiRotor];
      if (v8)
      {
        v6 = accessibilityLocalizedString(@"emoji.replacements.available");
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = __UIAXStringForVariables();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_accessibilityGetValue
{
  if ([(CKMessageEntryTextViewAccessibility *)self _axIsSMSPlaceholderVisible])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKMessageEntryTextViewAccessibility;
    v3 = [(CKMessageEntryTextViewAccessibility *)&v5 _accessibilityGetValue];
  }

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(CKMessageEntryTextViewAccessibility *)self _axEmojiCandidates];
  v3 = [v2 count];

  if (v3)
  {
    v4 = accessibilityLocalizedString(@"emoji.replacements.hint");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = [NSClassFromString(&cfstr_Ckactionmenuwi.isa) sharedInstance];
  v3 = __UIAccessibilityCastAsClass();

  LOBYTE(v2) = [v3 _accessibilityViewIsVisible];
  return v2 ^ 1;
}

- (id)accessibilityCustomRotors
{
  v7.receiver = self;
  v7.super_class = CKMessageEntryTextViewAccessibility;
  v3 = [(CKMessageEntryTextViewAccessibility *)&v7 accessibilityCustomRotors];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
  }

  v5 = [(CKMessageEntryTextViewAccessibility *)self _axEmojiRotor];
  [v4 axSafelyAddObject:v5];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryTextViewAccessibility;
  [(CKMessageEntryTextViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  [(CKMessageEntryTextViewAccessibility *)self _axUpdateEmojiCandidates];
  v3 = [(CKMessageEntryTextViewAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (id)accessibilityPlaceholderValue
{
  v2 = [(CKMessageEntryTextViewAccessibility *)self safeValueForKey:@"placeholderText"];
  v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v2];

  [v3 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD970]];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryTextViewAccessibility;
  return [(CKMessageEntryTextViewAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDBDC00];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryTextViewAccessibility;
  [(CKMessageEntryTextViewAccessibility *)&v3 layoutSubviews];
  [(CKMessageEntryTextViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)updateTextView
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryTextViewAccessibility;
  [(CKMessageEntryTextViewAccessibility *)&v3 updateTextView];
  [(CKMessageEntryTextViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axUpdateEmojiCandidates
{
  v4 = [(CKMessageEntryTextViewAccessibility *)self _axEmojiCandidatesFromEmojiKit];
  if ([v4 count])
  {
    [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiCandidates:v4];
    v3 = [(CKMessageEntryTextViewAccessibility *)self _axCreateEmojiRotor];
    [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiRotor:v3];

    if (UIAccessibilityIsSwitchControlRunning())
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }

  else
  {
    [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiCandidates:0];
    [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiRotor:0];
  }
}

- (void)_startTextKit1EmojiDisplayUpdateTimer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryTextViewAccessibility;
  [(CKMessageEntryTextViewAccessibility *)&v4 _startTextKit1EmojiDisplayUpdateTimer:a3];
  [(CKMessageEntryTextViewAccessibility *)self _axUpdateEmojiCandidates];
}

- (void)_stopTextKit1EmojiDisplayUpdateTimer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryTextViewAccessibility;
  [(CKMessageEntryTextViewAccessibility *)&v4 _stopTextKit1EmojiDisplayUpdateTimer:a3];
  [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiCandidates:0];
  [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiRotor:0];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)setAttributedText:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryTextViewAccessibility;
  [(CKMessageEntryTextViewAccessibility *)&v5 setAttributedText:?];
  if (!a3)
  {
    [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiCandidates:0];
    [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiRotor:0];
    if (UIAccessibilityIsSwitchControlRunning())
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }
}

- (id)_axCreateEmojiRotor
{
  v3 = accessibilityLocalizedString(@"emoji.rotor.name");
  v4 = objc_alloc(MEMORY[0x29EDC78E8]);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __58__CKMessageEntryTextViewAccessibility__axCreateEmojiRotor__block_invoke;
  v7[3] = &unk_29F2B0D80;
  v7[4] = self;
  v5 = [v4 initWithName:v3 itemSearchBlock:v7];

  return v5;
}

id __58__CKMessageEntryTextViewAccessibility__axCreateEmojiRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _axEmojiCandidates];
  if (![v4 count])
  {
    v10 = 0;
    goto LABEL_14;
  }

  v5 = [v3 currentItem];
  v6 = [v5 targetElement];

  v7 = [v4 indexOfObject:v6];
  v8 = [v3 searchDirection];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v4 count] - 1;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    v9 = v7 - 1;
    if (v7 >= 1)
    {
      goto LABEL_11;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (v7 >= ([v4 count] - 1))
  {
    goto LABEL_12;
  }

  v9 = v7 + 1;
LABEL_11:
  v11 = [v4 objectAtIndex:v9];
  v10 = [objc_alloc(MEMORY[0x29EDC78F0]) initWithTargetElement:v11 targetRange:0];

LABEL_13:
LABEL_14:

  return v10;
}

- (id)_axTextRangeForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 beginningOfDocument];
  v7 = [v5 positionFromPosition:v6 offset:location];
  v8 = [v5 positionFromPosition:v6 offset:location + length];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v5 textRangeFromPosition:v7 toPosition:v8];
  }

  return v11;
}

- (BOOL)_axIsSMSPlaceholderVisible
{
  v3 = [(CKMessageEntryTextViewAccessibility *)self safeValueForKeyPath:@"delegate.conversation.sendingService"];
  if ([v3 safeBoolForKey:@"__ck_isSMS"])
  {
    v4 = [(CKMessageEntryTextViewAccessibility *)self safeValueForKey:@"_placeholderLabel"];
    v5 = [v4 _accessibilityViewIsVisible];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_axEmojiCandidatesFromEmojiKit
{
  if ([(CKMessageEntryTextViewAccessibility *)self safeBoolForKey:@"_emojiConversionActive"])
  {
    v15 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [MEMORY[0x29EDB8DE8] array];
    v5 = [v3 textLayoutManager];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __69__CKMessageEntryTextViewAccessibility__axEmojiCandidatesFromEmojiKit__block_invoke;
    v12[3] = &unk_29F2B0DD0;
    v12[4] = self;
    v13 = v3;
    v6 = v4;
    v14 = v6;
    v7 = v3;
    v8 = [v5 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v12];
    v9 = v14;
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __69__CKMessageEntryTextViewAccessibility__axEmojiCandidatesFromEmojiKit__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textElement];
  v4 = [v3 attributedString];
  v5 = [v4 length];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __69__CKMessageEntryTextViewAccessibility__axEmojiCandidatesFromEmojiKit__block_invoke_2;
  v8[3] = &unk_29F2B0DA8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  [v4 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];

  return 1;
}

void __69__CKMessageEntryTextViewAccessibility__axEmojiCandidatesFromEmojiKit__block_invoke_2(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 objectForKey:@"EMKEmojiTokenList"];
  v9 = [v7 objectForKey:@"EMKEmojiConversionLanguage"];
  if (v8)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__9;
    v22 = __Block_byref_object_dispose__9;
    v23 = 0;
    v17 = v8;
    AXPerformSafeBlock();
    v10 = v19[5];

    _Block_object_dispose(&v18, 8);
    if (v10)
    {
      v11 = [[AXEmojiConversionCandidateElement alloc] initWithAccessibilityContainer:a1[5]];
      v16 = [a1[4] _axTextRangeForRange:{a3, a4}];
      [a1[5] firstRectForRange:?];
      v25 = UIAccessibilityConvertFrameToScreenCoordinates(v24, a1[5]);
      [(AXEmojiConversionCandidateElement *)v11 setAccessibilityFrame:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
      [(AXEmojiConversionCandidateElement *)v11 setTextView:a1[4]];
      v12 = [a1[4] safeStringForKey:@"text"];
      v13 = [v12 substringWithRange:{a3, a4}];
      [(AXEmojiConversionCandidateElement *)v11 setCandidateString:v13];

      [(AXEmojiConversionCandidateElement *)v11 setCandidateRange:a3, a4];
      [(AXEmojiConversionCandidateElement *)v11 setCandidateEmojiList:v10];
      LOBYTE(v18) = 0;
      objc_opt_class();
      v14 = __UIAccessibilityCastAsClass();
      if (v18 == 1)
      {
        abort();
      }

      v15 = v14;
      [(AXEmojiConversionCandidateElement *)v11 setConversionLanguage:v14];

      [a1[6] axSafelyAddObject:v11];
    }
  }
}

uint64_t __69__CKMessageEntryTextViewAccessibility__axEmojiCandidatesFromEmojiKit__block_invoke_478(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) personalizedEmojiTokenListForList:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (void)_axShowOverlayWithEmojiElement:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [(CKMessageEntryTextViewAccessibility *)self safeValueForKey:@"anchorRect"];
  [v6 rectValue];

  NSClassFromString(&cfstr_Emkoverlayview.isa);
  v9 = v4;
  v7 = v4;
  v8 = v5;
  AXPerformSafeBlock();
  [v8 setNeedsLayout];
}

void __70__CKMessageEntryTextViewAccessibility__axShowOverlayWithEmojiElement___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 56));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) candidateEmojiList];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __70__CKMessageEntryTextViewAccessibility__axShowOverlayWithEmojiElement___block_invoke_2;
  v8[3] = &unk_29F2B0DF8;
  v9 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = [v2 initWithView:v3 anchorRect:v4 emojiTokenList:v8 selectionHandler:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];

  [*(a1 + 32) setValue:v7 forKey:@"_overlayView"];
}

void __70__CKMessageEntryTextViewAccessibility__axShowOverlayWithEmojiElement___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] setValue:0 forKey:@"_overlayView"];
  [a1[4] setValue:&unk_2A216A020 forKey:@"_tappedGlyphIndex"];
  if (v3)
  {
    [a1[5] selectEmoji:v3];
    [a1[6] _axReplaceEmojiWithElement:a1[5]];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], a1[6]);
}

- (void)_axReplaceEmojiWithElement:(id)a3
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [v4 candidateRange];
  v7 = v6;
  v8 = [v4 currentEmoji];
  v9 = [v4 conversionLanguage];
  v10 = [(CKMessageEntryTextViewAccessibility *)self safeValueForKey:@"_textKit2Controller"];
  v40 = MEMORY[0x29EDCA5F8];
  v41 = 3221225472;
  v42 = __66__CKMessageEntryTextViewAccessibility__axReplaceEmojiWithElement___block_invoke;
  v43 = &unk_29F2B0E48;
  v30 = v10;
  v44 = v30;
  v47 = v5;
  v48 = v7;
  v33 = v8;
  v45 = v33;
  v29 = v9;
  v46 = v29;
  AXPerformSafeBlock();
  v39 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  [(CKMessageEntryTextViewAccessibility *)self _axRemoveElementFromEmojiCandidates:v4];
  v28 = v4;
  v12 = [v4 candidateRange];
  v32 = v13;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(CKMessageEntryTextViewAccessibility *)self _axEmojiCandidates];
  v14 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    v31 = v11;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v18 candidateRange];
        v21 = v20;
        if (v19 > v12)
        {
          v22 = v15;
          v23 = v16;
          v24 = self;
          v39 = 0;
          objc_opt_class();
          v25 = [v33 safeValueForKey:@"string"];
          v26 = __UIAccessibilityCastAsClass();

          if (v39 == 1)
          {
            abort();
          }

          v19 = v19 - v32 + [v26 length];

          self = v24;
          v16 = v23;
          v15 = v22;
          v11 = v31;
        }

        [v18 setCandidateRange:{v19, v21}];
        v27 = [(CKMessageEntryTextViewAccessibility *)self _axTextRangeForRange:v19, v21];
        [(UIView *)v11 firstRectForRange:v27];
        v52 = UIAccessibilityConvertFrameToScreenCoordinates(v51, v11);
        [(UIView *)v11 convertRect:0 toView:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
        [v18 setAccessibilityFrame:?];
      }

      v15 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v15);
  }
}

- (void)_axRemoveElementFromEmojiCandidates:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryTextViewAccessibility *)self _axEmojiCandidates];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  [(CKMessageEntryTextViewAccessibility *)self _axSetEmojiCandidates:v6];
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v19[1] = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = CKMessageEntryTextViewAccessibility;
  v3 = [(CKMessageEntryTextViewAccessibility *)&v18 _accessibilitySupplementaryHeaderViews];
  v4 = [(CKMessageEntryTextViewAccessibility *)self _accessibilityValueForKey:@"AXPlaceholderEmojiView"];
  if ((UIAccessibilityIsSwitchControlRunning() || _AXSAutomationEnabled()) && (-[CKMessageEntryTextViewAccessibility _axEmojiCandidates](self, "_axEmojiCandidates"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = [(CKMessageEntryTextViewAccessibility *)self _axEmojiCandidates];
    if (!v4 || ([v4 window], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      [v4 removeFromSuperview];
      [(CKMessageEntryTextViewAccessibility *)self bounds];
      v13 = [[AXEmojiPlaceholderView alloc] initWithFrame:v9 + 10.0, v11, v10 + -30.0, v12];

      [(CKMessageEntryTextViewAccessibility *)self addSubview:v13];
      [(CKMessageEntryTextViewAccessibility *)self _accessibilitySetRetainedValue:v13 forKey:@"AXPlaceholderEmojiView"];
      v4 = v13;
    }

    [v4 setAccessibilityElements:v7];
    if (([v3 containsObject:v4] & 1) == 0)
    {
      v14 = MEMORY[0x29EDB8D80];
      v19[0] = v4;
      v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];
      v16 = [v14 axArrayWithPossiblyNilArrays:{2, v3, v15}];

      v3 = v16;
    }
  }

  else
  {
    [v4 removeFromSuperview];
    [(CKMessageEntryTextViewAccessibility *)self _accessibilityRemoveValueForKey:@"AXPlaceholderEmojiView"];
  }

  return v3;
}

@end