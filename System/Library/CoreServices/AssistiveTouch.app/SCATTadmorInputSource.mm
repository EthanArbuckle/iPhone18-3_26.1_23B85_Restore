@interface SCATTadmorInputSource
- (id)actionForButtonNumber:(int64_t)number withType:(id)type;
- (void)pointerDidMoveWith:(CGPoint)with;
- (void)selectItemWithIndex:(int64_t)index;
- (void)startRunning;
- (void)updateSignalQuality:(int64_t)quality forButtonNumber:(int64_t)number;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATTadmorInputSource

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  v13 = [NSMutableDictionary dictionary:switches];
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

- (id)actionForButtonNumber:(int64_t)number withType:(id)type
{
  v6 = [(SCATInputSource *)self actions:number];

  if (v6)
  {
    v7 = [NSNumber numberWithInteger:number];
    actions = [(SCATInputSource *)self actions];
    v9 = [actions objectForKeyedSubscript:v7];
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

- (void)updateSignalQuality:(int64_t)quality forButtonNumber:(int64_t)number
{
  v5 = quality / 255.0 * 100.0;
  delegate = [(SCATInputSource *)self delegate];
  [delegate tadmorInputSource:self didUpdateSignalQuality:v5];
}

- (void)pointerDidMoveWith:(CGPoint)with
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v3 assistiveTouchScanningMode];

  if (assistiveTouchScanningMode != 6)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchScanningMode:6];
  }

  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)selectItemWithIndex:(int64_t)index
{
  delegate = [(SCATInputSource *)self delegate];
  [delegate tadmorInputSource:self didReceiveItemSelectionIndex:index];
}

- (void)startRunning
{
  v2.receiver = self;
  v2.super_class = SCATTadmorInputSource;
  [(SCATHardwareInputSource *)&v2 startRunning];
}

@end