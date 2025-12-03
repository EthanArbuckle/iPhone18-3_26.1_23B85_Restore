@interface SBFolderScrollAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsSearchPillHidden;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGRect)accessibilityFrame;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SBFolderScrollAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFolderScrollAccessoryView" hasProperty:@"pageControl" withType:"@"];
  [validationsCopy validateClass:@"SBFolderScrollAccessoryView" hasProperty:@"auxiliaryView" withType:"@"];
  [validationsCopy validateClass:@"SBIconListPageControl" hasInstanceVariable:@"_delegate" withType:"<SBIconListPageControlDelegate>"];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if (-[SBFolderScrollAccessoryViewAccessibility _axIsSearchPillHidden](self, "_axIsSearchPillHidden") || (-[SBFolderScrollAccessoryViewAccessibility _axPageControl](self, "_axPageControl"), v3 = objc_claimAutoreleasedReturnValue(), [v3 safeValueForKey:@"delegate"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeBoolForKey:", @"isEditing"), v4, v3, (v5 & 1) != 0))
  {
    v8.receiver = self;
    v8.super_class = SBFolderScrollAccessoryViewAccessibility;
    accessibilityLabel = [(SBFolderScrollAccessoryViewAccessibility *)&v8 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityLocalizedString(@"home.search.pill.view.label");
  }

  return accessibilityLabel;
}

- (id)accessibilityIdentifier
{
  if ([(SBFolderScrollAccessoryViewAccessibility *)self _axIsSearchPillHidden])
  {
    v6.receiver = self;
    v6.super_class = SBFolderScrollAccessoryViewAccessibility;
    accessibilityIdentifier = [(SBFolderScrollAccessoryViewAccessibility *)&v6 accessibilityIdentifier];
  }

  else
  {
    v4 = [(SBFolderScrollAccessoryViewAccessibility *)self safeValueForKey:@"auxiliaryView"];
    accessibilityIdentifier = [v4 accessibilityIdentifier];
  }

  return accessibilityIdentifier;
}

- (id)accessibilityHint
{
  if (-[SBFolderScrollAccessoryViewAccessibility _axIsSearchPillHidden](self, "_axIsSearchPillHidden") || (-[SBFolderScrollAccessoryViewAccessibility _axPageControl](self, "_axPageControl"), v3 = objc_claimAutoreleasedReturnValue(), [v3 safeValueForKey:@"delegate"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeBoolForKey:", @"isEditing"), v4, v3, (v5 & 1) != 0))
  {
    _axPageControl = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
    accessibilityHint = [_axPageControl accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"home.search.pill.view.hint");
  }

  return accessibilityHint;
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

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  _axPageControl = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  LOBYTE(scroll) = [_axPageControl accessibilityScroll:scroll];

  return scroll;
}

- (void)accessibilityIncrement
{
  _axPageControl = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  [_axPageControl accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  _axPageControl = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  [_axPageControl accessibilityDecrement];
}

- (id)accessibilityValue
{
  _axPageControl = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  accessibilityValue = [_axPageControl accessibilityValue];

  return accessibilityValue;
}

- (BOOL)accessibilityActivate
{
  _axPageControl = [(SBFolderScrollAccessoryViewAccessibility *)self _axPageControl];
  accessibilityActivate = [_axPageControl accessibilityActivate];

  return accessibilityActivate;
}

- (BOOL)_axIsSearchPillHidden
{
  v2 = [(SBFolderScrollAccessoryViewAccessibility *)self safeValueForKey:@"auxiliaryView"];
  v3 = v2;
  if (v2)
  {
    isHidden = [v2 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  return isHidden;
}

@end