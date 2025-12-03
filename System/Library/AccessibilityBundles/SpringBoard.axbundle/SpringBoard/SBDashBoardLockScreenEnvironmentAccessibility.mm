@interface SBDashBoardLockScreenEnvironmentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setInScreenOffMode:(BOOL)mode forAutoUnlock:(BOOL)unlock fromUnlockSource:(int)source;
@end

@implementation SBDashBoardLockScreenEnvironmentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBLockScreenManager"];
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_shouldPlayLockSound" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBDashBoardLockScreenEnvironment" conformsToProtocol:@"SBLockScreenBacklightControlling"];
  [validationsCopy validateClass:@"SBDashBoardLockScreenEnvironment" hasInstanceMethod:@"setInScreenOffMode:forAutoUnlock:fromUnlockSource:" withFullSignature:{"v", "B", "B", "i", 0}];
}

- (void)setInScreenOffMode:(BOOL)mode forAutoUnlock:(BOOL)unlock fromUnlockSource:(int)source
{
  v5 = *&source;
  unlockCopy = unlock;
  modeCopy = mode;
  v25[2] = *MEMORY[0x29EDCA608];
  v9 = +[AXSpringBoardGlue sharedInstance];
  isUILocked = [v9 isUILocked];

  v21.receiver = self;
  v21.super_class = SBDashBoardLockScreenEnvironmentAccessibility;
  [(SBDashBoardLockScreenEnvironmentAccessibility *)&v21 setInScreenOffMode:modeCopy forAutoUnlock:unlockCopy fromUnlockSource:v5];
  if (modeCopy)
  {
    v11 = +[AXSpringBoardGlue sharedInstance];
    lastLockSource = [v11 lastLockSource];

    if (AXSpringBoardScreenCurtainIsBeingEnabled())
    {
      return;
    }

    v13 = lastLockSource == 15;
    v14 = *MEMORY[0x29EDC74A0];
    v24[0] = @"isUserLocked";
    v15 = [MEMORY[0x29EDBA070] numberWithBool:(v13 | isUILocked) & 1];
    v24[1] = @"playLockSound";
    v25[0] = v15;
    v16 = MEMORY[0x29EDBA070];
    v17 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstance"];
    v18 = [v16 numberWithBool:{objc_msgSend(v17, "safeBoolForKey:", @"_shouldPlayLockSound"}];
    v25[1] = v18;
    v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    UIAccessibilityPostNotification(v14, v19);
  }

  else
  {
    if (AXSpringBoardScreenCurtainIsBeingEnabled())
    {
      return;
    }

    v20 = *MEMORY[0x29EDC74A8];
    v22 = @"isUserLocked";
    v15 = [MEMORY[0x29EDBA070] numberWithBool:isUILocked];
    v23 = v15;
    v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    UIAccessibilityPostNotification(v20, v17);
  }
}

@end