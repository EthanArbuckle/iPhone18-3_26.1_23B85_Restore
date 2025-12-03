@interface ETTapMessageAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)displayInScene:(id)scene;
@end

@implementation ETTapMessageAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETTapMessage"];
  [validationsCopy validateClass:@"ETTapMessage" isKindOfClass:@"ETMessage"];
  [validationsCopy validateClass:@"ETTapMessage" hasInstanceMethod:@"displayInScene:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"tap.label");
  _accessibilityColorString = [(ETTapMessageAccessibility *)self _accessibilityColorString];
  v6 = [v3 stringWithFormat:v4, _accessibilityColorString];

  return v6;
}

- (void)displayInScene:(id)scene
{
  sceneCopy = scene;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    _axSetIsWaitingOnETMessageStart(1);
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __44__ETTapMessageAccessibility_displayInScene___block_invoke;
    v9 = &unk_29F2BABE0;
    v10 = sceneCopy;
    selfCopy = self;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ETTapMessageAccessibility;
    [(ETTapMessageAccessibility *)&v5 displayInScene:sceneCopy];
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