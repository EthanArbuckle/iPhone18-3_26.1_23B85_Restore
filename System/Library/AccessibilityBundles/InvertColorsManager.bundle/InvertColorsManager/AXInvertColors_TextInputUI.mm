@interface AXInvertColors_TextInputUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_TextInputUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUIPredictionView" hasInstanceMethod:@"configurePredictionCell:forCandidate:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"TUIPredictionViewCell" hasProperty:@"candidate" withType:"@"];
  [v3 validateClass:@"TIKeyboardCandidate" hasInstanceMethod:@"isEmojiCandidate" withFullSignature:{"B", 0}];
  [v3 validateClass:@"TUIPredictionViewCell" hasInstanceMethod:@"highlighted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"TUIPredictionViewCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"TUIEmojiSearchResultsCollectionViewController" isKindOfClass:@"UICollectionViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"TUIPredictionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"TUIEmojiSearchResultsCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end