@interface AXInvertColors_MediaControls
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MediaControls

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"MediaControlsMaterialView" hasInstanceMethod:@"_setContinuousCornerRadius:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"MediaControlsHeaderView" hasInstanceVariable:@"_artworkView" withType:"UIImageView"];
  [validationsCopy validateClass:@"MediaControlsMaterialView" hasInstanceVariable:@"_backgroundView" withType:"UIView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"MediaControlsHeaderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"MediaControlsMaterialViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"MRUArtworkViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end