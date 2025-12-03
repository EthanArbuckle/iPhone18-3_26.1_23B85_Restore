@interface AXInvertColors_TextInputUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_TextInputUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUIPredictionView" hasInstanceMethod:@"configurePredictionCell:forCandidate:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"TUIPredictionViewCell" hasProperty:@"candidate" withType:"@"];
  [validationsCopy validateClass:@"TIKeyboardCandidate" hasInstanceMethod:@"isEmojiCandidate" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TUIPredictionViewCell" hasInstanceMethod:@"highlighted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TUIPredictionViewCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"TUIEmojiSearchResultsCollectionViewController" isKindOfClass:@"UICollectionViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"TUIPredictionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end