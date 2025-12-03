@interface AXInvertColors_SearchUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SearchUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIImageView"];
  [validationsCopy validateClass:@"SearchUIImageView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SearchUITableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UITableViewCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SearchUILabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"SearchUITableViewCell" hasInstanceMethod:@"supportsRecycling" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SearchUIResultsCollectionViewController" isKindOfClass:@"SearchUICollectionViewController"];
  [validationsCopy validateClass:@"SearchUICollectionViewController" hasInstanceMethod:@"cellForRowModel:atIndexPath:" withFullSignature:{"@", "@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SearchUITableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SearchUIHomeScreenAppIconViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SearchUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SearchUIResultsCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end