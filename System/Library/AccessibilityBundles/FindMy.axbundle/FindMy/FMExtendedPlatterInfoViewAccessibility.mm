@interface FMExtendedPlatterInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation FMExtendedPlatterInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasSwiftField:@"subtitle" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasSwiftField:@"actionTitle" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasSwiftField:@"hasAction" withSwiftType:"Bool"];
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasSwiftField:@"dismissable" withSwiftType:"Bool"];
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasSwiftField:@"actionLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"FindMy.FMExtendedPlatterInfoView" hasInstanceMethod:@"handleCloseAction" withFullSignature:{"v", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FMExtendedPlatterInfoViewAccessibility *)self safeSwiftValueForKey:@"title"];
  v6 = [(FMExtendedPlatterInfoViewAccessibility *)self safeSwiftValueForKey:@"subtitle"];
  v4 = __AXStringForVariables();

  return v4;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  objc_initWeak(&location, self);
  if ([(FMExtendedPlatterInfoViewAccessibility *)self safeSwiftBoolForKey:@"dismissable"])
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityLocalizedString(@"close.action");
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __68__FMExtendedPlatterInfoViewAccessibility_accessibilityCustomActions__block_invoke;
    v14 = &unk_29F2BEA60;
    objc_copyWeak(&v15, &location);
    v6 = [v4 initWithName:v5 actionHandler:&v11];

    [v3 axSafelyAddObject:{v6, v11, v12, v13, v14}];
    objc_destroyWeak(&v15);
  }

  if ([(FMExtendedPlatterInfoViewAccessibility *)self safeSwiftBoolForKey:@"hasAction"])
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = [(FMExtendedPlatterInfoViewAccessibility *)self safeSwiftValueForKey:@"actionTitle"];
    v9 = [v7 initWithName:v8 actionHandler:&__block_literal_global_0];

    [(FMExtendedPlatterInfoViewAccessibility *)self accessibilityActivationPoint];
    [v9 setActivationPoint:?];
    [v3 axSafelyAddObject:v9];
  }

  objc_destroyWeak(&location);

  return v3;
}

uint64_t __68__FMExtendedPlatterInfoViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __68__FMExtendedPlatterInfoViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCloseAction];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(FMExtendedPlatterInfoViewAccessibility *)self safeSwiftValueForKey:@"actionLabel"];
  [v2 safeCGRectForKey:@"accessibilityFrame"];
  AX_CGRectGetCenter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end