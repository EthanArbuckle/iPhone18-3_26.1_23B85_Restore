@interface WBSFluidProgressControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axHandleProgressUpdate:(id)update;
- (void)_updateFluidProgressWithProgressStateSource:(id)source;
- (void)finishFluidProgressWithProgressStateSource:(id)source;
@end

@implementation WBSFluidProgressControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WBSFluidProgressController" hasInstanceMethod:@"finishFluidProgressWithProgressStateSource:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WBSFluidProgressController" hasInstanceMethod:@"_updateFluidProgressWithProgressStateSource:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WBSFluidProgressController" hasInstanceMethod:@"_sendUpdateFluidProgressToObservers:progressState:source:updateAnimationPhase:" withFullSignature:{"v", "@", "@", "@", "B", 0}];
}

- (void)finishFluidProgressWithProgressStateSource:(id)source
{
  v7.receiver = self;
  v7.super_class = WBSFluidProgressControllerAccessibility;
  sourceCopy = source;
  [(WBSFluidProgressControllerAccessibility *)&v7 finishFluidProgressWithProgressStateSource:sourceCopy];
  v5 = AXLogAppAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WBSFluidProgressControllerAccessibility finishFluidProgressWithProgressStateSource:v5];
  }

  progressState = [sourceCopy progressState];

  [(WBSFluidProgressControllerAccessibility *)self _axHandleProgressUpdate:progressState];
}

- (void)_updateFluidProgressWithProgressStateSource:(id)source
{
  sourceCopy = source;
  v5 = AXLogAppAccessibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(WBSFluidProgressControllerAccessibility *)sourceCopy _updateFluidProgressWithProgressStateSource:v5];
  }

  v7.receiver = self;
  v7.super_class = WBSFluidProgressControllerAccessibility;
  [(WBSFluidProgressControllerAccessibility *)&v7 _updateFluidProgressWithProgressStateSource:sourceCopy];
  progressState = [sourceCopy progressState];
  [(WBSFluidProgressControllerAccessibility *)self _axHandleProgressUpdate:progressState];
}

- (void)_axHandleProgressUpdate:(id)update
{
  v24 = *MEMORY[0x29EDCA608];
  updateCopy = update;
  v4 = updateCopy;
  if (updateCopy)
  {
    [updateCopy updateFluidProgressValue];
    v5 = AXLogAppAccessibility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x29EDBA070];
      [v4 fluidProgressValue];
      v7 = [v6 numberWithDouble:?];
      v8 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v4, "hasCompletedLoad")}];
      *buf = 138412802;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_29C224000, v5, OS_LOG_TYPE_INFO, "Update fluid progress: %@ %@ %@ ", buf, 0x20u);
    }

    if ([v4 hasCompletedLoad])
    {
      v9 = &unk_2A22C8718;
    }

    else
    {
      v10 = MEMORY[0x29EDBA070];
      [v4 fluidProgressValue];
      v9 = [v10 numberWithDouble:?];
    }

    loadURL = [v4 loadURL];
    v12 = loadURL;
    v13 = &stru_2A22C8548;
    if (loadURL)
    {
      v13 = loadURL;
    }

    v17[1] = v13;
    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:2];
    UIAccessibilityPostNotification(0x430u, v14);

    UIAccessibilityPostNotification(*MEMORY[0x29EDC75E8], v9);
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)_updateFluidProgressWithProgressStateSource:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDBA070];
  [a1 estimatedProgress];
  v4 = [v3 numberWithDouble:?];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_29C224000, a2, OS_LOG_TYPE_DEBUG, "_updateFluidProgressWithProgressStateSource %@", &v6, 0xCu);

  v5 = *MEMORY[0x29EDCA608];
}

@end