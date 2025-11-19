@interface PUVideoEditViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateButtonsIfNeeded;
@end

@implementation PUVideoEditViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUVideoEditViewController" hasInstanceVariable:@"_playButton" withType:"UIButton"];
  [v3 validateClass:@"PUVideoEditViewController" hasInstanceMethod:@"_updateButtonsIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUVideoEditViewController" hasInstanceMethod:@"_playerIsPlaying" withFullSignature:{"B", 0}];
}

- (void)_updateButtonsIfNeeded
{
  v13.receiver = self;
  v13.super_class = PUVideoEditViewControllerAccessibility;
  [(PUVideoEditViewControllerAccessibility *)&v13 _updateButtonsIfNeeded];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  AXPerformSafeBlock();
  v3 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v4 = @"video.edit.play";
  if (v3)
  {
    v4 = @"video.edit.pause";
  }

  v5 = v4;
  v6 = [(PUVideoEditViewControllerAccessibility *)self safeValueForKey:@"_playButton", v8, 3221225472, __64__PUVideoEditViewControllerAccessibility__updateButtonsIfNeeded__block_invoke, &unk_29F2E5610, self, &v9];
  v7 = accessibilityPhotosEditUILocalizedString(v5);

  [v6 setAccessibilityLabel:v7];
}

uint64_t __64__PUVideoEditViewControllerAccessibility__updateButtonsIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _playerIsPlaying];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end