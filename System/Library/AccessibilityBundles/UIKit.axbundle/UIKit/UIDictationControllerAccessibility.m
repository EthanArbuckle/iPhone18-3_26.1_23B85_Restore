@interface UIDictationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axNotifyDictationStarted;
- (void)_createDictationPresenterWindowIfNecessary;
- (void)insertSerializedDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)setState:(int)a3;
- (void)updateLastHypothesis:(id)a3 WithNewHypothesis:(id)a4;
@end

@implementation UIDictationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = "@";
  v5 = @"UIDictationController";
  v4 = "v";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"updateLastHypothesis:WithNewHypothesis:" withFullSignature:{v4, v6, v6, 0}];
  v3 = "i";
  [location[0] validateClass:v5 hasInstanceMethod:@"state" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"setState:" withFullSignature:{v4, v3, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"targetHypothesis" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"lastHypothesis" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"_createDictationPresenterWindowIfNecessary" withFullSignature:{v4, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"dictationPresenterWindow" withFullSignature:{v6, 0}];
  v7 = @"UIDictationSerializableResults";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7];
  objc_storeStrong(v9, v8);
}

- (void)setState:(int)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if (!a3)
  {
LABEL_9:
    [(UIDictationControllerAccessibility *)v6 _axNotifyDictationStopped];
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    goto LABEL_10;
  }

  if (a3 != 2)
  {
    if (a3 != 6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [(UIDictationControllerAccessibility *)v6 _axNotifyDictationStarted];
LABEL_10:
  v3.receiver = v6;
  v3.super_class = UIDictationControllerAccessibility;
  [(UIDictationControllerAccessibility *)&v3 setState:v4];
}

- (void)_axNotifyDictationStarted
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB0]);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  UIAccessibilityPostNotification(0x16A8u, 0);
}

- (void)updateLastHypothesis:(id)a3 WithNewHypothesis:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = UIDictationControllerAccessibility;
  [(UIDictationControllerAccessibility *)&v5 updateLastHypothesis:location[0] WithNewHypothesis:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSerializedDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  if (AXProcessIsInputUI())
  {
    v35.receiver = v38;
    v35.super_class = UIDictationControllerAccessibility;
    [(UIDictationControllerAccessibility *)&v35 insertSerializedDictationResult:location[0] withCorrectionIdentifier:v36];
    v34 = 1;
  }

  else
  {
    v33 = [location[0] safeStringForKey:@"bestText"];
    if (!v33)
    {
      v32 = 0;
      objc_opt_class();
      v17 = [(UIDictationControllerAccessibility *)v38 safeValueForKey:@"targetHypothesis"];
      v31 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v17);
      v30 = MEMORY[0x29EDC9748](v31);
      objc_storeStrong(&v31, 0);
      v4 = v33;
      v33 = v30;
      MEMORY[0x29EDC9740](v4);
      if (!v33)
      {
        v29 = 0;
        objc_opt_class();
        v16 = [(UIDictationControllerAccessibility *)v38 safeValueForKey:@"lastHypothesis"];
        v28 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v16);
        v27 = MEMORY[0x29EDC9748](v28);
        objc_storeStrong(&v28, 0);
        v5 = v33;
        v33 = v27;
        MEMORY[0x29EDC9740](v5);
      }
    }

    if (v33)
    {
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"inserted.text");
      v26 = [v11 stringWithFormat:v33];
      v13 = [*MEMORY[0x29EDC8008] _accessibilityResponderElement];
      v6 = [v13 accessibilityTraits];
      v15 = v6 & *MEMORY[0x29EDC7568];
      v14 = *MEMORY[0x29EDC7568];
      MEMORY[0x29EDC9740](v13);
      if (v15 == v14)
      {
        v9 = MEMORY[0x29EDBA0F8];
        v10 = accessibilityLocalizedString(@"secure.dictation.characters.count");
        v7 = [v9 localizedStringWithFormat:v10, objc_msgSend(v33, "length")];
        v8 = v26;
        v26 = v7;
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v10);
      }

      v20 = MEMORY[0x29EDCA5F8];
      v21 = -1073741824;
      v22 = 0;
      v23 = __95__UIDictationControllerAccessibility_insertSerializedDictationResult_withCorrectionIdentifier___block_invoke;
      v24 = &unk_29F30C7C8;
      v25 = MEMORY[0x29EDC9748](v26);
      AXPerformBlockOnMainThreadAfterDelay();
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    MEMORY[0x29ED3DFA0](1005);
    v19.receiver = v38;
    v19.super_class = UIDictationControllerAccessibility;
    [(UIDictationControllerAccessibility *)&v19 insertSerializedDictationResult:location[0] withCorrectionIdentifier:v36];
    objc_storeStrong(&v33, 0);
    v34 = 0;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void __95__UIDictationControllerAccessibility_insertSerializedDictationResult_withCorrectionIdentifier___block_invoke(void *a1)
{
  v7[2] = *MEMORY[0x29EDCA608];
  argument[2] = a1;
  argument[1] = a1;
  v3 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v2 = a1[4];
  v6[0] = *MEMORY[0x29EDBD860];
  v7[0] = &unk_2A238E7B0;
  v6[1] = *MEMORY[0x29EDBD8A8];
  v7[1] = MEMORY[0x29EDB8EB0];
  v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  argument[0] = [v3 initWithString:v2 attributes:?];
  MEMORY[0x29EDC9740](v4);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument[0]);
  objc_storeStrong(argument, 0);
}

- (void)_createDictationPresenterWindowIfNecessary
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIDictationControllerAccessibility;
  [(UIDictationControllerAccessibility *)&v3 _createDictationPresenterWindowIfNecessary];
  v2 = [(UIDictationControllerAccessibility *)v5 safeValueForKey:@"dictationPresenterWindow"];
  [v2 setAccessibilityViewIsModal:1];
  MEMORY[0x29EDC9740](v2);
}

@end