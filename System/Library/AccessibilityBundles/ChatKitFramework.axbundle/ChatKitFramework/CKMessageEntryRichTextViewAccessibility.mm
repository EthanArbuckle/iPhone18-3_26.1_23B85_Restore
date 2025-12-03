@interface CKMessageEntryRichTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axMentionElements;
- (id)accessibilityCustomContent;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityUpdateMentionsIfNeeded;
- (void)_accessibilityUpdateTextEffectsIfNeeded;
- (void)paste:(id)paste;
- (void)setAttributedText:(id)text;
@end

@implementation CKMessageEntryRichTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMessageEntryView"];
  [validationsCopy validateClass:@"CKMessageEntryTextView" isKindOfClass:@"UITextView"];
  [validationsCopy validateClass:@"CKMessageEntryRichTextView" isKindOfClass:@"CKMessageEntryTextView"];
  [validationsCopy validateClass:@"CKMessageEntryRichTextView" hasInstanceMethod:@"paste:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryTextView" hasInstanceMethod:@"hideCaret" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"contentClipView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"selectedRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"ChatKit.CKLinkPreviewTextAttachment"];
  [validationsCopy validateClass:@"ChatKit.CKLinkPreviewTextAttachment" hasSwiftField:@"viewProvider" withSwiftType:"Optional<CKLinkPreviewTextAttachmentViewProvider>"];
  [validationsCopy validateClass:@"ChatKit.CKLinkPreviewTextAttachmentViewProvider" hasSwiftField:@"providedView" withSwiftType:"CKEmbeddedRichLinkView"];
}

- (id)accessibilityCustomRotors
{
  array = [MEMORY[0x29EDB8DE8] array];
  v18.receiver = self;
  v18.super_class = CKMessageEntryRichTextViewAccessibility;
  accessibilityCustomRotors = [(CKMessageEntryRichTextViewAccessibility *)&v18 accessibilityCustomRotors];
  [array axSafelyAddObjectsFromArray:accessibilityCustomRotors];

  _axMentionRotor = [(CKMessageEntryRichTextViewAccessibility *)self _axMentionRotor];
  _axTextEffectRotor = [(CKMessageEntryRichTextViewAccessibility *)self _axTextEffectRotor];
  v7 = _axTextEffectRotor;
  if (_axMentionRotor)
  {
    if (_axTextEffectRotor)
    {
      goto LABEL_6;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x29EDC78E8]);
    v9 = accessibilityLocalizedString(@"mentions.rotor.name");
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __68__CKMessageEntryRichTextViewAccessibility_accessibilityCustomRotors__block_invoke;
    v15[3] = &unk_29F2B0B10;
    objc_copyWeak(&v16, &location);
    _axMentionRotor = [v8 initWithName:v9 itemSearchBlock:v15];

    [(CKMessageEntryRichTextViewAccessibility *)self _setAXMentionRotor:_axMentionRotor];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x29EDC78E8]);
  v11 = accessibilityLocalizedString(@"texteffects.rotor.name");
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __68__CKMessageEntryRichTextViewAccessibility_accessibilityCustomRotors__block_invoke_2;
  v13[3] = &unk_29F2B0B10;
  objc_copyWeak(&v14, &location);
  v7 = [v10 initWithName:v11 itemSearchBlock:v13];

  [(CKMessageEntryRichTextViewAccessibility *)self _setAXTextEffectRotor:v7];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
LABEL_6:
  [array axSafelyAddObject:_axMentionRotor];
  [array axSafelyAddObject:v7];

  return array;
}

id __68__CKMessageEntryRichTextViewAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityUpdateMentionsIfNeeded];
  v5 = [WeakRetained _axMentionElements];
  if ([v5 count])
  {
    v6 = [v3 currentItem];
    v7 = [v6 targetElement];
    v8 = [v5 indexOfObject:v7];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      if ([v3 searchDirection])
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = v8 - 1;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }
    }

    if (v9 < [v5 count])
    {
      v10 = objc_alloc_init(MEMORY[0x29EDC78F0]);
      v11 = [v5 objectAtIndexedSubscript:v9];
      [v10 setTargetElement:v11];

      goto LABEL_11;
    }
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

id __68__CKMessageEntryRichTextViewAccessibility_accessibilityCustomRotors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityUpdateTextEffectsIfNeeded];
  v5 = [WeakRetained _axTextEffectMentionElements];
  if ([v5 count])
  {
    v6 = [v3 currentItem];
    v7 = [v6 targetElement];
    v8 = [v5 indexOfObject:v7];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      if ([v3 searchDirection])
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = v8 - 1;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }
    }

    if (v9 < [v5 count])
    {
      v10 = objc_alloc_init(MEMORY[0x29EDC78F0]);
      v11 = [v5 objectAtIndexedSubscript:v9];
      [v10 setTargetElement:v11];

      goto LABEL_11;
    }
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

- (id)accessibilityCustomContent
{
  v23 = *MEMORY[0x29EDCA608];
  [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
  _axTextEffectMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axTextEffectMentionElements];
  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = _axTextEffectMentionElements;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = MEMORY[0x29EDB8058];
        v11 = accessibilityLocalizedString(@"texteffects.rotor.name");
        accessibilityLabel = [v9 accessibilityLabel];
        accessibilityValue = [v9 accessibilityValue];
        v14 = __UIAXStringForVariables();
        v15 = [v10 customContentWithLabel:v11 value:{v14, accessibilityValue, @"__AXStringForVariablesSentinel"}];
        [v4 axSafelyAddObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)accessibilityLabel
{
  v24.receiver = self;
  v24.super_class = CKMessageEntryRichTextViewAccessibility;
  accessibilityLabel = [(CKMessageEntryRichTextViewAccessibility *)&v24 accessibilityLabel];
  [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityUpdateMentionsIfNeeded];
  [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
  _axConfirmedMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axConfirmedMentionElements];
  if ([_axConfirmedMentionElements count])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"mentions.count");
    v7 = [v5 localizedStringWithFormat:v6, objc_msgSend(_axConfirmedMentionElements, "count")];

    v20 = MEMORY[0x29C2D0370](_axConfirmedMentionElements);
    v22 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CKMessageEntryRichTextViewAccessibility *)self _axPossibleMentionElements:v20];
  if ([v9 count])
  {
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"possible.mentions.count");
    v12 = [v10 localizedStringWithFormat:v11, objc_msgSend(v9, "count")];

    v21 = MEMORY[0x29C2D0370](v9);
    v23 = @"__AXStringForVariablesSentinel";
    v13 = __UIAXStringForVariables();
  }

  else
  {
    v13 = 0;
  }

  v14 = [(CKMessageEntryRichTextViewAccessibility *)self _axTextEffectMentionElements:v21];
  if ([v14 count])
  {
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(@"texteffect.mentions.count");
    v17 = [v15 localizedStringWithFormat:v16, objc_msgSend(v14, "count")];
  }

  else
  {
    v17 = 0;
  }

  v18 = __UIAXStringForVariables();

  return v18;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = CKMessageEntryRichTextViewAccessibility;
  accessibilityTraits = [(CKMessageEntryRichTextViewAccessibility *)&v6 accessibilityTraits];
  if ([(CKMessageEntryRichTextViewAccessibility *)self safeBoolForKey:@"hideCaret"])
  {
    v4 = ~*MEMORY[0x29EDC7528];
  }

  else
  {
    v4 = -1;
  }

  return v4 & accessibilityTraits;
}

- (void)setAttributedText:(id)text
{
  v28[1] = *MEMORY[0x29EDCA608];
  v24.receiver = self;
  v24.super_class = CKMessageEntryRichTextViewAccessibility;
  [(CKMessageEntryRichTextViewAccessibility *)&v24 setAttributedText:?];
  [(CKMessageEntryRichTextViewAccessibility *)self _setAXMentionRotor:0];
  [(CKMessageEntryRichTextViewAccessibility *)self _setAXTextEffectRotor:0];
  _axPossibleMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axPossibleMentionElements];
  v6 = [_axPossibleMentionElements count];

  _axConfirmedMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axConfirmedMentionElements];
  v8 = [_axConfirmedMentionElements count];

  _axTextEffectMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axTextEffectMentionElements];
  v10 = [_axTextEffectMentionElements count];

  [(CKMessageEntryRichTextViewAccessibility *)self _axSetPossibleMentionElements:0];
  [(CKMessageEntryRichTextViewAccessibility *)self _axSetConfirmedMentionElements:0];
  [(CKMessageEntryRichTextViewAccessibility *)self _axSetTextEffectMentionElements:0];
  [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityUpdateMentionsIfNeeded];
  _axPossibleMentionElements2 = [(CKMessageEntryRichTextViewAccessibility *)self _axPossibleMentionElements];
  v12 = [_axPossibleMentionElements2 count];

  _axConfirmedMentionElements2 = [(CKMessageEntryRichTextViewAccessibility *)self _axConfirmedMentionElements];
  v14 = [_axConfirmedMentionElements2 count];

  if (v6 != v12 || v8 != v14)
  {
    v15 = *MEMORY[0x29EDC75C8];
    v27 = *MEMORY[0x29EDBDCF0];
    v28[0] = MEMORY[0x29EDB8EB0];
    v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    UIAccessibilityPostNotification(v15, v16);

    if (text)
    {
      if (v8 != v14)
      {
        if (v14 <= v8)
        {
          v17 = @"mentions.confirmed.removed";
        }

        else
        {
          v17 = @"mentions.confirmed.added";
        }

        v18 = accessibilityLocalizedString(v17);
        v19 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v18];
        [v19 setAttribute:&unk_2A216A008 forKey:*MEMORY[0x29EDBD860]];
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v19);
      }
    }
  }

  if (v10)
  {
    [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
    _axTextEffectMentionElements2 = [(CKMessageEntryRichTextViewAccessibility *)self _axTextEffectMentionElements];
    v21 = [_axTextEffectMentionElements2 count];

    if (v10 != v21)
    {
      v22 = *MEMORY[0x29EDC75C8];
      v25 = *MEMORY[0x29EDBDCF0];
      v26 = MEMORY[0x29EDB8EB0];
      v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      UIAccessibilityPostNotification(v22, v23);
    }
  }
}

- (void)paste:(id)paste
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryRichTextViewAccessibility;
  [(CKMessageEntryRichTextViewAccessibility *)&v4 paste:paste];
  [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC50]];
}

- (id)accessibilityPath
{
  v2 = [(CKMessageEntryRichTextViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_4 startWithSelf:0];
  v3 = [v2 safeValueForKey:@"contentClipView"];
  accessibilityPath = [v3 accessibilityPath];

  return accessibilityPath;
}

uint64_t __60__CKMessageEntryRichTextViewAccessibility_accessibilityPath__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ckmessageentry.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axMentionElements
{
  v3 = MEMORY[0x29EDB8D80];
  _axPossibleMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axPossibleMentionElements];
  _axConfirmedMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axConfirmedMentionElements];
  v6 = [v3 axArrayWithPossiblyNilArrays:{2, _axPossibleMentionElements, _axConfirmedMentionElements}];

  return v6;
}

- (void)_accessibilityUpdateMentionsIfNeeded
{
  objc_opt_class();
  v3 = [(CKMessageEntryRichTextViewAccessibility *)self safeValueForKey:@"attributedText"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  _axPossibleMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axPossibleMentionElements];

  if (!_axPossibleMentionElements)
  {
    v7 = _AXCKPossibleMentions(v5);
    [(CKMessageEntryRichTextViewAccessibility *)self _axSetPossibleMentionElements:v7];
  }

  _axConfirmedMentionElements = [(CKMessageEntryRichTextViewAccessibility *)self _axConfirmedMentionElements];

  if (!_axConfirmedMentionElements)
  {
    v9 = _AXCKConfirmedMentions(v5, v4);
    [(CKMessageEntryRichTextViewAccessibility *)self _axSetConfirmedMentionElements:v9];
  }
}

- (void)_accessibilityUpdateTextEffectsIfNeeded
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  attributedText = [v3 attributedText];
  _axAttributedText = [(CKMessageEntryRichTextViewAccessibility *)self _axAttributedText];
  v6 = [attributedText isEqualToAttributedString:_axAttributedText];

  if ((v6 & 1) == 0)
  {
    v7 = _AXCKTextEffectMentions(v3);
    [(CKMessageEntryRichTextViewAccessibility *)self _axSetTextEffectMentionElements:v7];

    [(CKMessageEntryRichTextViewAccessibility *)self _axSetAttributedText:attributedText];
  }
}

- (BOOL)_accessibilitySupportsActivateAction
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if ([v2 canBecomeFirstResponder])
  {
    v3 = [v2 isFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  if ([(CKMessageEntryRichTextViewAccessibility *)self _accessibilitySupportsActivateAction])
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    [v3 becomeFirstResponder];

    v8 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    isFirstResponder = [v4 isFirstResponder];

    if (isFirstResponder)
    {
      return 1;
    }
  }

  v7.receiver = self;
  v7.super_class = CKMessageEntryRichTextViewAccessibility;
  return [(CKMessageEntryRichTextViewAccessibility *)&v7 accessibilityActivate];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v11 = 0;
  objc_opt_class();
  v3 = [(CKMessageEntryRichTextViewAccessibility *)self safeValueForKey:@"attributedText"];
  v4 = __UIAccessibilityCastAsClass();

  array = [MEMORY[0x29EDB8DE8] array];
  v6 = [v4 length];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __81__CKMessageEntryRichTextViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke;
  v9[3] = &unk_29F2B0D58;
  v7 = array;
  v10 = v7;
  [v4 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];

  return v7;
}

void __81__CKMessageEntryRichTextViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKey:*MEMORY[0x29EDC7628]];
  if (v5)
  {
    NSClassFromString(&cfstr_ChatkitCklinkp.isa);
    if (objc_opt_isKindOfClass())
    {
      v3 = [v5 safeSwiftValueForKey:@"viewProvider"];
      v4 = [v3 safeSwiftValueForKey:@"providedView"];
      [*(a1 + 32) axSafelyAddObject:v4];
    }
  }
}

@end