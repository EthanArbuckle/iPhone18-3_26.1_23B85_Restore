@interface SBDashBoardLockScreenEnvironmentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5;
@end

@implementation SBDashBoardLockScreenEnvironmentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBLockScreenManager"];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_shouldPlayLockSound" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBDashBoardLockScreenEnvironment" conformsToProtocol:@"SBLockScreenBacklightControlling"];
  [v3 validateClass:@"SBDashBoardLockScreenEnvironment" hasInstanceMethod:@"setInScreenOffMode:forAutoUnlock:fromUnlockSource:" withFullSignature:{"v", "B", "B", "i", 0}];
}

- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v7 = a3;
  v25[2] = *MEMORY[0x29EDCA608];
  v9 = +[AXSpringBoardGlue sharedInstance];
  v10 = [v9 isUILocked];

  v21.receiver = self;
  v21.super_class = SBDashBoardLockScreenEnvironmentAccessibility;
  [(SBDashBoardLockScreenEnvironmentAccessibility *)&v21 setInScreenOffMode:v7 forAutoUnlock:v6 fromUnlockSource:v5];
  if (v7)
  {
    v11 = +[AXSpringBoardGlue sharedInstance];
    v12 = [v11 lastLockSource];

    if (AXSpringBoardScreenCurtainIsBeingEnabled())
    {
      return;
    }

    v13 = v12 == 15;
    v14 = *MEMORY[0x29EDC74A0];
    v24[0] = @"isUserLocked";
    v15 = [MEMORY[0x29EDBA070] numberWithBool:(v13 | v10) & 1];
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
    v15 = [MEMORY[0x29EDBA070] numberWithBool:v10];
    v23 = v15;
    v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    UIAccessibilityPostNotification(v20, v17);
  }
}

@end