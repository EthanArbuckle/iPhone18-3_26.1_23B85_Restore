@interface CKTextBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_allowCustomActionHintSpeakOverride;
- (BOOL)_axIsInvisibleInk;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityElementHelp;
- (id)_axMainContentStringForSpeakThis:(BOOL)a3;
- (id)_axMentionsDescription;
- (id)_axMessageProvenanceDescription;
- (id)accessibilityCustomContent;
- (id)accessibilityCustomRotors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityVisibleText;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityUpdateTextEffectsIfNeeded;
- (void)invisibleInkEffectViewWasUncovered;
- (void)prepareForDisplay;
- (void)setAttributedText:(id)a3;
@end

@implementation CKTextBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKTextBalloonView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKTextBalloonView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKTextBalloonView" hasInstanceMethod:@"prepareForDisplay" withFullSignature:{"v", 0}];
}

- (id)_axMainContentStringForSpeakThis:(BOOL)a3
{
  if (a3)
  {
    v3 = &stru_2A21515E8;
  }

  else
  {
    v3 = [(CKTextBalloonViewAccessibility *)self accessibilityVisibleText];
  }

  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  v5 = [v4 _axMessageSender];
  v6 = [0 string];
  v7 = __UIAXStringForVariables();

  v14 = [v4 _axReplyDescription];
  v8 = __UIAXStringForVariables();

  if ([v7 isAXAttributedString])
  {
    v9 = [v8 rangeOfString:v7];
    v10 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __67__CKTextBalloonViewAccessibility__axMainContentStringForSpeakThis___block_invoke;
    v15[3] = &unk_29F2B0AE8;
    v11 = v10;
    v16 = v11;
    v17 = v9;
    [v7 enumerateAttributesUsingBlock:v15];
    v12 = v11;

    v8 = v12;
  }

  return v8;
}

- (id)accessibilityVisibleText
{
  v2 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 accessibilityAttributedValue];
  if ([v3 safeBoolForKey:@"accessibilityContainsOneLink"])
  {
    v5 = [v3 accessibilityLabel];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v5];

      v4 = v6;
    }
  }

  v7 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
  if ([v7 length] == 1)
  {
    v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];

    [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD930]];
    v7 = v8;
  }

  return v7;
}

- (void)invisibleInkEffectViewWasUncovered
{
  v5.receiver = self;
  v5.super_class = CKTextBalloonViewAccessibility;
  [(CKTextBalloonViewAccessibility *)&v5 invisibleInkEffectViewWasUncovered];
  v3 = [(CKTextBalloonViewAccessibility *)self _axMainContentStringForSpeakThis:0];
  [(CKTextBalloonViewAccessibility *)self _setAXInvisibleInkDescription:v3];

  v4 = accessibilityLocalizedString(@"balloon.effect.invisibleink.description");
  [(CKTextBalloonViewAccessibility *)self performSelector:sel__setAXInvisibleInkDescription_ withObject:v4 afterDelay:5.0];
}

- (BOOL)_axIsInvisibleInk
{
  v2 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"invisibleInkEffectController"];
  if ([v2 safeBoolForKey:@"isEnabled"])
  {
    v3 = [v2 safeBoolForKey:@"isSuspended"] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)_axMentionsDescription
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  v4 = [v3 _axMessageForBalloon];
  if ([v4 safeBoolForKey:@"hasMention"])
  {
    objc_opt_class();
    v5 = [v4 safeValueForKey:@"text"];
    v6 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v7 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
    v8 = __UIAccessibilityCastAsClass();

    v9 = _AXCKConfirmedMentions(v8, v6);
  }

  else
  {
    v9 = MEMORY[0x29EDB8E90];
  }

  if ([v9 count])
  {
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"mentions.count");
    v12 = [v10 localizedStringWithFormat:v11, objc_msgSend(v9, "count")];

    v15 = MEMORY[0x29C2D0370](v9);
    v13 = __UIAXStringForVariables();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_axMessageProvenanceDescription
{
  v2 = __UIAccessibilitySafeClass();
  v3 = [v2 color];

  if (v3 == 5)
  {
    v4 = accessibilityLocalizedString(@"apple.pay.message.provenance");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  if ([(CKTextBalloonViewAccessibility *)self _axIsInvisibleInk])
  {
    v4 = [(CKTextBalloonViewAccessibility *)self _axInvisibleInkDescription];
    if (!v4)
    {
      v5 = accessibilityLocalizedString(@"balloon.effect.invisibleink.description");
      v6 = [v3 _axMessageSender];
      v16 = v5;
      v18 = @"__AXStringForVariablesSentinel";
      v4 = __UIAXStringForVariables();
    }
  }

  else
  {
    v4 = [(CKTextBalloonViewAccessibility *)self _axMainContentStringForSpeakThis:0];
  }

  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded:v16];
  v7 = [(CKTextBalloonViewAccessibility *)self _axTextEffectMentionElements];
  if ([v7 count])
  {
    v8 = accessibilityLocalizedString(@"texteffect.mentions.count");
    v17 = [v7 count];
    v9 = AXCFormattedString();
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CKTextBalloonViewAccessibility *)self _axMentionsDescription];
  v11 = [v3 _axStickerDescription];
  v12 = [v3 _axAcknowledgmentDescription];
  v13 = [v3 _axMessageTime];
  v19 = [(CKTextBalloonViewAccessibility *)self _axMessageProvenanceDescription];
  v14 = __UIAXStringForVariables();

  return v14;
}

- (id)accessibilityHint
{
  if ([(CKTextBalloonViewAccessibility *)self _axIsInvisibleInk])
  {
    v2 = accessibilityLocalizedString(@"balloon.effect.invisibleink.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityElementHelp
{
  if ([(CKTextBalloonViewAccessibility *)self _axIsInvisibleInk])
  {
    v2 = accessibilityLocalizedString(@"balloon.effect.invisibleink.hint.macos");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v4 = __UIAccessibilitySafeClass();

  if (v4 && ([v4 isSelectable] & 1) != 0)
  {
    goto LABEL_6;
  }

  if (![(CKTextBalloonViewAccessibility *)self _axIsVisibleInTapbackView])
  {
    v5 = 1;
    goto LABEL_8;
  }

  if (![(CKTextBalloonViewAccessibility *)self _axIsVisibleInTapbackView])
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    v5 = [(CKTextBalloonViewAccessibility *)self _axIsTapbackBalloonView];
  }

LABEL_8:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = CKTextBalloonViewAccessibility;
  v3 = [(CKTextBalloonViewAccessibility *)&v8 accessibilityTraits];
  v4 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v5 = __UIAccessibilitySafeClass();

  if ([v5 safeBoolForKey:@"accessibilityContainsOneLink"])
  {
    v6 = *MEMORY[0x29EDC7F98];
  }

  else
  {
    v6 = 0;
  }

  return v6 | v3;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v3 = [v2 accessibilityValue];
  v4 = MEMORY[0x29C2D0360]();

  return v4;
}

- (id)accessibilityCustomRotors
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v5 = [v4 accessibilityCustomRotors];
  [v3 axSafelyAddObjectsFromArray:v5];

  v6 = [(CKTextBalloonViewAccessibility *)self _axTextEffectRotor];
  if (!v6)
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x29EDC78E8]);
    v8 = accessibilityLocalizedString(@"texteffects.rotor.name");
    v14 = MEMORY[0x29EDCA5F8];
    v15 = 3221225472;
    v16 = __59__CKTextBalloonViewAccessibility_accessibilityCustomRotors__block_invoke;
    v17 = &unk_29F2B0B10;
    objc_copyWeak(&v18, &location);
    v6 = [v7 initWithName:v8 itemSearchBlock:&v14];

    [(CKTextBalloonViewAccessibility *)self _setAXTextEffectRotor:v6, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
  v9 = [(CKTextBalloonViewAccessibility *)self _axTextEffectMentionElements];
  v10 = [v9 count];

  if (v10)
  {
    [v3 axSafelyAddObject:v6];
  }

  if ([v3 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

id __59__CKTextBalloonViewAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityUpdateTextEffectsIfNeeded];
  v5 = [WeakRetained _axTextEffectMentionElements];
  if (![v5 count])
  {
    v10 = 0;
    goto LABEL_14;
  }

  v6 = [v3 currentItem];
  v7 = [v6 targetElement];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v5 indexOfObject:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = v8;
    if ([v3 searchDirection])
    {
      v9 = v11 + 1;
    }

    else
    {
      v9 = v11 - 1;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }
  }

  if (v9 >= [v5 count])
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = objc_alloc_init(MEMORY[0x29EDC78F0]);
  v12 = [v5 objectAtIndexedSubscript:v9];
  [v10 setTargetElement:v12];

LABEL_13:
LABEL_14:

  return v10;
}

- (id)accessibilityCustomContent
{
  v23 = *MEMORY[0x29EDCA608];
  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
  v3 = [(CKTextBalloonViewAccessibility *)self _axTextEffectMentionElements];
  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
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
        v12 = [v9 accessibilityLabel];
        v13 = [v9 accessibilityValue];
        v14 = __UIAXStringForVariables();
        v15 = [v10 customContentWithLabel:v11 value:{v14, v13, @"__AXStringForVariablesSentinel"}];
        [v4 axSafelyAddObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)_allowCustomActionHintSpeakOverride
{
  v2 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v3 = [v2 safeBoolForKey:@"_allowCustomActionHintSpeakOverride"];

  return v3;
}

- (void)_accessibilityUpdateTextEffectsIfNeeded
{
  objc_opt_class();
  v3 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 attributedText];
    v6 = [(CKTextBalloonViewAccessibility *)self _axAttributedText];
    v7 = [v5 isEqualToAttributedString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = _AXCKTextEffectMentions(v4);
      [(CKTextBalloonViewAccessibility *)self _axSetTextEffectMentionElements:v8];

      v9 = [v4 attributedText];
      [(CKTextBalloonViewAccessibility *)self _axSetAttributedText:v9];
    }
  }
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKTextBalloonViewAccessibility;
  [(CKTextBalloonViewAccessibility *)&v4 setAttributedText:a3];
  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
}

- (void)prepareForDisplay
{
  v3.receiver = self;
  v3.super_class = CKTextBalloonViewAccessibility;
  [(CKTextBalloonViewAccessibility *)&v3 prepareForDisplay];
  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
}

@end