@interface CKSearchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)setCollectionViewAXLabelForSearch:(id)search;
- (void)setSearchText:(id)text;
@end

@implementation CKSearchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKSearchViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKSearchViewController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"CKSearchViewController" hasInstanceMethod:@"setSearchText:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CKSearchViewControllerAccessibility;
  [(CKSearchViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CKSearchViewControllerAccessibility *)self setCollectionViewAXLabelForSearch:0];
}

- (void)setCollectionViewAXLabelForSearch:(id)search
{
  searchCopy = search;
  v4 = [(CKSearchViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  if ([searchCopy length])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"group.search.collection");
    searchCopy = [v5 stringWithFormat:v6, searchCopy];
    [v4 setAccessibilityLabel:searchCopy];
  }

  else
  {
    v6 = accessibilityLocalizedString(@"group.suggestions.collection");
    [v4 setAccessibilityLabel:v6];
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKSearchViewControllerAccessibility;
  [(CKSearchViewControllerAccessibility *)&v3 loadView];
  [(CKSearchViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setSearchText:(id)text
{
  v5.receiver = self;
  v5.super_class = CKSearchViewControllerAccessibility;
  textCopy = text;
  [(CKSearchViewControllerAccessibility *)&v5 setSearchText:textCopy];
  [(CKSearchViewControllerAccessibility *)self setCollectionViewAXLabelForSearch:textCopy, v5.receiver, v5.super_class];
}

@end