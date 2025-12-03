@interface CKTextBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_allowCustomActionHintSpeakOverride;
- (BOOL)_axIsInvisibleInk;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityElementHelp;
- (id)_axMainContentStringForSpeakThis:(BOOL)this;
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
- (void)setAttributedText:(id)text;
@end

@implementation CKTextBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTextBalloonView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTextBalloonView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKTextBalloonView" hasInstanceMethod:@"prepareForDisplay" withFullSignature:{"v", 0}];
}

- (id)_axMainContentStringForSpeakThis:(BOOL)this
{
  if (this)
  {
    accessibilityVisibleText = &stru_2A21515E8;
  }

  else
  {
    accessibilityVisibleText = [(CKTextBalloonViewAccessibility *)self accessibilityVisibleText];
  }

  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  _axMessageSender = [v4 _axMessageSender];
  string = [0 string];
  v7 = __UIAXStringForVariables();

  _axReplyDescription = [v4 _axReplyDescription];
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

  accessibilityAttributedValue = [v3 accessibilityAttributedValue];
  if ([v3 safeBoolForKey:@"accessibilityContainsOneLink"])
  {
    accessibilityLabel = [v3 accessibilityLabel];
    if (accessibilityLabel)
    {
      v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:accessibilityLabel];

      accessibilityAttributedValue = v6;
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
  _axMessageForBalloon = [v3 _axMessageForBalloon];
  if ([_axMessageForBalloon safeBoolForKey:@"hasMention"])
  {
    objc_opt_class();
    v5 = [_axMessageForBalloon safeValueForKey:@"text"];
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
  color = [v2 color];

  if (color == 5)
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
    _axInvisibleInkDescription = [(CKTextBalloonViewAccessibility *)self _axInvisibleInkDescription];
    if (!_axInvisibleInkDescription)
    {
      v5 = accessibilityLocalizedString(@"balloon.effect.invisibleink.description");
      _axMessageSender = [v3 _axMessageSender];
      v16 = v5;
      v18 = @"__AXStringForVariablesSentinel";
      _axInvisibleInkDescription = __UIAXStringForVariables();
    }
  }

  else
  {
    _axInvisibleInkDescription = [(CKTextBalloonViewAccessibility *)self _axMainContentStringForSpeakThis:0];
  }

  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded:v16];
  _axTextEffectMentionElements = [(CKTextBalloonViewAccessibility *)self _axTextEffectMentionElements];
  if ([_axTextEffectMentionElements count])
  {
    v8 = accessibilityLocalizedString(@"texteffect.mentions.count");
    v17 = [_axTextEffectMentionElements count];
    v9 = AXCFormattedString();
  }

  else
  {
    v9 = 0;
  }

  _axMentionsDescription = [(CKTextBalloonViewAccessibility *)self _axMentionsDescription];
  _axStickerDescription = [v3 _axStickerDescription];
  _axAcknowledgmentDescription = [v3 _axAcknowledgmentDescription];
  _axMessageTime = [v3 _axMessageTime];
  _axMessageProvenanceDescription = [(CKTextBalloonViewAccessibility *)self _axMessageProvenanceDescription];
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
    _axIsTapbackBalloonView = 1;
    goto LABEL_8;
  }

  if (![(CKTextBalloonViewAccessibility *)self _axIsVisibleInTapbackView])
  {
LABEL_6:
    _axIsTapbackBalloonView = 0;
  }

  else
  {
    _axIsTapbackBalloonView = [(CKTextBalloonViewAccessibility *)self _axIsTapbackBalloonView];
  }

LABEL_8:

  return _axIsTapbackBalloonView;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = CKTextBalloonViewAccessibility;
  accessibilityTraits = [(CKTextBalloonViewAccessibility *)&v8 accessibilityTraits];
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

  return v6 | accessibilityTraits;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  accessibilityValue = [v2 accessibilityValue];
  v4 = MEMORY[0x29C2D0360]();

  return v4;
}

- (id)accessibilityCustomRotors
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CKTextBalloonViewAccessibility *)self safeValueForKey:@"textView"];
  accessibilityCustomRotors = [v4 accessibilityCustomRotors];
  [array axSafelyAddObjectsFromArray:accessibilityCustomRotors];

  _axTextEffectRotor = [(CKTextBalloonViewAccessibility *)self _axTextEffectRotor];
  if (!_axTextEffectRotor)
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x29EDC78E8]);
    v8 = accessibilityLocalizedString(@"texteffects.rotor.name");
    v14 = MEMORY[0x29EDCA5F8];
    v15 = 3221225472;
    v16 = __59__CKTextBalloonViewAccessibility_accessibilityCustomRotors__block_invoke;
    v17 = &unk_29F2B0B10;
    objc_copyWeak(&v18, &location);
    _axTextEffectRotor = [v7 initWithName:v8 itemSearchBlock:&v14];

    [(CKTextBalloonViewAccessibility *)self _setAXTextEffectRotor:_axTextEffectRotor, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  [(CKTextBalloonViewAccessibility *)self _accessibilityUpdateTextEffectsIfNeeded];
  _axTextEffectMentionElements = [(CKTextBalloonViewAccessibility *)self _axTextEffectMentionElements];
  v10 = [_axTextEffectMentionElements count];

  if (v10)
  {
    [array axSafelyAddObject:_axTextEffectRotor];
  }

  if ([array count])
  {
    v11 = array;
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
  _axTextEffectMentionElements = [(CKTextBalloonViewAccessibility *)self _axTextEffectMentionElements];
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
    attributedText = [v4 attributedText];
    _axAttributedText = [(CKTextBalloonViewAccessibility *)self _axAttributedText];
    v7 = [attributedText isEqualToAttributedString:_axAttributedText];

    if ((v7 & 1) == 0)
    {
      v8 = _AXCKTextEffectMentions(v4);
      [(CKTextBalloonViewAccessibility *)self _axSetTextEffectMentionElements:v8];

      attributedText2 = [v4 attributedText];
      [(CKTextBalloonViewAccessibility *)self _axSetAttributedText:attributedText2];
    }
  }
}

- (void)setAttributedText:(id)text
{
  v4.receiver = self;
  v4.super_class = CKTextBalloonViewAccessibility;
  [(CKTextBalloonViewAccessibility *)&v4 setAttributedText:text];
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