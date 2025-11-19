@interface AXInvertColors_Animoji
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Animoji

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PuppetCollectionViewCell"];
  [v3 validateClass:@"PuppetCollectionViewCell" hasInstanceMethod:@"pickerView:viewForRow:forComponent:reusingView:" withFullSignature:{"@", "q", "q", "@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PuppetCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PuppetPickerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end