@interface SBFolderControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityCancelSBAXClosingFolderTimer;
- (void)_accessibilityScheduleSBAXClosingFolderTimer;
- (void)_cancelCloseFolderTimer;
- (void)_closeFolderTimerFired;
- (void)_setCloseFolderTimerIfNecessary;
- (void)folderViewDidEndScrolling:(id)a3;
- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)a3;
@end

@implementation SBFolderControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SBFolderController" hasInstanceMethod:@"folderViewDidEndScrolling:" withFullSignature:{"v", "@", 0}];
}

- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = AXSBIconControllerSharedInstance();
  v6 = [v5 _accessibilityIconListIndex];

  if (v6)
  {
    v7 = *MEMORY[0x29EDC7F10];
    v8 = accessibilityLocalizedString(@"home");
    UIAccessibilityPostNotification(v7, v8);
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v9.receiver = self;
  v9.super_class = SBFolderControllerAccessibility;
  [(SBFolderControllerAccessibility *)&v9 scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:v4];
}

void __102__SBFolderControllerAccessibility_scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler___block_invoke()
{
  v0 = *MEMORY[0x29EDC7F10];
  v1 = accessibilityLocalizedString(@"home");
  UIAccessibilityPostNotification(v0, v1);
}

- (void)_closeFolderTimerFired
{
  v2.receiver = self;
  v2.super_class = SBFolderControllerAccessibility;
  [(SBFolderControllerAccessibility *)&v2 _closeFolderTimerFired];
  SBAXIconCloseFolderTimerStatus = 0;
}

- (void)_setCloseFolderTimerIfNecessary
{
  v3 = [(SBFolderControllerAccessibility *)self safeValueForKey:@"_closeFolderTimer"];

  v16.receiver = self;
  v16.super_class = SBFolderControllerAccessibility;
  [(SBFolderControllerAccessibility *)&v16 _setCloseFolderTimerIfNecessary];
  if ((SBAXPerformingAXDrag & 1) == 0)
  {
    v4 = [(SBFolderControllerAccessibility *)self safeValueForKey:@"_closeFolderTimer"];
    if (!v3 && UIAccessibilityIsVoiceOverRunning())
    {
      v5 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:5.0];
      [v4 setFireDate:v5];

      [(SBFolderControllerAccessibility *)self _accessibilityScheduleSBAXClosingFolderTimer];
    }

    SBAXIconCloseFolderTimerStatus = 1;
    SBHAXCancelSBAXIconMoveSpeakTimer();
    if (v4)
    {
      v6 = AXSBHIconManagerFromSharedIconController();
      v7 = [v6 safeValueForKey:@"openedFolder"];

      if (v7)
      {
        v8 = MEMORY[0x29EDBA0F8];
        v9 = accessibilityLocalizedString(@"dragged.outside.folder");
        v10 = [v7 safeValueForKey:@"displayName"];
        v11 = [v8 localizedStringWithFormat:v9, v10];

        v12 = MEMORY[0x29EDBA0F8];
        v13 = accessibilityLocalizedString(@"dragged.outside.folder.hint");
        v14 = [v12 localizedStringWithFormat:v13, 5];

        LODWORD(v13) = *MEMORY[0x29EDC7EA8];
        v15 = __UIAXStringForVariables();
        UIAccessibilityPostNotification(v13, v15);
      }
    }
  }
}

- (void)_cancelCloseFolderTimer
{
  v3.receiver = self;
  v3.super_class = SBFolderControllerAccessibility;
  [(SBFolderControllerAccessibility *)&v3 _cancelCloseFolderTimer];
  [(SBFolderControllerAccessibility *)self _accessibilityCancelSBAXClosingFolderTimer];
  SBAXIconCloseFolderTimerStatus = 2;
}

- (void)_accessibilityCancelSBAXClosingFolderTimer
{
  [SBAXClosingFolderTimer invalidate];
  v2 = SBAXClosingFolderTimer;
  SBAXClosingFolderTimer = 0;
}

- (void)_accessibilityScheduleSBAXClosingFolderTimer
{
  if (SBAXClosingFolderTimer)
  {
    [(SBFolderControllerAccessibility *)self _accessibilityCancelSBAXClosingFolderTimer];
  }

  SBAXClosingFolderTimer = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__accessibilitySBAXClosingFolderTimerFired_ selector:0 userInfo:1 repeats:1.25];

  MEMORY[0x2A1C71028]();
}

- (void)folderViewDidEndScrolling:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBFolderControllerAccessibility;
  [(SBFolderControllerAccessibility *)&v10 folderViewDidEndScrolling:a3];
  v3 = AXSBIconControllerSharedInstance();
  v4 = [v3 _axDragManager];
  v5 = [v4 _axGrabbedIcons];

  if ([v5 count] && (SBAXPerformingAXDrag & 1) == 0)
  {
    v6 = [v3 _accessibilityIconListIndex] + 1;
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"icon.finished.scroll");
    v9 = [v7 localizedStringWithFormat:v8, v6];

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

@end