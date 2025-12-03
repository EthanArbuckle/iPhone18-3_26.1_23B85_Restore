@interface AXInvertColors_Animoji
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Animoji

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PuppetCollectionViewCell"];
  [validationsCopy validateClass:@"PuppetCollectionViewCell" hasInstanceMethod:@"pickerView:viewForRow:forComponent:reusingView:" withFullSignature:{"@", "q", "q", "@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PuppetCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PuppetPickerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end