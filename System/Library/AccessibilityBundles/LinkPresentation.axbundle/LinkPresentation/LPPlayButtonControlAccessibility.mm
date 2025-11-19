@interface LPPlayButtonControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (void)_showPlayIndicator:(BOOL)a3;
@end

@implementation LPPlayButtonControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LPPlayButtonControl" hasInstanceMethod:@"_showPlayIndicator:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"LPPlayButtonControl" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  if ([(LPPlayButtonControlAccessibility *)self _axIsPlaying])
  {
    v4 = @"pause.button";
  }

  else
  {
    v4 = @"play.button";
  }

  v5 = accessibilityLocalizedString(v4);
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __62__LPPlayButtonControlAccessibility_accessibilityCustomActions__block_invoke;
  v12 = &unk_29F2C9B00;
  objc_copyWeak(&v13, &location);
  v7 = [v6 initWithName:v5 actionHandler:&v9];
  [v3 axSafelyAddObject:{v7, v9, v10, v11, v12}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __62__LPPlayButtonControlAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __62__LPPlayButtonControlAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonPressed:0];
}

- (void)_showPlayIndicator:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = LPPlayButtonControlAccessibility;
  [(LPPlayButtonControlAccessibility *)&v5 _showPlayIndicator:?];
  [(LPPlayButtonControlAccessibility *)self _axSetIsPlaying:!v3];
}

@end