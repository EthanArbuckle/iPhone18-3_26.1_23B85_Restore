@interface SBSystemApertureViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_collapseExpandedElementIfPossible;
- (CGRect)accessibilityFrame;
- (id)_accessibilityContainerView;
- (id)accessibilityPath;
- (unint64_t)accessibilityTraits;
@end

@implementation SBSystemApertureViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_systemApertureContainsAnyContent" withType:"BOOL"];
  [v3 validateClass:@"SBSystemApertureViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBSystemApertureViewController" hasInstanceMethod:@"_collapseExpandedElementIfPossible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBSystemApertureContainerView"];
  [v3 validateClass:@"SBLockElementViewProvider"];
}

- (unint64_t)accessibilityTraits
{
  if ([(SBSystemApertureViewControllerAccessibility *)self isAccessibilityElement])
  {
    v5.receiver = self;
    v5.super_class = SBSystemApertureViewControllerAccessibility;
    return *MEMORY[0x29EDBDBE8] | [(SBSystemApertureViewControllerAccessibility *)&v5 accessibilityTraits];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBSystemApertureViewControllerAccessibility;
    return [(SBSystemApertureViewControllerAccessibility *)&v4 accessibilityTraits];
  }
}

- (id)accessibilityPath
{
  v3 = [(SBSystemApertureViewControllerAccessibility *)self _accessibilityContainerView];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v27 = CGRectInset(v26, -5.0, -5.0);
    v21 = v27.size.height;
    v9 = v27.origin.x;
    v23 = v27.origin.x;
    v10 = v27.origin.y;
    v11 = v27.size.width;
    v12 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v22 = v12 / CGRectGetWidth(v28);
    v29.origin.x = v9;
    v29.origin.y = v10;
    v29.size.width = v11;
    v29.size.height = v21;
    v13 = CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v14 = v13 / CGRectGetHeight(v30);
    v15 = [v4 layer];
    [v15 cornerRadius];
    v17 = fmax(v22, v14) * v16;

    v18 = [MEMORY[0x29EDC7948] _bezierPathWithArcRoundedRect:v23 cornerRadius:{v10, v11, v21, v17}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBSystemApertureViewControllerAccessibility;
    v18 = [(SBSystemApertureViewControllerAccessibility *)&v24 accessibilityPath];
  }

  v19 = v18;

  return v19;
}

- (CGRect)accessibilityFrame
{
  v3 = [(SBSystemApertureViewControllerAccessibility *)self _accessibilityContainerView];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBSystemApertureViewControllerAccessibility;
    [(SBSystemApertureViewControllerAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_accessibilityContainerView
{
  v2 = [(SBSystemApertureViewControllerAccessibility *)self safeArrayForKey:@"_orderedContainerViews"];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_collapseExpandedElementIfPossible
{
  v8.receiver = self;
  v8.super_class = SBSystemApertureViewControllerAccessibility;
  v3 = [(SBSystemApertureViewControllerAccessibility *)&v8 _collapseExpandedElementIfPossible];
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v6 = v3;
  AXPerformBlockOnMainThreadAfterDelay();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  return v3;
}

void __81__SBSystemApertureViewControllerAccessibility__collapseExpandedElementIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeArrayForKey:@"_orderedContainerViews"];

  if (*(a1 + 40) == 1 && [v5 count])
  {
    v3 = *MEMORY[0x29EDC7ED8];
    v4 = [v5 firstObject];
    UIAccessibilityPostNotification(v3, v4);
  }
}

@end