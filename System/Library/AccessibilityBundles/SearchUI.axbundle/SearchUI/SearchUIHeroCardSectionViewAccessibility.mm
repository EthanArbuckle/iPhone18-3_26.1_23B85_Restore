@interface SearchUIHeroCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPerformCustomAction:(id)action;
- (BOOL)_axWatchListStateForButton:(id)button;
- (id)_axCommandButtons;
- (id)_axLocalizedKeyForBundleID:(id)d;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (unint64_t)_axApplicationForBundleIdentifier:(id)identifier;
- (void)buttonPressed:(id)pressed;
@end

@implementation SearchUIHeroCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"punchoutIndicatorImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIImageView"];
  [validationsCopy validateClass:@"SearchUIImageView" hasInstanceMethod:@"currentImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIAppIconImage"];
  [validationsCopy validateClass:@"SearchUIAppIconImage" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIHeroButton"];
  [validationsCopy validateClass:@"SearchUICommandButton"];
  [validationsCopy validateProtocol:@"SearchUICommandButton" hasRequiredInstanceMethod:@"buttonItem"];
  [validationsCopy validateProtocol:@"SFCommandButtonItem" hasRequiredInstanceMethod:@"command"];
  [validationsCopy validateClass:@"SearchUIHeroButton" conformsToProtocol:@"SearchUICommandButton"];
  [validationsCopy validateClass:@"SearchUICommandButton" conformsToProtocol:@"SearchUICommandButton"];
  [validationsCopy validateClass:@"SFToggleWatchListStatusCommand"];
  [validationsCopy validateClass:@"SearchUICommandButton" hasInstanceMethod:@"watchListState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIWatchListState"];
  [validationsCopy validateClass:@"SearchUIWatchListState" hasInstanceMethod:@"isWatchListed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SearchUIUtilities"];
  [validationsCopy validateClass:@"SearchUIUtilities" hasClassMethod:@"bundleIdentifierForApp:" withFullSignature:{"@", "Q", 0}];
}

- (id)accessibilityValue
{
  v3 = [(SearchUIHeroCardSectionViewAccessibility *)self safeValueForKey:@"punchoutIndicatorImageView"];
  v4 = [v3 safeValueForKey:@"currentImage"];
  v5 = [v4 safeValueForKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [(SearchUIHeroCardSectionViewAccessibility *)self _axLocalizedKeyForBundleID:v5];
    accessibilityValue = accessibilityLocalizedString(v6);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIHeroCardSectionViewAccessibility;
    accessibilityValue = [(SearchUIHeroCardSectionViewAccessibility *)&v9 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityCustomActions
{
  v24 = *MEMORY[0x29EDCA608];
  _axCommandButtons = [(SearchUIHeroCardSectionViewAccessibility *)self _axCommandButtons];
  v17 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(_axCommandButtons, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = _axCommandButtons;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"buttonItem.command";
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 safeValueForKeyPath:v6];
        NSClassFromString(&cfstr_Sftogglewatchl.isa);
        if (objc_opt_isKindOfClass())
        {
          if ([(SearchUIHeroCardSectionViewAccessibility *)self _axWatchListStateForButton:v9])
          {
            v11 = @"watchlist.remove";
          }

          else
          {
            v11 = @"watchlist.add";
          }

          v12 = accessibilityLocalizedString(v11);
          v13 = v6;
          v14 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v12 target:self selector:sel__axPerformCustomAction_];
          [v14 _accessibilitySetRetainedValue:v9 forKey:@"AXHeroCommandButtonKey"];
          [v17 axSafelyAddObject:v14];

          v6 = v13;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x29EDCA608];

  return v17;
}

- (BOOL)_axPerformCustomAction:(id)action
{
  actionCopy = action;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = [actionCopy _accessibilityValueForKey:@"AXHeroCommandButtonKey"];
  AXPerformSafeBlock();
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __67__SearchUIHeroCardSectionViewAccessibility__axPerformCustomAction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) buttonPressed:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  v9.receiver = self;
  v9.super_class = SearchUIHeroCardSectionViewAccessibility;
  [(SearchUIHeroCardSectionViewAccessibility *)&v9 buttonPressed:pressedCopy];
  v5 = [pressedCopy safeValueForKey:@"command"];
  NSClassFromString(&cfstr_Sftogglewatchl.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(SearchUIHeroCardSectionViewAccessibility *)self _axWatchListStateForButton:pressedCopy])
    {
      v7 = @"watchlist.did.remove";
    }

    else
    {
      v7 = @"watchlist.did.add";
    }

    v8 = accessibilityLocalizedString(v7);
    UIAccessibilitySpeak();
  }
}

- (id)_axCommandButtons
{
  if (_axCommandButtons_onceToken != -1)
  {
    [SearchUIHeroCardSectionViewAccessibility _axCommandButtons];
  }

  return [(SearchUIHeroCardSectionViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_378];
}

Class __61__SearchUIHeroCardSectionViewAccessibility__axCommandButtons__block_invoke()
{
  _axCommandButtons_heroButton = NSClassFromString(&cfstr_Searchuiherobu.isa);
  result = NSClassFromString(&cfstr_Searchuicomman.isa);
  _axCommandButtons_commandButton = result;
  return result;
}

uint64_t __61__SearchUIHeroCardSectionViewAccessibility__axCommandButtons__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_axWatchListStateForButton:(id)button
{
  buttonCopy = button;
  v4 = [buttonCopy safeValueForKey:@"command"];
  NSClassFromString(&cfstr_Sftogglewatchl.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [buttonCopy safeValueForKey:@"watchListState"];
    v6 = [v5 safeBoolForKey:@"isWatchListed"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_axLocalizedKeyForBundleID:(id)d
{
  v3 = [(SearchUIHeroCardSectionViewAccessibility *)self _axApplicationForBundleIdentifier:d];
  if (v3 - 1 > 0x15)
  {
    return @"app.generic";
  }

  else
  {
    return off_29F2F4ED0[v3 - 1];
  }
}

- (unint64_t)_axApplicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _axCachedBundleIdentifiers = [(SearchUIHeroCardSectionViewAccessibility *)self _axCachedBundleIdentifiers];
  v6 = [_axCachedBundleIdentifiers objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = [_axCachedBundleIdentifiers objectForKeyedSubscript:identifierCopy];
    intValue = [v7 intValue];

    goto LABEL_12;
  }

  if (_axApplicationForBundleIdentifier__onceToken == -1)
  {
    if (_axCachedBundleIdentifiers)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [SearchUIHeroCardSectionViewAccessibility _axApplicationForBundleIdentifier:];
  if (!_axCachedBundleIdentifiers)
  {
LABEL_5:
    v9 = objc_opt_new();
    [(SearchUIHeroCardSectionViewAccessibility *)self _axSetCachedBundleIdentifiers:v9];
  }

LABEL_6:
  v10 = 0;
  do
  {
    v21 = 0;
    objc_opt_class();
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    AXPerformSafeBlock();
    v11 = v16[5];
    _Block_object_dispose(&v15, 8);

    v12 = __UIAccessibilityCastAsClass();

    if (v21 == 1)
    {
      abort();
    }

    if ([v12 isEqualToString:identifierCopy])
    {
      v13 = [MEMORY[0x29EDBA070] numberWithInt:v10];
      [_axCachedBundleIdentifiers setObject:v13 forKeyedSubscript:identifierCopy];
    }

    v10 = (v10 + 1);
  }

  while (v10 != 23);
  intValue = 0;
LABEL_12:

  return intValue;
}

Class __78__SearchUIHeroCardSectionViewAccessibility__axApplicationForBundleIdentifier___block_invoke()
{
  result = NSClassFromString(&cfstr_Searchuiutilit.isa);
  _axApplicationForBundleIdentifier__searchUIUtilities = result;
  return result;
}

uint64_t __78__SearchUIHeroCardSectionViewAccessibility__axApplicationForBundleIdentifier___block_invoke_452(uint64_t a1)
{
  v2 = [_axApplicationForBundleIdentifier__searchUIUtilities bundleIdentifierForApp:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end