@interface SearchUIResultsCollectionViewControllerInvertColorsAccessibility
- (id)cellForRowModel:(id)model atIndexPath:(id)path;
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation SearchUIResultsCollectionViewControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SearchUIResultsCollectionViewControllerInvertColorsAccessibility;
  [(SearchUIResultsCollectionViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(SearchUIResultsCollectionViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(SearchUIResultsCollectionViewControllerInvertColorsAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  if (_AXSInvertColorsEnabledGlobalCached())
  {
    [UIColor colorWithWhite:0.0 alpha:0.3];
  }

  else
  {
    +[UIColor clearColor];
  }
  v5 = ;
  [v4 setBackgroundColor:v5];

  [v4 setAccessibilityIgnoresInvertColors:_AXSInvertColorsEnabledGlobalCached() != 0];
}

- (id)cellForRowModel:(id)model atIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = SearchUIResultsCollectionViewControllerInvertColorsAccessibility;
  v5 = [(SearchUIResultsCollectionViewControllerInvertColorsAccessibility *)&v7 cellForRowModel:model atIndexPath:path];
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    [(SearchUIResultsCollectionViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  }

  return v5;
}

@end