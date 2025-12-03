@interface SBAppThumbnailViewAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)_showQuitButton:(BOOL)button;
@end

@implementation SBAppThumbnailViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SBAppThumbnailViewAccessibility *)self safeValueForKey:@"_label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  v2 = [(SBAppThumbnailViewAccessibility *)self safeValueForKey:@"isShowingQuitButton"];
  bOOLValue = [v2 BOOLValue];

  if (bOOLValue)
  {
    v4 = @"phone.favorite.icon.quit.hint";
  }

  else
  {
    v4 = @"phone.favorite.icon.launch.hint";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(SBAppThumbnailViewAccessibility *)self safeValueForKey:@"isShowingQuitButton"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = [(SBAppThumbnailViewAccessibility *)self safeValueForKey:@"_quitButton"];
    [v5 accessibilityActivationPoint];
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBAppThumbnailViewAccessibility;
    [(SBAppThumbnailViewAccessibility *)&v12 accessibilityActivationPoint];
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_showQuitButton:(BOOL)button
{
  buttonCopy = button;
  v5 = [(SBAppThumbnailViewAccessibility *)self safeValueForKey:@"isShowingQuitButton"];
  bOOLValue = [v5 BOOLValue];

  v12.receiver = self;
  v12.super_class = SBAppThumbnailViewAccessibility;
  [(SBAppThumbnailViewAccessibility *)&v12 _showQuitButton:buttonCopy];
  if (buttonCopy && (bOOLValue & 1) == 0)
  {
    v7 = [(SBAppThumbnailViewAccessibility *)self safeValueForKey:@"_quitButton"];
    [v7 setIsAccessibilityElement:0];

    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"started.quit.app.mode");
    accessibilityLabel = [(SBAppThumbnailViewAccessibility *)self accessibilityLabel];
    v11 = [v8 stringWithFormat:v9, accessibilityLabel];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v11);
  }
}

@end