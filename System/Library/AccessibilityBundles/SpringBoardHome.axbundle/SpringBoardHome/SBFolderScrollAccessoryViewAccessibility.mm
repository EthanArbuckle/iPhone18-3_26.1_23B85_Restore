@interface SBFolderScrollAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsSearchPillHidden;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SBFolderScrollAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFolderScrollAccessoryView" hasProperty:@"pageControl" withType:"@"];
  [v3 validateClass:@"SBFolderScrollAccessoryView" hasProperty:@"auxiliaryView" withType:"@"];
  [v3 validateClass:@"SBIconListPageControl" hasInstanceVariable:@"_delegate" withType:"<SBIconListPageControlDelegate>"];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if (-[SBFolderScrollAccessoryViewAccessibility _axIsSearchPillHidden](self, "_axIsSearchPillHidden") || (-[SBFolderScrollAccessoryViewAccessibility _axPageControl](self, "_axPageControl"), v3 = objc_claimAutoreleasedReturnValue(), [v3 safeValueForKey:@"delegate"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeBoolForKey:", @"isEditing"), v4, v3, (v5 & 1) != 0))
  {
    v8.receiver = self;
    v8.super_class = SBFolderScrollAccessoryViewAccessibility;
    v6 = [(SBFolderScrollAccessoryViewAccessibility *)&v8 accessibilityLabel];
  }

  else
  {
    v6 = accessibilityLocalizedString(@"home.search.pill.view.label");
  }

  return v6;
}

- (id)accessibilityIdentifier
{
  if ([(SBFolderScrollAccessoryViewAccessibility *)self _axIsSearchPillHidden])
  {
    v6.receiver = self;
    v6.super_class = SBFolderScrollAccessoryViewAccessibility;
    v3 = [(SBFolderScrollAccessoryViewAccessibility *)&v6 accessibilityIdentifier];
  }

  else
  {
    v4 = [(SBFolderScrollAccessoryViewAccessibility *)self safeValueForKey:@"auxiliaryView"];
    v3 = [v4 accessibilityIdentifier];
  }

  return v3;
}

- (id)accessibilityHint
{
  if (-[SBFolderScrollAccessoryViewAccessibility _axIsSearchPillHidden](self, "_axIsSearchPillHidden") || (-[SBFolderScrollAccessoryViewAccessibility _axPageControl](self, "_axPageControl"), v3 = objc_claimAutoreleasedReturnValue(), [v3 safeValueForKey:@"delegate"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeBoolForKey:", @"isEditing"), v4, v3, (v5 & 1) != 0))
  {
    v6 = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
    v7 = [v6 accessibilityHint];
  }

  else
  {
    v7 = accessibilityLocalizedString(@"home.search.pill.view.hint");
  }

  return v7;
}

- (CGRect)accessibilityFrame
{
  if ([(SBFolderScrollAccessoryViewAccessibility *)self _axIsSearchPillHidden])
  {
    [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  }

  else
  {
    [(SBFolderScrollAccessoryViewAccessibility *)self safeValueForKey:@"auxiliaryView"];
  }
  v3 = ;
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v4 = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  LOBYTE(a3) = [v4 accessibilityScroll:a3];

  return a3;
}

- (void)accessibilityIncrement
{
  v2 = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  [v2 accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  v2 = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  [v2 accessibilityDecrement];
}

- (id)accessibilityValue
{
  v2 = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  v3 = [v2 accessibilityActivate];

  return v3;
}

- (BOOL)_axIsSearchPillHidden
{
  v2 = [(SBFolderScrollAccessoryViewAccessibility *)self safeValueForKey:@"auxiliaryView"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isHidden];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end