@interface TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility *)self safeValueForKey:@"collectionView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility;
  [(TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end