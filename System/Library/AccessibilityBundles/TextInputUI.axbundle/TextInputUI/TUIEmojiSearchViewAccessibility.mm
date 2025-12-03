@interface TUIEmojiSearchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axInstallAccessibilityLabels;
- (void)addButtons;
- (void)updatePlaceholder;
@end

@implementation TUIEmojiSearchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUIEmojiSearchView" hasInstanceMethod:@"addButtons" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"TUIEmojiSearchView" hasInstanceVariable:@"_searchTextField" withType:"TUIEmojiSearchTextField"];
  [validationsCopy validateClass:@"_UIScenePresentationView"];
  [validationsCopy validateClass:@"TUIEmojiSearchView" hasInstanceMethod:@"updatePlaceholder" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = TUIEmojiSearchViewAccessibility;
  [(TUIEmojiSearchViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(TUIEmojiSearchViewAccessibility *)self _axInstallAccessibilityLabels];
}

- (void)_axInstallAccessibilityLabels
{
  objc_opt_class();
  v3 = [(TUIEmojiSearchViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLocalizedString(@"create.emoji");
  [v4 setAccessibilityLabel:v5];
}

uint64_t __64__TUIEmojiSearchViewAccessibility__axInstallAccessibilityLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 configuration];
  v5 = [v4 image];
  v6 = [v5 safeValueForKey:@"_imageAsset"];
  v7 = [v6 safeValueForKey:@"assetName"];
  v8 = [v7 isEqualToString:@"emoji.face.grinning"];

  return v8;
}

- (void)updatePlaceholder
{
  v10.receiver = self;
  v10.super_class = TUIEmojiSearchViewAccessibility;
  [(TUIEmojiSearchViewAccessibility *)&v10 updatePlaceholder];
  v3 = [(TUIEmojiSearchViewAccessibility *)self safeValueForKey:@"_searchTextField"];
  v4 = [(TUIEmojiSearchViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_318];
  objc_initWeak(&location, v3);
  objc_initWeak(&from, v4);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __52__TUIEmojiSearchViewAccessibility_updatePlaceholder__block_invoke_2;
  v5[3] = &unk_29F30A030;
  objc_copyWeak(&v6, &from);
  objc_copyWeak(&v7, &location);
  [v4 _setAccessibilityFrameForSortingBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

uint64_t __52__TUIEmojiSearchViewAccessibility_updatePlaceholder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessibilityContainer];
  v4 = [v3 accessibilityContainer];

  MEMORY[0x29ED3C2C0](@"_UIScenePresentationView");
  LOBYTE(v3) = objc_opt_isKindOfClass();

  if (v3)
  {
    v5 = [v4 _accessibilityViewController];
    MEMORY[0x29ED3C2C0](@"STKStickerRemoteSearchViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

double __52__TUIEmojiSearchViewAccessibility_updatePlaceholder__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  CGRectGetMaxY(v13);
  return v5;
}

- (void)addButtons
{
  v3.receiver = self;
  v3.super_class = TUIEmojiSearchViewAccessibility;
  [(TUIEmojiSearchViewAccessibility *)&v3 addButtons];
  [(TUIEmojiSearchViewAccessibility *)self _axInstallAccessibilityLabels];
}

@end