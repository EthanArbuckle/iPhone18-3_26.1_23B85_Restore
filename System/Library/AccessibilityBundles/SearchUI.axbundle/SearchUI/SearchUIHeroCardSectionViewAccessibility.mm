@interface SearchUIHeroCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axPerformCustomAction:(id)a3;
- (BOOL)_axWatchListStateForButton:(id)a3;
- (id)_axCommandButtons;
- (id)_axLocalizedKeyForBundleID:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (unint64_t)_axApplicationForBundleIdentifier:(id)a3;
- (void)buttonPressed:(id)a3;
@end

@implementation SearchUIHeroCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SearchUIHeroCardSectionView" hasInstanceMethod:@"punchoutIndicatorImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIImageView"];
  [v3 validateClass:@"SearchUIImageView" hasInstanceMethod:@"currentImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIAppIconImage"];
  [v3 validateClass:@"SearchUIAppIconImage" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIHeroButton"];
  [v3 validateClass:@"SearchUICommandButton"];
  [v3 validateProtocol:@"SearchUICommandButton" hasRequiredInstanceMethod:@"buttonItem"];
  [v3 validateProtocol:@"SFCommandButtonItem" hasRequiredInstanceMethod:@"command"];
  [v3 validateClass:@"SearchUIHeroButton" conformsToProtocol:@"SearchUICommandButton"];
  [v3 validateClass:@"SearchUICommandButton" conformsToProtocol:@"SearchUICommandButton"];
  [v3 validateClass:@"SFToggleWatchListStatusCommand"];
  [v3 validateClass:@"SearchUICommandButton" hasInstanceMethod:@"watchListState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIWatchListState"];
  [v3 validateClass:@"SearchUIWatchListState" hasInstanceMethod:@"isWatchListed" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SearchUIUtilities"];
  [v3 validateClass:@"SearchUIUtilities" hasClassMethod:@"bundleIdentifierForApp:" withFullSignature:{"@", "Q", 0}];
}

- (id)accessibilityValue
{
  v3 = [(SearchUIHeroCardSectionViewAccessibility *)self safeValueForKey:@"punchoutIndicatorImageView"];
  v4 = [v3 safeValueForKey:@"currentImage"];
  v5 = [v4 safeValueForKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [(SearchUIHeroCardSectionViewAccessibility *)self _axLocalizedKeyForBundleID:v5];
    v7 = accessibilityLocalizedString(v6);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIHeroCardSectionViewAccessibility;
    v7 = [(SearchUIHeroCardSectionViewAccessibility *)&v9 accessibilityValue];
  }

  return v7;
}

- (id)accessibilityCustomActions
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [(SearchUIHeroCardSectionViewAccessibility *)self _axCommandButtons];
  v17 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
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

- (BOOL)_axPerformCustomAction:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = [v3 _accessibilityValueForKey:@"AXHeroCommandButtonKey"];
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

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIHeroCardSectionViewAccessibility;
  [(SearchUIHeroCardSectionViewAccessibility *)&v9 buttonPressed:v4];
  v5 = [v4 safeValueForKey:@"command"];
  NSClassFromString(&cfstr_Sftogglewatchl.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(SearchUIHeroCardSectionViewAccessibility *)self _axWatchListStateForButton:v4])
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

- (BOOL)_axWatchListStateForButton:(id)a3
{
  v3 = a3;
  v4 = [v3 safeValueForKey:@"command"];
  NSClassFromString(&cfstr_Sftogglewatchl.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 safeValueForKey:@"watchListState"];
    v6 = [v5 safeBoolForKey:@"isWatchListed"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_axLocalizedKeyForBundleID:(id)a3
{
  v3 = [(SearchUIHeroCardSectionViewAccessibility *)self _axApplicationForBundleIdentifier:a3];
  if (v3 - 1 > 0x15)
  {
    return @"app.generic";
  }

  else
  {
    return off_29F2F4ED0[v3 - 1];
  }
}

- (unint64_t)_axApplicationForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIHeroCardSectionViewAccessibility *)self _axCachedBundleIdentifiers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = [v7 intValue];

    goto LABEL_12;
  }

  if (_axApplicationForBundleIdentifier__onceToken == -1)
  {
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [SearchUIHeroCardSectionViewAccessibility _axApplicationForBundleIdentifier:];
  if (!v5)
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

    if ([v12 isEqualToString:v4])
    {
      v13 = [MEMORY[0x29EDBA070] numberWithInt:v10];
      [v5 setObject:v13 forKeyedSubscript:v4];
    }

    v10 = (v10 + 1);
  }

  while (v10 != 23);
  v8 = 0;
LABEL_12:

  return v8;
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