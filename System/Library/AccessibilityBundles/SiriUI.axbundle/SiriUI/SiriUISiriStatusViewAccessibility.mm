@interface SiriUISiriStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformMagicTap;
- (CGRect)_defaultFocusRegionFrame;
- (CGRect)accessibilityFrame;
- (unsigned)_accessibilityMediaAnalysisOptions;
- (void)accessibilityElementDidLoseFocus;
- (void)dealloc;
- (void)setMode:(int64_t)mode;
@end

@implementation SiriUISiriStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriUISiriStatusView" hasInstanceMethod:@"initWithFrame: screen: textInputEnabled: configuration:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "B", "@", 0}];
  [validationsCopy validateClass:@"SiriUISiriStatusView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_touchInputView" withType:"UIView"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriViewController" hasInstanceMethod:@"_session" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriSession" hasInstanceMethod:@"cancelRequest" withFullSignature:{"v", 0}];
}

- (void)dealloc
{
  _UIAccessibilityUnblockPostingOfNotification();
  _UIAccessibilityUnblockPostingOfNotification();
  UIAccessibilityPostNotification(0x1645u, 0);
  UIAccessibilityPostNotification(0x1647u, 0);
  v3.receiver = self;
  v3.super_class = SiriUISiriStatusViewAccessibility;
  [(SiriUISiriStatusViewAccessibility *)&v3 dealloc];
}

- (void)setMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = SiriUISiriStatusViewAccessibility;
  [(SiriUISiriStatusViewAccessibility *)&v10 setMode:?];
  if (mode == 1)
  {
    _UIAccessibilityBlockPostingOfNotification();
    _UIAccessibilityBlockPostingOfNotification();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], self);
    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityLabel:0];
    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityHint:0];
    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityIdentifier:@"Listening"];
    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
  }

  else
  {
    accessibilityLocalizedString(@"listen.button.label");
    if (mode == 2)
      v5 = {;
      [(SiriUISiriStatusViewAccessibility *)self setAccessibilityLabel:v5];

      v6 = @"listen.button.hint.thinking";
    }

    else
      v7 = {;
      [(SiriUISiriStatusViewAccessibility *)self setAccessibilityLabel:v7];

      v6 = @"listen.button.hint.idle";
    }

    v8 = accessibilityLocalizedString(v6);
    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityHint:v8];

    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityIdentifier:@"Listen"];
    [(SiriUISiriStatusViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70]];
    _UIAccessibilityUnblockPostingOfNotification();
    _UIAccessibilityUnblockPostingOfNotification();
  }

  v9 = *MEMORY[0x29EDC7ED8];
  _AXIgnoreNextNotification();
}

- (CGRect)accessibilityFrame
{
  v2 = [(SiriUISiriStatusViewAccessibility *)self safeValueForKey:@"_touchInputView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_defaultFocusRegionFrame
{
  v2 = [(SiriUISiriStatusViewAccessibility *)self safeValueForKey:@"_touchInputView"];
  [v2 safeCGRectForKey:@"_defaultFocusRegionFrame"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unsigned)_accessibilityMediaAnalysisOptions
{
  v3.receiver = self;
  v3.super_class = SiriUISiriStatusViewAccessibility;
  return [(SiriUISiriStatusViewAccessibility *)&v3 _accessibilityMediaAnalysisOptions]& 0xFFFF7FFF;
}

- (BOOL)accessibilityPerformMagicTap
{
  v4 = [(SiriUISiriStatusViewAccessibility *)self safeValueForKey:@"delegate"];
  v2 = v4;
  AXPerformSafeBlock();

  return 1;
}

- (void)accessibilityElementDidLoseFocus
{
  if (_AXSVoiceOverTouchEnabled())
  {
    AXPerformSafeBlock();
  }
}

void __69__SiriUISiriStatusViewAccessibility_accessibilityElementDidLoseFocus__block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(0x1645u, 0);
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  v4 = [v2 safeValueForKey:@"delegate"];

  v3 = [v4 safeValueForKey:@"_session"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"VoiceOverCancelRequestInProgress"];
  [v4 stopRequestWithOptions:0];
  [v3 _accessibilitySetBoolValue:0 forKey:@"VoiceOverCancelRequestInProgress"];
}

@end