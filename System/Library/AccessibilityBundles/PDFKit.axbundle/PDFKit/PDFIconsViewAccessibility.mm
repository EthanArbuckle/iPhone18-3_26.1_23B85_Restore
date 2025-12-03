@interface PDFIconsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateScrubberForPageIndex:(int)index goToPage:(BOOL)page;
@end

@implementation PDFIconsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PDFIconsView" hasInstanceMethod:@"_updateScrubberForPageIndex:goToPage:" withFullSignature:{"v", "i", "B", 0}];
  [validationsCopy validateClass:@"PDFThumbnailView"];
}

- (void)_updateScrubberForPageIndex:(int)index goToPage:(BOOL)page
{
  v14.receiver = self;
  v14.super_class = PDFIconsViewAccessibility;
  [(PDFIconsViewAccessibility *)&v14 _updateScrubberForPageIndex:*&index goToPage:page];
  _accessibilityAnnouncementTimer = [(PDFIconsViewAccessibility *)self _accessibilityAnnouncementTimer];
  if (!_accessibilityAnnouncementTimer)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD6A0]);
    _accessibilityAnnouncementTimer = [v6 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(PDFIconsViewAccessibility *)self _accessibilitySetAnnouncementTimer:_accessibilityAnnouncementTimer];
  }

  v7 = [(PDFIconsViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_0 startWithSelf:1];
  accessibilityValue = [v7 accessibilityValue];
  objc_initWeak(&location, v7);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __66__PDFIconsViewAccessibility__updateScrubberForPageIndex_goToPage___block_invoke_2;
  v10[3] = &unk_29F2E08D8;
  objc_copyWeak(&v12, &location);
  v9 = accessibilityValue;
  v11 = v9;
  [_accessibilityAnnouncementTimer afterDelay:v10 processBlock:0.1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __66__PDFIconsViewAccessibility__updateScrubberForPageIndex_goToPage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E4220](@"PDFThumbnailView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __66__PDFIconsViewAccessibility__updateScrubberForPageIndex_goToPage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  argument = [WeakRetained accessibilityValue];

  if (([argument isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  }
}

@end