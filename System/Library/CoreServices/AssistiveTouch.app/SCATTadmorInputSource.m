@interface SCATTadmorInputSource
- (id)actionForButtonNumber:(int64_t)a3 withType:(id)a4;
- (void)pointerDidMoveWith:(CGPoint)a3;
- (void)selectItemWithIndex:(int64_t)a3;
- (void)startRunning;
- (void)updateSignalQuality:(int64_t)a3 forButtonNumber:(int64_t)a4;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATTadmorInputSource

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v13 = [NSMutableDictionary dictionary:a3];
  v5 = 0;
  v6 = SCATSwitchSourceTadmor;
  v7 = SCATSwitchTypeOptional;
  do
  {
    v8 = SCATActionForTADSwitchControlButtonType();
    v9 = SCATActionDescription();
    v10 = [AXSwitch switchWithAction:v8 name:v9 source:v6 type:v7];

    v11 = [SCATActionItem fromSwitch:v10 longPress:0];
    v12 = [NSNumber numberWithInteger:v5];
    [v13 setObject:v11 forKey:v12];

    ++v5;
  }

  while (v5 != 23);
  [(SCATInputSource *)self setActions:v13];
}

- (id)actionForButtonNumber:(int64_t)a3 withType:(id)a4
{
  v6 = [(SCATInputSource *)self actions:a3];

  if (v6)
  {
    v7 = [NSNumber numberWithInteger:a3];
    v8 = [(SCATInputSource *)self actions];
    v9 = [v8 objectForKeyedSubscript:v7];
  }

  else
  {
    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100127EF8(v10);
    }

    v9 = 0;
  }

  return v9;
}

- (void)updateSignalQuality:(int64_t)a3 forButtonNumber:(int64_t)a4
{
  v5 = a3 / 255.0 * 100.0;
  v6 = [(SCATInputSource *)self delegate];
  [v6 tadmorInputSource:self didUpdateSignalQuality:v5];
}

- (void)pointerDidMoveWith:(CGPoint)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchScanningMode];

  if (v4 != 6)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchScanningMode:6];
  }

  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)selectItemWithIndex:(int64_t)a3
{
  v5 = [(SCATInputSource *)self delegate];
  [v5 tadmorInputSource:self didReceiveItemSelectionIndex:a3];
}

- (void)startRunning
{
  v2.receiver = self;
  v2.super_class = SCATTadmorInputSource;
  [(SCATHardwareInputSource *)&v2 startRunning];
}

@end