@interface TUIEmojiSearchResultCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TUIEmojiSearchResultCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TUIEmojiSearchResultCollectionViewCellAccessibility *)self safeValueForKey:@"emojiLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end