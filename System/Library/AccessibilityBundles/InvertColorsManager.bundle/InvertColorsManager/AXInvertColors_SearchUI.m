@interface AXInvertColors_SearchUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SearchUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIImageView"];
  [v3 validateClass:@"SearchUIImageView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SearchUITableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UITableViewCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SearchUILabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"SearchUITableViewCell" hasInstanceMethod:@"supportsRecycling" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SearchUIResultsCollectionViewController" isKindOfClass:@"SearchUICollectionViewController"];
  [v3 validateClass:@"SearchUICollectionViewController" hasInstanceMethod:@"cellForRowModel:atIndexPath:" withFullSignature:{"@", "@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SearchUITableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SearchUIHomeScreenAppIconViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SearchUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SearchUIResultsCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end