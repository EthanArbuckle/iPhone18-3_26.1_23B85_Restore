@interface TUIEmojiSearchResultsCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation TUIEmojiSearchResultsCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUIEmojiSearchResultsCollectionViewController" hasInstanceMethod:@"setDisplayedEmojis:verbatimSkinTones:animated:" withFullSignature:{"v", "@", "B", "B", 0}];
  [v3 validateClass:@"TUIEmojiSearchResultsCollectionViewController" isKindOfClass:@"UIViewController"];
}

void __108__TUIEmojiSearchResultsCollectionViewControllerAccessibility_setDisplayedEmojis_verbatimSkinTones_animated___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"emojis.found");
  v3 = [v2 localizedStringWithFormat:v4, objc_msgSend(*(a1 + 32), "count")];
  UIAccessibilitySpeakOrQueueIfNeeded();
}

@end