@interface TUIEmojiSearchResultCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TUIEmojiSearchResultCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TUIEmojiSearchResultCollectionViewCellAccessibility *)self safeValueForKey:@"emojiLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end