@interface ETTapMessageAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)displayInScene:(id)a3;
@end

@implementation ETTapMessageAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETTapMessage"];
  [v3 validateClass:@"ETTapMessage" isKindOfClass:@"ETMessage"];
  [v3 validateClass:@"ETTapMessage" hasInstanceMethod:@"displayInScene:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"tap.label");
  v5 = [(ETTapMessageAccessibility *)self _accessibilityColorString];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (void)displayInScene:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    _axSetIsWaitingOnETMessageStart(1);
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __44__ETTapMessageAccessibility_displayInScene___block_invoke;
    v9 = &unk_29F2BABE0;
    v10 = v4;
    v11 = self;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ETTapMessageAccessibility;
    [(ETTapMessageAccessibility *)&v5 displayInScene:v4];
  }
}

uint64_t __44__ETTapMessageAccessibility_displayInScene___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = ETTapMessageAccessibility;
  objc_msgSendSuper2(&v3, sel_displayInScene_, v1);
  return _axSetIsWaitingOnETMessageStart(0);
}

@end