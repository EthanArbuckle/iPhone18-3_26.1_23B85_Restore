@interface AXCCMotionCuesModule
- (AXCCMotionCuesModule)init;
- (void)openMotionCuesSettings;
@end

@implementation AXCCMotionCuesModule

- (AXCCMotionCuesModule)init
{
  v7.receiver = self;
  v7.super_class = AXCCMotionCuesModule;
  v2 = [(AXCCMotionCuesModule *)&v7 init];
  if (v2)
  {
    v3 = [(CCUIMenuModuleViewController *)[AXCCMotionCuesModuleViewController alloc] initWithNibName:0 bundle:0];
    contentViewController = v2->_contentViewController;
    v2->_contentViewController = v3;

    [(AXCCMotionCuesModuleViewController *)v2->_contentViewController setModule:v2];
    [(AXCCMotionCuesModuleViewController *)v2->_contentViewController setMotionCuesDelegate:v2];
    v5 = v2;
  }

  return v2;
}

- (void)openMotionCuesSettings
{
  v4 = [MEMORY[0x29EDB8E70] URLWithString:@"prefs:root=ACCESSIBILITY&path=MOTION_TITLE/MotionCues"];
  v3 = [(CCUIToggleModule *)self contentModuleContext];
  [v3 openURL:v4 completionHandler:0];
}

@end