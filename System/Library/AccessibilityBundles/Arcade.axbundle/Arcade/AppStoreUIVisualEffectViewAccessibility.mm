@interface AppStoreUIVisualEffectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)isArticleBackgroundView;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (int64_t)accessibilityContainerType;
@end

@implementation AppStoreUIVisualEffectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.ArticlePagePresentationController"];
  [validationsCopy validateClass:@"UITransitionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.ArticlePagePresentationController" isKindOfClass:@"UIPresentationController"];
}

- (BOOL)isArticleBackgroundView
{
  v3 = [(AppStoreUIVisualEffectViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];

  if (!v3)
  {
    return 0;
  }

  [(AppStoreUIVisualEffectViewAccessibility *)self safeCGRectForKey:@"frame"];
  v5 = v4;
  v7 = v6;
  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
  [mainScreen bounds];
  v10 = v9;
  v12 = v11;

  return v7 == v12 && v5 == v10;
}

uint64_t __66__AppStoreUIVisualEffectViewAccessibility_isArticleBackgroundView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"delegate"];
    MEMORY[0x29C2C9570](@"AppStore.ArticlePagePresentationController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isAccessibilityElement
{
  if ([(AppStoreUIVisualEffectViewAccessibility *)self isArticleBackgroundView])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = AppStoreUIVisualEffectViewAccessibility;
  return [(AppStoreUIVisualEffectViewAccessibility *)&v4 isAccessibilityElement];
}

- (int64_t)accessibilityContainerType
{
  if ([(AppStoreUIVisualEffectViewAccessibility *)self isArticleBackgroundView])
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = AppStoreUIVisualEffectViewAccessibility;
  return [(AppStoreUIVisualEffectViewAccessibility *)&v4 accessibilityContainerType];
}

- (id)accessibilityLabel
{
  if ([(AppStoreUIVisualEffectViewAccessibility *)self isArticleBackgroundView])
  {
    accessibilityLabel = accessibilityAppStoreLocalizedString(@"popover.view.dismiss.article");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AppStoreUIVisualEffectViewAccessibility;
    accessibilityLabel = [(AppStoreUIVisualEffectViewAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityIdentifier
{
  if ([(AppStoreUIVisualEffectViewAccessibility *)self isArticleBackgroundView])
  {
    accessibilityIdentifier = @"PopoverDismissArticle";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AppStoreUIVisualEffectViewAccessibility;
    accessibilityIdentifier = [(AppStoreUIVisualEffectViewAccessibility *)&v5 accessibilityIdentifier];
  }

  return accessibilityIdentifier;
}

- (id)accessibilityHint
{
  if ([(AppStoreUIVisualEffectViewAccessibility *)self isArticleBackgroundView])
  {
    accessibilityHint = accessibilityAppStoreLocalizedString(@"popover.view.dismiss.article.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AppStoreUIVisualEffectViewAccessibility;
    accessibilityHint = [(AppStoreUIVisualEffectViewAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)accessibilityUserInputLabels
{
  v2 = accessibilityAppStoreLocalizedString(@"popover.view.dismiss.article.user.input");
  v3 = MEMORY[0x29C2C9580]();

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = [(AppStoreUIVisualEffectViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_327 startWithSelf:0];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"delegate"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeValueForKey:@"presentedViewController"];
  [v5 dismissViewControllerAnimated:1 completion:0];

  return 1;
}

uint64_t __64__AppStoreUIVisualEffectViewAccessibility_accessibilityActivate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"delegate"];
    MEMORY[0x29C2C9570](@"AppStore.ArticlePagePresentationController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end