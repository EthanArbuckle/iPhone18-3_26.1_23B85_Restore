@interface CKTUConversationBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)_axMessageTime;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation CKTUConversationBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTUConversationBalloonView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTUConversationBalloonView" hasInstanceMethod:@"subtitleLabel1" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTUConversationBalloonView" hasInstanceMethod:@"_currentCall" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTUConversationBalloonView" hasInstanceMethod:@"joinButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTUConversationBalloonView" hasInstanceMethod:@"_joinButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKTUConversationBalloonView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"TUCall"];
  [validationsCopy validateClass:@"TUCall" hasInstanceMethod:@"callDuration" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKTUConversationBalloonViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([(CKTUConversationBalloonViewAccessibility *)self _axState]!= 2)
  {
    v8 = [(CKTUConversationBalloonViewAccessibility *)self safeValueForKey:@"subtitleLabel1"];
    v10 = @"__AXStringForVariablesSentinel";
    v5 = __UIAXStringForVariables();

    accessibilityLabel = v5;
  }

  v9 = [(CKTUConversationBalloonViewAccessibility *)self _axMessageTime:v8];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  if ([(CKTUConversationBalloonViewAccessibility *)self _axState]== 2 && ([(CKTUConversationBalloonViewAccessibility *)self safeValueForKey:@"_currentCall"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 safeCGFloatForKey:@"callDuration"];
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"balloon.message.facetime.elapsed.time");
    v7 = AXDurationStringForDuration();
    v8 = [v5 stringWithFormat:v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CKTUConversationBalloonViewAccessibility;
  accessibilityTraits = [(CKTUConversationBalloonViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CKTUConversationBalloonViewAccessibility *)self safeValueForKey:@"_currentCall"];
  if (v4)
  {
    v5 = *MEMORY[0x29EDC7FF0];
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityHint
{
  if ([(CKTUConversationBalloonViewAccessibility *)self _axState]== 1)
  {
    v2 = accessibilityLocalizedString(@"call.balloon.joinable.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)accessibilityActivate
{
  if ([(CKTUConversationBalloonViewAccessibility *)self _axState]== 1)
  {
    v3 = [(CKTUConversationBalloonViewAccessibility *)self safeValueForKey:@"joinButton"];
    v7 = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = __65__CKTUConversationBalloonViewAccessibility_accessibilityActivate__block_invoke;
    v10 = &unk_29F2B08B8;
    selfCopy = self;
    v12 = v3;
    v4 = v3;
    AXPerformSafeBlock();

    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CKTUConversationBalloonViewAccessibility;
    return [(CKTUConversationBalloonViewAccessibility *)&v6 accessibilityActivate];
  }
}

- (id)automationElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  subviews = [v3 subviews];

  if (subviews)
  {
    automationElements = subviews;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKTUConversationBalloonViewAccessibility;
    automationElements = [(CKTUConversationBalloonViewAccessibility *)&v8 automationElements];
  }

  v6 = automationElements;

  return v6;
}

- (id)_axMessageTime
{
  _axConversationItem = [(CKTUConversationBalloonViewAccessibility *)self _axConversationItem];
  objc_opt_class();
  v3 = [_axConversationItem safeValueForKey:@"time"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = AXDateStringForFormat();

  return v5;
}

@end