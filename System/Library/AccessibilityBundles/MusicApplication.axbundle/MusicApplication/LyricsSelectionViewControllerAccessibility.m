@interface LyricsSelectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilityDidSelectItem;
@end

@implementation LyricsSelectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.LyricsSelectionViewController" hasInstanceMethod:@"accessibilityCharacterCount" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MusicApplication.LyricsSelectionViewController" hasInstanceMethod:@"accessibilityDidSelectItem" withFullSignature:{"v", 0}];
}

- (void)accessibilityDidSelectItem
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __72__LyricsSelectionViewControllerAccessibility_accessibilityDidSelectItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeIntegerForKey:@"accessibilityCharacterCount"];

  v3 = accessibilityMusicLocalizedString(@"lyrics.sharing.characters.remaining");
  v2 = AXCFormattedString();
  UIAccessibilitySpeakOrQueueIfNeeded();
}

@end