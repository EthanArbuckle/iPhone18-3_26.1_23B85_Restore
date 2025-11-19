@interface NCNotificationLongLookViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (Class)_axNotificationBannerWindowClass;
- (Class)_axPagedScrollViewClass;
- (Class)_ax_UIInteractiveHighlightContentViewClass;
- (id)_axLongLookView;
- (id)_axModalAncestorsForLongLookView:(id)a3;
@end

@implementation NCNotificationLongLookViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBFPagedScrollView"];
    [v3 validateClass:@"SBBannerWindow"];
  }

  [v3 validateClass:@"_UIInteractiveHighlightContentView"];
  [v3 validateClass:@"NCNotificationLongLookViewController" isKindOfClass:@"UIViewController"];
}

- (id)_axLongLookView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];

  return v3;
}

- (id)_axModalAncestorsForLongLookView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v6 = [v4 _accessibilityWindow];
  [(NCNotificationLongLookViewControllerAccessibility *)self _axNotificationBannerWindowClass];
  if (objc_opt_isKindOfClass())
  {
    [v5 addObject:v6];
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __86__NCNotificationLongLookViewControllerAccessibility__axModalAncestorsForLongLookView___block_invoke;
  v12[3] = &unk_29F317178;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  v8 = [v4 _accessibilityFindViewAncestor:v12 startWithSelf:1];
  v9 = v13;
  v10 = v7;

  return v7;
}

uint64_t __86__NCNotificationLongLookViewControllerAccessibility__axModalAncestorsForLongLookView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  [*(a1 + 32) _ax_UIInteractiveHighlightContentViewClass];
  if (objc_opt_isKindOfClass() & 1) != 0 || ([*(a1 + 32) _axPagedScrollViewClass], (objc_opt_isKindOfClass()))
  {
    [*(a1 + 40) addObject:v5];
    if ([*(a1 + 40) count] == 2)
    {
      *a3 = 1;
    }
  }

  return 0;
}

- (Class)_ax_UIInteractiveHighlightContentViewClass
{
  if (_ax_UIInteractiveHighlightContentViewClass_onceToken != -1)
  {
    [NCNotificationLongLookViewControllerAccessibility _ax_UIInteractiveHighlightContentViewClass];
  }

  v3 = _ax_UIInteractiveHighlightContentViewClass__UIInteractiveHighlightContentViewClass;

  return v3;
}

Class __95__NCNotificationLongLookViewControllerAccessibility__ax_UIInteractiveHighlightContentViewClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Uiinteractiveh.isa);
  _ax_UIInteractiveHighlightContentViewClass__UIInteractiveHighlightContentViewClass = result;
  return result;
}

- (Class)_axPagedScrollViewClass
{
  if (_axPagedScrollViewClass_onceToken != -1)
  {
    [NCNotificationLongLookViewControllerAccessibility _axPagedScrollViewClass];
  }

  v3 = _axPagedScrollViewClass_SBFPagedScrollViewClass;

  return v3;
}

Class __76__NCNotificationLongLookViewControllerAccessibility__axPagedScrollViewClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbfpagedscroll.isa);
  _axPagedScrollViewClass_SBFPagedScrollViewClass = result;
  return result;
}

- (Class)_axNotificationBannerWindowClass
{
  if (_axNotificationBannerWindowClass_onceToken != -1)
  {
    [NCNotificationLongLookViewControllerAccessibility _axNotificationBannerWindowClass];
  }

  v3 = _axNotificationBannerWindowClass_SBBannerWindowClass;

  return v3;
}

Class __85__NCNotificationLongLookViewControllerAccessibility__axNotificationBannerWindowClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbbannerwindow.isa);
  _axNotificationBannerWindowClass_SBBannerWindowClass = result;
  return result;
}

@end