@interface TUIPredictionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axHideCell;
- (BOOL)_axIsAutoFillKey;
- (BOOL)_axIsSmartReply;
- (BOOL)_axIsTextEffectButton;
- (id)_accessibilityRoleDescription;
- (id)_axTextSuggestionWithAction;
- (id)_childFocusViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilitySlotID;
- (void)_axActivateSpeaking:(id)speaking;
@end

@implementation TUIPredictionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITextSuggestionWithAction"];
  [validationsCopy validateClass:@"TUIPredictionViewCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_childFocusViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TUIPredictionViewCell" hasInstanceMethod:@"currentTextSuggestion" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITextSuggestionWithAction" hasInstanceMethod:@"action" withFullSignature:{":", 0}];
  [validationsCopy validateClass:@"UIResponder" hasInstanceMethod:@"showWritingTools:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TUIPredictionViewCell" hasInstanceMethod:@"_isSmartReplyCandidate:" withFullSignature:{"B", "@", 0}];
}

- (unsigned)_accessibilitySlotID
{
  _axCandidate = [(TUIPredictionViewCellAccessibility *)self _axCandidate];
  slotID = [_axCandidate slotID];

  return slotID;
}

- (BOOL)_axHideCell
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    accessibilityLabel = [(TUIPredictionViewCellAccessibility *)self accessibilityLabel];
    if ([accessibilityLabel length] || -[TUIPredictionViewCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID"))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(TUIPredictionViewCellAccessibility *)self _axIsTextEffectButton];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  if ([(TUIPredictionViewCellAccessibility *)self _accessibilitySlotID])
  {
    v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v4 = accessibilityLocalizedString(@"proactive.suggestion");
    v5 = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[TUIPredictionViewCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD980]];
  }

  else
  {
    if ([(TUIPredictionViewCellAccessibility *)self _axIsTextEffectButton])
    {
      v5 = accessibilityLocalizedString(@"open.text.effects");
      goto LABEL_16;
    }

    v6 = [(TUIPredictionViewCellAccessibility *)self safeUIViewForKey:@"normalLabel"];
    v7 = [(TUIPredictionViewCellAccessibility *)self safeUIViewForKey:@"morphingLabel"];
    v8 = [v6 safeValueForKey:@"text"];
    if ((![v8 length] || (objc_msgSend(v6, "_accessibilityViewIsVisible") & 1) == 0) && objc_msgSend(v7, "_accessibilityViewIsVisible"))
    {
      v9 = [v7 safeStringForKey:@"text"];

      v8 = v9;
    }

    if (![v8 length] && -[TUIPredictionViewCellAccessibility _axIsAutoFillKey](self, "_axIsAutoFillKey"))
    {
      v10 = accessibilityLocalizedString(@"autofill.keyboard.button");

      v8 = v10;
    }

    if (![v8 length])
    {
      _axTextSuggestionWithAction = [(TUIPredictionViewCellAccessibility *)self _axTextSuggestionWithAction];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__0;
      v24 = __Block_byref_object_dispose__0;
      v25 = 0;
      v15 = MEMORY[0x29EDCA5F8];
      v16 = 3221225472;
      v17 = __56__TUIPredictionViewCellAccessibility_accessibilityLabel__block_invoke;
      v18 = &unk_29F30A0F8;
      v19 = _axTextSuggestionWithAction;
      AXPerformSafeBlock();
      v12 = v21[5];

      _Block_object_dispose(&v20, 8);
      v8 = v12;
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v5 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

LABEL_16:

  return v5;
}

char *__56__TUIPredictionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) action];
  if (result == sel_showWritingTools_)
  {
    v3 = accessibilityLocalizedString(@"text.assistant.keyboard.button");
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2A1C71028]();
  }

  return result;
}

- (unint64_t)accessibilityTraits
{
  if ([(TUIPredictionViewCellAccessibility *)self _axIsAutoFillKey])
  {
    return *MEMORY[0x29EDC7F70];
  }

  _axTextSuggestionWithAction = [(TUIPredictionViewCellAccessibility *)self _axTextSuggestionWithAction];
  if (_axTextSuggestionWithAction)
  {

    return *MEMORY[0x29EDC7F70];
  }

  if ([(TUIPredictionViewCellAccessibility *)self _axIsTextEffectButton])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v5 = *MEMORY[0x29EDC7388];
  _axIsAutocorrection = [(TUIPredictionViewCellAccessibility *)self _axIsAutocorrection];
  v7 = *MEMORY[0x29EDC7FC0];
  if (!_axIsAutocorrection)
  {
    v7 = 0;
  }

  return v7 | v5;
}

- (id)_accessibilityRoleDescription
{
  if ([(TUIPredictionViewCellAccessibility *)self _axIsSmartReply])
  {
    v2 = accessibilityLocalizedString(@"smart.reply");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_axIsTextEffectButton
{
  _axCandidate = [(TUIPredictionViewCellAccessibility *)self _axCandidate];
  v3 = [_axCandidate customInfoType] == 0x8000;

  return v3;
}

- (BOOL)_axIsAutoFillKey
{
  _axCandidate = [(TUIPredictionViewCellAccessibility *)self _axCandidate];
  v3 = [_axCandidate customInfoType] == 32;

  return v3;
}

- (BOOL)_axIsSmartReply
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __53__TUIPredictionViewCellAccessibility__axIsSmartReply__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _axCandidate];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _isSmartReplyCandidate:v3];
}

- (id)_axTextSuggestionWithAction
{
  v2 = [(TUIPredictionViewCellAccessibility *)self safeValueForKey:@"currentTextSuggestion"];
  MEMORY[0x29ED3C2C0](@"UITextSuggestionWithAction");
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_axActivateSpeaking:(id)speaking
{
  speakingCopy = speaking;
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getSpeakTypingServicesClass_softClass;
  v16 = getSpeakTypingServicesClass_softClass;
  if (!getSpeakTypingServicesClass_softClass)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __getSpeakTypingServicesClass_block_invoke;
    v12[3] = &unk_29F30A148;
    v12[4] = &v13;
    __getSpeakTypingServicesClass_block_invoke(v12);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  sharedInstance = [v8 sharedInstance];
  accessibilityLabel = [(TUIPredictionViewCellAccessibility *)self accessibilityLabel];
  [sharedInstance notifySpeakServicesToFeedbackQuickTypePrediction:accessibilityLabel forCurrentInputMode:primaryLanguage];
}

- (id)accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  if (_AXSQuickTypePredictionFeedbackEnabled() && UIAccessibilityIsSwitchControlRunning())
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityLocalizedString(@"speak.prediction");
    v5 = [v3 initWithName:v4 target:self selector:sel__axActivateSpeaking_];

    v10[0] = v5;
    accessibilityCustomActions = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TUIPredictionViewCellAccessibility;
    accessibilityCustomActions = [(TUIPredictionViewCellAccessibility *)&v9 accessibilityCustomActions];
  }

  v7 = *MEMORY[0x29EDCA608];

  return accessibilityCustomActions;
}

- (id)_childFocusViews
{
  v7.receiver = self;
  v7.super_class = TUIPredictionViewCellAccessibility;
  _childFocusViews = [(TUIPredictionViewCellAccessibility *)&v7 _childFocusViews];
  v4 = [_childFocusViews mutableCopy];

  if (([(TUIPredictionViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v5 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

@end